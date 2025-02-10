+++
date = '2025-02-09T00:00:00'
draft = true
title = 'シェーダーの条件分岐を最適化するな！mix()とstep()の罠とは？'
tags = ["シェーダー", "プログラミング", "ゲーム開発", "パフォーマンス最適化", "グラフィックス", "GPU", "テクニカルアーティスト", "開発者向け", "コンピュータグラフィックス", "最適化"]
+++

> シェーダーの条件分岐を最適化するな！mix()とstep()の罠とは？

引用元：[https://news.ycombinator.com/item?id=42990324](https://news.ycombinator.com/item?id=42990324)

{{<matomeQuote body="TFAの結論は正しいと思うけど、両方のコード生成を見せてほしい。なぜなら、良いバージョンだけ見せても悪いバージョンが本当に遅いのかは証明できないから。" userName="quuxplusone" createdAt="2025-02-09T14:14:30" color="#785bff">}}

{{<matomeQuote body="主なポイントは、条件が実際にはブランチを導入してないってこと。別の生成バージョンを見せても長くなるだけだし、ブランチは期待されてない。" userName="azeemba" createdAt="2025-02-09T14:45:23" color="">}}

{{<matomeQuote body="コンパイラがstep()を条件バージョンと同じコードに最適化できる可能性もある。そうなればstep()版は無駄な計算をしてないことになる。" userName="comex" createdAt="2025-02-09T21:58:41" color="">}}

{{<matomeQuote body="最悪のコードが同じ結果に最適化されても、見た目が悪いし利益がないんじゃないか。IEEE754準拠のために余分な浮動小数点演算は保存する必要があるから、最適化はされにくいと思う。" userName="MindSpunk" createdAt="2025-02-10T01:10:40" color="">}}

{{<matomeQuote body="フラグメントとバーテックスシェイダーはデフォルトで厳密なIEEE754準拠を目指してない。コンパイラが演算を変換することは期待できる。" userName="account42" createdAt="2025-02-10T09:11:44" color="">}}

{{<matomeQuote body="..同じ結果ならなんで悪いの？" userName="burnished" createdAt="2025-02-10T02:46:18" color="">}}

{{<matomeQuote body="誤解を広げて、読みにくくなるから。" userName="dcrazy" createdAt="2025-02-10T02:50:21" color="">}}

{{<matomeQuote body="自分が正しい理由のエッセイを書く場合を除いて…" userName="idunnoman1222" createdAt="2025-02-09T15:33:18" color="">}}

{{<matomeQuote body="> 自分が正しい理由のエッセイを書く場合を除いて…彼は間違いを証明するエッセイを書いてる。彼のブランチなしコードサンプルは十分だよ。" userName="chrisjj" createdAt="2025-02-09T16:22:30" color="">}}

{{<matomeQuote body="もう一方が同じように最適化されるか、余計な乗算が加わっていて、確実に見にくい。" userName="ncruces" createdAt="2025-02-09T16:30:22" color="">}}

{{<matomeQuote body="正しいね。それは証拠を示すことになる。読者に信じ込ませるのは良くない。" userName="TheRealPomax" createdAt="2025-02-09T18:12:54" color="">}}

{{<matomeQuote body="記事で「元のバージョンよりも実際に遅くなる」とか「2つの乗算と1つか2つの加算を無駄にしている」と言ってる。この情報は不正確な印象を与える。" userName="Lockal" createdAt="2025-02-09T23:17:25" color="#785bff">}}

{{<matomeQuote body="パフォーマンスについては測定してから考えた方がいいよ。" userName="account42" createdAt="2025-02-10T09:22:11" color="">}}

{{<matomeQuote body="条件分岐が実際にブランチになるかどうか気になるよね。いろいろ面倒で、ブランチにならないようにmix/lerp使ったりするけど、if文がブランチになるかならないかが分かりにくいのが良くない。ブランチと非ブランチを別のキーワードにしてほしい。" userName="alkonaut" createdAt="2025-02-09T14:56:31" color="">}}

{{<matomeQuote body="mix/lerp使う理由がNVidiaのドキュメントのせいなんだよ。GPUのスレッド数ばかりアピールして、実行モデルを隠してた。これで開発者は変な迷信を持つことになってる。ブランチは使った方がいいけど、SIMDだとブランチできないし、両方の道のコードが実行されちゃう。" userName="pandaman" createdAt="2025-02-09T18:41:46" color="">}}

{{<matomeQuote body="条件が全て同じなら、実際にブランチできるかも。ただし、生き残ってる作業グループ内でね。場合によっては、特別なケースの早いブランチを使うこともできる。" userName="account42" createdAt="2025-02-10T09:26:29" color="">}}

{{<matomeQuote body="だから、一般的には条件が真も偽も計算されるって言ったじゃん。" userName="pandaman" createdAt="2025-02-10T12:18:52" color="">}}

{{<matomeQuote body="マスキングを使った実行がGPUのブランチ処理みたいなもん。条件文は追加命令や実行状態の管理でオーバーヘッドが増えるから、条件付き移動で小さなブランチをなくすのがパフォーマンス向上になることもある。" userName="ribit" createdAt="2025-02-11T14:45:33" color="">}}

{{<matomeQuote body="GPUでもブランチは普通に動くんだよ。ただし、ベクトルの要素が全部同じじゃないとブランチできないから、ベクトルブランチはあんまり良くない。条件付き移動はどっちのブランチも評価しちゃうし、最長の計算時間で済むように整理した方がいい。" userName="pandaman" createdAt="2025-02-12T00:34:29" color="">}}

{{<matomeQuote body="コンパイラのアセンブリ出力を確認することも可能だと思うけど、実際にやる人は少ないんじゃないかな。" userName="ryao" createdAt="2025-02-09T23:46:09" color="">}}

{{<matomeQuote body="シェーダーにも当てはまるの？ハードウェアによって能力が違うから有用かは疑問。ただし特定のハードを狙わない限りJITコンパイルの印象がある。" userName="vanderZwan" createdAt="2025-02-10T08:29:58" color="">}}

{{<matomeQuote body="たしかに、特定のドライバーやGPUに基づくJITだが、中間アセンブリ言語を見ればブランチやループ展開を確認できる。" userName="swiftcoder" createdAt="2025-02-10T09:25:55" color="">}}

{{<matomeQuote body="DXILはブランチがあるからあんまり展開は気にしない。生成されたアセンブリを見る必要があるし、ターゲットハードやコンパイラ、ドライバーに依存する。" userName="grg0" createdAt="2025-02-11T03:22:52" color="">}}

{{<matomeQuote body="ターゲットするGPUによってチェックが必要。でも、GPUベンダーは毎回ゼロから始めるわけじゃないから、似たような結果はよく見られる。" userName="account42" createdAt="2025-02-10T09:32:19" color="">}}

{{<matomeQuote body="これは学術的な問題かもね。ピクセルレベルのif文のstepを使うと、色の遷移でエイリアスが出ちゃうから使わない方がいい。smoothstepを使うといい具合にブレンドできるし、両方の経路を計算する必要がある。" userName="torginus" createdAt="2025-02-10T19:20:25" color="">}}

{{<matomeQuote body="step()を使わないなんて言ってるのはおかしいよ。ピクセルに関係ないシェーダーもいろいろあるんだから。" userName="pandaman" createdAt="2025-02-11T00:03:10" color="">}}

{{<matomeQuote body="ピクセルシェーダーにおいて、ピクセルごとに異なるデータを扱う場合、if文なしでの処理はエイリアスを引き起こすことがある。これは明らかに目立つ可能性が高い。" userName="torginus" createdAt="2025-02-11T08:58:27" color="#38d3d3">}}

{{<matomeQuote body="基本のシェーダーでも値を0にクランプするのは一般的だし、エイリアスを引き起こすことはない。逆に、負のドット積は変なアーティファクトを生む。" userName="pandaman" createdAt="2025-02-11T12:37:03" color="">}}

{{<matomeQuote body="クランプについては誰も言ってないし、エイリアスを引き起こすこともない。ここで言ってるのはシェーダーのエイリアスで、MSAAはジオメトリのエイリアスだけ。例を挙げると、悪い例ではエッジがジャギーになる。" userName="torginus" createdAt="2025-02-11T14:31:26" color="#45d325">}}

{{<matomeQuote body="確かに、ifがブランチになることもあればならないこともあるのは心配だが、スカラーCPUでも同じ。ブランチはどこでもコストが高い。" userName="ajross" createdAt="2025-02-09T15:51:48" color="">}}

{{<matomeQuote body="古典的にx86のCMOVは遅かったが、信頼性の高いブランチではブランチの方が早かった。CMOVも入力の依存関係があるから負担が増えることも。" userName="masklinn" createdAt="2025-02-09T17:58:06" color="">}}

{{<matomeQuote body="GPUでは条件付き移動がデフォルトで、本物のブランチはワークグループ全体で同じ側を取ったときのパフォーマンス最適化に過ぎない。" userName="account42" createdAt="2025-02-10T09:49:52" color="">}}

{{<matomeQuote body="計算の重い関数f()とg()どちらを実行するかはコンパイラに任せるべきで、シンプルな選択ではない。" userName="mpreda" createdAt="2025-02-09T18:12:10" color="">}}

{{<matomeQuote body="GPU特有の記事で、fとgはほぼ常に実行される。全体が均一な場合は条件文で分岐するようにコーディングが必要。" userName="dragontamer" createdAt="2025-02-09T19:40:36" color="">}}

{{<matomeQuote body="コードフローが均一なら、ブランチの片側だけ評価すればいい。しかし、コンパイラが均一だと分からない場合、レジスタの割り当てが悪くなることもある。" userName="justsid" createdAt="2025-02-09T21:19:01" color="">}}

{{<matomeQuote body="fやgに副作用があると、条件によって意味が変わる。短絡評価のせいで&&や||も条件文みたいなもんだ。" userName="danybittel" createdAt="2025-02-10T05:09:03" color="">}}

{{<matomeQuote body="副作用は隠蔽されるが、GPUはワークグループ全体で同じコードを実行してる。" userName="account42" createdAt="2025-02-10T09:38:12" color="">}}

{{<matomeQuote body="生成されたアセンブリを見るのが一番正確。ベンダーによって結果は異なるが、最適化の結果を直接確認できる。" userName="grg0" createdAt="2025-02-11T03:19:33" color="#38d3d3">}}

{{<matomeQuote body="シェーダー言語でブランチしない機能があれば面白いかも。非ブランチングとしっかりアノテーションできるように。" userName="plagiarist" createdAt="2025-02-09T16:34:43" color="">}}

{{<matomeQuote body="暗号用途では、ブランチが潜在的なサイドチャネルになり得るのは重要。" userName="catlifeonmars" createdAt="2025-02-09T17:36:49" color="">}}

{{<matomeQuote body="記事にある通り、アセンブリをチェックするのが一番。" userName="mwkaufma" createdAt="2025-02-09T19:44:54" color="">}}

{{<matomeQuote body="コードを検査するのが良いよね :) でも、ifの構文が時々ブランチになったり、ならなかったりするのはちょっと心配かも。逆に、ブランチが一つのGPUでは出て、別のGPUでは出ないかもしれないから、そこは心配しすぎる必要はないかも。" userName="chrisjj" createdAt="2025-02-09T16:30:20" color="">}}

{{<matomeQuote body="コードを見て評価するより、プロファイリングするのが一番だね。最終的に求めているのは時間だから、測定が重要だよ。" userName="phkahler" createdAt="2025-02-09T17:51:34" color="">}}

{{<matomeQuote body="godboltにRGAコンパイラーがあるから、hlslペーストして実際に生成されるrdna命令を見るのがいいよ。" userName="nice_byte" createdAt="2025-02-09T16:50:46" color="">}}

{{<matomeQuote body="シェーダーコードに少しのブランチがあっても気にする必要はない。現代のGPUはその辺うまく処理できるし、コンパイラーもそれなりに速い判断をしてくれる。" userName="NohatCoder" createdAt="2025-02-09T20:12:37" color="">}}

{{<matomeQuote body="大きな非一様ブランチには気をつけろ。一般的には、GPUは両側を実行する必要があるから。" userName="account42" createdAt="2025-02-10T09:42:45" color="">}}

{{<matomeQuote body="同じアルゴリズムの非ブランチ版は、両方のブランチに相当するコードを実行することになる。ブランチ版は時々一つのブランチをスキップできるが、非ブランチ版はそうはできない。だから、ブランチを使った方が良ければ、使った方がいい。" userName="NohatCoder" createdAt="2025-02-10T16:51:50" color="">}}

{{<matomeQuote body="「ブランチはGPUで遅い」っていう神話の多くは、PS3の頃に遡る。NVIDIAのRSX GPUはその時期、実際は六サイクルかかってたと記憶してる。今はGPUのブランチは結構安いよ。" userName="nosferalatu123" createdAt="2025-02-10T04:19:18" color="#38d3d3">}}

{{<matomeQuote body="ブランチについて何も言わずに語るなら、非一様だと思わざるを得ない。ブランチのメカニズムは今は低コストですが、基本的にはスループットはアクティブなスレッドの割合に左右される。両側が同じ命令長なら、平均パフォーマンスは半分になることもある。" userName="dahart" createdAt="2025-02-10T15:54:19" color="">}}

{{<matomeQuote body="コヒーレントブランチは「無料」だけど、追加の命令がレジスタプレッシャーを増やす。それがダイナミックブランチを避ける主な理由で、彼らが本質的に「遅い」わけじゃない。" userName="nice_byte" createdAt="2025-02-10T07:01:15" color="">}}

{{<matomeQuote body="かつてはブランチ回避の最適化が効果的だったが、今はあまりしない方がいい。他の整数操作でも昔はフロートでエミュレートしてたけど、今は全GPUが速い整数操作を持ってる。" userName="aappleby" createdAt="2025-02-09T17:13:05" color="">}}

{{<matomeQuote body="全GPUが速い整数操作を持ってるって本当なの？RDNA2のISAを見ると、32ビットスカラー命令しかないんだが。" userName="Agentlien" createdAt="2025-02-09T17:34:37" color="">}}

{{<matomeQuote body="64ビット演算はGPUでは難しいと思うよ。NVIDIAでは支援するのが32ビット加算だけ。でも、32ビット整数操作のために53ビットの倍精度演算を使うこともできるらしい。" userName="LegionMammal978" createdAt="2025-02-09T19:34:13" color="">}}

{{<matomeQuote body="NVIDIAのGPU向けのPTX ISAは64ビット整数演算をサポートしてる。64ビットアドレス計算を効率的に処理するためにはそれが必要だから。" userName="ryao" createdAt="2025-02-10T00:00:36" color="">}}

{{<matomeQuote body="SASSは今、64ビット整数命令をサポートしてるが、古いバージョンは32ビット命令をチェインする形でエミュレートしている。真の64ビットサポートが必要なら、5070を手に入れるのが大変だよ。" userName="LegionMammal978" createdAt="2025-02-10T02:19:20" color="">}}

{{<matomeQuote body="32-bitよりもスカラ命令しかないのが問題だよね。ユニフォームには使えるけど、スレッド特有のデータには使えない感じ。" userName="Agentlien" createdAt="2025-02-09T20:12:38" color="">}}

{{<matomeQuote body="ワープ内の全スレッドが同じ命令を実行するのが基本だけど、個別にSIMD命令が使えるのは稀だね。NvidiaのPTX文書を参考にしているけど、AMD RDNAはあまり詳しく見てない。" userName="ryao" createdAt="2025-02-10T00:03:02" color="">}}

{{<matomeQuote body="RDNA2の話だけど、スカラ命令はスレッドグループで1回しか実行されないからSIMDじゃない。ベクタ命令は全スレッドで動作するのが一般的。" userName="Agentlien" createdAt="2025-02-10T07:09:27" color="">}}

{{<matomeQuote body="RDNA2とRDNA3には多くの32-bit整数ベクタ命令があるみたい。ただし整数の割り算は浮動小数点命令でエミュレートされるとのこと。" userName="LegionMammal978" createdAt="2025-02-10T13:32:41" color="">}}

{{<matomeQuote body="最近は大きなGPUではあまり問題じゃなくなったけど、記事の話はブランチを避けることについてじゃないよ。提示されたコードはすでにブランチレス。" userName="qwery" createdAt="2025-02-10T01:23:29" color="">}}

{{<matomeQuote body="GPUのブランチに関するこの記事も参考になるよ。ブランチを避けるアドバイスは古くて間違ってることも多いみたい。" userName="layer8" createdAt="2025-02-09T16:29:32" color="">}}

{{<matomeQuote body="プロセッサやコンパイラは変わるから、最速のバージョンを出してランタイムで選ぶのがいいかも。手動アセンブリをやめて高級言語にしたらパフォーマンスが上がったこともある。" userName="magicalhippo" createdAt="2025-02-09T13:59:37" color="">}}

{{<matomeQuote body="ランタイムでのシェーダーの最適なバージョンを見つけるのは難しいと思う。ゲームのダイナミックさや色々な組み合わせがあるから、試すのが大変そう。" userName="Amadiro" createdAt="2025-02-09T16:25:09" color="">}}

{{<matomeQuote body="以前、CPU用のリニア代数コードのためにハードウェアごとのスウィープを考えたことがある。パラメータを調整して最適解を見つけられるよ。" userName="hansvm" createdAt="2025-02-09T20:01:14" color="">}}

{{<matomeQuote body="最悪・中央値のケースだけテストすればいい感じ。プロファイリングで見つけられるし。" userName="ijustlovemath" createdAt="2025-02-10T13:11:36" color="">}}

{{<matomeQuote body="NVIDIAドライバはゲームのシェーダーをキャッチして、最適化されたカスタムシェーダーに置き換えることもあるから、実際の効率化がある。" userName="dist-epoch" createdAt="2025-02-09T14:07:40" color="">}}

{{<matomeQuote body="私はNVIDIA側じゃないけど、シェーダーの置き換えはパフォーマンス向上の一部だと思う。本当に行うことは稀だね。" userName="Cieric" createdAt="2025-02-09T15:31:43" color="">}}

{{<matomeQuote body="ダブル精度に強制的に変更すると、単精度に依存するコードが壊れちゃうよ。" userName="chrisjj" createdAt="2025-02-09T16:36:14" color="">}}

{{<matomeQuote body="そのケースでは設定を適用しないよ。大体の変更はテスト済みだけど、こういう調整は壊れたシェーダー用に使うことが多い。" userName="Cieric" createdAt="2025-02-10T00:43:18" color="">}}

{{<matomeQuote body="見つけた場合に限るけど、そのケースって結構大変だよね。ゲームを最後までプレイする余裕がないこともあるし。" userName="chrisjj" createdAt="2025-02-11T21:43:00" color="">}}

{{<matomeQuote body="大体そうだね。問題が起きたことはないけど、そうなった可能性も否定できないから確かに意見は言えないよ。うちには良いQAチームがいて、広く出回る前にバグを見つけるオープンベータプログラムもあるし。" userName="Cieric" createdAt="2025-02-13T15:50:25" color="">}}

{{<matomeQuote body="自分のゲームがカードXで動かないのは嫌だな。ドライバーが浮動小数点型をねじ曲げるのも困るし。" userName="chrisjj" createdAt="2025-02-13T18:59:55" color="">}}

{{<matomeQuote body="そりゃ、適切なテスト無しにそんなことするわけにはいかないよ。" userName="david-gpu" createdAt="2025-02-09T19:35:16" color="">}}

{{<matomeQuote body="精度を壊すプラットフォームでのテストは適切じゃないね。" userName="chrisjj" createdAt="2025-02-10T00:16:18" color="">}}

{{<matomeQuote body="特定の低精度に依存するコードはとても脆弱そうだから、リリースまでいかないだろうね。" userName="Dylan16807" createdAt="2025-02-09T23:18:14" color="">}}

{{<matomeQuote body="「脆弱なシェーダーコードはリリースまでいかない」は強気な主張だね。Nvidiaのドライバーと合ってれば、出荷されるでしょ。" userName="account42" createdAt="2025-02-10T10:09:18" color="">}}

{{<matomeQuote body="違いがあればコードが壊れる前提であれば、異なるデバイスで全く同じように動くの？それが疑わしいな。" userName="Dylan16807" createdAt="2025-02-10T17:24:05" color="">}}

{{<matomeQuote body="顧客向けのバグの半分が”Nvidiaで動く。”で、結局ドライバーの問題じゃないことが多い。Nvidiaは仕様を無視できるから、開発者がバグを見逃しがち。" userName="Cieric" createdAt="2025-02-10T18:39:36" color="#45d325">}}

{{<matomeQuote body="浮動小数点計算はIEEE規格に準拠してないと言ったけど、最適化のせいで保証されてないって言い直すわ。" userName="Cieric" createdAt="2025-02-11T16:27:17" color="">}}

{{<matomeQuote body="ゲーム開発者がもう更新できなかったから、ドライバー側で直さざるを得なかった。" userName="chrisjj" createdAt="2025-02-11T21:48:13" color="">}}

{{<matomeQuote body="そう言われたから修正せざるを得なかったんだ。ライセンス持ってる会社ともうパートナーじゃなかったし。" userName="Cieric" createdAt="2025-02-13T15:52:45" color="">}}

{{<matomeQuote body="PS /width*widthがコンパイル時に消されないのはなんで？" userName="chrisjj" createdAt="2025-02-11T22:30:01" color="">}}

{{<matomeQuote body="その質問はいいね。メモリバリアか、間の分岐のせいでllvmが最適化を避けてると思う。調べ直すのもいいかも。ただ、dxc自体もやるべきことなのに、コントロールできないしね。" userName="Cieric" createdAt="2025-02-13T15:56:35" color="">}}

{{<matomeQuote body="ほぼすべて、違いによって壊れるわけじゃないじゃん。 IEEE FPフォーマットの環境なら、同じように動くよ。" userName="chrisjj" createdAt="2025-02-11T21:45:30" color="">}}

{{<matomeQuote body="ほぼすべてに近いけど、実際のコードにそういう動作ある？最後のビットの丸め方が変わることで壊れるのは難しいと思うよ。" userName="Dylan16807" createdAt="2025-02-12T00:43:58" color="">}}

{{<matomeQuote body="他の変更がそれを壊さないのはなぜ？ドライバーが他の変更を加えることでコードが壊れることもあるでしょ。" userName="chrisjj" createdAt="2025-02-14T13:31:18" color="">}}

{{<matomeQuote body="変更の影響を話してるけど、必ずしも全ての変更が壊すわけじゃないって君が言ったんじゃん？それについて議論してるんだよ。" userName="Dylan16807" createdAt="2025-02-14T19:20:49" color="">}}

{{<matomeQuote body="RNGについて考えてみよう。" userName="chrisjj" createdAt="2025-02-10T00:14:39" color="">}}

{{<matomeQuote body="シェーダーでのシード付き浮動小数点RNGは良くないと思う。" userName="Dylan16807" createdAt="2025-02-10T01:32:24" color="">}}

{{<matomeQuote body="GPUって最適な動作のために変なサイズがあって、数式の最適化も適用されないから注意が必要。" userName="Dylan16807" createdAt="2025-02-12T00:50:22" color="">}}

{{<matomeQuote body="浮動小数点シェーダーは近似の地帯で考えるべきだと思うが、他の作者の意見もあるだろうから責任は自分にある。" userName="chrisjj" createdAt="2025-02-14T13:41:39" color="">}}

{{<matomeQuote body="親和性や結合性の操作を最適化してほしいの？それなら反対派の意見を否定しなきゃ。" userName="Dylan16807" createdAt="2025-02-14T19:10:40" color="">}}

{{<matomeQuote body="ダブル精度浮動小数点が現代のハードで速くなる理由は？" userName="SpaghettiCthulu" createdAt="2025-02-09T16:11:21" color="">}}

{{<matomeQuote body="GPUはIEEE準拠じゃないから、計算がGPUによって異なることがある。ダブル精度はゼロ除算エラーを防ぐ助けになるかも。" userName="Cieric" createdAt="2025-02-10T00:41:15" color="">}}

{{<matomeQuote body="今のGPUはIEEE準拠じゃないって思わないけど？10年以上はそうじゃないでしょ。" userName="dahart" createdAt="2025-02-10T19:11:02" color="">}}

{{<matomeQuote body="今はGPUはデフォルトでIEEE準拠だけど、厳密にはそうでないこともある。ドライバーの最適化が精度に影響する。" userName="Cieric" createdAt="2025-02-11T16:23:43" color="">}}

{{<matomeQuote body="シェーダーの精度についてはIEEEの問題じゃなく、DX/Vulkanの仕様か、ユーザーのコンパイラ設定の問題。全てのGPUはIEEE準拠だと思う。" userName="dahart" createdAt="2025-02-12T01:27:48" color="">}}

{{<matomeQuote body="ゲームが要求しなくてもドライバーが無視して精度を下げるのは問題。その場合は準拠とは言えない。" userName="Cieric" createdAt="2025-02-13T16:10:10" color="">}}

{{<matomeQuote body="現代のドライバーが無視して精度を下げるなんて信じにくい。明示的にユーザーが要求した場合だけでしょ。" userName="dahart" createdAt="2025-02-14T15:24:04" color="">}}

{{<matomeQuote body="ダブルは速くはない。性能的にはシングルと同じくらいだけど、2倍のメモリ使うから全体的にパフォーマンスが落ちる。家庭用GPUでは16倍から64倍遅くなることがあるし、ダブルを強制するようなシェーダー交換は聞いたことがないな。" userName="dahart" createdAt="2025-02-09T23:46:16" color="#ff33a1">}}

{{<matomeQuote body="互換性や品質のためにやってるんじゃないかな。" userName="kevingadd" createdAt="2025-02-09T17:23:03" color="">}}

{{<matomeQuote body="どのゲームを最適化するかの決め方気になる。スタジオがお金払ってるの？それともNvidiaが勝手にやってるの？" userName="crazygringo" createdAt="2025-02-09T15:04:51" color="">}}

{{<matomeQuote body="選び方の詳細は言えないけど、スタジオとの直接の接点があって、問題解決を手伝ってる。スタジオはお金払ってないし、パフォーマンス向上はお互いに利益がある。" userName="Cieric" createdAt="2025-02-09T15:56:55" color="">}}

{{<matomeQuote body="人気ゲームのリリースに合わせてNVIDIAとAMDが無償で最適化することが多い。AAAスタジオは技術的な連絡役もいるし、いわば競争みたいなもんだ。" userName="flohofwoe" createdAt="2025-02-09T15:17:45" color="">}}

{{<matomeQuote body="ダブル「AFAIK」ってのが信頼性を感じさせる。大作ゲームは多分、NVIDIAが最初から最適化するために直接コンサルしてるんじゃないかな。" userName="diegoperini" createdAt="2025-02-09T15:23:38" color="">}}

{{<matomeQuote body="小規模なゲームでもNvidiaやAMDから相談を受けることが多いし、クレジットにも名前が載ってるんだよ。" userName="account42" createdAt="2025-02-10T10:15:57" color="">}}

{{<matomeQuote body="どんな変更をしてて、どれくらいのゲームに適用されるか知りたい。技術的な記事を出してることはあるの？" userName="esperent" createdAt="2025-02-09T14:26:29" color="">}}

{{<matomeQuote body="シェーダーの交換がハッキーって感じだけど、実際はゲームにはコンパイル済みシェーダーが無いから、ドライバーがハードウェアに合わせてコンパイルする仕組みなんだ。" userName="sigmoid10" createdAt="2025-02-09T14:56:05" color="">}}

{{<matomeQuote body="Windowsのグラフィックドライバーは特定のゲーム実行ファイル向けに最適化が多いし、Protonも同様のことをしてる。" userName="flohofwoe" createdAt="2025-02-09T15:19:36" color="">}}

{{<matomeQuote body="他のコメントが正しいならちょっとクレイジーだな。特定のゲームのために特定のプリコンパイルされたバイナリを使うなんて発想だ。" userName="crazygringo" createdAt="2025-02-09T15:07:34" color="">}}

{{<matomeQuote body="シェーダーのフィンガープリンティングは珍しいけど、ゲームによっては指摘された名前から判別していることが多い。最終的には特定ハード用にベストに調整してる。" userName="Cieric" createdAt="2025-02-09T15:40:36" color="">}}

{{<matomeQuote body="実行ファイル名での検出って、何か問題起きないのかな？" userName="chrisjj" createdAt="2025-02-09T16:39:47" color="">}}

{{<matomeQuote body="MinecraftのSodiumモッドでNvidiaの最適化が原因でゲームがクラッシュしたこともあって、運営側が対策を講じる羽目になったらしい。" userName="macbr" createdAt="2025-02-09T17:53:09" color="">}}

{{<matomeQuote body="プレーンなMinecraftは、実行ファイル名を変更してNvidiaに検出されないようにしたらしいけど、ちょっと面白いね。" userName="immibis" createdAt="2025-02-10T19:51:51" color="">}}

{{<matomeQuote body="quack.exeが90年代後半や2000年代初頭のquake.exeよりも特定のカードでベンチマークが明らかに劣ってるって、どういうことよ？" userName="Benanov" createdAt="2025-02-09T17:20:51" color="">}}

{{<matomeQuote body="覚えてない人のために、これはアーカイブで確認できるよ。" userName="magicalhippo" createdAt="2025-02-10T10:10:44" color="">}}

{{<matomeQuote body="ほんとにそうだね、ATIを見てみな。" userName="chrisjj" createdAt="2025-02-10T00:17:22" color="">}}

{{<matomeQuote body="これ実際に起こったことだと思う。でも、ちゃんとテストされてないからゲームがクソみたいに動くしかない。" userName="Cieric" createdAt="2025-02-10T00:49:08" color="">}}

{{<matomeQuote body="ゲームのテストがどうあるべきかはゲーム開発者の判断だと思う。そんなのカード開発者の問題じゃないし。業界的には非テストでもゲームが動かないわけではないと知っているはず。" userName="chrisjj" createdAt="2025-02-11T21:37:20" color="">}}

{{<matomeQuote body="適切なテストっていうのは、開発の過程でたまにゲームをカードで試すことだと思う。リリース直前に問題が出てきても助けてくれればそれでいい。ビジネス理由でゲームが特定のカードでクソ動きするのは許せないな。" userName="Cieric" createdAt="2025-02-13T16:27:31" color="">}}

{{<matomeQuote body="それはゲーム開発者と顧客の間の問題で、カード開発者には関係ない。" userName="chrisjj" createdAt="2025-02-13T18:52:57" color="">}}

{{<matomeQuote body="Nvidiaがゲーム開発者に直接連絡して、最適化のヒントを与えてるってことは、驚きでもなんでもない。" userName="surajrmal" createdAt="2025-02-09T14:41:54" color="">}}

{{<matomeQuote body="ほとんどのゲームにNvidiaのクレジットが入ってるのを見ると、全然驚かないね。" userName="account42" createdAt="2025-02-10T10:24:16" color="">}}

{{<matomeQuote body="「最適化したゲームXが40%速く動く」ってあるけど、実際は見た目が40%悪くなってるのはどういうこと？" userName="chrisjj" createdAt="2025-02-09T16:33:38" color="">}}

{{<matomeQuote body="この場合一つのシェーダーを追加するってことなら許せるけど、今のグラフィックスAPIは同じシェーダーに対して数千のバリエーションが必要になることも。非常に時間も限られてるから、気に入ったハードウェアでプロファイルして、他の未来のプロセッサで遅くなるからって気にしない。" userName="alexvitkov" createdAt="2025-02-09T19:19:39" color="">}}

{{<matomeQuote body="グラフィックスAPIが数千のシェーダーを強制してるわけじゃない。エンジンの抽象化が原因。" userName="account42" createdAt="2025-02-10T10:03:27" color="">}}

{{<matomeQuote body="記事で指摘されてるミスがここにもあるようだ。記事は条件分岐が無料だとは言ってないし、条件論理の形式が条件付き分岐コードにコンパイルされないって指摘してる。最適化は重要だけど、無条件に指示することは避けるべきだってこと。" userName="qwery" createdAt="2025-02-10T01:08:32" color="#ff5c5c">}}

{{<matomeQuote body="なぜコンパイラは最適化されたバージョンが同じだと理解できないの？step()の0.0や1.0の場合を別々に最適化するはずじゃない？1回の乗算を減らせる可能性があるし、効果があると思うんだけど。" userName="londons_explore" createdAt="2025-02-09T13:51:43" color="">}}

{{<matomeQuote body="その通りかも。コンパイラによって最適化の方法がバラバラだし、うまく理解できないケースもあるかもしれない。" userName="NohatCoder" createdAt="2025-02-09T20:35:21" color="">}}

{{<matomeQuote body="確かにその通り。最近のコンパイラはLLVMベースのが多いしね。" userName="mbel" createdAt="2025-02-09T21:04:33" color="">}}

{{<matomeQuote body="でもドライバに含まれてるシェーダコンパイラは必ずしもLLVM使ってるわけじゃないんだ。" userName="account42" createdAt="2025-02-10T10:42:27" color="">}}

{{<matomeQuote body="最適化について考えるとき、やりすぎるのは良くない。シェーダの最適化はドライバ側で行われてて、時間がかかると付き合わないといけないかも。" userName="Cieric" createdAt="2025-02-10T15:59:48" color="">}}

{{<matomeQuote body="ありがとう、Inigo！最適化されたバージョンは実際には元のより遅いことが多い。step()の実装が条件文だから知っておくべきだよね。" userName="ttoinou" createdAt="2025-02-09T13:25:36" color="">}}

{{<matomeQuote body="最終的に、OPがやったみたいにシェーダをコンパイルして、アセンブリを読まないと分からないんだ。HLSLでそれをよくやってるよ。" userName="Const-me" createdAt="2025-02-09T13:45:08" color="">}}

{{<matomeQuote body="なぜ知る必要があるのか？それはパフォーマンスが大事だからさ。step()が条件文の上にあるライブラリ関数で実装されても、実パフォーマンスには関係ない。" userName="account42" createdAt="2025-02-10T10:40:38" color="">}}

{{<matomeQuote body="どんなGPUも知ってる関数以外に特別なプリミティブはなかったよ。デコンパイルしたシェーダはほとんどCみたいなもん。" userName="SideQuark" createdAt="2025-02-10T03:21:58" color="">}}

{{<matomeQuote body="プログラミングにおけるこの質問はよくあることで、最適化するときはまず計測が基本だよ。" userName="Waterluvian" createdAt="2025-02-09T13:57:31" color="">}}

{{<matomeQuote body="編集：条件によって分岐することの理解に困ってるけど、差はあるよね。step()がライブラリ関数だとはいえ、条件を隠すだけじゃない？" userName="TeMPOraL" createdAt="2025-02-09T14:55:37" color="">}}

{{<matomeQuote body="条件付きジャンプは、指示ポインタを変えるからブランチになる。でも条件付きの選択や移動は指示ポインタを変えないからブランチじゃない。" userName="dahart" createdAt="2025-02-09T15:52:25" color="">}}

{{<matomeQuote body="GPUでのブランチが遅い理由がイマイチ分からない。両方を計算すれば同じ量の作業になると思うんだけど。" userName="dkersten" createdAt="2025-02-10T11:18:58" color="">}}

{{<matomeQuote body="主な問題はマスキングだ。1つのスレッドがアクティブだと、GPUのスループットが大幅に落ちる。ループはブランチと同じで、全スレッドが同じ回数繰り返すかが鍵だね。" userName="dahart" createdAt="2025-02-10T15:44:10" color="">}}

{{<matomeQuote body="ここでの「ブランチ」は条件付きジャンプのこと。この場合、指示ポインタを変更せずに条件を処理するのがブランチレスプログラミングの利点だよ。" userName="mymoomin" createdAt="2025-02-09T15:26:10" color="">}}

{{<matomeQuote body="条件分岐はランタイムで実行パスが選ばれるからブランチなんだよね。で、するべき修正は「条件分岐はジャンプ」とすること。問題解決。条件がジャンプしてないものは昔からあるし。" userName="chrisjj" createdAt="2025-02-09T16:44:27" color="">}}

{{<matomeQuote body="複数のOS、ドライバ、ハードウェアでシェーダーを書いてるとき、何が裏で起こってるか気になるよね。本当に条件分岐なくす最適化をするには、連続性を確保しないと。" userName="ttoinou" createdAt="2025-02-09T15:06:57" color="">}}

{{<matomeQuote body="分岐は異なる命令パスを意味するから、メモリの違う場所から命令を読む必要があって、そのために遅延が生じる。でも条件移動は次に実行されるコードには影響しない指示なんだ。" userName="burch45" createdAt="2025-02-09T15:32:46" color="">}}

{{<matomeQuote body="これに引っかかったことあるわ。Claude/ChatGPTも最適化の提案をするんだけど、実際測定するとパフォーマンスが落ちることが多い。結構な低下がある。" userName="mirsadm" createdAt="2025-02-09T13:45:02" color="#45d325">}}

{{<matomeQuote body="変なことじゃないよ。LLMはトレーニングコーパスの情報を反復するだけだから、ネットの多くが間違ったことを推奨してると、それをそのまま提案しちゃうんだ。" userName="WJW" createdAt="2025-02-09T13:54:02" color="">}}

{{<matomeQuote body="変じゃないけど、大事なポイントだよね。" userName="xbar" createdAt="2025-02-09T15:49:19" color="">}}

{{<matomeQuote body="Claude/ChatGPTも最適化を提案するけど、結局ネットの人が言ってることを繰り返してるだけで、多くの人が間違ってる。" userName="diath" createdAt="2025-02-09T16:00:00" color="">}}

{{<matomeQuote body="Hmm、godboltのVulkan出力にはブランチが表示されてるけど、実際のコードにどう変換されるか見ると、元の記事と同じようにコンパイルされると思う。" userName="cwillu" createdAt="2025-02-10T02:10:36" color="">}}

{{<matomeQuote body="Vulkanのオペコードは実行されないから、プラットフォーム中立の中間言語だよ。特定のGPUの特別な命令は必要ないから、最終的には元の記事と同じようにコンパイルされるはず。" userName="SideQuark" createdAt="2025-02-10T03:08:42" color="">}}

{{<matomeQuote body="無関係だけど、gccに「x > c ? y : 0.」を条件移動に変換させられないのはマジで嫌！何度もイライラさせられた。" userName="toredo1729_2" createdAt="2025-02-09T13:32:46" color="">}}

{{<matomeQuote body="何言ってるの？条件を予測不可能と注釈つけて、コンパイラが条件移動を使うようにしたいの？（コンパイラはこの変換をするけど、x86-64では常に有益と限らないよ。）" userName="fweimer" createdAt="2025-02-09T13:40:58" color="">}}

{{<matomeQuote body="うん、それはいいかも。常に有益とは言えないけど、（稀だけど自分にとって重要なケースでは）有利な場合がある。今は条件移動を使うにはインラインアセンブリしかないから、ポータブルでないし保守も難しい。" userName="toredo1729_2" createdAt="2025-02-09T18:00:24" color="">}}

{{<matomeQuote body="clangにはこの目的のために__builtin_unpredictable()イントリンシックがあるよ。" userName="tjalfi" createdAt="2025-02-09T22:23:37" color="">}}

{{<matomeQuote body="でも、それができないことも多い！例えば、ほとんどのRISC-V CPUはまだサポートしてない。" userName="IshKebab" createdAt="2025-02-09T14:49:02" color="">}}

{{<matomeQuote body="いや、ベースラインのrv64iでブランチレス「x ? y : z」をするのに、約3-4命令必要だし、そのフォーマットによっては条件式も変わってくるよ。Zicondだと命令を減らせるかもしれないけど。" userName="dzaima" createdAt="2025-02-09T14:52:40" color="">}}

{{<matomeQuote body="ブランチ削減がポイントだから、命令数やレイテンシだけじゃないよ。" userName="IshKebab" createdAt="2025-02-09T16:35:10" color="">}}

{{<matomeQuote body="y^((y^z)&x)の方法はすでにブランチなしで、Zicondに近いパフォーマンスだよ。つまり、Zicondはそんなにプラスじゃない。" userName="dzaima" createdAt="2025-02-09T16:43:55" color="">}}

{{<matomeQuote body="待って、実際に計算が入るとパイプラインを通り過ぎちゃうから、ALUが占拠されるよ。Zicondはもっと効率的に処理できるかも。 xは全部1か0じゃないといけないよね? GCCもClangもその方法使ってないけど、Zicondは使ってる。" userName="IshKebab" createdAt="2025-02-09T18:04:40" color="">}}

{{<matomeQuote body="Zicondのczero.eqzやczero.nezはパイプラインを通るし、xorやandと同じくらい処理が必要だよ。でも依存関係は短いし、多分命令も一つ少ない。xのLSBがセットされてたら、xを否定する必要もあるかも。" userName="dzaima" createdAt="2025-02-09T18:40:04" color="">}}

{{<matomeQuote body="GCCとClangではちゃんと動くと思うけど? 簡単な式なら、コンパイラがターゲットCPUに基づいて適切な出力パターンを選ぶと思う。" userName="flohofwoe" createdAt="2025-02-09T13:56:40" color="">}}

{{<matomeQuote body="そうとも限らない。予測不可能な条件の時、ブランチなしの方が圧倒的にいいんだよ。コンパイラはそれを知らないから、条件付き移動命令を明示的にリクエストしたい。" userName="dzaima" createdAt="2025-02-09T14:44:20" color="#ff5733">}}

{{<matomeQuote body="条件移動のやり方によってGCCが移動命令を生成しちゃうこともあるけど、Clangは生成しないことがあるんだよね。" userName="dzaima" createdAt="2025-02-09T16:03:10" color="">}}

{{<matomeQuote body="-mllvm -x86-cmov-converter=falseを渡してみて。LLVMは条件付き移動が計算を減らせると判断したら、動きを無効にするパスを持ってる。でも、そのヒューリスティックが間違うことが多いから、特定のファイルでそれを使うのは良いんだ。" userName="ryao" createdAt="2025-02-09T18:31:49" color="">}}

{{<matomeQuote body="そのフラグが必要なのはバカらしい。これが直ってると思ってたけど、今もそれがあれば色々改善する。" userName="dzaima" createdAt="2025-02-09T18:45:50" color="">}}

{{<matomeQuote body="ClangとGCCが条件付き移動を使わないのは失敗とは限らない。明示的なcmov命令がなくても、cmp/jmp/movは暗黙のcmovの慣用句だよ。一部のCPUはそれをcmovに変換できるかも。" userName="ryao" createdAt="2025-02-09T21:04:20" color="">}}

{{<matomeQuote body="RISC-V以外でこのジャンプオーバーmovの慣用句を聞いたことないけど、何かしらのCPUが小さなコードの誤予測をうまく処理できるかもしれない。" userName="dzaima" createdAt="2025-02-09T21:28:32" color="">}}

{{<matomeQuote body="RISC-V開発にフィードバックを送った方がいいかも。CPUのデコーダにcmovが実装されてるか確認する方法も知りたい。" userName="ryao" createdAt="2025-02-09T21:36:58" color="">}}

{{<matomeQuote body="確認する方法はないけど、同じコードの予測可能な条件と予測不可能な条件のパフォーマンスを比べるのが良いと思う。" userName="dzaima" createdAt="2025-02-09T21:46:54" color="">}}

{{<matomeQuote body="やっぱり確認する方法はないか…RISC-Vは明示的な命令が無駄だと思ってるみたいだけど、デコーダにその慣用句を検出するロジックを追加するのが良いと思う。" userName="ryao" createdAt="2025-02-09T22:01:16" color="">}}

{{<matomeQuote body="あれ、タイポしちゃった! RISC-Vの開発者は標準のGPR命令が3オペランドを取るのがダメだと思ってるみたい。" userName="dzaima" createdAt="2025-02-09T22:22:00" color="">}}

{{<matomeQuote body="RISC-Vの開発者に分岐するcmovアセンブリを排除する仮想命令を提案したんだが、x86コアがマクロオプフュージョンを活用していないのが意外。開発者がcmovを使わなければ、ブランチ予測器が良くなるほど影響は少なくなる。ただ、コンパイラが偶然に暗黙のバージョンを使う時は、変換の安全性は問題ないはず。" userName="ryao" createdAt="2025-02-09T22:54:44" color="#ff5c5c">}}

{{<matomeQuote body="gccの例ではブランチを使ってるが、最初の例だと戻せないロードがあったことに気づいた。AppleのM1がやってるマクロオプフュージョンについては、ここを見てみて。" userName="dzaima" createdAt="2025-02-10T01:56:25" color="">}}

{{<matomeQuote body="この手のコードを書く時は経験が必要だよね。コンパイラがどの操作を省略可能か分からないし、アセンブリを調べる必要があるんじゃないかって思う。期待する動作にヒントを与えたいな。" userName="cjbgkagh" createdAt="2025-02-09T16:12:39" color="">}}

{{<matomeQuote body="このことは全ケースを通じて定量化し一般化されるべきだと思う。そうすれば議論がもっと明確になるはず。" userName="DrNosferatu" createdAt="2025-02-09T15:28:28" color="">}}

{{<matomeQuote body="こんな感じのことがある: https://doliveira4.github.io/gpuconditionals/" userName="DrNosferatu" createdAt="2025-02-09T16:53:47" color="">}}

{{<matomeQuote body="流れや自然な見た目のために、絵の効果を信号の補間で作るのが自分には合ってる気がする。WebGPUのWGSLでは、隠れたメソッドのように`select`命令があるから安心。" userName="tsylba" createdAt="2025-02-10T10:28:05" color="">}}

{{<matomeQuote body="2025年には結論が正しいと思うが、この記事は誤解を助長してしまう気がする。シェーダーは実行時にコンパイルされるため、実機でのテストが必要なんだよね。" userName="grumpy_coder" createdAt="2025-02-09T16:37:48" color="">}}

{{<matomeQuote body="もし誰かがこれを提案したら、『float a = mix( b, c, step( y, x ) );』って感じだけど、実は『float a = mix( b, c, y > x );』が正しいんだ。これならベクトルにも対応するし。" userName="mahkoh" createdAt="2025-02-09T14:22:51" color="">}}

{{<matomeQuote body="著者はmixを避けるべきとは言ってない。ただ、ternaryの最適化としてstep+mixを使うなってこと。" userName="Thorrez" createdAt="2025-02-09T14:33:49" color="">}}

{{<matomeQuote body="著者は教育的な視点で書いてるけど、スカラー以上の処理だと逆効果になるかも。mixが正しい選択だと思わせるのはまずい。" userName="mahkoh" createdAt="2025-02-09T15:53:29" color="">}}

{{<matomeQuote body="boolean 0か1をmixの”a”に送るだけの時、明示的な例がないとmixが良いって言えるの？mixはブレンドにはいいけど、0か1だけの時はternaryの方がいいんじゃないか。" userName="dahart" createdAt="2025-02-09T16:24:07" color="">}}

{{<matomeQuote body="aはbooleanのベクトルになりうる。" userName="mahkoh" createdAt="2025-02-10T09:13:33" color="">}}

{{<matomeQuote body="それ、ternaryには使えないんじゃ？Inigoは“ternaryが動作するなら、ternaryのままで”って言ってる。" userName="Thorrez" createdAt="2025-02-10T14:41:22" color="">}}

{{<matomeQuote body="そんなの言っても、言語の便利さでパフォーマンス特性ではないよ。mixをvec4で呼ぶのは4つのスカラーmix呼び出しと同じ速さじゃないし、場合によっては遅い。" userName="dahart" createdAt="2025-02-10T15:28:48" color="">}}

{{<matomeQuote body="著者はこれを把握してそうだ: https://www.shadertoy.com/user/iq" userName="sva_" createdAt="2025-02-09T18:06:50" color="">}}

{{<matomeQuote body="この人、サイトの主要な著者の一人だよね…伝説だわ。" userName="nxpnsv" createdAt="2025-02-09T19:03:52" color="">}}

{{<matomeQuote body="あはは、ほんとだね。これぞ“お前、誰と話してるか分かってる？”って感じ。" userName="jesse__" createdAt="2025-02-10T04:07:45" color="">}}

{{<matomeQuote body="IQはもちろん知ってるだろうけど、知らないのは君の方じゃない？" userName="dahart" createdAt="2025-02-09T17:07:50" color="">}}

{{<matomeQuote body="これが単なる「条件付きは大丈夫」って解釈にすべきか、計算負荷が高い方がある場合はどうなのか疑問。" userName="doctorhandshake" createdAt="2025-02-09T13:28:30" color="">}}

{{<matomeQuote body="GPUは条件によって全パスを実行するから、非効率になることもある。条件代入の方が良い場合も。" userName="dahart" createdAt="2025-02-09T17:44:36" color="">}}

{{<matomeQuote body="本物のブランチはたくさんの計算をスキップできる場合は有用だけど、基本的な算術演算には意味がない。" userName="TinkersW" createdAt="2025-02-09T14:18:05" color="">}}

{{<matomeQuote body="コード生成の出力を見るのは面白いけど、実際のベンチマークなしで速さを主張するのはがっかり。" userName="CountHackulus" createdAt="2025-02-09T16:45:06" color="">}}

{{<matomeQuote body="これな。理論より実際のベンチマークで確認する方が重要だよ。" userName="leeoniya" createdAt="2025-02-09T17:24:53" color="#785bff">}}

{{<matomeQuote body="シェーダーコンパイラにはこれを直す最適化パスがあるの？それとも追加できる？" userName="ryao" createdAt="2025-02-09T13:40:50" color="">}}

{{<matomeQuote body="多くのベンダーはそうしてると思う。mesaプロジェクトで確認してみて。" userName="DRAGONERO" createdAt="2025-02-09T14:32:18" color="">}}

{{<matomeQuote body="シェーダーコンパイラはレイテンシに敏感だから、遅すぎるなら未実装の理由だね。" userName="ryao" createdAt="2025-02-09T18:29:00" color="">}}

{{<matomeQuote body="シェーダーコンパイラはLLVMを多く使ってるけど、効率的なパターンは簡単にマッチできるよ。" userName="DRAGONERO" createdAt="2025-02-09T20:40:23" color="">}}

{{<matomeQuote body="これが思ってる以上に難しい気がするな。いろんなルールを見つけて変換する必要がある。" userName="ryao" createdAt="2025-02-09T22:29:49" color="">}}

{{<matomeQuote body="確認したけど、「特定のベンダー」ではmix + stepの方が若干良いみたい。" userName="DRAGONERO" createdAt="2025-02-10T09:15:12" color="">}}

{{<matomeQuote body="初めてからずっとこうしてきたけど、最初からループやifブロックは使わないべきって思ってた。これからは気をつけるよ、ありがとう。" userName="lerp-io" createdAt="2025-02-10T17:22:25" color="">}}

{{<matomeQuote body="普通にGPUコードではリアルな分岐があると思ってた。分岐の条件が真じゃないときは実行されないだけだと思ってたけど。" userName="mgaunard" createdAt="2025-02-09T18:02:48" color="">}}

{{<matomeQuote body="それは実行が不整合な場合だけ。ワープの全スレッドが同じように分岐したら、取られてない分岐の命令はスキップされる。" userName="ack_complete" createdAt="2025-02-09T18:13:48" color="">}}

{{<matomeQuote body="AMDやMicrosoftのcshaderコンパイラって何？自分のPCでこれらの中間コードを生成・検査する方法は？" userName="arbitrandomuser" createdAt="2025-02-09T18:56:46" color="">}}

{{<matomeQuote body="AMDの場合はRadeon GPU Analyzerを使ってみて。" userName="blackle" createdAt="2025-02-09T19:50:08" color="">}}

{{<matomeQuote body="もちろんGPUコードでもリアルな分岐は存在する。ハードウェアによっては、分岐なしでスカラーコードのまま評価されることもある。" userName="ajross" createdAt="2025-02-09T15:47:09" color="">}}

{{<matomeQuote body="ハードウェアレベルでもリアルな分岐があるけど、ワークグループ全体が同じ分岐をする必要がある。それ以外は何らかの形で”偽装”される。" userName="account42" createdAt="2025-02-10T11:20:01" color="">}}

{{<matomeQuote body="そうそう、全レーンが“終了”状態を確認して実装する逆方向のグローバル分岐は本物の分岐じゃないと思ってる。用語のあいまいさが問題。" userName="ajross" createdAt="2025-02-10T15:42:45" color="#38d3d3">}}

{{<matomeQuote body="`mix()`を使うこと自体は悪くない。`lessThan()`みたいな論理演算を使うのが`step()`よりもいいと思う。RGBからsRGBへの変換を試したけど、AMDでは同じアセンブリにコンパイルされる。" userName="leguminous" createdAt="2025-02-10T20:41:57" color="#ff5733">}}

{{<matomeQuote body="こういう誤情報が長く残るのは変だ。CPUとGPUの両方で条件付き移動が優れてるのに、何で他の方法を”最適化”として使う人がいるんだろう。" userName="TinkersW" createdAt="2025-02-09T14:15:06" color="">}}

{{<matomeQuote body="“条件付き移動がCPUで優れている”は単純化しすぎ。実際、2007年にLinusが説明した通り。また分岐予測器は常に改善されてる。" userName="Lockal" createdAt="2025-02-09T23:52:36" color="">}}

{{<matomeQuote body="自分はSIMD的性能だけにこだわってる。SIMDを使わないならパフォーマンスを狙ってないことになる。全てのレーンが同じ分岐に賛成する確率が高いなら、分岐はまだ役立つ。" userName="TinkersW" createdAt="2025-02-10T15:03:10" color="">}}

{{<matomeQuote body="> cmovのデータ依存性の問題は解決不能だって？そんなことないんじゃない？" userName="account42" createdAt="2025-02-10T11:17:58" color="">}}

{{<matomeQuote body="IQに反論するつもりはないけど、いくつか反論がある。SIMDの特性のおかげで、条件文の両方のパスが実行される可能性が高い。" userName="torginus" createdAt="2025-02-10T08:32:28" color="">}}

{{<matomeQuote body="何でこれがダウンボートされ続けるんだ？基本的に真実で、経験から生まれた良いアドバイスなのに。" userName="torginus" createdAt="2025-02-10T11:07:59" color="">}}

{{<matomeQuote body="自分は100%確信はないけど、全然反論になってないと思う。SIMDの仕組み上、条件文の両方のパスが実行されることが多いから、その点についてはIQがディスアセンブリで示してる。で、step関数はこれを変えないけど、すでにsmoothstepに置き換えられる形になってるってこと。smoothstepは二つの値の間を滑らかに補間するけど、これは投稿とはあまり関係ないよ。step()も三項演算子も条件式を表現する手段だけど、smoothstepに変えるとプログラムの意味が完全に変わる。" userName="grg0" createdAt="2025-02-11T03:15:06" color="">}}

{{<matomeQuote body="step, ternary op, if文は同じっていうのは正しいけど、オプティマイズやアセンブリはどうでもいいんだ。最終的な結果が悪く見えるのが問題なんだよ。値の急激な移行はエイリアシングや「エッジシマー」を引き起こすから不快に見えるんだ。それをsmoothstepで二つの値を滑らかにブレンドすることで解決できる。" userName="torginus" createdAt="2025-02-11T09:06:57" color="">}}



{{< list limit=2 >}}
