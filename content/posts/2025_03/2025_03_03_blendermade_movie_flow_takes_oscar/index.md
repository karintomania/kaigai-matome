+++
date = '2025-03-03T00:00:00'
draft = false
title = 'Blender製アニメ映画「Flow」がオスカー受賞！限界を超えた制作秘話とは？'
tags = ["Blender", "映画", "アニメーション", "オスカー", "制作"]
featureimage = 'thumbnails/orange2.jpg'
+++

> Blender製アニメ映画「Flow」がオスカー受賞！限界を超えた制作秘話とは？

引用元：[https://news.ycombinator.com/item?id=43237273](https://news.ycombinator.com/item?id=43237273)

{{<matomeQuote body="Blenderで作られただけじゃなくて、最終レンダリングはBlenderの半リアルタイムEeveeエンジンで行われたんだ。これで計算量が何桁も減ったらしい。監督はレンダーファームが不要で、彼のローカルワークステーションで4Kフレームを0.5～10秒で生成できたって。もちろん、ちゃんとしたレンダラーであるCyclesの方が見た目は良いけど、限られた予算で利用可能な代替手段は貴重だよ。" userName="jsheard" createdAt="2025-03-03T03:35:40" color="#38d3d3">}}

{{<matomeQuote body="Cyclesでレンダリングしたら映画がどうなるのか気になる。ちょっと照明が“おかしい”と感じる部分があるから、称賛された今こそ、Cyclesでのリマスター版を出してほしいな。" userName="leonidasv" createdAt="2025-03-03T04:58:50" color="">}}

{{<matomeQuote body="Cyclesに切り替えるのはかなり手間になるかも。レンダラーは互換性があるとは言われてるけど、Cyclesの方が多くの機能をサポートしてるから、Eeveeで重要じゃなかったオプションを設定しなきゃならない。映画を観たけど、“非現実的”でコミカルな見た目は創造的な選択だったと思う。Cyclesに変えたとしても、クリエイターが創造的な選択を変えなければ、違う映画になっても必ずしも良くなるとは思えない。" userName="deng" createdAt="2025-03-03T14:06:10" color="#785bff">}}

{{<matomeQuote body="Flowの中で、近リアルな非動物レンダリングと非リアルな動物レンダリングの対比が妙だと思った。大きな問題じゃなかったけど、対比に困惑した人もいたみたい。" userName="PaulDavisThe1st" createdAt="2025-03-03T17:02:48" color="">}}

{{<matomeQuote body="これは過去にリリースされたすべての監督版やリマスターに当てはまると思う。" userName="CSSer" createdAt="2025-03-03T17:00:04" color="">}}

{{<matomeQuote body="あまりリマスターしてほしくないな。謙虚で民主的なFOSSの精神が好きなんだ。まるでDogme 95みたいで、伝統的な物語や演技、テーマに基づいた映画制作のルールを持っていて、派手な特殊効果や技術を排除してる。初めはアニメスタイルに否定的だったけど、引き込まれて驚いた。レンダリングクオリティよりも遥かに重要な魅力があったと思う。" userName="Fluorescence" createdAt="2025-03-03T10:04:54" color="#ff5733">}}

{{<matomeQuote body="これは啓示的かもしれない。LEDスクリーンでSuper Mario Bros.を初めてプレイしたときのように、ピクセルがクリアに見えた。真面目に言うと、誰かがBeethovenの第五をリオーケストラしたことがあるのかな？RavelやStraussのスタイルで。おそらく冗談で誰かがやってるはずで、ぜひ聴いてみたい。" userName="jancsika" createdAt="2025-03-03T16:39:44" color="">}}

{{<matomeQuote body="この文脈でいうと、Max RichterのRecomposed: Vivaldi – The Four Seasonsは似たようなものかも。良かったけど、私は純粋主義者じゃないから。" userName="alanvillalobos" createdAt="2025-03-03T18:27:01" color="">}}

{{<matomeQuote body="まだ見てないけど、直感的にはその通りだった。エンジンが安定版としてリリースされたときに試して、90%の解決策にすぐ到達することに感心したが、その後の複雑な照明シナリオに戻されてしまった。" userName="Neywiny" createdAt="2025-03-03T11:58:41" color="">}}

{{<matomeQuote body="Cyclesのレンダリングは美しいけど、1フレーム10分は魅力的じゃないかも。Eeveeのプリミティブを出力するためにCyclesでレンダリングした人がいるのかな？アーキテクチャレンダリングコミュニティの手法で、完全なグローバルレンダリングやパス追跡の代わりに、ライティングをペイントしてた気がする。" userName="eurekin" createdAt="2025-03-03T12:53:20" color="#785bff">}}

{{<matomeQuote body="一般的な前提だけど、PCの性能を上げる方法はいくつかあるよね。「https://www.youtube.com/watch?app=desktop&v=a0GW8Na5CIE」Blenderには他にもいろいろ問題があるけど、CUDA/Optixのサポートは普通のハードウェアでもできるからね＝３" userName="Joel_Mckay" createdAt="2025-03-03T16:54:03" color="#38d3d3">}}

{{<matomeQuote body="最新のBlenderの機能には疎くなっちゃったな。もし最高クオリティのレンダリングが必要なら、Blenderはレンダーファームでスケールできるの？前に聞いたときは、専用や自社製にその利点があったはず。" userName="teruakohatu" createdAt="2025-03-03T04:45:46" color="">}}

{{<matomeQuote body="うん！「https://www.sheepit-renderfarm.com/home」これは素晴らしいコミュニティの例だね。" userName="hamaluik" createdAt="2025-03-03T04:53:37" color="">}}

{{<matomeQuote body="自分でCyclesとカスタムプラグインをサポートする分散レンダリングオーケストレーターを作ったんだ。ModalのクラウドコンピューティングAPIを使って、20個までL40S GPU（4090の80%くらいでVRAMはもっとある）でジョブを生成するよ。安くはないけど、非常に速くて資金フローも楽。" userName="ad-astra" createdAt="2025-03-03T09:01:45" color="#ff5733">}}

{{<matomeQuote body="最近見た中で、最もオリジナルなREADMEだね。ちょっと分かりにくいけど、" userName="sbarre" createdAt="2025-03-03T13:13:43" color="">}}

{{<matomeQuote body="見てくれてありがとう！あまり注目はされないと思うけど、楽しんでるよ。" userName="ad-astra" createdAt="2025-03-03T16:45:43" color="">}}

{{<matomeQuote body="第二のタイトルは「Book of Job」と名付けるべきだと思う。" userName="remify" createdAt="2025-03-03T16:15:18" color="">}}

{{<matomeQuote body="1.5時間の映画を24FPSで作ったら約13万フレーム。マシンがそれより少ないなら、並列化はほぼ無料だよ。" userName="orlp" createdAt="2025-03-03T10:06:15" color="#38d3d3">}}

{{<matomeQuote body="恥ずかしいほど並列処理が簡単なら、リソースを増やすことでほぼ無限にスケールできるよ。" userName="zoky" createdAt="2025-03-03T05:41:42" color="">}}

{{<matomeQuote body="すごいBlenderのハッカーがNVIDIAとIntelのGPUを使ってCyclesを試したのを見た気がする。APIがこんなにポータブルで異種ハードウェアでパラレル化できるのはすごい。ソフトウェアのクオリティに驚かされる。" userName="touisteur" createdAt="2025-03-03T07:32:58" color="#785bff">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="BlenderをNVIDIAのGPUとAMDのCPUで同時に動かすのは設定でチェックするだけで簡単。GPUの性能が圧倒的だからあんまり意味がないけど、Blenderがここまで動くのは本当に驚きだ。" userName="Doxin" createdAt="2025-03-03T07:37:15" color="#785bff">}}

{{<matomeQuote body="Blender Foundationのオープンソース映画は20年以上前からレンダーファームでレンダリングされてるはず。Cycles/Eeveeが出る前からだけど、そういう方向には戻らないと思う。" userName="sangnoir" createdAt="2025-03-03T19:22:11" color="">}}

{{<matomeQuote body="超シンプルな方法は、各機械で手動でレンダリングを開始し、異なるフレーム範囲を設定することだね。" userName="sznio" createdAt="2025-03-03T09:18:35" color="">}}

{{<matomeQuote body="もっと手間をかける気になったら、各フレームをN個のセルに分割して配布する方法もあるよ。レンダリングが決定的なら、各セルを統合して完全なフレームにすればいい。" userName="diggan" createdAt="2025-03-03T13:56:27" color="">}}

{{<matomeQuote body="Blenderはもっと効率的なCyclesレンダラーに取り組んでなかったっけ？" userName="pier25" createdAt="2025-03-03T05:53:55" color="">}}

{{<matomeQuote body="おそらくCycles Xのことを言ってるんだと思うが、すでにリリースされているはず。ただ、Eeveeの性能にはかなわないだろうね。Cyclesは物理的ベースのパストレーシングエンジンで、EeveeはOpenGLを使ったラスタライズだから。" userName="pilaf" createdAt="2025-03-03T07:13:40" color="#ff5733">}}

{{<matomeQuote body="そうだね。Eevee Nextプロジェクトと混同してたかも。" userName="pier25" createdAt="2025-03-03T13:38:03" color="">}}

{{<matomeQuote body="予告編見たけど、あまりも期待外れに感じた。最近のゲームのカットシーンよりも劣ってる気がする。遠景はいいけど、動物の近接シーンのレンダリングは素人っぽくてブロック状。見た目で選ばれたんじゃなく、ストーリーとキャラクターで受賞したといいな。" userName="zo1" createdAt="2025-03-03T15:58:47" color="">}}

{{<matomeQuote body="映画には素晴らしいビジュアルがあるけど、リアルな詳細ではなく、映画の小さなストーリーの裏にある神秘的な深さを喚起してる。映画はリアルには見えないけど、リアルに振る舞うわけでもない。" userName="snowwrestler" createdAt="2025-03-03T16:17:34" color="">}}

{{<matomeQuote body="映画館でFlow観たけど、大画面で見るとちょっと粗い見た目が逆にアート的な選択って感じで、異世界感を強調してたね。動物のアニメーションや音響も素晴らしくて、劇場から出ると感動したよ。ちょっとした環境だと視覚的な粗さが目立つかも。" userName="billin" createdAt="2025-03-04T14:15:58" color="#ff5733">}}

{{<matomeQuote body="今のハリウッドのゴミみたいな映画見てると、オスカーも金持ちの自己満足にしか思えないけど、こういう作品が何かを勝ち取るのは本当に嬉しいね。でもこれって偶然的な気もしたけど。" userName="sepositus" createdAt="2025-03-03T16:41:51" color="">}}

{{<matomeQuote body="見た目は雑だけど、ストーリーはそれなりに整ってるし、ビジュアルも話を伝えるに足るものだと思う。" userName="ChrisMarshallNY" createdAt="2025-03-03T16:34:12" color="">}}

{{<matomeQuote body="同意だけど、ちょっと違う理由があるんだ。可愛さ満載で泣きそうになるけど、長ったらしい技術デモかなんかに見えちゃう。" userName="Funes-" createdAt="2025-03-03T16:05:14" color="">}}

{{<matomeQuote body="確かに完璧ではないけど、リアルタイムでレンダリングされるゲームだってこんなもんじゃん。派手なエフェクトも使わないし、いいバランスだと思う。" userName="raverbashing" createdAt="2025-03-03T05:18:09" color="#785bff">}}

{{<matomeQuote body="Flowは技術的にすごいとは思わなかった。アニメーションは不十分で、影やテクスチャも変だった。全体の感じがゲームのカットシーンみたいだね。でもそのカットシーンは見ごたえがあった。媒体が言うような革新的な映画だとは思えないけど、監督が制約の中で楽しめるものを作ったのが本当のストーリーだよ。特に子供たちが楽しんだのが最高。" userName="legitster" createdAt="2025-03-03T04:32:29" color="#ff5c5c">}}

{{<matomeQuote body="アニメスタイルの子供向け映画において、最先端のレンダリングはあまり重要じゃないかもね。" userName="brundolf" createdAt="2025-03-03T05:56:43" color="">}}

{{<matomeQuote body="子供の頃に見たトランスフォーマーやGI Joe、サンダーキャッツみたいなアニメは、今見るとクソみたいだけど、自分たちの想像力を掻き立ててくれたんだよね。" userName="stvltvs" createdAt="2025-03-03T07:10:28" color="">}}

{{<matomeQuote body="古い（1940年代）のアニメはすごくスムーズで質が良かった。でも70年代、80年代はクオリティが低かったかも。Flowの映画は確かにオスカーに値するけど、キャラクターのレンダリングはちょっと雑だった。でも動きに最適化してるのはいい選択だと思ったよ。時間をかけて観ると、粗さは気にならなくなるね。Avatarもそんな感じだったし。今、再レンダリングされるって噂聞いたよ。" userName="ChrisMarshallNY" createdAt="2025-03-03T09:52:59" color="#ff33a1">}}

{{<matomeQuote body="アニメーションの質は常に予算とモチベーションに影響されるね。手抜きはいつも同じで、技術の進歩はそれほど影響しないから。質が悪いのは安いテレビ制作によくある話。" userName="HelloNurse" createdAt="2025-03-03T11:29:50" color="">}}

{{<matomeQuote body="Spielbergは”Animaniacs”で素晴らしい仕事をしたから、うまくやれる可能性があるよね。最近のアニメは3Dレンダリングが多いけど、なんか”アンクニー・バレー”を感じるのは、クラシックなアニメに育ったせいかも。" userName="ChrisMarshallNY" createdAt="2025-03-03T12:15:40" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="＞”1970年代と1980年代のものは質が悪いと思う。多くがGI Joeのおかげでマーケティングマシーンになったから。安いアニメは子供向けのコマーシャル枠を作り出し、80年代はおもちゃを売るためのアイデアを試しまくった。”" userName="MisterTea" createdAt="2025-03-03T14:12:20" color="">}}

{{<matomeQuote body="想像力をかき立てるのが目的なら、これらの欠点はしばしば特徴であって、バグとは言えないね。だから、元の本は予算に関わらず、完全に表現された映画よりもほぼ常に素晴らしいんだ。" userName="Hoasi" createdAt="2025-03-03T08:54:49" color="#45d325">}}

{{<matomeQuote body="Homestar RunnerみたいにFlashでアニメ化されたものもあるし、アニメツールはストーリーテリングの一部なんだ。目に美しいからといって、ストーリーがうまく語られているわけじゃない。時には”悪いグラフィック”が物語を助けることもあって、重要じゃない部分を目立たなくさせるんだよ。" userName="bombcar" createdAt="2025-03-03T16:11:45" color="#ff33a1">}}

{{<matomeQuote body="バランスを取ることが大事で、視覚の”完璧”なんて実在しない。Star Warsだってミスや明らかに劣るトリックがあったけど、それが深い不思議な感覚を生んでいたんだ。" userName="agumonkey" createdAt="2025-03-03T08:25:48" color="">}}

{{<matomeQuote body="Star Warsの三部作は偉大な映画とは言えないけど、即興のライトセーバーで遊んだり、フォースで物を動かそうとする時間が、想像力の可能性を証明してるよ。" userName="stvltvs" createdAt="2025-03-03T15:44:28" color="">}}

{{<matomeQuote body="視覚的には画期的だったし、あの時代の映画を見ると、宇宙アクションファンタジーの試みはたくさんあったけど、どれも粗雑で信じられない見た目だった。VFX、音声、音楽の才能が揃っていたからこそ、全体がしっかりしていた。" userName="agumonkey" createdAt="2025-03-03T15:50:09" color="#ff5733">}}

{{<matomeQuote body="Nintendoはこれをずっと前に理解していたと思う。彼らのゲームはグラフィックが最先端ではないけど、売上はすごくて、" userName="kevinventullo" createdAt="2025-03-03T07:20:50" color="">}}

{{<matomeQuote body="Nintendoは自分たちの”ディズニーマジック”を洗練させたね。彼らの代表的なゲームは信じられないほど磨かれたもので、アートディレクションは慎重に選ばれてる。特に洗練されたものではなくても、ユニークで一貫性があり、愛されているんだ。" userName="Liquix" createdAt="2025-03-03T10:09:43" color="#ff5733">}}

{{<matomeQuote body="ここでの重要ポイントは（OPも同じように思ってるみたいだけど）、アートディレクションがグラフィック技術よりもはるかに重要だということ。特に今の時代では。" userName="brundolf" createdAt="2025-03-03T17:26:10" color="#785bff">}}

{{<matomeQuote body="子供のころに見てたアニメは良いアニメーションも多かったけど、今見るとすごく原始的な3Dレンダリングが多かったなあ。子供のころは全然気にしてなかったのに！" userName="Rendello" createdAt="2025-03-03T16:57:50" color="">}}

{{<matomeQuote body="Hundreds of Beaversみたいな、低コストの手法の粗さを芸術的スタイルとして生かしてる点では同じカテゴリだと思う。めっちゃいい映画だよね。" userName="crooked-v" createdAt="2025-03-03T05:05:21" color="#ff5c5c">}}

{{<matomeQuote body="最近、Blenderの最初の映画、Tears of Steelを思い出したんだけど、セリフが面白かったよね。「セリア、情熱を追いかけなきゃダメだよ！」って言うのとか。テクスチャや影のことじゃないから。" userName="watt" createdAt="2025-03-03T08:56:17" color="#38d3d3">}}

{{<matomeQuote body="Tears of SteelはBlenderのオープンムービーの4作目で、最初は2006年のElephants Dream、その次がBig Buck Bunny、Sintelだよ。最近の中ではSprite Frightもおすすめ。" userName="seba_dos1" createdAt="2025-03-03T11:05:03" color="#ff5c5c">}}

{{<matomeQuote body="Tears of Steel以降、Blender Foundationの映画が何してるのかは知らないけど、基本的には技術を進めることが目的だったよね。例えばモーショントラッキングとか。" userName="UncleEntity" createdAt="2025-03-03T14:09:59" color="">}}

{{<matomeQuote body="揺れるカメラは無理。アニメでも実写でも、テレビでも映画でも、揺れたらすぐに見たくなくなる。" userName="deskr" createdAt="2025-03-03T12:04:49" color="">}}

{{<matomeQuote body="変だな、ウチの10歳の子はすぐに飽きてしまった。興味をなくしちゃったみたい。" userName="guelo" createdAt="2025-03-03T07:52:13" color="">}}

{{<matomeQuote body="俺の11歳も同じだよ。映画好きなのに。" userName="bdangubic" createdAt="2025-03-03T07:53:54" color="">}}

{{<matomeQuote body="いろんな人がいるってことだね、好みが違うってことだな。　；）" userName="sbarre" createdAt="2025-03-03T13:15:53" color="">}}

{{<matomeQuote body="驚きだな。アカデミーのメンバーはベストアニメ映画のノミネート作を全て見る必要はないんだ。実際、見なくても投票できる。アニメ業界の人たちが思っていた受賞作と違うことがあったりするから。" userName="tzs" createdAt="2025-03-03T03:16:55" color="#785bff">}}

{{<matomeQuote body="面白いね。Flowが好きだったから、こういう結果になるのは嬉しい。この記事には他のオスカー関連の初も載ってて、Gints Zilbalodisがアニメーション部門の最年少受賞監督で、Flowは完全にヨーロッパ製のアニメーション映画初の受賞、対話なしの映画初の受賞、4百万ドル未満の最も低予算の受賞作だって。短編部門のIn the Shadow of the Cypressはイランの監督がビザの問題で活動できなかったから予想外の結果だったらしい。" userName="CmdrKrool" createdAt="2025-03-03T04:20:29" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="いくつかの点について：1. この10年で若い投票者が増えたよね。若い人はアニメを真剣なジャンルとして見る傾向がある。2. インタビューはオーバーに言われることが多いけど、全体としてはランダムに投票する人は多くないと思う。3. Flowの最大の競争相手はThe Wild Robotで、Inside Out 2と比べて絶対の勝者だよ。過去数年の傾向を見ると、最近ではThe Boy and the HeronがAcross the Spider-Verseに勝ったりしたね。" userName="chillee" createdAt="2025-03-03T06:33:19" color="#ff5733">}}

{{<matomeQuote body="Flowの最大の競争相手はThe Wild Robotで、Inside Out 2よりも良くなかったってこと？" userName="zimpenfish" createdAt="2025-03-03T15:09:00" color="">}}

{{<matomeQuote body="ランダムな要素が多くても結果は有効である可能性があるんだ。投票者は約1万人いるから、9000人がランダムに投票しても1000人は映画を見てそれに基づいて投票するわけだから、10,000人全員が映画を見て投票した場合とは約2%の確率で異なる結果になるよ。" userName="brookst" createdAt="2025-03-03T14:27:41" color="">}}

{{<matomeQuote body="これは世代交代の一部だと思う。アニメ部門ができてから約30年で、AcademyがBeauty and the Beastがノミネートされた時の恨みから生まれたもの。次世代の人たちは多様なアニメ映画に慣れているんだね。オスカーは社会的変化を反映するのが遅いけど、この結果には希望がある。" userName="stuart78" createdAt="2025-03-03T03:45:59" color="">}}

{{<matomeQuote body="音楽のグラミーも同じだよね。メンバーはノミネートされたアルバムを必ずしも聴く必要がない。クラシックミュージシャンだった友達はヒップホップのアルバムの投票を求められて驚いてた。それで、ニッチなカテゴリは結局人気投票みたいになっちゃう。" userName="dmazzoni" createdAt="2025-03-03T03:43:44" color="">}}

{{<matomeQuote body="Jethro TullがMetallicaやAC/DCを破ってハードロック/メタル部門を受賞した時を思い出すわ。" userName="SoftTalker" createdAt="2025-03-03T03:54:54" color="">}}

{{<matomeQuote body="Flowが大好きだったよ。Inside Out 2と比べて本当に”良かった”とは言えないけど、期待を超えるものだった。Latviaの無名のチームが作ったってこともあって、ノー期待で見たらすごく独特だった。" userName="tootie" createdAt="2025-03-03T03:47:15" color="#ff5733">}}

{{<matomeQuote body="Inside Out 2はあまり良い映画だとは思わなかったな。いいアイデアはあったけど、前作みたいにはうまくいかなかった。だから、ただの続編じゃない映画がMoanaやIO2に勝ったのは驚かないよ。" userName="riffraff" createdAt="2025-03-03T05:35:31" color="">}}

{{<matomeQuote body="映画のタイトルは完璧だね。やってることは同じで、良いけど新しさは欠けてる。" userName="brookst" createdAt="2025-03-03T14:29:07" color="">}}

{{<matomeQuote body="Inside Out 2にはがっかりした。第一作に似過ぎてたから。Flowの方がよかったよ。" userName="autoexec" createdAt="2025-03-03T08:57:23" color="">}}

{{<matomeQuote body="それがポイントだよ。Inside Out 2は期待が高すぎたんだ。もしPixarがなかったら、知らないスタジオの作品だとしたら衝撃だったはず。" userName="tootie" createdAt="2025-03-03T15:17:15" color="#ff33a1">}}

{{<matomeQuote body="その通り。Pixarは成功のせいで苦しむこともあるけど、Inside Out 2はまたInside Outなんだよね。新しい要素も驚くほどのものはない。悪くないんだけど、時には同じものが欲しいときもあるし。Flowは期待を超えたから、有名作品より多く見られたんじゃないかな。全くセリフなしで本当にいい映画っていうタグラインが人を引き寄せたんだ。" userName="bombcar" createdAt="2025-03-03T16:16:38" color="#ff33a1">}}

{{<matomeQuote body="まあ、僕には合わなかったな。全然特別でもなくて、期待も低かったのに。" userName="whatevertrevor" createdAt="2025-03-04T19:39:54" color="">}}

{{<matomeQuote body="Flowは批評家に好かれたから、時にはそれがオスカーで重要になるんだよね。" userName="lukasb" createdAt="2025-03-03T03:36:00" color="">}}

{{<matomeQuote body="彼らは観る必要はないけど、投票者は全員にスクリーenerが配られるから、観る機会はあるんだ。観たことがなくても聞いたものだけで投票するわけじゃない。アカデミーは「芸術的価値」を求める評判があって、時には興行成績が良くない作品に注目してほしいと思ってることがあるけど、結果としてダメ作品にアワードを与えることもある。" userName="jfengel" createdAt="2025-03-03T13:59:27" color="">}}

{{<matomeQuote body="ゴールデングローブでの成功で、皆が知ることになったのかな。" userName="Timwi" createdAt="2025-03-03T05:49:46" color="">}}

{{<matomeQuote body="歴史的にゴールデングローブはオスカーの最大の予測指標だから、そうなるね。でも、どうやってゴールデングローブを取ったのかは疑問だけどね。" userName="dkh" createdAt="2025-03-03T08:18:52" color="">}}

{{<matomeQuote body="『セリフなしで実際にいい映画』っていうだけで人々が観るきっかけになったんじゃないかな。サイレント映画から100年以上経った今、単純な興味でもあるし。そして、実際に良かった！レゴムービーとも似た感じだったな。" userName="bombcar" createdAt="2025-03-03T16:18:21" color="#ff5c5c">}}

{{<matomeQuote body="＞「セリフなしで実際にいい映画」がきっかけで人々が観るようになったと思う。サイレント映画から100年以上経ってるから、それだけでも興味を引くし。他のノミネートでもセリフなしの作品はあるよ。" userName="tzs" createdAt="2025-03-03T21:47:17" color="">}}

{{<matomeQuote body="Blenderを1.8の前から使ってる者として、old blender.nlフォーラムに投稿してた頃から、今の進化を見てきたのは本当にすごいことだなって思う。当時はレイトレーシングもなかったし、長編動画の制作はかなり基礎的なものしかできなかったからね。" userName="viccis" createdAt="2025-03-03T03:45:07" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
