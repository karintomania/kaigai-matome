+++
date = '2025-02-06T00:00:00'
draft = false
title = '地形に水をシミュレーションする方法とは？'
tags = ["シミュレーション", "ゲーム開発", "流体力学", "プロシージャル生成", "水理学"]
featureimage = 'thumbnails/cyan4.jpg'
+++

> 地形に水をシミュレーションする方法とは？

引用元：[https://news.ycombinator.com/item?id=42962508](https://news.ycombinator.com/item?id=42962508)

{{<matomeQuote body="別の流体シミュレーションの見方だね。Coding Adventureの動画を見てみて！<br>“Rendering Fluids”: https://www.youtube.com/watch?v=kOkfC5fLfgE<br>“I Tried Putting my Fluid Simulation on a Planet”: https://www.youtube.com/watch?v=8nIB7e_eds4&t=817s<br>GitHub: https://github.com/SebLague/Fluid-Sim?tab=readme-ov-file" userName="joproulx" createdAt="2025-02-06T17:36:37" color="#ff5c5c">}}

{{<matomeQuote body="二つ目の動画はほんと楽しかった！こういうハイレベルな発見の動画が大好きなんだ。" userName="all2" createdAt="2025-02-06T18:18:48" color="">}}

{{<matomeQuote body="彼の動画はどれも楽しくて、声もリラックスできる。" userName="shreddit" createdAt="2025-02-06T21:38:08" color="">}}

{{<matomeQuote body="Coding Adventure好き！Geographical Adventuresっていうゲームもあって、素敵な音楽でリラックスできるんだよ。<br>[0] https://www.youtube.com/playlist?list=PLFt_AvWsXl0dT82XMtKAT...<br>[1] https://github.com/SebLague/Geographical-Adventures" userName="anitil" createdAt="2025-02-06T23:30:23" color="#ff5c5c">}}

{{<matomeQuote body="シミュレーションされた水文学の難しさは、水が集まって近くのセルに影響を与える点だね。これが隣接セルに影響を及ぼすから、並列処理が難しくなる。<br>ただ、解決策としては、壊れない流域境界を生成すれば、全体を並列シミュレーションできるかもしれない。面白い問題だけど、まだ勉強中なので観察者って感じだね。" userName="lwansbrough" createdAt="2025-02-07T02:28:10" color="#ff5733">}}

{{<matomeQuote body="興味があったら、偏微分方程式の解法で“影響範囲”や“依存範囲”について話すことがあるよ。特定のポイントが影響を与えたり与えられたりする範囲のこと。前もって把握できることもある。" userName="kqr" createdAt="2025-02-07T11:50:09" color="#ff33a1">}}

{{<matomeQuote body="素晴らしいリソースをありがとう！" userName="lisyarus" createdAt="2025-02-07T02:32:28" color="">}}

{{<matomeQuote body="ほんと、チェックしてみて！<br>https://nickmcd.me<br>すごいよ！" userName="debone" createdAt="2025-02-07T13:41:18" color="">}}

{{<matomeQuote body="面白い問いだね。境界を持たせて、影響の広がりを最大速度で制御すればいいかも。たとえば、10ステップのシミュレーションをしたいなら、10セルの境界が必要だね。だから、各領域で10ステップ進めて、境界の状態を同期させるって感じで。" userName="Ono-Sendai" createdAt="2025-02-07T12:14:47" color="#ff5733">}}

{{<matomeQuote body="驚いたのは、Nickがまだ25歳だってこと！すごいよね。" userName="ttul" createdAt="2025-02-07T03:05:17" color="">}}

{{<matomeQuote body="水シミュレーションによる terrain generation はクールだけど、ゲーム開発の主な用途には向いてない。水シミュレーションは遅くて、ドメインを小さくするか、大きな解像度か、初期読み込みに時間がかかるかの選択が必要で、どれもゲーム開発には厳しい。" userName="NotAnOtter" createdAt="2025-02-07T17:33:00" color="">}}

{{<matomeQuote body="話はずれるけど、資源収集のための terrain manipulation が必要って言ってる。Animal Crossing は terrain manipulation なしで賢く効率的な方法を使ってると思う。木を切るとログを出すけど、少ししか収集できなくて、その後クールダウンがある。フィードバックと有限資源を得られるけど、terrain manipulation を避けられるのは良い。" userName="bodge5000" createdAt="2025-02-06T18:47:11" color="">}}

{{<matomeQuote body="ブログで言及された戦略、ゴールドオレの boulder についてだけど、資源の供給戦略としては一般的なやり方。でもクールダウンは無限資源の問題を和らげるだけで、そんなに面白くない。" userName="setr" createdAt="2025-02-06T18:58:45" color="">}}

{{<matomeQuote body="＞いっても、つまらないし影響が薄い。<br>安上がりで簡単な方法でもあるよね。ゲーム開発には限られた資源があるし、特にパフォーマンスを気にすると、パワフルなマシン以外ではさらに厳しい。だからその資源はゲームをユニークで楽しくすることに使うべきだと思ってる。" userName="bodge5000" createdAt="2025-02-09T14:01:46" color="">}}

{{<matomeQuote body="資源獲得の行為が実際にゲームプレイに意味がないなら、思い切ってなくした方がいい。資源ノードとして扱って、一定時間ごとに資源を自動で与えるのが一番安上がりで簡単な戦略。Animal Crossing みたいに時間をつぶすゲームには合わないけど、今回のゲームにおいては意味が不明。" userName="setr" createdAt="2025-02-12T08:31:43" color="#ff33a1">}}

{{<matomeQuote body="この話題の深堀りは良かったし、Timberborn に触れてくれて感謝！今、このゲームに夢中で、まだチェックしていない人には大推薦。水の物理学がゲームの別のキャラクターみたいになってて、たくさんの水をダムにしてエンジンや畑に使うのが重要な部分なんだ。" userName="TheGRS" createdAt="2025-02-06T20:31:07" color="#45d325">}}

{{<matomeQuote body="これは楽しかったし、本当にうまく実行されてた。これを開発する時の最大のリスクは、きれいな結果を見ながらパラメータを調整するのに時間を無駄にすること。2011年に自分のGPUを使った流体力学を実装した時の思い出がよみがえった。2Dで表面に血液をシミュレートしたのもあった。YouTubeにも短い動画を載せたよ。" userName="Agentlien" createdAt="2025-02-07T09:10:01" color="#ff33a1">}}

{{<matomeQuote body="すっごくクールなアイデアだね！最近、o3-mini-highを使って似たようなアイデアを実験してた。アルゴリズムのアイデアを話して実装させて、手動で干渉せずに3Dでレンダリングしたよ。完全ではなかったけど、改善が見られた。素敵な事実は、Perlinノイズを正しく実装したこと！" userName="elliotbnvl" createdAt="2025-02-06T19:05:21" color="#ff33a1">}}

{{<matomeQuote body="興味あるんだけど、これらのエクササイズは楽しいため？それとも学びのため？後者の場合、まだ何も実装してないのにこのスレッドのブログ読んでも価値があると思う？目的と旅の質問だよね。" userName="fingerlocks" createdAt="2025-02-07T01:41:29" color="">}}

{{<matomeQuote body="両方だよ！でも今はエンターテインメントがメインで、ほとんどのことは作り方がわかるから、最終的な製品とアイディアの迅速な実現が重要。プログラミングに対する楽しさは、自分の作るもので感じるようになって、AIがツールの一つとして使えるようになったからもっと能力を感じる。" userName="elliotbnvl" createdAt="2025-02-07T06:24:36" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="このモデルは完璧じゃないんだよね。最も分かりやすい問題の一つは、慣性や速度の拡散がないこと。速い水流が湖に入っても、湖の奥には進まず、全方向に広がっちゃう。逆方向に流れる二つの水流も存在し、お互いに干渉しないんだ。流れの矢印を6つの近隣矢印と平均する方法があると思う。重みを工夫して、前後の矢印を重視する形で。" userName="gus_massa" createdAt="2025-02-07T03:19:42" color="#ff5733">}}

{{<matomeQuote body="適切な解決策は、第二導関数用にもう一つのグリッドを追加することだと思う。グリッド0が水位、グリッド1が水の流れ、グリッド2が水の加速度。各グリッドが前のグリッドの二重構造で、導関数を保存するという感じ。流れを良くするためにも、流入した質量に基づいて加速度を更新する方法が必要なんじゃないかな。" userName="Asooka" createdAt="2025-02-07T12:11:53" color="#ff5c5c">}}

{{<matomeQuote body="それは運動量の保存に反するよ。リアルな流れを得るには、連続体の方程式を使って流れのエネルギーを保たないと。多くの計算が必要になってくるけど、本当にそのレベルのリアリティが必要か考えるべきかな。" userName="chabska" createdAt="2025-02-07T09:26:11" color="">}}

{{<matomeQuote body="最初の更新式（ダンピング係数なし）は、オリジナルのモデルと同じくらい運動量を保つよ。エネルギー保存は崩れるけど、逆方向の流れの摩擦をシミュレートできる。リアルじゃないけど、モデルにいい追加の簡単なアイデアだと思う。係数を調整すれば視覚的に良い結果が得られるかも。" userName="gus_massa" createdAt="2025-02-07T14:05:11" color="">}}

{{<matomeQuote body="数年前に気になったことの粗いまとめだよ。リンクはここね：https://aperocky.com/hydrosim/。このプロジェクトが私のストレージの冷ややかな棚に移動する前に浸食を理解できなかった。著者が言及していたり方程式がついているのがよかったな。" userName="Aperocky" createdAt="2025-02-06T23:17:06" color="">}}

{{<matomeQuote body="最近、ランダムな地形生成や堆積物輸送、浸食のシミュレーションをしたのをリリースしたよ。リンクはこれね：https://github.com/Ono-Sendai/terraingen。" userName="Ono-Sendai" createdAt="2025-02-07T02:11:48" color="">}}

{{<matomeQuote body="すごいですね！" userName="lisyarus" createdAt="2025-02-07T02:23:26" color="">}}

{{<matomeQuote body="ありがとう！" userName="Ono-Sendai" createdAt="2025-02-07T07:40:46" color="">}}

{{<matomeQuote body="うちの会社の偉大な開発者が作った教育的な洪水シミュレーションが遊べるよ（私じゃないけど）。リンクはここね：https://flood.concord.org/。モデルの値を変更しないと大きな効果は見えないから注意してね。" userName="dugmartin" createdAt="2025-02-07T10:34:29" color="#ff5733">}}

{{<matomeQuote body="水をシミュレートしてから、その中に爆弾を投げ込むのはどう？それはCreeper Worldだよ。リンクはこれね：https://www.youtube.com/watch?v=XCyPT2e95zY&t=420s。" userName="NnnomNom43" createdAt="2025-02-07T04:33:29" color="">}}

{{<matomeQuote body="水の粘性のところ、すごく参考になった！数年前にオープンソースのRTSゲームエンジンで似たようなことを実装したことがあるんだ。テスト動画もあるよ： https://www.youtube.com/watch?v=cQW8WXNpYXk でも、粘性がないと水が広がりすぎて、浮動小数点のせいで平らな面でも広がって蒸発しちゃってたんだよね。波を綺麗に出すためのグリッド解像度も大変だった。もっとスレッドを使う必要があったかもしれない。" userName="vladms" createdAt="2025-02-06T22:10:29" color="#ff33a1">}}

{{<matomeQuote body="いいね！動画見た感じ、階層的な細分化もやってるの？" userName="lisyarus" createdAt="2025-02-06T22:19:17" color="">}}

{{<matomeQuote body="階層的細分化はレンダリングの段階でしかやってないよ。ポリゴンの数を減らすためだけど、もっといいレンダリングが必要だと思ってる。水のレベルが動的であっても、他のゲーム部分が大丈夫か気になったんだ。ユニットは大丈夫そうだけど、パフォーマンスがイマイチだったから、コードは磨けてないんだよね。" userName="vladms" createdAt="2025-02-08T00:36:31" color="">}}

{{<matomeQuote body="ゲーム開発者って、ほんと次元が違うね。" userName="h1fra" createdAt="2025-02-06T17:37:09" color="">}}

{{<matomeQuote body="こういうの見ると、俺なんてCRUDの猿だなって思う。" userName="ikety" createdAt="2025-02-06T18:04:53" color="">}}

{{<matomeQuote body="自分のCRUDに水シミュレーション追加してみたら？" userName="all2" createdAt="2025-02-06T18:19:07" color="">}}

{{<matomeQuote body="このボタンでブログ記事を編集できて、こっちのボタンで保存して、そしてこのボタンでは水を流せるんだよ。" userName="m12k" createdAt="2025-02-06T18:32:37" color="">}}

{{<matomeQuote body="そしてこのボタンで、ブログをDoomマップに変えられるんだ。" userName="magicalhippo" createdAt="2025-02-06T18:37:32" color="">}}

{{<matomeQuote body="セルの端に値を保存すると、計算が楽になるけど、GPUでの実装が難しくなるんだよね。この設定だと、エッジの更新が2つのセルに影響するから、セルが独立してなくなる。並列更新は可能だけどチェッカーボードのように更新を分ける必要があるんだ。" userName="pornel" createdAt="2025-02-06T19:43:40" color="#38d3d3">}}

{{<matomeQuote body="一般的にGPU側では複雑だけど、特にこのシナリオではうまくいってるよ。流れと水深のバッファ間での更新があるから、同じカーネルで両方を変更することはないんだ。" userName="lisyarus" createdAt="2025-02-06T19:54:33" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="なるほど、これでMinecraftの水のエフェクトがちょっと不自然なのも納得だね。そんなに簡単じゃないんだ。" userName="FrustratedMonky" createdAt="2025-02-06T17:29:09" color="#785bff">}}

{{<matomeQuote body="Minecraftの水と溶岩は最初は単純なフラッドフィルだったんだ。マップの最大高（64）で水源を掘ると、死の壁が広がって世界中が浸水しちゃうこともあった。" userName="AlotOfReading" createdAt="2025-02-06T18:42:24" color="#785bff">}}

{{<matomeQuote body="面白い視点だね。たとえ大企業のMicrosoftでも、こういうことってやっぱり大変なんだなって感じる。" userName="adrianpluis" createdAt="2025-02-06T18:26:47" color="">}}

{{<matomeQuote body="水が初めて入ってくる時の波は数値的拡散って呼ばれる現象で、離散化の結果なんだ。水の壁の急激な変化を滑らかにすることで、ある程度は緩和できるんだよ。" userName="matheist" createdAt="2025-02-06T19:13:24" color="#ff33a1">}}

{{<matomeQuote body="いや、実際の波は衝撃波で、浅水方程式のリーマン問題の解なんだ。数値的なグリッドや離散化を導入する前から見られるよ。たとえばLevequeによる古典的な解説を見てみてね：" userName="semi-extrinsic" createdAt="2025-02-06T20:09:25" color="#45d325">}}

{{<matomeQuote body="面白い、僕の勘違いだった！音響に詳しくて同じ現象かと思ったけど、間違った結論に飛びついてしまったみたい。" userName="matheist" createdAt="2025-02-06T21:31:44" color="">}}

{{<matomeQuote body="このコメントには100％同意するよ。解が進化するにつれてエネルギーが成分周波数に分かれていくのが明確にわかる。異なる周波数は異なる速さで伝播するからね。断続的な変化を滑らかにすれば、高周波成分が減って極端な影響が出にくくなると思うよ。浅水方程式では記憶している限りでは一つの衝撃波モードしか許可されてないから、解が進化するにつれて衝撃が増える理由を説明するには不十分だね。" userName="Clor" createdAt="2025-02-07T08:55:22" color="#ff5c5c">}}

{{<matomeQuote body="面白いね、ありがとう！これはギブス現象みたいなもの？" userName="lisyarus" createdAt="2025-02-06T19:17:37" color="">}}

{{<matomeQuote body="他の返事を見てみて、実際には拡散ではないって言ってるよ。僕の勘違い！" userName="matheist" createdAt="2025-02-06T21:58:33" color="">}}

{{<matomeQuote body="うん、見たよ、心配しないで！" userName="lisyarus" createdAt="2025-02-07T02:23:14" color="">}}

{{<matomeQuote body="著者が実装したのはSaint Venantの浅水方程式の一部だよ。" userName="wiz21c" createdAt="2025-02-07T08:49:53" color="#45d325">}}

{{<matomeQuote body="そうそう、記事にも書いてあるね。" userName="lisyarus" createdAt="2025-02-07T09:13:06" color="">}}

{{<matomeQuote body="そのアナロジーいいね、ルールは行動が流れるパイプみたい。" userName="tithe" createdAt="2025-02-07T14:48:12" color="">}}

{{<matomeQuote body="著者はPopulousとかPowermonger、Realmsみたいなのが好きかもね。" userName="esafak" createdAt="2025-02-07T01:58:42" color="">}}

{{<matomeQuote body="うん、その言葉を信用するよ。" userName="jordanmorgan10" createdAt="2025-02-07T04:23:20" color="">}}

{{<matomeQuote body="シミュレーションが見た目だけでなく、物理的に正確でないとがっかりする。" userName="amelius" createdAt="2025-02-06T23:29:28" color="">}}

{{<matomeQuote body="ゲームやデモに興味があるから、見た目がリアルタイムでプラウスに見える方法を探してる。計算の精度は全然重要じゃないよ。" userName="Voltage" createdAt="2025-02-07T02:05:45" color="#ff5733">}}

{{<matomeQuote body="そんなに複雑じゃないよ、ただスプラインを再調整すればいいだけさ。" userName="hgomersall" createdAt="2025-02-06T20:27:35" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
