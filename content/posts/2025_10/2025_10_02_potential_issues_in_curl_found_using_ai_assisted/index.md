+++
date = '2025-10-02T00:00:00'
months = '2025/10'
draft = false
title = 'AI支援ツールがcurlの潜在的な問題を発見！その実力は本物か？'
tags = ["AI", "セキュリティ", "プログラミング", "開発ツール", "静的解析"]
featureimage = 'thumbnails/blue_green1.jpg'
+++

> AI支援ツールがcurlの潜在的な問題を発見！その実力は本物か？

引用元：[https://news.ycombinator.com/item?id=45449348](https://news.ycombinator.com/item?id=45449348)




{{<matomeQuote body="このリンク見てみて！AI SASTとセキュリティAIツールのレビューに関するプレゼン資料みたいだよ。https://joshua.hu/llm-engineer-review-sast-security-ai-tools...https://joshua.hu/files/AI_SAST_PRESENTATION.pdf" userName="robhlam" createdAt="2025/10/02 13:29:55" color="">}}




{{<matomeQuote body="「AIコーディングコンパニオン」に求めるのはまさにこれ！コードを書いたり直したりするんじゃなくて（それは自分でできるし楽だから）、どこが怪しいか指摘してほしいんだ。<br>Claudeに2万行のCライブラリのバグ探しを頼んだら、ファイルを分割して特定のコードパターンをgrepするだけで、結局は僕のFIXMEコメントのリストをくれただけ（笑）。これなら簡単なbashスクリプトでもできるよ。ChatGPTはもっとダメで、「全部素晴らしい！やったね！」って言うのに時間使いすぎ。これまでの静的コード解析の方が実際のバグを見つけるのに役立ってるけど、静的解析がクリーンでもロジックバグがないとは限らないし、そこがLLMの真価を発揮するところだよね。でもLLMからもっと役立つ潜在的なバグ情報をもらうのに大変なカスタム設定が必要なら、そのアイデア自体があまり役立たない。IDEのボタンやメニューから使えるか、ビルド時にデフォルトで有効になってないと静的解析も使われないのと一緒だよ。" userName="flohofwoe" createdAt="2025/10/02 14:49:27" color="#ff5733">}}




{{<matomeQuote body="これってあんまり議論されてない点がびっくりだよな。多くの（ほとんどの？）プログラマーって、コードの設計や書くのは好きだけど、レビューはそんなに楽しくないじゃん？なのにAIにコードを書かせて、プログラマーがレビューするって、なんか逆行してる気がするよ。（もちろん、ステークホルダーには「LoCが増えるぜ！」って売り込んでるんだろうけどさ。コードレビュー？何それ？）" userName="Sharlin" createdAt="2025/10/02 15:54:22" color="#38d3d3">}}




{{<matomeQuote body="創造性って楽しいのに、AIがそれを自動化しちゃうのは嫌だな。コード書くAIより、洗濯して畳んで片付けてくれるAIが欲しいよ。AIコードレビューは、たまに有効な提案があるし、あとは大体無視すればいいから別にいいけどね。" userName="SAI_Peregrinus" createdAt="2025/10/02 16:30:07" color="#45d325">}}




{{<matomeQuote body="「創造性って楽しいのに、AIがそれを自動化しちゃう」って？<br>僕は何ヶ月も／約1年近くLLMと一緒に開発してるけど、むしろ創造性が増したって感じてるよ。まあ、「Vibeコーディング」みたいなのはしてないからかもしれないけどね？<br>僕にとってのクリエイティブな部分って、ソフトウェアの実際のデザインとか、それがどうやって全体的にうまく動くか、何をどうすべきかって考えることで、今はそれが前よりたくさんできるようになったんだ。" userName="diggan" createdAt="2025/10/02 16:41:27" color="#38d3d3">}}




{{<matomeQuote body="アイデアを出して、それをAIに実装させたら、創造性を自動化してることになるのかな？" userName="CuriouslyC" createdAt="2025/10/02 18:29:46" color="">}}




{{<matomeQuote body="昨日もまさにそう思ってたんだよね。洗濯をちゃんとやって片付けて、収納を整理して、風呂掃除して、皿洗いしてほしい。パントリーを整理してレシピくれて、ちゃんと在庫管理してくれたり。僕は単純な人間だけど、こういう生活の問題を解決してくれるAIにお金払いたいのに、なんで楽しいことをAIが奪っちゃうのかな？" userName="collingreen" createdAt="2025/10/02 18:13:51" color="#45d325">}}




{{<matomeQuote body="うん、アイデアってそんなに価値ないか、全くないよね。本のアイデアとか絵のアイデアがあっても、それを誰かに実装させたら、君はクリエイティブな仕事をしてないことになる。文字通り、作品を生み出していないんだから。創造したのは実装者だよ。" userName="Sharlin" createdAt="2025/10/02 19:36:02" color="#45d325">}}




{{<matomeQuote body="そういう問題って、もうお金払えば全部解決できるじゃん。" userName="ghiculescu" createdAt="2025/10/03 08:37:30" color="">}}




{{<matomeQuote body="いや、それは違うよ。お金を払うってのは、単に自分の問題を他の人に転嫁してるだけだ。機械やコードがタスクを実際に消したり、少なくとも小さくしたりするのとは、根本的に違うんだから。" userName="Brian_K_White" createdAt="2025/10/03 10:04:43" color="#ff5c5c">}}




{{<matomeQuote body="家庭用ロボットってさ、皿洗いや掃除とかで既に90%以上も時間節約してるんだぜ。手作業に比べて超効率的！ちょっと物を動かす手間はあるけど、それだけだよ。<br>マジで時間短縮効果はすごいって話。" userName="pliny" createdAt="2025/10/03 11:18:44" color="#ff5c5c">}}




{{<matomeQuote body="脚本書いて監督して、役者に演じさせたら映画を『創造』したって言える？<br>俺的には「それが大事？」って思うんだ。<br>みんなが楽しけりゃ、創造の定義なんてどうでもいいじゃん。" userName="alickz" createdAt="2025/10/02 23:05:50" color="">}}




{{<matomeQuote body="安いAIボットより俺はまだ速いよ。創造性って実装とデザイン両方だろ？ボットは邪魔になることが多い。Claude Codeは高いし試してないけど、AI補完で生産性向上ってのはまだ実感できてないな。<br>自分で全部理解して作る方が速くて楽しいし、良いものができる。3年前にボットに負けるって言われたけど、俺はまだJohn Henryだ。AIはまだまだ予測不能すぎるね！" userName="dingnuts" createdAt="2025/10/02 17:07:31" color="#ff5c5c">}}




{{<matomeQuote body="ホントそれな！俺は新しい実装とか抽象化をするのが超好き。<br>で、AIは、それを別の文脈に合わせてちょっと修正するみたいな、マジで退屈な部分が得意なんだよね。" userName="chrischen" createdAt="2025/10/03 06:22:22" color="">}}




{{<matomeQuote body="人気が出ると、熱狂が収まってから正直なフィードバックが出てくるのは自然なことだよね。今までの超ポジティブな意見ばっかだったから、こういう本音はキツく感じるかも。<br>LLMのハルシネーション（嘘つき）とか、弁護士がLLMのデマで罰金食らった話とか、そういうのがAIの過剰な期待を冷ますきっかけになるだろうね。" userName="dylan604" createdAt="2025/10/02 19:47:38" color="#38d3d3">}}




{{<matomeQuote body="違うだろ。映画は脚本家、原作、監督をちゃんと区別してるんだからさ。" userName="shakna" createdAt="2025/10/03 05:06:00" color="">}}




{{<matomeQuote body="でもさ、こうやって地道に努力することで学んで、もっと良い方法を見つけるんだろ。<br>めちゃくちゃなアイデアを安易に手に入れるのはスロットマシンみたいなもんで、結局何も進まないよ。" userName="codr7" createdAt="2025/10/03 06:33:54" color="">}}




{{<matomeQuote body="今日BBCの記事でさ、旅行者がLLMで旅行計画立てて、存在しない場所に行っちゃってトラブルになってるって話を見たよ。マジで危険な場所に行くこともあったらしい。<br>https://www.bbc.com/travel/article/20250926-the-perils-of-le...<br>人間って間違いから学習するの苦手なのかな？なんか文明が退化してる気がしてきたわ。" userName="zdragnar" createdAt="2025/10/02 22:18:55" color="#38d3d3">}}




{{<matomeQuote body="20klocのCライブラリのバグをClaudeに探させたら、ファイルを分割してgrepして、自分のFIXMEコメントのリストを返してきただけ（笑）。それなら簡単なBashスクリプトで十分だよね。<br>でもさ、期待外れの結果が出たら、AIに効果的なプロンプトの聞き方を聞くのがいいよ。「FIXMEとかTODOとか無視してロジックバグを見つけるプロンプトはどうする？」ってね。<br>その結果のプロンプトは長いけど、ここで見れるよ：https://gist.github.com/CharlesWiltgen/ef21b97fd4ffc2f08560f...<br>これを元に改善すればいいんだ。" userName="CharlesW" createdAt="2025/10/02 16:41:19" color="#785bff">}}




{{<matomeQuote body="創造性は実装とデザイン両方って言うけど、LLMが書くコードって俺のデザイン通りだから予測可能だよ。俺よりタイピングが速いから、俺は次のデザインを考えてる間に任せちゃうんだ。<br>ClaudeとかCodex、Qwen、Geminiとか全部にプロンプト送ると（この画像見て→https://i.imgur.com/YewIjGu.png）、みんな同じ解決策にたどり着くのがわかる。俺の想像通りってこと。<br>俺がやってるのは「高価なAI autocomplete」じゃない。デザイン考えて、あとはAIに任せてるだけ。コードはほとんど書いてないよ。<br>「Vibe-coding」してる人と違って、俺たちはデザインとアーキテクチャに集中して、実装はAIに任せてるんだ。" userName="diggan" createdAt="2025/10/02 17:17:27" color="#ff5733">}}




{{<matomeQuote body="「”演者に演じさせる”って部分を見逃してるよ。そこまで全部やったら、実質的にそれがクリエイターでしょ。」" userName="zeroimpl" createdAt="2025/10/04 06:10:54" color="">}}




{{<matomeQuote body="「同意。開発者には2種類いると思う。個々の部品を設計するのが好きな人と、ブロックを組み合わせて新しいものを作るのが好きな人。AIは今、前者が得意で後者は苦手だね。俺はブロックを組み合わせるのが好き。美しいUIを作る時、ボタンごとのCSSを書くより、全体像を構成する方が楽しい。どちらが良い悪いじゃないけど、個々のブロックを作るのが好きな人はAIを嫌がるかも。俺にとっては、全体像の構成に至るための面倒なステップをAIが省いてくれる感じ。」" userName="victorbjorklund" createdAt="2025/10/03 08:26:21" color="#ff5c5c">}}




{{<matomeQuote body="「今開発中のアプリで、俺はgpt-oss-20Bを使ってるよ。プロンプトにはOWASP Top 10のWeb脆弱性を全部ぶち込んで、”明確な脆弱性”だけコメントするよう指示してる。俺が書いたコードの脆弱性発見にはかなり効果的だったね（いくつかコメントを見ると評価の低いモデルの一つだけど）。さらに拡張するなら、推論中にAIが”疑問”を持ったときに、関数呼び出しを導入したいな。それが、作業コンテキストを拡張するツール（他のファイルを読み込むなど）を呼び出すのに適切なタイミングになるだろうね。」" userName="mhitza" createdAt="2025/10/02 16:29:32" color="#ff5733">}}




{{<matomeQuote body="「俺も同感、俺のやり方も似てるよ。AIを使うときは、境界を明確にして要件をしっかり伝え、コミットするコードは”全て”理解するように徹底してる。ソフトウェア開発は、ディレクターやレビュアー、エディターに近い役割に移行すると思う。プログラミングパラダイムの知識は今と同じくらい重要だけど、”コミュニケーション”スキルが良い開発者と”素晴らしい”開発者を分けるポイントになるね。将来、1xデベロッパーと10xデベロッパーの違いは、後者が素人、同僚、そしてLLMにまで、問題や要件を明確かつ簡潔に説明できるかどうかだよ。これは今日多くの開発者が苦戦しているところだね（俺も含めて）。」" userName="alickz" createdAt="2025/10/02 23:13:30" color="#ff33a1">}}




{{<matomeQuote body="「ブリーフ提出前夜に徹夜してLLMの出力レビューする時間がなくなった弁護士なら、まだギリギリ理解できなくもない。でも、旅行先に出発前に調べないってどういうこと？相手の事情を汲み取ろうとしても、これはどうやっても理解できないことだよ。」" userName="dylan604" createdAt="2025/10/02 22:56:54" color="">}}




{{<matomeQuote body="「ルンバゲームを結構やった身としては、掃除機がけの問題が、ロボットの頻繁な清掃の問題に変わるだけだよ。モフモフの犬を飼うなんて大胆なことしたせいで、常にロボットを掃除するより、高出力のセントラルバキュームに切り替えた方がよっぽど時間を節約できた。あと、掃除が”クリエイティブ”じゃないとか”楽しくない”って言ってる人たちへ。Steamには掃除をシミュレートするゲームのジャンルが丸ごとあるんだよ。掃除って多くの人にとってめちゃくちゃ楽しくてクリエイティブな行為なんだから: <br>https://store.steampowered.com/app/246900/Viscera_Cleanup_De...<br>がいい例だね。実際、俺はロボットに洗濯して欲しくない！ 絵を描くのが下手で、洗濯の方が比較的得意だから、絵はロボットに描いて欲しいな。」" userName="Der_Einzige" createdAt="2025/10/03 17:00:37" color="#785bff">}}




{{<matomeQuote body="「正直、俺は両方やるのが好きなんだ。でも、システムの一つの原理をようやく解明できた時のあの興奮はたまらない。まるでパズルを解くみたいでね。それが終われば、あとは水を飲むように簡単なルーティン作業だよ。問題を説明してもらえれば、すぐに解決策を見つけられる。この段階でAIを使うのは、猫を追いかけるようなものだね。もう書くべきコードはわかってるから、いくつか提案されても気が散るだけ。知ってる曲を感じてるのに、誰かが別のメロディを弾いてるみたいな気分になるんだ。」" userName="skydhash" createdAt="2025/10/03 09:50:26" color="#38d3d3">}}




{{<matomeQuote body="「親コメントは哲学的な議論をしてるんだよ。映画制作にはソフトウェア開発よりもずっと多くの職種があるから、厳密なハリウッドの定義は重要じゃない。でも、どうしてもっていうなら、元の議論の”creator”を”producer”に置き換えれば同じことだよ。自分で演技しなくても映画はプロデュースできるんだから。」" userName="zeroimpl" createdAt="2025/10/05 02:32:45" color="">}}




{{<matomeQuote body="「何で”grind”（退屈な作業）するのさ？俺は”指で文字を入力する”なんてことはgrindしたくない。俺がgrindしたいのは”このデザインでXを意図通り動かせるか”ってことで、まさにLLMがそれを速くしてくれるんだよ。もちろん、スロットマシーンみたいに使ってるだけなら、役に立たないと感じるのもわかる。でも、ほとんどの人はそんな使い方してないと思うな。少なくとも俺は違う。」" userName="diggan" createdAt="2025/10/03 13:02:05" color="#ff5c5c">}}




{{<matomeQuote body="LLMと作業する時、この戦略はめちゃくちゃ役立つんだよね。変に思えるのは、LLMが質問を理解してるって、ただ人間の能力を投影してるだけだからだよ。これは推論モードがアウトプットの質を向上させるのと似てるのかもしれないね。" userName="OGWhales" createdAt="2025/10/02 19:17:35" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="それがいつも違いだったんだよ。第一原理、ってことだね。" userName="CSSer" createdAt="2025/10/03 07:07:23" color="">}}




{{<matomeQuote body="curlとAIの話がポジティブなの、意外だったな。歴史はここを見てみて: https://hn.algolia.com/?q=curl+AI" userName="chmod775" createdAt="2025/10/02 15:08:23" color="">}}




{{<matomeQuote body="Daniel Stenbergが、これまでの色々な問題があったのに、AI生成のバグ報告にもオープンな気持ちで対応したのは本当にすごいよ。" userName="dwedge" createdAt="2025/10/02 15:19:51" color="">}}




{{<matomeQuote body="大きな違いは、これらがAIが作ったバグ報告じゃないってことだよ。AIツールが手助けして見つけたバグを、ちゃんとした人間がきちんと検証して報告したんだ。" userName="athorax" createdAt="2025/10/02 15:33:07" color="#ff5c5c">}}




{{<matomeQuote body="要するに、AIをリンターや他の静的解析ツールみたいに使ってるんだよ。魔法だと思って、盲目的に結果を受け入れるんじゃなくてね。" userName="Legion" createdAt="2025/10/02 17:01:23" color="#ff5733">}}




{{<matomeQuote body="言語モデルを擁護するなら、バグはもともと人間が書いたものだからね。人間が検証してるってだけじゃ、あんまり擁護にならないよ。" userName="stocksinsmocks" createdAt="2025/10/03 03:24:23" color="">}}




{{<matomeQuote body="バグの一部はAIが作ったコードだったり、curlと関係ない例のコードだったりしたらしいね。人間なら簡単に確認できるのに、なんでAIユーザーは検証ステップを飛ばしたがるんだろう？" userName="josefx" createdAt="2025/10/03 15:00:10" color="#ff33a1">}}




{{<matomeQuote body="人間が検証することの重要性について。curlとか他のプロジェクトで、AIツールを使ってバグ報告を生成し、内容を理解せずに出してるのが問題なんだよ。フィルタリングに時間がかかるから、みんなイライラしてる。検証なしでやると、マジで迷惑だよね。" userName="NegativeK" createdAt="2025/10/03 14:01:18" color="#ff5c5c">}}




{{<matomeQuote body="うん、あの人の気持ちは分かるよ。AIのゴミ報告とか、わけの分からないエンドユーザーとか、本当にイライラすることにたくさん対処してきたからね。よく頑張ってるよ。" userName="abrookewood" createdAt="2025/10/03 00:49:54" color="">}}




{{<matomeQuote body="10時間フライトの後、Hacker Newsのトップページに自分の仕事が載ってるのを見て最高！数週間後には落ち着いたら振り返り記事書くし、新しく知ったツールについても話すよ。" userName="mmsc" createdAt="2025/10/03 04:42:05" color="#38d3d3">}}




{{<matomeQuote body="この記事、すごく楽しんだよ！数少ない、最初から最後まで読んだ長いブログ記事の一つだね。ZeroPathは、もし価格がリーズナブルなら試す価値ありそうだよ。" userName="gavinray" createdAt="2025/10/03 08:36:16" color="#ff33a1">}}




{{<matomeQuote body="curlリポジトリにある、”sarif data”に言及する55件のクローズ済みPRは、Danielが話してるやつっぽいね。DanielはAIが生成したデタラメなセキュリティ問題報告に昔から悩まされてきたから、これは注目すべきだよ。HackerOneではAIスロップを報告した人は即バンするし、Danielは2024年1月にもLLMの問題についてブログに書いてる: https://daniel.haxx.se/blog/2024/01/02/the-i-in-llm-stands-f..." userName="simonw" createdAt="2025/10/02 14:45:44" color="#38d3d3">}}




{{<matomeQuote body="報告されたバグの中には、`size_t`のprintf指定子ミスみたいに、適切な警告フラグを設定してたらコンパイラで検出できたはずのものもあるね。AIが「このプロジェクト、バグを見つけるのに重要なコンパイラの警告フラグが足りないよ」って教えてくれたらすごく便利かも。一部のPRは”sarif”に合致するdependabotのものだけど、「Joshua sarif data」で検索すると、もっと絞り込んだPRが見つかるよ: https://github.com/curl/curl/pulls?q=is%3Apr+Joshua+sarif+da..." userName="tomjakubowski" createdAt="2025/10/02 15:44:31" color="#38d3d3">}}




{{<matomeQuote body="AIモデルはあの頃からかなり進歩したみたいだね。Danielの意見が変わったのも、その証拠だと思うよ。" userName="octocop" createdAt="2025/10/02 14:57:01" color="">}}




{{<matomeQuote body="いや、Danielはもっと新しいAIモデルを使っても、最近までずっとゴミみたいな報告に悩まされてるよ。ほとんどの人は、LLMにソースコードを突っ込んで脆弱性を見つけさせて、それが本当に脆弱性か理解せずに報告してるのが原因。今回の件との違いは、<br>1) セキュリティ監査専用ツールを使ってること、<br>2) 報告前に脆弱性をしっかり理解して検証してること。<br>特に2番が重要で、多くの人ができてないからDanielの時間が無駄になってる。数週間前のHackerOneの報告 https://hackerone.com/reports/3340109 なんて、curlすら呼んでなくて完全なハルシネーションだったんだから。" userName="Twirrim" createdAt="2025/10/02 15:34:36" color="#38d3d3">}}




{{<matomeQuote body="問題はAIモデル自体じゃなくて、どう使うかだよ。GPT-5-Codexで作られたバグ報告を送りつける素人は、やっぱり彼の時間の無駄。今回のケースは、プロがツールを使って、ちゃんと自分で判断してからcurlのメンテナーに結果を送ったから良かったんだ。" userName="simonw" createdAt="2025/10/02 15:04:53" color="#ff5c5c">}}




{{<matomeQuote body="こんなこと言って人をイラつかせちゃうかもしれないけど、AIが出る前からこんな状況だったんだよ。AIによるゴミ報告は、少なくとも意図がはっきりしてるから、他の報告をろくに見なくても、そういう提出者をすぐにバンできるって利点はあるね。" userName="tptacek" createdAt="2025/10/02 15:31:20" color="">}}




{{<matomeQuote body="前に俺が担当したプロジェクトじゃ、毎日何十件もの報告があって、ほとんどがデタラメだったな。詐欺師が少額の金目当てで脅してくるのも多かった。LLMみたいな新しいツールがこれを加速させない方が変だし、それくらいしか期待してないよ。" userName="tptacek" createdAt="2025/10/03 16:44:17" color="">}}




{{<matomeQuote body="多分、ChatGPTを適当に使って脆弱性を見つけようとしてるバカどもと、経験豊富な研究者がもっとカスタマイズされたツールを試してる今回のケースとの違いだよな。" userName="whizzter" createdAt="2025/10/02 15:10:21" color="">}}




{{<matomeQuote body="使ってたAIツールが何だったのか、すぐにピンとこなかったな。他のツールが何も見つけられなかったって言ってたから、この戦略がどうしてそんなに優れてたのか、すごく知りたいわ。" userName="blixt" createdAt="2025/10/02 18:35:21" color="">}}




{{<matomeQuote body="ブログ記事のリンクがあるよ: https://joshua.hu/llm-engineer-review-sast-security-ai-tools... にプロダクトの章がある。Mastodonのリンクは、コードスニペットが間違っててもバグは本当にバグだったって確認ってことかな？" userName="NooneAtAll3" createdAt="2025/10/02 18:41:45" color="#38d3d3">}}




{{<matomeQuote body="この見方、めっちゃ好き！俺も2023/2024年に同じことやって発表したんだ。最近はClaude-codeとClineのエージェントフロー+ツールループにインスパイアされて、file_read、dir_listみたいなツールとか、SASTツールをWordPressプラグインのエコシステムで試してみたんだ（1万～10万のアクティブインストール）。約600個スキャンしたら、重大な問題が約45件、高リスクが約120件も見つかってびっくり！到達不能な脆弱性が20%って感じ。Grok-4で6ドルと4000万トークンくらい使ったんだけど、結果はすごかったよ。Claude-sonnetも試したけど、Anthropicから研究費で50ドルもクレジットあったのに、レート制限がすごかったわ。<br>俺の経験はここで読めるよ:<br>https://codepathfinder.dev/blog/introducing-secureflow-cli-t...<br>古い記事: https://shivasurya.me/security-reviews/sast/2024/06/27/autom..." userName="shivasurya" createdAt="2025/10/03 13:39:15" color="#45d325">}}




{{<matomeQuote body="LLMによるコーディング支援はこう使うと役立つんだな。どのツールセットが具体的に使われたのか知りたいわ。他のコードベースでこの種の支援をどう再現できるんだろう？" userName="tempodox" createdAt="2025/10/02 15:31:03" color="">}}




{{<matomeQuote body="詳細はJoshuaの投稿を見てね: https://joshua.hu/llm-engineer-review-sast-security-ai-tools...<br>ツールにはZeroPath、Corgea、Almanaxが含まれてたよ。" userName="simonw" createdAt="2025/10/02 15:37:01" color="#785bff">}}




{{<matomeQuote body="”AIネイティブ”なSASTが、内部でどうやってAIを使ってるのか知りたいんだけど、企業秘密だろうな。" userName="ambicapter" createdAt="2025/10/06 16:10:29" color="">}}




{{<matomeQuote body="”nread == 0を1バイト読んだとみなすのはおかしい”って読んだ時、バグに見えても実は重要なインフラがその動作に依存してるケースが山ほどあるってすぐに思ったよ。AIはそれを教えないと分からないし、問題は、そういうことを文書化しないからこそ仕事がある人がたくさんいるってことだ。" userName="lowbloodsugar" createdAt="2025/10/02 17:05:59" color="#ff33a1">}}




{{<matomeQuote body="数分以上現状を考えたことある人なら、AIは有能な開発者やセキュリティ研究者にはめちゃくちゃ役立つけど、何にもわかってない人には全く役に立たないってわかるはず。<br>でも、後者のグループが無能だからといってAIが役に立たないわけじゃないんだ。幼児が戦闘機を操縦できないからって戦闘機が役に立たないわけじゃないのと同じだね。" userName="ronsor" createdAt="2025/10/06 15:49:39" color="#ff5733">}}




{{<matomeQuote body="この比喩、戦闘機を一般車両にしたらもっとしっくりくるかもね。だってほとんどの人が運転してるし、下手な運転はみんなに影響するから。<br>2世代後の医者たちがどうなってるか想像してみてよ。" userName="add-sub-mul-div" createdAt="2025/10/06 15:59:29" color="#ff5c5c">}}




{{<matomeQuote body="まさにその通りだよ。数週間前にもcurl絡みで逆の側面を示す完璧なアプローチがあったね。<br>https://daniel.haxx.se/blog/2025/07/14/death-by-a-thousand-s..." userName="darkwater" createdAt="2025/10/06 16:13:56" color="">}}




{{<matomeQuote body="＞有能な開発者にはめちゃくちゃ役立つ<br>＞何にもわかってない人には全く役に立たない<br>＞戦闘機が役に立たないわけじゃないのと同じ<br>今のAIって、みんなが坂道を走ってた時に自転車が出てきたみたいな感じだよ。最初はスキルの壁があるけど、毎週どんどん簡単になってる。<br>マーケティングは「ペダルをこげば進む！」って、まるで高速道路の車みたいに言うけど、実際は自転車だから、ずっとペダルをこぎ続けなきゃいけないんだ。<br>このAIが本領を発揮するのは、別の分野で熟練してる人たちへの影響だね。<br>走ることばかり考えてたなら、腱を鍛えて舗装路に対応させるのが目標で、2時間のマラソンペースなんてほぼ不可能だったりする。<br>でも自転車だと、ボート競技の選手なら2時間以内でマラソン距離を「楽々」走れるようになる。でも、ずっと足で走る練習をしてた人にとってはやっぱり無理なんだよね。<br>自転車は、バネ下重量やエネルギー回収の問題をVO2 maxの問題や、新しい空力学の問題に変えるからさ。<br>それに、岩だらけの庭を歩かなきゃいけない時は、自転車も一緒に持ち運ばなきゃいけないしね。コストがないわけじゃない。<br>このAIって頭の自転車だけど、たくさんの人がブレーキなしで下り坂ばっかり行ってるみたいだね。" userName="gopalv" createdAt="2025/10/06 16:02:53" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="確かにAIは問題を別の場所に移動させるね。でも、新しい問題の方が長期的には簡単に解決できるかは疑問だな。<br>俺は30年以上の経験があるまともな開発者だ。最近API設計プロジェクトで、OpenAPI仕様に基づいてモック実装を生成しなきゃいけなかった。まさにCopilotが得意そうなやつだよね。<br>でも、どんなにプロンプトを工夫しても、完全に機能するSpring-bootプロジェクトで、モックAPIとURLで仕様を同時に表示するものは作れなかったよ。なのに、数週間前にはもっとシンプルなAPIのモックだけならすごくうまくやってくれたんだ。なんでだろうね。" userName="belZaah" createdAt="2025/10/06 16:16:11" color="#45d325">}}




{{<matomeQuote body="的確な比喩だね。文句なし。" userName="rkomorn" createdAt="2025/10/06 16:05:18" color="">}}




{{<matomeQuote body="でも、世界中の子供たちに戦闘機を売って無限の金儲けができるって言ってでかくなった会社にとっては、悪いニュースかもしれないね。" userName="Terr_" createdAt="2025/10/06 15:54:46" color="">}}




{{<matomeQuote body="「有能な人の手にある良いツールは、強力な組み合わせだ」とDaniel Stenbergは言ってるね。" userName="ranger_danger" createdAt="2025/10/06 15:56:30" color="">}}




{{<matomeQuote body="Daniel Stenbergは過去にAIが生成したパッチについて発言してたし、彼がここで軌道修正してるのが興味深いね。<br>https://news.ycombinator.com/item?id=38845878<br>https://news.ycombinator.com/item?id=43907376<br>https://media.ccc.de/v/froscon2025-3407-ai_slop_attacks_on_t..." userName="0points" createdAt="2025/10/06 16:17:34" color="#ff5733">}}




{{<matomeQuote body="彼は理解できないガラクタを提出する人たちに反対してたんであって、AI全般に反対してたわけじゃないんだよ。" userName="ronsor" createdAt="2025/10/06 18:13:11" color="">}}




{{<matomeQuote body="「AIは全く役に立たない」って意見に反論するよ。ボードゲームの盤面をSVGで作りたくて、ChatGPTに頼んだら10分でSVGとJavaScriptのスクリプトを書いてくれたんだ。自分でやったら何時間もかかっただろうけど、AIのおかげで高品質なものがすぐできたよ。初心者でもAIから役立つものを得られるんだね。" userName="the_jeremy" createdAt="2025/10/06 15:58:24" color="#ff5733">}}




{{<matomeQuote body="ChatGPTが10分でできたって言ってるけど、それって君が使った専門知識を過小評価してるんじゃない？AIは「おもちゃの例」にはすごく強いけど、実際の例だと制約が多いからね。AIから役立つものを得るには、「何が役立つか」を知ってることが意外と大事なんだよ。" userName="arscan" createdAt="2025/10/06 16:08:14" color="#ff5c5c">}}




{{<matomeQuote body="AIを使ったことで、本来なら自分で学ぶはずだったことや、そこから得られる批判的思考、知識の向上ができなかったんじゃないかな。" userName="casenmgreen" createdAt="2025/10/06 16:05:29" color="">}}




{{<matomeQuote body="君、ある程度経験者だよね。SVGが欲しいとか、JavaScriptを組み込めるって知ってたんだから、それは結構良い設計の出発点だよ。" userName="thedougd" createdAt="2025/10/06 17:26:23" color="">}}




{{<matomeQuote body="君の例だと「全く無知」ではないのは明らかだよ。PNGとSVGの違いを知ってたり、DOM-based JSが何かも知ってるし、きっとソフトウェアやITの経験があるんだろうね。自分の知らないことも知ってるって、すごく賢いよ。これって、多くの素人や非技術者のLLMの使い方とは全然違うんだよね。" userName="snovymgodym" createdAt="2025/10/06 16:04:05" color="#ff5c5c">}}




{{<matomeQuote body="AIが「全く役に立たない」わけじゃないってのは同意するけど、その有用性はすごく限定的だよ。AIが全部コードを書くと、すぐにメンテナンスできなくなることが多いから、手動でレビューしたり修正したりする必要があるんだよね。" userName="stavros" createdAt="2025/10/06 16:02:40" color="">}}




{{<matomeQuote body="Valgrindで見つかったものは自分で再現できるけど、「AI支援ツール」で見つかったバグ報告はプライベートだよね。https://joshua.hu/llm-engineer-review-sast-security-ai-tools を見ると、ZeroPathが好きみたいだけど、その定期購読は200ドルもするし、無料版はすごく限定的でログインも必要。オープンソースでは、こんなツールで見つかるような低級なバグは、誰かがサブスクリプションを払えればすぐに見つかるだろうし、oss-fuzzみたいに、もう見つけ尽くされてるんじゃないかな。" userName="bgwalter" createdAt="2025/10/02 15:22:35" color="#785bff">}}




{{<matomeQuote body="バグ報告がプライベートだったのは、いくつかcurlのセキュリティに関わるものだったからじゃないかな。curlのリポジトリで「sarif」を検索すると、修正につながったPRが見られるよ。https://github.com/curl/curl/pulls?q=is%3Apr+sarif+is%3Aclos..." userName="simonw" createdAt="2025/10/02 15:38:49" color="#38d3d3">}}




{{<matomeQuote body="AIは手がかりをくれるだけ。それを才能あるプログラマーが一つずつ確認していく必要があるんだ。まるで警察の顔認識システムみたいに、警察を「置き換える」わけじゃないんだよ。" userName="yapyap" createdAt="2025/10/03 09:47:35" color="#785bff">}}




{{<matomeQuote body="「バグ」は潜在空間に存在すると思う？僕はそうは思わないな。バグは学習された重みの中に存在する変種としてあるだけだよ。バグを検証するためのRL環境がない限り、決して「うまく」機能することはないだろうね。" userName="pwnfunction" createdAt="2025/10/06 16:18:55" color="">}}




{{<matomeQuote body="AIツールが悪用されるのを心配してる。OSSへの強制開示とか、サプライチェーン攻撃に使われる可能性もあるんじゃないかなって。でも、長期的にはソフトウェアをより安全にするだろうし、結局はいたちごっこなんだろうね。" userName="riedel" createdAt="2025/10/03 10:28:30" color="#45d325">}}




{{<matomeQuote body="AIツールもいいけど、そもそもバグが生まれないようにするにはどうすればいいのかが気になるな。Cみたいな言語だと、この手のバグは特に発生しやすいよね。" userName="noelwelsh" createdAt="2025/10/02 17:52:15" color="">}}




{{<matomeQuote body="リンク先のブログ記事 https://joshua.hu/llm-engineer-review-sast-security-ai-tools... によると、使われてるツールのほとんどはCIで動かせて、PRにコメントできるみたいだよ。" userName="viraptor" createdAt="2025/10/02 20:32:23" color="">}}




{{<matomeQuote body="これ、Rustに移行していれば、どれだけ多くのバグが避けられたんだろうね？" userName="swaits" createdAt="2025/10/03 09:34:55" color="">}}




{{<matomeQuote body="“もう22個もバグを直したのに、その倍以上の問題が残ってる”ってあるけど、それって22個より全然多い数のバグがあったってことじゃない？ほとんどが有効な問題だったとしてさ。" userName="silisili" createdAt="2025/10/02 16:00:53" color="">}}




{{<matomeQuote body="昔Claudeが俺のコードのバグを見つけてくれたんだけど、データの構造をちゃんと説明しないと見つけられなかったんだ。<br>説明したらすぐにわかったけどね。" userName="renox" createdAt="2025/10/02 19:24:53" color="">}}




{{<matomeQuote body="Anthropic、OpenAI、Googleみたいな大手企業が、トッププロジェクトの監査や監視で競争したら面白そうだよね。" userName="tiahura" createdAt="2025/10/02 18:46:22" color="">}}




{{<matomeQuote body="俺はPwnoってMLセキュリティR&DスタートアップでLLMとメモリセキュリティの研究をしてるんだ。LLMの幻覚のせいで、低レベルセキュリティでは脆弱性発見より検証・デバッグが重要だと分かった。WebセキュリティはXBOWみたいにcurlで検証しやすいけど、メモリセキュリティはプログラム状態の確認が必要で難しい。GGMLとの連携でOOBsは見つけたけど、幻覚と検証コストでプロジェクトを一時停止中。複雑な環境では、環境とのインタラクションから学ぶことがもっと大事になると思うね。" userName="retr0reg" createdAt="2025/10/02 16:19:53" color="#785bff">}}




{{<matomeQuote body="経験談、ありがとう！Suttonの最近のインタビュー（https://www.dwarkesh.com/p/richard-sutton）とも話が合うね。本当の知能って、複雑で変化し続ける環境からのフィードバックで学ぶことだって。LLMは、環境について語られたスナップショットで学習して、それだけで動いてるんだから。" userName="bwfan123" createdAt="2025/10/02 17:47:37" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
