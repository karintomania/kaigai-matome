+++
date = '2025-05-16T00:00:00'
months = '2025/05'
draft = false
title = 'Ollama、マルチモーダルモデルの新エンジン発表！'
tags = ["Ollama", "マルチモーダルAI", "AI", "機械学習", "開発"]
featureimage = 'thumbnails/light-orange3.jpg'
+++

> Ollama、マルチモーダルモデルの新エンジン発表！

引用元：[https://news.ycombinator.com/item?id=44001087](https://news.ycombinator.com/item?id=44001087)




{{<matomeQuote body="llama.cppにようやくビジョン機能が安定して入ったタイミングで、Ollamaが新しいエンジンを発表したのはちょっと意外だったね。<br>きっとOllamaは前から準備してたんだろうし、llama.cppに頼らなくなるのは自分たちの進む道を決められるって意味で納得だわ。<br>参考: https://simonwillison.net/2025/May/10/llama-cpp-vision/" userName="simonw" createdAt="2025/05/16 04:38:22" color="#45d325">}}




{{<matomeQuote body="これらのプロジェクトがマルチモーダル対応で具体的に何が違うのか知ってる？<br>LLaVAは前からサポートしてたじゃん。それは特別な対応が必要だったけど、もういらなくなった感じ？<br>記事で言ってほしかったな〜。記事はOllamaにとってマルチモーダルが全く新しいことみたいに書いてるけど、そうじゃないのにさ。" userName="lolinder" createdAt="2025/05/16 04:48:30" color="">}}




{{<matomeQuote body="llama.cppの歴史についてはここの記事に分かりやすい説明があるよ。<br>https://github.com/ggml-org/llama.cpp/tree/master/tools/mtmd...<br>Ollamaの今後の方針とか戦略はまだよく分かんないけどね。" userName="simonw" createdAt="2025/05/16 04:54:49" color="">}}




{{<matomeQuote body="ngxsonとHugging Faceとllama.cpp以外はダメだね。<br>llama.cppにはマルチモーダルあったよ、俺はずっとメンテしてたんだ。（2024年2月頃から）<br>でも一般向けじゃなくて、分かりにくいし大変だった。ngxson（HFの人）がGemma 3対応で頑張って、別の形で作ってくれたんだ。<br>Ollamaは相変わらずOllamaしてるな。昔ジョークで言ったけど、Ollamaのllama.cppへの貢献って、「いつサーバーに機能入る？コピペしたいから」ってGitHubにコメントするだけじゃん。<br>俺一人でそんなに大変じゃなかったのに、みんな大げさに騒いだり急いだりするから、こういう地道な作業は評価されないんだよ。<br>追記: ブログ読んだらさらにイライラした。<br>”思考／推論サポート”、”ストリーミング応答ツールコーリング”って、とっくにできてた当たり前じゃん。<br>コード見ても特別なことしてないし、記事はまるで自分たちでゼロから作ったみたいに書いてる。<br>llama.cppを簡単に動かせるOllamaのUXはいいと思うけど、37年間で一番ムカつくプロジェクトだわ。" userName="refulgentis" createdAt="2025/05/16 05:31:25" color="#ff5c5c">}}




{{<matomeQuote body="OllamaエンジンのGemma 3（とGemma 2）のテキスト部分は俺がやったんだ。<br>GoogleのGemmaチームと直接組んで作ったよ。<br>llama.cppの実装は参考にしてない。俺らはGoで、向こうはC++だからね。<br>”コピペ”なんてしてないよ。<br>でも新しいモデルで協力したらもっと早く出せるだろうね。<br>Georgiには俺たちの実装のミスをいくつか指摘してもらって、本当に感謝してるんだ。" userName="Patrick_Devine" createdAt="2025/05/16 06:40:03" color="#ff33a1">}}




{{<matomeQuote body="一つに、OllamaはGemma 3でiSWAっていうのをサポートしてるけど、llama.cppはまだなんだ。<br>iSWAはメモリ使う量を1/6にするやつだよ。<br>OllamaはGoで書いてるから、llama.cppには大した貢献できないんだよ。<br>参考: https://github.com/ggml-org/llama.cpp/issues/12637" userName="nolist_policy" createdAt="2025/05/16 07:21:20" color="#38d3d3">}}




{{<matomeQuote body="Goから呼んでるCのライブラリに、Goで貢献できないとか言ってるの？<br>それってこの話のおかしいとこだよね。<br>フロントエンドはCじゃないのに、誰もllama.cppに貢献してないわけじゃないんだからさ。（Goで書いててもC++に貢献できるでしょ？という意味合い）" userName="refulgentis" createdAt="2025/05/16 18:13:20" color="">}}




{{<matomeQuote body="もちろん、Ollamaは新しいC++コードをllama.cppに貢献できるよ。<br>それを後でGoで使うってこともできるしね。<br>意味のある貢献ができないのは、Goで書いたコードをllama.cppに取り込んでもらうことだ。<br>C++を書くことに慣れてないとダメかもしれないけど、GoのエンジニアみんながC++書けるわけじゃないからね。" userName="magicalhippo" createdAt="2025/05/16 21:03:05" color="">}}




{{<matomeQuote body="SWAの話ならそうかもね。<br>まあ、依存してるライブラリに貢献できないって可能性はゼロじゃないけどさ。<br>でもGoでSWA書けるならC++でも書けるだろうし、実際彼らはC++書いてるじゃん。（OllamaはGoメインだけど、裏でC++のライブラリ呼んでるから、C++にも触れてるだろうという意味）<br>しかも、モデルごとのコード見てもそんなに難しくないし。<br>Georgiと一緒にやってるならさ...なんでそれをllama.cppに入れるの手伝わないわけ？って思うんだよね。" userName="refulgentis" createdAt="2025/05/17 00:12:42" color="#785bff">}}




{{<matomeQuote body="SWAの話はそうかもね。<br>マルチモーダルについてはもっと分かりやすいよ。<br>OllamaはGoの画像処理ライブラリを使ったけど、llama.cppは自分で画像処理のコードを書いたんだ。" userName="magicalhippo" createdAt="2025/05/17 02:44:02" color="#ff33a1">}}




{{<matomeQuote body="＞引用？<br>これ見てよ。<br>俺が言いたかったのはね、ただパッチをポンって送ればいいほど簡単じゃないんだってこと。新しいか、違う実装が必要になるんだよ。" userName="magicalhippo" createdAt="2025/05/17 03:24:12" color="">}}




{{<matomeQuote body="彼らがC++で貢献できないのは、Goしか書けない人がいるってリンクがあるから？違うでしょ笑<br>いくつか言いたいんだけどね。まず、共感が大事。あと、変な言い訳で悪い行動を正当化しようとするのは良くない。Ollamaとllama.cppの関係は、Handbrakeとffmpegみたいなもんだって例えが上手いよね。昔HandbrakeでC++勉強したけど、こんな態度はありえなかったよ。" userName="refulgentis" createdAt="2025/05/17 04:13:44" color="#ff5733">}}




{{<matomeQuote body="何言ってんのこれ？ggmlがどこから来てると思ってんだよ？<br>＞llama.cppプロジェクトはggmlライブラリの新機能開発の主要な遊び場なんだよー。<br>ほら見て。（ヒント：OllamaはGoしか書かないと思ってるなら、あのフォルダのコミット履歴見てみろよ）" userName="noodletheworld" createdAt="2025/05/16 07:33:34" color="#ff5733">}}




{{<matomeQuote body="llama.cppは明らかにiSWAをサポートしてないよ。これね。<br>Ollamaはしてるから、試してみて。" userName="nolist_policy" createdAt="2025/05/16 07:53:22" color="">}}




{{<matomeQuote body="おい、彼らはllama.cpp使うのやめて、今はggmlを直接使ってるって発表したんだぜ。お前が何か見つけたとでも思ってることなんて、お前の頭の中にあるだけだよ。" userName="imtringued" createdAt="2025/05/16 08:49:18" color="">}}




{{<matomeQuote body="”OllamaはGoだからllama.cppに貢献できない”って主張に反論してるんだよ。<br>llama.cppもOllamaもGGML使ってるじゃん。上流に貢献すればそれはllama.cppへの貢献になる。<br>彼らがGoしか書かないとか、上流に貢献できないって主張は、断言するけどどっちも間違いだよ。議論の余地なし。<br>できないのは技術力がないんじゃなくて、単にやる気か能力不足でしょ。" userName="noodletheworld" createdAt="2025/05/16 14:43:36" color="#ff5c5c">}}




{{<matomeQuote body="正直、君がなんで低評価されてんのかわかんないけど、スタンドから見てるだけのやつがさ、「何やってんだか知らんけど、この人なんか否定的だ！」みたいなもんじゃない？乾杯ー。<br>「なんかごまかすだけのインチキ議論はさ、あっという間に広まるんだよ…」って感じだね。" userName="refulgentis" createdAt="2025/05/16 18:15:44" color="">}}




{{<matomeQuote body="＞君も言うようにOllamaはOllamaしてるねー。俺が冗談で言ったOllamaの llama.cpp への貢献ってのはさ、llama-serverに機能来るの待ってコピペすることだってやつ。<br>llama.cpp のラッパー以外で彼らが思いついて llama.cpp に入った改善ってなんかある？<br>libmtmd導入の時は、Ollamaは待って git pull してマルチモーダル機能手に入れたけど、クレジット無かったんでしょ。LLaVa経由のビジョンサポートはあったけど、そんな良くなかったし。" userName="rvz" createdAt="2025/05/16 06:04:59" color="#38d3d3">}}




{{<matomeQuote body="Ollamaからの注目すべき貢献はマジでないね。０って聞いても驚かない。<br>もっと馬鹿げてるのは、llama.cpp のリンク先のタイムラインが控えめで、テストバイナリが変わっただけだったこと。マルチモーダルモデルはずっとすぐにサポートされてたんだ。<br>ポジティブな話だと、Kobold の Vulkan 貢献とか、Googleの ochafik さんのツールコールとか思考のシステム化の貢献はマジで素晴らしい。ツールコールはAI自動化にすごく重要だし、オープンソースがここで進歩できたのはマジででかいことだと思うね。" userName="refulgentis" createdAt="2025/05/16 06:24:17" color="#45d325">}}




{{<matomeQuote body="親切な言葉ありがとう！これ全部個人的な時間でやったんだよね（Googleの著作権下だけど）。使ってもらえて嬉しいな😊新しい仕事始めるからこれ以上貢献できるか分からないけど、すごく楽しい時間だったよ！（他の貢献者やggerganovさんのおかげだけどね！）" userName="ochafik" createdAt="2025/05/20 10:02:41" color="#ff5733">}}




{{<matomeQuote body="マルチモーダルっていうのはさ、テキスト、画像、音声（＋動画も）含んでるべきだと思うんだよね。画像生成とか分析だけならvision modelって言う方が適切じゃない？Qwen2.5-OmniみたいなのとQwen2.5-VLは区別した方がいいよ。そういう意味では、Ollamaの新しいエンジンはvision対応を追加したってことだね。" userName="oezi" createdAt="2025/05/16 11:10:12" color="#ff5c5c">}}




{{<matomeQuote body="動画の入力に関心があるんだけど、Qwen2.5-OmniとOllamaでそれってできるのかな？" userName="prettyblocks" createdAt="2025/05/16 16:28:14" color="">}}




{{<matomeQuote body="Qwen2.5-Omniで音声だけテストしてみたんだけど、僕の使いたいこと（音声にタグ付けするやつ）だと、当たり外れがあったんだよね。" userName="oezi" createdAt="2025/05/16 18:49:15" color="#45d325">}}




{{<matomeQuote body="Hugging Faceのsmolvlmに関するブログ記事はこちらだよ<br>https：//huggingface.co/blog/smolvlm" userName="tough" createdAt="2025/05/17 00:24:12" color="#38d3d3">}}




{{<matomeQuote body="動画に関心あるみたいだけど、具体的にどんなことに使いたいの？" userName="machinelearning" createdAt="2025/05/16 20:35:24" color="">}}




{{<matomeQuote body="モデルが動画がAIで作られたものか、それともすごく手を加えられたものか認識できるか興味あるな。あと顔とか物のセグメンテーションみたいな色々なこととか。" userName="prettyblocks" createdAt="2025/05/17 03:57:39" color="#ff5733">}}




{{<matomeQuote body="Sidetangent：なんでOllamaを嫌ってる人がいるの？llama.CPPを自分で動かせばいいじゃんって説明しか聞いたことないんだよね。" userName="tommica" createdAt="2025/05/16 05:10:17" color="">}}




{{<matomeQuote body="RedditのLocalLLaMAでの議論へのリンクだよ<br>https：//www.reddit.com/r/LocalLLaMA/comments/1jzocoo/finally...<br>Ollamaはllama.cppをちゃんとクレジットしてないみたいで、これが長い間解決されてない問題なんだ。他のとこでもllama.cpp使ってるのにOllamaの名前が出たりするケースもあるし。upstreamに貢献してない（これはOK）なんだけど、開発者の一人が貢献したって言ってたのにそうでもなかったのがちょっと変かな。独自のフォークは管理してるから、そこからコードを取ってくることはできるよ<br>https：//github.com/ollama/ollama/commits/main/llama/llama.cp..." userName="lhl" createdAt="2025/05/16 05:40:24" color="#ff5733">}}




{{<matomeQuote body="個人的にはさ、OllamaってLLM界隈のDockerみたいなもんだと思うんだ。<br>ユーザー体験（user experience）はめっちゃイケてるし、モデルファイル（model file）の書き方（syntax）もDockerfileの構文に影響受けてるっぽいんだよね。[0]<br>Dockerが出始めの頃、DockerとLXCどっちがいいんだって議論があったけど、あれに似てるんだよね。その時もDockerの素晴らしいユーザー体験の改善点は無視されてたんだ。<br>ただ、長い間llama.cppへの謝意が足りなかったのは問題だってのは同意するよ。今はちゃんと認めてるみたいだけどね。<br>[0]: https://github.com/ollama/ollama/blob/main/docs/modelfile.md" userName="speedgoose" createdAt="2025/05/16 06:52:53" color="#ff33a1">}}




{{<matomeQuote body="すでに触れられてる”文化”（”culture”）、ライセンス（licensing）、FOSSの問題は置いといて、俺は単に色々なアプリでモデルの重み（model weights）を使い回したかっただけなんだよ。でもOllamaは独自のディスク上での保存方法と独自のレジストリ（registry）で提供することにしちゃったんだ。たぶん、これでいつかどうにか収益化（monetize）したいんだろうね、例えば独自の”プライベート（private）”な重み（weights）を彼らのレジストリ（registry）でホストするとかさ。なんでファイルを”ブロブ（blobs）”に分割するのがLLMの重み（weights）にとって意味があると思ったのか分かんないな、Dockerみたいに重複を減らしたかったんだろうけど、結局なんの得もなく複雑にしただけに見えるよ。<br>結局、俺みたいなユーザーはOllamaと他のエコシステムで重み（weights）を使いたいだけで、+30GBもあるデカいファイルを重複して持つ羽目になっちゃったわけ。だから俺はOllamaじゃなくて、大体同じように動く他の全部を使ってるんだ。" userName="diggan" createdAt="2025/05/16 11:47:04" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺にとってはね、Ollamaが単にllama.cppのフロントエンド（front-end）なのに、Ollamaの人たちがそれをあんまり認めないからなんだよ。" userName="octocop" createdAt="2025/05/16 06:58:54" color="">}}




{{<matomeQuote body="彼らはコミュニティ（community）と一緒にやろうとしないんだ。VC（VC-backed）から資金を得てる会社だって考えると、どうやって収益化（monetize）するつもりなんだ？って未解決の問題もあるしね。<br>llama.cpp、lmstudio、ramalama（containers/RH）を選ばない理由はないじゃないか。そっちなら少なくとも何が得られるか分かるしね。<br>Ramalamaなんて、llama.cppやwhipser.cpp（他にもプロジェクトあるかも）にかなりの貢献をしてるし、俺にとってはより良いソリューションを提供してくれてるんだ。<br>https://github.com/ollama/ollama/pull/9650<br>https://github.com/ollama/ollama/pull/5059" userName="wirybeige" createdAt="2025/05/16 14:51:50" color="#ff5c5c">}}




{{<matomeQuote body="10年もこの業界にいれば、誰だってEmbrace, Extend, Extinguishモデルの匂いを100マイル先からでも嗅ぎ分けられるってもんだ。<br>彼らは明らかに市場（market）を独占して、他の人たちの仕事の上に立って、なんか”エンタープライズライセンス（enterprise license）”に切り替えて金を徴収するつもりだよ。" userName="bearjaws" createdAt="2025/05/16 13:33:33" color="#ff5733">}}




{{<matomeQuote body="r/localLLaMaでのOllamaヘイトの最近のスレッドはここだよ：https://www.reddit.com/r/LocalLLaMA/comments/1kg20mu/so_why_..." userName="gavmor" createdAt="2025/05/16 05:45:19" color="">}}




{{<matomeQuote body="r/localLLaMaはすごく役立つけど、集団思考（groupthink）やアストロターフィング（astroturfed）、感情の波（mood swings）にすごく影響されやすいんだ。この騒動（drama）は文脈（context）で捉える必要があるし、感情的で理屈がそんなにないんだよ。" userName="kergonath" createdAt="2025/05/16 15:55:26" color="">}}




{{<matomeQuote body="俺がOllamaを諦めたのは、OllamaがVulkanをサポートしてないからなんだ：https://news.ycombinator.com/item?id=42886680<br>コンシューマーハードウェア（consumer hardware）を気にするなら、Vulkanサポートは必須だよ。Ollamaの開発者たちは明らかに気にしてないね。" userName="buyucu" createdAt="2025/05/16 07:20:15" color="#45d325">}}




{{<matomeQuote body="欲しい機能がないソフトなんて、もっといいllama.cppがあるのになんで使うの？ Ollamaに全然価値ないじゃん。" userName="buyucu" createdAt="2025/05/16 10:37:01" color="">}}




{{<matomeQuote body="俺はWebUIチャットで複数のモデルを比べて使うことが多いんだけど、Ollamaはllama.cppよりずっと簡単にできるんだよね。だから俺にとってはこれがめっちゃ価値あるよ。" userName="magicalhippo" createdAt="2025/05/16 11:07:14" color="">}}




{{<matomeQuote body="llama-swapの方がOllamaよりうまくできると思うな。" userName="buyucu" createdAt="2025/05/16 13:51:32" color="">}}




{{<matomeQuote body="俺にとって問題なのは、あのR1の失敗とやつらの不誠実さだよ。あんなに堂々とユーザーを騙して、ただ流行りに乗っかろうとしただけのプロジェクトをどうやったら信頼し続けられるのか、全く理解できないね。" userName="jimjimwii" createdAt="2025/05/17 08:13:28" color="">}}




{{<matomeQuote body="cppの方が速くて機能も多かった、ただそれだけだよ。" userName="nicman23" createdAt="2025/05/16 05:13:59" color="">}}




{{<matomeQuote body="重い処理は全部cppがやってるんだよ、Ollamaはただのライブラリラッパーだって。Handbrakeがlibffmpegに全部依存してるのに、動画処理の仕事を全部自分でやってるフリするみたいなもんだよ。" userName="cwillu" createdAt="2025/05/16 05:45:56" color="">}}




{{<matomeQuote body="＞ ollamaはただのライブラリラッパーだって。<br>それは過去の話。今回の記事はまさに、彼らがllama.cppのラッパーから脱却しようとしてるって内容じゃん :)" userName="diggan" createdAt="2025/05/16 11:48:18" color="">}}




{{<matomeQuote body="いや、脱却してないよ。記事にはggmlを使ってるってあるけど、それってllama.cppのことだから。" userName="buyucu" createdAt="2025/05/16 13:50:15" color="">}}




{{<matomeQuote body="部品の組み合わせを誤解してると思うな。llama.cppはCLI付きのライブラリで、ggmlもライブラリ。Ollamaには”runner”（実行エンジン）がある。前はOllamaはllama.cpp（ggml使用）をrunnerとして使ってたけど、新しいモデル向けに独自のrunner（これもggml使用）を作ったんだ。でも他はまだllama.cppを使ってるよ。ggmlとllama.cppは違うけど、両方ggmlを使ってるんだ。" userName="diggan" createdAt="2025/05/16 14:59:15" color="#ff5733">}}




{{<matomeQuote body="”llama.cppプロジェクトは、ggmlライブラリの新機能開発のための主な遊び場だ”—https://github.com/ggml-org/llama.cpp<br>”開発の一部は現在、llama.cppとwhisper.cppのリポジトリで行われている”—https://github.com/ggml-org/ggml" userName="cwillu" createdAt="2025/05/16 17:00:31" color="#785bff">}}




{{<matomeQuote body="うん、どっちもわかるよ。ggmlは他のとこでも使えるって気づいてllama.cppから分かれたんだ。だからllama.cppは”メインの遊び場”だけど、他のやつら（llama.cpp自身も含めて）も使ってるんだよ。急にllama.cppがggmlと同じになったってわけじゃないよ。なんでそう思ったのかは分かんないけど。" userName="diggan" createdAt="2025/05/16 21:42:42" color="#38d3d3">}}




{{<matomeQuote body="これあとで試してみるよ。記事が実用的な例から入ってすぐに要点を押さえてくれて、そのあと詳細って構成なのがありがたいね。" userName="ics" createdAt="2025/05/16 03:43:33" color="">}}




{{<matomeQuote body="この新しいエンジンについていっぱい話してるけど、実際どう実装されてるかの詳細が見たいなぁ。llama.cppは”超すごい”んだから、もしそれに代わるって言うなら、どうやったか例を見せてくれるといいのに！記事の引用とGitHubリンク見た感じだと、llama.cppの元になってるGGMLライブラリがGoから呼び出せる仕組み（FFI）を出してて、OllamaのGoコードからGGMLを呼んでGemma 3みたいなモデルを動かしてるのかな？って思ったんだけど、これで合ってる？こういう詳しいとこ、記事の最初にもっと出すべきだったんじゃない？" userName="andy_xor_andrew" createdAt="2025/05/16 17:37:51" color="#38d3d3">}}




{{<matomeQuote body="Ollamaは透明性がないとか、誰が作ったかちゃんと書かないとか、ユーザーにとって良くないことするとかで知られてるんだよね。この記事で結構しっかり帰属表示してるのはびっくりしたよ。結構叩かれてたから、調整してるのかもね。" userName="Hugsun" createdAt="2025/05/16 20:56:09" color="">}}




{{<matomeQuote body="残念だけど、AI/MLの進化のスピードってめちゃくちゃ速いんだよね。ずっとアンテナ張ってないと、どうやって追いつけばいいか分かんないくらい。この分野って、ちょっとネタっぽい名前つけるのも好きだしね。何年か前はSesame Streetのキャラから名前つけてたり、YOLOシリーズもあったり。論文だって例外じゃない、むしろ一番ひどい”違反者”かもね。" userName="mcbuilder" createdAt="2025/05/16 17:35:14" color="">}}




{{<matomeQuote body="彼らの例の「中国の縦書き春聯を英語に理解・翻訳する」ってやつ、間違い多いじゃん。あの例を出した記事の人は、ほんとは中国語知らないんじゃない？実際に書かれてるのはこれだよ。<br>Top: 家和国盛<br>Left: 和諧生活人人舒暢迎新春<br>Right: 平安社会家家欢乐辞旧岁<br>Ollamaが見たのはこれ。<br>Top: 盛和家国 (文字は合ってるけど順番逆)<br>Left: 「新春」を舒暢って読んでる<br>Right: 家家欢欢乐乐辞旧岁 (文字がダブって最初の4文字がない)" userName="yossi_peti" createdAt="2025/05/16 16:55:23" color="#38d3d3">}}




{{<matomeQuote body="その例やったメンテナーの一人だけど、俺中国人だよ。英語翻訳は結構合ってたと思ったけどな。モデルの間違いを隠したり、デモを偽装したりはしてないよ。時間が経てば、モデルがもっとずっと良くなってくれるといいなと思ってる。" userName="mchiang" createdAt="2025/05/16 17:15:48" color="#ff5c5c">}}




{{<matomeQuote body="俺にとってOllamaの強みは、簡単なDockerコマンドで何も設定いじらずにすぐローカルで使えることだったんだよね。でも画像とか動画だと、DockerはGPU使わないからもうダメなんだ。Ollamaが今後Dockerをどうサポートするつもりなのか、それともDockerはそんなに重要じゃないのか、そこが気になるなぁ。" userName="bradly" createdAt="2025/05/16 13:35:04" color="#ff5c5c">}}




{{<matomeQuote body="DockerでもGPU使えるってば。少なくとも一部のプラットフォームではね。設定はもうちょい必要だけど、Nvidiaが詳しい情報出してて参考になるよ。" userName="IanCal" createdAt="2025/05/16 13:39:35" color="#ff5733">}}




{{<matomeQuote body="ありがとう。MacOSって指定すべきだったわ。最近stable-diffusion-webuiとかInvokeAIとかFoocusを設定しようとして，自分のラップトップだとllmsよりずっと複雑で困ったんだよね。" userName="bradly" createdAt="2025/05/16 13:48:55" color="">}}




{{<matomeQuote body="ちょっと聞きたいんだけど，試す前はMacってジェネレーティブAIにどれくらい合っててパフォーマンスどうかってどんな印象だった？" userName="washadjeffmad" createdAt="2025/05/16 15:52:02" color="">}}




{{<matomeQuote body="M1 MacBook AirでローカルAIを試す前は全然知らなかったんだけど，Ollamaのおかげで簡単に始められたよ。使ってみたらチャットは十分速いけど，コード生成は遅すぎ。画像生成は1～2分かかるけど品質はイマイチだったわ。M3とかM4 Miniだとどうなるのか気になるな。中古だと手頃らしいよ。" userName="bradly" createdAt="2025/05/16 16:33:18" color="#ff5733">}}




{{<matomeQuote body="俺Ollamaでローカルモデルを動かすのを1年近く使ってて，マジで気に入ってるんだけど，Llavaとかのマルチモーダルは全然触ってないんだよね。だって使うのが全部テキストベースだから。質問なんだけど，ここでローカルモデル使って何かクールで便利なマルチモーダルプロジェクト作った人いない？個人のプロジェクトアイデア探してんだよね。" userName="mark_l_watson" createdAt="2025/05/16 13:49:14" color="#45d325">}}




{{<matomeQuote body="なんでOllamaのエンジンって新しいモデルに対応するために変えなきゃなんないの？新しいモデル出るたびOllamaアップグレードしなきゃダメじゃん。" userName="newusertoday" createdAt="2025/05/16 04:19:39" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="それはね，こういう事情があるからだよ。<br>https://github.com/ggml-org/llama.cpp/issues/12637<br>それにllama.cppの視覚モデル対応は遅れてたしね。Ollamaはllama.cppより速くみんなが欲しい機能を実装してるんだ。これで”ただのllama.cppラッパーじゃん”って批判してた人たちも黙るだろうね。" userName="nkwaml" createdAt="2025/05/16 04:28:09" color="#785bff">}}




{{<matomeQuote body="それにllama.cppでは人間関係の対立もあって，他のバグ修正の邪魔になってるみたいだよ。<br>https://github.com/ikawrakow/ik_llama.cpp/pull/400" userName="Maxious" createdAt="2025/05/16 04:42:38" color="">}}




{{<matomeQuote body="一体そこで何が起こってんの？オープンソースなのに同じコードで作業するのに互いにライセンス与え合うとか，マジで変だよ。どうしてこうなったんだ？" userName="kergonath" createdAt="2025/05/16 16:00:23" color="">}}




{{<matomeQuote body="ikawrakowとggerganovの間にはなんか確執があるみたいだね。<br>https://github.com/ikawrakow/ik_llama.cpp/discussions/316" userName="Philpax" createdAt="2025/05/16 17:51:42" color="">}}




{{<matomeQuote body="今はただホストされたAPIのラッパーって感じだね。俺は自分でllama.cppとstable-diffusion.cppをラップするやつ作ったわ。結果がいまいちならオプションでホストされたのにプロンプト投げるけど、これはホスト側が改善するのにいい出発点になるかもね。それにホストに送るリクエストを難読化もしてる。だって、ローカルAIのアルゴリズムの選択をちょっと確認したいだけなのに、俺の使い方をホストに教える必要ないっしょ？関数名とか変数名が示唆する俺の秘密だよ。" userName="w8nC" createdAt="2025/05/16 05:16:48" color="#ff5c5c">}}




{{<matomeQuote body="え、Ollamaって何のホストされたAPIをラップしてんの？" userName="Patrick_Devine" createdAt="2025/05/16 05:21:37" color="">}}




{{<matomeQuote body="OllamaってChatGPTみたいな「ユーザーコンテキスト」に対応してる？初期プロンプトとか、履歴を覚えて次の質問に活かすみたいなやつ。ChatGPTがやってるような保存されたコンテキストのことかな。俺が使ってる限りでは超基本しかやってなくて、そういう高レベル機能は見てないんだけどさ。" userName="JKCalhoun" createdAt="2025/05/16 14:40:25" color="#38d3d3">}}




{{<matomeQuote body="俺的にはOllamaは「LLMバックエンド」って感じかな。自分のマシンで動くサーバープロセスで、あんまり状態を持たないでリクエストに答えるやつ。モデルは読み込みっぱなしで、KV cacheもセッション中ウォームアップしてるかも（API見ると怪しいけど）。ディスクには何も書かれないっぽい。ChatGPTの「メモリー」みたいな永続的な記憶機能はフロントエンド向けだね。ただ、OllamaのAPIは履歴付きでリクエストを渡すのはサポートしてるよ<br>https：//github.com/ollama/ollama/blob/main/docs/api.md#chat-..." userName="lxgr" createdAt="2025/05/16 14:45:57" color="#ff5c5c">}}




{{<matomeQuote body="LLMに渡されるコンテキスト／メッセージ配列への単なるエントリ以上の記憶ってあるのかな？" userName="codybontecou" createdAt="2025/05/16 16:04:57" color="">}}




{{<matomeQuote body="きっとかなりヘビーな圧縮／フィルタリングが行われてるはずだよ。だって、GPTがみんなのChatGPTの会話履歴全部をコンテキストに保持できるわけないもんね。でも実際問題、Ollamaは今のところサーバー側の永続的な状態っていう概念自体がないと思う。だからそんなことする余地もないよ。" userName="lxgr" createdAt="2025/05/16 16:34:39" color="#ff5c5c">}}




{{<matomeQuote body="俺の考えでは、使われてる圧縮は文字通り「Chat、このメッセージ配列を圧縮して」みたいなプロンプトだと思うよ。これはClaude Plays Pokemonで使われてたテクニックだね。きっとプロンプトにはもっと色々あるだろうし、新しく生成されたメッセージ配列をどうするかとかもあるだろうけど、要点はこれだ。もしこれが本当なら、Ollamaでこれを実装するのはそんなに難しくないはずだよ。" userName="codybontecou" createdAt="2025/05/16 16:54:28" color="#38d3d3">}}




{{<matomeQuote body="彼らが例として使った一つが間違っててウケる。”San FranciscoのFerry BuildingからStanford Universityへ行くベストな方法は、好みと予算によるよ。いくつか選択肢がある：<br>1. 車で：US-101 Southに乗ってCA-85 Southへ、それからCA-101 Southを進んで。”<br>ってやつ。CA 85はPalo Altoよりずっと南じゃん。" userName="ac29" createdAt="2025/05/16 19:22:48" color="#45d325">}}




{{<matomeQuote body="LLM分野の広いトレンドを考えると、このタイミングは納得できるね。俺たちはテキストだけじゃなく、もっと統合されたマルチモーダルな体験に移行してる最中だからさ。こういう tightly controlled なエンジンがあれば、リアルタイムでコンテキスト豊かな理解を必要とするアプリを作る開発者にとってはゲームチェンジャーになるかもね。" userName="Koshima" createdAt="2025/05/16 13:18:36" color="#45d325">}}




{{<matomeQuote body="俺が正しく理解してるなら：今回は違うんだぜ．Ollamaチームが作った新しいエンジンは，llama.cppから独立してるんだ．" userName="hexmiles" createdAt="2025/05/16 10:26:27" color="">}}




{{<matomeQuote body="それは疑わしいな．Llama.cppはつい数週間前に同じモデルのサポートを追加したばっかだよ．Ollamaの人たちは単にgit pullしただけだろ．" userName="buyucu" createdAt="2025/05/16 10:37:53" color="">}}




{{<matomeQuote body="オープンソースなんだから，自分で調べればよかったのに．確かに新しいエンジンはllama.cppを通さず，GGMLライブラリを直接使ってるみたいだね．プルリク見てみて．https://github.com/ollama/ollama/pull/7913" userName="magicalhippo" createdAt="2025/05/16 11:28:46" color="#785bff">}}




{{<matomeQuote body="マジかよ？　GGMLを開発してるのが誰だと思ってんだ？　ヒント：llama.cppだよ．" userName="buyucu" createdAt="2025/05/16 13:49:44" color="#785bff">}}




{{<matomeQuote body="llama.cppは6日前にvisionのサポートを追加したんだぜ．SimonWの投稿を見てくれ：https://simonwillison.net/2025/May/10/llama-cpp-vision/＞「俺が正しく理解してるなら」<br>彼らが君にそう理解させたかっただけだよ…" userName="Havoc" createdAt="2025/05/16 10:37:34" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
