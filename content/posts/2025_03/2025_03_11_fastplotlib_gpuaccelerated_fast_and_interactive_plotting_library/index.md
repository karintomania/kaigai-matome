+++
date = '2025-03-11T00:00:00'
months = '2025/03'
draft = false
title = 'GPU加速で超高速なインタラクティブ描画ライブラリFastplotlibが登場！'
tags = ["GPU", "描画ライブラリ", "インタラクティブ", "データ可視化", "プログラミング"]
featureimage = 'thumbnails/green1.jpg'
+++

> GPU加速で超高速なインタラクティブ描画ライブラリFastplotlibが登場！

引用元：[https://news.ycombinator.com/item?id=43334190](https://news.ycombinator.com/item?id=43334190)

{{<matomeQuote body="２週間に１回くらいGithub見てるけど、これは本当に期待できそうだね。統計遺伝学ではマンハッタンプロットっていう大きな散布図を作るんだけど、特化したソフトを使わないといけないんだ。これを試してみるのが楽しみ！" userName="CreRecombinase" createdAt="2025-03-11T17:23:34" color="#ff33a1">}}

{{<matomeQuote body="面白いケースだね！もし問題があったら、リポジトリに問題を投稿してくれれば助けるよ。マンハッタンプロットのデモを追加することも考えられそうだね！" userName="clewis7" createdAt="2025-03-11T19:44:46" color="#ff5c5c">}}

{{<matomeQuote body="Rでggplot2使ってるなら、`ggrastr`パッケージ、特に`ggrastr::geom_point_rast`も考えてみて！" userName="j_bum" createdAt="2025-03-11T21:45:08" color="">}}

{{<matomeQuote body="大きな散布図は、クレームの視覚化や詐欺発見にも役立つよ。 " userName="swalsh" createdAt="2025-03-12T12:52:37" color="">}}

{{<matomeQuote body="ManimGLは試してみた？すごく面白いし、Cursor用のMCPにすることもできるんだ。" userName="samstave" createdAt="2025-03-12T03:10:58" color="">}}

{{<matomeQuote body="すごく期待できそうだね。この視覚化ツールがどんな可能性を引き出すか考えてみるよ。Rerunっていうロボティクス風の視覚化アプリも気になってるんだ。" userName="jarpineh" createdAt="2025-03-12T13:11:23" color="">}}

{{<matomeQuote body="近代的なCPUで10万ポイントを描くのに時間がかかるのは面白いよね。486DX 50MHzの時はスムーズに動いてたのに！" userName="dcl" createdAt="2025-03-12T04:57:20" color="">}}

{{<matomeQuote body="Rの側から見ると、ggplot2はほんとに遅いと思う。Base Rのグラフィックスなら大体100ミリ秒で10万ポイントをプロットできるよ。" userName="kkoncevicius" createdAt="2025-03-12T10:59:35" color="">}}

{{<matomeQuote body="このSOスレッドでは、ggplotがどれくらい時間を使うか分析してるんだ。GPU統合が速度向上にどれくらい役立つかは不明だけど。" userName="sieste" createdAt="2025-03-12T08:35:41" color="">}}

{{<matomeQuote body="ミリオンポイントのような大きなデータセットの最適化は誰も気にしていないみたいだね。私は自分のツールを書くことで、何百万ものポイントを問題なく表示することができたよ。" userName="stackedinserter" createdAt="2025-03-12T14:55:22" color="#ff33a1">}}

{{<matomeQuote body="WGPUを使ってるみたいで、これはVulkanやMetal、DX12に対応したクロスプラットフォームのグラフィックスAPIだね。データがクラスタのマシンにあるならサーバーを起動して、HTTP経由でデータをブラウザで描画するのは面白そう。データ帯域幅が制約になるけど、簡単なケースでは有用だと思う。<br>＞定義するプロトコルは、HTTP経由でプロットポイントを転送して、ブラウザのWebGPUインターフェースに効率的に渡すことができればいいね。サーバー側で前処理すればもっと効率的な表現も可能かも。" userName="zoogeny" createdAt="2025-03-11T23:11:37" color="#ff5733">}}

{{<matomeQuote body="データがクラスタにある時、jupyter-rfbを使えばリモートレンダリングができて、リモートフレームバッファに描画してJPEGバイトストリームで送信できる。何人かの科学ユーザーもこうやって使ってるよ。<br>＞プロトコルを定義するのはGSPのように思うけど、Cyrille Rossantが関わってるみたいで、少し用途が違うかも。" userName="kushalkolar" createdAt="2025-03-12T00:41:08" color="#ff33a1">}}

{{<matomeQuote body="GSPって何のこと？PythonのGSPで調べたけど、Generalized Sequence PatternやGraph Signal Processingとか色々出てきて、どれもプロトコルには見えない。また、Generic Signaling ProtocolやGlobal Sequence Protocolも見つけたけど、これも関係ないみたい。もしかして有名な何かの略称？" userName="zoogeny" createdAt="2025-03-12T00:54:16" color="">}}

{{<matomeQuote body="Graphics Server Protocolってことみたいだね。ちょっとこの件について調べたら、LLMを使ったらしい。そういうもので略語の意味を解明していくのは結構便利だよね。検索エンジンでの確認もできるし。" userName="bglazer" createdAt="2025-03-12T01:37:17" color="">}}

{{<matomeQuote body="まだ準備が整ってないかもね、Cyrilleがもう少し詳しく説明できると思うけど。グラフィカルオブジェクトをシリアライズするプロトコルらしくて、面白いアイデアだと思うよ。" userName="kushalkolar" createdAt="2025-03-12T01:41:52" color="#ff33a1">}}

{{<matomeQuote body="WGPUはPythonよりもRustのものって感じだね。" userName="mkl" createdAt="2025-03-11T23:14:41" color="">}}

{{<matomeQuote body="ちょっと補足すると、wgpuはRustで実装されたWebGPUで、DawnはGoogleのC++実装なんだ。それぞれC-APIを公開していて、wgpu-pyが両方に搭載できるようになる予定なんだ。（注：wgpu-pyの作者だよ）" userName="almarklein" createdAt="2025-03-12T07:37:55" color="#45d325">}}

{{<matomeQuote body="確かにwgpu-pyのページをチラ見しただけだから、少しばかり間違ってたかもしれないけど、wgpu-nativeをラップしてるんだね。" userName="zoogeny" createdAt="2025-03-11T23:16:35" color="">}}

{{<matomeQuote body="言ってることはGraphistryみたいだね。これはなかなか面白そうだ。" userName="Swannie" createdAt="2025-03-12T04:47:34" color="">}}

{{<matomeQuote body="最近のプレゼン動画見たら、ネットワーク可視化に挑戦したくなった！ノードやエッジをクリックやボックス選択でサブグラフをハイライトするのができたら良いな、と思ってる。まだ進んでないけど、何かできたら例を提供するつもり。最終的にはシェーダートイをFPLのサブプロットにインタラクティブに描画できたらいいなと考えてる。" userName="Vipitis" createdAt="2025-03-11T22:04:47" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="こんにちは！wgpu-pyの作品見たことあるよ！何か手伝いやアイデアがあれば教えてね。最近メインブランチに双方向イベントを可能にするPRをマージしたばかりだよ。" userName="kushalkolar" createdAt="2025-03-11T22:12:10" color="#785bff">}}

{{<matomeQuote body="めっちゃ興味深いね。でも、Jupyterノートブックでどうなるのかがわからない。GPU加速はクライアントサイド（JavaScript）なのか、それともサーバーサイド（カーネル）なのか、両方の選択肢があるのか？Google Colabで使った速いビジュアライゼーションライブラリも、クリック後に画像が表示されるのに2秒かかることがあったから、ネットワーク経由で遅くなることがあるのかも。" userName="crazygringo" createdAt="2025-03-11T19:30:22" color="#ff5c5c">}}

{{<matomeQuote body="FastplotlibはJupyterlabでjupyter-rfbを通じて動作するよ。ローカルでカーネルを実行すればパフォーマンスもかなり良いと思うし、ドキュメントにも詳しく書いてあるよ。" userName="ivoflipse" createdAt="2025-03-11T19:37:22" color="#ff5c5c">}}

{{<matomeQuote body="ありがとうIvo！Colabは変な挙動があってあまりパフォーマンスは良くないよ。jupyter-rfbをColabで動作させる試みを紹介するPRがあるよ。" userName="kushalkolar" createdAt="2025-03-11T19:48:40" color="">}}

{{<matomeQuote body="サンキュー。ColabのカーネルでインタラクティブなMatplotlibが遅い理由がずっと謎だった。ColabのCPUは速いし、ネットワークも早いのにボトルネックがどこにあるのか分からないんだ。" userName="crazygringo" createdAt="2025-03-11T20:03:37" color="">}}

{{<matomeQuote body="思い出した！Googleのサーバーかネットワークに変なことがあると思う。カスタムGoogle Cloudインスタンスでもパフォーマンスが悪かったから、詳細はこれを参照してね。" userName="kushalkolar" createdAt="2025-03-13T22:23:51" color="">}}

{{<matomeQuote body="Google ColabはリモートJupyterカーネルと比べて遅いの？ネットの問題なのか、特にColabに特有の何かがあるのか気になる。" userName="paddy_m" createdAt="2025-03-11T21:51:03" color="">}}

{{<matomeQuote body="上でコメントしたよ。詳しくはこれを見て！" userName="kushalkolar" createdAt="2025-03-13T22:24:22" color="">}}

{{<matomeQuote body="どれくらいのデータポイントが扱えるのか数値が知りたい！例えば、散布図で何百万のデータポイントがプロットできるのか興味がある。" userName="theLiminator" createdAt="2025-03-11T17:19:50" color="#38d3d3">}}

{{<matomeQuote body="はい！データポイントは数百万単位になるよ。正直なところ、GPUの質がここでの制約になるわ。でも大抵の使い方では、統合GPUで十分だと思う。参考までに、2017年製のミッドレンジの統合GPUで300万ポイント以上プロットしたことがあるよ。これに関して何か指標をドキュメントに追加する予定だから、役立つと思う。" userName="clewis7" createdAt="2025-03-11T19:16:22" color="#38d3d3">}}

{{<matomeQuote body="そうそう！大規模なポイントクラウドのパフォーマンス比較は面白いね（CloudCompareやPotreeみたいな）。" userName="enriquto" createdAt="2025-03-11T22:39:31" color="">}}

{{<matomeQuote body="HoloVizと比べるとどうなの？オンラインワークショップに参加したことがあるけど、すごく強力だけど、どの部分が何をするのか分かりにくかったな。" userName="wodenokoto" createdAt="2025-03-12T05:02:04" color="">}}

{{<matomeQuote body="FastplotlibはBokehやHoloVizとは全然違うし、用途も異なるよ。BokehやHoloVizはデータをJSフロントエンドに送って描画するけど、FastplotlibはPython側で全部処理して、Jupyterで使うときは圧縮されたフレームバッファを送信するんだ。FastplotlibはQtやglfwのネイティブデスクトップアプリとしても動作するから、Bokeh/HoloVizとは違うんだ。さらに、描画速度が速くて、4Kビデオを60Hzでスムーズに再生できるよ。" userName="kushalkolar" createdAt="2025-03-12T15:35:12" color="#785bff">}}

{{<matomeQuote body="大きな違いは、FastplotlibはGPU技術に基づいているから、より大きなデータセットをインタラクティブにレンダリングできる点かな。" userName="almarklein" createdAt="2025-03-12T07:32:43" color="#ff5c5c">}}

{{<matomeQuote body="どれくらい大きいの？HoloVizにはGPUベースのレンダリング用のDatashaderライブラリが含まれてるけど、ここに10百万ポイントの例があるよ。" userName="unnah" createdAt="2025-03-12T16:07:34" color="">}}

{{<matomeQuote body="Datashaderはよくは知らないけど、プリミティブ（例えばポイント）から画像を生成して、その画像をインタラクティブに検査する感じだと思う。Fastplotlib/Pygfxのように毎フレーム再レンダリングするわけじゃないんだ。GPUによっては、1～5000万ポイントをスムーズにレンダリングできるよ。" userName="almarklein" createdAt="2025-03-12T20:03:43" color="#38d3d3">}}

{{<matomeQuote body="これはめっちゃクールだね！試すのが楽しみだよ。GPUプロットライブラリの重要な機能は、torch/jaxのcuda配列を直接使えるようになることだと思う。CPUを介さずに転送するのは遅すぎるからね。" userName="juliusbk" createdAt="2025-03-11T20:19:26" color="#785bff">}}

{{<matomeQuote body="ありがとう！それは素晴らしい質問だね。私たちも葛藤してることなんだ。いろいろ調べたけど、違うコンテキストがGPU上で設定されているため、これが不可能だとは思うよ。" userName="kushalkolar" createdAt="2025-03-11T20:26:27" color="">}}

{{<matomeQuote body="うん、私もいろいろ調べてみたけど簡単な方法は見つからなかったな。残念だね。もしかしたら難しい方法があるかもしれないけど。" userName="juliusbk" createdAt="2025-03-11T20:29:17" color="">}}

{{<matomeQuote body="Datovizのユーザーリクエストでこの問題を調べてたんだけど、VulkanとCuPyのUnownedMemoryを使う方法があるみたい。VulkanとCuPyだけで簡単な概念実証を作ったんだ。今、ユーザーがDatovizのGPUバッファをCuPy配列としてラップできるように取り組んでる。このおかげでデータ転送なしでGPUデータに対して効率的な配列操作ができるはず。" userName="rossant" createdAt="2025-03-11T21:08:01" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="これ面白いね！WGPUがVulkanと連携してるなら、同じことできるか気になるけど、難しいんだろうな。ブラウザ用だからセキュリティ保護があるし、無理なんじゃないかな。" userName="kushalkolar" createdAt="2025-03-11T21:43:19" color="">}}

{{<matomeQuote body="今のところ無理みたいだね。例えば、ここを見てくれ：＞“https://github.com/gfx-rs/wgpu/issues/4067”" userName="rossant" createdAt="2025-03-11T22:17:43" color="">}}

{{<matomeQuote body="つまり、CuPyを使って設定したGPUの配列があって、そのポインタをブラウザに渡せばWASM/WebGPUで同じ配列にアクセスできるってこと？それ大きなセキュリティの穴だと思う。" userName="paddy_m" createdAt="2025-03-11T21:47:18" color="#785bff">}}

{{<matomeQuote body="セキュリティの問題だからWGPUでは無理だと思うけど、VulkanとCuPyはローカルで動くからそれほど心配しなくて大丈夫。" userName="kushalkolar" createdAt="2025-03-11T21:51:41" color="#38d3d3">}}

{{<matomeQuote body="そうそう、デスクトップでは簡単にできることも、ブラウザでは難しいよね。" userName="rossant" createdAt="2025-03-11T22:15:48" color="">}}

{{<matomeQuote body="概念実証をここに公開したよ：＞“https://gist.github.com/rossant/517806ea551f4038fd412c23c3d6...”" userName="rossant" createdAt="2025-03-12T10:11:17" color="">}}

{{<matomeQuote body="Python配列API標準を使えたりする？それとも計算だけに適してるのかな。" userName="PerryStyle" createdAt="2025-03-11T21:18:17" color="">}}

{{<matomeQuote body="メモリ転送ボトルネックについてはわからないけど、fastplotlibをJAX加速に切り替えるのってどれくらい難しいんだろう？" userName="roastedpeacock" createdAt="2025-03-12T18:29:43" color="">}}

{{<matomeQuote body="僕は神経科学の可視化はやってなくて、線グラフを使ってアニメーションを作りたい。約10000ポイントでYouTube用にHD、60fpsの動画にしたいんだけど、ドキュメント見たけどそういうレンダリングに対応してるか分からなかった。matplotlibはCPUの単一コアしか使わないから、レンダリングが20〜30分かかるのはつらい。GPU加速のデータビジュアルツールがあったら嬉しいな。" userName="7speter" createdAt="2025-03-11T21:55:10" color="#ff5c5c">}}

{{<matomeQuote body="rendercanvasでフレームを描画してディスクに保存できるけど、fastplotlibではまだ公開してないね。詳細はこちらを見てみてね＞”https://github.com/pygfx/rendercanvas/issues/49”" userName="kushalkolar" createdAt="2025-03-11T22:07:58" color="">}}

{{<matomeQuote body="いい記事だね！だけど、fastplotlibじゃなくて他のライブラリを使うのはどんな時？大きなデータセットの扱いはどうするの？ダウンサンプリングとかしてる？pandasとの相性はどうなん？setup.pyには必要ないみたいだけど。Jupyter notebooksでは使えるの？marimoは？" userName="paddy_m" createdAt="2025-03-11T17:07:08" color="">}}

{{<matomeQuote body="どうも！＞”他のライブラリを使うのはどんな時？”最適なツールを選ぶのが大事だよ、私たちはGPUアクセラレーションのインタラクティブな可視化に特化してるんだ。MLアルゴリズム開発やユーザー向けのML Opsツール、科学機器からのライブデータ表示が主な用途だよ。＞”大きなデータセットの扱いは？”ハードウェアによるけど、詳細はここで確認してね＞”https://fastplotlib.org/ver/dev/user_guide/faq.html#do-i-nee…”＞”pandasとの相性は？”バッファプロトコルを使うnumpyのような型を渡せば動くはずで、将来的にはデータフレーム入力にも対応する予定だよ。＞”Jupyter notebooksでは？”はい、juptyer-rfb経由で使えるよ、こちらを見てね＞”https://github.com/fastplotlib/fastplotlib?tab=readme-ov-fil…”" userName="kushalkolar" createdAt="2025-03-11T19:38:12" color="#38d3d3">}}

{{<matomeQuote body="あなたのライブラリを試すのが楽しみだよ！システムからデータをストリーミング表示するのにkst-plotを使ってるけど、すごく速いし、データ量の制限も感じたことない。開発はほとんど止まってるけど、製品は完成してて、機能も充実してる！欧州とカナダの宇宙機関でも使われてるんだ。あなたたちの解決してる問題やこれから解決するかもしれない問題のアプローチを参考にできるかも！" userName="applied_heat" createdAt="2025-03-12T03:07:54" color="">}}

{{<matomeQuote body="Almarが線のシェーダーについてブログを書いてるよ！参考にしてみてね＞”https://almarklein.org/triangletricks.html”＞”https://almarklein.org/line_rendering.html”大きなシェーダーのリファクタリングがこのPRで行われたよ＞”https://github.com/pygfx/pygfx/pull/628”" userName="kushalkolar" createdAt="2025-03-11T20:08:17" color="">}}

{{<matomeQuote body="3D機能は今後の予定に入ってるって言ってたけど、基本機能が整ったら分子の可視化も考えてほしいな。簡単に統合できるような高速なプリミティブを提供するだけでも良いと思うよ！" userName="pama" createdAt="2025-03-11T17:16:42" color="">}}

{{<matomeQuote body="今後3Dグラフィックスの追加を楽しみにしてるよ！それ、すごく面白そうだね。リポジトリに問題として投稿してくれたら嬉しいな。計画を立てるためのオープンな問題にしたいと思ってるから。ありがとう！" userName="clewis7" createdAt="2025-03-11T19:32:36" color="">}}

{{<matomeQuote body="Python以外でも使えるプロットライブラリがあったらいいなぁ。Ruby用の似たようなものを探したけど、インストール手順が古くてWindowsで使えない感じだった。" userName="doright" createdAt="2025-03-12T00:03:28" color="">}}

{{<matomeQuote body="高度なプロットライブラリは外部APIを呼び出せるとGUIツールキットと区別がつかなくなるよね。昔、GuileとGnuplotで粒子加速器のデータ可視化を作ったんだけど、それはそれで面白かった。ただ、現代のCやFortran使ってる人から見たら、3百万点のプロットなんて大したことないと思うんだ。" userName="noosphr" createdAt="2025-03-12T00:20:57" color="">}}

{{<matomeQuote body="Rubyは知らないけど、他の人も役に立てるようなものを作るチャンスかもしれないね。" userName="kushalkolar" createdAt="2025-03-12T00:21:52" color="">}}

{{<matomeQuote body="今の人たちは大量のメモリとVRAMを使ってるけど、自分は古いマシンでawkとgnuplotでやってたよ。最近のCUDAなんか使わずに大きなテキストファイル処理できたと思う。" userName="anthk" createdAt="2025-03-12T12:14:55" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="誰かが言ってた、’最近はGPUがないと科学が無理みたいな風潮があって、可視化も同じ’っていうのはかなり笑える話だよね。3百万点プロットできるって言っても、実はそれって普通のCPUでも余裕でできるからさ。たしかにfastplotlibはすごいと思うけど、なんか過大評価されてる感じがしちゃう。" userName="enriquto" createdAt="2025-03-11T22:30:58" color="#38d3d3">}}

{{<matomeQuote body="核心を突いてるんだけど、それって3百万点のサイン波の話だよ。サイン波3000点のやつを1000本描くと考えると、ズームするともっと複雑になるはず。実際にはもっと手間がかかると思うから、比較には厳しいかも。" userName="cycomanic" createdAt="2025-03-11T23:33:19" color="">}}

{{<matomeQuote body="感謝！目的は、ほとんどの人が持ってる普通のハードウェアでの可能性を示すことだったよ。もっと複雑なグラフィックでギガバイト規模のデータをGPU上で使えることもあるけど、やっぱりゲーミングGPUが必須だね。" userName="kushalkolar" createdAt="2025-03-12T00:02:27" color="">}}

{{<matomeQuote body="なんで全データをメモリに入れたがるの？大きなデータセットを使用する場合、必要な部分だけを取得すればいいんだからさ。" userName="enriquto" createdAt="2025-03-12T06:20:35" color="">}}

{{<matomeQuote body="これはParkinson's lawの一例かもね。GPUメモリに収まるならそのままプロットしちゃうのが簡単だから。大きなデータならもっと洗練されたアプローチを考えなきゃだけど。" userName="rossant" createdAt="2025-03-12T09:45:28" color="">}}

{{<matomeQuote body="3百万点を30fpsで描くのは難しい。データの分布が見えないようにしたり、ピークをスキップしたりして汚いプロットをするツールもあるしね。" userName="stackedinserter" createdAt="2025-03-12T15:07:04" color="">}}

{{<matomeQuote body="もちろんできるよ！僕のノートパソコンの画面は約300万ポイント（2160×1350）あって、各ピクセルに対して結構な処理ができるんだ。1つのCPUスレッドで動かしても、30fpsを超えるよ。全部のポイントをループしてグリッドに入れる単純なプロット方法でも問題なく動くから、試してみて！" userName="enriquto" createdAt="2025-03-12T15:54:30" color="#38d3d3">}}

{{<matomeQuote body="画像のピクセルに値を設定するのと線などのオブジェクトを描画するのは全然違うよ。いい紹介があるからこちらを見てみて：>「https://graphicscompendium.com/intro/01-graphics-pipeline」" userName="kushalkolar" createdAt="2025-03-12T16:03:37" color="">}}

{{<matomeQuote body="結局、画面にオブジェクトを描くのはピクセルを設定することだから、ピクセルを設定してポイントをプロットするのは合理的だし、リアルタイムで数百万ポイントを処理するのもできるよ。6年前のThinkPadでコンパイルしたCプログラムを試したら、約80fpsで300万ポイントを処理できたんだ。要するに、CPUはめちゃくちゃ速いから、GPUを使わずに大規模なデータ可視化もできる。" userName="enriquto" createdAt="2025-03-12T16:14:54" color="#ff33a1">}}

{{<matomeQuote body="じゃあ、3Dで任意の投影とインタラクティビティを持たせてみて！そうしたらレンダリングエンジンを作れるよ。前の返信でGPUがどうやってピクセルを画面に送るかを説明してるリンクをあげたよ。それに、線のレンダリング方法についての優れたブログもいくつかあるから見てみて：>「https://almarklein.org/triangletricks.html」" userName="kushalkolar" createdAt="2025-03-12T17:52:12" color="">}}

{{<matomeQuote body="imguiがこんなに色んなことを可能にしているのを見られてすごく嬉しい！" userName="klaussilveira" createdAt="2025-03-11T18:12:39" color="#38d3d3">}}

{{<matomeQuote body="imgui大好き！imguiの開発者たちや、imgui-bundleのPythonバインディングを維持してくれているPascal Thometに大感謝。そしてwgpu-pyのためのImgui Rendererを作ってくれた>「https://github.com/panxinmiao」にも感謝！" userName="kushalkolar" createdAt="2025-03-11T19:43:13" color="#ff5733">}}

{{<matomeQuote body="Imguiは素晴らしいね！imgui-bundleを言及してくれてありがとう。知らなかったけど、良さそうだね！>「https://github.com/pthom/imgui_bundle」" userName="rossant" createdAt="2025-03-11T20:33:36" color="#785bff">}}

{{<matomeQuote body="リモートのLinuxボックスでデータとコードを使っていて、デスクトップワークステーションで“ローカル”にプロットしたいんだ。この場合、X11（遅い）か、plotlyのようなウェブベースライブラリを使うことになるんだけど、fastplotlibで簡単な解決策はあるのかな？" userName="vibranium" createdAt="2025-03-11T22:21:17" color="">}}

{{<matomeQuote body="X11は思ったより使えたけど、デフォルトが悪いことが多い。この前、RでCairoのダブルバッファリングをオンにする方法で速くする方法を見つけたし、結局R-inside-orgmodeを使って、グラフィックをpngに書き出してそれをEmacsに表示するようにしたよ。" userName="dan-robertson" createdAt="2025-03-12T11:05:38" color="">}}

{{<matomeQuote body="これがまさにjupyter-rfbを使う理由だね。大きなデータセットをリモートのクラスターで持っていて、リモートレンダリングを行ってるよ。" userName="kushalkolar" createdAt="2025-03-11T22:24:12" color="">}}

{{<matomeQuote body="自分もその人と同じような感じで、VS CodeのPython拡張のインタラクティブウィンドウで静的プロットしかやったことないんだけど、これでも使えるのかな？それともJupyter Notebook使う必要ある？" userName="aplzr" createdAt="2025-03-11T22:58:32" color="">}}

{{<matomeQuote body="＞非Jupyter Notebook実装にはそれぞれクセがあるけど、最終的にはより普遍的なJupyter-rfbみたいなライブラリを作る予定。Anywidgetはすごいよね： https://github.com/manzt/anywidget<br>FastplotlibとJupyter-rfbはVS Codeで使われてるけど、うまくいかない原因をまだ特定できてないんだ。" userName="kushalkolar" createdAt="2025-03-12T00:44:58" color="#ff5733">}}

{{<matomeQuote body="ありがとう。ノートブックはあんまり好きじゃないけど、これを機にもう一度試してみるかも。" userName="aplzr" createdAt="2025-03-12T01:08:38" color="">}}

{{<matomeQuote body="すごく興味深くて期待できるパッケージだね。特にPyQtインターフェースがあるのがいいな！これでpyqtgraphに代わる選択肢ができそう。 [0] https://github.com/pyqtgraph/pyqtgraph" userName="roter" createdAt="2025-03-11T19:28:24" color="#785bff">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
