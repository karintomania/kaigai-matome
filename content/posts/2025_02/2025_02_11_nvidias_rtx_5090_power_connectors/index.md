+++
date = '2025-02-11T00:00:00'
months = '2025/02'
draft = false
title = 'NvidiaのRTX 5090電源コネクタが溶ける危険とは！？'
tags = ["Nvidia", "RTX 5090", "ハードウェア", "電源", "トラブル", "技術", "PCパーツ", "ゲーミング", "ニュース", "エンジニアリング"]
featureimage = 'thumbnails/purple2.jpg'
+++

> NvidiaのRTX 5090電源コネクタが溶ける危険とは！？

引用元：[https://news.ycombinator.com/item?id=43008879](https://news.ycombinator.com/item?id=43008879)

{{<matomeQuote body="12VHPWRはほとんど安全マージンがないから、ちょっとした問題がすぐ大きな問題になるよ。600Wも怖いし、800Wのスパイク報告もあるし。12V2x6は特に問題で、ピンの接触不良があるだけで、すぐに規格を超えちゃう。600Wだと各ピンに8.3Aかかるから、ギリギリのラインだよ。接触不良だと10A超えちゃって、溶ける可能性があるからね。こうした致命的な事例には注意が必要！" userName="kersplody" createdAt="2025-02-11T21:03:31" color="#ff33a1">}}

{{<matomeQuote body="良いまとめだね。BuildzoidがYouTubeで4xxxシリーズの問題について同じことを言ってたし、今日も似たような動画をアップしたみたいだからぜひ見てみて。古いMolexコネクタの貧弱な接続問題は長年あったかもしれないけど、安全マージンがあったから問題にならなかったんだ。高出力スペックになった今、コネクタ全般の根本的な見直しが必要だと思う。コネクタが高くなっちゃうかもしれないけど、600-800Wの拡張カードのためにはそれが必要だよね。" userName="ckozlowski" createdAt="2025-02-11T21:24:22" color="#785bff">}}

{{<matomeQuote body="高出力コネクタはたくさんあるし、今のと見た目が大して変わらないように見えるものでも、実際にはもっと高価だよ。でも、40A以上になると、バナナタイプのコネクタが増えて、スリットが入った円筒形のデザインが主流になるんだ。これなら大量の電流を扱えるよ。" userName="exmadscientist" createdAt="2025-02-12T00:50:41" color="">}}

{{<matomeQuote body="確かに、高出力コネクタは同じような見た目でも、品質基準を上げる必要があると思う。今使ってるMolexコネクタは正しく合わせないと、ピンが正しく刺さらずにワイヤーが後ろに押しやられちゃうことが多い。より高品質のコネクタは、精度が高くてしっかりした材料で作られてるべきだと思う。それなら問題も減るはず。でもコストは上がるよね。" userName="ckozlowski" createdAt="2025-02-12T02:17:54" color="#785bff">}}

{{<matomeQuote body="あのMolexのクローンは規格外だったんだ。オスとメスの端子はちゃんとロックされるはずだけど、クソみたいなクローンが多いから、そういった事例が出ちゃうんだ。また、設計自体はうまくできてるし、抜くには相当な力がいるんだよ。ちゃんとした設計だと、本来は正常動作するはずなんだ。" userName="smallmancontrov" createdAt="2025-02-12T05:25:16" color="">}}

{{<matomeQuote body="PCスペースでは、コネクタの規格は非常に具体的なMolexやAmphenolパーツに依存しているんだ。他のもの、たとえばMolexのクローンが入っても、全て規格外になっちゃうんだよね。だから、どこかで規格外の部品を使ってると思う。" userName="ssl-3" createdAt="2025-02-12T07:40:50" color="">}}

{{<matomeQuote body="このリンクはコネクタの規格や限界、材料の詳細について良い深堀りをしてるよ。コネクタには450から600Wをサポートするための厳しい規格があるんだ。70℃の温度に耐えられるガラス繊維充填熱可塑性樹脂じゃないとダメだし、端子は銅製で、ワイヤーゲージは16gじゃないといけないんだ。" userName="opello" createdAt="2025-02-12T03:22:02" color="#ff33a1">}}

{{<matomeQuote body="それでも、家庭内の多くの機器は800W以上使っても平気だよ。秘密は、もっと現実的な電圧を使うこと。30Vや36V、または48Vだと、接触安全に余裕を持てて、大幅に低い電流と抵抗損失を実現できるよ。" userName="amluto" createdAt="2025-02-12T17:18:44" color="">}}

{{<matomeQuote body="これはスレッド内で最も有益な評価だと思う。他の電気システムでも理想的には125%の容量を持つべきだから、コネクタや導体の規格は、温度規格も含めて確認する必要がある。これが限界まで近いと、フルロード時の動作温度も限界近くなるだろうし。材料が規格以下だと、より問題が起きるんだ。" userName="tcdent" createdAt="2025-02-11T21:11:57" color="#785bff">}}

{{<matomeQuote body="“3rD partyコネクタ”を批判する人もいるけど、受け側のコネクタは信頼できるメーカーのもので、基準を超えた品質があると思うよ。" userName="zamalek" createdAt="2025-02-11T21:27:54" color="">}}

{{<matomeQuote body="常識のある人なら、2000ドルから10万ドルもする5090を１５ドルの電源につなぐなんてしないよね。" userName="Ygg2" createdAt="2025-02-11T21:54:27" color="">}}

{{<matomeQuote body="確かにそうだけど、そんな高額なGPUを発売日に買う人は、全く常識的とは言えない人も多いかもしれないよ。" userName="rincebrain" createdAt="2025-02-11T22:19:37" color="">}}

{{<matomeQuote body="そのコメントを聞いて気になるんだけど、コンピュータサイエンス系の人で電気工学に疎いのか、無駄にリムをつけるような人なのか？" userName="m463" createdAt="2025-02-11T23:27:35" color="">}}

{{<matomeQuote body="彼らは狂ってるわけじゃなくて、単に金の使い方が下手なだけだと思う。" userName="Ygg2" createdAt="2025-02-11T22:35:23" color="">}}

{{<matomeQuote body="そういうわけでもないよ。高い車を買っても安いタイヤをつけたりする人はたくさんいるしね。" userName="lmm" createdAt="2025-02-12T02:01:32" color="">}}

{{<matomeQuote body="高いGPUを買ったのに安い電源を使う人は結構いそうだね、だって電源ってみんな同じことしてると思ってるんだろうし。" userName="asddubs" createdAt="2025-02-12T14:31:32" color="">}}

{{<matomeQuote body="彼らが必ずしも狂ってるわけじゃないのは同感だけど、ちょっと無理をしてる人も知ってる。" userName="rincebrain" createdAt="2025-02-11T22:37:02" color="">}}

{{<matomeQuote body="90シリーズのカードはいつまでも最上級じゃないからね。いずれは中古になって、初めてのPCを組む人が5090を安く手に入れて、古いパーツと弱い電源をくっつけることもあるよ。" userName="Decabytes" createdAt="2025-02-12T15:09:10" color="">}}

{{<matomeQuote body="ケーブルはGPU視点か電源視点からみてサードパーティである必要があるよ。規定の耐久性で作られていれば問題ないはず。" userName="clhodapp" createdAt="2025-02-11T23:45:40" color="">}}

{{<matomeQuote body="ただし、その“期待される耐久性”が不合理な場合があるよ。スペック通りでも、実際の使用状況を考慮した余裕が必要なんだ。8.3Aで8.5Aの接続を使うのは確かに良くない。" userName="Dalewyn" createdAt="2025-02-12T02:44:32" color="">}}

{{<matomeQuote body="問題が二つあるね。一つ目は、安全マージンが低すぎるってこと。電流を扱うケーブルが安全に使えるレベルに設定しないとダメだ。二つ目は、RTXの新しいモデルには12Vの接続部分の電流バランスを調整するフィードバックシステムがない。結局、NvidiaはRTX4000の問題から学んでなくて、電力消費を増やして安全回路を削ってしまった。" userName="clhodapp" createdAt="2025-02-12T03:56:28" color="#ff5c5c">}}

{{<matomeQuote body="テストでは一つのワイヤーに約23Aが流れているのがわかった。基準では、これらのコネクタは1ピンあたり9.5Aを扱えることになっていて、結局684Wまで対応できるということだ。" userName="sozforex" createdAt="2025-02-12T03:25:15" color="#45d325">}}

{{<matomeQuote body="高電圧のコネクタ設計は、いつも電流の不均衡が起こるんじゃないか？ワイヤーや銅のインピーダンスは完璧じゃないから、ピンの位置によって流れる電流が違うってことに興味がある。例えば、PCBに近いピンはもっと強い電流が流れるはず。" userName="leeter" createdAt="2025-02-12T05:00:21" color="">}}

{{<matomeQuote body="ワイヤーを並列にするのは安定している。片方に多く電流が流れると、その部分が熱を持って抵抗が増すので、自然と電流バランスを取る。だから、グラウンドワイヤーを外すのは愚かだよ。" userName="exmadscientist" createdAt="2025-02-12T07:48:29" color="">}}

{{<matomeQuote body="テスト方法はあまり良くなかったなと思う。もしそれが原因なら、フェライトビードを使う方が効果的だと思う。それにしても、異常な温度に達するワイヤーが二つだけってのは、正直ちょっと変じゃないか。" userName="leeter" createdAt="2025-02-12T13:32:29" color="">}}

{{<matomeQuote body="接続部のワイヤーは等しい数のグラウンドと12Vが必要なのは、同じ電流が流れるからで、少なくとも6本のワイヤーが必要になってる。PCI-eの8ピンはちょっと変だけど、これは電源メーカーがしっかりしてるという信号だ。" userName="toast0" createdAt="2025-02-12T16:49:01" color="">}}

{{<matomeQuote body="テストベンチでの解析を見たけど、実際には2本のワイヤーしか電力を扱ってなくて、他のワイヤーはあまり流れてないみたい。もしかしたら、24Vや48Vを検討する必要があるかもしれない。" userName="zamalek" createdAt="2025-02-11T21:23:32" color="#ff5733">}}

{{<matomeQuote body="内部配電として12Vだけでなく48Vを採用するのは素晴らしいアイディアだと思う。抵抗損失が大幅に減るし、接続部での損失も減るからね。ただ、48Vにするためにはエコシステムの変更が求められる。" userName="mjevans" createdAt="2025-02-11T21:48:37" color="#785bff">}}

{{<matomeQuote body="48Vシステムはケーブルの抵抗損失が約13％になって、重要なのは接続部だよね！実際は1/16（6.25％）だけど。抵抗損失は電流の2乗に比例するし、電圧が4倍になると電流は1/4になるから、その平方で1/16になるんだ。" userName="Denvercoder9" createdAt="2025-02-11T21:58:07" color="#ff5c5c">}}

{{<matomeQuote body="48Vの利点をずっと主張してきたけど、48Vから1Vへの変換の非効率は240Vや120Vから48Vへの変換効率でほぼ相殺されると思う。PoEデバイスは普通のPCBで48Vを問題なく扱えるし、あまり大きな問題にはならないと思うよ。" userName="myself248" createdAt="2025-02-11T23:09:37" color="">}}

{{<matomeQuote body="POE/POE+標準は15〜20Wだけど、600Wになると新しい規格が必要になるね。" userName="boznz" createdAt="2025-02-12T03:34:15" color="">}}

{{<matomeQuote body="48Vは既にハイパースケーラーのパワーシェルフラックデザインの標準とも言える。" userName="deelowe" createdAt="2025-02-11T23:52:49" color="">}}

{{<matomeQuote body="24V以上のシステムではスイッチングモードコンバータの効率が高比率で落ちるのが問題みたい。高い電圧のためには48Vが理想かも。48Vから12Vに変換して、今と同じ方式で二段階で行う必要があるね。" userName="magicalhippo" createdAt="2025-02-12T02:49:48" color="">}}

{{<matomeQuote body="4は名目上かな？カウントの仕方によるけど、供給線が6本、接地返線が6本あって、ほぼ同じ電流が流れるはずだよ。ただし接地線は12V線と逆方向だね。" userName="crote" createdAt="2025-02-11T21:54:33" color="">}}

{{<matomeQuote body="14ゲージのワイヤーで安全マージンをもっと見たいけど、ワイヤーそのものは問題じゃないんだよね。NECはかなり慎重で、14AWGの導体では15Aが許可されてる。物理的接触の悪いコネクタが問題で、12VHPWRコネクタの設計はひどいと思う。" userName="snuxoll" createdAt="2025-02-12T02:38:22" color="">}}

{{<matomeQuote body="この問題は複数のエンジニアが警告してたと思う。安全マージンが近いなら、最低でも各ピンに電流センサーを追加すべきだよ。" userName="choilive" createdAt="2025-02-16T06:29:26" color="">}}

{{<matomeQuote body="Micro-Fit 3.0じゃないね、最大18AWGまでしか受け付けないはずだし、ハンドクリンプツールではそれも微妙だと思う。18AWG用のクリンパーは他のツールと別で、高いし少し癖がある。これとは別のシリーズだと思う。" userName="exmadscientist" createdAt="2025-02-12T00:46:29" color="">}}

{{<matomeQuote body="テストでは電流が各ペアで不均衡な部分があったみたい。2本のケーブルが22Aを運んでて、PSUコネクタがその近くで150℃まで加熱されてたそうだ。1stパーティーのケーブルでも起こってるよ。" userName="Xelbair" createdAt="2025-02-12T08:21:09" color="">}}

{{<matomeQuote body="そうだね、GPUのケーブルは小さくて壊れやすいコネクタに対して硬すぎると思う。" userName="amelius" createdAt="2025-02-11T22:32:40" color="">}}

{{<matomeQuote body="ユーザーの過失を責めるのはもうやめたほうがいいんじゃないかな。設計自体に問題がある気がする。" userName="HexPhantom" createdAt="2025-02-13T08:25:34" color="">}}

{{<matomeQuote body="75Wをスロットから引いたらもう少し余裕が必要じゃない？600Wの例だと7.3A/pinぐらいになるはず。" userName="opello" createdAt="2025-02-12T03:35:12" color="">}}

{{<matomeQuote body="RTX 6000 Ada GenはEPS12V 8ピンとかだったっけ？" userName="caycep" createdAt="2025-02-12T21:13:28" color="">}}

{{<matomeQuote body="仕様では余裕がほとんどないのはどういう理由なんだろう？12VHPWRの根本的な問題が繰り返されてる気がする。設計には十分な余裕を持たせて、最大限の仕様で使わないのが基本じゃないの？" userName="Dalewyn" createdAt="2025-02-12T02:38:14" color="#45d325">}}

{{<matomeQuote body="友達がF150 Lightningでテスラスーパー充電器を使ってた時、ケーブルが短すぎてテスラの充電ポートに届かなくて、2つの駐車スペースとほぼ3つの充電器を塞いで使ってたのは笑った。あの節約したお金が銅の分だとしたら、果たして価値があったのかな。" userName="bcrl" createdAt="2025-02-13T22:59:31" color="">}}

{{<matomeQuote body="Nvidiaのエンジニアから今回の問題について話を聞きたいな。3シリーズまではパワーデリバリーシステムが過剰に作られてたのに、5シリーズでは1つのシャント抵抗だけで非常に危険なデザインになったのはどうして？4シリーズの問題があったのに更に悪化させたのは驚くべきことだよ。" userName="nvarsj" createdAt="2025-02-11T21:45:12" color="#45d325">}}

{{<matomeQuote body="500W以上のカードがあるのは悪いアイデアのような気がする。CPUも含めると、標準の12アンペア回路から連続的に引ける最大電力に近づいちゃうし。" userName="MBCook" createdAt="2025-02-12T00:16:52" color="">}}

{{<matomeQuote body="ここでの提案は、みんなにもっと強力なハードウェアを求めるのをやめさせること？" userName="shawnz" createdAt="2025-02-12T01:26:22" color="">}}

{{<matomeQuote body="一旦立ち止まってやり直すべき？240Vの三相電源を設置するか、拡張した電気パネルが必要になるかもしれない。Nvidiaは「できるだけ早く、妥協なし」で進んできたけど、そろそろ無理が出てるんじゃないかな。" userName="MBCook" createdAt="2025-02-12T03:10:49" color="">}}

{{<matomeQuote body="もしGPUが2kWのPSUを必要とする時代が来たら、少なくともヨーロッパ人はアメリカより新しい自慢ができるね、あとは早沸かしの電気ケトルも。" userName="cameronh90" createdAt="2025-02-12T07:18:22" color="">}}

{{<matomeQuote body="アメリカではすでにメートル法に切り替えたから、120Vも同じようにしたいね。採掘時代には専用の240V回路で運用してたから、確かに少し効率が良くなったし、銅も節約できた。キッチンにも240Vのアウトレットを作る予定。" userName="ssl-3" createdAt="2025-02-12T07:54:43" color="">}}

{{<matomeQuote body="240Vのアウトレット用にNEMA 6-15プラグのケトルを探さなきゃ。" userName="shawnz" createdAt="2025-02-12T14:57:50" color="">}}

{{<matomeQuote body="イギリスでは自分でプラグを取り付けることは一般的だったから、僕もそれをしたい気分。ただ、米国の電源プラグの安全基準に合った6-15Pのキャプティブヒューズを見つけるのは難しいな。17Aのブリティッシュプラグより15Aまたは20Aのブレーカーの方が高いし。" userName="ssl-3" createdAt="2025-02-12T21:05:19" color="">}}

{{<matomeQuote body="それは笑ったな！大きなプラグのケトルのイメージ、最高だね！" userName="lsaferite" createdAt="2025-02-12T15:55:24" color="">}}

{{<matomeQuote body="NEMA 6-15Pって、あまり大きくないよ。実際には通常の米国プラグとほぼ同じサイズで、接点が90度回っただけ。むしろ、世界中のケトルに比べたら小さいよ。" userName="ssl-3" createdAt="2025-02-12T21:11:03" color="">}}

{{<matomeQuote body="みんなが性能当たりの消費電力問題に取り組んでいる一方で、絶対的な性能を追求している人もいる。5090のようなハイエンドな製品が必要な人は限られているし、中間層の製品も求められているから、選択肢は多様化していくよ。" userName="shawnz" createdAt="2025-02-12T03:29:25" color="#785bff">}}

{{<matomeQuote body="馬鹿言ってるな。誰も止まらないよ。もしスケールアップする手段が電力消費の多いハードウェアを増やすことだけなら、市場もその方向に行くだろう。どんな未来のGPUが10kWを消費しても、娯楽としては安いものだし。" userName="bufferoverflow" createdAt="2025-02-12T05:57:26" color="">}}

{{<matomeQuote body="消費者はすでに最も強力なカードを買わない選択肢がある。さらに電力効率を考えるなら、チップはすでに大きすぎるし、競争がある限り250コアを速く動かそうとするね。需要がある限り、こうしたものは作り続けられるよ。" userName="ants_a" createdAt="2025-02-12T12:21:02" color="">}}

{{<matomeQuote body="Intelも同じことをしていると思うが、高性能i9チップの電力消費はとても増えている。ごく小さな性能向上のために予算を増やすのは確か。" userName="zymhan" createdAt="2025-02-12T05:37:40" color="">}}

{{<matomeQuote body="ごめん、GPUのことを言いたかったんだ。もうちょっと具体的にすればよかった。" userName="MBCook" createdAt="2025-02-12T14:57:50" color="">}}

{{<matomeQuote body="800Wの負荷は120Vの15A回路でも余裕なんだけど、問題はPSUからカードへの12V接続だよ。" userName="amluto" createdAt="2025-02-12T17:19:49" color="">}}

{{<matomeQuote body="国の電気規則では、回路の最大負荷の80%以上を連続で引いちゃダメなんだ。ゲームするなら12Aまでだね。それで1440WまでOK。でも電源ユニットの効率が80～95%だから、90%なら1300W。CPUが120W、マザーボードが100Wくらいで1080W。DDR5のメモリが60W、M.2ドライブで20W足すと400W残ってる。それでも大丈夫かな？モニターもいるし。" userName="MBCook" createdAt="2025-02-12T23:48:46" color="#45d325">}}

{{<matomeQuote body="コンピュータが自分を溶かすほどの電力を使ってまで、レイトレのMinecraftやボイラープレートのPythonを書く必要があるなら、どこかで間違った気がする。" userName="bongodongobob" createdAt="2025-02-12T02:02:41" color="#38d3d3">}}

{{<matomeQuote body="ボイラープレートのPythonを書くためにGHzやGBsが必要な今、20年以上前のMHzやMBsで簡単なアプリを動かせてたのに、すごいことだね。" userName="ChrisRR" createdAt="2025-02-12T10:57:01" color="">}}

{{<matomeQuote body="地元のAIのことを言いたかった。" userName="bongodongobob" createdAt="2025-02-12T15:36:39" color="">}}

{{<matomeQuote body="Pentium 4の問題みたいだね。今のやり方は持続可能じゃないって気づいたら、変えた方がいいよ。" userName="ChrisRR" createdAt="2025-02-12T10:55:44" color="">}}

{{<matomeQuote body="こうなることで、もっと革新して最適化されたソフトを作るインセンティブになるかもしれないね。" userName="satvikpendem" createdAt="2025-02-13T03:18:17" color="">}}

{{<matomeQuote body="関係あるか分からないけど、友達が言うにはリタイアした人が多いらしい。" userName="rangestransform" createdAt="2025-02-11T23:50:06" color="">}}

{{<matomeQuote body="うちのボスに近所のNvidiaか元Nvidiaの人がいるけど、いつも高級スポーツカー乗って高級な暮らしをしてる。株のおかげだよね。だから人が辞めたりリタイアするのも不思議じゃない。" userName="hipsterstal1n" createdAt="2025-02-12T02:52:22" color="">}}

{{<matomeQuote body="基本的に、安っぽいケーブルはスチールを使ってることがあるから、耐熱温度が低くなって溶けることがあるんだよね。NVIDIAがそんなミスするとは思わないけど、安いATX電源は本当に安かろう悪かろうって感じ。良い一日を！" userName="Joel_Mckay" createdAt="2025-02-12T01:34:32" color="">}}

{{<matomeQuote body="derbauerが溶けたコネクタの分析をした結果、スチールじゃなくてニッケルと金だったみたい。Buildzoidによると、Nvidiaが負荷を分散する機能を削除しちゃったらしいし、安全係数もかなり低いみたい。2000ドルのGPUなのに、コスト削減を優先しすぎてる気がする。" userName="kllrnohj" createdAt="2025-02-12T02:17:51" color="#38d3d3">}}

{{<matomeQuote body="ニッケルと金のコーティングは一般的だけど、もしそれが固体だと性能がすごく悪くなる。やっぱりベリリウム銅のスプリングの方が優れてるよね。良い一日を過ごしてね、でも少し時間が経っちゃったから僕が間違ってるかも。" userName="Joel_Mckay" createdAt="2025-02-12T03:48:32" color="">}}

{{<matomeQuote body="DerbauerとBuildzoidのYouTube動画が役立つから、単なるユーザーエラーじゃないってこと。7900 XTXを選んで正解だったよ、数年間は安心だ！" userName="ulfbert_inc" createdAt="2025-02-11T15:05:42" color="">}}

{{<matomeQuote body="Buildzoidの動画まとめ（redditより）：3090はパワーを均等に分散していたから溶ける報告がなかったのに対し、4090や5090は設計を変更しちゃって負荷が偏る可能性がある。コネクタが正しく装着されていると熱が十分に発生しないだけで、コンタクトが悪いと熱が出るらしいよ。" userName="enragedcacti" createdAt="2025-02-11T15:44:07" color="#45d325">}}

{{<matomeQuote body="ほとんどの12VHPWRコネクタは1ピンあたり9.5-10Aまでの定格。合計600Wだと1ピンあたり8.33Aだけど、安全係数を考えると9.17Aまで持つ必要があるってこと。" userName="c2h5oh" createdAt="2025-02-11T16:56:19" color="">}}

{{<matomeQuote body="50Aも流すなら、しっかりネジで固定できるコネクタを使うべきだと思う。多ピンコネクタは電力の不均衡が生じるから、今の設計はリスクが高いよね。保険会社なら、このコネクタによる火災は補償しないって通告すると思う。" userName="leeter" createdAt="2025-02-11T16:48:56" color="#ff5c5c">}}

{{<matomeQuote body="これが問題か気になってた。RCクワッドとかでは、抵抗が低い巨大なバナナコネクタを使ってるけど、接続方式を工夫すれば同じような製品が作れるはずだ。" userName="Panzer04" createdAt="2025-02-12T03:35:38" color="">}}

{{<matomeQuote body="Derbauerの動画：https://www.youtube.com/watch?v=Ndmoi1s0ZaY<br>Buildzoidの動画：https://www.youtube.com/watch?v=kb5YzMoVQyw<br>7900 GREにしたからNvidiaのコネクタには全然信頼してない。" userName="CarVac" createdAt="2025-02-11T15:22:25" color="">}}

{{<matomeQuote body="7900XTXを楽しんでる。Nvidiaがこの特殊なコネクタにシフトした理由が全然わからない。カードは一度接続したら忘れちゃうのに。" userName="whalesalad" createdAt="2025-02-11T15:39:51" color="">}}

{{<matomeQuote body="新しいカードは前例のない電力を必要としてて、古いコネクタじゃ足りないね。" userName="lmm" createdAt="2025-02-12T08:00:04" color="">}}

{{<matomeQuote body="7900 XTXにしておいてよかったー。数年は大丈夫そう。ただゲームやオフィス用途なら問題ないけど、RTX 5090のVRAM目的なら7900 XTXの24GBじゃ足りないよね。" userName="slightwinder" createdAt="2025-02-11T15:49:12" color="">}}

{{<matomeQuote body="その場合、3090を2枚買ってnvlinkでつなげるのが賢いと思うよ。それか、ワークステーションの予算投資して、実際に色々やりたい時にrunpodのインスタンスを使うのもあり。32GBのVRAMが必要な使い方もあるけど、最近は12GBとか8GBで済むことが多いよ。" userName="wing-_-nuts" createdAt="2025-02-11T17:01:30" color="#ff33a1">}}

{{<matomeQuote body="君が考える“日常”の使い方によるけど、12GBのVRAMでできることはオートコンプリートくらいが限界だと思う。Qwen2.5-32Bはローカルモデルとしては最低限使えるけど、O1未満だと逆に非生産的になるよ。" userName="diggan" createdAt="2025-02-11T18:46:33" color="">}}

{{<matomeQuote body="それから、Qwenモデルは例外として挙げられるよね。" userName="wing-_-nuts" createdAt="2025-02-11T20:24:01" color="">}}

{{<matomeQuote body="14bと32bバージョンでは品質に大きな差があるよ。" userName="pshirshov" createdAt="2025-02-13T01:38:15" color="">}}

{{<matomeQuote body="5090が32GBのRAMを搭載してるのは、AMDが4080に対抗して24GBのカードを出したからだよね、面白いね。" userName="dualboot" createdAt="2025-02-12T04:42:21" color="">}}

{{<matomeQuote body="Radeon Pro W7900" userName="pshirshov" createdAt="2025-02-13T01:37:17" color="">}}

{{<matomeQuote body="次のカードはAMDにするつもり。3080に満足してるけど、ここ2世代で値段がほぼ倍になったし、そんなのサポートできないよ。DLSSが無くても平気だし。" userName="SketchySeaBeast" createdAt="2025-02-11T15:48:29" color="">}}

{{<matomeQuote body="多分、数年は大丈夫そうだけど、AI生成されたアップスケールフレームを見るのが耐えられればね。GPUパワーの向上は高額になってるし、1080時代に戻った気がするよ。新しいコンソール世代が出ない限り、あまり変わらないと思う。" userName="asmor" createdAt="2025-02-11T15:51:26" color="">}}

{{<matomeQuote body="1080は最近のゲームでも1920x1080 60fpsで全然いけるよ。息子がElden RingやHelldivers 2楽しんでるのを見てるしね。" userName="fsloth" createdAt="2025-02-11T16:14:28" color="">}}

{{<matomeQuote body="俺の1080は同じ設定でずっと動いてる。唯一の不満はAIをローカルでいじるのにパワーが足りないくらい。1234ドルのビデオカードを買う価値はないと思う。" userName="gigaflop" createdAt="2025-02-11T16:36:52" color="">}}

{{<matomeQuote body="価格には同意するけど、3080を持ってるなら5080や4080よりも最高電力消費が高いよ。実際、電力要件は減ってる。" userName="hibikir" createdAt="2025-02-11T17:32:00" color="">}}

{{<matomeQuote body="確かにそうなんだけど、5080は実際には昔の70シリーズに近い性能なんだ。90シリーズのトップエンドはすごかったけどね。" userName="SketchySeaBeast" createdAt="2025-02-11T18:37:18" color="">}}

{{<matomeQuote body="5080が70シリーズだって言われるけど説明がないのが不思議。数字は結局特に意味がない。5080は5070より速い、5070は5060より速い。それが数字の意味。" userName="parineum" createdAt="2025-02-12T04:14:00" color="">}}

{{<matomeQuote body="説明はよくされてるのに、いつも無視される。https://youtu.be/J72Gfh5mfTk。世代間の改善を気にする人は実際に性能を比較してるよ。最適な世代は確かに過去よりセグメントが良かったけど。" userName="xquce" createdAt="2025-02-12T07:09:02" color="">}}

{{<matomeQuote body="5070が4090と同じ性能だって言わせる「フェイク」フレームの話、NVIDIAもこういう比較をしてるってことだよ。でも5080って名前がついてる以上、数字はどれだけの性能向上を示してるかは意味がない。" userName="parineum" createdAt="2025-02-16T01:52:18" color="">}}

{{<matomeQuote body="xquceが70シリーズカードについてよく説明してる動画をリンクしてたけど、その論争を言わないと？https://en.wikipedia.org/wiki/GeForce_RTX_40_series#RTX_4080...。NVIDIAが学んだのは小型バージョンだけを出すことだった。" userName="SketchySeaBeast" createdAt="2025-02-12T15:13:53" color="">}}

{{<matomeQuote body="俺はAMDの7900 XTXを2枚使ったけど、どちらもすぐにオーバーヒートして110°Cに達してスロットルがかかった。3枚目は返金選んだよ。" userName="Hamuko" createdAt="2025-02-11T16:45:07" color="">}}

{{<matomeQuote body="Sapphire Nitroは7900 XTX用に素晴らしいヒートシンクがあって、フルロードでもちゃんと動くよ。" userName="shmerl" createdAt="2025-02-12T01:43:18" color="">}}

{{<matomeQuote body="多分リファレンスカードだと思うんだが、リファレンスカードはあんまり買わないほうがいいって聞くよ。冷却性能が不足してることが多いから。俺もRX 5700 XTで失敗したから二度と買わない。" userName="seanw444" createdAt="2025-02-11T17:01:45" color="">}}

{{<matomeQuote body="俺の5700XTは常にオーバーヒートしてたけど、リファレンスカードじゃなかったんだ。ドライバーのデフォルトファンカーブが25％までしかいかなくて、AMDはソフトウェアが本当にひどい。" userName="mrguyorama" createdAt="2025-02-11T18:26:03" color="#785bff">}}

{{<matomeQuote body="うん、リファレンスカードだったよ、AMDの公式ストアから直接買った。" userName="Hamuko" createdAt="2025-02-11T18:19:45" color="">}}

{{<matomeQuote body="あれはヒートパイプのデザインに問題があって、設置位置によって冷却性能が左右されるんだ。サーバーラックみたいな変な場所に置くかもしれないから、同じ問題がないAIBモデルを買ったよ。" userName="bananadonkey" createdAt="2025-02-11T19:23:03" color="">}}

{{<matomeQuote body="AMDがその市場をあきらめるのは残念だよな。でも、俺はSapphire 7900 XTXを買ったんだけど、少なくとも10年は使うつもりだ。" userName="asmor" createdAt="2025-02-11T15:49:17" color="">}}

{{<matomeQuote body="みんな長期的なポジションのように言ってるけど、証拠は何もない。AMDはRX 480／580世代の後に高性能市場を完全にあきらめたわけじゃない。今AMDに必要なことは、ソフトウェアの機能や高性能のために必要な部分を奪わないこと。" userName="dralley" createdAt="2025-02-11T16:32:11" color="#ff5c5c">}}

{{<matomeQuote body="コネクタデザインに本当に問題があるみたいで、der8auerがRTX 5090FEのテストでケーブルの2本のストランドが150℃以上に達したって話だよ。" userName="cranium" createdAt="2025-02-11T15:23:00" color="#ff5c5c">}}

{{<matomeQuote body="俺も同じように5090FEをテストしたけど、GPU側が45℃、PSU側が32℃だった。彼の動画に何が起こったのかわからないけど、何か大きな問題がある。" userName="gambiting" createdAt="2025-02-11T18:19:17" color="">}}

{{<matomeQuote body="もっと詳しいチェックが必要だとは思うが、カードの電力バランスの問題は実際にあるみたいで、報告の原因になってる可能性がある。" userName="perching_aix" createdAt="2025-02-11T21:08:38" color="">}}

{{<matomeQuote body="Nvidiaが提供したスプリッターを使ってるのか、600Wのケーブルを使ってるのか？それともPSUはどれを使ってる？今遠隔で使ってるから、どれくらい心配すべきかわからない。" userName="minzi" createdAt="2025-02-11T18:42:43" color="">}}

{{<matomeQuote body="新しいCorsair RM1000x(ATX 3.1モデル)は、12V-2x6ケーブルが付属してるから、PSUとGPUにそれぞれコネクタ1つだけ。アダプタは不要だよ。" userName="gambiting" createdAt="2025-02-11T18:54:05" color="">}}

{{<matomeQuote body="良い情報だね。とりあえず大きな負荷は避けて、ちゃんと測定できるまで様子見することにするよ。" userName="minzi" createdAt="2025-02-11T19:05:42" color="">}}

{{<matomeQuote body="40シリーズカードでも同じことが起きたから、あの時点で'アップグレード'しないって決めたよ。愛用のものを火事で失いたくないからね。これがまた起きるなんて信じられない。" userName="emsixteen" createdAt="2025-02-11T07:49:52" color="#ff33a1">}}

{{<matomeQuote body="その視点には共感するな！リスクとリターンのバランスを取るのは大事だよ。この場合、思ったほどのリスクはないかも。火事になるかもしれないが、他の高出力の家電と比べてリスクは低いと思う。" userName="the__alchemist" createdAt="2025-02-11T14:59:16" color="">}}

{{<matomeQuote body="NVIDIAは、24ゲージのワイヤーに定格の2倍の電流を流すことで消費者の安全法を違反してるのか？UL認証に違反してるかもしれないね。" userName="dcrazy" createdAt="2025-02-11T16:29:23" color="#ff33a1">}}

{{<matomeQuote body="ヨーロッパのCEマークも問題になるかも。罰金や強制回収の可能性があるよ。" userName="RobotToaster" createdAt="2025-02-11T17:35:10" color="">}}

{{<matomeQuote body="12VHPWRケーブルは16AWGだよね？接続部分に問題があるのは確かだけど、600Wを12ピンコネクタで分ければ、配線ごとに8.3Aだから16AWGは問題ないはず。" userName="michaelt" createdAt="2025-02-11T18:04:01" color="">}}

{{<matomeQuote body="16AWGについては合ってるけど、600Wが12ピンで分けられるのは理想で、実際にはそうなっていない。Roman(Der8auer)が自身の5090で観測したとき、12Vのワイヤーが22A以上流れて、熱が130度に達したんだ。" userName="zamadatix" createdAt="2025-02-11T18:25:12" color="#785bff">}}

{{<matomeQuote body="遊びで12v-2x6のカスタムケーブルを作ったけど、溶ける問題はマイクロフィットのメスコネクタに起因してると思うよ。首の部分に抵抗が多いんだ。" userName="mirthflat83" createdAt="2025-02-11T18:15:19" color="">}}

{{<matomeQuote body="ULは民間企業だから、違反に対する法律はないよ。法律的な結果は製品責任や保証違反の請求になるんじゃないかな。ULを失うと、多くのお店が在庫しなくなるけど。" userName="mminer237" createdAt="2025-02-11T17:24:44" color="">}}

{{<matomeQuote body="アメリカで売られてる製品はCPSC認定ラボでテストされる必要があるけど、消費者用電子機器は対象外かも。" userName="dcrazy" createdAt="2025-02-11T17:46:42" color="">}}

{{<matomeQuote body="もしUL非準拠のものだけで家を埋め尽くして火事になったら、その事実は保険会社に影響があると思うよ。" userName="singleshot_" createdAt="2025-02-11T21:43:50" color="">}}

{{<matomeQuote body="自分の家に何を買って合法的に繋げられるか調べた方がいいよ。UL取得してないと製品が手に入らない感じ。" userName="sidewndr46" createdAt="2025-02-11T21:53:41" color="">}}

{{<matomeQuote body="その.govサイトはいつまで運営されるんだろうね。" userName="dylan604" createdAt="2025-02-11T18:46:22" color="">}}

{{<matomeQuote body="GPUの電圧を48Vに上げて、使えないPSUとは別のコネクタにして問題を一気に解決するのがいいんじゃない？" userName="mpreda" createdAt="2025-02-11T16:06:35" color="#ff5c5c">}}

{{<matomeQuote body="12V電源接続のみのコンピュータもあるし、次の世代では12VをメインボードとCPUに、48VをGPUに供給する設計もアリだと思う。" userName="jmrm" createdAt="2025-02-12T00:19:45" color="#ff5733">}}

{{<matomeQuote body="GPUの電圧を48Vに？それならACケーブルを使った方がいいね。" userName="B1FF_PSUVM" createdAt="2025-02-11T17:19:59" color="">}}

{{<matomeQuote body="ACケーブルがGPUに行って、GPUがメインPSUに短いケーブルを供給するのがモダンスタイル…。" userName="B1FF_PSUVM" createdAt="2025-02-12T22:03:48" color="">}}

{{<matomeQuote body="アメリカのAC電源コネクタが変わらない限り、正直なところこれにはあまり用途がないな。一番ね、システム全体が1200Wくらいで頭打ちになるから、モニターとかのために何百Wか余裕みても、最大アンペアに制限があるんだよね。" userName="Kirby64" createdAt="2025-02-11T16:10:20" color="">}}

{{<matomeQuote body="アメリカには240ボルトのコンセントもあるけど、主にエアコンやオーブンみたいな高電力機器に使われてるよ。だから、高出力の暖房器具、要するにゲーミングPC用のコンセントを追加すればいいんじゃない？" userName="ielillo" createdAt="2025-02-11T16:15:04" color="">}}

{{<matomeQuote body="240Vのコンセントはあるけど、PCを置く場所には使われてないからね。普通のユーザーが120Vのプラグでは足りないって需要が出ない限り、オフィスには240Vのコンセントは見かけないと思う。サーバールームや特殊なケースは別だけどさ。" userName="Kirby64" createdAt="2025-02-11T16:18:05" color="">}}

{{<matomeQuote body="20アンペアの回路も一般的だよ。多くの家では20アンペアの回路が通ってるのに、その適切なコンセントがないことが多いから、ほとんどの家にとっては安価なアップグレードなんだ。" userName="tass" createdAt="2025-02-11T16:52:05" color="">}}

{{<matomeQuote body="コンセントがアンペアに影響するとは思わなかった…これは定格の問題なのか、実際にトリップする部品があるのか、どっちなんだろうね。" userName="anankaie" createdAt="2025-02-11T18:21:35" color="">}}

{{<matomeQuote body="引退した電気技師のコメントだよ。アメリカでは大半がNECに従って設置してる。NECによると、15Aのコンセントは20Aの回路で“規格通り”で、ただし専用回路の場合は20Aのコンセントを使わなきゃダメ。コンピュータみたいな機器が3時間以上動くと容量が80％に減るから、20A回路では16Aまでしか使えないんだ。" userName="ProllyInfamous" createdAt="2025-02-12T05:01:42" color="#ff33a1">}}

{{<matomeQuote body="これはNEC§210.20(A)のことだよ。いわゆる“80％負荷ルール”。例えば、給湯器やコンピュータ、スペースヒーター、一般照明などの特定の用途は常に“連続”と見なされてるんだ。" userName="ProllyInfamous" createdAt="2025-02-12T19:53:53" color="">}}

{{<matomeQuote body="全体の流れだよ。20Aのコンセントは通常12ゲージのワイヤーが必要で、20アンペアのブレーカーが必要。しかも、コンセントの形が違うからね。20Aのコンセントは縦の穴の一つに横穴が加わって、Tの字型になる。20アンペアの機器はその横の端子が必要だから、15アンペアのコンセントには刺さりにくいんだよ。" userName="happyopossum" createdAt="2025-02-11T19:57:52" color="">}}

{{<matomeQuote body="コンセント自体は気にしないけど、レセプタクルの形が20Aの機器を15Aのソケットに挿せないようにするためのものなんだ。逆に15Aの機器は20Aのソケットには挿せるけど、逆は無理。電気技師はケーブルが支えられれば20Aのソケットを設置すべきだけど、そうしてないことが多い。" userName="colejohnson66" createdAt="2025-02-11T19:11:42" color="">}}

{{<matomeQuote body="電気屋は配線が対応していれば20アンペアのコンセントを設置すべきなんだけど、実際はあんまりやらないんだよね。20アンペアのコンセントって見た目が良くないし、使う機器もほとんどないからさ。うちの家はほぼ全ての回路が20アンペアのブレーカーだし、12ゲージのロメックス使ってるけど、コンセントは5-20が数個だけって感じ。" userName="tass" createdAt="2025-02-11T23:16:39" color="">}}

{{<matomeQuote body="20アンペアのコンセントって15アンペアに比べて高いしね。家の電気をリフォームした時、リビングにTVやゲーム機用の専用回路を設けたんだけど、コードではシングルアウトレットには20アンペアのレセプタクルが必要なんだ。15アンペアのコンセントが安いのに、20アンペアのは子供が触れるところに置くべきだから、余分な費用をかけるのは無駄かなって思うよ。" userName="snuxoll" createdAt="2025-02-12T02:59:15" color="">}}

{{<matomeQuote body="20アンペアの配線回路には普通の15アンペアのデュプレックスコンセントでも問題ないんじゃない？もしそれが正しければ、必要以上に高くついてるし、少しはお金も節約できたかも。シングルの15アンペアはダメだけど、デュアルアウトレットの15アンペアなら大丈夫だよ。" userName="ssl-3" createdAt="2025-02-12T08:19:56" color="">}}

{{<matomeQuote body="その通り。20アンペアのコンセントって2倍の値段だから、普段からの設置にはコストが大きいよ。設置する時はああしようかなって思ったけど、値段見てやめたんだよね。" userName="snuxoll" createdAt="2025-02-12T17:35:51" color="">}}

{{<matomeQuote body="確かに。家の配線を全部交換した時、20アンペアのコンセントを設置したかったけど、実際に20アンペアのプラグを持ったことはないし、価格が驚くほど高かった。15アンペアとの違いは接点の形状だけだから、コストは数セント程度で済むと思ってたのに、実際は数ドルも高いんだよ。" userName="ssl-3" createdAt="2025-02-12T20:57:13" color="">}}

{{<matomeQuote body="NEMA 5-20は商業用のみ必要なんだ。アメリカの住宅用20アンペア回路ではNEMA 5-15を使っても大丈夫だよ。" userName="malfist" createdAt="2025-02-11T23:09:50" color="">}}

{{<matomeQuote body="私が“すべき”と言ったのは、法律で求められているという意味じゃなくて、20アンペアの回路に15アンペアのカバーを使うのはちょっとアホらしいと思ったから。" userName="colejohnson66" createdAt="2025-02-12T00:21:55" color="">}}

{{<matomeQuote body="もし壁に14ゲージの安い配線を使っていたら、15アンペアのソケットしか適応できないよ。でないと、20アンペアの機器を繋いだ時に配線が溶けたり、家が焼けちゃう可能性がある。" userName="db48x" createdAt="2025-02-12T02:38:44" color="">}}

{{<matomeQuote body="実際、15アンペアのレセプタクルは20アンペアの電流に耐えられる必要があるから、ワイヤーもブレーカーも大きくしておけば、他の負荷を繋げられるんだ。ただし、大きな負荷を使いたいなら、20アンペアの回路には20アンペアのレセプタクルが必要。" userName="snuxoll" createdAt="2025-02-12T03:01:57" color="">}}

{{<matomeQuote body="電気屋はできるだけ20アンペアのコンセントを設置しようとするけど、もちろん12ゲージのワイヤーはコストが50％高いから、なかなかやらないよ。" userName="jml7c5" createdAt="2025-02-12T00:55:56" color="">}}

{{<matomeQuote body="コンセントの形状は電流容量によって異なるんだよね。幅や回転が違ったりする。それで電気工事士が回路全体の規定容量を示し、同じ回路に他のコンセントがないかも示すようになってんだ。要するに、専門家でない人が安心して設計できるようにするための工夫って感じ。" userName="manwe150" createdAt="2025-02-11T19:22:13" color="">}}

{{<matomeQuote body="欧州の友人の240v電気ケトルが羨ましいなあ。" userName="engineer_22" createdAt="2025-02-11T16:33:37" color="">}}

{{<matomeQuote body="イギリスのケトルは電力を大量に消費するから、人気のテレビドラマのCM中にお茶を一斉に沸かす影響を電力会社が考慮しなきゃいけなかったんだよ。" userName="sangnoir" createdAt="2025-02-11T18:35:59" color="">}}

{{<matomeQuote body="それを強調するために、三相400Vの誘導調理器があるね。" userName="IsTom" createdAt="2025-02-11T16:50:32" color="">}}

{{<matomeQuote body="ケトル用の240VACコンセントがキッチンに普及してないのは不思議だね。NEMA 6-15Rならばもっと使いやすくなるのに。" userName="ryao" createdAt="2025-02-12T20:04:56" color="">}}

{{<matomeQuote body="欧州の友人の240v電気ケトルが羨ましいんだけど、アメリカには電気ケトルってないの？世界中どこでも普通の台所アイテムだと思ってたよ、ペルーの小さな街でも見たことあるし。" userName="diggan" createdAt="2025-02-11T18:49:56" color="">}}

{{<matomeQuote body="アメリカでも電気ケトルはあるよ。ただ、文化的にお茶よりコーヒーを飲む人が多いから、あまり普及してないんだ。普通のアメリカのコンセントだと大きな水を沸かすのに時間がかかるし、私はもう製造されてないSunbeam Hotshotを使ってる。必要な分だけ水を沸かせるんだ。約40秒でお湯が沸くし、ボタン一つでお湯を注げる。" userName="ssl-3" createdAt="2025-02-12T08:29:15" color="#45d325">}}

{{<matomeQuote body="電気ケトルはあるけど、出力が低いからあまり使えない。アメリカのケトルは1100-1400Wしかなくて、沸かすのに1-2分かかるけど、イギリスのは2.5-3kWだよ。" userName="Kirby64" createdAt="2025-02-11T19:27:34" color="">}}

{{<matomeQuote body="多分それは本物じゃないよな。DysonのヘアドライヤーのクローンとかのRPM見てみ？限界に達したら羽根の先はマッハで回るって言ってるのも多いし。Amazonの水槽ヒーターなんか、120Vのコンセントに10kw以上って書いてある。150ポンド持つはずのマグネットも、天井から10-15ポンドで引き剥がされちまった。Amazonの仕様は嘘だ。" userName="malfist" createdAt="2025-02-11T23:12:36" color="">}}

{{<matomeQuote body="NinjaのやつやBrevilleのものであれば正確だと思う。イギリスにある同じNinjaのケトルは3000Wで、アメリカの1500Wとは全然違う。" userName="stoobs" createdAt="2025-02-12T16:33:39" color="">}}

{{<matomeQuote body="あなたの言いたいことは？1800Wのケトルも存在するだろうけど、一般的にはあまり見ないし、アメリカでは大体1800W以上のものは市販されてない。ただ、イギリスではケトルは2kWから始まってそれ以上が普通だ。" userName="Kirby64" createdAt="2025-02-13T15:42:56" color="">}}

{{<matomeQuote body="うちらにはわざわざ水を沸かす専用の器具は必要ないよ。ティーにこだわってないし、普通の人はコーヒー飲むしコーヒーメーカーにヒーターが付いてる。何に使うの？鍋で水を沸かすので十分。" userName="bongodongobob" createdAt="2025-02-12T02:12:04" color="">}}

{{<matomeQuote body="実際、コンロよりも早いことが多いし、自動シャットオフがついてるから、ちょっと目を離しても余計に水を沸かしすぎることがない。世界の多くの地域では飲用水の前に沸かしておくのが良いし、意外と便利な使い道が多い。" userName="lazide" createdAt="2025-02-12T04:54:10" color="#ff5733">}}

{{<matomeQuote body="それは良いとして、アメリカには使い道がないと思う。水を沸かすなら食べ物のためにコンロでやるのが一般的だし、特別な沸騰器具の必要性はない。" userName="bongodongobob" createdAt="2025-02-12T15:36:08" color="">}}

{{<matomeQuote body="イギリスよりは少ないってことには同意できるけど、使い道が「ない」とはちょっと大げさすぎる。ほとんどの人は安くていいケトル持ってるし、ホットチョコレートやコーヒー、ティーのために水を沸かしたり、早くお湯を沸かすっていう理由でも利用されてる。" userName="Kirby64" createdAt="2025-02-13T15:14:18" color="">}}

{{<matomeQuote body="お湯が沸くタイミングを計算してからレンジで温めたことある。タイマーが動き出したら結構早く沸騰するよ。" userName="ryao" createdAt="2025-02-12T20:07:29" color="">}}

{{<matomeQuote body="アメリカにも使い道はたくさんあるし、電気ケトルはあまり一般的じゃないけど、全然ないわけじゃないよ。" userName="dragonwriter" createdAt="2025-02-13T15:22:28" color="">}}

{{<matomeQuote body="朝にオートミールを作る時に使ってる。最速で簡単な方法だよ。" userName="lazide" createdAt="2025-02-12T17:25:28" color="">}}

{{<matomeQuote body="家庭にはないけど、コーヒーメーカーのようにお湯を沸かすための電気ケトルはありだよね。アメリカの家庭はガスの方が安いから、ガスコンロが多いけど、240Vの電気ケトルも使えるはずなのにね。" userName="db48x" createdAt="2025-02-12T02:44:22" color="">}}

{{<matomeQuote body="ブレーカーの容量が問題になるよね。電気パネルに空きがないと、208Vの回路を作れないから、120Vの洗濯機に切り替えたよ。" userName="flyingpenguin" createdAt="2025-02-11T17:20:05" color="">}}

{{<matomeQuote body="質問なんだけど、サブパネルを付けることは考えた？新しい回路を作るなら、壁の修理もいるし、将来的に楽になると思うけど。" userName="snuxoll" createdAt="2025-02-12T02:49:48" color="">}}

{{<matomeQuote body="アメリカではサブパネルの取り付け費用は高いよね。近くにあるだけでも、1000ドル以上かかることが多い。" userName="lazide" createdAt="2025-02-12T12:54:03" color="">}}

{{<matomeQuote body="地域によって工事費が変わるけど、500ドル以上は高すぎるよ。僕は自分で電気工事するけど、新しいパネルを設置しても2500ドルで済んだよ。" userName="snuxoll" createdAt="2025-02-12T17:58:18" color="">}}

{{<matomeQuote body="賛成だね。自分でサブパネルを4つ設置したことがあるけど、すごく簡単なプロジェクトだと思う。制約があると高くなることはあるけど、自分でやるのが一番安い。" userName="lazide" createdAt="2025-02-13T07:52:41" color="#ff33a1">}}

{{<matomeQuote body="うちは20Aの配線、ブレーカー、ソケットがあるから、240Vにする必要がないよ。2400Wまで使えるから十分。" userName="revnode" createdAt="2025-02-11T16:20:32" color="">}}

{{<matomeQuote body="ほとんどの住宅はバスルーム以外だと15Aの配線だね。" userName="dcrazy" createdAt="2025-02-11T16:58:48" color="">}}

{{<matomeQuote body="キッチンもそうだよ。電子レンジやトースター、コーヒーメーカーを同時に使うと、ブレーカーが落ちるだろうね。" userName="Sohcahtoa82" createdAt="2025-02-11T18:04:49" color="">}}

{{<matomeQuote body="僕のキッチンには120VACの回路が2つあるから、同時に使っても問題ないよ。" userName="ryao" createdAt="2025-02-11T21:27:25" color="">}}

{{<matomeQuote body="NECの規定ではキッチンには20アンペアの回路を2つ用意するのが基本だよ。大体はカウンターや窓を跨いで回路を分けるみたい。昔からそういう規定があるから、非準拠の家かNECの規定以前に建てられた家じゃない限り、キッチンの配線はこの通りだと思う。" userName="Kirby64" createdAt="2025-02-13T15:05:11" color="#ff33a1">}}

{{<matomeQuote body="ほとんどのキッチンは一つの回路だけでは回らないからね、それは明らかだよ。" userName="bongodongobob" createdAt="2025-02-12T02:14:03" color="">}}

{{<matomeQuote body="忘れちゃいけないのはガレージのこともね。" userName="burnerthrow008" createdAt="2025-02-11T19:13:11" color="">}}

{{<matomeQuote body="そうなんだけど、ほとんどの人は電気工事のために何千ドルも払いたくないんだよね。" userName="jml7c5" createdAt="2025-02-12T00:51:54" color="">}}

{{<matomeQuote body="今デスクトップでは結構太いケーブルを使わざるを得ないんだ、GPUを動かすからね。もしGPUがPCIeコネクタだけで必要な電力を吸い取れたら楽なのに。今のPCIeは12Vで75Wしか供給できないから、その同じ電流で48Vなら300Wになるんだ。" userName="mpreda" createdAt="2025-02-11T16:24:47" color="">}}

{{<matomeQuote body="48Vに電源アーキテクチャを切り替えてもPCIeスロットだけでは十分じゃないよ。12VHPWRは600Wも流れているからね。" userName="masklinn" createdAt="2025-02-11T18:14:54" color="#ff5c5c">}}

{{<matomeQuote body="カードエッジコネクタはワット数の制限があって、48Vに引き上げても100Wくらいに制限されるだろうね。" userName="anticensor" createdAt="2025-02-12T17:56:32" color="">}}

{{<matomeQuote body="俺は5090用に新しい20Aの回路を引いたよ。" userName="RetpolineDrama" createdAt="2025-02-11T19:09:10" color="">}}

{{<matomeQuote body="20Aの電源入れ口がある電源ってどれだよ？20アンペアのブレーカーは新しい建物では一般的だけど、アウトレットは15Aばっかりだし、デスクトップ電源は現状かなり少ない。" userName="Kirby64" createdAt="2025-02-11T19:29:05" color="">}}

{{<matomeQuote body="ATX電源ユニットは通常IEC 60320 C14の入れ口を持ってるけど、この規格では最大10アンペアまでしかいけないんだ。でもULは15アンペアって言ってるし、誰かが20アンペアって言うのも驚きじゃないかも。C14の入れ口をC20に替えるのは比較的簡単だけど、もちろん15アンペア以上に設計された電源ユニットに限る話だけどね。おそらく保証は無効になるけど。" userName="aaronmdjones" createdAt="2025-02-11T21:06:32" color="#ff5733">}}

{{<matomeQuote body="おお、20アンペアで120ボルトって2400ワットになるんだな。" userName="lazide" createdAt="2025-02-12T04:56:18" color="">}}

{{<matomeQuote body="サーバー用の電源は1600ワット以上のもあるし、実際に使えるけど、やらない方がいいよね。" userName="revnode" createdAt="2025-02-11T21:04:45" color="">}}

{{<matomeQuote body="Nvidiaが明らかに欠陥設計を改善せずにそのまま続けるのが不思議だ。アダプタ短いし、ケーブルの山が変わらないのに。" userName="lyu07282" createdAt="2025-02-11T07:09:17" color="">}}

{{<matomeQuote body="このコネクタ、Wikipediaにもページあるけどほとんど悪評ばかり。設計が根本的に欠陥持ってるんだ。接触抵抗に頼った設計じゃダメだろ。" userName="formerly_proven" createdAt="2025-02-11T07:30:51" color="#45d325">}}

{{<matomeQuote body="古い設計もバランス取ってたのか？各ピンの電流は監視されてただけだったような。" userName="johnwalkr" createdAt="2025-02-12T14:49:53" color="">}}

{{<matomeQuote body="コスト削減のためにやってるって思ってたけど、どうなんだろうな。本当に失敗認められない内部のプライドもあるのかも。" userName="onli" createdAt="2025-02-11T07:13:01" color="">}}

{{<matomeQuote body="AMDとIntelが使わないコネクタを持ち込むのは市場力の乱用だと思うけど、選択肢なんだから使えばいいのにな。そんな小さいコネクタじゃ冷却には問題あるし。" userName="incrudible" createdAt="2025-02-11T11:08:59" color="">}}

{{<matomeQuote body="まあ、皆そう思うよね。単なるアップデートでデザイン変わってない気もするし、新しいMicro-Fitコネクタだよ。" userName="numpad0" createdAt="2025-02-11T12:01:10" color="">}}

{{<matomeQuote body="内心のプライドで失敗を認めないのは確かに良いこともあるよね。NVIDIAはそれが必要だ。" userName="bayindirh" createdAt="2025-02-11T07:21:22" color="">}}

{{<matomeQuote body="新しいコネクタの設計はコストを下げるためのものなのか疑問だな。4090に対しても8-pinじゃ足りないって話だし。" userName="formerly_proven" createdAt="2025-02-11T07:34:32" color="">}}

{{<matomeQuote body="4090には3つのコネクタじゃ足りないし5090にはもっと必要だよね。PCIeの電源コネクタは150Wしか引けないから、4090と5090には4つ必要だね。だから新しい規格を作るのは理にかなってる。新しいコネクタが出ることで1本のケーブルでGPUに接続できるといいけど、PCが燃えてもコミュニティから責められるかもね。redditでは『サードパーティのコネクタ使ったのが悪い』って議論されてたよ。" userName="lyu07282" createdAt="2025-02-11T12:20:50" color="#ff33a1">}}

{{<matomeQuote body="EPSはPCIeとほとんど同じだけど、少しキーが違って300W扱えるんだ。CPUやデータセンターのGPU用に使われてるけど、なんでもっと必要な時にPCIe規格に取って代わられなかったのか不思議だよ。" userName="slavik81" createdAt="2025-02-11T17:21:45" color="">}}

{{<matomeQuote body="昔のMini-Fitは10A/pinで、8ピンだと理論上480Wいける。でも、既存のPSUはその電流に耐えられないから、接続の互換性をわざと壊してるんだ。安全マージンを考えたら、実際にはただ2本のPCIe 8ピンで960Wまで供給できるのにね。" userName="numpad0" createdAt="2025-02-11T15:42:33" color="">}}

{{<matomeQuote body="4桁のMSRPを抑えるためだね。もう少しお金を使ってもいいと思うけど。" userName="rcarmo" createdAt="2025-02-11T07:30:29" color="">}}

{{<matomeQuote body="AMDやIntelが使ってない新しいPSUコネクタを導入することで市場の力を悪用して互換性を制限してる気がする。でも、AMDやIntelがアダプターケーブルを同梱することで解決できるかも。" userName="beeflet" createdAt="2025-02-11T21:14:19" color="">}}

{{<matomeQuote body="コネクタはPCI仕様で、Nvidiaだけのものじゃないよ。ただ最初にそれを使ったのがNvidiaなだけ。" userName="fredoralive" createdAt="2025-02-11T08:47:08" color="">}}

{{<matomeQuote body="それは違うと思う。Nvidiaが最初にそのコネクタを使って、その後に似たようなPCI仕様が出てきたんだ。互換性は限られてるよ。" userName="onli" createdAt="2025-02-11T09:10:58" color="">}}

{{<matomeQuote body="30シリーズの変なケースは忘れてたけど、40/50シリーズのはPCI仕様コネクタだよ。" userName="fredoralive" createdAt="2025-02-11T09:52:27" color="">}}

{{<matomeQuote body="PCI仕様のコネクタって言っても、それがNvidiaのものでないとは言えないよ。現時点でこのコネクタの他のユーザーが全然いないから、Nvidiaがこれを通させた可能性が高いと思う。PCI仕様のコンソーシアムを納得させるのはNvidiaには簡単なことだったんじゃないかな。" userName="kllrnohj" createdAt="2025-02-11T16:58:13" color="">}}

{{<matomeQuote body="1枚のビデオカードに4つもコネクタが入るのは見た目が変だろうな。" userName="NekkoDroid" createdAt="2025-02-11T12:29:22" color="">}}

{{<matomeQuote body="いやマジで、この接続部分クソじゃね？2025年のPCパーツの接続が全部クソすぎてストレス溜まるわ。ソフトウェアだけの人間だから、ハードウェアのエンジニアから話聞きたいけど、どうしてこんなに組み立てやすくできないんだろう。数百ドルも払ってるのにこの接続の質が悪くなる一方だし、マザボやGPUのコネクタが正しく刺さってるかどうかも分からん。指も痛くなるし、パネルのピンにも届かないし、結局どれを優先して組み立てても他の部分にアクセスできなくなる。もっと簡単にできるようにデザインし直すべきだと思う。" userName="BigJono" createdAt="2025-02-11T07:28:52" color="#45d325">}}

{{<matomeQuote body="接続部分は実際かなり難しいんだよ。金属のコネクタを正しく形にしてワイヤーと結合させるためにクランプする必要があるし、良いクランプツールがどれだけ高いか調べてみてよ。それに、二つのプラスチック部分が正確に合わなきゃいけなくて、簡単すぎず信頼性も高くないといけない。接続部分は熱膨張の影響でも外れないようにする必要があるし、電気的接点は広い面で接触していないといけない。" userName="mlsu" createdAt="2025-02-11T11:32:47" color="">}}

{{<matomeQuote body="次世代は24Vの電源が必要になると思うよ。48Vにしちゃった方がいいかもね。50Vがほとんどの国で低電圧安全基準内になるし。" userName="pja" createdAt="2025-02-11T14:36:00" color="">}}

{{<matomeQuote body="一般的にSELVの制限は60Vだから、PoEは54〜56Vで設計されてる。安く作れるように10%の余裕があるからね。" userName="eqvinox" createdAt="2025-02-11T18:43:19" color="">}}

{{<matomeQuote body="グラフィックカードには、チップが扱える電圧に下げるためのトランスを搭載する必要があるんじゃない？" userName="Schiendelman" createdAt="2025-02-11T14:39:43" color="">}}

{{<matomeQuote body="実際、既にそうなってるよ。ほとんどのコンポーネントが12VをGPUコアが必要とする1.3Vくらいに下げてる。" userName="dcan" createdAt="2025-02-11T14:42:50" color="#ff33a1">}}

{{<matomeQuote body="でもそれはトランスではない。コイルやチョークはガルバニックに絶縁されていないから、効率がいいんだ。48Vから0.8Vに降圧するのは、12Vからやるよりも難しいし、複数段のコンバーターを使う必要があるかも。それにはより多くのパッシブ素子が必要になる。" userName="xxs" createdAt="2025-02-11T18:23:39" color="">}}

{{<matomeQuote body="48Vから3.3Vに降圧するのはPoEでの標準的な用途だよ。12Vが中間になることが多いけどね。デューティサイクルはちょっと極端だけど、確かに多くの降圧コントローラーは0.8V出力と48〜60V入力には対応できない。" userName="eqvinox" createdAt="2025-02-11T18:49:34" color="">}}

{{<matomeQuote body="降圧の他にも、トランジェントがかなり厄介で、負荷ラインのキャリブレーションで電力消費が増えちゃうこともある。48VのFETは、低電圧仕様のものに比べてがひどいRDSonになるから、現在はそんなトランジスタを持つ単一のスマートパワーステージはない。" userName="xxs" createdAt="2025-02-12T14:59:49" color="">}}

{{<matomeQuote body="それなら相当大きくなる必要があるね。" userName="Schiendelman" createdAt="2025-02-11T14:45:14" color="">}}

{{<matomeQuote body="実際はもっと小さいかもしれないね。" userName="lazide" createdAt="2025-02-11T15:14:57" color="">}}

{{<matomeQuote body="これはこういうことじゃないよ。SMPSが2V未満の出力が必要なら、48V耐性の部品が必要になるし、コンデンサやインダクタ、ダイオードも同様。48Vだと配線のスペースも考慮しなきゃならない。" userName="SV_BubbleTime" createdAt="2025-02-11T15:42:32" color="">}}

{{<matomeQuote body="そうだね。入力で40A以上を扱う必要はないし、バスバーや入力ワイヤも大きくなる。高い電圧は問題にならないから、48V以上で大きな部品が必要になってくる。" userName="lazide" createdAt="2025-02-11T18:41:00" color="">}}

{{<matomeQuote body="最近はトランス使ってる人はいないね。VRRはミニPCみたいになってて、ファームウェアを使って効率的に動いている。" userName="deelowe" createdAt="2025-02-12T01:30:03" color="">}}

{{<matomeQuote body="それについてはあまり詳しくないけど、可変リフレッシュレートについて調べたことはあるんだ。もっと教えて！" userName="Schiendelman" createdAt="2025-02-12T13:44:28" color="">}}

{{<matomeQuote body="電圧レギュレーター。効率の小さな向上が大規模な企業にとっては重要だから、技術は進んでいるんだ。具体的な製品は分からないけど、システムレベルの原因分析する時にVRからテレメトリーを引き出すことがあるよ。" userName="deelowe" createdAt="2025-02-12T17:29:30" color="">}}

{{<matomeQuote body="ありがとう、良い指針になったよ！48Vから2-3Vに変換できるものはなさそうだね。" userName="Schiendelman" createdAt="2025-02-13T13:52:07" color="">}}

{{<matomeQuote body="コネクタ作るのは難しいんだよ。500Wなんて全然大したことないし、かなり多くの産業アプリケーションでそれを克服してるよ。" userName="readingnews" createdAt="2025-02-11T14:42:19" color="#45d325">}}

{{<matomeQuote body="一言で言うと、コストだよ。産業や自動車向けコネクタの価格を見れば、その違いが大きいことが分かる。" userName="userbinator" createdAt="2025-02-11T14:45:39" color="">}}

{{<matomeQuote body="このGPUは安くないから、$100のコネクタとケーブルでも、信頼性があって火事を起こさないなら全然問題ないよ。" userName="drdaeman" createdAt="2025-02-11T14:55:58" color="">}}

{{<matomeQuote body="安いコネクタは存在するけど、トリリオン企業に対して何を擁護したいんだろう。プレミアム価格で売るなら、品質もそれに見合ったものにすべきだよね。" userName="vollbrecht" createdAt="2025-02-11T15:01:36" color="#45d325">}}

{{<matomeQuote body="車を買ったことあるけど、nVidiaのカードより安いのもあったし、ちゃんと走ってたよ。" userName="Manozco" createdAt="2025-02-11T14:54:05" color="">}}

{{<matomeQuote body="2000ドルとか1000ドル以下の新車なんてどれ？" userName="FirmwareBurner" createdAt="2025-02-11T16:13:43" color="">}}

{{<matomeQuote body="彼らは新しい車とは言ってないよね。" userName="ziddoap" createdAt="2025-02-11T17:05:01" color="">}}

{{<matomeQuote body="その比較は全く無意味だ。古いものが新しいGPUより安くなるのは普通の話でしょ。時間が経つと物は価値が下がるし。" userName="FirmwareBurner" createdAt="2025-02-11T17:18:53" color="">}}

{{<matomeQuote body="要するに、動く車はGPUよりも安くて複雑だってことでしょ。nVidiaへの皮肉を込めた冗談だと思ったけど、真剣すぎるんじゃない？" userName="ziddoap" createdAt="2025-02-11T17:39:46" color="">}}

{{<matomeQuote body="古い車が最新技術のGPUの設計や製造より複雑なわけがない。市場の需給が価格を決めてるんだよ。" userName="FirmwareBurner" createdAt="2025-02-11T18:49:34" color="">}}

{{<matomeQuote body="古い車よりコネクタは簡単だけど、全体的に冗談を真剣に受け取るのはおかしいと思うよ。基本的な需給の話を説明してくれてありがとう。" userName="ziddoap" createdAt="2025-02-11T19:57:58" color="">}}

{{<matomeQuote body="新車のコネクタは新しいGPUのコネクタより高いよ。世界の基本的なことを理解してない人が多いから驚くと思うよ。" userName="FirmwareBurner" createdAt="2025-02-11T20:49:41" color="">}}

{{<matomeQuote body="中古品や経済的に孤立した国からの輸入品は、意味のない値段で取引されていて、カウントしなくていい。" userName="numpad0" createdAt="2025-02-11T18:58:10" color="">}}

{{<matomeQuote body="GPUの利益率がすごいから関係ないんじゃね？" userName="janalsncm" createdAt="2025-02-11T20:04:27" color="">}}

{{<matomeQuote body="500Wのコネクタがこんな問題起こすのはおかしい。2千ドルのGPUならもっと頑張れるはずだよ。" userName="broeng" createdAt="2025-02-11T14:55:36" color="">}}

{{<matomeQuote body="5090にかけてる金からコスト差し引けるだろう。" userName="Henchman21" createdAt="2025-02-11T17:53:41" color="">}}

{{<matomeQuote body="RCのリポバッテリーで使うような安いXT90コネクタを使えばいいのに。100A超えの電流を扱えるコネクタは他にもたくさんあるのに、Nvidiaのはひどい気がする。" userName="state_less" createdAt="2025-02-12T17:52:13" color="">}}

{{<matomeQuote body="Nvidiaは5090の利益がすごいから、コネクタにもう少しお金かけてもいいんじゃないか？" userName="jnwatson" createdAt="2025-02-11T15:07:48" color="">}}

{{<matomeQuote body="”コネクタに3ドルも払わない人はいない”だって。10ドルなら払うよ。" userName="ImHereToVote" createdAt="2025-02-11T14:54:55" color="">}}

{{<matomeQuote body="この話はおかしいよね。何千ドルもかけたカードのパワーコネクタにはちゃんとお金をかけたほうがいい。高級車に乗ってて安い車検には出さないだろ。" userName="Henchman21" createdAt="2025-02-11T17:55:44" color="#785bff">}}

{{<matomeQuote body="昔読んだ引用が印象に残ってる。フェラーリを買えてもメンテナンスの費用が払えるかどうかが問題だと。" userName="Modified3019" createdAt="2025-02-12T11:55:10" color="">}}

{{<matomeQuote body="最近の1200WのCorsair電源、別のコネクタのせいで取り外しが大変だった。これじゃ話にならんよ。2007年製のKingwinは使いやすくて面白かったけど、今はそんなのないのが悲しい。" userName="accrual" createdAt="2025-02-11T14:44:15" color="">}}

{{<matomeQuote body="電力電子業界にいる者として、新たなコネクタがたくさんあるのに古い方法にこだわってるのは残念。D-subコネクタならまだまだ使えると思う。" userName="Workaccount2" createdAt="2025-02-11T16:11:31" color="">}}



