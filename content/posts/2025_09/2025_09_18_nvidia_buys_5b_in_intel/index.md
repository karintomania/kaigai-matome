+++
date = '2025-09-18T00:00:00'
months = '2025/09'
draft = false
title = 'NvidiaがIntelに50億ドル出資！GPU市場に衝撃走る？'
tags = ["Nvidia", "Intel", "GPU", "投資", "Linux"]
featureimage = 'thumbnails/light_colour3.jpg'
+++

> NvidiaがIntelに50億ドル出資！GPU市場に衝撃走る？

引用元：[https://news.ycombinator.com/item?id=45288161](https://news.ycombinator.com/item?id=45288161)




{{<matomeQuote body="NvidiaのIntelへの出資はヤバいことになるかも。まず、IntelのArc graphicsを潰したがるだろうし、ArcはGPU価格を下げてくれる唯一の存在だから困る。次に、Intel graphics / ArcがなくなるとLinuxにとっても最悪だ。IntelはGPUドライバが互換性最高なのに、NvidiaはLinuxドライバに敵対的だからね。三番目に、Intelは消費者向けグラフィック仮想化（SR-IOV）を売ってる唯一の会社だし、それがなくなるとNvidiaの企業向けチップだけが残って、消費者は性能も柔軟性もセキュリティも損するよ。" userName="evanjrowley" createdAt="2025/09/18 16:22:10" color="#38d3d3">}}




{{<matomeQuote body="結論: AMDを買え。Linuxのサポートは15年前から最高。バグも直してくれる。NvidiaのGPUはベンチマークだと速いけど、それも他社がNvidia用に最適化してるだけじゃないか？<br>Nvidiaのせいでずっと苦労してきた。クローズドソースドライバ、アウトオブツリードライバ、Waylandを無視（または害する）。みんな暗黙の同期をうまく扱うのに、Nvidiaだけ明示的な同期が必要[1]。ひどいドライババグは“バグじゃなくて機能”だって言うし。<br>悪名高いバグ: ビデオメモリの内容が失われた時にアプリが再構築できるようにする拡張機能だよ。10年近くたつのに直してないんだ！サスペンド/レジュームやVT-Switchでビデオメモリが消えるんだって。やっと誰かがX11とGNOME用に回避策を見つけてくれた。Wayland用も誰か実装しててほしい。<br>俺らが求めてるのは信頼性とLinuxサポート。だからAMDを買う。前はIntelだった。<br>[1] 暗黙的同期と明示的同期どっちが良いかは判断しない。https://registry.khronos.org/OpenGL/extensions/NV/NV_robustn...<br>https://www.phoronix.com/news/NVIDIA-Ubuntu-2025-SnR" userName="ho_schi" createdAt="2025/09/18 21:04:38" color="#ff5733">}}




{{<matomeQuote body="どうやら5%の出資らしいね。それだけでIntelのiGPUを潰す影響力があるのかな？だとしたら変だ。IntelのiGPUはニッチだけど、めちゃくちゃいいソリューションだよ。IntelのdGPUは危ない位置にいるかもしれないけどね（今に始まったことじゃないけど）。IntelのiGPUがダメになるのは、日頃Linuxデスクトップを使ってる人たちにとってはとんでもない損失だ。dGPUがなくなってもそんなに大損失とは思わないけど。" userName="bee_rider" createdAt="2025/09/18 17:55:55" color="">}}




{{<matomeQuote body="必ずしもそうじゃない。これはMicrosoftが破産したAppleに資金提供した時みたいな状況かもしれない。アメリカの競争はゼロサムゲームじゃないし、市場を健全に保つのはNvidiaの利益にもなるはずだ。" userName="lacy_tinpot" createdAt="2025/09/18 18:11:00" color="">}}




{{<matomeQuote body="IntelのiGPUはそんなに危険じゃないと思う。ローパワーGPU市場はそもそもあんまり儲からないし。Nvidiaがどんなチップでも売れるなら、利益の少ないチップに開発時間やファブの時間を無駄にしないだろう。GT 1030（Pascal）も後継が出なかったし、そのラインは事実上死んでる。<br>とはいえ、dGPUは確かに多少リスクがあるけど、Intelが最近コスト削減してるし、もともとドル箱じゃないから、今回の投資でリスクが少し高まっただけだと思うよ。" userName="tart-lemonade" createdAt="2025/09/18 19:13:24" color="#ff33a1">}}




{{<matomeQuote body="これは本質を見誤ってると思うな。データセンターGPU市場はNvidiaにとって消費者向けGPU市場の10倍の規模だし（まだ成長中）。消費者向けで数%余計に勝っても優先順位は低い。Nvidiaはデータセンター市場向けCPUを持ってないし、ARM買収もブロックされた。CPU側で仲間を作るのは彼らの利益になる。Nvidiaはファブレスで、TSMCにサプライヤーと地政学的リスクが集中してる。Intelは数少ない主要なオンショアファブの一つで、これがあればNvidiaのサプライヤー交渉力を大幅に改善し、地政学的リスクをヘッジできる。" userName="arkmm" createdAt="2025/09/18 21:48:59" color="#45d325">}}




{{<matomeQuote body="同意だね。Iris graphicsを置き換えようとするのは金にもならないし、超無意味だろう。だって統合グラフィックスを買う人たちは、ゲーミング、デバイス内AI、仮想通貨なんて全く関係ない層だし。それがPC市場の80%以上を占めるけど、すでに十分サービスされてるしね。<br>俺はこの動きをSnapdragon X Eliteの有力な競争相手を作るためだと見てるよ。もしこのRTXチップが強力なら、AMD APUも打ち砕くかもね。" userName="xp84" createdAt="2025/09/18 19:24:48" color="#ff5733">}}




{{<matomeQuote body="MicrosoftのAppleへの投資は世界にとって役立ったよね。" userName="mensetmanusman" createdAt="2025/09/18 18:15:14" color="">}}




{{<matomeQuote body="「American competition isn’t a zero sum, and it’s in Nvidias’ best interest to keep the market healthy.」Googleの最近の反トラスト法和解を見ると、現状ではこれは真実じゃないと思うな。" userName="rapind" createdAt="2025/09/18 18:19:05" color="">}}




{{<matomeQuote body="Appleユーザーだけど、Appleが昔潰れてたらよかったのにって思う。スマホが再発明されてたら、2社独占じゃなく、多様なOSで4社くらいが競ってて、Webプラットフォームがもっと早く発展したんじゃないかな。Appleがここまで支配的だったのは、世界にとって良くないと思うよ。" userName="xp84" createdAt="2025/09/18 19:29:23" color="#ff5733">}}




{{<matomeQuote body="「信頼性とLinuxサポートが必要だ」って言うけど、NVidiaは実際、そこらへんかなり良いぞ！オープンソースドライバはいいけど、AMDは15年経ってもLinuxでバグ多いし。NVidiaはLinuxでもFreeBSDでもちゃんと動くんだよ。「同期どっちが良いか判断しない」って言うけど、ちゃんと判断しろよな。" userName="lmm" createdAt="2025/09/19 01:17:00" color="">}}




{{<matomeQuote body="「NVidiaは優れてる」って言うけど、それは彼らが真剣ならだろ。Linuxでは適当だから、WaylandやPRIMEみたいなのの対応が何十年も遅れてるんだよ。実際サポートはひどいし、アップストリームドライバもない。LinuxユーザーはNvidiaなんか絶対買うな！" userName="shmerl" createdAt="2025/09/19 05:48:14" color="">}}




{{<matomeQuote body="Nvidiaは市場を活発に保つために競合に投資するか、政府に分割されるかの二択だ。これがアメリカの競争のやり方だよ。独占は会社にも市場にも良くないからね。Nvidiaが独占禁止法訴訟を恐れてるなら、Intelに投資するのが一番得策ってわけ。これがアメリカ資本主義さ。" userName="lacy_tinpot" createdAt="2025/09/18 19:24:39" color="#ff5c5c">}}




{{<matomeQuote body="もしかしたら、今もBlackBerryみたいなデバイスを使ってるか、もっとひどくWindows CEとかPalmみたいなペン操作のデバイスだったかもしれないな。" userName="tracker1" createdAt="2025/09/18 20:08:38" color="">}}




{{<matomeQuote body="「ゲーミングは重要じゃない」ってのは嘘だろ。俺も友達も統合グラフィックだけでゲームしてるし。RDR2みたいな重いのはやらないけど、ちゃんとゲームは楽しんでるぜ。" userName="kmacdough" createdAt="2025/09/18 19:37:21" color="">}}




{{<matomeQuote body="「NvidiaはTSMCに頼りすぎでリスクがある」って話だけど、TSMCもSamsungもアメリカに最先端工場建ててるじゃん。地政学リスク軽減のためだろうな。でも、なんでNvidiaはSamsungのファブを使わないんだ？TSMCにかなり近い技術力あるのに。" userName="throwaway2037" createdAt="2025/09/19 00:04:47" color="#785bff">}}




{{<matomeQuote body="「Linuxでは適当」って何言ってんだ？俺はNvidiaをLinuxやFreeBSDで使ってるけど、全然問題なく動くぞ。特定の機能がないってなら分かるけど、安定性やLinuxサポートがないって話じゃないだろ。ちゃんとあるんだから。" userName="lmm" createdAt="2025/09/19 07:53:15" color="">}}




{{<matomeQuote body="機能の実装にめちゃくちゃ時間かかるのは、サポートが悪いってことの完璧な証拠だろ。タイムリーなサポートって、ただのサポートと同じくらい大事なんだよ。" userName="shmerl" createdAt="2025/09/19 17:55:15" color="">}}




{{<matomeQuote body="今の政権じゃ、Nvidiaがそんな心配してるなんて考えられないな。" userName="mcintyre1994" createdAt="2025/09/18 19:46:11" color="">}}




{{<matomeQuote body="Intelはディスクリートカードを売ってるし、次のカードはAIとゲームでNvidiaの中〜低価格帯カードと半額で競合するはずだったんだよね。市場をひっくり返すはずだったのに。クリスマスまでに出るはずだったカードの音沙汰がない理由、これで納得だわ。" userName="behringer" createdAt="2025/09/18 23:03:16" color="#ff33a1">}}




{{<matomeQuote body="NvidiaはファブレスでTSMC依存、地政学リスクがあるけど、4兆ドルの大企業ならAIやロボット技術を駆使してPMCで台湾も守れちゃうかも。台湾が攻撃されたらNvidiaの評価額が1〜2兆ドルも下がるから、この損失を避けるためにどんな手があるか想像しちゃうよね。イラク戦争のコストと比べると、台湾防衛はもっと効率的だよ。" userName="trhway" createdAt="2025/09/19 00:44:51" color="#ff5733">}}




{{<matomeQuote body="IntelがディスクリートGPUを捨てちゃうってのは大損失じゃないって意見もあるけど、いやいや、一般のGPU購入者にとってはとてつもない損失だよ。何年もひどい価格性能比が続いてた中で、第三の主要な競争相手がいなくなるのは市場にとって最悪だからね。" userName="sodality2" createdAt="2025/09/18 18:24:04" color="#ff33a1">}}




{{<matomeQuote body="まさに同感。IntelハードウェアのLinuxサポートを好んで使うLinuxユーザーとしては、本当に未来が暗く見えるよ。" userName="matheusmoreira" createdAt="2025/09/18 17:42:35" color="">}}




{{<matomeQuote body="Nvidiaはデータセンター向けCPUを持ってないし、ARM買収もブロックされたからCPU側に味方が欲しいって言うけど、誰かNvidiaに教えてあげてほしいな。彼らはGrace CPU Superchipでデータセンター向けCPUがあるって思ってるみたいだよ。<br>https://www.nvidia.com/en-us/data-center/grace-cpu-superchip..." userName="tw04" createdAt="2025/09/19 00:16:21" color="#45d325">}}




{{<matomeQuote body="君はプロダクトマネージャー？それとも自分のコメントの皮肉に気づいてない？長期サポートってのは、今動いてるものがずっと動き続けるって意味でしょ。新機能実装はそれとは関係ないし、むしろ長期サポートに反することだって言える。Nvidiaも、NvidiaがサポートするまでどのディストリビューションもX11を捨てなかったってことを考えると、正しいように思えるけどね。" userName="jpc0" createdAt="2025/09/20 06:11:24" color="">}}




{{<matomeQuote body="AMDを買えばLinuxサポートが優れてるって結論、面白いね。でもAMDのインツリードライバって結構面倒だよ。新しいGPUが出ると、最大1年間はディストリビューション外のMesaやカーネルパッケージを使わないといけないし。新品のNvidiaカードなら最新のプロプライエタリドライバを入れれば動くのにね。Linuxのドライバモデルは新しいハードウェアには優しくないよ。もちろんNvidiaのドライバは良くないからAMDを買うけど、前に比較的最近出たAMDカード買った時は最初の半年が大変だったな。" userName="mort96" createdAt="2025/09/19 10:20:56" color="#ff33a1">}}




{{<matomeQuote body="これはAMDにとって長期的な存続の脅威になりそうだね。AMDのCPUとGPUの組み合わせはMI300+やStrix Haloなどでようやく強くなってきて、Nvidiaにはないx86向けに最適化されたコードを実行できる利点があるのに。もしGrace BlackwellがArmじゃなくてx86チップだったらって想像してみて。もしNvidiaがIntel CPUを製品に取り込めたら、既存のブランド力と市場支配力を使って、新しい市場を完全に席巻したり、現在の地位を固めたりする準備が整うかもしれないね。" userName="upboundspiral" createdAt="2025/09/18 21:08:24" color="#ff33a1">}}




{{<matomeQuote body="独占禁止法さえあればなあ。" userName="random3" createdAt="2025/09/18 18:16:40" color="">}}




{{<matomeQuote body="以前Nvidiaのmini pcでCUDA開発してたんだけど、サポートが切れてアプデできなくなったんだ。だからNvidiaは合わないなーって思ったんだよね。<br>でも、新しいPC買うためにリサーチしたら、AMDもROCmが対応してないシステムが多いし、Linuxのグラフィックドライバも悪いって聞いたんだ。<br>結局今はIntelの内蔵グラフィックで我慢してるよ。GPUが高すぎるから、こんな馬鹿げたことに付き合ってられないよ。" userName="bobajeff" createdAt="2025/09/18 22:44:39" color="">}}




{{<matomeQuote body="IntelのGPUって、ハイエンドゲーミングとかAI、あとはいくつか特別なタスク以外なら、ほとんどのコンピューティングで最高のソリューションじゃん？<br>多くの場合、高性能GPUはオーバースペックで電力の無駄だよ。" userName="beached_whale" createdAt="2025/09/18 23:06:56" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これはIntelのGPUとAIの取り組みにとって、まさに“死の一撃”で、規制当局は許可すべきじゃないね。<br>IntelがチップレットベースのAIチップのポートフォリオを持つには、下流の低コストGPU市場が必要なのは明らかだよ。Nvidiaの狙いは、IntelがGPU市場にもAI市場にも参入しないことだね。Intelは何年もかけて準備してきたのに。" userName="littlecranky67" createdAt="2025/09/18 14:53:28" color="#ff5733">}}




{{<matomeQuote body="アメリカ政府自体がIntelの大株主だから、競合他社よりIntelの株を押し上げたいのは当然だよ。<br>Nvidiaも政府にこの取引を強制された可能性がほぼ確実だね。もう規制の範囲を超えてるよ。" userName="paxys" createdAt="2025/09/18 17:36:38" color="">}}




{{<matomeQuote body="規制当局？今の政権にそんなもんいるわけないだろ。" userName="elAhmo" createdAt="2025/09/18 16:58:15" color="">}}




{{<matomeQuote body="何言ってんの？FCCがアンティファのJimmothy Kimmithyを潰したばかりじゃん。" userName="NewJazz" createdAt="2025/09/18 17:06:05" color="">}}




{{<matomeQuote body="消費者向けGPUとハイエンドGPUは今や全く違う製品だよ。<br>IntelはGPU市場で失敗して、市場シェアもほぼゼロなんだから、この市場で独占禁止法の問題があるとは言えないよ。<br>もっと競争があったらいいけど、AMDとか他にも小さいプレイヤーはたくさんいるしね。" userName="justincormack" createdAt="2025/09/18 15:36:35" color="#38d3d3">}}




{{<matomeQuote body="もしこのうちの一つの会社が潰れたらどうなるの？全部道連れになるのかな？" userName="lawlessone" createdAt="2025/09/18 17:50:51" color="">}}




{{<matomeQuote body="ごめん、それは全然正しくないよ。IntelはGPU市場に参入したばかりで、ここ最近のリリースはみんなが求めてるものとほぼ一致してるんだ。<br>最新のカードが市場に出てからまだ1ヶ月も経ってないのに、“負けた”なんて言うのはおかしいよ。<br>もしマーケティングがそこそこでも、Arc Pro B50は予算の少ないデベロッパーにとって、絶対的なゲームチェンジャーになる可能性があるね：https://www.servethehome.com/intel-arc-pro-b50-review-a-16gb...<br>Nvidiaがそのロードマップを潰そうと全力を尽くすのは間違いないね。" userName="tw04" createdAt="2025/09/18 15:45:33" color="#785bff">}}




{{<matomeQuote body="アメリカ政府は利益目的じゃないから、Intel株に対する彼らの動機が何なのかよくわかんないよね。" userName="bee_rider" createdAt="2025/09/18 18:07:50" color="">}}




{{<matomeQuote body="AIバブルはいずれ弾けるよ。主要なAIチャットボットは赤字だし、OpenAIの月200ドルのプランですら儲けが出ない。Nvidiaの株も時間の問題。AIは直線的に進歩してホワイトカラーの仕事を置き換えるって言われてたけど、もう停滞してるしね。FAANG企業もいつまでも損失を吸収できないでしょ。" userName="FirmwareBurner" createdAt="2025/09/18 18:05:26" color="#785bff">}}




{{<matomeQuote body="アメリカの国益的には、Intelが存続し続けることが最大の懸念事項だね。Intelは25年間しょぼいGPUを作ってきたし、今更すごいGPUを作り始めるわけない。それに、CUDAをサポートしてないGPUなんて誰が使う？AppleのARM GPUでさえ、Mシリーズ登場前から10年間もIntelより高性能だったじゃん。" userName="JustExAWS" createdAt="2025/09/18 17:01:33" color="">}}




{{<matomeQuote body="こんなしょぼいカードを誰が使うんだろうね。俺のRTX 5090は（FP32 TFLOPSで測ると）10倍速いのに、それでもまだ速さが足りないと感じるんだ。AI/MLにこんな遅いカードを使うなんて考えられないよ。8BパラメータのLlamaモデルでたった2.2トークン/秒？それ、人がタイプするより遅いじゃん。予算カードってのはわかるけど、予算カードなら少なくとも純粋な価格/性能比で勝たなきゃダメだろ。5090は10倍速いけど、価格は6〜8倍程度なんだからさ。" userName="Sohcahtoa82" createdAt="2025/09/18 17:34:09" color="#45d325">}}




{{<matomeQuote body="Intelが競争できないなら、存在する必要ある？AMDがあるじゃん。彼らが残ってほしい唯一の理由は、競争環境を作って開発と進歩を促すことだよ。でも、今の米国の政権は公正で自由な市場を信じてないみたいで、統合が進んで無駄やイノベーションの欠如につながるだろうね。" userName="tensor" createdAt="2025/09/18 17:24:11" color="">}}




{{<matomeQuote body="アメリカ政府は、彼らが戦いたい国に支配されてない、または彼らが戦いたい国に近すぎないチップの供給源が欲しいんだよ。Intelの一部を買収するのは、政府が望む結果につながるように彼らに行動させる一つの方法さ。まあ、あくまで説だけどね。俺もこの件に関しては冷めてるから、誰かの冷めた意見を抑えつけようとは思わないよ。今、アメリカが中国とか、中国がすごく好きな国と戦争になったら、すぐに最高のチップを手に入れるのに大きな問題が出る可能性が高い。世界には台湾以外にもファブ工場があるし、アメリカにもあるけど、どれもずっと古いプロセスだよ。昔の500MHzプロセッサでも問題ないこともあるけど、ハイエンドAIみたいなものには全く通用しない。利益について話してる他のコメントは間違ってる。Intelの2024年の売上は531億ドルだったけど、連邦政府は2024年に6兆8000億ドルも使ってるんだからさ。2024年に1.8兆ドルの赤字を出してる組織が『利益』なんか気にしないよ。アメリカ連邦政府は使いたいだけ使うんだから、『利益』を出す必要なんてない。連邦政府が利益を気にするなんて考えてるうちは、全然冷めた見方じゃないね。" userName="jerf" createdAt="2025/09/18 18:46:50" color="#38d3d3">}}




{{<matomeQuote body="Intel AIがAWS TrainiumやNvidiaの努力に追いつく可能性は、既に限りなく小さかっただろうね。これでIntelは最先端のファブ技術を維持するチャンスを得られる。ゲーマーには悪いけど、俺はB580の購入を検討してたけどさ、正直、この市場の消費者福利なんて完全に二の次だよ。" userName="benced" createdAt="2025/09/18 16:10:09" color="">}}




{{<matomeQuote body="AIがホワイトカラーの生産性を上げて依存させ、最終的に課金させるって話だね。あと、テクノロジー業界って損失出してても実は儲けてるのが常識だよ。公表されてる損益を鵜呑みにしちゃダメ。" userName="bdamm" createdAt="2025/09/18 18:13:14" color="">}}




{{<matomeQuote body="Intelはそんなに遅れてないけど、中国のミサイル一発で破壊されかねない国の工場に頼るのは賢くないと思うな。" userName="JustExAWS" createdAt="2025/09/18 17:44:19" color="#ff5733">}}




{{<matomeQuote body="株を買い集めて価格を動かして、自分たちの投資の価格をコントロールするのさ。関税でやったみたいにね。そこから利益を出すわけ。" userName="pbhjpbhj" createdAt="2025/09/18 18:15:05" color="">}}




{{<matomeQuote body="これでIntelが最先端のファブ技術を維持できる、とは俺は思わないな。NvidiaがIntel Foundryを使うかは不明だし、たぶんx86ライセンスが目当てなんじゃない？もしかしたら、トランプのIntel国有化戦略を“支援”することでコネを作る戦略かもね。" userName="delusional" createdAt="2025/09/18 17:38:25" color="#ff5733">}}




{{<matomeQuote body="RTXが物足りないなんて、かなり特殊なニーズだよ。最速のコンシューマー向けカードなのにね。Intelのカードは1080pゲーミングには最高だよ。Counter-Strikeとかインディーゲームなら十分すぎる。4KでTomb Raiderをウルトラ設定、高リフレッシュレートでプレイしようとする人なんてごくわずかだよ。" userName="jpalawaga" createdAt="2025/09/18 17:51:41" color="#38d3d3">}}




{{<matomeQuote body="IntelはNVIDIA RTX GPUチップレットを統合したx86 SOCsを市場に出すって言ってるね。これは世界トップクラスのCPUとGPUの統合を必要とする幅広いPC向けなんだって。https://www.intc.com/news-events/press-releases/detail/1750/...<br>昔のことがまた新しいことになったって感じだね。2017年にはIntelがAMDと似たようなこと（Kaby Lake-G）を試したけど、あれは失敗したんだ。https://www.tomshardware.com/news/intel-discontinue-kaby-lak..." userName="scrlk" createdAt="2025/09/18 12:12:32" color="#45d325">}}




{{<matomeQuote body="これってIntelが自社を救おうとしてるんじゃなくて、NVIDIAがそうしてるんだと思う。Intel GPUは長いこと3位だけど、内蔵グラフィックスはNVIDIAがx86市場で競争できないから2位に食い込んでる。IntelのグラフィックスはAMDとの差を詰めてきて、今は1.5倍くらい？<br>個人的には、これからはグラフィックカードスロットがない、小型で静かなPCが増えて、内蔵グラフィックスに頼るようになると思う。NVIDIAはそういう未来には居場所がない。でも、今回Intelに50億ドル出すことで、いくつかのSoCに食い込んで、時代遅れにならずに済むってことだよ。Intelにとって良いのは、CPUで遅れを取ってるから、SoC分野ではグラフィックスで優位性を主張できるかもしれないってことだね。" userName="phkahler" createdAt="2025/09/18 13:48:10" color="#ff5733">}}




{{<matomeQuote body="2000年代半ばから後半にかけて、Intel CPUはIntel製じゃないサードパーティのチップセットも使えたんだ。NVIDIAはAMD向けで最も人気のチップセットメーカーで、Intel CPU向けにも進出してたよ。AMDがATiを買収して他のチップセットを締め出し、Intelも同じことをしたから、NVIDIAはかなり厳しい状況だった。<br>APUが未来だってAMDが動き、IntelもPCIe接続が少ないプラットフォームを出し始めたから、NVIDIAはIonプラットフォームみたいなのを作ったんだ。NVIDIAを自社市場から締め出す戦略的な動きが始まってたんだよ。でも、NVIDIAはIntelとの訴訟に勝って、メインプラットフォームに10年くらいPCIe 16x接続を義務付けさせたし、AMDはCPUで競争力のない製品を出したからAPUの普及は起こらなかったんだ。もしIntelが内蔵GPUを開発してたか、その訴訟に勝ってたら、あるいはAMDがちゃんと実行してたら、NVIDIAは今頃二番手だったかもしれないね。<br>NVIDIAは競合が大きな戦略的優位性を活かせなかったこの時期を本当によく利用したよ。今は違う状況だと思う。AMDもIntelも、消費者がNVIDIAカードを搭載できる方を選んじゃうから、NVIDIAを締め出す余裕はないだろうね。高性能グラフィックスはしばらくの間、アドインボードの領域だよ。プロセスノードの微細化は簡単じゃないし、冷却ソリューションもどんどん複雑になってきてる。<br>でもNVIDIAは新しいハンドヘルド市場から閉め出されてるし、コンソール向けのSoCとしても良いトータルパッケージではなかったから、今回の提携を望むのは驚きじゃないよ。でもNVIDIAはこういう野心は諦めて、ARMベースのプラットフォームを脱出策として構築しようとしてると思ってたんだけどね。" userName="jonbiggums22" createdAt="2025/09/18 14:28:28" color="#ff5c5c">}}




{{<matomeQuote body="NVIDIAはコンソールやハンドヘルド市場なんてどうでもいいんだよ。カスタマイズをしたがらないし、利益の少ないビジネスだからね。" userName="whatevaa" createdAt="2025/09/18 14:59:31" color="">}}




{{<matomeQuote body="え？これ見てよ。NVIDIAはNintendo Switch 2向けにNVIDIA Tegraチップを提供してるってブログ記事が出てるよ: https://blogs.nvidia.com/blog/nintendo-switch-2-leveled-up-w..." userName="buildbot" createdAt="2025/09/18 15:06:48" color="#45d325">}}




{{<matomeQuote body="要するに、NVIDIAはROG Allyみたいな製品には協力する気がないってことだよ。" userName="dontlaugh" createdAt="2025/09/18 15:42:01" color="">}}




{{<matomeQuote body="あれはもっと tightly integratedでパフォーマンスの高いMacbookをサポートするのが目的だったんだ。それが失敗したのは、AppleがM1を出したからであって、製品自体が悪かったわけじゃないんだよ。" userName="ddalex" createdAt="2025/09/18 12:21:56" color="#ff5733">}}




{{<matomeQuote body="ALiがNvidiaより良いAMDチップセットを出した時、Nvidiaはすぐに会社を買収して事業を縮小したんだ。ALiのチップセットはどれも好きじゃなかったから、これは「全く新しい文章」に聞こえるな。VIAやSiSの方がまだマシだったよ。ALi Aladdin VはAGPが不安定だったし、MAGiK 1はDDRの列が多いと酷い有様だった。<br>IntelがPCIe接続の少ないプラットフォームを出し始めたってのも変な話。i810とか845GV、865GVみたいにAGPがないチップセットは昔からあっただろ？eMachineにGeforceとか「Radon」を入れられないと伝えた回数分ドルをもらってたら、車の頭金にできたかもね。変な予感だけど、「Radon」って呼ぶ人たちはみんなAMD Radonって言ってたっけ…そして今、その通りになった。なんだか予言的だね。" userName="to11mtm" createdAt="2025/09/18 17:12:18" color="#45d325">}}




{{<matomeQuote body="ArcとGaudiは終わりだな。これ以外に読みようがないよ。競合が減れば価格は上がるしね。" userName="joz1-k" createdAt="2025/09/18 13:15:57" color="#ff33a1">}}




{{<matomeQuote body="NvidiaはすでにSOCを作ってるのに、なぜIntelが欲しいんだろう？AGXは低電力ソリューションだから、NvidiaもSOC構築に技術的な限界があるのかもしれないけど、これは憶測だよ。Nvidiaが自社でSOCを作れるのにIntelを買う、本当の理由を知ってる人はいない？" userName="ninetyninenine" createdAt="2025/09/18 14:45:44" color="#45d325">}}




{{<matomeQuote body="Appleはこれを搭載した製品を出さなかったけど、最高のHackintoshになったね。" userName="intvocoder" createdAt="2025/09/18 12:24:48" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Xe2はもう今のAMD内蔵GPUより優れてるぜ。" userName="wirybeige" createdAt="2025/09/18 13:51:53" color="">}}




{{<matomeQuote body="時々HNのユーザーは規模感が全くないように見えるよ。それらの生涯販売数は、Switch 2の数時間から数日分に相当する程度だ。" userName="numpad0" createdAt="2025/09/18 17:01:10" color="#ff5733">}}




{{<matomeQuote body="もっと悪い可能性に気づいたよ。NvidiaがこれをRTX xx50/60シリーズの後継として、低価格帯でCUDAをサポートしないようにするかもしれない。" userName="numpad0" createdAt="2025/09/18 17:07:32" color="#ff33a1">}}




{{<matomeQuote body="Nintendo Switch 1のブートローダーをハックして、LinuxとVulkan互換ドライバーをインストールできるよ。Box86でハードの寿命を縮める以外にそうする理由はないけど、確実に可能だ。" userName="bigyabai" createdAt="2025/09/18 16:31:09" color="">}}




{{<matomeQuote body="これのこと？https://www.rockpapershotgun.com/msi-claw-8-ai-plus-review" userName="Yokolos" createdAt="2025/09/18 16:25:53" color="">}}




{{<matomeQuote body="「素晴らしいALiチップセット」の時代は、Athlon 64時代にULiになってからだった気がするな。ASRock 939SLI32-eSATA2というULi M1695ボードを持ってたけど、当時は珍しく2つのx16スロットがあったんだ。Nvidiaが意図的にGeForceドライバーを制限するまではSLIで動かせたけどね。ファンレスの7600GSと使ってたよ。<br>あとはPCI-Ex16とAGPっぽいスロットを提供するチップセットの組み合わせもあって、高価なグラボを持ってる人には良かったんだ。昔Aladdin IV（TXpro）ボードも持ってたけど、83MHzのバススピードに対応してて良かったな。K6-233を250（3x83）にオーバークロックしたら、262（3.5x75）より明らかに速かった。" userName="hakfoo" createdAt="2025/09/19 06:25:21" color="#ff5733">}}




{{<matomeQuote body="Nvidiaの単体グラフィックチップとIntel統合グラフィック機能の比較だと思うよ。" userName="yujzgzc" createdAt="2025/09/18 14:03:52" color="">}}




{{<matomeQuote body="IntelのグラフィックスはAMDとの差を詰めてきてるよね。AMDのAPU（395+）以外だと、IntelのiGPUは今AMDとほぼ同じくらいだよ。395+は同じダイにdGPUとCPUがある感じだね。" userName="mrheosuper" createdAt="2025/09/19 02:42:58" color="#785bff">}}




{{<matomeQuote body="Intelはずいぶん長いことデスクトップGPUを出してないよね。AMDやNvidiaがGPUを磨き上げてきた期間と比べると、君の時間の尺度はズレてるよ。" userName="SilverbeardUnix" createdAt="2025/09/18 16:22:47" color="">}}




{{<matomeQuote body="’Radon’と呼ぶほとんどの人は、特にAMD Radonって言うだろうね。ITプロフェッショナルが”Intel Xenon”って言うのを聞くたびに1ドルもらえたら、君の頭金と同じくらいになるだろうな。" userName="RulerOf" createdAt="2025/09/20 04:47:31" color="">}}




{{<matomeQuote body="GPU市場には悪いニュースだと思うよ（AMDは統合ソリューションで足がかりを作ってたけど、他では負けてたからね）。でもx86アーキテクチャには良いニュースじゃないかな。Intelの競争力が落ちてx86がすごく縮小するんじゃないかって心配してたんだ。" userName="jonbiggums22" createdAt="2025/09/18 14:31:40" color="#785bff">}}




{{<matomeQuote body="ROG Allyはたぶん100万台も売れないんじゃないかな。Switchは1億台売れるだろうし。好きだろうと嫌いだろうと、Switchがモバイル市場だよ。" userName="sniffers" createdAt="2025/09/18 15:53:15" color="">}}




{{<matomeQuote body="全くその通り。これは、何十年もNvidiaの支配下で生きてきた高排出ゲーマーにとっては最悪のニュースだよ。" userName="philistine" createdAt="2025/09/18 14:24:20" color="">}}




{{<matomeQuote body="ALiはULi M1695で一躍有名になったけど、それまでは避けられてたな。そのボードは安定してたし、今でも売らなきゃよかったって思うよ！<br>IntelはAGPスロットを完全には排除できなかった。Intelをサポートするチップセットを作ってるのが他社にもいたからね。Intel・AMD・NvidiaはAGP+PCIe対応チップセットには興味がなかったけど、VIA・ALiやSiSが作ってたんだ。それがなくなってNvidiaはもう運命をコントロールできなくなったってわけ。" userName="jonbiggums22" createdAt="2025/09/18 19:11:05" color="#785bff">}}




{{<matomeQuote body="Ryzen APUは最初はイマイチだったけど、今ではちゃんと良い感じだよ。コンセプトは理にかなってるね。" userName="JonChesterfield" createdAt="2025/09/18 12:25:26" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
