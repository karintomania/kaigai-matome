+++
date = '2025-05-09T00:00:00'
months = '2025/05'
draft = false
title = 'AMD 9950Xで驚異のCSVパース速度21GB/sを達成 SIMD活用'
tags = ["CSV", "パフォーマンス", "SIMD", "CPU", "プログラミング"]
featureimage = 'thumbnails/blue.jpg'
+++

> AMD 9950Xで驚異のCSVパース速度21GB/sを達成 SIMD活用

引用元：[https://news.ycombinator.com/item?id=43936592](https://news.ycombinator.com/item?id=43936592)




{{<matomeQuote body="IntelがAVX-512をコンシューマー向けに入れるのに何年もダイスペースを割いてたのに、やっとライブラリが対応してきたら、目標達成したのにやめちゃうとかマジでクレイジーだよね。AMDがAVX-512サポートでIntelを出し抜いたわけじゃなくて、Intelが自社の投資から手を引いたせいでAMDだけにAVX-512があるってのがね。" userName="chao-" createdAt="2025/05/09 16:22:49" color="">}}




{{<matomeQuote body="それこそIntelがよくやる手だよね。市場を育てて（Optaneとか）、いきなり撤退する（Depth Camerasとか）。新しい技術にドカンと力を入れて、普及しないとすぐに見捨てるのを繰り返してる。ゆっくり育ててタイミング見て一気に推せばいいのにね。OptaneなんてLinuxカーネルでサポートが成熟してきた頃にやめたし。半アイドルVM向けの代替RAMみたいな変なコストカット目的で売り出したのも意味不明だった。このパターン、iAPX 432の頃からずっと変わってないよ。" userName="sitkack" createdAt="2025/05/09 17:03:23" color="">}}




{{<matomeQuote body="HP PA-Risc、SGI MIPS、DEC Alphaを潰して、SparcやPOWERの普及を大きく妨げた（他にもあったっけ？）という点ではね。でもさ、彼らは1998年までに何も出さずに終わらせることもできたんだよ。そしたら競合アーキテクチャも潰せただろうに。それなのに2020年までサポートを続けたんだから。ItaniumのVLIWに必要だったのに全然手に入らなかったのは、まともなコンパイラサポートだよ。NVIDIAはCUDAでこれがばっちりできてる。NVIDIAにポートするのは簡単だし、そこでかなりの高速化が得られる。AVX-512は、ICC（と適切にコンパイルされたnumpy/scipy）ではしっかりサポートされてたみたいだけど、そこまで劇的なスピードアップはなかった印象だな。" userName="paddy_m" createdAt="2025/05/09 18:44:33" color="">}}




{{<matomeQuote body="Optaneの撤退は信じられないくらいイライラしたな。Intelはレガシーにしがみつく遅い導入者だらけの業界（RDBMSとか）で、ワークロードをマジで大きく改善する技術を開発したんだ。彼らは投資を続けて、自分たちの主張が誰の目にも明らかになって、遅い導入者たちがやっと理解し始めたまさにそのタイミングで…終わらせたんだ！<br>あんなに下手な手があるかってくらいだよ。数年経った今でも、Optaneドライブがなくて困ってる。代替になるものが今だにないからね。あと少しだけ持ちこたえてたら、2040年になっても買ってくれる企業顧客層を作り出せてたはずなのに。" userName="gnfargbl" createdAt="2025/05/09 19:50:05" color="#45d325">}}




{{<matomeQuote body="＞What the VLIW of Itanium needed and never really got was proper compiler support.<br>これはちょっと控えめな言い方かな。Itaniumみたいな静的スケジューリングのVLIWマシンの根本的な問題は、全ての複雑さをコンパイラに押し付けちゃうことなんだ。残念ながら、良い静的スケジューラを作るのは本当に難しいってことが判明したわけ。<br>対照的に、動的スケジューリングのアウト・オブ・オーダーのスーパースカラーマシンは上手くいくけど、全ての複雑さをシリコン側に入れ込むんだ。昔はトランジスタのオーバーヘッドが高かったから、静的スケジューリングのVLIWが良いアイデアに見えた。でも、静的スケジューリングはずっと難しいままだったのに、動的スケジューリングのトランジスタのオーバーヘッドは取るに足らないくらい安くなったんだ。「ハードウェアをぶっ込め」が、「より良いソフトウェアを作れ」に圧勝したってことだね。" userName="kyboren" createdAt="2025/05/09 19:15:02" color="#45d325">}}




{{<matomeQuote body="おっしゃる通り。IntelはAVX 512を意図的に将来の世代ではXeonとかエンタープライズ向けプロセッサ専用の機能にしちゃったんだよ。この後退したせいで使える人が人工的に制限されて、企業はもっと高いハードウェアに投資せざるを得なくなる。<br>Arc GPUでも似たようなことしてるんじゃないかと思うね。GPU仮想化（SR-IOV）をサポートしてないんだから。まあ、第12～14世代の内蔵チップ全部でi915ドライバー経由でvGPUサポートをいくらか追加したけどね。同じGPUで複数のVMで同時にグラフィックアクセラレーションできるのは嬉しいけど。" userName="sheepscreek" createdAt="2025/05/09 18:21:20" color="">}}




{{<matomeQuote body="確かに。Octane/3dxpointはぶっ飛んだ未来技術って感じだったのに、市場に出てたった5年で消えたとか？短絡的すぎでしょ。" userName="Gud" createdAt="2025/05/09 19:18:28" color="">}}




{{<matomeQuote body="この記事では、こういう速度が出てたんだよね：<br>オリジナル：18 GB/s<br>AVX2：20 GB/s<br>AVX512：21 GB/s<br>これはAMDのCPUだけど、AVX512のメリットがAVX2に比べてわずかっていうのは明らかだね。Intelのコンシューマー向けチップは、EコアでもAVX2はサポートしてるってことに注意ね。<br>でも話はそれだけじゃないんだ：これはシングルスレッドのベンチマークなんだよ。IntelはAVX512を諦めて、その分のダイスペースをより多くのコアのために空けたんだ。結果として、Intelの最高級コンシューマー向けパーツは24コアになってるのに対して、AMDの最高級は16コアなんだ。実際のIntelのベンチマークを見ないと分からないけど、AVX2からAVX512への改善がわずかなら、より多くのコアを使ったマルチスレッドのAVX2バージョンの方が、少ないコアのマルチスレッドAVX512バージョンを上回る可能性が高い。IntelのEコアはPコアよりAVX2命令の実行は遅いけど、それでもこのベンチマークではAVXの恩恵自体がわずかだしね。<br>Intelが機能を奪ったって怒る人がいるのは分かるけど、AVX2だけでなくAVX512があるっていう現実世界のメリットはすごく小さいんだ。ほとんどの場合、余分なコアが問題を処理することによるメリットの方が上回るはずだよ。AVX-512から恩恵を受けるすごく特定のワークロード、しばしばシングルスレッドのものもあるけど、アプリやベンチマークを混ぜて見ると、Intelは彼らがやったことを情報に基づいて決定したんじゃないかと俺は疑ってるね。" userName="Aurornis" createdAt="2025/05/09 21:16:47" color="#ff33a1">}}




{{<matomeQuote body="いやさ、VLIWはこれよりさらにヤバいって。コンパイラの問題って言うだけじゃ全然足りてないんだわ。VLIWってマルチタスクとかマルチテナントのシステムには全然向いてないんだよ。キャッシュの問題があってさ。コンパイラはキャッシュに何があるか分からないと効率的に命令をスケジューリングできないんだけど、隣のタスクが時間帯をどう使うか分からないと、キャッシュに何が入るかも分からないじゃん。仮想化とか入れたらもうメチャクチャだよ。" userName="bri3d" createdAt="2025/05/09 19:41:07" color="#785bff">}}




{{<matomeQuote body="この記事で驚いたのは、9950XのAVX2パーサーが約20GB/sで、AVX-512より10%速かったってとこ。これはもう直したみたいだけど、正直AVX-512って一般ユーザーにはそこまでメリットない気がするんだよね。CSV解析速度が20GB/sでも十分だし。ベクトルアセンブリ好きのマニア向けじゃないかな。" userName="tedunangst" createdAt="2025/05/09 19:29:40" color="#ff5c5c">}}




{{<matomeQuote body="動的な共有がない、アクセラレーターみたいな固定されたワークロードでしか動かないんだよ。" userName="sitkack" createdAt="2025/05/09 20:12:04" color="">}}




{{<matomeQuote body="あいつら（Intel）、市場をセグメント分けするのに必死なんだよな。ECCとかAVXとかOptaneのサポートとか（特定のサーバー向けSKUだけ）。マジ嫌い。家でPC使うユーザーとしても嫌いだし、エンタープライズの客としても嫌いだし、株主としても嫌い。" userName="sitkack" createdAt="2025/05/09 18:27:07" color="">}}




{{<matomeQuote body="Optaneの失敗は予想できたこと。Intelだけが維持してたけど、これはすごい技術なのに「使い道を探してるソリューション」だったのが問題。電源断に強い領域ならNVDIMM、高速ストレージならFlashの方が速くて安い。Optaneは両方から挟まれてた。Intelは今ピンチで、赤字脱却と競合対策に集中が必要。儲からない脇道プロジェクトはやめるしかない、イノベーションも潰れるけどね。" userName="riehwvfbk" createdAt="2025/05/10 13:06:45" color="#785bff">}}




{{<matomeQuote body="Optaneが中止になったのは、メーカーが工場（fab）売っちゃったからだよ。" userName="high_na_euv" createdAt="2025/05/09 21:35:26" color="">}}




{{<matomeQuote body="へー？それって、ECDLのロイヤリティ払ってないのがバレたのと全然関係ない偶然？" userName="bobmcnamara" createdAt="2025/05/10 02:16:42" color="">}}




{{<matomeQuote body="＞実際のIntelのベンチマーク見ないとだけど、AVX2からAVX512の改善が marginal なら、コア数多いAVX2の方が少ないAVX512より速いかも。Blenderとか見ると、E-coresはAMDコア1個分の性能出すのに2個くらい必要でマジ遅い。AVX512だけが違いなら24 AVX2コアが16 AVX-512コアに勝つけど、違いはそれだけじゃない。E-coresが中途半端な数で性能もイマイチなんだよ。" userName="kllrnohj" createdAt="2025/05/10 00:26:41" color="#45d325">}}




{{<matomeQuote body="何がバレたの？もう少し詳しい情報とか、調べられるリンクとかない？" userName="gaadd33" createdAt="2025/05/10 03:51:00" color="">}}




{{<matomeQuote body="＞静的スケジューリングは難しいままで，動的スケジューリングのトランジスタのオーバーヘッドはマジで安くなったって話，後者ホント？俺が知る限り，今のCPUのダイ面積とか電力は，実際の計算じゃなくてオーバーヘッドにほとんど食われてると思うけどな．" userName="rcxdude" createdAt="2025/05/10 00:05:29" color="">}}




{{<matomeQuote body="AVX-10がもう来るんでしょ？AVX-512の良いとこはほとんど持ってるんじゃない？（マジで何が違うかよく分かんないけど）" userName="ChadNauseam" createdAt="2025/05/09 21:56:15" color="">}}




{{<matomeQuote body="うん，VLIWは今もDSPとかGPUとかに使われてるけど，普通のコンピューターには合わないんだよな．" userName="pezezin" createdAt="2025/05/10 01:39:23" color="">}}




{{<matomeQuote body="NVMe SSDってOptaneと大体同じ価値でしょ？Optaneマジすごかったってコメ見たけど，NVMeもほぼ同じくらい良いし他のメーカーもあるなら，意味分かんないんだけど．" userName="ozgrakkurt" createdAt="2025/05/10 14:01:49" color="">}}




{{<matomeQuote body="どの会社もそうだよ．おばあちゃんがネットとかWord，Excelしか使わないのに，使わない機能のために50ドル余分に払いたいと思う？NPUも同じ．お客さんごとに欲しい機能と値段は違うんだってば．" userName="knowitnone" createdAt="2025/05/09 19:04:10" color="">}}




{{<matomeQuote body="＞Eコアは弱すぎて，AMDコア1個分出すのに2個くらい必要って？それは「弱い」んじゃなくてさ．ダイショット分析見れば分かるけど，EコアはPコアと比べてマジ小さくて，面積は半分以下だし電力ももっと少ないんだよ．Pコアは稀なシングルスレッド作業でしか役に立たないけど，それ以外ならEコアが勝つって．" userName="zozbot234" createdAt="2025/05/10 07:25:25" color="#45d325">}}




{{<matomeQuote body="Energy Conversion Devicesが潰れた時，Intelがその技術パクって，OptaneのPCMメモリのロイヤリティ払わなかったみたい．Case No． 12-43166がOptaneを終わらせたんだよ．つまり，IntelがIntelだったからOptaneは消えたってわけ．" userName="bobmcnamara" createdAt="2025/05/10 04:11:28" color="">}}




{{<matomeQuote body="AVX-10には前，AVX-10/256っていうのがあったんだけど，それはAVX-512から512ビットレジスタ無くしたやつね．でも最近無くなったんだ．だから今AVX-10は，AVX-512の拡張機能のほとんどのセットになってて，これからの目標は，次のバージョンが出るたびに前のより機能が増えるのを保証すること（AVX-512みたいにバラバラな拡張機能がいっぱいあるのとは違う）．" userName="dzaima" createdAt="2025/05/10 00:51:36" color="#45d325">}}




{{<matomeQuote body="それ多分，単にメモリの帯域幅がボトルネックになってる問題ってことだと思うよ．もっと計算必要なタスクなら話は別だろうけどさ．" userName="vardump" createdAt="2025/05/09 20:31:33" color="">}}




{{<matomeQuote body="Optane懐かしいなー。金融系時系列DBの会社で働いてんだけど、NVMeより速くてRAMより遅い層のユースケース、マジでいっぱいあるんだよね。しかもこういう会社ってお金めっちゃ持ってるのに。なんで誰もこの隙間埋めないんだろ？技術的に特許が強いのかな？" userName="stingraycharles" createdAt="2025/05/10 00:30:12" color="">}}




{{<matomeQuote body="`<br>`とか`\r`とか`;`とか`”`の文字に対して4回比較して3回orする代わりに、よくあるテクニックとしてshuffle 1回、比較 1回、or 0回で済ませる方法があるよ。このトリックについてブログに書いたんだけど、https://stoppels.ch/2022/11/30/io-is-no-longer-the-bottlenec... （Trick 2）<br>追記：彼らはternary logicを使ってorを1回減らしてるね、これは良いね。具体的には(a | b | c) | dを`vpternlogd`と`vpor`で計算してるっぽい。" userName="stabbles" createdAt="2025/05/09 14:14:50" color="#ff5c5c">}}




{{<matomeQuote body="文字セットが限定されてるならこれ当てはまるけど、shuffleにはレジスタが余分に必要になるから、必ずしも速いわけじゃないんだよね。試してみたけど、ここでは速くならなかったよ。" userName="nietras1" createdAt="2025/05/12 14:11:11" color="">}}




{{<matomeQuote body="Intelめ、消費向けCPUからAVX-512全部消しやがって、代わりに全部にslow coreぶっ込んでくるわマルチポンプも考えねえわ、って感じだろ。" userName="Aardwolf" createdAt="2025/05/09 14:19:14" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これの多くは、Intelが抜け出す必要があった10nmの穴に根ざしてるんだよな。歩留まりが悪いからコストが高いし、だからダイを可能な限り小さくしてAtom由来のコアを出して、エネルギー効率対策として売り出したんだ。高いパーツはもっと大きくできるし、サーバー/クラウド分野を維持するためにそっちの利益を削るぞ、と。あと、俺たちの収益はゴミみたいになって市場シェアも失うけど、少なくとも頑張ってみたぞ、って感じ。" userName="tadfisher" createdAt="2025/05/09 17:38:24" color="">}}




{{<matomeQuote body="Intelの問題はFab失敗より、アーキテクチャ更新をFab待ちで止めたこと。Pコアはデカすぎ、Eコアは古すぎになり、Alder Lakeで混ぜただけ。プロセス・Fab間で設計を移植できない影響は今も出てて、今年のノートPC向けCPUのHyperThreadingはIntel Fab製の一番安い部品だけで、TSMC製は違うみたい。（要約）" userName="wtallis" createdAt="2025/05/09 17:57:32" color="">}}




{{<matomeQuote body="え、これってSepが2023年6月に導入されてからたった2年足らずで、約3倍の驚異的な改善ってこと？<br>ハードウェアがめっちゃアップグレードしてるのにそれは主張できないでしょ。" userName="winterbloom" createdAt="2025/05/09 14:06:29" color="">}}




{{<matomeQuote body="彼らは新しいハードウェアで0.9.0と0.10.0を比較してるんだ。（21385 vs 18203）だからソフトウェアによる向上は17％。<br>それなら旧ハードウェアの0.9.0（13088）に17％を足すと15375になる。<br>バージョン0.1.0は7335だった。<br>だから…15375/7335で→たった2年足らずで約2.1倍の驚異的な向上ってことだよ。" userName="jbverschoor" createdAt="2025/05/09 14:16:35" color="#ff33a1">}}




{{<matomeQuote body="彼らは同じハードウェアでの以前のバージョンのsepに対して3GB/sの向上を主張してるんだ—そして”マーケティング”ベンチマークとは違って、実際に達成した速度と使ったハードウェアを含んでる。" userName="freeone3000" createdAt="2025/05/09 14:10:58" color="">}}




{{<matomeQuote body="ちょっと気をつけたいのが、3GB/s速くなる前でさえ、ほとんどのディスクの帯域幅を超えてるってことね。だからボトルネックはメモリにデータを読み込むとこだよ。CSVがメモリで作られたり消費されたりするアプリってそんな知らないから、どんな使い道があるんだろって思うな。" userName="stabbles" createdAt="2025/05/09 16:19:25" color="">}}




{{<matomeQuote body="”We can parse at x GB/s”ってのは、だいたい”we need y％ of your CPU capacity to saturate I/O”の逆みたいなもんかな。Higher x -＞ lower y -＞ more CPU for my actual workload。" userName="pdpi" createdAt="2025/05/09 20:25:06" color="#ff5733">}}




{{<matomeQuote body="Slower than network！ In-memory processing of OLAP tables、streaming splitters、large data set division…でもパースが速いほど、パースに費やす時間は減って、実際の作業にもっと時間をかけられるよね。" userName="freeone3000" createdAt="2025/05/09 16:31:20" color="#785bff">}}




{{<matomeQuote body="正直、ちょっと予想外だったかな。良い内部ネットワークとメモリ上のデータがあるDBなら、ディスクから読むよりネットワークで取る方が速いこともあるんだよね。もちろん、もっと速いディスクとメモリでアプリサーバー作って、キャッシュも実装できるけど、それって高度なリソース使ってDBを自作してるようなもん。高頻度取引みたいなのは別として、普通のウェブバックエンドなら、そこそこのDBとクエリを最適化できる人がいる方が、多くの開発者にとってずっと楽になるんだ。" userName="tetha" createdAt="2025/05/09 17:13:59" color="#ff33a1">}}




{{<matomeQuote body="これ、Infinibandでも似たようなことできるんだけど、そっちはまあ予想通りって感じかな。一度、ネットワーク帯域幅がメモリ帯域幅と同じくらいっていうシステムを使ったことあって、本物のHPCな人たちには驚かないかもしれないけど、俺はビックリしたね！" userName="bee_rider" createdAt="2025/05/09 17:32:52" color="">}}




{{<matomeQuote body="Decompression is your friend。たいていCSVってめちゃくちゃ圧縮効くんだ。Multiple cores decompressing LZ4 compressed data can achieve crazy bandwidth。コアあたり5 GB/s以上とか。" userName="vardump" createdAt="2025/05/09 20:44:44" color="#38d3d3">}}




{{<matomeQuote body="まあそうかもだけど、ハードウェアだけで3倍速くなるのが当たり前だったmoore’s law時代はもう過ぎたと思うな。それでも、現代においてはかなりすごいことだよ。" userName="bawolff" createdAt="2025/05/10 02:30:16" color="">}}




{{<matomeQuote body="&gt; You can’t claim this when you also do a huge hardware jump<br>うーん、彼らはそうしたけどね。個人的には、これは面白い見方だと思うな。このソフトを年々使った場合に得られる”real performance”を見るレンズになる。（まあ、それがmisleading or fallacious claimじゃないとは言わないけどね。）" userName="perching_aix" createdAt="2025/05/09 17:36:35" color="">}}




{{<matomeQuote body="マジかよあのchart、”massive performance gain”って見せるためにCPU4世代分もすっ飛ばしてんじゃん。この投稿はゴミ行きだわ。" userName="WD-42" createdAt="2025/05/09 14:10:15" color="">}}




{{<matomeQuote body="でも、新しいハードウェアで0.9.0のテストも繰り返してるんだよ。だから最初の大きなジャンプはハードウェア変更で、二番目のジャンプはソフトウェアの変更なんだ。" userName="ziml77" createdAt="2025/05/09 15:28:02" color="#785bff">}}




{{<matomeQuote body="これ、全CPUでの結果みたいだね。シングルスレッドだと1.3 GB/sじゃ全然すごくないよ。" userName="g-mork" createdAt="2025/05/09 14:17:14" color="#38d3d3">}}




{{<matomeQuote body="ほんとそれ。ベンチマークってさ、ハード固定してデータをメモリに入れてシングルコアでやるのそんな難しい？ああいうグラフ見ると、”他に何隠してるんだ？”って思っちゃうんだよね。<br>マジで速いCSVパーサー探してるなら、https://github.com/dathere/qsv 見てみてよ。" userName="iamleppert" createdAt="2025/05/09 14:26:31" color="#ff5c5c">}}




{{<matomeQuote body="うーん、だってさ… 9950xのシングルコアだと、メモリコピー帯域幅で16 GB/s出すのも大変だろうし。それより一桁落ちるくらいなら妥当に見えるけどね。" userName="Remnant44" createdAt="2025/05/09 19:50:31" color="">}}




{{<matomeQuote body="4世代？<br>5950xはZen 3<br>9950xはZen 5" userName="matja" createdAt="2025/05/09 16:00:51" color="#38d3d3">}}




{{<matomeQuote body="Zen 2 (3000番台)以降、モバイルCPUはデスクトップ版より番号が千番上がってるんだよね。追記：Zen世代をNとすると、Nx2000ってことかな。" userName="chupasaurus" createdAt="2025/05/09 20:30:39" color="">}}




{{<matomeQuote body="それに、たとえ2世代だとしてもさ、CPUの世代進化って昔の、お菓子が1ドル以下だった頃みたいじゃなくなっちゃったよね。" userName="hinkley" createdAt="2025/05/09 22:26:22" color="">}}




{{<matomeQuote body="運が良ければ、Arthur Whitneyがこれに触発されて、これを打ち負かすワンライナーか、shakti engineのアップデートと一緒にワンライナーを投稿してくれるかもね。進歩だ！" userName="vessenes" createdAt="2025/05/09 14:14:31" color="">}}




{{<matomeQuote body="うわー、誰がそんなに速く何百万行ものCSVを処理する必要があるのか想像するのも恐ろしい…" userName="voidUpdate" createdAt="2025/05/09 14:11:43" color="">}}




{{<matomeQuote body="CSVって社内でもめちゃくちゃ普通のデータ交換形式になったし、圧縮も簡単だしね。NICカードの速度でCSVがどんどん吐き出されるコードベース（Netflow由来のデータとか）で作業したことあるよ。集計されてCSVでマスターに送られてた。<br>でもさ、なんでみんな代わりにprotocol buffers使わないんだろうね？protobufってそんなに難しい？" userName="trollbridge" createdAt="2025/05/09 15:06:57" color="#785bff">}}




{{<matomeQuote body="金融業界にはいっぱいいるよ。どこのFinance会社ともCSVでデータ共有できるし、向こうで処理できるからね。テキストだからさ。" userName="segmondy" createdAt="2025/05/09 14:17:21" color="#45d325">}}




{{<matomeQuote body="人間が作る情報なんてせいぜい秒間数バイトだよ。<br>金融取引の意思決定だけしてたって、21GB/sなんて無理。アルゴリズム同士の話だよね。<br>そんなに投資したアルゴ同士が、わざわざCSVをやり取りする必要あるのかな？" userName="zzbn00" createdAt="2025/05/09 14:36:19" color="">}}




{{<matomeQuote body="Protobufはなんか面倒だし、読み書き遅いんだよね。<br>CSVの方がprintfで作るのも読むのも簡単で、エスケープもそこまで難しくない。<br>Protobufはライブラリとかスキーマとか色々準備いってAPIも使いにくい。<br>可変長とかあるからライブラリも結局遅いみたい。<br>俺の経験だとprotobufは遅くてメモリ食うし、コードも無駄に大きい気がする。<br>Protobuf作った人のcapnproto.orgも見てみてよ（https://capnproto.org/）。<br>CSVがprotobufより速いか試してないけど、速くても驚かないかな。" userName="bombela" createdAt="2025/05/09 16:58:04" color="#38d3d3">}}




{{<matomeQuote body="「CSVはprintfで作るのも読むのも簡単」って言ってるけど、<br>俺が見た中で、壊れたCSV作っちゃうソフトや、まあまあ正しいCSVなのにパースできないソフトがいっぱいあるのを見ると、それは違うと思うよ。<br>printfでサクッと書けるから簡単そうに見えるけど、ほとんどのプログラマーが考えもしないようなエッジケースがいっぱいあるんだ。" userName="raron" createdAt="2025/05/09 18:02:08" color="#38d3d3">}}




{{<matomeQuote body="やり取りする両方（送り手と受け手）を自分でコントロールできるなら問題ないよ。<br>CSVは表形式のデータ交換にすごくいいフォーマットだよ。<br>特に数値データが多い場合はね。<br>内部サービス同士でデータを渡すなら最高だし、すごく速いんだ。" userName="elteto" createdAt="2025/05/10 01:42:34" color="#ff5733">}}




{{<matomeQuote body="欠点はいっぱいあるけど、CSVは今でも一番よく使われてるデータ交換フォーマットだと思うよ。" userName="hermitcrab" createdAt="2025/05/09 15:02:43" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="うーん、ファイルベースで一番ってことかな？<br>世界中のデータ交換全体で見たら、JSONがキングじゃない？<br>たぶん2番目はform-dataかな、あれって基本メールのmultipartだし。<br>もちろんメールそのものもデータフォーマットとしてすごく一般的だよね。" userName="adra" createdAt="2025/05/09 16:25:38" color="">}}




{{<matomeQuote body="JSONがキングなのか、正直疑問なんだよね。<br>フィンテックで働くまではそう思ってたんだけど。<br>XMLが残念ながらどこにでもあるんだ。" userName="devmor" createdAt="2025/05/09 18:28:04" color="">}}




{{<matomeQuote body="うーん、もし単に内部ツールなら、structの配列で良くない？<br>パースもいらないし、Optionalも持てる。<br>何もせず渡すより速いものはないでしょ。" userName="Neywiny" createdAt="2025/05/10 02:39:07" color="">}}




{{<matomeQuote body="人事の人とかに「WorkdayとかのUIで右クリックしてProtobufをエクスポートして」なんて絶対言えないって。<br>ビジネスの世界のほとんどの人はExcelとかSpreadsheetで生きてるから、CSVがすごく自然に感じるんだよ。<br>データ転送としてはCSVがエッジケースだらけだって一日中議論できるけど、結局お客さんが使ってるのはこれなんだ。" userName="nobleach" createdAt="2025/05/09 15:32:07" color="#45d325">}}




{{<matomeQuote body="あのデータサイズでCSV選ぶのは疑問だな。<br>サイズの効率も悪いし（実数はバイナリよりテキストの方がバイト食う）、<br>パースも最速じゃない（エスケープがあるからね）。<br>あと、区切り文字とかエスケープが一つでもズレると、それ以降全部ダメになるんだ。<br>エンコーディングとかデリミタの違いとか、他の問題もいっぱいあるしね。" userName="hermitcrab" createdAt="2025/05/09 15:37:16" color="#ff33a1">}}




{{<matomeQuote body="一番の理由は、依存関係がめんどくさいからだよ。特に別の言語を使ってるチームが同じフォーマットに対応する必要があるときは、さらにね。<br>parquetデータとかSQLite DBとか、他のものでデータをやり取りできたらいいなとは思うんだけど、それには上流・下流の他のチームに専用のサポートをお願いする必要がある。<br>CSVなら、誰でも、何でも対応してるんだ。もし対応してなくても、簡単なパーサーならサクッと作れる。CSVのパーサーを全てのエッジケースまでちゃんと作るのはすごく難しいのは知ってるけど、別にそこまで完璧じゃなくていいんだ。自分たちが使う機能だけサポートできればいい。それならシンプルで早いし、みんなすぐにデータを処理する本来の作業に移れるからね。" userName="elteto" createdAt="2025/05/10 16:48:14" color="#38d3d3">}}




{{<matomeQuote body="JSONって表形式のデータには向いてないんだよね。で、結構な量のデータが表形式なんだ。" userName="hermitcrab" createdAt="2025/05/09 20:18:43" color="#38d3d3">}}




{{<matomeQuote body="正直、21Gb/sの速度が役立つほどデカいスプレッドシートを読み込む必要なんて、まずないと思うけどね。" userName="heavenlyblue" createdAt="2025/05/09 15:51:59" color="">}}




{{<matomeQuote body="人間が意思決定やテキスト情報を生成するレートはせいぜいバイト/秒くらいだ、って？<br>うん、それはそうだけど、その意思決定の結果が持つ価値はもっと大きいんだよ。ユーザーにIDをつけたり、取引にIDをつけたり。どこで、いつ行われたかを保存したりね。そういうのを積み重ねるとデータ量は増えるんだ。" userName="internetter" createdAt="2025/05/09 15:04:32" color="">}}




{{<matomeQuote body="うん、社内向けによく使ってるよ。パースや使う上で困った記憶はないな。表形式データのファイル交換形式として、うちではちゃんと機能してる。もちろん、うちは文字セットが基本的にASCII文字と数字だけだから、カンマも引用符もいらないくらいだけどね。" userName="EasyMark" createdAt="2025/05/10 04:49:12" color="">}}




{{<matomeQuote body="あるある。特定のスタートアップが陥りやすい状況だと思うよ。<br>– 最初はデータが少ないからCSVでいいや、と誰かが決める。非エンジニアの人も読みやすいから、Excelくれって言われなくなるし。ここでいう非エンジニアってのは、データを見る必要があってExcel得意な人なら誰でもね。ビジネスサイドから研究者まで色々いる。<br>– CSVで作ってるから、社内のプロセスもCSVを使うようになる。CSVを消費する重要なパイプラインをいくつも作る。<br>– 突然データが10倍、100倍、それ以上になる。何かうまくいき始めたからだ：顧客が増えた、センサーのスループットが上がった、研究が進んだ、とかね。<br>– すると、数百万、数十億行のCSVを取り込むのを最適化する意味が出てくる。これは、よりこの種のデータに向いたフォーマットに社内プロセス（と他のチームのやつも）を移行し始めるまでの時間稼ぎになるんだ。" userName="moregrist" createdAt="2025/05/09 16:49:27" color="#45d325">}}




{{<matomeQuote body="それ（IDとかの追加）は、少しの情報しか追加しないと思うけどな（DBならJOINでモデル化されるだろうし）。すごく非効率にやらない限り、そんなに大量のデータを増やすことにはならないよ。" userName="zzbn00" createdAt="2025/05/09 15:53:48" color="">}}




{{<matomeQuote body="21 GB/sのCSVを処理した”結果”を保存することを考えるだけで、ゾッとするな。願わくば、何か役に立つ集計であってほしいけど、これが構造化データに対する検索の裏側で動いてるなら、どっかに保存しなきゃいけないわけだし…。" userName="sunrunner" createdAt="2025/05/09 14:18:57" color="">}}




{{<matomeQuote body="何十年分ものデータがそのフォーマット（CSV）で溜まってて、それをデータベースに入れたい、って場合があるかもしれないね。" userName="adrianN" createdAt="2025/05/09 15:09:10" color="#ff5733">}}




{{<matomeQuote body="唯一リアルな例として思いつくのは、USのオプション市場のフィードかな。今は50 GiB/sくらいまでいってて、1日6．5時間オープンしてる。データ分析のために一部だけ抜き出したとしても、膨大になりうる。こういうとこにはCSV使うべきじゃないって同意だけど、きっと使われてるんだろうな。" userName="cyral" createdAt="2025/05/09 20:28:46" color="#ff5c5c">}}




{{<matomeQuote body="うん、そういうサポートできるフォーマットはないね。<br>俺は数値データ（センサーの値とか）に偏ってるから、ライブラリとか依存関係を気にしなくても<br>data = (uint32_t *)read(f);<br>とか<br>data = struct.unpack...<br>みたいにできるんだよね。<br>君はもっと複雑な、構造が必要な可変フォーマットデータを扱ってるみたいだね．" userName="Neywiny" createdAt="2025/05/10 17:54:07" color="">}}




{{<matomeQuote body="標準ってのは（単体だと）最高じゃないことが多いけど、現実では広く使われてるから最高なんだよ。<br>この目的でCSVを置き換えたいって想像してみてよ。<br>技術的には超理にかなってる。だから調査して、もっと良い標準考えて、今あるやつの必要な機能全部網羅してるか確認して、リファレンス実装書いて、さあ採用してもらおうって行くわけだ。<br>最初に行ったところで二つ質問されるんだ。「ウチの提携機関でこれ受け入れてるとこどこ？」と「これに切り替える実際的なメリット何？」ってね。<br>一つ目の答えは「誰もいない」だし、二つ目は保守性とかプログラマーがハッピーになるとか、クライアントの名前がアクセント付きでもちゃんと処理できるとか、なんか曖昧で適当な感じになる。<br>次に行ったとこも同じ質問してきて、最初んとこ興味示さなかったから、答えはまた同じ。<br>「Good Enough」な既存の標準を置き換えるのって、マジで超大変なんだよね．" userName="wat10000" createdAt="2025/05/09 17:23:28" color="#ff33a1">}}




{{<matomeQuote body="実数はバイナリよりテキストの方が保存容量食うって言うけど、データセットの数値の分布によるかな．<br>小さい数値が結構あるなら、特に64ビットとかの大きいバイナリエンコーディングと比べると、テキストの方が効率的な表現になることもあるよ．" userName="jstimpfle" createdAt="2025/05/09 20:08:07" color="">}}




{{<matomeQuote body="JSONはさ、XMLが難しすぎるからって出てきたのにさ．<br>デベロッパー達は「そうだ、XMLにあったもん全部JSONにハックして戻そうぜ！ただしもっと悪く、非標準でな！」って感じだよね．だって結局そういうのたまに必要になるって分かったからさ！" userName="arcfour" createdAt="2025/05/10 16:42:14" color="">}}




{{<matomeQuote body="うん、XMLパースするの嫌いだけど、複雑なJSON表現が引き起こすラヴクラフト的世界観みたいなAPI設計と付き合うよりはマシかな．" userName="devmor" createdAt="2025/05/10 01:20:06" color="">}}




{{<matomeQuote body="JSONのtabular data形式は、CSVと比べて行ごとにブラケットが数個、ファイル最初と最後に付くだけだよ．圧縮すればこのわずかなビットなんてほぼ消えるし、その代わりに標準フォーマットが保証されるんだ．<br>俺的には良いトレードオフだと思うけどね．" userName="hajile" createdAt="2025/05/10 03:10:49" color="">}}




{{<matomeQuote body="上の皆さん、素晴らしい回答どうもです．<br>Cap’n Protoってやつがまさに君が説明してること（インメモリ表現とワイヤーフォーマットが同じで、それを見てgetter/setterメソッドが生成される）をやってるみたいだよ．" userName="trollbridge" createdAt="2025/05/10 03:08:19" color="#785bff">}}




{{<matomeQuote body="アセンブリ言語を見るのかと思ったら、C#が出てきてマジで驚いた．<br>超すごいね！<br>ナイスワーク！" userName="criddell" createdAt="2025/05/09 14:07:00" color="">}}




{{<matomeQuote body="モダンな.NETは、多くの人が「高レベル言語」と考えるものの中で、SIMDとvector intrinsicsとの連携が一番深いよ．<br>https://learn.microsoft.com/en-us/dotnet/standard/simd<br>MicrosoftのTanner Gooding氏がこの分野の開発の多くを担当していて、彼のブログ記事もいくつか参考になるよ．例えばこれとかね．<br>https://devblogs.microsoft.com/dotnet/dotnet-8-hardware-intr..." userName="gavinray" createdAt="2025/05/09 16:51:52" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
