+++
date = '2025-04-19T00:00:00'
months = '2025/04'
draft = false
title = '衝撃！Raspberry Piで自作LIDARスキャナーが実現！これはマジですごい'
tags = ["Raspberry Pi", "LIDAR", "DIY", "スキャナー", "ロボット"]
featureimage = 'thumbnails/orange2.jpg'
+++

> 衝撃！Raspberry Piで自作LIDARスキャナーが実現！これはマジですごい

引用元：[https://news.ycombinator.com/item?id=43738561](https://news.ycombinator.com/item?id=43738561)

{{<matomeQuote body="マジで最高じゃん！<br>ハードウェア製品のBOM（部品表）には、リンクと概算コストを示すのがおすすめだよ。値段は変動するけど、目安があるとマジ助かる。特にHNとかで見てると、自分で試すかどうか判断しやすいんだよね。細かい数字じゃなくて、大体の金額が重要。<br>自分で調べたんなら、メモっとけ！自分のためにもなるし！リンクがあると、名前が紛らわしくても同じものか判断しやすい。プロジェクト中にリンクと値段をメモるだけだから、マジで手間じゃない。後々マジで楽になる。マジで、ちょっとメモるだけで時間節約になるから！コードのドキュメントも同じ[0]！<br>はい、15分で調べた概算です。<br>  Lidar:<br>    どれか:<br>      LD06: 80ドル https://www.aliexpress.us/item/3256803352905216.html<br>      LD19: 70ドル https://www.amazon.com/DTOF-D300-Distance-Obstacle-Education/dp/B0B1V8D36H<br>      STL27L: 160ドル https://www.dfrobot.com/product-2726.html<br>  Camera and Lens: 60ドル https://www.amazon.com/Arducam-Raspberry-Camera-Distortion-Compatible/dp/B0B1MN721K<br>  Raspberry Pi 4: 50ドル<br>  NEMA17 42-23 stepper: 10ドル https://www.amazon.com/SIMAX3D-Nema17-Stepper-Motor/dp/B0CQLFNSMJ<br><br>合計200～280ドル。電源とかbuck converterはまだ計算に入れてないけど。<br>[0] コード書いた時は俺と神だけが理解してた。時が経ち、今や神しか理解してない。" userName="godelski" createdAt="2025-04-19T19:18:41" color="#ff33a1">}}

{{<matomeQuote body="こういう学習プロジェクト、関税と少額免税の廃止でマジでアクセスしにくくなるかも。BOMの値段、ソースとか発送回数によっては2～3倍になるぞ。<br>子供とかに電子工作教えるための安い教材が、アメリカの競争力のためとかいう名目で税金で奪われていくのはマジで萎える。完全に自爆。" userName="Aurornis" createdAt="2025-04-19T23:42:22" color="#ff5c5c">}}

{{<matomeQuote body="ここ数年の電子工作趣味を冗談で「俺のEE（電気工学）の学位取得」って呼んでるわ。<br>PCB作ったり、回路図読んだり、自分でハード設計したり。マジ楽しいし、キャリア（ファームウェア）にも役立ってる。<br>アメリカが製造業の知識を取り戻したいなら、これはマジで逆効果。学部生のプロジェクト、BOMが4倍になったらどんだけできなくなるんだ？これからハードウェアに興味持つ機械・電気エンジニアが減るだろ。<br>全部消えちまうぞ。去年1200ドルくらいPCBとかセンサーに使ったけど、今回の政府命令で4000ドルになるわ。<br>マジ狂ってる。" userName="mlsu" createdAt="2025-04-20T15:52:12" color="#38d3d3">}}

{{<matomeQuote body="これって、もしかして意図的なんじゃないかって思う部分もあるんだよね。人が日用品の仕組みを知るのを阻止するために。でも、すぐに現実に戻るけど。長期的な計画があるとは思えない。せいぜい、その場しのぎの対応（戦術的）って感じ。戦略的な思考はマジで欠けてる。" userName="A4ET8a8uTh0_v2" createdAt="2025-04-20T17:22:57" color="">}}

{{<matomeQuote body="アドバイス自体は今でも役に立つってことには変わりない。最悪の場合でも、関税の影響の記録として残る。<br>関税はハードウェアの二度目の死だね。一度目は、パーツ屋が全滅した時。これは緩やかな死だった。修理する権利の喪失と相まってね。でも、その分野では進歩してるから、取り戻せるかもしれない。関税も撤廃できれば、ハードウェアが復活するチャンスがあるかも。皮肉にも、それはある政党（が主張している/装っている）の意向に沿うように見える。" userName="godelski" createdAt="2025-04-20T01:31:55" color="#45d325">}}

{{<matomeQuote body="＞パーツ屋が全滅した<br>パーツ屋で買い物する人がいなくなったからだよー。電子工作趣味が廃れたんだ。<br>趣味の時代:<br>  機械<br>  化学<br>  電子<br>  コンピュータハードウェア<br>  コンピュータソフトウェア<br>  [今は？]" userName="robocat" createdAt="2025-04-20T07:15:09" color="">}}

{{<matomeQuote body="化学趣味の時代は知らないな。電子趣味の時代は、機械趣味と同時に終わったと思ってる。機械趣味のほとんどは車だったけどね。修理が難しくなるにつれて、パーツの入手性が悪くなるにつれて、需要が減っていった。負のフィードバックループだよ。" userName="godelski" createdAt="2025-04-20T08:03:23" color="">}}

{{<matomeQuote body="機械: Meccanoとか、自家製蒸気エンジンをイメージしてたー。車はそのあとかな。<br>化学: 化学セットとか、化学がクールだった時代（Du Pont, Uncle Tungsten）をイメージしてた。<br>俺のじいちゃんは構造エンジニア、親父は化学エンジニア、俺は電子エンジニアだった（けどプログラミングの仕事についた）。だから、技術趣味っていうよりは、エンジニアリングのフロンティアが移り変わってるって考えてたのかも。<br>昔の雑誌のオタク向け広告とか見て、焦点がどう変わってきたか見てみると面白いかもね。" userName="robocat" createdAt="2025-04-20T08:40:46" color="#ff33a1">}}

{{<matomeQuote body="ヨーロッパの多くでは、すでにそうだよ。少額免税がないからね。<br>例えばスウェーデンだと、PostNordが政府から独占権を与えられてて、輸入荷物1個あたり20ドルくらい請求するんだ。マジで痛い。<br>マジでクソ。自由貿易と競争が必要だわ。" userName="GardenLetter27" createdAt="2025-04-20T12:11:13" color="">}}

{{<matomeQuote body="それは違うよ。関税には少額免税がちゃんとあるよ。VAT（付加価値税）は必ず払わないといけないけど、以前はそうじゃなかった。あと、その手数料も払わなくてもいいんだ。IOSSに対応してる店で注文すればいい。大手は最近対応してるよ。自分で申告することもできるけど、税関申告事務所の近くに住んでないと無理。別の配送業者に頼むこともできるよ。通常は業者が申告してくれる。" userName="cinntaile" createdAt="2025-04-21T08:49:12" color="#ff5c5c">}}

{{<matomeQuote body="なんで趣味の部品を国内生産にしないんだろ？" userName="relaxing" createdAt="2025-04-20T12:32:17" color="">}}

{{<matomeQuote body="皮肉かな？そう読めるね。<br>額面通りに受け取るけど、趣味の部品を国内生産するのは経済的に無理ってことだよね。" userName="yapyap" createdAt="2025-04-20T13:28:48" color="">}}

{{<matomeQuote body="追加コストの内訳が気になるな。人件費がほとんど？サプライチェーンの問題？環境規制？中国にはない諸経費？アメリカで経済的に生産可能かな？" userName="idiotsecant" createdAt="2025-04-20T14:18:03" color="#ff5c5c">}}

{{<matomeQuote body="アメリカ人にとってはね。" userName="jillyboel" createdAt="2025-04-20T00:38:52" color="">}}

{{<matomeQuote body="オーストラリアにおいでよ" userName="farmin" createdAt="2025-04-20T07:57:20" color="">}}

{{<matomeQuote body="バックコンバータってのは知ってるけど、なんでそう呼ばれるんだろ？辞書には「何かを減らす」みたいな意味の単語はないみたい。[0]<br>Wikipediaにも語源の説明はないし。[1]<br>[0] https://www．merriam-webster．com/dictionary/buck<br>[1] https://en．wikipedia．org/wiki/Buck_converter" userName="accrual" createdAt="2025-04-20T22:40:41" color="">}}

{{<matomeQuote body="Teslaみたいな会社でも高すぎるなんて信じられない。" userName="juujian" createdAt="2025-04-19T19:44:48" color="">}}

{{<matomeQuote body="TeslaがLidarをスキップすることについて、HNの意見はどうなの？大学でコンピュータビジョンを学んだ身としては、スキップするのは狂ってると思う。ステレオ再構成は強力だけど、照明条件が結果に大きく影響するし、堅牢な深度データがあった方がいいと思うんだけどな。無視してるみたい。" userName="nisa" createdAt="2025-04-19T21:40:10" color="#785bff">}}

{{<matomeQuote body="コンピュータビジョンをやってきた者として、スキップするのはマジでどうかしてる。Mark Roberの動画[0]でみんなが見逃したのは、アニメみたいな壁じゃなくて、煙の中の子供だよ。カメラとAIをいくら積んでも、物理法則は変わらない。可視光は煙を透過しない。でもレーダーはできる。安全なシステムは冗長性を持つべき。異なるモダリティで冗長性を持たせるべき。カメラも使うけど、レーダー、Lidar、ミリ波も使うべき。カメラだけを使うのは片手を縛るだけじゃなくて、膝を撃ち抜くようなもん。<br>＞[0] https://www．youtube．com/watch?v=IQJL3htsDyQ" userName="godelski" createdAt="2025-04-20T01:41:03" color="#ff5733">}}

{{<matomeQuote body="人間はLidarなしで運転できるし、自動化は完璧である必要はなく、人間より優れていればいいという議論だよね。もしLidarが安ければ使うべきだけど、コンピュータシステムがLidarなしで人間のドライバーに勝てるという議論も、少なくとも合理的ではあると思う。まだ証明されてないけど。" userName="ta8645" createdAt="2025-04-20T03:07:48" color="#45d325">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="この考えを広げると、なんでTeslaは二本足で車を作らずに、車輪にこだわったんだろ？（別にDisじゃないよ！元ネタがTeslaだって知ってるから！）" userName="rytis" createdAt="2025-04-20T06:23:19" color="">}}

{{<matomeQuote body="Teslaが、完全自動運転のためにセンサーを追加する必要が出てきたら、すでにその機能を売った車のオーナーに対して法的な問題になるんじゃない？すでに販売済みの車にセンサーのアップグレードを施す必要が出てくるってこと？" userName="gmueckl" createdAt="2025-04-20T01:58:54" color="#ff5733">}}

{{<matomeQuote body="うん、もうすでに問題になってるみたい。TeslaはHW3じゃ不十分だって認めてて、FSDパッケージを買った人たちに対して責任を負うことになるんだって。最悪の事態ではないけど、もしセンサーを追加したり、車体を改造したりする必要が出てきたら、もっと大きな問題になるかも。" userName="jsight" createdAt="2025-04-20T04:51:27" color="#45d325">}}

{{<matomeQuote body="解決策：FSDを実装しなければいい。" userName="idiotsecant" createdAt="2025-04-20T14:22:01" color="">}}

{{<matomeQuote body="＞TeslaがLidarをスキップすることについて、HNの意見はどう？<br>＞近視眼的でエゴイスティックだね。”Lidarがあれば防げたであろう死や怪我はあっただろうし、これからも起こるだろうね。" userName="nfriedly" createdAt="2025-04-20T01:06:15" color="#45d325">}}

{{<matomeQuote body="＞HNの意見<br>HNが1つの意見を持っていると思うのはなぜ？ここは様々なユーザーがいるサイトだよ。" userName="zymhan" createdAt="2025-04-20T00:10:21" color="">}}

{{<matomeQuote body="正しい判断だったけど、結果的に間違ってたってことになって、意固地になってるだけだと思う。特にここでは、後知恵で批判する人が多いからね。" userName="colechristensen" createdAt="2025-04-20T00:03:12" color="">}}

{{<matomeQuote body="個人的な意見だけど、この業界で働いてる身としては、Teslaの選択は今となってはマジで意味不明。カメラだけで何とかしようとしてダメだって分かったら方向転換すればいいのに、引っ込みがつかなくなって認められないんだもん。だから今は意味不明。" userName="MOARDONGZPLZ" createdAt="2025-04-19T23:10:41" color="#785bff">}}

{{<matomeQuote body="視覚しかない人をなんと呼ぶ？障害者だよね。人間には視覚、触覚、味覚、聴覚、嗅覚、血管感覚がある。自動運転に使われるシステムの一部でしかないのに。" userName="yndoendo" createdAt="2025-04-19T23:44:30" color="">}}

{{<matomeQuote body="レーダー技術は、角の向こう側や、レンガの壁などの障害物の背後にある物体を検出し、特定の周波数で人体を透過するなど、さまざまな用途に対応できる。ただし、複数のセンサーから同様の結果が得られた場合、どの結果が有効かを識別するのは困難でコストもかかる。<br>2.45 GHzなどの特定の周波数（手頃な価格でよく使われるマイクロ波周波数）でレーダーを作動させると、水滴が豊富な環境（例：雨）では、レーダー信号が支配的になる可能性があるため、効果がない場合がある。高い周波数にすると、より小さな水滴を検出できるが、周波数を切り替えるとコストがかかる。また、レーダーの検出範囲を変更して異なるサイズの物体を識別すると、最小範囲と最大範囲、電力、ターゲット上の時間などの要素が絡み合い、計算が複雑になる。<br>カメラは通常、連続する画像を比較して、非移動物体を検出する。対照的に、レーダーは静止物体と移動物体の両方を識別し、周波数を放射して反射パルスを分析することにより、センサーに対する方向を判断できる。一方、Lidarは光を使用して、その経路にある物体までの距離を測定し、光受容体を使用して反射光をキャプチャする。" userName="instagib" createdAt="2025-04-20T02:21:14" color="#ff5733">}}

{{<matomeQuote body="車の電子機器の要件ってマジで厳しいんだよね（温度とか耐久性）。まあ、反対はしないけど、全然別問題ってわけじゃない？" userName="derac" createdAt="2025-04-19T20:02:53" color="">}}

{{<matomeQuote body="あいつら10年前に「自動運転レディ」のパッケージ売りたがってたんだよ。LiDARがマジで高かった頃にね。だから当時、LiDARは不要だって大げさに言う必要があったんだ。" userName="qgin" createdAt="2025-04-19T22:40:27" color="">}}

{{<matomeQuote body="でも今じゃ価格が10分の1以下になったって言うじゃん？だったら、そろそろ考え直しても良くね？" userName="mcny" createdAt="2025-04-20T01:11:41" color="#38d3d3">}}

{{<matomeQuote body="自動運転車に使われてるLiDARは、もっと高性能だし、値段も全然違うって。" userName="theoryofx" createdAt="2025-04-19T20:06:17" color="">}}

{{<matomeQuote body="そんなに変わんないって。今の車のハードウェアは500～700ドルくらいだし。OEMの中には、次の世代で200ドル以下に下げるの期待してるとこもあるし。BYDがほとんど全ての車に自動運転搭載したから、普及が加速してLiDARの価格も規模の経済でマジで下がるかもね。" userName="xbmcuser" createdAt="2025-04-19T20:29:26" color="#ff5733">}}

{{<matomeQuote body="俺の(薄っぺらい)理解だと、LiDARの課題ってセンサーのコストじゃなくて、センサーが出す点群を処理するのに必要な帯域と計算量なんだよね。運転に耐えうる速度/遅延で。だからセンサー自体は数百ドルでも、システムの他の部分がもっと高くなる必要があるんじゃないかな？" userName="jpk" createdAt="2025-04-19T21:15:56" color="#ff5c5c">}}

{{<matomeQuote body="それはないと思うなー。自動車業界はもう複数のカメラアングルとML推論でリアルタイムに深度再構成とかやってるじゃん。点群の処理がそれより難しいってことある？" userName="fc417fc802" createdAt="2025-04-19T21:51:32" color="">}}

{{<matomeQuote body="俺の理解の元は、10～15年前に自動運転やってたGoogleのエンジニアとの会話なんだよねー。いつだったか正確じゃないけど、多分状況は変わってると思う。当時、屋根にLiDAR一個だけ付けてたんだ。そいつが言うには、1個でTbpsの点群データが出るから、カスタムハードウェアが必要だったんだって。だから点群データはビデオより処理が難しいわけじゃないけど、センサーの角度分解能とサンプルレートが高すぎると、データの量がマジでやばいんだって。" userName="jpk" createdAt="2025-04-19T22:10:29" color="#45d325">}}

{{<matomeQuote body="Karpathyが当時この質問に答えてるよ:<br>＞https://news.ycombinator.com/item?id=33397093<br>もちろん彼は当時Teslaで働いてたから、Elonが給料払ってくれなくなった今じゃ意見が違うかもね。" userName="dreamcompiler" createdAt="2025-04-19T22:17:30" color="">}}

{{<matomeQuote body="今日読んだ中で一番恩知らずなコメントだな。「当然のことだ」みたいな言い方しやがって。<br>じゃあお前がやってみろよ。<br>俺は家族持ちだから時間ねーんだよ。プロジェクトできたとしてもドキュメント作る時間なんてマジでないし、またやり直す必要があっても多分やらない。みんながみんな実家に住んでる暇人じゃないんだよ。" userName="a_subsystem" createdAt="2025-04-20T04:24:13" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="実際のスキャナーは[1]を見てね。<br>最大レンジは12メートルか。ここから値段が跳ね上がるみたいだね。光源、フィルター、センサーの性能が重要になるんだろうな。小型ロボットには十分かも。自動運転車の周辺検知センサーにも使えるかもね。でも、長距離LIDARはまだ難しいか。[1]はhttps://www.ldrobot.com/だよ。" userName="Animats" createdAt="2025-04-19T21:46:41" color="">}}

{{<matomeQuote body="この価格上昇の理由が知りたいな。Google先生でもわからん。レーザー安全が関係してる気がする。レーザースキャナーのミラーが止まると、目に悪影響だから、安全制御システムで常にミラーの速度と位置を監視して、遅くなったらレーザーを止める必要があるとか？どうかな？" userName="gmueckl" createdAt="2025-04-20T02:16:50" color="#ff5c5c">}}

{{<matomeQuote body="出力パワー、大型光学系、高感度検出器、不要な光の除去、高画素、大型回転機構、アクティブスタビライゼーション…あと、量産効果が出にくいのもあるよね。車の屋根に載せるLIDARは27,000ドルくらいで買える。[1]128ピクセルセンサーで回転式。Waymoのセンサーに近い。[1]はhttps://www.hesaitech.com/product/ot128/だよ。" userName="Animats" createdAt="2025-04-20T03:28:52" color="#ff33a1">}}

{{<matomeQuote body="ちょっと関連する話。300mmくらいの距離を10ミクロンくらいの精度で測りたいんだけど、何か良い方法ない？" userName="amelius" createdAt="2025-04-19T20:23:46" color="">}}

{{<matomeQuote body="それなら、工作機械に使われるデジタル読み出し(DRO)の範囲かも。うちのメカニックが交換してたビデオがあって、古いのは5ミクロンの精度だったよ。値段は知らないけど。" userName="perlgeek" createdAt="2025-04-20T16:35:43" color="">}}

{{<matomeQuote body="測る対象は動く？<br>測定システムは触れてもいい？固定できる？<br>ノギスでいけるかも。精度次第だけど、同じアプローチで、容量性セルのスライドグリッドを使うとか。マイコンで測定してAtan2()で結果を出す。DROって言うよ。" userName="bobmcnamara" createdAt="2025-04-20T00:11:58" color="">}}

{{<matomeQuote body="似たような問題があって、自作したらめちゃくちゃお金がかかった。だから、CNCフライス盤用のDROキットを調べるのがおすすめ。予算に余裕があるなら、クローズドループステージのソリューションもあるよ。<br>https://www.pi-usa.us/en/<br>https://xeryon.com<br>頑張って！値段に覚悟してね！" userName="Joel_Mckay" createdAt="2025-04-20T06:23:25" color="#45d325">}}

{{<matomeQuote body="DIYシステムのデザインアイデアがあるんだけど、実験にお金と時間をどれくらい使える？<br>君にとって「安い」ってどれくらい？<br>こんな感じの自動化を考えてる。<br>https://youtu.be/hnHjrz_inQU?si=dNzXVBVFsr7e8m_6<br>既製のレーザーとカメラセンサーをハックすれば、意外な精度が出るかも。" userName="aeonik" createdAt="2025-04-19T23:09:39" color="">}}

{{<matomeQuote body="このビデオありがとう！僕も興味あるんだ。でも、イメージセンサーのサイズがネックになるよね。もし測定対象にイメージセンサーより大きな凹凸があったら測れない。100mmくらいの範囲で、もう少しざっくりした地形の変化を測りたいんだけど、どうすればいいかな？" userName="sazimi13" createdAt="2025-04-20T05:05:57" color="">}}

{{<matomeQuote body="マイケルソン干渉計でフリンジカウンターを作るのは定番のプロジェクトだよ。<br>https://www.youtube.com/watch?v=j-u3IEgcTiQ<br>https://www.youtube.com/watch?v=ucuVsReDze0<br>https://en.wikipedia.org/wiki/Michelson_interferometer<br>532nmの緑色DPSSレーザーは、通常の動作温度範囲内で+-1nmの精度がある。5mWのDPSSレーザーモジュールに20nm幅のOD6狭帯域フィルターを追加すれば、今どき一番安く高精度を実現できる。機構次第だけどね。輸出規制に注意してね。" userName="Joel_Mckay" createdAt="2025-04-20T08:54:44" color="#ff5733">}}

{{<matomeQuote body="めっちゃクールじゃん！理解するのに時間かかりそうだけど。<br>ゴルフのグリーンみたいに2cm/100cmの傾斜を測りたいんだけど、これだと細かすぎるかな？<br>とりあえず今は簡単なToFセンサーで試してるよ。" userName="sazimi13" createdAt="2025-04-20T17:04:33" color="">}}

{{<matomeQuote body="いくつかアイデアはあるんだけど、まだ簡単な実装方法が見つかってないんだよね。<br>探求してる技術用語は「Holographic Interferometry」っていうもの。<br>兄弟みたいな人が通常の干渉法のリンクを教えてくれたけど、基本的にはレーザービームを分割して、片方をカメラセンサーに直接、もう片方を対象物に当てると、すごいことができるんだ。<br>細かいこととか色々あるんだけどね（悪魔は細部に宿るってやつ）。<br>3Blue1Brownの説明が一番わかりやすかったけど、すぐには使えないかも。<br>https://youtu.be/EmKQsSDlaa4?si=j-YJm6scxK6bh_Is" userName="aeonik" createdAt="2025-04-20T10:07:54" color="#ff5c5c">}}

{{<matomeQuote body="めっちゃすごいね！<br>俺がやりたいのはもっとシンプルで、ゴルフのグリーンの正確なマッピングを作りたいんだ。<br>とりあえず簡単なToFセンサーを使って表面をなぞるように動かしてるよ。" userName="sazimi13" createdAt="2025-04-20T16:56:21" color="">}}

{{<matomeQuote body="アイデアの参考になるかも？<br>https://youtu.be/qMYBwbTIL-0" userName="shellfishgene" createdAt="2025-04-20T09:52:09" color="">}}

{{<matomeQuote body="OCT" userName="dheera" createdAt="2025-04-19T20:47:35" color="">}}

{{<matomeQuote body="安価なOCTシステムってあるの？" userName="bobmcnamara" createdAt="2025-04-20T00:04:47" color="">}}

{{<matomeQuote body="何のために？<br>https://xyproblem.info/" userName="djoldman" createdAt="2025-04-19T20:30:30" color="">}}

{{<matomeQuote body="たとえ問題を解決できなくても、質問に答える方が役に立つと思うよ。" userName="RossBencina" createdAt="2025-04-19T22:21:16" color="">}}

{{<matomeQuote body="OPじゃないけど、自分も同じような市場にいるよ。3DプリンターとデスクトップCNCを使ってる。" userName="aeonik" createdAt="2025-04-19T21:51:07" color="">}}

{{<matomeQuote body="何も根拠なくXY問題だと決めつけるのは無意味で逆効果だし、自分が賢いと思いたいだけだよ。" userName="hamburglar" createdAt="2025-04-19T23:50:40" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Sketchfabの例はマジすごいね。3D空間を動き回れるなんて、まるでSFシミュレーションみたいだ。<br>マウス操作はマジで混乱するわ。掴むアイコンが表示されるのに、全然掴めないし、動きの方向が逆でめっちゃ不自然。" userName="politelemon" createdAt="2025-04-19T20:07:33" color="">}}

{{<matomeQuote body="昔の方が良かったことって結構あるよね。<br>でも、こんな技術を才能ある人が作れる時代に生きてるってのは、マジですごいことだ。" userName="abraae" createdAt="2025-04-20T01:01:45" color="">}}

{{<matomeQuote body="EbayとかGoodwillでロボット掃除機からパーツを回収できるかもね。" userName="mannyv" createdAt="2025-04-19T19:50:04" color="">}}

{{<matomeQuote body="これってLidarセンサーのことね" userName="mannyv" createdAt="2025-04-19T20:27:20" color="#ff5733">}}

{{<matomeQuote body="これマジですごいじゃん！ありがとう！<br>プロジェクトの中にもしかしたら書いてあるかもしれないけど（ちゃんと読めてなくてごめん）、精度に関するデータってある？例えば10m以上とか（もしこのLidarがそこまで届かないならもっと短くても）。<br>FAROスキャナーは使ったことあって、仕組みが違うんだよね。あれは建物を建てるのに十分な精度がある。<br>スキャナーの市場っていろいろあるんだよね。精度を求める人もいれば、ゲームみたいなメディアコンテンツを作る人もいるし。<br>このプロジェクトを共有してくれて本当に感謝！マジで信じられない。" userName="joeevans1000" createdAt="2025-04-20T18:21:52" color="#785bff">}}

{{<matomeQuote body="最近、photogrammetryを少し試してて、特に室内のスキャンに使ってるんだ。今のところMetashapeが一番良い感じだけど、精度はそこまで高くないかな（でも、テクニックはまだ改善中）。最終的には、ある建物の内部をデジタルモデルにして保存して分析したいんだよね。LIDARも考えたんだけど、難しそうだしお金もかかりそうだから諦めてた。でも、このプロジェクトを見て考えが変わったかも。<br>ソフトウェアのpost-processingってどんな感じ？他のデータ（例えばDSLRで撮った写真）と合成できるpoint cloudって手に入る？<br>2番目の画像[1]を見ると、壁の一部がランプに隠れてスキャンできてないし、ソファの上もLIDARからは見えないっぽいね。複数のpoint cloudを合成して、障害物や角の向こう側を見れる？ソフトウェアが自動で壁とか共通の点を認識して同じ部屋だと認識してくれる？それとも、何か調整が必要？LIDAR版のcoded targetsとかARTags[0]ってある？複数の部屋にも対応できる？<br>そもそも、これを検討する価値ある？それとも、ちゃんとやったphotogrammetryより面倒かな？<br>（質問攻めごめん。知らないことだらけなんだ…）<br>0: <br>https://en．wikipedia．org/wiki/ARTag<br><br>1: <br>https://github．com/PiLiDAR/PiLiDAR/raw/main/images/interior…" userName="heljara" createdAt="2025-04-20T02:08:57" color="#785bff">}}

{{<matomeQuote body="宣伝で申し訳ないけど、もしiPhone ProかiPad Pro（Lidar内蔵）を持ってるなら、Dot3Dを試してみて。君が言ってること全部できるし、使い方もめっちゃ簡単にしたよ。" userName="rsp1984" createdAt="2025-04-20T11:51:53" color="">}}

{{<matomeQuote body="返信ありがとうございます。残念ながらiPhoneは持ってないけど、借りれるかも。アプリの制限とか、何かアドバイスがあれば教えてほしいな。" userName="heljara" createdAt="2025-04-21T01:01:16" color="">}}

{{<matomeQuote body="やあ！この素晴らしい作品を共有してくれてありがとう。PiLiDARを大規模な屋外データセットにデプロイした場合のスケーラビリティとパフォーマンスについて知りたいです。SemanticKITTIやnuScenesのようなデータセットでベンチマークしましたか？もしそうなら、ランタイム、メモリ使用量、および論文で使用されている屋内シーン以外への一般化について、何か洞察を共有していただけますか？" userName="badmonster" createdAt="2025-04-19T21:25:32" color="">}}

{{<matomeQuote body="たぶん君（か俺）が何か勘違いしてると思うんだけど、これはデータ取得のためのDIY Lidarスキャナーだよ。これらのデータセットは、ほとんどがRGBAカメラを使って作成され、point cloudは後処理で作成されるんだ。<br>だから、データを処理するためのモデルではなく、リアルなLidarを手に入れるためのハードウェアハックなんだよ。リアルな深度データとしてね。<br>何でも好きなものを投げ込めるよ。" userName="nisa" createdAt="2025-04-19T21:33:49" color="#ff33a1">}}

{{<matomeQuote body="おー、これはまさに数週間前に探してたやつだ！似たようなものをAmazonのカートに入れてしばらく悩んでたんだけど、どのlidar scannerにするか決めかねてたんだよね。Easter休暇から帰ってきたら、これを参考にしてみるよ。" userName="donatj" createdAt="2025-04-19T21:22:03" color="#785bff">}}

{{<matomeQuote body="DIYのプロジェクトに、これ結構使えるかも。特に、普段なかなか見れない場所の点群マップを作るのに良さそう。例えば、壁の中に配線した後の状態とか、これでチェックできたら最高だね。" userName="itissid" createdAt="2025-04-20T03:53:56" color="#ff5c5c">}}

{{<matomeQuote body="これはマジで良いアイデアだね。壁の中をマッピングできる、簡単なスタッドファインダーみたいなツールがあれば、配線工事とかする人にめちゃくちゃ役立つと思う。" userName="chneu" createdAt="2025-04-20T08:16:02" color="#ff5733">}}

{{<matomeQuote body="商用利用する場合は、貢献しないといけないって書いてあるけど、どれくらい貢献する必要があるのかな？どこに貢献すればいいんだろう？" userName="joeevans1000" createdAt="2025-04-20T18:47:13" color="">}}

{{<matomeQuote body="GY-521、特にMPU6050は、IMUとしてはイマイチだよね。なんでこれを使ったの？そもそも、今回の用途だと何に使うの？" userName="Aspos" createdAt="2025-04-20T03:52:59" color="">}}

{{<matomeQuote body="同じくらいの価格帯で、もっとおすすめのセンサーってある？どれくらい精度が向上すると思う？" userName="HALtheWise" createdAt="2025-04-20T05:56:46" color="">}}

{{<matomeQuote body="ヨー方向のずれが問題で、いろいろIMUを試したんだけど、BNO055を使ったものが良さそうだったよ。ちょっと高いけどね。Adafruitのを使ったよ。" userName="Aspos" createdAt="2025-04-20T16:45:27" color="#ff5c5c">}}

{{<matomeQuote body="この手のセンサーって、目に安全なの？" userName="Havoc" createdAt="2025-04-20T01:42:35" color="">}}

{{<matomeQuote body="自分も気になってたんだよね。lidarがカメラセンサーを壊すっていう報告も多いし。" userName="frainfreeze" createdAt="2025-04-20T08:57:00" color="">}}

{{<matomeQuote body="自分のLIDARが他の人のLIDARと干渉しないようにするにはどうすればいいのかな？" userName="mannyv" createdAt="2025-04-20T03:39:14" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
