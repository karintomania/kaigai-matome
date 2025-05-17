+++
date = '2025-05-10T00:00:00'
months = '2025/05'
draft = false
title = 'Llama.cppでVision機能が利用可能に！'
tags = ["AI", "機械学習", "画像認識", "Llama.cpp", "Vision"]
featureimage = 'thumbnails/cyan1.jpg'
+++

> Llama.cppでVision機能が利用可能に！

引用元：[https://news.ycombinator.com/item?id=43943047](https://news.ycombinator.com/item?id=43943047)




{{<matomeQuote body="MBP M1 64GBで ggml-org/gemma-3-4b-it-GGUF を試したら、結構速いし4Bでもそこそこ画像説明してくれる。<br>使うにはまず GitHubから取ってビルドして、モデルDLしてサーバ起動する。<br>手順はコマンド書いといたよ。<br>Web UIは http://127.0.0.8080/。<br>-hf なしなら --mmproj オプション忘れずに。<br>unsloth のモデルはもっと速そう。" userName="dust42" createdAt="2025/05/10 06:55:33" color="#38d3d3">}}




{{<matomeQuote body="どんな画像試しても、”この画像には、帽子をかぶった男性、車椅子の女性、大きな頭の子供、スーツ姿の男性、帽子をかぶった女性など、様々なポーズをとった多様な人々が映っています。”って同じ応答が返ってくるんだけど。<br>いやいや、どれも画像には写ってないし。<br>どうやってデバッグ始めればいいのかも分かんないよ。" userName="matja" createdAt="2025/05/10 15:39:34" color="">}}




{{<matomeQuote body="自分も同じだよ。<br>どの画像アップしても、代わりにこんなメッセージが出てくるんだ。<br>”これは、「one does not get it」というフレーズを嘲笑的に使ったユーモラスなミームです。これは、冗談やミームの文脈が理解できずにイライラする人々についてのジョークです。”<br>なんで動かないのか分かんないなあ。" userName="clueless" createdAt="2025/05/10 19:19:52" color="">}}




{{<matomeQuote body="よし、このスレッドのこのコメントを試したら、問題が解決したよ！<br>https://news.ycombinator.com/item?id=43943624" userName="clueless" createdAt="2025/05/10 19:40:36" color="#785bff">}}




{{<matomeQuote body="これって、実際の画像が見れてないってことじゃない？<br>何か理由があって読み込めてないんだよ。" userName="exe34" createdAt="2025/05/10 16:03:28" color="">}}




{{<matomeQuote body="画像が見えてないだけで、なんで例えば「何も見えない」とか「視覚的な解釈ができない意味不明なもの」じゃなくて、あんな具体的でおかしな出力になるのか想像つかないな。<br>そんなの、使う側としては最悪だよね。" userName="aendruk" createdAt="2025/05/10 18:28:38" color="">}}




{{<matomeQuote body="LLMって、「役に立てない」って言うのが苦手なんだ。<br>helpful assistantになるように訓練されてるから、画像が見えてないのに何かでっち上げちゃう（ハルシネーション）。<br>もう今となっては、そういうもんだと思ってていいよ。" userName="sigmaisaletter" createdAt="2025/05/10 19:42:38" color="#45d325">}}




{{<matomeQuote body="学習データに制御が入ってないってこと？" userName="aendruk" createdAt="2025/05/10 19:54:46" color="">}}




{{<matomeQuote body="面白い事実として、何も入力しないでLLMにプロンプト送っても、適当な意味不明なのが出てきたりするんだぜ。" userName="tough" createdAt="2025/05/10 19:41:24" color="">}}




{{<matomeQuote body="あと、temperatureをゼロに設定すると、毎回同じ出力になるんだ！" userName="exe34" createdAt="2025/05/11 07:36:22" color="">}}




{{<matomeQuote body="うーん、俺も同じ結果だなー。でもさ、M1で7b model使うと、プロンプト処理が10倍くらい速くなるって話らしいよ。このGitHubディスカッション見てみて。https://github.com/ggml-org/llama.cpp/discussions/4167もしかしてencoderの最適化がまだなのかな？" userName="brrrrrm" createdAt="2025/05/10 20:09:36" color="#ff5733">}}




{{<matomeQuote body="それって4/8 bit quantsの話？それともフル精度のfp16 modelでの数字？" userName="zamadatix" createdAt="2025/05/10 12:39:13" color="">}}




{{<matomeQuote body="4 bit quantの gemma-3-4b-it-Q4_K_M.gguf を使ってるよ。promptは”describe”とか、短くしたい時は”short description”だよ。<br>君が写真家ってことで、君のサイトの写真を使ってみたら gemma 4bが具体的な説明を出して、それが結構正確だったんだ。<br>使った写真は zamadatixのサイトの L’Officiel.02シリーズ（L-officel_lanz_08_1369.jpg）からだよ。" userName="dust42" createdAt="2025/05/10 13:59:18" color="#ff5733">}}




{{<matomeQuote body="俺は写真家じゃないけど、例はありがとう！写真はこちら：https://payload.cargocollective.com/1/15/509333/14386490/L-o...<br>説明は完璧じゃないね。建物も丘陵もドレスも違う点がある。<br>4 GB modelだし文句はないけど。quantに関する質問は速度のことだよ。大きいmultimodal modelはもっと正確だった（例：”wooden and stone rustic structure”）。" userName="zamadatix" createdAt="2025/05/10 18:42:02" color="#785bff">}}




{{<matomeQuote body="ちなみに、画像処理は別のmodelが画像を読み込んで1000 tokenくらい生成してるよ。<br>（vision機能はllama.cppに前からあったけど、メンテしてたから分かる、めっちゃ大変だったんだ）<br>今回のこれは素晴らしい仕事だよ。vision codeはリベースとかリファクタリングが必要だったから、新しいのが出たのは大歓迎だね。" userName="refulgentis" createdAt="2025/05/10 17:17:58" color="#45d325">}}




{{<matomeQuote body="待ってごめん、これどういう仕組み？<br>gemma3は siglipを使って256 embeddingsを並列出力できると思ってたんだけど。<br>codeのポインタとかあれば共有してもらえる？<br>この https://github.com/ggml-org/llama.cpp/blob/master/tools/mtmd... を見つけたけど、正しいcode pathか分からなくて。" userName="brrrrrm" createdAt="2025/05/10 21:49:48" color="">}}




{{<matomeQuote body="promptに基づいて生成された画像の例とかある？<br>試す前に見てみたいな。" userName="astrodude" createdAt="2025/05/10 16:39:15" color="">}}




{{<matomeQuote body="はっきりさせとくけど、このmodelは画像を生成してるんじゃなくて、送られてきた画像を説明してるんだよ。" userName="geoffpado" createdAt="2025/05/10 19:11:47" color="">}}




{{<matomeQuote body="めっちゃうまく動くよ！llama.cppをsourceからcompileして llama-mtmd-cli をゲット。<br>vision対応quant modelで試してみて。例えばこれ実行してみて：<br>./llama.cpp/llama-mtmd-cli -hf unsloth/gemma-3-4b-it-GGUF:Q4_K_XL -ngl -1<br>チャットで /image image.png で画像を読み込んでchat！<br>追記：-ngl -1 は Metal backends ではもう不要（CUDAは必要）。llama.cppがdefaultでGPUに自動offloadするようになったよ！" userName="danielhanchen" createdAt="2025/05/10 05:10:09" color="#ff5733">}}




{{<matomeQuote body="参考になれば、https://docs.unsloth.ai/basics/gemma-3-how-to-run-and-fine-t... のdocumentを更新したよ。llama-mtmd-cli を直接使えるって書いてあるから。Mistral Smallでも動くはずだよ。" userName="danielhanchen" createdAt="2025/05/10 05:25:32" color="#38d3d3">}}




{{<matomeQuote body="LLaMAをデスクトップで動かして、ノートPCからアクセスできる簡単なGUIってある？" userName="distalx" createdAt="2025/05/10 19:13:29" color="">}}




{{<matomeQuote body="もしMac使ってるなら、https://recurse.chat/試してみて．モデルダウンロードしてチャット始めるだけってくらい簡単だよ．Llama.cppの新しいマルチモーダルサポートも入ったばっか．" userName="xyc" createdAt="2025/05/17 00:39:10" color="#ff33a1">}}




{{<matomeQuote body="https://docs.openwebui.com/ を見てみてよ．デスクトップのIP使えば、ノートPCからアクセスできるよ（同じネットワークにいるならね）．" userName="Devorlon" createdAt="2025/05/10 22:16:24" color="#ff5733">}}




{{<matomeQuote body="それってollamaとそれをサポートするクライアントでよくない？ tailscale使って内部ネットワーク組むとマジでうまくいくよ" userName="tough" createdAt="2025/05/10 19:42:47" color="">}}




{{<matomeQuote body="もしHomebrewでLlama.cppをインストールしたら、llama-mtmd-cliはもう含まれてるよ．だから、ただ llama-mtmd-cli ＜args＞ って実行するだけでいいんだ．" userName="thenameless7741" createdAt="2025/05/10 05:50:29" color="#45d325">}}




{{<matomeQuote body="OK、実は -ngl 99 を使う方が良くて、-ngl -1 は良くないね．-1は動くかも動かないかも！" userName="danielhanchen" createdAt="2025/05/10 10:14:47" color="#785bff">}}




{{<matomeQuote body="あー、それってGPUにオフロードするレイヤー数の省略形だよ :) でもまあ、最高の略語じゃないかもね．" userName="danielhanchen" createdAt="2025/05/10 06:15:26" color="#38d3d3">}}




{{<matomeQuote body="SmolVLMシリーズもサポートしてるよ！ミニサイズだから爆速レスポンスなんだ！リアルタイムホームビデオ監視システムにピッタリだね。これ次の趣味プロジェクトのアイデアの一つだよ！<br>llama-server -hf ggml-org/SmolVLM-Instruct-GGUF<br>llama-server -hf ggml-org/SmolVLM-256M-Instruct-GGUF<br>llama-server -hf ggml-org/SmolVLM-500M-Instruct-GGUF<br>llama-server -hf ggml-org/SmolVLM2-2.2B-Instruct-GGUF<br>llama-server -hf ggml-org/SmolVLM2-256M-Video-Instruct-GGUF<br>llama-server -hf ggml-org/SmolVLM2-500M-Video-Instruct-GGUF" userName="ngxson" createdAt="2025/05/10 06:51:10" color="#38d3d3">}}




{{<matomeQuote body="定期的にpullしてリビルドするたびに、最新のgitコミットであなたのコミットに気づいてたんだ。これ（そしてLlama.cpp全般）でのあなたの全ての作業に感謝してるよ！" userName="a_e_k" createdAt="2025/05/10 08:09:59" color="#38d3d3">}}




{{<matomeQuote body="サーバーにmtmd機能を取り込んでくれてありがとう。他のコメントしてくれた人みたいに、期待してコミットをずっと追ってたんだ。" userName="thatspartan" createdAt="2025/05/10 11:50:46" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="うん、でも高速レスポンスの質はどうなの？2.2B以下のやつでも、ちゃんと筋の通った文章出せるの？" userName="moffkalast" createdAt="2025/05/10 12:51:48" color="">}}




{{<matomeQuote body="これまでに見つけた中で、これが一番分かりやすいドキュメントだよ： https://github.com/ggml-org/llama.cpp/tree/master/tools/mtmd..." userName="simonw" createdAt="2025/05/10 04:17:46" color="#45d325">}}




{{<matomeQuote body="アーキテクチャ固有の画像埋め込み前処理を別のライブラリに切り出したのは面白いね。text-onlyのTransformerでhuggingface/tokenizersライブラリができたのと似てるかも。" userName="scribu" createdAt="2025/05/10 11:37:05" color="">}}




{{<matomeQuote body="この機能を使って、最近の旅行写真にGemma3 4bでキーワードとか説明を付けたんだ。すごい上手くいったよ、テキストの入った写真のOCRで概要出してくれたり、文脈から写真の場所を推測したりもできた。自分でホストできるのはめっちゃいいね。" userName="banana_giraffe" createdAt="2025/05/10 05:40:37" color="#ff5c5c">}}




{{<matomeQuote body="それはすごいね。要は、画像のリストをループして、それぞれの画像に対してプロンプトを実行して、結果をどこか（メタデータとかsqliteとか）に保存してるってこと？" userName="accrual" createdAt="2025/05/10 05:46:03" color="">}}




{{<matomeQuote body="うん、そうだよ。それぞれの画像を同じプロンプトでループして、結果をSQLiteに保存してるんだ。検索したり、将来的にWebUIで見せたいなと思って。<br>コードはこれだよ： https://gist.github.com/Q726kbXuN/... <br>一枚の画像の出力例はこれ： https://imgur.com/a/6jpIbvk <br>POCコードで汚いけど動くよ。" userName="banana_giraffe" createdAt="2025/05/10 05:57:02" color="#ff5733">}}




{{<matomeQuote body="いいね！ フォルダに入ってる全部の写真のサマリーを作るのって、どれくらい難しいと思う？例えば旅行の写真とか、イベント後の写真とか、写真がまとまってる場合。" userName="wisdomseaker" createdAt="2025/05/10 06:40:42" color="">}}




{{<matomeQuote body="めっちゃ簡単だよ。各画像の詳細を出して、そのサマリーから全体のサマリーを作るか、全部の画像をまとめて放り込むかできるよ： https://imgur.com/a/1IrCR97 <br>画像が多いと文脈の限界でmap-reduceが必要だろうけど、それも難しくないと思う。" userName="banana_giraffe" createdAt="2025/05/10 06:49:46" color="#38d3d3">}}




{{<matomeQuote body="写真のexifデータから場所を抽出して、プロンプトに含めるのも良いかもね。座標を受け取って都市名を返す逆ジオコーディングのライブラリやサービスがあるから、旅行のサマリーがもっと良くなるはずだよ。" userName="sorenjan" createdAt="2025/05/10 13:03:00" color="#785bff">}}




{{<matomeQuote body="Gemma 4bってこの用途に十分なの？僕は4bじゃダメだと思って、もっと大きいGemmaを色々試してたんだ。" userName="buyucu" createdAt="2025/05/10 14:35:11" color="">}}




{{<matomeQuote body="使ってみた感じだと、俺の用途には十分良さそうだったよ。<br>ネットで見つけた適当な画像をいくつか食わせてみたんだけど、どんな感じのメタデータが出るかは、ここの静的ダンプで見れるよ：https://q726kbxun.github.io/llama_cpp_vision/index.html<br>完璧ってわけじゃないけど、キーワードとか説明文のおかげで、たくさんの画像の中から探すのには十分役に立ちそう。" userName="banana_giraffe" createdAt="2025/05/10 20:30:13" color="#ff33a1">}}




{{<matomeQuote body="llama.cppはいろんなプラットフォーム用にコンパイル済みのリリースを提供してるんだ。<br>今回のリリースに新しいvision機能が入ってるよ：https://github.com/ggml-org/llama.cpp/releases/tag/b5332<br>macOSだと、llama-b5332-bin-macos-arm64.zipをダウンロードして、動かすにはこれを実行する必要があったんだ。<br>unzip llama-b5332-bin-macos-arm64.zip<br>cd build/bin<br>sudo xattr -rd com.apple.quarantine llama-server llama-mtmd-cli *.dylib<br>そしたら、対話型ターミナル（3.2GBのモデルダウンロードが必要）をこうやって実行できたよ（参考：https://news.ycombinator.com/item?id=43943370R）<br>./llama-mtmd-cli -hf unsloth/gemma-3-4b-it-GGUF:Q4_K_XL -ngl 99<br>もしくは、localhost 8080のウェブサーバー（UIとAPI付き）をこうやって起動できたよ：<br>./llama-server -hf unsloth/gemma-3-4b-it-GGUF:Q4_K_XL -ngl 99<br>もっと詳しいメモはここに書いたよ：https://simonwillison.net/2025/May/10/llama-cpp-vision/" userName="simonw" createdAt="2025/05/10 06:31:57" color="#ff5c5c">}}




{{<matomeQuote body="brewユーザーなら、パッケージインストール時に--HEADを指定できるよ。<br>こうすれば、brewが自動的に最新のmasterブランチをビルドしてくれるんだ。<br>そういえば、brewのバージョンはあと数時間で更新されるから、その後は単に“brew upgrade llama.cpp”すれば準備OKになるよ！" userName="ngxson" createdAt="2025/05/10 06:38:50" color="#ff33a1">}}




{{<matomeQuote body="俺もconvert_hf_to_gguf.py --mmprojには超感動したよ！<br>これでvisionモデルの量子化がずっと簡単になった！<br>Llama-serverがvisionをサポートしたのも間違いなく超クールだね。<br>しばらく待ってたんだ！" userName="danielhanchen" createdAt="2025/05/10 06:43:15" color="">}}




{{<matomeQuote body="そういえば、-nglは今自動で最大値に設定されるから、もう-ngl 99ってつける必要ないよ！<br>追記：ごめん、これはMetalだけだわ。<br>CUDAとか他のGPUバックエンドの場合は、まだ手動で-nglを指定する必要があるよ。" userName="ngxson" createdAt="2025/05/10 06:42:31" color="#ff33a1">}}




{{<matomeQuote body="え、マジで！<br>じゃあ単に-nglでいいの？<br>あ、あと、1つのGPUが終わったら次のGPUに（つまり順番に）自動で割り当てることってできるか知ってる？<br>俺は小さいモデルでも手動で--device CUDA0って設定しなきゃいけないんだけど、たぶん全部のGPUに分散させると通信オーバーヘッドがあるだろうし！" userName="danielhanchen" createdAt="2025/05/10 06:44:42" color="">}}




{{<matomeQuote body="あー、いや、俺が言いたいのは、今は“-ngl N”っていう引数自体を省略できるってことなんだ。<br>CPPコードの中でデフォルトで-1（伝統的な0じゃなくて）に内部設定されてて、-1は全部GPUにオフロードするって意味だから。<br>マルチGPUでカスタムレイヤー設定を指定する方法は全然わからないけど、それは興味深いね！" userName="ngxson" createdAt="2025/05/10 06:47:41" color="#38d3d3">}}




{{<matomeQuote body="え、待って！<br>じゃあGPUオフロードがデフォルトでオンなの？<br>おお、最高だね！<br>今のところPythonスクリプトで”推測”しなきゃいけないんだ。<br>つまり、全部の.gguf分割ファイルのファイルサイズを合計して、CUDAメモリ使用量を検出して、おおよそいくつのGPUに割り当てるか、つまり--device CUDA0,CUDA1みたいに指定してるんだ。" userName="danielhanchen" createdAt="2025/05/10 06:57:03" color="">}}




{{<matomeQuote body="あーー、ごめん、これを実際に制御してるコードがllama-model.cppの中にあるって忘れてたわ。<br>間違った情報ごめん。<br>-nglがデフォルトで最大値に設定されるのは、Metalバックエンドを使ってる場合だけだ。<br>（llama_model_default_params()の中のコードを見てね）" userName="ngxson" createdAt="2025/05/10 07:07:50" color="#45d325">}}




{{<matomeQuote body="素人向けに何が変わったの？ 数ヶ月前にllama.cpp試した時、もう画像説明とかできたけど？" userName="thenthenthen" createdAt="2025/05/10 10:06:18" color="">}}




{{<matomeQuote body="これ、ollamaでgemma3みたいなマルチモーダルモデル使うのとどう違うの？Macのapple siliconだと何かメリットある？誰か経験談教えてくれると嬉しいな" userName="nico" createdAt="2025/05/10 04:48:38" color="">}}




{{<matomeQuote body="二つあるよ。<br>１．llama.cppはggmlエコシステムに統合されてるから、ollamaよりずっと速く最適化できるんだ。pixtral/mistral small 3.1の2D-RoPEとか、すぐ追加されるflash attentionでメモリも少なく済む。<br>２．ollamaより多くのモデルをサポートしてるよ。pixtralもsmolvlmもollamaはサポートしてないんだ。" userName="ngxson" createdAt="2025/05/10 06:13:46" color="#38d3d3">}}




{{<matomeQuote body="一方で、ollamaはgemma3でiSWAをサポートしてるけど、llama.cppはしてないんだ。iSWAはkv cacheのサイズを1/6にするんだよ。" userName="nolist_policy" createdAt="2025/05/10 08:39:11" color="#ff33a1">}}




{{<matomeQuote body="iSWAって何？ネットで全然見つからないんだけど" userName="vlovich123" createdAt="2025/05/10 09:18:24" color="">}}




{{<matomeQuote body="gemma3には文脈サイズが1024トークンのレイヤーもあれば、フル長のレイヤーもあるんだ。gemmaの技術レポート読む必要があるよ。" userName="imtringued" createdAt="2025/05/10 10:19:32" color="">}}




{{<matomeQuote body="interleaved sliding window attentionだよ" userName="nolist_policy" createdAt="2025/05/10 10:13:11" color="">}}




{{<matomeQuote body="この変更って、最終的にollamaにも追加されるんじゃないの？ ollamaってllama.cppベースだと思ってたんだけど。" userName="roger_" createdAt="2025/05/10 07:26:52" color="">}}




{{<matomeQuote body="僕の理解だと（関係者じゃないけど、コード見た感じ）、ollamaは最初は全部llama.cppをランナーとして使ってたみたい。でも新しいモデルのために自分たちでGolangでランナーを書き始めたんだ。だから、ほとんどのモデルはllama.cppだけど、新しいやつは彼らのGolangランナーなんだよ。" userName="diggan" createdAt="2025/05/10 11:28:46" color="#785bff">}}




{{<matomeQuote body="そういえば - llama.cppのvisionサポート、今回も素晴らしい出来だよ - この調子で頑張ってね！！" userName="danielhanchen" createdAt="2025/05/10 06:22:18" color="">}}




{{<matomeQuote body="Danielさんありがとう！量子化の素晴らしい仕事に拍手だよ、開発中にunslothのMistral Small IQ2_Mを使ってるんだけどめちゃくちゃよく動くんだ！！" userName="ngxson" createdAt="2025/05/10 06:41:11" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="へへへ、Mistralのチャットテンプレートを更新しなきゃいけなかったんだよね−あなたのllama.cppのPRは見たよ−tokenizer_config.jsonファイルにchat_templateがないのが紛らわしくて、chat_template.jinjaにあったんだ。chat_templateをtokenizer_config.jsonに移さなきゃいけなかったんだけど、あなたの修正で今は大丈夫になったと思うよ。" userName="danielhanchen" createdAt="2025/05/10 06:54:13" color="#785bff">}}




{{<matomeQuote body="へぇー、いい情報だね！誰かがチャットテンプレートを直そうとしてるだろうなって思ってたよ、ははは。でも、GGUF−my−repoスペース経由でユーザーが自由に自分のquantsを作れるようにしてるから、そのソースから生成されるquantsも直さなきゃいけないんだ。" userName="ngxson" createdAt="2025/05/10 07:01:43" color="">}}




{{<matomeQuote body="UI開発でVision機能を活用できるツールって何かあるかな？例えば、趣味でTS／Reactでフロントエンドを開発してるんだけど、VSCodeでローカルやクラウドのLLMを使ってもVision付きでもスクショ撮ってチャットに貼り付けなきゃいけないんだ。理想的には、何らかの停止条件（たとえn回繰り返しだけだとしても）を満たすまで全部自動化したいな。でも、プレビューをスクショしてチャットに貼り付けるだけの拡張機能（キーボードショートカットで起動）でもすごく時間短縮になると思うんだけど。" userName="dr_kiszonka" createdAt="2025/05/10 09:47:59" color="#38d3d3">}}




{{<matomeQuote body="これはすごいね。定期的にプルしてリビルドしてたんだけど、コミットノートを見ててさ（たぶんngxsonさんたちが）、最初はVisionモデルをそれぞれ独自のCLIプログラムで追加して、それから一つのCLIプログラムに統合して独立した方を非推奨にして、バグ修正や画像処理の改善も続けてたんだ。サーバーサポートもいつか追加されるんじゃないかって期待してたんだけど、ついに来たね！ありがとう！" userName="a_e_k" createdAt="2025/05/10 08:06:35" color="#ff33a1">}}




{{<matomeQuote body="また一歩進んだ感じだね。初めてスマホでローカルLLMを動かして、結構まとまった会話ができた時、エッジ推論は少なくとも個人的なアシスタントとか”デジタルワイフ”みたいなビジネスケースで本当に早く離陸するだろうなって想像したんだ。Llama.cppとその派生技術の上に構築される次の波のアプリが、今後3ヶ月で世界経済に何をもたらすか興味津々だよ。" userName="gryfft" createdAt="2025/05/10 04:20:08" color="">}}




{{<matomeQuote body="”3ヶ月での世界経済”なんて話は、最近のAIブームが3年経ってもまだ換金できてない小切手を書いてるようなもんだよ。" userName="LPisGood" createdAt="2025/05/10 04:44:36" color="">}}




{{<matomeQuote body="AIは集合知の確率分布を学習してるけど、サンプリングだけじゃ根本的な向上はないと思うんだ。高品質なデータがなければ、AIはどんどん訓練コストが高くなって、1980年代のエキスパートシステムに戻っちゃうかも。最近のAIイノベーションは停滞してるけど、分布を活用するツール（セマンティック検索とか）としては素晴らしいよ。これがAGIへのアプローチかは疑問だけどね。" userName="ijustlovemath" createdAt="2025/05/10 04:59:47" color="#38d3d3">}}




{{<matomeQuote body="それは”確率的なオウム”みたいに単純じゃないよ。定義と公理から始めて、全ての定理は発明して証明できるはずなんだ。モデルをループに入れて、内部的な”思考”と外部フィードバック、生成・取得した新しいデータを使わせるのが進むべき道だと思う。データを定期的に圧縮すれば、またアルゴリズム競争が始まるね。" userName="MoonGhost" createdAt="2025/05/10 05:17:05" color="#45d325">}}




{{<matomeQuote body="「定義や公理から始めて、すべての定理を発明し証明できる」って考え方は、symbolic AIの前提だったけど、このやり方はもう捨てられちゃったみたいだね。" userName="GTP" createdAt="2025/05/10 12:51:35" color="">}}




{{<matomeQuote body="大きな経済的影響を与えるのに、AGIである必要はないよ。単に、今ある十分な数のCAPTCHAを破れればいいんだ。" userName="gryfft" createdAt="2025/05/10 05:48:01" color="#785bff">}}




{{<matomeQuote body="それ、もう今日できてるよ。" userName="LPisGood" createdAt="2025/05/10 14:21:36" color="">}}




{{<matomeQuote body="やっとだ！Open source multimodalは、closed source optionsに比べてあまりにも遅れてて、みんなベンチマークすら試そうとしないんだ。まだ、新しいモデルが出るたびにテキストとか数学のテストばっかやってる。だって、ひどすぎるからね。" userName="yieldcrv" createdAt="2025/05/10 17:58:04" color="#ff5733">}}




{{<matomeQuote body="llama.cppって、去年くらいにVisionサポートあったんじゃなかったっけ？" userName="behnamoh" createdAt="2025/05/10 05:07:40" color="">}}




{{<matomeQuote body="そうだよ、ずっとあったんだ。でも”llama-mtmd-cli”って1つの傘下に全部移されたんだよ！" userName="danielhanchen" createdAt="2025/05/10 05:12:32" color="#785bff">}}




{{<matomeQuote body="そうそう、でも今回は汎用化されたから、llama-serverのGUIにも追加できるようになったんだよ。" userName="breput" createdAt="2025/05/10 06:44:56" color="#45d325">}}




{{<matomeQuote body="multimodal LLMを彼らのVulkanバックエンドで実行するのって可能？Vulkanしかサポートしてない4gbのGPUがいっぱい転がってるんだ。" userName="jacooper" createdAt="2025/05/10 10:08:43" color="#ff5c5c">}}




{{<matomeQuote body="うん、llama.cppはVulkanのサポートがすごくいいよ。" userName="buyucu" createdAt="2025/05/10 11:06:07" color="#45d325">}}




{{<matomeQuote body="少し前にVisionが削除された時は本当に悲しかったよ。復活してくれて嬉しい。関係者の皆さんに感謝！" userName="buyucu" createdAt="2025/05/10 06:30:39" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
