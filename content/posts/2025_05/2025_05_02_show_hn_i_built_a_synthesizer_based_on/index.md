+++
date = '2025-05-02T00:00:00'
months = '2025/05'
draft = false
title = '3D物理ベースのシンセサイザー作った'
tags = ["シンセサイザー", "物理学", "プログラミング", "音楽", "3Dグラフィック"]
featureimage = 'thumbnails/purple7.jpg'
+++

> 3D物理ベースのシンセサイザー作った

引用元：[https://news.ycombinator.com/item?id=43873074](https://news.ycombinator.com/item?id=43873074)




{{<matomeQuote body="おー，ここにもオーディオ開発者いるんだね！ランディングページはすぐに音と見た目のデモを見せるべき。YouTubeじゃなくてvideojsとかさ。どんな音でどんな感じかすぐ分かるようにするんだ。これが俺の意見ね。" userName="AaronAPU" createdAt="2025/05/03 02:22:44" color="#45d325">}}




{{<matomeQuote body="ほんとそれな。デモ音源探すのにめっちゃスクロールしたわ。良いデモ曲はページの一番上にあるべきだと思うな。" userName="kookamamie" createdAt="2025/05/03 07:04:39" color="#45d325">}}




{{<matomeQuote body="もう1000％同意！なんか聴けるものが見つけられないとね。" userName="senbrow" createdAt="2025/05/03 03:59:57" color="#38d3d3">}}




{{<matomeQuote body="「オーディオ開発者が他にいないか」って？何人かいるよｗ。このシンセ超クールだね。すごく独創的。お疲れ様！" userName="jahnu" createdAt="2025/05/03 11:02:15" color="#ff5c5c">}}




{{<matomeQuote body="これすごいけど難しそう。プログラマーとしては超興味あるけど、ミュージシャンとしては微妙かも。今のページはプログラマー向けだね。ミュージシャンにはもっと複雑な音の例とか、プリセット紹介が必要だよ。動画の音は既存のに似てるし感動しなかった。手間かける価値あるか疑問だけど、応援してる！これは激励ね。" userName="deng" createdAt="2025/05/03 09:02:50" color="#ff33a1">}}




{{<matomeQuote body="OK，デモ触ってみたけど、即買いしたわ。応援のためでもあるけどね。これマジでやばい仕事だわ。" userName="deng" createdAt="2025/05/03 12:48:21" color="#ff5c5c">}}




{{<matomeQuote body="俺も即買い，マジ最高だよ。<br>M3 MBPでバッファ落ちてノイズ出たけど、ポリフォニー減らしたら大丈夫だった。作者さん、このすごいプラグイン、あとどれくらい効率良くできると思う？" userName="polotics" createdAt="2025/05/03 15:08:50" color="#ff33a1">}}




{{<matomeQuote body="これは長くてまだ続いてる話なんだ。GPUコードは最適化済みだけど、一番の問題はMacのOSがオーディオ用途でGPUクロック制御がうまくいかないこと。詳しいことはブログに書いたよ（リンク）。誰かAppleのOS/Metal関係者と繋いでくれる人いたらマジで助かる。" userName="humbledrone" createdAt="2025/05/03 18:05:31" color="#45d325">}}




{{<matomeQuote body="これ見て、音楽が3Dアニメーションを動かす逆のやつ思い出したわ。2000年代前半のAnimusicね（リンクいろいろ）。" userName="nayuki" createdAt="2025/05/02 20:42:37" color="">}}




{{<matomeQuote body="俺もAnimusic大ファンなんだ！LAで見てマジ感動、あれは絶対にインスピレーションになった！Animusicみたいなアイデアが、3Dグラフィックを完全にユーザーカスタム可能にした大きな理由の一つなんだよ。この沼に深くハマりたい人のためにね。" userName="humbledrone" createdAt="2025/05/02 22:01:01" color="#785bff">}}




{{<matomeQuote body="なんか遠い記憶が蘇る感じ…ビデオいくつか見たけど、完全にハマったよ！共有ありがとう。これ、VRでインタラクティブな音楽アプリとして最高だろうね、演奏するにも、トリッピーなPV撮るにもさ。" userName="omneity" createdAt="2025/05/03 11:55:26" color="#ff33a1">}}




{{<matomeQuote body="Animusicの最初の2本（VHSとDVD）持ってるけど、あれ最高だったよ。残念ながら、クリエイターはAnimusic 3でお金だけ取って何も作らなかったらしい、詐欺だね。ほとんどはYouTubeにあるよ。" userName="mjcohen" createdAt="2025/05/02 21:45:10" color="">}}




{{<matomeQuote body="ちょっと遅れてこの投稿見てる人へ： AppleのMetal担当の人に助けてほしいんだ。もし誰か知ってたら、繋いでもらえると嬉しいな：https://news.ycombinator.com/item?id=43901619<br>https://anukari.com/blog/devlog/an-appeal-to-apple" userName="humbledrone" createdAt="2025/05/06 03:57:26" color="#ff33a1">}}




{{<matomeQuote body="これ使うか正直わからない、手間かかりそうだし。でも、メールアドレスなしでデモダウンロードさせてくれてありがとうって言いたかったんだ。使わないって言ったけど、マスターボリュームがあるといいな、見落としたかな。VSTsをスタンドアローンで使うこと多いんだけど、プリセットいじらずに音量変えられるとちょっと楽になるんだよね。間違いなく、今まで見た中で一番面白いシンセだよ。" userName="tarentel" createdAt="2025/05/02 19:05:03" color="#ff5733">}}




{{<matomeQuote body="ありがとう、うん、マスターボリュームは絶対必要だよね -- 見落としてないよ、まだ実装されてないだけ！" userName="humbledrone" createdAt="2025/05/02 19:08:04" color="#ff33a1">}}




{{<matomeQuote body="めちゃくちゃクール！ページの一番上に、このシンセが最高な色々な使い方を繋ぎ合わせた60秒のビデオを置くことをお勧めするよ。" userName="airstrike" createdAt="2025/05/03 01:21:49" color="#785bff">}}




{{<matomeQuote body="GPUがサウンドシンセシスに使われてるの見るの、マジでクール！オーディオスレッドに追いつくには、オーディオスレッドのサイズで計算をバッチ処理すればいいだけだったなんて知らなかったよ。Stefan Bilbaoみたいな連続体に対して同じことやるってアイデアに惹かれるな：https://www.amazon.com/Numerical-Sound-Synthesis-Difference-... 数学的には同じことなのかな…" userName="florilegiumson" createdAt="2025/05/02 23:35:00" color="#785bff">}}




{{<matomeQuote body="これめちゃクール！Korg BerlinのPhase8思い出すな（https://korg.berlin/）。このプロジェクト超応援してるよ。Anukariに貢献できる？（物理学者なんだ）。こういう技術進歩のためなら何でも！オープンソースかは知らないけど、役に立てるなら手伝いたいな。" userName="sunray2" createdAt="2025/05/02 18:59:01" color="#ff33a1">}}




{{<matomeQuote body="しばらくは安定性とかパフォーマンスの改善に集中するつもりだけど、いずれクールな物理機能を追加していくよ。オープンソースじゃないんだ。でも、本物の物理学者と話せるのは間違いなく楽しいね（僕は自称物理学者の下の下だけど）。よかったら、いつでも evan@anukari.com に連絡ちょうだい！" userName="humbledrone" createdAt="2025/05/02 19:06:28" color="#ff5c5c">}}




{{<matomeQuote body="ありがとう、あとで連絡するね！デモ使ったけど、音は期待以上で直感的な編集も良く分かったよ。ただ、プリセットによってはM1 ProでCPU 100%になって音にノイズが入っちゃうんだ。Abletonでバッファサイズを変えても完全には改善しなかった。設定がおかしいのかな？役に立つなら詳細教えるよ。" userName="sunray2" createdAt="2025/05/02 19:43:25" color="#785bff">}}




{{<matomeQuote body="うん、低いバッファサイズでのパフォーマンスはマジ大変なんだよね。基本的に512以上を推奨してるんだけど、正直良くないのは分かってる。でも今はそれが一番現実的かな。問題は計算が全部GPUで実行されてて、往復の遅延を埋め合わせなきゃいけないことなんだ。いつかAppleを説得してカーネルスケジューリングの遅延を改善してもらいたいもんだよ。" userName="humbledrone" createdAt="2025/05/02 22:02:17" color="#ff5733">}}




{{<matomeQuote body="あなたとAudiocubeのNoahとの話（聞くのも見るのも）マジ聞きたいな。ここ見て→ https://news.ycombinator.com/item?id=42877399 https://main.audiocube.app/<br>3D空間DAWだよ。" userName="sitkack" createdAt="2025/05/02 19:28:57" color="#785bff">}}




{{<matomeQuote body="Audiocubeのことは前々からちょっと知ってたんだけど、彼と僕が全然やり取りしてないなんておかしいよね。そのうち彼にちょっかいかけてみようかな :)" userName="humbledrone" createdAt="2025/05/02 22:12:19" color="">}}




{{<matomeQuote body="これは結合オシレーターのアイデアを弦に発展させる提案だね。1Dオシレーター配列で波をモデル化して、ピアノのように両端にオシレーターやマイクを付けるイメージ。本物のピアノは3本使うって話も。あと円形の弦にオシレーターをランダムに付ける「サウンドリング」楽器なんてどう？面白そうな音が出そうだよ。" userName="akomtu" createdAt="2025/05/03 01:32:34" color="#785bff">}}




{{<matomeQuote body="もし円形の弦を作って、1つ以上のオシレーターをランダムな点に付けたらどうかな？<br>コンピューターがシステム要件を満たしてるなら、無料デモをインストールしてこのサウンドリング楽器を作って試してみたらいいじゃん！こういう変わったアイデアを作って何が起こるか見るのが、僕がこれでやる一番好きなことなんだよ。" userName="humbledrone" createdAt="2025/05/03 17:33:20" color="">}}




{{<matomeQuote body="ピアノの弦1本を作るのに、基本的なオシレーターが1000個くらい必要になるだろうね。" userName="akomtu" createdAt="2025/05/03 20:47:06" color="#ff5c5c">}}




{{<matomeQuote body="僕のRTX2080Ti（そんな安くないのは認めるけど）は、16ボイスあたり物理オブジェクト（質量）を768個サポートしてるんだ。もっとすごいのになると1024個いけると思う。システムの作り方次第で他にもパフォーマンスの制限はあるし、ピアノをシミュレートできるって主張したいわけじゃないけど…" userName="humbledrone" createdAt="2025/05/03 21:20:39" color="#ff5c5c">}}




{{<matomeQuote body="これマジでクールだし、無限の可能性があるね。例えば、実際にある楽器、ギターなんかをモデル化して、共鳴室の形や材料を実験できるとか。昔ながらの永続ライセンスモデルも最高！アップボートが足りないくらいだ。" userName="imhoguy" createdAt="2025/05/02 21:31:35" color="#38d3d3">}}




{{<matomeQuote body="GPUでオーディオやった経験についてすごく知りたいな。最悪のレイテンシはどれくらい？かなり決定的？それともたまに来るレイテンシのスパイクのために余裕を持たなきゃダメ？統合GPUとディスクリートGPUでレイテンシは結構違う？" userName="ssfrr" createdAt="2025/05/03 00:13:55" color="#ff5733">}}




{{<matomeQuote body="短く言うと、マジで大変だった。GPUハードウェアはいいけど、ドライバ/APIが低遅延向きじゃないんだ。カーネル実行の遅延が大きくて、最適化に苦労したよ。カーネル自体を速くしたり、macOSを騙してGPUクロック上げさせたりとか。詳しくはデブログ見てね。ここにリンクがあるよ→ https://anukari.com/blog/devlog/tags/gpu<br>https://anukari.com/blog/devlog/tags/optimization" userName="humbledrone" createdAt="2025/05/03 01:27:50" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="追加情報ありがと！GPU最適化の記事いくつか読んだけど、ほんと道のりだったんだね！先駆者として感謝！" userName="ssfrr" createdAt="2025/05/03 03:28:37" color="">}}




{{<matomeQuote body="物理ベースのオーディオ大好き！GPU使うのナイスアイデアだね。別の物理オーディオシミュレーションだと、AngeTheGreatが作ったエンジンの音シミュレーターも好きだよ：https://youtu.be/RKT-sKtR970?si=t193nZwh-jaSctQM" userName="modeless" createdAt="2025/05/03 00:53:17" color="#ff5733">}}




{{<matomeQuote body="彼の作品はマジで超クールだよ。GPU使ったトランペットの物理モデリングの動画もあって、一瞬競合作ってるのかと思っちゃった" userName="humbledrone" createdAt="2025/05/03 01:22:16" color="">}}




{{<matomeQuote body="注釈ね、彼らが言ってるのは最近のDOOMのサウンドトラックで有名なMick Gordonのことだよ。DOOM Eternalのスコアはマジで最高。Mick Cormickは間違いだと思うな。おめでとうございます！！" userName="adzm" createdAt="2025/05/02 23:17:41" color="#ff5c5c">}}




{{<matomeQuote body="いやー、Mick Gordonじゃなくて”Mick Cormick”って誤植しちゃったの、マジ恥ずかしいわ。O_o<br>なんかJohn Carmackと脳内でごっちゃになったのかも。訂正ありがとね！" userName="humbledrone" createdAt="2025/05/02 23:47:24" color="">}}




{{<matomeQuote body="McCormickって人気の調味料ブランドだよ<br>https://i5.walmartimages.com/seo/McCormick-Pure-Ground-Black...<br>笑笑" userName="tbalsam" createdAt="2025/05/03 01:15:47" color="">}}




{{<matomeQuote body="ちなみにDOOM Eternalのサウンドトラックを巡る騒動にも注目ね：https://medium.com/@mickgordon/my-full-statement-regarding-d..." userName="throwaway7894" createdAt="2025/05/03 04:42:33" color="#785bff">}}




{{<matomeQuote body="うわー、これマジでクール！2Dのノブやスライダーだらけの世界で、物理的に3Dにしたところが際立ってて好きだな…<br>でも精度出すには2Dスライダーが一番だから、それも残ってるんだね。" userName="corytheboyd" createdAt="2025/05/02 18:42:53" color="#ff33a1">}}




{{<matomeQuote body="俺ら多くの人がクールなアイデア持ってても、結局作らないんだよね。でもあんたは作った。あんたに敬礼するよ、このマッドマンめ！" userName="michaelhoney" createdAt="2025/05/02 22:31:56" color="">}}




{{<matomeQuote body="実用には常に音楽的／調律された演奏モードが必要だね。具体的な方法はNIのキーボードゾーン（コード／パターン等）が参考になるかも。課題は複数音符システムの共鳴アルゴリズムかな。ピアノ式にキーごと１システムで共鳴、参照システムで自動調律とか。素晴らしい作品で、GPUのおかげでスケールできるね。" userName="1R053" createdAt="2025/05/03 09:20:46" color="#785bff">}}




{{<matomeQuote body="めっちゃ最高じゃん！音楽制作全然わかんないけど、ただ遊びたくて触りたいな。ちょっと遊ぶだけの人向けに、もっと簡易なWeb版とかあると最高だね。<br>開発とリリース、お疲れ様でした！とにかくおめでとう！<br>追記: デモモードあるんだね！それ最高！まさに探してたやつだ" userName="gregschlom" createdAt="2025/05/02 18:54:36" color="#ff33a1">}}




{{<matomeQuote body="オーディオ関係全然詳しくないけど、キミが書いた記事マジで感謝だよ。これ、めちゃくちゃ面白い内容だね。どんどん読み進めたい気分。Mick Gordonの動画も最高だった。リリースおめでとう、頑張ってね！" userName="ziddoap" createdAt="2025/05/03 02:12:56" color="">}}




{{<matomeQuote body="それ聞いて嬉しいよ。記事書くの楽しいし、自分の考え整理するのにすごく良い方法だって思うんだ、自分にとってもね。でも、他の人の開発ブログ読むのも好きだから、こうやって貢献できて嬉しいよ。 :)" userName="humbledrone" createdAt="2025/05/03 19:57:28" color="">}}




{{<matomeQuote body="すごく買いたいんだけど、いくつかサイトに情報が足りないな。<br>- 一回買えばWindowsデスクトップとMacBook旅行用PC両方で使える？<br>- もしそうなら、ファイルは互換性ある？<br>- WindowsでのGPU要件は？スケールするのはわかるけど、3080で十分？それとも足りない？" userName="brookst" createdAt="2025/05/03 03:36:51" color="#45d325">}}




{{<matomeQuote body="アカウント見ると3台までインストールできるし、必要ならPCの無効化もできるよ。M1でも3060でもサクサク動くし、一番重いアセンブリ以外ならオンボードのIntel graphicsが入った小さな仕事用ノートPCでも大丈夫だった。ファイルは互換性あると思う、プリセットはMacOSもWindowsも同じだね。" userName="mutagen" createdAt="2025/05/03 05:48:19" color="#785bff">}}




{{<matomeQuote body="うん！mutagenが言ってたこと全部確認できたよ。プリセットはMacとWindowsの間で確実に持ち運べるね。" userName="humbledrone" createdAt="2025/05/03 17:28:41" color="">}}




{{<matomeQuote body="ウェブサイトには、最初にもっと良いYouTube動画を置くべきだね。" userName="rvba" createdAt="2025/05/02 19:23:06" color="#ff5733">}}




{{<matomeQuote body="キミの言うこと100%正しいよ。わかったのは、俺はまあまあなエンジニアだけど、ひどいマーケターだってことだ。サイトも動画も改善する必要があるところがたくさんあるね。" userName="humbledrone" createdAt="2025/05/02 19:47:39" color="">}}




{{<matomeQuote body="あのきれいなスクリーンショット全部に、再生ボタンと数秒の音声を付けるべきだよ。シンセサイザーを音じゃなくて見た目で売り出すのは、正直変だね。" userName="mkl" createdAt="2025/05/02 21:25:58" color="#ff5c5c">}}




{{<matomeQuote body="うん、確かにシンセサイザーだよ—君は隅々まで分かってるだろうけど、デモ動画があれば、よく知らない人でも「ああ、なるほどね」ってすぐ理解できると思うよ" userName="tbalsam" createdAt="2025/05/02 21:50:56" color="#45d325">}}




{{<matomeQuote body="ちょっとしたオーディオ例もあるといいね。動画をスクロールしなくても聞けるから。でも、素晴らしい仕事だよ！" userName="shannifin" createdAt="2025/05/02 19:54:33" color="#785bff">}}




{{<matomeQuote body="そうだね、かっこいい3D画像全部クリックしたらデモ動画が再生されるべきだね！" userName="imhoguy" createdAt="2025/05/02 21:24:27" color="">}}




{{<matomeQuote body="ひどいマーケターなんて言い過ぎだよ。この点以外はランディングページは素晴らしいと思うな。" userName="pierrec" createdAt="2025/05/03 03:13:06" color="">}}




{{<matomeQuote body="自分なりに賢いと思ってたアイデアを、他の人がずっと先に実現してるのを見ると複雑な気持ちになるけど、これはかっこいいし尊敬するよ。" userName="smolder" createdAt="2025/05/03 06:29:54" color="">}}




{{<matomeQuote body="ハハ、その気持ち分かるな。大体アイデアを思いついても、4年待つと誰かがやっちゃってるんだよね。”良くない”アイデアでさえ。90年代半ばに大規模なネット監視のアイデアを思いついたんだけど、気持ち悪すぎて誰もやらないと思ってたんだ。naiveだったよ。" userName="devrandoom" createdAt="2025/05/03 12:23:39" color="">}}




{{<matomeQuote body="これやばいね。今までたくさんのバーチャルシンセ使ってきたけど、ダントツでこれが一番かっこいいよ。 Mickの動画も最高だった！" userName="dylanz" createdAt="2025/05/02 23:00:54" color="#785bff">}}




{{<matomeQuote body="くそっ。俺も同じようなの作ってるんだ、でも2Dで。" userName="bufferoverflow" createdAt="2025/05/02 20:31:12" color="">}}




{{<matomeQuote body="落ち込まないで！この場合はもしかしたら2Dの方が3Dより良いかもよ：結局大事なのは音の鳴り方でしょ？2Dシミュレーションが3Dより安くできて、音も同じくらいかそれ以上に良ければ、君に有利じゃん！こういうのの本当のキモはそこだと思うな：何がこれらのサウンドを実際に良くするのかってこと。" userName="sunray2" createdAt="2025/05/02 20:46:12" color="#ff33a1">}}




{{<matomeQuote body="2Dにはたくさんの利点があるよ—計算量が少なくて済むから、より多くのオブジェクトとか複雑な相互作用をシミュレートできるし、他のコメントでも言ってるように、もっと良いGUIを作るのもずっと簡単だろうね。どれだけたくさんのコンプレッサー VSTsがあるか考えてみてよ、それでもみんな作り続けてるんだから！そして2DのAnukariは、ほとんどのコンプレッサーがお互い違うよりも、3DのAnukariとはずっと違うものになる可能性があるよ。" userName="humbledrone" createdAt="2025/05/02 22:10:55" color="#ff5c5c">}}




{{<matomeQuote body="これ2Dの方が絶対いいって。3Dにしても2Dでできないことそんな増えないし、UIがめっちゃ使いにくくなるだけだよ。" userName="IshKebab" createdAt="2025/05/02 21:11:22" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="3Dは確かにカッコいいけど、使う側としては2Dの方が断然楽だよね。その手の研究もあったはずだよ、ちょっとリンク見つからないけど。追記：hnスレッド見つけたよ https://news.ycombinator.com/item?id=19961812" userName="chadcmulligan" createdAt="2025/05/03 00:18:15" color="">}}




{{<matomeQuote body="ずっと使えるライセンスとかAIなし、あと3Dモデルとかアニメーションがカスタマイズできるのが超いい！<br>特にアニメーションは、変調に合わせて3Dキャラの口パクさせたりとか、音楽と映像をクリエイティブにシンクさせるのに期待しちゃうね。<br>アニメーションってフレーム数とか長さは決まってるのかな？" userName="exodust" createdAt="2025/05/03 05:11:21" color="#ff5733">}}




{{<matomeQuote body="カスタム3Dモデルについてはここ見てね（リンク）。アニメーションは時間t=0から1で動くのをAnukariが操作する感じだよ。マレットは0で止まってて1で伸びる状態をベロシティに合わせて動かす。回転するやつは0と1がシームレスになるようにしてね。まだカスタマイズした人少ないから手順分かりにくいかもだけど、もし挑戦するならいつでも連絡してね！質問答えるよ。（evan@anukari.comかdiscord）" userName="humbledrone" createdAt="2025/05/03 17:37:50" color="#ff5733">}}




{{<matomeQuote body="ターゲット層だけどデモ楽しみ！ただ、ベータ版v1で70USドルは正直、ちょっと高いって感じる人もいると思うし、買うのが難しい人もいるかも。正直な感想として。<br>あと、VRとかARの話が全く出てないのが意外だったな。3D楽器って聞くと、自分がいる空間で触ってみたいって夢見ちゃうんだよね。それって開発者さんにも響く？" userName="peteforde" createdAt="2025/05/03 02:41:45" color="#ff33a1">}}




{{<matomeQuote body="あはは！このアイデア、俺もずっと昔から持ってたけど、結局作らなかったんだよね。ちょっと触ってみるわ、シェアしてくれてありがとう！" userName="junon" createdAt="2025/05/02 20:19:48" color="">}}




{{<matomeQuote body="買うボタンはアプリの中に置いて、「今すぐダウンロード」ってデカいボタンを一番上に置くのどう？<br>デモ版も製品版も同じダウンロードにしちゃえば、まずは自分のPCに入れて動かしてから買うかどうか決められるじゃん。" userName="sneak" createdAt="2025/05/03 06:52:08" color="#38d3d3">}}




{{<matomeQuote body="めっちゃ面白そう！音質気になる人いる？<br>例の動画とかでクリックノイズみたいなのが聞こえるんだよね。アタックがキツいか、エイリアシングか、サンプルレートの問題か、音割れっぽい。<br>ヘッドホンで分かりやすいかも。<br>告知動画の3:11とか、「J.S. Bach, Prelude in C Major (BWV 846)」の4.4〜7.2秒あたりとか。Audacityのスペクトログラムでも少し見えるよ。<br>Firefoxやyt-dlpだと聞こえるのにChromiumだと聞こえなかったりして変。<br>訂正：Chromiumでもたまに聞こえる動画あったわ。" userName="hamoid" createdAt="2025/05/02 22:33:01" color="#ff5733">}}




{{<matomeQuote body="Anukariの録画、ちょっと大変だったんだよね。<br>OBSってGPUエンコード使うと一番調子いいんだけど、GPUがいやがるようなことしてるみたい（AnukariもGPU使うし）。<br>動画で聞こえるノイズはそれが原因じゃないかなと思ってるよ。<br>でも、マイクコンプレッションとかデフォルトのアタック時間とかも改善の余地あるかもね。" userName="humbledrone" createdAt="2025/05/02 23:01:15" color="#785bff">}}




{{<matomeQuote body="もしマジで録画が原因なら、GPUじゃなくてCPUで、ロスレスコーデックの速いやつ使って、後からちゃんとエンコードし直すって手もあるかもよ。<br>ソフトウェアエンコードの方が品質も上がるはず。<br>ただしSSDとかめっちゃ容量必要だけどね。" userName="fc417fc802" createdAt="2025/05/03 00:13:59" color="#ff5733">}}




{{<matomeQuote body="Anukariを動かしてるPCから別のPCのHDMIキャプチャドングルにHDMI出力して、録画のオーバーヘッドを全部オフロードしてみた？<br>音楽は全然ダメだけど、珍しいユニークなシンセ方式には昔からすごく弱いんだよね。<br>デスクトップPCに戻り次第、すぐ買うよ：）。" userName="blincoln" createdAt="2025/05/03 19:44:17" color="#ff5733">}}




{{<matomeQuote body="めっちゃきれいだねー。<br>AIがどんな楽器を作って、今までにない音を生み出すか気になるなー…。" userName="siavosh" createdAt="2025/05/02 22:42:03" color="">}}




{{<matomeQuote body="マジやばいね！<br>Linux版とかって予定ある？" userName="titaphraz" createdAt="2025/05/02 22:35:39" color="#ff5c5c">}}




{{<matomeQuote body="GPUでこれ動かすためのインフラに、すっごい手間がかかってるみたいだね。<br>これやるのと物理シミュレーションやるの、どっちが面白かった？<br>弦とか空気のシミュレーションも考えたことある？" userName="danw1979" createdAt="2025/05/03 08:26:37" color="#785bff">}}




{{<matomeQuote body="深い最適化作業が好きだからGPU関係が面白かったけど、物理シミュレーションもオブジェクトのモデリング実験とか超楽しかった。<br>単純な計算の変更で面白い動きが出たり、物理は遊び心があるね。<br>RE strings/airはちょっと考えたことあるよ！<br>将来的にはもっと物理オブジェクトを探求したいし、弦を世界にどう組み込むか考えるのもすごく楽しいんだ。<br>クールな方法がありそう。" userName="humbledrone" createdAt="2025/05/03 20:00:50" color="#ff5c5c">}}




{{<matomeQuote body="その推奨に賛成！Twitter/Xアカウントがなくても、Mick Gordonのセッションを見る方法を探すべきだよ！<br>めちゃくちゃ面白いんだけど、同時にこのシンセがどれだけすごいかも本当にわかるんだ。<br>最高！" userName="fractallyte" createdAt="2025/05/02 20:21:37" color="#38d3d3">}}




{{<matomeQuote body="ねぇ evan<br>ちょっと気になったんだけど、この環境に3Dモデルってインポートできるの？<br>max/msp modalsysよりコーディング不要な環境をずっと求めてるんだよね。" userName="an_aparallel" createdAt="2025/05/02 21:11:03" color="#ff5733">}}




{{<matomeQuote body="3Dモデルもskyboxesも全部置き換えられるよ。<br>全部オープンフォーマットでzipにまとまってる。<br>詳しくはFAQ見てね：<br>https://anukari.com/support/faq#custom-skyboxes<br>https://anukari.com/support/faq#custom-skins<br>まだ試した人はいないみたいで、解説が完璧じゃないかも。<br>もし試したら、どんな感じか教えて！" userName="humbledrone" createdAt="2025/05/02 22:07:24" color="#ff33a1">}}




{{<matomeQuote body="すごいね、例えばビューグル（bugle）のモデルをインポートしたとして、anakuriはwind stream（風の流れ）に対応してる？<br>bowとかpluckみたいに、air/windがオブジェクトとしてリストにないみたいだけど。" userName="an_aparallel" createdAt="2025/05/02 23:29:06" color="#ff5733">}}




{{<matomeQuote body="今のところ風みたいなモデルはないけど、弓モデルで結構フルートっぽい音が出せるんだよね（正直今の弓モデルだと、リアルな弓の音っていうよりパンフルートとかの方が得意かもしれない）。" userName="humbledrone" createdAt="2025/05/03 01:23:28" color="#ff33a1">}}




{{<matomeQuote body="Evanさん、ありがとう！それって風のモデルを作るのが複雑だから？" userName="an_aparallel" createdAt="2025/05/03 06:16:23" color="">}}




{{<matomeQuote body="正直、風のモデルはまだあんまり考えてなかったんだ！長期的に見て、どこでも安定して速く動くようになったら、もっと物理的な機能を追加したいと思ってるから、これはぜひ検討したいことの一つだね。" userName="humbledrone" createdAt="2025/05/03 17:30:01" color="#ff5733">}}




{{<matomeQuote body="ベータ版の動画は、見る側が「なぜこれに興味を持つべきか」を知ってる前提で、いきなり技術的な話に入ってるよ。プロデューサーにとっては新しいものかもしれないんだから、まず「なぜこれが重要なのか」を最初に伝えるべきだね。" userName="nprateem" createdAt="2025/05/03 04:45:09" color="">}}




{{<matomeQuote body="音色はほとんどモジュレーションされたサイン波で、音色のバリエーションが少ないみたい？どうやって動画（https://youtu.be/NYX_eeNVIEU?t=179）では基本的なブロックから倍音を出してたのかよく分からないな。" userName="nyanpasu64" createdAt="2025/05/03 06:04:33" color="">}}




{{<matomeQuote body="いつか開発ブログで詳しく説明するつもりだけど、僕も昔同じこと疑問に思ってたんだ。2Dでバネが複数あると、思ってるより複雑で非線形になるんだよ。軸に沿って動かすだけなら単純な振動だけど、軸から外れるとバネの力が常に方向を変えるから単振動じゃなくなるんだ。分かりにくかったらごめんね。図で説明したくて、面白いことなんだよ。あとデモ動画では他の要因（マイクとかアナログオシレーター）も倍音の原因になってるって話だよ。" userName="humbledrone" createdAt="2025/05/03 17:27:41" color="#ff5733">}}




{{<matomeQuote body="見れてよかったよ。VRで、Quest 3とかApple Vision Proにストリーミングしても面白いかもね（OpenVRとかWebXRで？）。" userName="erwincoumans" createdAt="2025/05/03 03:30:28" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
