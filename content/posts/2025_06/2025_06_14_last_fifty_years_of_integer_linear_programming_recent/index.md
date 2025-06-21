+++
date = '2025-06-14T00:00:00'
months = '2025/06'
draft = false
title = '整数線形計画法この50年！実用化を進めた最新技術に迫る 2024'
tags = ["整数線形計画法", "最適化", "アルゴリズム", "ソルバー", "NP困難"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> 整数線形計画法この50年！実用化を進めた最新技術に迫る 2024

引用元：[https://news.ycombinator.com/item?id=44274567](https://news.ycombinator.com/item?id=44274567)




{{<matomeQuote body="商用のILPソルバー（Gurobiとか）が無料やOSSのものより断然優れてるのはなんで？ILPがNP困難なほど難しいからかな？それとも、最高のソルバーは特定のサブ問題に対するヒューリスティクスの集まりだから、一般的な「良い」戦略が公開されてないってこと？" userName="aquafox" createdAt="2025/06/14 18:18:56" color="#ff5733">}}




{{<matomeQuote body="主な理由は、クライアントと密接に連携して問題固有の高速化を10～20年もやってるからだよ．MILPの世界では、これは良いヒューリスティクス（branch & bound の良い開始点やB&Bツリーの効率的な刈り込み）や、カスタムカット（非整数解を効率的に切り捨てる）を意味するね．<br>ORの研究者が特定のOR問題を選べば、独自のカットやヒューリスティクスでGurobiとかに結構簡単に勝てることも多いんだ．ソルバー企業はただ、これを博士号チームを雇って一貫してやってて、改善を追跡・監視するための大量のクライアント問題を抱えてるんだよ．" userName="christina97" createdAt="2025/06/14 19:22:31" color="#785bff">}}




{{<matomeQuote body="＞最高のソルバーは特定のサブ問題に対するヒューリスティクスの大きな集まり<br>大手の商用ソルバーは、実世界の問題に合わせて全てを調整するリソースと協力的なクライアントを持ってる．ヒューリスティクスや、単純なサブ問題・近似の認識もその一部．<br>大きな理由は、OSSソルバーがいくつかの問題で手かせ足かせされてるってことだろうね．（1）最先端開発の参入障壁が高すぎて、数学とプログラミング両方に貢献できる人が少ない，（2）それができても稼げるキャリアはOSSから遠ざける，（3）OSSの性質上、「顧客」が改善に必要な事例、パフォーマンスデータ、プロファイリングなどを貢献しにくい．<br>（2）には例外もあるけど（例：SNOPT），学術的な研究は特定のアプリケーションに焦点を当てがち（例：Clarabel）．他の分野は大手企業が買収したり資金提供したりでボトルネックを乗り越えてきた（例：Mujoco）．ソルバーでは狭い例があるけど（例：Ceres），ゼロから汎用ソルバースタックを開発する投資は法外だと考えられてきたんじゃないかな．" userName="cpgxiii" createdAt="2025/06/14 19:11:35" color="#38d3d3">}}




{{<matomeQuote body="商用ソルバーは、手持ちの問題にどの「技」が役立ちそうかを検出するための膨大な「技」の袋と優れたパターン検出メカニズムを持ってるんだ．もし自分の問題構造を知っていれば、それを活用して商用ソルバーの性能を超えることは可能だよ．でも、ランダムな問題だと、全く勝ち目はないね．" userName="whatever1" createdAt="2025/06/15 05:31:41" color="#785bff">}}




{{<matomeQuote body="＞ソルバーは特定のサブ問題に対するヒューリスティクスの大きな集まりにすぎない<br>その発言って、NP困難なもの（ILPはSATと同等だからそう）なら何にでも自明に当てはまるんじゃないの？" userName="zozbot234" createdAt="2025/06/14 18:23:25" color="">}}




{{<matomeQuote body="NP困難は厳密解や最悪ケースの話で、実用では近似解で十分速ければ良いんだ．NYCでマーケティング問題を手伝い、変数60万、制約4万をIBM OSLなどで高精度に解決した．無料で解決したのに、彼らは僕が顧客を奪うと恐れて関わろうとしなかったんだ．<br>技術で大成功しても、社内政治や恐れで追い出される例を見てきたよ．だから、もし君の技術が価値あるなら、自分でビジネスを始めるべきだね．" userName="graycat" createdAt="2025/06/14 23:52:35" color="#ff5733">}}




{{<matomeQuote body="＞弁護士や医者は恐れられないのに、最適化の専門家は恐れられる<br>最適化の専門家は大手ビジネスと競争するインフラを持ってないし、経営職を争うこともないだろう（偉大な応用数学者みんなが優れたマネージャーではない）．だから競争なんて起きないはずだ：ただ彼に高給を払って、ひどい社内政治から少し隔離すればいい -- 問題解決、みんな平和に暮らせるよ．<br>でも、あなたの例ではそうならない．だから僕が想像できる唯一の理由は、多くのオタクが学校で知ってる、いつもの不合理な「いじめ」だよ．" userName="aleph_minus_one" createdAt="2025/06/15 12:50:49" color="#38d3d3">}}




{{<matomeQuote body="それにお金をかけず、上層部に自分たちが仕事をこなせるって示すことが、外部コンサルタントを雇わない理由になることも多いだろうね．なぜ彼らに働く前に費用を聞かなかったのか、って疑問に思うかも．確かにそうだけど、彼らは「結果を見せてくれたら次に進もう」ってタイプだったんだろう．<br>別の視点では、この分野での3万～4万ドルのパイロットプロジェクトは、辛抱強く交渉すれば難しくないよ．賢い数学でコストを下げること以上に、ビジネス運営にはもっと多くのことが必要だ．だから、このステップは、大企業が競争力維持を探し始めて、会計を見て特定コストが積み重なってることに気づいた後の遅い段階で起こる．その時、君の出番だ．会社に対して君が得られた唯一の力は、あの男たちが解雇されてベンダー（理想的には君！）に取って代わられることだっただろうね！" userName="loehnsberg" createdAt="2025/06/15 08:39:35" color="#ff33a1">}}




{{<matomeQuote body="いや、NP困難問題の良いアルゴリズムは単なるヒューリスティクス以上のものになりうるよ．現代のSATソルバーが良い例だね．CDCLはエレガントだよ．" userName="fooker" createdAt="2025/06/14 20:06:05" color="">}}




{{<matomeQuote body="どんな前処理もなしのSATソルバーは、最先端のSATソルバーとは競争にならないよ．CDCLは問題の核心だけど、それだけじゃ不十分だ．CryptoMiniSATみたいに、XORゲートをエンコードする節を検出してGaussian Eliminationを使おうとするSATソルバーさえあるんだ．<br>これはILPソルバーにも当てはまる．Simplex + Branch & Cut はエレガントだ．でも、それでトップになれるわけじゃない．" userName="sirwhinesalot" createdAt="2025/06/15 08:31:21" color="#ff5733">}}




{{<matomeQuote body="規模と速度が大事だよ。例えばさ、クオンツの会社はしょっちゅう大規模な最適化をやってるんだ。オープンソースのソルバーだと、メモリ不足とかで解けないことも多いんだよね。" userName="lukebuehler" createdAt="2025/06/14 19:02:42" color="#ff33a1">}}




{{<matomeQuote body="MILPの現場では、数学とかCSのスキルより、その分野のエンジニアリングの知識が超大事なんだ。OR部門が数学科とかCS科から独立してるのはそのためだよ。プロのエンジニアにOSSが広まらないのは、彼らが責任を負ってるから。気軽にリブートして“何も問題なかった”って顔はできないんだよ。" userName="FilosofumRex" createdAt="2025/06/14 21:30:24" color="#45d325">}}




{{<matomeQuote body="IBMのILOGっていうライブラリで資源配分ツール作った時の話なんだけどね。20年前に同じツール作ってたら、今5分で解けてる問題が20年経ってもまだ計算中だっただろうなって思ったよ。コンピュータの性能が千倍、アルゴリズムも千倍で、合計百万倍くらい進化したんだ。将来を考えるときに覚えておくといい話だね。ちなみに、資源はダイヤモンドだったんだよ。" userName="dcminter" createdAt="2025/06/14 17:44:35" color="#45d325">}}




{{<matomeQuote body="これって実際にはどう使われてるの？なんかデータの問題（データが信頼できなかったり、悪かったり）でうまくいかなくて、結局偉い人が勘で決めちゃうんじゃないかって思っちゃうんだけど、どうなんだろうね？" userName="tormeh" createdAt="2025/06/14 20:25:36" color="">}}




{{<matomeQuote body="うちの会社じゃ電力分野でソルバーをめっちゃ使ってるよ。家の蓄電池とかEVを最適にスケジュールしたり、それらをまとめてポートフォリオとして最適化したり、そのポートフォリオのトレードも最適化してるんだ。EUの電力スポット価格も、Euphemiaっていう巨大なソルバーで毎日決めてるんだって。最適化の明確な目標と、リアルなお金がかかってる分野なら、どこでもソルバーだらけだよ。" userName="jakewins" createdAt="2025/06/14 21:03:07" color="#ff33a1">}}




{{<matomeQuote body="うちはFMCGの会社だけど、実際に使ってるよ。1. 営業担当とか配送のルート計画。2. 生産現場での機械、人、材料のスケジューリング。3. 倉庫の在庫レベルの管理。在庫レベルは需要予測が難しいから、これは全部自動ってわけじゃないけどね。" userName="ies7" createdAt="2025/06/14 23:03:29" color="#ff33a1">}}




{{<matomeQuote body="ケーススタディを読んでみるといいよ。Gurobi、CPLEX、Hexaly（前のlocalsolver）のサイトに載ってるから、このリンクを見てみて。<br>Gurobi: https://www.gurobi.com/case_studies/<br>CPLEX: https://www.ibm.com/products/ilog-cplex-optimization-studio/...<br>Hexaly: https://www.hexaly.com/customers" userName="shoo" createdAt="2025/06/15 00:10:50" color="#785bff">}}




{{<matomeQuote body="Gurobiってけっこう高いらしいけど、誰か値段を知ってる人いないかな？" userName="djoldman" createdAt="2025/06/14 13:23:39" color="">}}




{{<matomeQuote body="値段は秘密だから言えないけど、ちょっとMIPを試すだけなら、すごく高いBIG3（XPRESS, Gurobi, CPLEX）を買う必要はないよ。これらは学生なら無料が多いけどね。商用じゃなければ無料で使える良いオープンソースのMIPソルバーが二つあるよ。<br>Highs: https://highs.dev/<br>SCIP: https://www.scipopt.org/" userName="Chio" createdAt="2025/06/14 14:38:23" color="#ff5733">}}




{{<matomeQuote body="それら（Highs, SCIP）は、lp_solve (https://lpsolve.sourceforge.net/5.5/index.htm)と比べるとどうなの？性能とか。" userName="nrclark" createdAt="2025/06/14 15:39:25" color="">}}




{{<matomeQuote body="Mittelmann benchmarksをチェックしてみたら？： https://plato.asu.edu/bench.html" userName="loehnsberg" createdAt="2025/06/15 08:42:57" color="#ff5c5c">}}




{{<matomeQuote body="両方使ったことあるけど、それらはマジでめっちゃ速くて、信頼性もめっちゃ高いし、ちゃんとサポートもあるんだよ。何百万ドルものプロダクトを動かすのに、しっかりしたサポートがないものは使いたくないでしょ？" userName="7thaccount" createdAt="2025/06/14 23:46:14" color="#45d325">}}




{{<matomeQuote body="Gurobiは一時的な無料ライセンスが手に入るよ。問題サイズは1000ノードに制限されるけど、ツールの使い方や問題のセットアップを学ぶことはできるんだ。もしGurobiが必要な問題なら、有料で使う価値は絶対あるよ。営業チームに話してみたら？喜んでスタートを助けてくれるはずだよ。彼らは、一度その使い方を知って、問題をどう解決できるか分かれば、将来的に使いたくなるってことを知ってるからね。" userName="wombatpm" createdAt="2025/06/14 19:35:06" color="#45d325">}}




{{<matomeQuote body="＞Gurobiが必要なら有料で使う価値は絶対あるよ。<br>この発言は、それが“ビッグマネー”の問題だっていう前提に基づいてるよね。その一方で、Gurobiが役立つけど（研究者にはお金がない）、研究者にとって面白い問題もたくさん知ってるよ。" userName="aleph_minus_one" createdAt="2025/06/15 12:56:49" color="">}}




{{<matomeQuote body="もし“研究者っぽい”問題なら、誰か研究論文としてまとめてくれる人を見つけられるかもしれないね。そうすればアカデミックライセンスの下に簡単に入れられるだろうし。ある程度、商用ライセンスを買うっていうのは単に秘密保持にお金を払ってるだけなんじゃないかな。" userName="zozbot234" createdAt="2025/06/15 14:02:36" color="">}}




{{<matomeQuote body="それは本当じゃないよ：Gurobiのアカデミックライセンスを手に入れるには、学位を授与する学術機関のメンバーである必要があるんだ（そうじゃないと誰でも簡単に（違法に）手に入れられちゃうからね）：<br>＞https://www.gurobi.com/academia/academic-program-and-license...<br>“あなたは、認められた学位授与学術機関の教員、学生、または職員でなければなりません。[...]ライセンスをアクティベートするには、認められた学術ネットワークから接続する必要があります。”" userName="aleph_minus_one" createdAt="2025/06/15 14:45:40" color="#38d3d3">}}




{{<matomeQuote body="それに、セットアップがマジでクソ面倒くさいんだよ… 大学でGurobiのアカデミックライセンスを何回再アクティベートしなきゃいけなかったか…<br>でも速度はそれだけの価値が絶対あるね、幅広い問題クラスで他の代替手段と文字通り何桁も違う速さだよ。それに、bindingsも十分良いから、C++に落ちる必要なんてめったにないし。" userName="ViscountPenguin" createdAt="2025/06/16 03:31:50" color="#ff5733">}}




{{<matomeQuote body="もし、どんな学位授与機関のランダムなメンバー（ランダムな研究スタッフ、学生、非常勤講師でもいいけど）さえも、あなたの最適化問題に研究として発表できるような興味を持ってくれないなら、それは本当に“研究者っぽい”問題とさえ言えるのかな？" userName="zozbot234" createdAt="2025/06/15 15:13:29" color="">}}




{{<matomeQuote body="他のオープンソースのソルバーだよ：<br>・Timefold Solver（MIPじゃないけど、車両ルーティング、ジョブスケジューリング、シフトロースタリングとかに特化してる）： http://solver.timefold.ai<br>・COIN-ORにはいくつかのソルバーがあるよ： https://www.coin-or.org/<br>・Choco" userName="ge0ffrey" createdAt="2025/06/17 11:43:32" color="#785bff">}}




{{<matomeQuote body="GoogleのOrtoolsはベンチマークの結果が良かったんだってさ。" userName="antman" createdAt="2025/06/14 15:52:48" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="価格表はそんなに秘密じゃなかったみたい。営業の人と話した感じだと、ライセンスの種類によるけど、標準のだと年間1.5万ドルくらいだったって聞いたよ。無料トライアルもあるし、学生ならもっと長く無料かな。" userName="steine65" createdAt="2025/06/15 18:24:49" color="">}}




{{<matomeQuote body="聞いた話だから確認はできないんだけど、価格は「問い合わせてね」だけで、そしたらどんだけ儲けてるか探って、そこからいくらか要求してくるらしいよ。" userName="RainyDayTmrw" createdAt="2025/06/14 14:55:21" color="">}}




{{<matomeQuote body="なんでみんなそんなに大げさに秘密だって思ってるのか謎だなー。コア限定ライセンスなら、1シートで1万ドルくらいだよ。" userName="almostgotcaught" createdAt="2025/06/14 15:37:30" color="#ff5c5c">}}




{{<matomeQuote body="へぇ、こんなにみんなコソコソ言ってるから、価格は10倍くらいするのかと思ってたよ。俺なんて全然すごい人じゃないけど、別の製品で年間1.3万ドルくらいのライセンス持ってるし。" userName="0cf8612b2e1e" createdAt="2025/06/14 20:23:33" color="">}}




{{<matomeQuote body="最適じゃない決定をゆっくり下すより、ずっと安い投資だよ。無料ソルバーのGLPKとかは小さい問題にはいいけど、ビジネスの多くの問題は、プレミアムソルバーのGurobiとかにお金を出さないと、決められた時間内にはまず解けないんだ。" userName="edot" createdAt="2025/06/14 16:00:05" color="#ff5c5c">}}




{{<matomeQuote body="10年くらい前に確認した時はね、複数ユーザーでサーバーでも使えるフルライセンスが10万ドルくらいだったんだ。シート数とかサーバーの制限は正確には覚えてないけど。あと、業界の多くの人にとっては、この価格は十分価値があると思うよ。" userName="quanto" createdAt="2025/06/14 17:17:05" color="">}}




{{<matomeQuote body="Gurobiは時間単位で払えるクラウドサービスもあるよ。アカデミックじゃない普通のフルライセンスはやっぱり高いけどね。" userName="cschmidt" createdAt="2025/06/14 16:36:21" color="">}}




{{<matomeQuote body="CPLEX、GUROBI、FICOみたいな最高のMIPソルバーは、アカデミック以外の人にとってはめちゃくちゃ高いんだ。無料のソルバーは小さい問題には使えるけどね。Mosekみたいに結構お手頃で、良い中間地点のソルバーもあるよ。ほとんどの組織にとっては、価格は得られるものに見合ってると思うな。" userName="7thaccount" createdAt="2025/06/14 23:48:28" color="#ff5733">}}




{{<matomeQuote body="誰かこのスレッドで「めちゃくちゃ高い」ってのを具体的にいくら教えてくれないかなー。こんなにいっぱいメッセージあるのに、結局いくらするのか全然分からないままだよ。" userName="jwr" createdAt="2025/06/15 01:59:03" color="">}}




{{<matomeQuote body="Gurobiのライセンスは結構高いみたいだよ。コア制限だと1万〜1万5千ドルくらいかかる（このURLも見てみてね: https://news.ycombinator.com/item?id=44277010）。ネットワークライセンスはもっと高いんだ。データポイントとしては、https://www.solver.com/gurobi-solver-engine-lpmip-software にある特定の製品向けGurobiライセンス入りプラグインが1万500ドルだって。" userName="aleph_minus_one" createdAt="2025/06/15 13:22:08" color="#45d325">}}




{{<matomeQuote body="安くはないけど、無料ソルバーに比べて品質がすごくいいから、実際はかなり妥当な値段だと思うよ。MILPが必要な製品を作るなら、投資する価値はあるね。" userName="__alexs" createdAt="2025/06/14 18:18:48" color="#45d325">}}




{{<matomeQuote body="＞MILPが必要な製品を作るなら、投資する価値はあるね。<br>というより、確実にめっちゃ儲かる製品でMILPが必要なら、価値があるんだよ。オタクが考えるプロダクトのコンセプトって、すごく革新的でも、個人的なサイドプロジェクトが多いからね。" userName="aleph_minus_one" createdAt="2025/06/15 13:29:54" color="#38d3d3">}}




{{<matomeQuote body="オンデマンドの料金はかなりリーズナブルだよ。" userName="__alexs" createdAt="2025/06/15 20:43:43" color="">}}




{{<matomeQuote body="＞オンデマンドの料金はかなりリーズナブルだよ。<br>その主張のテストケースね。誰かがGurobiを最適化バックエンドとして使って、プライベートで集中的にオープンソース製品を開発してるとするじゃん。オンデマンド料金はめちゃくちゃ高くなると思うけどな。" userName="aleph_minus_one" createdAt="2025/06/15 21:22:40" color="#38d3d3">}}




{{<matomeQuote body="この状況だと、オープンなモデルで開発してGurobiは別途プラグインとして組み込むのがベストだと思うよ。Gurobiのレベルの品質が必要な問題に取り組んでるなら、誰かがお金を出してそれを開発させる（そしておそらく非公開にする）はずだよ。" userName="__alexs" createdAt="2025/06/17 08:35:47" color="#ff5c5c">}}




{{<matomeQuote body="＞オープンなモデルで開発してGurobiは別途プラグインとして組み込むのがベストだと思うよ。<br>結局、俺もそうしたよ。<br>＞誰かがお金を出してそれを開発させるはずだよ。<br>これは猛反対だな。素晴らしいMILPソルバーを使えばめっちゃ利益が出る問題は山ほどあるけど、そのうち商業ポテンシャルが巨大なのはごく一部。たとえ商業ポテンシャルが凄くても、素晴らしいアプリケーションやモデルを作るスキルと、大金を持ってる誰かを説得したり接触したりするスキルは全く関係ないんだよ。" userName="aleph_minus_one" createdAt="2025/06/17 10:50:01" color="#45d325">}}




{{<matomeQuote body="うちの場合、CPLEXの10倍以上の値段だったよ。" userName="jcd000" createdAt="2025/06/15 08:35:08" color="#45d325">}}




{{<matomeQuote body="そういえば、90年代に学習でMapleでGomoryカット超平面の実装をしたっけ。現場は進歩したもんだね。<br>＞もし90年代初頭にLPを解くのに2ヶ月かかっていたとしたら、今日では1秒もかからないだろう。<br>最近、BixbyがCPLEXとGurobiのMILPソルバーの機械依存しない性能を90年と20年で比較してて、4×10^6倍近く速くなったって報告してるよ。" userName="FabHK" createdAt="2025/06/14 17:14:27" color="#ff5733">}}




{{<matomeQuote body="こういう問題にML/AIベースのアプローチがかなり不足してる気がするな。小さい問題を解こうとするRL/GNNの論文例はたくさん見るけど、結局Gurobiライセンス買って使えばいいってのがベストオプションに感じる。最近スケジューリング最適化（ジョブショップスケジューリングに近い）やってるんだけど、RLを使った例もあるけど全くダメそう。でかい問題には進化アルゴリズムでそこそこの解を得るようにしてるよ。問題をうまく定式化できるなら、やっぱりORタイプのアプローチを使うのが常に効率的なのかもしれないね。" userName="beret4breakfast" createdAt="2025/06/14 18:19:50" color="#38d3d3">}}




{{<matomeQuote body="問題によるけど、GurobiみたいなMILPソルバーは電力のユニットコミットメント問題とか超複雑なやつでも最適な答えをすぐ見つけられるんだ。遺伝的アルゴリズムとかニューラルネットワークだと、局所最適解にハマったり、あんまりいい答えが出ないこともあるしね。" userName="7thaccount" createdAt="2025/06/14 23:43:04" color="#38d3d3">}}




{{<matomeQuote body="SATってのは古典的なAIの問題なんだ。MLとかAI系のプログラミング言語でもSATソルバーは書けるから、ML/AIアプローチだって全然適用できると思うよ！" userName="zozbot234" createdAt="2025/06/14 18:30:05" color="">}}




{{<matomeQuote body="1988～2004年でハードは1600倍、LPソルバーは3300倍速くなって、合計5×10⁶倍以上のスピードアップだって（20年前の話だけど）。2001～2020年のMILPソルバーはアルゴリズムで50倍、PCで20倍で合計1000倍だってさ。こういうアルゴリズムとハードの寄与率って、他の分野（コンパイラのProebsting’s Lawみたいに）でも集計したら面白そう！" userName="pradn" createdAt="2025/06/15 04:05:15" color="#45d325">}}




{{<matomeQuote body="タイトルに[pdf] [2024]って付けた方がいいかもね。" userName="perching_aix" createdAt="2025/06/14 14:20:25" color="">}}




{{<matomeQuote body="論文への参照を追加すればいいんじゃない？<br>https://inria.hal.science/hal-04776866v1/document" userName="wslh" createdAt="2025/06/14 14:50:55" color="#45d325">}}




{{<matomeQuote body="そのリンク、PDFじゃなくてアブストラクトを指してるよ。" userName="gcr" createdAt="2025/06/14 14:39:58" color="">}}




{{<matomeQuote body="投稿者がわざとアブストラクトを上げたわけじゃないなら、あのリンクはPDFのはずだよ。もしこのフォーラムで[pdf]タグがアブストラクトを意味するなら納得だけど、それなら自動でタグ付けできるはずなのに、なんでやらないのか不思議でちょっとイライラするなー。" userName="perching_aix" createdAt="2025/06/14 14:53:26" color="">}}




{{<matomeQuote body="[pdf]っていうのは、リンクが直接PDFをダウンロードするって意味だよ。" userName="gammarator" createdAt="2025/06/14 17:20:17" color="">}}




{{<matomeQuote body="アブストラクトを読んでからPDF読む人もいるし、サイトによってはHTMLで読める場合もあるんだよ。[PDF]タグの目的は、モバイルで見にくいとか、ダウンロードサイズ、ダークモードだと眩しいかも、って注意喚起するためじゃないかな。" userName="layer8" createdAt="2025/06/14 19:51:38" color="">}}




{{<matomeQuote body="グラフの3彩色（G3C）はNPでNP困難、だからNP完全（NPC）だよ。一般のILPが解ければ、一般のG3Cも解けるっていう結果があるんだ。充足可能性問題（SAT）もNPでNP困難、だからNP完全（NPC）で、G3Cと同等だよ（ある定義のもとではね）。一般のILPが解ければ、一般のG3Cも解けるっていう結果があるんだ。任意のG3C問題が解ければ、整数を素因数分解できるって知られてる。整数を素因数分解する問題（FAC）はNPCじゃないけど、今日のコンピューティング環境では明らかにすごく重要だよね。だから、任意のILP問題が解ければ、現在の安全だと思われているいくつかの暗号アルゴリズムを破れることになるんだ。だから、ILPは解くのがかなり難しい問題だって推測できるね。多くの人が騙されるのは、NPC問題のランダムなインスタンスは簡単になりがちだってこと。難しいインスタンスの核は、問題が大きくなるにつれて（相対的に）小さくなるから、例えばランダムなグラフを選んだとしたら、頂点を3彩色するのって、たぶん見つけるのが簡単か、存在しないことを示すのも簡単だよ。" userName="ColinWright" createdAt="2025/06/14 20:48:58" color="#ff5c5c">}}




{{<matomeQuote body="巡回セールスマン問題（TSP）をILP問題としてエンコードできるから、かなり手ごわい問題だよ。" userName="arnsholt" createdAt="2025/06/14 17:03:42" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これは実はちょっと微妙な例なんだよね。concordeソルバーを見てみてよ、実際にはすごく大きなTSPのインスタンスでも最適解を見つけられるからさ。最適解を見つけるのが普通はもっと難しい、パッキング問題やカバリング問題みたいにもっと厄介な組み合わせ問題はたくさんあるよ。" userName="luiwammus" createdAt="2025/06/14 17:37:34" color="">}}




{{<matomeQuote body="要点は整数計画法のNP完全性にあるんだよ。" userName="robotpepi" createdAt="2025/06/14 19:29:52" color="">}}




{{<matomeQuote body="NP完全性って、実用上はあんまり関係ないことが多いんだ。親コメントも言ってたようにね。テクニカルにはNP完全な問題が根底にあるのに、ほとんどのインスタンスで最適解が簡単に見つかる応用例はたくさんあるよ。NP完全だから効率的に解けないインスタンスも構築できるけど、実際にそんなのに遭遇するかは別問題。さらに、誤差の範囲が決まってる効率的な近似解があるケースも多いし、その誤差はいくらでも小さくできるかも。分かりやすい例だと、アイテムのサイズがリュックのサイズの1％より大きくならないナップサック問題を考えてみて。アイテムをサイズあたりの価値でソートして詰め込むだけの単純なO（N log N）の近似アルゴリズムがあるけど、これで最適解に近い答えが出るんだ。NP完全なのにね。複雑性理論はすごいけど、それで誤解しちゃうこともあるんだ。" userName="nullc" createdAt="2025/06/15 18:30:56" color="#38d3d3">}}




{{<matomeQuote body="線形計画法（LP）より整数線形計画法（ILP）の方が難しいって話だね。" userName="thrance" createdAt="2025/06/14 17:04:15" color="">}}




{{<matomeQuote body="LPよりILPは全然難しいよ。ILPはSATと同じくらい難しいのに、LPはPolynomial-timeだからね（実際は今のアルゴリズムだとweakly polynomial-timeだけど）。" userName="lambdaone" createdAt="2025/06/14 17:19:07" color="">}}




{{<matomeQuote body="俺はいつもSimplex法使ってるんだけど、あれは速いけど最悪ケースだとPolynomialじゃないんだよね。" userName="firesteelrain" createdAt="2025/06/14 18:20:44" color="">}}




{{<matomeQuote body="SimplexとかBarrierとかPDLPとか色んなソルバーをまとめて動かして、最初に結果が出たやつを選べばいいんだよ。後の二つは普通遅いけどPolynomial-timeだから、結局勝てる。でもSATやILPではそれはできないね。" userName="sirwhinesalot" createdAt="2025/06/15 08:42:10" color="#45d325">}}




{{<matomeQuote body="Simplexは普通速く動くし、BarrierとかPDLPはLPには役立つよね。でもSATとかILPには手っ取り早い方法がないんだ。いくつか試して一番速いのを選ぶなんてできない。そういう問題はとにかく難しいんだよ。" userName="firesteelrain" createdAt="2025/06/20 21:08:34" color="">}}




{{<matomeQuote body="ILPは、ある条件を一番良く満たす整数を見つけなきゃいけない。これは実数とは根本的に違うんだよ。見た目は他の数値問題とそっくりだけど、一般的な解法はなくて、特定のクラス向けにすごく良いheuristicがあるだけなんだ。" userName="tgv" createdAt="2025/06/14 17:29:17" color="#ff5733">}}




{{<matomeQuote body="普通のLPでさえ、1980年代くらいまでP-timeだって知られてなかったんだって。" userName="throwaway81523" createdAt="2025/06/14 23:06:39" color="">}}




{{<matomeQuote body="親コメントは複雑性理論に詳しくなさそうだったからシンプルにしたんだけどね。でもSimplex法ってずっと古いと思うんだ。1947年まで遡るらしいし。なんで80年代まで知られてなかったって言うの？話が違う？" userName="tgv" createdAt="2025/06/15 16:07:06" color="#785bff">}}




{{<matomeQuote body="nullcが言ってたように、Simplex法は一部の病的例（測度0の空間だけどね）だと指数時間かかることがあるんだ。最初のP-timeのLPアルゴリズム（と証明）は80年代のKhachianのellipsoid methodだった。あれは実用的じゃなかった印象。後に出てきたKarmarkarのinterior-point methodは今も使われることがあって（特定のLPだとSimplexより速いらしい）、俺の理解ではね。でも、この分野は全然専門じゃないんだ。" userName="throwaway81523" createdAt="2025/06/16 04:30:21" color="#45d325">}}




{{<matomeQuote body="Simplexアルゴリズムは、平均的にはすごくうまく動くんだけど、「最悪ケース」だと指数関数的な時間になっちゃうんだよ。" userName="nullc" createdAt="2025/06/15 18:33:46" color="">}}




{{<matomeQuote body="ずっと多項式時間で解けるもんだと勝手に思い込んでたわ。この記事のおかげでわかったよ、ありがとう！" userName="tgv" createdAt="2025/06/16 07:39:32" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
