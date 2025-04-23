+++
date = '2025-04-16T00:00:00'
months = '2025/04'
draft = false
title = '速報！OpenAI、o3とo4-miniを発表！その実力は？期待と不安の声'
tags = ["OpenAI", "AI", "言語モデル", "性能比較", "技術革新"]
featureimage = 'thumbnails/orange2.jpg'
+++

> 速報！OpenAI、o3とo4-miniを発表！その実力は？期待と不安の声

引用元：[https://news.ycombinator.com/item?id=43707719](https://news.ycombinator.com/item?id=43707719)

{{<matomeQuote body="なんか期待外れだったなー。結構ニッチな質問してみたんだよね。Final Fantasy VIIのリバースエンジニアリングについて。知識とウェブ検索があれば数分で答えられるはずなのに、モデルはmoddingフォーラムとかをうろうろして、良い情報も見つけてきたんだけど、その後ハルシネーション起こして、でたらめな情報を使い始めたんだよね。最終的な答えは間違ってて、手順も全部嘘っぱち。しかも、答えがないって気付いてて、399ってのはただの推測だって分かってるっぽいのに、自信満々に正しい答えだって言ってるんだよ。つまり、知らないってことを隠して、勝手に推測した値を教えてきたってわけ。もちろんニッチなトピックだってことは分かってるけど、良い答えを見つけるか、出来ないって言ってほしかったなー。嘘つかないでほしいわ。Edit: 他にも同じような人がいたみたい。<br>https://x.com/transluceai/status/1912552046269771985?s=46" userName="M4v3R" createdAt="2025-04-16T20:50:41" color="">}}

{{<matomeQuote body="Gemini Pro 2.5と比較してみると：<br>https://g.co/gemini/share/c8fb1c9795e4<br>注目すべきは、CoTの最後のステップ。<br>＞結論を出す：標準的なウェブ検索では、明確なリストや数がすぐには入手できないため、最善のアプローチは、ゲームファイルを直接分析せずに、すぐに利用できるオンラインソースから正確な数を特定するのは難しいと述べること…複数のソースで確実に発見されたものはないため、特定の数値を避けることです。”<br>って感じで、回答もそれに沿ってる。" userName="int_19h" createdAt="2025-04-17T00:23:37" color="#38d3d3">}}

{{<matomeQuote body="この答え良いね。欲しい情報を得るための正しい方法（char.lgpデータファイルを抽出する）にも言及してるし、諦めてはいるけど、正しい方向に導いてくれる。o3/o4は適当なこと言ってくるだけ。" userName="M4v3R" createdAt="2025-04-17T05:23:29" color="#ff5733">}}

{{<matomeQuote body="ちょっとしたコツがあるんだよね。<br>良いアーキテクチャ設計は役に立つ。既存のコードベースのどこにパターンマッチングできるものがあるかを伝えるのも効果的。<br>こんな感じのタスクになることが多いかな：<br>・FooをFooBarとの関係で実装する。<br>・FooはX、Y、Zの機能を持つ必要がある。<br>・BigFidgetにFidgetの既存のパターンがある。それを参考にして実装する。<br>・A、B、Cを考慮すること。Widgetに似たものがないか確認する。<br>驚くほどうまくいくよ。" userName="SkyPuncher" createdAt="2025-04-17T02:32:00" color="#ff5733">}}

{{<matomeQuote body="＞良いアーキテクチャ設計は役に立つ。<br>これマジで重要な答えだよね。<br>LLMはコンテキストに基づいて補間・外挿するのが得意。補間の方がエラーが少ない。補間の問題は、正確な点から始める必要があるってこと。そうすれば、補間が期待通りで比較的正確な推定につながる。<br>開発者がソフトウェアアーキテクチャ、適切な命名規則、依存関係の管理、ベストプラクティスとか、コーディングのより高いレベルの側面に無頓着な結果が今見えてる状況だと思うわ。要件定義とかもそう。<br>既存のコードベースに潜り込んで、あちこちパッチを当てることしか経験がない人もいるし。そういう人は、自分の洞察力と認識の欠如から、ソフトウェアアーキテクチャを台無しにするPRを出すことが多い。その結果、コードベース全体が手に負えない状態になっちゃう。<br>だから、そういう開発者はLLMを開いて、コードを生成するように指示する。自分の経験に基づいてプロンプトを作る。その経験が日々の仕事に反映される。LLMはもちろんプロンプトからコードを生成するけど、結果はイマイチ。ゴミを入れたらゴミが出てくる。<br>LLMが悪いんだ！良い結果を出してるvibe coderは全部詐欺に違いない！<br>こういう開発者がLLMで良い結果を出せないのをモデルのせいにするのは、能力が低い証拠。他の人が最初からプロジェクト全体を作成できるモデルが、最小限の変更もできないんだもん。おかしいよね？モデルがもっと良ければ…何が？他の人がすでに達成していることを達成するために、あなたの入力をナビゲートすること？それは間違いなくモデルのせいだよね？<br>下手な職人はいつも道具のせいにする。" userName="motorest" createdAt="2025-04-17T06:16:15" color="#ff5733">}}

{{<matomeQuote body="確かに、プロンプトを工夫して、閉じたコンテキストに焦点を当てれば、もっと進めることができる。でも、LLMはそういう売り方をされてないよね？高レベルのプロンプトを指定して使おうとする人を責めるのは、まさにそのように宣伝されてきたんじゃないの？問題は下手な職人じゃなくて、ツールが宣伝されてるように機能してないってこと。" userName="hansmayer" createdAt="2025-04-17T10:40:20" color="">}}

{{<matomeQuote body="＞でも、LLMはそういう売り方をされてないよね？<br>約束なんて誰も気にしない。重要なのは今手元にあるものだけ。<br>今は、適切なプロンプトをいくつか用意すれば、コードを一切書かずに学際的なアプリを作成できるツールがあるんだよ。" userName="motorest" createdAt="2025-04-17T12:46:09" color="">}}

{{<matomeQuote body="いやいや、気にする人もいるよ。ミニバンを買ったのに3ドアの車が来たらどう思う？あと、コードを一切書かずにアプリなんて作れないよ。それがコンピューターの仕組みでしょ。" userName="hansmayer" createdAt="2025-04-21T08:44:57" color="">}}

{{<matomeQuote body="まさに自分がやってることの素晴らしいまとめだね。すごく効果的だと思う。AIコーディングは映画監督みたいなもんだと思ってる。頭の中で「良いもの」のイメージを持ってて、舞台係や俳優がそのビジョンを実現できるように、十分な詳細を伝えてる感じ。モデルはコーチングすれば必ずそこにたどり着ける。問題は、自分でやるよりも手間がかかるかどうかだったりする。<br>最近は、AIが十分に優れてきて、自分で「やる」必要がほとんどなくなってきたと感じてる。" userName="extr" createdAt="2025-04-17T05:39:53" color="#45d325">}}

{{<matomeQuote body="Claude 3.7にTypescript/Pythonの質問すると、かなりいい感じのコードを何百行も生成してくれるのはマジですごいよね。最初は完璧じゃないことが多いけど、内容は筋が通ってるし。最近DafnyとLeanについて質問してみてるんだけど、存在しない構文とか機能を平気で作り出すのがイライラする。しかもTypescriptについて話すときと同じ自信満々な感じで言うんだもん。ドキュメントとか本を大量に突っ込めばマシになるかもだけど、モデルの「直感」のなさを補えるかどうかはわかんないな。" userName="hatefulmoron" createdAt="2025-04-17T00:47:41" color="#38d3d3">}}

{{<matomeQuote body="そんなにマイナーな言語じゃなくても、HaskellとかOCamlみたいな、もっと普通の関数型言語でも平気でデタラメ言うのを見たことあるよ。" userName="mhitza" createdAt="2025-04-17T02:16:35" color="">}}

{{<matomeQuote body="RAGを使うのがおすすめだよ。HaskellとかOCamlのドキュメントを知識ベースにして、RAGのためにインデックス化するんだ。そうすれば、もっと意味が通るようになるはず！" userName="greenavocado" createdAt="2025-04-17T02:51:15" color="">}}

{{<matomeQuote body="それってどうやるの？ClaudeもChatGPTも、ウェブクライアントは対応してないように見えるんだけど。みんなが使ってるサードパーティ製のツールとかある？" userName="rashkov" createdAt="2025-04-17T04:42:03" color="">}}

{{<matomeQuote body="ClaudeとChatGPTの組み込みの「projects」機能を試してみて。<br>https://support.anthropic.com/en/articles/9517075-what-are-p...<br>例えば、FirefoxのReader Viewから出力結果をプロジェクトにコピーすると、かなり良い結果が得られるよ。" userName="hellsten" createdAt="2025-04-18T17:39:33" color="">}}

{{<matomeQuote body="無理でしょ。openwebuiをdeepseek v3 0324とAPI経由で使って、embeddingsとテキスト生成モデルのプロバイダーを例えばdeepinfraにすればできるよ。" userName="greenavocado" createdAt="2025-04-17T11:38:12" color="">}}

{{<matomeQuote body="LLMは、hello worldレベルのことしかできないから、react nativeには全然向いてないよ。公式ドキュメント見たら、2年以上前の古い機能とか平気で出してくるし、デタラメばっかりだった。" userName="Foobar8568" createdAt="2025-04-17T06:06:00" color="">}}

{{<matomeQuote body="VSCodeでco-pilotを試用してるけど、良い面も悪い面もあるね。すごいのがポンと出てくることもあるけど、「やったー！」って思って<tab><tab><tab>って押したら、全然必要なかったり、デフォルト値が設定されてるものをわざわざ呼び出したりしてる。" userName="mikepurvis" createdAt="2025-04-17T03:35:14" color="">}}

{{<matomeQuote body="最近、同僚に「vibe codingはクソだ」って言っちゃったんだよね。実はGPT、Claude、llama (飛行機用)、Cline、Cursor、Windsurfとか、使えるようになってからずっとコーディングに使ってるんだけど（最近はGeminiも）。Cline + Sonnet 3.7は小規模なプロジェクトで良い結果を出してくれてるし、AWS Bedrockを自由に使えるのは本当にありがたい（個人開発者向けの制限がない）。llama + Continueでも使えるけど、言語機能とかAPIで平気でハルシネーション起こすけどね。<br>＞100% pure vibe codingは、やっぱりクソだと思う。プロンプトだけで書かれたプロジェクトから出てくる微妙な醜さは、本当にひどい。アーキテクチャの境界線やプロトコルをきちんと設計するには、先見の明と注意が必要で、生成システムにはまだない。だから、そっちに時間をかけて、ロボットにボイラープレートを埋めさせればいい。できることの限界はどんどん変わっていくけど、使いこなせば強力な武器になるよ。<br>色変換とか、コンピュータビジョン、CNNの学習とか、数百個の小さな問題でいろんなアシスタントを使ってる。解決方法を知ってても、2、3個のモデルで試して、どういう結果になるか見てる。教えてくれることもあるし、めちゃくちゃになって別のことを教えてくれることもある。" userName="chaboud" createdAt="2025-04-17T03:46:25" color="#ff5c5c">}}

{{<matomeQuote body="＞100% pure vibe codingは、やっぱりクソだと思う。<br>いや、そうは思わないな。見せびらかしもあるし、この動きに乗っかって金儲けしようとする人もいるのは確かだけど。でも、Copilot+VS codeとGPT4とo1-miniを組み合わせて、完全に動くウェブアプリをゼロから作ったことがあるんだよ。バックエンドもフロントエンドも、基本的な認証も全部。専門家じゃないけど、午後の時間でできたんだから。文句言うのは簡単だけど、実際にアプリは存在してるんだ。" userName="motorest" createdAt="2025-04-17T06:27:19" color="#ff5733">}}

{{<matomeQuote body="みんなLLMが登場する前から、Ruby on Rails使って半日でフロントとバックエンドのWebアプリ作ってたし、コードの質も今よりずっと良かったんだってばよ！<br>ノリでコーディングして、動くしょーもないもん作れるのは良いけど、それが大きくなるとマジで大変になるぞ。コードがひどすぎて。" userName="saberience" createdAt="2025-04-17T10:06:02" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="＞みんなLLMが登場する前から、Ruby on Rails使って半日でフロントとバックエンドのWebアプリ作ってたし、コードの質も今よりずっと良かったんだってばよ！“<br>一部の人がやってただけじゃん。<br>LLMがあれば誰でもできるし、もっと色々できる。<br>状況を正しく捉えるのが大事。<br>午後にちょろっと作っただけだし、一行もコード書かないことに挑戦したんだ。<br>＞ノリでコーディングして、動くしょーもないもん作れるのは良いけど(...)“<br>勝手に「しょーもない」って決めつけてるだけじゃん。それって偏見だよ。<br>半日で動くMVP作れる人は10xデベロッパーって褒められるのにね。同じアウトプットでも、誰が作ったかで評価が変わるってこと。" userName="motorest" createdAt="2025-04-17T12:44:18" color="#785bff">}}

{{<matomeQuote body="ノリでコーディングしてる人って、今までもネットで見つけたコードを寄せ集めて、何とか動かしてた人たちでしょ。" userName="ecocentrik" createdAt="2025-04-17T15:23:21" color="">}}

{{<matomeQuote body="別に最先端のプログラミングしなくても、自分だけのものって作れると思うよ。Canvaのプロダクトを見てみなよ。<br>https://youtu.be/LupwvXsOQqs?t=2366" userName="killerdhmo" createdAt="2025-04-17T02:27:59" color="">}}

{{<matomeQuote body="＞ニッチなプログラミングの質問でAI使ってみたけど、マジでガッカリだった。<br>そりゃそうでしょ。努力もせずに期待通りの結果が得られるわけないじゃん。<br>俺もダンクシュートできないし、3ptシュートも50%以上決められないけど、それはバスケをちゃんとやったことないから。<br>＞この「ノリでコーディング」ってムーブメントがマジで理解できない。みんなtodoアプリ作ってるの？<br>NBAも理解できない。みんな練習でダンクとか車飛び越えたり、3ptシュートをほぼ完璧に決めてるけど、俺は椅子から立ち上がるのもやっと。<br>バスケが悪いんだ。" userName="motorest" createdAt="2025-04-17T06:03:27" color="">}}

{{<matomeQuote body="GPT-4/o1以降、ベンチマークの改善は過学習の結果だと思う。だって、優秀なモデルはネット上の高品質な学習データをほとんど使い切っちゃってるし、アーキテクチャも劇的に変わってないし、GPUは限界まで使ってるし、新しい高品質なデータも足りてない。<br>これからは、AIモデル開発会社が、不快なこととか炎上しそうなことを気にするんじゃなくて、回答の自信度を伝えるように改善してほしい。<br>つまり、たまには「知らない」って言うべき。<br>AIモデルが停滞したら、正確さが一番重要視されるようになると思う。B2B向けの「defense grade」モデルとかが出てくるんじゃない？" userName="lend000" createdAt="2025-04-17T04:39:07" color="#785bff">}}

{{<matomeQuote body="他のモデルにも同じ質問してみた？<br>もっと良い結果を出したモデルがあったら教えてほしい。<br>自分でも試したいけど、正解がわからないから、みんなが共通して答えたことを信じちゃうかも。" userName="hirvi74" createdAt="2025-04-17T01:23:13" color="">}}

{{<matomeQuote body="AIはニッチな話題になるとマジで幻覚を見るよね。<br>「知らない」って言えずに、適当なことをでっち上げるのが面白い。" userName="shultays" createdAt="2025-04-17T08:08:57" color="#ff5c5c">}}

{{<matomeQuote body="LLMのおかげで、誘導尋問にめっちゃ敏感になったわ。質問の仕方をちょっと変えるだけで、LLMがこっちの期待を読もうとして、答えがガラッと変わるんだもん。" userName="felipeerias" createdAt="2025-04-17T08:18:28" color="#ff5733">}}

{{<matomeQuote body="ちなみに、ChatGPTのDeep Researchモードで同じ質問したら、ちゃんと正解が出てきたよ。https://chatgpt.com/share/68009a09-2778-8004-af40-4a8e7e812b...　たぶん、普通のモードじゃ難しすぎるんだな。でも、答えられないって言わずに嘘ついたのはガッカリ。" userName="M4v3R" createdAt="2025-04-17T06:06:20" color="">}}

{{<matomeQuote body="見つけた答えが正しいかなんて、どうやって判断するんだろ？誰かがすでに間違った答えを繰り返してるだけかもしれないじゃん。それじゃ、ハルシネーションと大差ないし、自分で確かめられないと意味ないよね。" userName="shmerl" createdAt="2025-04-17T00:37:38" color="">}}

{{<matomeQuote body="答えと、その答えにたどり着いた説明と、ソースのリストがあればOKかな。実際、ChatGPTはそうしてくれるんだけど、問題は答えも説明もデタラメで、ソースも確認したら全部ウソってこと。" userName="M4v3R" createdAt="2025-04-17T05:20:19" color="#45d325">}}

{{<matomeQuote body="正解は何？二回目はちゃんと合ってたのか気になる。https://chatgpt.com/share/68009f36-a068-800e-987e-e6aaf190ec..." userName="tern" createdAt="2025-04-17T06:27:28" color="">}}

{{<matomeQuote body="Gemini 2.5 Proと比べるとイマイチだなー。でも、一ヶ月前なら感動してたかも。" userName="Davidzheng" createdAt="2025-04-17T02:13:25" color="">}}

{{<matomeQuote body="Linuxのdracutについて簡単な質問した時も同じことになったわ。ChatGPTの言う通りに変更してたら、起動しなくなってた。" userName="heavyset_go" createdAt="2025-04-17T20:45:04" color="#45d325">}}

{{<matomeQuote body="＞嘘をつかないでほしい。<br>わざと嘘をついたって言いたいの？<br>＞ちゃんと知識とウェブ検索があれば、数分で答えられるはず。<br>ダニング＝クルーガー効果を思い出した。AIモデルが最初のピークにいて、あなたは後者って感じ。" userName="yMEyUyNE1" createdAt="2025-04-17T07:45:27" color="">}}

{{<matomeQuote body="＞わざと嘘をついたって言いたいの？<br>ほぼそう。｢わざと｣って言うと、何か意図とか意識があるみたいだけど、そうは思わない。たぶん、過学習とか、報酬ハッキングとか、トレーニングの問題だと思うけど、結局、モデルは答えを知らないって分かってて、わざと誤解させるような答えを出すんだよね。" userName="M4v3R" createdAt="2025-04-17T09:12:20" color="#ff5733">}}

{{<matomeQuote body="へー、面白そう。o3に頼んで、NixOSに最新のWebstormをインストールするためのflake書いてもらったんだ。パッケージリポジトリにあるやつ、何か月も古いからさ。そしたらNixOSのVM立ち上げて、Webstormのパッケージをダウンロードして、Flake書いて、NixOSに必要なSHAハッシュ計算して、テストスイートまで書いたみたい。GUIテストまでやったっぽいけど、これはマジなのかな？　でも、インストール手順は一発でできたし、ダウンロードなしにハッシュ計算できたとは思えないから、なんかすごい機能があるのかも。マジすごい。" userName="erikw" createdAt="2025-04-16T19:06:15" color="#38d3d3">}}

{{<matomeQuote body="マジ？　それ本当？　hallucinationかもって言ってるけど、ほぼ信じてるじゃん？　o3にVM立ち上げる能力ないと思うんだけど。<br>全角の＞https://xcancel.com/TransluceAI/status/1912552046269771985<br>全角の＞https://news.ycombinator.com/item?id=43713502<br>この辺でhallucinationについて議論されてるよ。<br>ハッシュは、パッケージのリストにハッシュが載ってて、それを使っただけじゃない？" userName="danpalmer" createdAt="2025-04-17T07:05:14" color="">}}

{{<matomeQuote body="Nixos flake書けるなら、平均的なプログラマーより全然賢いじゃん。俺より絶対賢いわ。flake一発で書けるとか無理ゲー。いつも30回くらいやり直して、このクソ言語設計したやつ誰だよって怒ってクールダウンするのに時間かかるもん。マジすごい。" userName="peterldowns" createdAt="2025-04-16T19:37:33" color="#ff33a1">}}

{{<matomeQuote body="Flakeの主要なコントリビューターだったんだけど、何がそんなにイライラする？" userName="ZeroTalent" createdAt="2025-04-16T20:14:56" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Flakeめっちゃ使うけど、FlakeもNix言語もマジ意味不明。duckduckgoとかgoogleで“what is nix flakes”とか“nix flake schema”って検索して、ちゃんと読んでみてよ。マジ複雑で意味不明な答えばっかりだし、なんか色々情報源あるし。で、普通のプロジェクトのFlake見てみて。flake-compatとかflake-utilみたいなのほぼ必須だし、devshellとかpackageの定義方法も色々あるし、“apps”って概念もあるし。全部マジ複雑でヤバい！<br>お疲れ様です、あなたの作ったものにめっちゃイライラしながら使ってます（github見て！マジで使ってるから！）" userName="peterldowns" createdAt="2025-04-16T20:26:54" color="#45d325">}}

{{<matomeQuote body="許すわ。俺もごめん。FlakeはFlakeなしのNixより全然マシだし、時間めっちゃ節約できてる。" userName="peterldowns" createdAt="2025-04-16T20:59:04" color="">}}

{{<matomeQuote body="気にしないで。コメント書いたとき朝のコーヒー飲んでなかったから、感情的になりすぎたかも。Flakesが簡潔であることを優先したかったんだ。" userName="ZeroTalent" createdAt="2025-04-21T10:28:48" color="">}}

{{<matomeQuote body="マジか… 典型的なHNだね。<br>まあ、残念ながら関数型プログラミングのパラダイムを全部理解してても、nixは複雑だよね。それに、ファイル一つでシステム全体を立ち上げられるなんてことは滅多にないし。" userName="wg0" createdAt="2025-04-17T06:58:07" color="">}}

{{<matomeQuote body="ちなみに、みんなが言ってるのは言語がダメってことで、特にflakesがダメってわけじゃないよ。<br>個人的には、Haskell（とかその仲間）を知ってればnixは超簡単だと思う。知らないと、マジで直感的じゃない。" userName="yjftsjthsd-h" createdAt="2025-04-16T20:18:54" color="#785bff">}}

{{<matomeQuote body="＞へー… o3に文章書くの手伝ってもらったんだ…<br>何使ったの？" userName="ai-christianson" createdAt="2025-04-16T19:42:55" color="">}}

{{<matomeQuote body="マジすごい！でも、一番重要なベンチマークであるSWE-bench（実世界のコーディングタスクで検証済み）では、Claude 3.7がまだチャンピオンなんだよね。[1]<br>Claudeモデルがコーディングで最強クラスを維持してるのが信じられないくらいすごい。<br>[1]ただし、約1%の差で、Claudeの“カスタムスキャフォールド”拡張（実際には誰も使わないと思うけど）込みだけどね。新しいOpenAIモデルは、実質的に今一番いいのかも（または同様の拡張を使えばClaudeを上回る可能性もあるかも）。" userName="georgewsinger" createdAt="2025-04-16T17:20:19" color="#ff5c5c">}}

{{<matomeQuote body="Gemini 2.5 Proは、ヘビーユーザーの間ではもう3.7 Sonnetより優れてるって広く思われてるけど、SWE-benchのスコアがないんだよね。一つのベンチマークだけ見ても何もわからないってことだね。Sonnetに対する主な利点は、大量のコンテキストを扱うのが得意なことで、コーディングタスクではものすごく役に立つってこと。<br>Sonnetも6ヶ月間も王座を維持してたんだから、今のLLMの進化のペースからすると10年くらいに相当するくらいすごいモデルだよ。" userName="jjani" createdAt="2025-04-16T17:27:36" color="#45d325">}}

{{<matomeQuote body="Sonnetに対するGemini 2.5の主な利点は、プロジェクトを最初から書き直すみたいな、関係ない変更を大量にしようとしないこと。" userName="unsupp0rted" createdAt="2025-04-16T17:37:23" color="#45d325">}}

{{<matomeQuote body="Gemini 2.5はマジで素晴らしいと思うし、全体的にClaudeより優れてると思う。Claudeも大好きだったんだけど。" userName="itsmevictor" createdAt="2025-04-16T17:45:12" color="#ff5733">}}

{{<matomeQuote body="RA.Aidではうまく動くよ。全体的なコストと能力を考えると、デフォルトのモデルとしておすすめできるくらい。" userName="ai-christianson" createdAt="2025-04-16T19:45:33" color="#785bff">}}

{{<matomeQuote body="ちゃんと動くよ。何か問題あるの？" userName="plantain" createdAt="2025-04-16T22:20:49" color="#ff5733">}}

{{<matomeQuote body="OPじゃないけど、edit modeでまだサポートされてなくて、agent modeだけってことじゃないかな。今のところそんなに困ってないけど。GeminiはdbtのSQLエラーみたいなマイナーな問題に弱い気がする。" userName="michaelbarton" createdAt="2025-04-16T23:38:27" color="">}}

{{<matomeQuote body="Cline/Roo Codeはちゃんと動くよ。" userName="pdntspa" createdAt="2025-04-17T03:35:19" color="">}}

{{<matomeQuote body="最初はイライラしたけど、だんだんこの「おまけ」の作業も面白いなって思うようになった。Claudeがどんな風に改善できるか、どんな機能を追加できるかっていうアイデアを見るのが楽しいんだよね。特にUIに関しては、Claudeは結構クールなアイデアを持ってる。Copilot経由でClaudeを「無料」で使う時は、好きにさせて、やりすぎたら前のコミットに戻せばいいし。ちゃんと指示したい時は、プロンプトでお願いすればOK。<br>//Note to Claude：リファクタリングしないでね。見た目は悪いけど、わざとなんだ。<br>AIエージェントの同僚にコメントを残す日が来るとは思わなかったよ。" userName="bitbuilder" createdAt="2025-04-16T18:34:10" color="#ff5c5c">}}

{{<matomeQuote body="＞Copilot経由でClaudeを「無料」で使うなら<br>マイクロソフトがこれを制限してるのが残念。料金も変わったし。<br>モデルの性能も落とされたか、context windowが狭くなった気がする。" userName="TuxSH" createdAt="2025-04-16T18:58:02" color="">}}

{{<matomeQuote body="Copilot経由じゃないClaudeはマジですごい。Copilot経由だと、ロボトミー手術を受けたみたい（しかも半分くらいの確率でpublic codeを生成したって文句を言う）。" userName="Aeolun" createdAt="2025-04-16T23:51:14" color="">}}

{{<matomeQuote body="昔は良かったのに、料金が変わってからCopilotの性能が全部ゴミになった（補完もモデルも）。M$がGitHubのデータで学習してるって考えるとマジムカつく。Copilot Proが無料でも。" userName="TuxSH" createdAt="2025-04-19T10:20:17" color="">}}

{{<matomeQuote body="どの言語/フレームワーク使ってる？Node/Typescript/Reactだと逆だよ。Claude 3.7は一発で解決してくれるし、プロジェクトのcontext（ファイル構造、パッケージ、コーディングルール、テストとか）を理解してるみたい。Gemini 2.5は勝手にパッケージをインストールしたり、既存のテストをコピーしたりする。" userName="erikw" createdAt="2025-04-16T19:12:53" color="#38d3d3">}}

{{<matomeQuote body="Node / Vue" userName="unsupp0rted" createdAt="2025-04-17T11:04:22" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Gemini 2.5はprompt cachingをサポートしてないのも痛い。Clineみたいなツールだと特に。" userName="jdgoesmarching" createdAt="2025-04-16T17:48:04" color="">}}

{{<matomeQuote body="2.5 Proでプロンプトキャッシュが使えるようになったらしいよ！<br>https://cloud.google.com/vertex-ai/generative-ai/docs/models…" userName="scrlk" createdAt="2025-04-16T18:00:35" color="">}}

{{<matomeQuote body="え、マジ？ここ数日の話かな？2.5 Proのプレビューだけってのが微妙だけど、方向性は良い感じだね。<br>あとは、まともな利用状況ダッシュボードが欲しいな。反映に1日かかったり、モデルの使用状況を把握するために追加のGCPモニタリングサービスが必要だったりするのは勘弁。" userName="jdgoesmarching" createdAt="2025-04-16T18:07:53" color="#38d3d3">}}

{{<matomeQuote body="使えるコンテキストだよ。破綻しないコンテキストの長さも、かなり長くなってるし。" userName="Workaccount2" createdAt="2025-04-16T17:52:48" color="">}}

{{<matomeQuote body="地味に全部の行をリフォーマットして、diffを潰してくるのが困るんだよね。変更点が確認できないから使えない。Sonnetはそんなことしないのに。" userName="zaptrem" createdAt="2025-04-16T18:10:14" color="">}}

{{<matomeQuote body="この主張がよく分からないんだけど、何か見落としてるかな？<br>GoogleはGemini 2.5 Proの発表で、SWE-benchのスコアが63.8%って言ってるよ。<br>https://blog.google/technology/google-deepmind/gemini-model-…" userName="armen52" createdAt="2025-04-16T21:12:58" color="">}}

{{<matomeQuote body="ここやXでよく見る意見だけど、俺だけ違うGemini 2.5 Pro使ってるのかな？数週間使ってみてるけど、プログラミングのタスクを1つも成功させたことがないんだよね。常に間違ってるし、リクエストを誤解するし、制約を無視するし、既存のコーディング規約を無視するし、コードを壊して自分で直せって言うし。" userName="amedviediev" createdAt="2025-04-17T19:14:54" color="">}}

{{<matomeQuote body="Claude 3.7の方が賢い気がするけど、やりすぎなところがあるし、プロンプトへの忠実度が低いかな。" userName="spaceman_2020" createdAt="2025-04-16T19:24:22" color="">}}

{{<matomeQuote body="2.5 ProはCursorとの相性が悪いみたい。コードを生成する前に止まることが多い。Cursorの問題かもしれないけど、そのせいで3.7を使ってる。" userName="redox99" createdAt="2025-04-17T02:26:22" color="">}}

{{<matomeQuote body="いや、それは正確じゃないと思うな。状況によるんじゃない？AIツールを使って一日中コード書いてるけど、Sonnet 3.7が一番だよ。言語によるのかもだけど、俺の知ってるエンジニアはみんなClaude-Code推しだよ。" userName="saberience" createdAt="2025-04-17T10:08:41" color="">}}

{{<matomeQuote body="o4-miniの画像生成の改善はすごいね。今日試してみたけど、ChatGPT 4o LLMの画像統合（これもすごい進化だったけど）からさらに進化してる。細かい編集も頼めるし、ちゃんとやってくれる。数値的なベンチマークはないみたいだけど、実用的な画像ユースケースが開けるね。今回のリリースは価値があるよ。" userName="pizzathyme" createdAt="2025-04-16T19:10:52" color="#45d325">}}

{{<matomeQuote body="へー、シェアありがとね。デモより面白かったよ。試してみたら結構良かった！画像から色々やるのがネックだったんだけど、これなら実用レベルかも。編集の例も参考になるね。→https://chatgpt.com/share/68001b02-9b4c-8012-a339-73525b8246..." userName="mchusma" createdAt="2025-04-16T21:04:14" color="#785bff">}}

{{<matomeQuote body="チャットをシェアする時って、画像も一緒に見れるのかな？俺の環境だと画像が表示されないんだけど。" userName="ec109685" createdAt="2025-04-17T01:24:00" color="">}}

{{<matomeQuote body="え、o4-miniって画像出力できるの？画像のズームイン機能を使うためのツール呼び出しができるだけだと思ってたんだけど。それって4oじゃないの？" userName="ilaksh" createdAt="2025-04-16T21:23:33" color="">}}

{{<matomeQuote body="o4-mini-highでグッズ用のロゴデザイン生成してるんだけど、結構いい感じだよ。テキストもちゃんと入るし、指示も理解してくれる。" userName="AaronAPU" createdAt="2025-04-16T23:11:34" color="#785bff">}}

{{<matomeQuote body="それって新しいgpt-4o使ってるんだよね？APIにはまだないバージョン。" userName="ilaksh" createdAt="2025-04-17T04:39:51" color="">}}

{{<matomeQuote body="あと追加情報！前はChatGPTに画像をアップロードして編集させようとしてもできなかったんだけど、o4miniだとアップロードした画像を編集できるようになったよ。" userName="Agentus" createdAt="2025-04-16T23:08:02" color="#ff33a1">}}

{{<matomeQuote body="swebench.comのリーダーボードによると、Claudeは63.2%（Tools + Claude 3.7 Sonnet (2025-02-24)）。OpenAIはブログで69.1%って言ってるね。[0] swebench.com/#verified" userName="oofbaroomf" createdAt="2025-04-16T17:23:45" color="">}}

{{<matomeQuote body="でもさ、ClaudeはSWE bench verifiedで70.3%って宣伝してたよ[1]。ただし、簡単な方法で。<br>＞For Claude 3.7 Sonnet and Claude 3.5 Sonnet (new), we use a much simpler approach with minimal scaffolding, where the model decides which commands to run and files to edit in a single session. Our main “no extended thinking” pass@1 result simply equips the model with the two tools described here—a bash tool, and a file editing tool that operates via string replacements—as well as the “planning tool” mentioned above in our TAU-bench results.”<br>これってカウントすべきじゃないかも？[1] https://www.anthropic.com/_next/image?url=https%3A%2F%2Fwww-…" userName="georgewsinger" createdAt="2025-04-16T17:42:03" color="">}}

{{<matomeQuote body="注釈を読み間違えてるかも。そのシンプルなセットアップだと62.3%/63.7%だよ。70.3%はハイコンピュート並列セットアップの結果。<br>＞For our “high compute” number we adopt additional complexity and parallel test-time compute as follows:<br> We sample multiple parallel attempts with the scaffold above<br>We discard patches that break the visible regression tests in the repository, similar to the rejection sampling approach adopted by Agentless; note no hidden test information is used.<br>We then rank the remaining attempts with a scoring model similar to our results on GPQA and AIME described in our research post and choose the best one for the submission.<br>This results in a score of 70.3% on the subset of n=489 verified tasks which work on our infrastructure. Without this scaffold, Claude 3.7 Sonnet achieves 63.7% on SWE-bench Verified using this same subset." userName="tedsanders" createdAt="2025-04-16T18:08:10" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
