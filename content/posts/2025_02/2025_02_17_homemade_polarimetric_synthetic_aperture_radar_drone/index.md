+++
date = '2025-02-17T00:00:00'
draft = false
title = '自作の偏光合成開口レーダードローンがすごい！'
tags = ["ドローン", "レーダー技術", "自作", "テクノロジー", "映像解析"]
featureimage = 'thumbnails/cyan3.jpg'
+++

> 自作の偏光合成開口レーダードローンがすごい！

引用元：[https://news.ycombinator.com/item?id=43073808](https://news.ycombinator.com/item?id=43073808)

{{<matomeQuote body="最近小型FPVドローンの価格がかなり下がったね。5インチと7インチのプロペラのクアドコプターが中国から約100ユーロで買える。小さいけど1kgくらいの荷物を運べるから小型レーダーには十分。価格が下がったのは、中国がウクライナ双方に大量に売っているからで、月に10万台も消費してるみたい。" userName="colonCapitalDee" createdAt="2025-02-17T06:44:54" color="#785bff">}}

{{<matomeQuote body="ウクライナのドローンの国内生産と輸入の割合ってどうなんだろうね？最近ウクライナがドローンの生産を増やしてるって読んだし、電波妨害を克服するために光ファイバー制御のドローンも使ってるみたい。" userName="bloopernova" createdAt="2025-02-17T14:31:13" color="#785bff">}}

{{<matomeQuote body="戦時中は正確な数字は得られないだろうね。ウクライナ政府が最近100万台の発注をしたって聞いたよ。ウクライナには小規模な会社がたくさんあって、ドローンを作っているみたいだ。フレーム以外はほとんど中国からのオフショル部品だし、この分野での開発サイクルの重要性も感じる。" userName="morphle" createdAt="2025-02-17T16:10:04" color="">}}

{{<matomeQuote body="うーん、ドローンがファイバーのスプールを全て持ち運ぶ理由って何だろう？スプールを地面に置いて、そこから解いていけば、余計な重さを持たずに済むのに。" userName="spyder" createdAt="2025-02-17T21:04:52" color="">}}

{{<matomeQuote body="地面に置いたスプールを解くのはすぐに絡まっちゃうし、片方だけを持ち上げると糸が引っかかる。さらに、地面に引きずってしまうことも大変だから、ドローンの下で吊るして巻き上げた方が楽なんじゃないかな。" userName="morphle" createdAt="2025-02-17T23:04:45" color="">}}

{{<matomeQuote body="ちょっとバカな質問かもしれないけど、Google Mapsとか地面の画像を使って、基本的なCNNで位置を特定するのはどう？それならデリケートなナノワイヤを持ち運ぶ必要もないと思うんだ。" userName="TrapLord_Rhodo" createdAt="2025-02-26T15:58:33" color="">}}

{{<matomeQuote body="ファイバーには、(1) モーターと弾薬のラジオコントロールを妨害しないため、(2) 高解像度のカメラストリームを受け取るため、(3) オペレーターの位置を特定されないようにするためなどの理由があるみたい。" userName="morphle" createdAt="2025-03-01T06:12:26" color="">}}

{{<matomeQuote body="ラインを引きずるのと、ただ敷きながら進むのは全然違うよ。スプールを解除するのはロープにテンションがかからないから、ずっと楽だよ。" userName="tastyfreeze" createdAt="2025-02-17T21:10:21" color="">}}

{{<matomeQuote body="DIY愛好者として、Henrikが信号処理やハードウェア、GPU加速、アルゴリズムの最適化まで、これだけの複雑さを実現したのには驚かされる。こういう偉業に対する賞があればいいのに。" userName="farhanhubble" createdAt="2025-02-17T04:32:04" color="#ff33a1">}}

{{<matomeQuote body="これは大変な作業だね。趣味でここまでの成果を出すのは、少なくともPhD相当の労力が必要だと思う。" userName="pjc50" createdAt="2025-02-17T14:55:11" color="#45d325">}}

{{<matomeQuote body="これはとんでもない素晴らしい仕事だけど、趣味でやってるとは呼べないね。仕事を軽視するわけじゃないけど、期待値を調整したい。これはただの好奇心で作ったものじゃなくて、フィンランドのエンジニアリングコンサルタントでRFデザインのシニアコンサルタントとして働いている訓練を受けた電気技師が制作したものだから。彼はプロのキャリアから得た幅広い知識をオフのプロジェクトに持ち込んでる。" userName="DoingIsLearning" createdAt="2025-02-17T15:26:11" color="#ff5c5c">}}

{{<matomeQuote body="そうだね、明らかに彼は経験豊富なRFデザイナーだ。特に、RF部分、SARデータ削減部分、ドローン制御部分を彼が全部やったのがすごい。これらは別々のスキルセットだから。" userName="Animats" createdAt="2025-02-17T19:33:47" color="#38d3d3">}}

{{<matomeQuote body="彼はこのようなことを生業で研究しているんだよ。" userName="lokimedes" createdAt="2025-02-17T15:43:41" color="">}}

{{<matomeQuote body="実は、SARアルゴリズムが説明されているのを見たのはこれが初めて。今まで見たサラプロジェクトはこの部分をおろそかにしてたから。誰か他に関連のリソースを見たことある？リンクされた論文を消化しようとしてるよ。<br>https://topex.ucsd.edu/rs/sar_summary.pdf<br>結果的に、オートフォーカスで位置の問題を回避できるみたい！これを初めて見た！" userName="geokon" createdAt="2025-02-17T03:41:13" color="#38d3d3">}}

{{<matomeQuote body="Henrikが数年前に作ったSARレーダーに関するブログ投稿があって、どうやって機能するかをもう少し詳しく説明しているよ。<br>https://hforsten.com/synthetic-aperture-radar-imaging.html" userName="celegans25" createdAt="2025-02-17T03:44:45" color="">}}

{{<matomeQuote body="これを見てワクワクした！なぜなら、私はレーダーイメージングで博士号を取得したから、特にISAR画像のオートフォーカスに特化してる。私の論文ではこれがどのように機能するかについて説明していて、PDFの3章と4章にその数学が書かれてる。<br>https://github.com/stevesimmons/phd-thesis-radar-imaging<br>SARは合成開口レーダーで、レーダーが直線に飛んでいる時、地面の見かけの回転がドップラーシフトを生じ、高い横方向解像度を得られる。<br>ISARは逆合成開口レーダーで、レーダーが静止している時に目標（飛行機など）が飛び、相対的な動きが目標の回転を生じ、高い横方向解像度を得られる。" userName="stevesimmons" createdAt="2025-02-17T21:54:32" color="#ff5733">}}

{{<matomeQuote body="このサイト[1]は一般的に親しみやすい内容だけど、SARのページはちょっと短いみたいだね。私は従来のフェーズドアレイの文脈で理解するのが一番簡単だと思うけど、もしその仕組みを知らないならあまり役に立たないかも。<br>[1] <br>https://www.radartutorial.eu/20.airborne/ab07.en.html" userName="mNovak" createdAt="2025-02-17T05:06:19" color="">}}

{{<matomeQuote body="そうだね、こういう幼稚な説明は見たことがあるが、これはあまり役立たない簡略化をしている。フェーズドアレイでは、ビームフォーミングして空間をスイープする。信号の戻りはビームまたはサイドローブから来ている。この部分を受信時にパッシブにビームフォーミングすることもできる。でも、SARではビームフォーミングをしているわけじゃない。地面全体を照らしていて、すべての場所からの帰還を同時に受け取る。二つの等距離の反射体は同時に信号を戻すし、もし飛行経路がその二点の間にあるとして、距離が常に等しいならどうやって区別するんだ？デジタルで受信側でビームフォーミングしているが、もっと深いことがあると思う。" userName="geokon" createdAt="2025-02-17T09:33:41" color="#45d325">}}

{{<matomeQuote body="＞でもSARではビームフォーミングをしているわけじゃない。地面全体を照らしていて、すべての場所からの帰還を同時に受け取る。二つの等距離の反射体は同時に信号を戻すし、もし飛行経路がその二点の間にあるとして、距離が常に等しいならどうやって区別するんだ？<br>SARを考える conceptual にはいくつかの方法がある。実際には、ビームフォーミングと考える方法もあって、合成開口の各位置が、合成開口の長さの巨大なアレイの一要素になっている。受信アレイがそれだ。全体を照らしている場合、通常のアンテナは等方性ではなく、側面に向けられている。サイドからは反射体を見えるが、反対側の等距離の反射体は見えない。もし等方性のアンテナが合成開口の両側を見たら、結果の画像は両側のコヒーレントな組み合わせになるだろう。関連する検索用語は、iso-rangeとiso-Dopplerライン。" userName="derstander" createdAt="2025-02-17T11:20:46" color="#ff5c5c">}}

{{<matomeQuote body="＞あなたの信号の戻りはビームやサイドローブから来る<br>それをスキップしてるよ。そのビームはどこから来るの？簡単にシーンが均一に照らされていると仮定すれば、受信フェーズドアレイのビームをそこにスイープできることは理解できる。さらにデジタルビームフォーミングを仮定すると、アレイの各要素に入射する信号のコピーを保存できる。まだ『ビーム』にはなっていない、単なる個々の信号の集合だ。<br>＞すべての場所からの戻りを同時に受け取る<br>そうだね！各要素は同時にすべての場所から信号を受け取っている。ビームを形成するのは、特定の位相重みを使って要素を組み合わせるプロセスで、それはSARでも数百万要素の合成信号を形成するのと同じ数学的なものだよ。これで大規模なフェーズドアレイのように振る舞える。時間の経過で全てのスナップショットが発生したと考えることができる。" userName="mNovak" createdAt="2025-02-17T20:34:00" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="それでは識別できないね。最大限の効果を得るには、表面に対して直交して飛ぶ必要があるよ。" userName="namibj" createdAt="2025-02-17T09:45:16" color="">}}

{{<matomeQuote body="うわ、こんな素晴らしい画像が見られるなんて、ちょっと驚き！他の高価なSARシステムからの画像はこんなに良く見えないものが多いから、すごいね。" userName="fisherjeff" createdAt="2025-02-17T05:02:39" color="#38d3d3">}}

{{<matomeQuote body="これがHackerNewsを読む理由だよ。毎月、新しい記事があって、私の近所のミサイル防衛システムの改善に役立っているし、お隣さんが犬の糞を私の芝生にすることもなくなりそう。<br>近所の地形をマッピングして、攻撃対象を特定できるようになった。今はドローンを使えばいい！" userName="throwup238" createdAt="2025-02-17T02:21:07" color="#45d325">}}

{{<matomeQuote body="これが役に立つかも。<br>「Tactical and Strategic Missile Guidance, Seventh Edition」<br>「Tactical missile warheads」<br>「Fundamentals of Astrodynamics」" userName="Grosvenor" createdAt="2025-02-17T03:14:59" color="">}}

{{<matomeQuote body="私は「Tactical and Strategic Missile Guidance」の本を持ってるけど、ただ興味本位で買ったんだ。こんな本が普通に手に入るなんて驚きだよ。" userName="secondcoming" createdAt="2025-02-17T11:18:30" color="">}}

{{<matomeQuote body="人々がAIやテロリストのマニュアルで広まることを心配する恐ろしい技術って、もう大学の図書館にはたくさんあるんだ。50年前にはトップシークレットだった核兵器の文書も持ってるよ。" userName="philipkglass" createdAt="2025-02-17T15:39:36" color="#785bff">}}

{{<matomeQuote body="実は下のコメントに返信しようと思ったんだけど、なぜか返信リンクが表示されなかったんだ。<br>それでも、Raspberry Pi Zeroですら40年前には超コンピュータだったって気づいたんだ。<br>今の僕たちから見れば時代遅れのGPUでも、1985年当時には信じられない存在だった。" userName="flyinghamster" createdAt="2025-02-17T16:18:23" color="#785bff">}}

{{<matomeQuote body="たまに、90年代のスーパコンピュータを今の家で手に入れることができるって話をするけど、相手には全然伝わらないみたい。みんなネットサーフィンくらいにしか使ってないから。技術や知識は、それを使う人次第で怖さが変わる。人間が問題なんだ。" userName="iugtmkbdfil834" createdAt="2025-02-17T16:12:06" color="">}}

{{<matomeQuote body="デパートでベクトル推力機の詳細な本を買ったよ。…すぐに誰か来た。" userName="cardiffspaceman" createdAt="2025-02-18T17:48:01" color="">}}

{{<matomeQuote body="おお、ミサイル誘導の本、値段上がったね。2年前は中古が15ドルくらいで買えたのに。" userName="daemonologist" createdAt="2025-02-17T06:45:10" color="">}}

{{<matomeQuote body="技術書のハードカバー2冊セットが170ドルって結構普通だね。" userName="contingencies" createdAt="2025-02-18T19:54:43" color="">}}

{{<matomeQuote body="ミサイルは自分の位置を常に把握してるんだ。それは、どこに行ってないのかも知ってるから。" userName="mmusson" createdAt="2025-02-17T13:02:02" color="">}}

{{<matomeQuote body="それもそうだけど、反ドローン妨害もあるよね。現代はすごい時代だ。" userName="gessha" createdAt="2025-02-17T03:19:50" color="">}}

{{<matomeQuote body="ウクライナとロシアは、これを打破するために光ファイバーケーブルを使ったドローンを作ってるみたい。昔の有線誘導ミサイルみたいに。" userName="pjc50" createdAt="2025-02-17T14:58:44" color="#785bff">}}

{{<matomeQuote body="なんでドローンに光ファイバーケーブルのスプールがついてるんだろう？オペレーターが持ってないの？" userName="alashow" createdAt="2025-02-17T23:13:29" color="">}}

{{<matomeQuote body="引っ張りとファイバーのテンションだね。前者はほぼゼロ、後者は2kmのラインを引きずって小型機を飛ばすことになって、地面のものに引っかかる危険がある。" userName="pbmonster" createdAt="2025-02-17T23:50:51" color="">}}

{{<matomeQuote body="新しい猫とネズミのゲームだね。" userName="iugtmkbdfil834" createdAt="2025-02-17T16:13:07" color="">}}

{{<matomeQuote body="多くの反ドローン妨害って、ドローンとオペレーターの無線通信を切断することなんだ。ほとんどのドローンは予め設定された自律航路を飛ぶから、影響受けないよね。反レーダー装置でもない限り。" userName="samplatt" createdAt="2025-02-17T05:41:42" color="#ff5733">}}

{{<matomeQuote body="古典的だけど、少しジェームズ・ボンドっぽいネット弾を撃つ散弾銃が気に入ってる。" userName="temp0826" createdAt="2025-02-17T07:48:27" color="">}}

{{<matomeQuote body="無法者の犬の問題には、遊弋兵器が一番効果的だよね。動物にフィードバックがすごく大事なのは有名だから。" userName="nullc" createdAt="2025-02-17T02:54:06" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="1mmの半径と0.5mmの深さのタンパク質を100msバーストで気化できる小さなレーザーについてどう思う？ハードウェアを無駄にしないのが大事で、資源の浪費もなく、行動の証拠も残らないのが理想だよ。人間には聞こえない音を上手く使えば、敵を追い出すこともできるかもね。" userName="Nevermark" createdAt="2025-02-17T07:48:55" color="">}}

{{<matomeQuote body="自分はパルスレーザーで少し肉を失ったことがあるんだけど、傷に気が付いたのは後からだった。レーザーでナパームを点火するのが解決策だと思うけど、ドローンに火をつけないようにタイミングを考えないとね。" userName="nullc" createdAt="2025-02-17T08:12:33" color="">}}

{{<matomeQuote body="＞レーザーでナパームを点火”おっ、いいね！でもナパームを散水システムでうまく使えなかったから、ヘリから落としてるんだ、昔のやり方だけど。" userName="throwup238" createdAt="2025-02-17T12:49:39" color="">}}

{{<matomeQuote body="四文字で言うと、ディーゼルエンジンの燃料噴射。" userName="nullc" createdAt="2025-02-17T20:38:36" color="">}}

{{<matomeQuote body="これはアップボートだけじゃ足りないね。素晴らしいライティングだよ、ありがとう。" userName="nodra" createdAt="2025-02-17T04:54:53" color="#38d3d3">}}

{{<matomeQuote body="すごいプロジェクトだね！こんなクールなものを作るためのスキルのシンセシスに驚いてるよ！" userName="slicktux" createdAt="2025-02-17T05:43:13" color="#ff5733">}}

{{<matomeQuote body="もし100メートルのアンテナが必要なら、複数のドローンを100メートルの放物線に配置して近い形を作れるかな？" userName="taylorportman" createdAt="2025-02-17T04:53:31" color="">}}

{{<matomeQuote body="そうだね、位置をおおよそ1/10波長に保って、トランスミッターとレシーバーをps精度で同期できれば可能だよ。大変だけど、実際は低周波数の時しか考慮されないかな。" userName="mNovak" createdAt="2025-02-17T05:15:16" color="">}}

{{<matomeQuote body="その位置をそんなに正確に保つ必要はないよ、理想的にはリアルタイムで把握できれば。" userName="namibj" createdAt="2025-02-17T09:49:59" color="">}}

{{<matomeQuote body="6GHzで5cm波長だと、1/10は5mmだから、普通のRTK精度にはちょっと足りないと思う。でも低い周波数なら可能かもね。" userName="tecleandor" createdAt="2025-02-17T11:01:34" color="">}}

{{<matomeQuote body="レーザー距離計を使って2-3の既知の反射体までの距離を測定することで、サブミリメートル精度を出せるなら、それだけで十分かも。10-20機のドローンを使って長さ50または100メートルのアンテナを展開するのは、特に軍事において多くのシナリオで非常に有効だね。" userName="nine_k" createdAt="2025-02-17T17:55:00" color="#ff33a1">}}

{{<matomeQuote body="ここで受信機を同期させるために使われる技術と同じ方法が使えるはず。強力なローカルビーコンの共通受信と三角測量で、GNSS精度よりも良い位置情報が得られて、SNRの利点やキャリア位相の曖昧さの対処に役立つよ。" userName="CamperBob2" createdAt="2025-02-17T18:06:37" color="#ff5733">}}

{{<matomeQuote body="UWBって、役立つ精度を出せるのかな？それとも他の何かが必要になる？" userName="bloopernova" createdAt="2025-02-17T14:39:54" color="">}}

{{<matomeQuote body="すごいプロジェクトだね！素晴らしい結果だ！ここでHNにシェアしてくれてありがとう。" userName="sllabres" createdAt="2025-02-17T06:47:52" color="">}}

{{<matomeQuote body="＞単一チャネルレーダーはターゲットまでの距離を測定するだけで、ターゲットの角度を検出できない。確かにその特定の使用ケースではそうかも知れないけど、パラボリックディッシュやスロット付きウェーブガイドアパーチャーはずっと前からあるよ。" userName="anilakar" createdAt="2025-02-17T07:03:00" color="">}}

{{<matomeQuote body="これって、夜や木の後ろにいるロシア人を見えるってこと？（すぐに、中国のドローンが欧州の都市で民間人を24時間狩るために攻撃するようになるのかな？）" userName="tomaskafka" createdAt="2025-02-17T17:18:03" color="">}}

{{<matomeQuote body="確かに、21世紀の戦争はアップグレードされたね。怖いけど反対手段も見られることを願うよ。" userName="onemoresoop" createdAt="2025-02-17T22:08:20" color="">}}

{{<matomeQuote body="これはすごい！Sentinel 1のツールボックスを動かすのが大変だったから、今は一から書き直せると確信してる。" userName="willtemperley" createdAt="2025-02-17T07:13:19" color="">}}

{{<matomeQuote body="素晴らしい作業だね！こんな素晴らしい記事を書いてくれてありがとう！" userName="transistor-man" createdAt="2025-02-17T02:57:53" color="#ff5c5c">}}

{{<matomeQuote body="驚くべきエンジニアリングだね。シェアしてくれてありがとう。" userName="cruftbox" createdAt="2025-02-17T18:10:56" color="#ff5733">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
