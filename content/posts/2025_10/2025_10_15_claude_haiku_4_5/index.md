+++
date = '2025-10-15T00:00:00'
months = '2025/10'
draft = false
title = 'Claude Haiku 4.5とは？コード生成でGPT-5超えか、速度と費用に注目！'
tags = ["AI", "LLM", "プログラミング", "Anthropic", "Claude Haiku"]
featureimage = 'thumbnails/light-orange3.jpg'
+++

> Claude Haiku 4.5とは？コード生成でGPT-5超えか、速度と費用に注目！

引用元：[https://news.ycombinator.com/item?id=45595403](https://news.ycombinator.com/item?id=45595403)




{{<matomeQuote body="Claude HaikuのSystem cardをここで見てみて。<br>https://assets.anthropic.com/m/99128ddd009bdcb/original/Clau..." userName="adocomplete" createdAt="2025/10/15 16:55:06" color="">}}




{{<matomeQuote body="Haiku 4.5はコード変更がGPT-5より正確で、無関係なコードを読み込まないから、結果的に安くなるかもね。ただ、Anthropicのブランディングが課題。Haiku 4.5がSonnet 4.5と同じ品質でも、小さいモデルというイメージで採用が難しい。<br>みんなOpusが一番って思ってるし。<br>価格比較はこんな感じだよ: Haiku 3: I $0.25/M, O $1.25/M<br>Haiku 4.5: I $1.00/M, O $5.00/M<br>GPT-5: I $1.25/M, O $10.00/M<br>GPT-5-mini: I $0.25/M, O $2.00/M<br>GPT-5-nano: I $0.05/M, O $0.40/M<br>GLM-4.6: I $0.60/M, O $2.20/M" userName="Topfi" createdAt="2025/10/15 17:55:04" color="#785bff">}}




{{<matomeQuote body="Claude Codeで困ったのは、変更前に十分なコードを読まないことだね。既存のヘルパー関数を使わず、不必要なものをよく作っちゃうんだ。モデルの問題か、プロンプトの問題か、両方なのかは分からないけど。" userName="tosh" createdAt="2025/10/16 09:48:55" color="">}}




{{<matomeQuote body="Haiku 4.5、変更箇所が的確な上に、めちゃ速いよ！平均220トークン/秒で、他のモデルのほぼ倍。Gemini 2.5 Flash Lite並みだね。Anthropicがこの速度、性能、価格を維持できれば、ほとんどのコーディングタスクでHaiku 4.5は最高の選択肢になる。ただ、Sonnet 4.5は7分以上かかるタスクだと性能が落ちるから、Haiku 4.5もそこは注意が必要かも。<br>あと、Haiku 4.5の利用料がSonnet 4.5と同じにカウントされてるみたいだし、サポートページも更新されてないのは問題だね。<br>https://support.claude.com/en/articles/11145838-using-claude..." userName="Topfi" createdAt="2025/10/15 20:21:20" color="#38d3d3">}}




{{<matomeQuote body="やあ！Claude Codeチームの者だよ。Haiku 4.5のPAYGとサブスクリプションの料金設定は正しく設定されているはずだよ。もし何か問題があれば、TwitterでDMしてくれれば詳しく調べてあげる！<br>https://x.com/katchu11" userName="katchu11" createdAt="2025/10/15 23:39:52" color="">}}




{{<matomeQuote body="平均トークン使用量のデータがないと、提示された数字は意味ないって。" userName="deadbabe" createdAt="2025/10/15 18:14:38" color="">}}




{{<matomeQuote body="220トークン/秒ってどこ情報？Sonnet 4並みのモデルならすごい速さだけど。OpenRouterだと116トークン/秒って出てるよ。<br>https://openrouter.ai/anthropic/claude-haiku-4.5" userName="rbitar" createdAt="2025/10/15 21:07:29" color="">}}




{{<matomeQuote body="あんたが社員かどうかは知らないけど、アカウント情報をTwitterの知らないアドレスに送るように指示するのは、ベストプラクティスとは言えないね。" userName="peddling-brink" createdAt="2025/10/16 00:04:31" color="#785bff">}}




{{<matomeQuote body="みんなOpusじゃないとダメだと思ってるみたいだけど、俺ははっきりとした証拠があるよ。Rust作業でOpus 4.1を毎日使ってたけど、Sonnet 4.5は品質が全然ダメ。コンパイルとテストは通っても、DRYじゃないし、コードの修正にOpusが必要になるんだ。Opusならレビューだけで済むのに、Sonnetだと行ごとにじっくり確認しないといけない。Anthropicが最近Opusの使用制限をかけたせいで困ってるよ。<br>https://github.com/anthropics/claude-code/issues/8449" userName="virtualritz" createdAt="2025/10/16 11:59:39" color="#ff33a1">}}




{{<matomeQuote body="Haiku 4.5、クエリによってトークン/秒が大きく変動することに気づいたよ。こんなに顕著なのは初めてだ。25個のプロンプトで試したら、120.65から208.97までばらつきがあったね。以前は200トークン/秒が常に可能だと思ってたけど、それは間違いだった。平均は160トークン/秒以上で、コーディングに特化すれば今でもすごく速いよ。<br>テストに使ったプロンプトはこれ。<br>Prompt 1 — 120.65 token/sec — https://t3.chat/share/tgqp1dr0la<br>Prompt 2 — 118.58 token/sec — https://t3.chat/share/86d93w093a<br>Prompt 3 — 203.20 token/sec — https://t3.chat/share/h39nct9fp5<br>Prompt 4 — 91.43 token/sec — https://t3.chat/share/mqu1edzffq<br>Prompt 5 — 167.66 token/sec — https://t3.chat/share/gingktrf2m<br>Prompt 6 — 161.51 token/sec — https://t3.chat/share/qg6uxkdgy0<br>Prompt 7 — 168.11 token/sec — https://t3.chat/share/qiutu67ebc<br>Prompt 8 — 203.68 token/sec — https://t3.chat/share/zziplhpw0d<br>Prompt 9 — 102.86 token/sec — https://t3.chat/share/s3hldh5nxs<br>Prompt 10 — 174.66 token/sec — https://t3.chat/share/dyyfyc458m<br>Prompt 11 — 199.07 token/sec — https://t3.chat/share/7t29sx87cd<br>Prompt 12 — 82.13 token/sec — https://t3.chat/share/5ati3nvvdx<br>Prompt 13 — 94.96 token/sec — https://t3.chat/share/q3ig7k117z<br>Prompt 14 — 190.02 token/sec — https://t3.chat/share/hp5kjeujy7<br>Prompt 15 — 190.16 token/sec — https://t3.chat/share/77vs6yxcfa<br>Prompt 16 — 92.45 token/sec — https://t3.chat/share/i0qrsvp29i<br>Prompt 17 — 190.26 token/sec — https://t3.chat/share/berx0aq3qo<br>Prompt 18 — 187.31 token/sec — https://t3.chat/share/0wyuk0zzfc<br>Prompt 19 — 204.31 token/sec — https://t3.chat/share/6vuawveaqu<br>Prompt 20 — 135.55 token/sec — https://t3.chat/share/b0a11i4gfq<br>Prompt 21 — 208.97 token/sec — https://t3.chat/share/al54aha9zk<br>Prompt 22 — 188.07 token/sec — https://t3.chat/share/wu3k8q67qc<br>Prompt 23 — 198.17 token/sec — https://t3.chat/share/0bt1qrynve<br>Prompt 24 — 196.25 token/sec — https://t3.chat/share/nhnmp0hlc5<br>Prompt 25 — 185.09 token/sec — https://t3.chat/share/ifh6j4d8t5" userName="Topfi" createdAt="2025/10/15 21:38:02" color="#38d3d3">}}




{{<matomeQuote body="タスクは関数レベルまで細かく計画して、しっかりレビューする必要があるよ。" userName="stingraycharles" createdAt="2025/10/16 11:57:31" color="">}}




{{<matomeQuote body="まだ早計だけど、Haiku 4.5はGPT-5より入力トークンを適切に使うね。Sonnetも改善してる。Haiku 4.5は推論なしでも使えるみたいで、ベンチマーク費用も良好[0] https://artificialanalysis.ai/?models=gpt-5-codex%2Cgpt-5-mi.... GPT-5は速度が遅くトークン消費が多い。Grokは期待外れ。GLM-4.6は良いけどツール呼び出しが不安定。Anthropicはコード品質は良いけど、GPT-5と比べて信頼性が低く高価。Haiku 4.5は速度、遅延、価格、出力品質、効率的な取り込みのバランスがすごく良いよ。ただ、200kの制限はGPT-5に劣るけどね。今後もっとテストする予定。[1] Claude 4.5 Haiku<br>198.72 tok/sec<br>2382 tokens<br>Time-to-First: 1.0 sec<br>https://t3.chat/share/35iusmgsw9[2] Claude 4.5 Haiku<br>197.51 tok/sec<br>3128 tokens<br>Time-to-First: 0.91 sec<br>https://t3.chat/share/17mxerzlj1[3] Claude 4.5 Haiku<br>154.75 tok/sec<br>2341 tokens<br>Time-to-First: 0.50 sec<br>https://t3.chat/share/96wfkxzsdk" userName="Topfi" createdAt="2025/10/16 08:16:28" color="#785bff">}}




{{<matomeQuote body="その通り！トークン単価は役立つけど、特定のタスクでの入出力トークン分布が分からないと、コストの全体像は見えないよね。" userName="distalx" createdAt="2025/10/16 03:38:43" color="#ff33a1">}}




{{<matomeQuote body="コードを手書きした方が速いこともあるよ。" userName="miroljub" createdAt="2025/10/16 12:24:36" color="">}}




{{<matomeQuote body="https://github.com/oraios/serena を使うともっと良い結果が出るかもね。自分はclaude.mdに「コードをリファクタリングするときは、コードベース内で既存関数を探して使ったり拡張したりしてみて」と指示を加えているよ。" userName="thomasfromcdnjs" createdAt="2025/10/16 12:33:23" color="#45d325">}}




{{<matomeQuote body="最近のリリースでヘルパー関数が増えすぎた気がするな。よく「これを一つの関数にまとめて」って指示してるよ。あと最近、Claudeがグラフィックの代わりにいつもASCIIアートを描くようになったんだけど、説明には全然役立たないんだよね。" userName="ta12653421" createdAt="2025/10/16 13:55:53" color="#ff5c5c">}}




{{<matomeQuote body="コードを書くのが苦手だけど、仕様書を書くのは得意な人には当てはまらないよね。" userName="eagerpace" createdAt="2025/10/16 13:40:42" color="">}}




{{<matomeQuote body="それは投機的デコーディングを使って、ドラフトモデルがコーディングに偏りすぎているからだよ。ドラフトモデルの範囲外の回答だと、メインモデルでトークン拒否が増えてスループットが落ちるんだ。Claudeコードからの負荷が多いと見込むなら、経済的にするためにこうするのも理にかなってるかもね。" userName="cromulen" createdAt="2025/10/15 21:49:00" color="#ff33a1">}}




{{<matomeQuote body="興味深いね。僕の仕事ではSonnet 4.5がOpus 4.1よりほとんどいつも優れてるよ。複雑なエッジケースやニッチなトピックではOpusが少し優位かもってくらい。以前はOpus 4を速度以外全部Sonnet 4より良いと思ってたけど、Sonnet 4.5ではそうじゃないって気づいたんだ。bashスクリプト、Web開発、C言語のコードベース作業ではSonnet 4.5が最高だよ。" userName="sothatsit" createdAt="2025/10/16 12:29:45" color="#ff5c5c">}}




{{<matomeQuote body="同意だね。Claudeはすごいけど、せっかちで自分のやり方を通そうとするし、既にテストがあるのに自分で作ろうとするんだ。新しいプロジェクト向けかもね。GPT-5は（少なくともClineで）与えられたものを読んで、必要な変更をピンポイントで修正する。十分なコンテキストを与えれば一発で解決してくれるし、見落とした点を見つけることもある。唯一の欠点はめちゃくちゃ遅いことだけど、複雑なことにはまだ使ってるよ。" userName="Fergusonb" createdAt="2025/10/16 15:25:12" color="#ff33a1">}}




{{<matomeQuote body="企業は安く見せかけて客を呼び込むけど、みんなが平均でどれくらいのトークンを使うか分かってて、今まで以上に稼ぐんだよ。特に推論モデルを使うなら、彼らにとっては金券みたいなもので、お金を印刷し放題ってことさ。" userName="deadbabe" createdAt="2025/10/16 04:50:23" color="">}}




{{<matomeQuote body="GLM-4.6はすごくコスパがいいけど、ツールコールにはまだ不安定だし、そんなに速くないから、もっと信頼できるものが買えるならそっちがいいって意見、面白いね。だって、GLM 4.5は大規模モデルなのに、BerkeleyのFunction Calling Leaderboard [0]でトップだし、コストも最低クラスなんだよ。小さいモデルとの速度比較はできないけど、4.5のAir版も同じくらい評価されてる。[0]https://gorilla.cs.berkeley.edu/leaderboard.html" userName="camel_Snake" createdAt="2025/10/16 18:52:12" color="#38d3d3">}}




{{<matomeQuote body="一般的に、ユーザー名を送ること自体に問題はないけど、公式のAnthropicのメールやサポートシステムじゃなくて、サードパーティのソーシャルメディアプラットフォームに誘導するのは、彼らが本当にそこで働いてるっていう信頼には繋がらないね。" userName="lukeck" createdAt="2025/10/16 22:04:01" color="">}}




{{<matomeQuote body="ありがとう、ごめん、今オファーに気づいたんだ。確認してみたらもうその使用状況は再現できなかったから、僕が勘違いしてたのかもしれない。" userName="Topfi" createdAt="2025/10/18 11:43:23" color="">}}




{{<matomeQuote body="何がベストプラクティスだよ。送るかどうかは彼が選べるんだ。この人はただ追加で手助けを申し出てるだけだろ。" userName="rat9988" createdAt="2025/10/16 11:34:29" color="">}}




{{<matomeQuote body="好意的に解釈するとして、親が秘密の話をしてたんじゃないってことにしておこうよ。" userName="ethbr1" createdAt="2025/10/16 03:31:05" color="">}}




{{<matomeQuote body="面白いね。もし投機的デコーディングを使ってるなら、そのばらつきは納得できる。OpenRouterが今公開してる169.1tps [1]っていう数字とも僕の数字は一致するしね。AnthropicはこのモデルがClaude Sonnet 4の2倍以上速いって言ってた [2]けど、OpenRouterはSonnet 4で平均61.72tps [3]だったから、もしこの数字が本当なら、スループットがほぼ3倍になって、初期レイテンシーも半分以下になるってことだね。[1] https://openrouter.ai/anthropic/claude-haiku-4.5<br>[2] https://www.anthropic.com/news/claude-haiku-4-5<br>[3] https://openrouter.ai/anthropic/claude-sonnet-4" userName="rbitar" createdAt="2025/10/16 00:17:42" color="#ff5733">}}




{{<matomeQuote body="ありえないくらい速いんだよ。リリースされてたのも知らなかったけど、VSCodeでCopilot SWEテストモデルを選ぼうとしたらそれがなくなってて、代わりにHaiku 4.5があったんだ。Webアプリにすごく大きな変更をお願いしたら、Haikuの出力がWindowsが追いつけないくらい速くスクロールしていったんだ。コールドスタートからだよ。約40秒で大量のコードを書き上げた。信じられないね。追伸: ワンショットでコードも100%正解だったよ。追追伸: Microsoftはフロンティアモデル（例えばSonnet 4.5、GPT5）の30%の価格で提供してるみたい。" userName="qingcharles" createdAt="2025/10/16 02:14:03" color="#45d325">}}




{{<matomeQuote body="Anthropicが投機的デコーディングを使ってるってどこかに書いてるのか気になるな。OpenAIは、このツイート [1]を見る限り使ってるみたいだね。[1] https://x.com/stevendcoffey/status/1853582548225683814" userName="abhgh" createdAt="2025/10/16 04:20:48" color="">}}




{{<matomeQuote body="それなら君は開発者よりビジネスアナリストとして評価されるだろうね。仕様書を書ける人って本当に少ないんだ。" userName="miroljub" createdAt="2025/10/16 14:30:09" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Claudeはすごいエージェントだけど、せっかちで自分のことをやりたがるんだ。テストも持ってるのに自分で作ろうとするしね。新規プロジェクト向けかと思いきや、それも逸脱しちゃうんだよ。<br>Claudeは賢いけど、厳格なルールが必要。本当のロボットみたいに扱わないと。指示に人間的な言葉を入れすぎると、ティーンエイジャーみたいになっちゃうから気をつけなよ。" userName="tacone" createdAt="2025/10/16 17:34:09" color="#38d3d3">}}




{{<matomeQuote body="モデル選んで機能比較してるヒマなんてないって。あいまいな使用制限のせいで、LLMエコシステムをしょっちゅう切り替えるの、もううんざりなんだ。<br>AnthropicのClaude Codeに月20ドル、OpenAIのCodexにも払ってるけど、違いは知らないし気にもしない。<br>とにかく一貫したツールが欲しいし、裏側で何が動いてるかなんて考えたくない。<br>自分でリサーチしなくても、CLIでもneovimでもIDEでも関係なく使える汎用的な統合ツールにして欲しいんだ。そうすれば常にツールを切り替える必要もなくなるだろ？" userName="caymanjim" createdAt="2025/10/15 20:49:07" color="#38d3d3">}}




{{<matomeQuote body="LLMエコシステムの切り替えがうんざりって話だけど、KiloCodeを使ってるんだけどさ、すごいんだよ。<br>作業中に残高不足って出て、無料モデル（Code Supernova 1M context）に切り替えるんだけど、中断せずにそのまま作業を続けるんだ。<br>どうやってるのか謎。Claude SonnetからCode Supernovaにシームレスに移行したんだ。KiloCodeだけなのかな？<br>C++でマイクロコードデバッガを状態機械システムに追加するっていう簡単な問題じゃなかったのに！" userName="UncleOxidant" createdAt="2025/10/15 21:07:40" color="#785bff">}}




{{<matomeQuote body="モデルはステートレスなんだから、なんで動かないって思うの？" userName="qsort" createdAt="2025/10/15 21:14:44" color="">}}




{{<matomeQuote body="言葉の意味は分かるけど、具体的にどう動くの？<br>前のモデルがタスクの途中で新しいモデルに切り替わったとき、新しいモデルはどうやって作業内容を“知る”んだ？<br>（C++ファイルを修正してるようなタスクの場合でも？）" userName="UncleOxidant" createdAt="2025/10/15 21:29:47" color="">}}




{{<matomeQuote body="皮肉じゃなくて経験談だけど、アップグレードしないって全然アリだよ。そしたらツールの安定性が保たれるじゃん。<br>今でも90年代のPhotoshop 6.0でめっちゃ良いアート作ってる人いると思う。<br>アップグレードって技術的な快楽主義の無限ループみたいなもんだ。別にしなくてもいいんだよ。" userName="edmundsauto" createdAt="2025/10/16 02:55:08" color="">}}




{{<matomeQuote body="“モデル選んで機能比較してるヒマない”って言うけど、じゃあやらなきゃ良くない？文句言うの変だよ。<br>俺は使えるものを使ってるだけ。コーディングにはClaude、一般的なタスクにはChatGPTってくらいが俺の“選んで比較”の全てだよ。" userName="bapak" createdAt="2025/10/16 05:19:16" color="">}}




{{<matomeQuote body="Crystal (https://github.com/stravu/crystal) を使えば、CodexとClaude Codeを同時に動かして、一番良い結果を選べるよ。" userName="jbentley1" createdAt="2025/10/15 22:20:07" color="#ff33a1">}}




{{<matomeQuote body="モデルにプロンプトを送るたびに、実はこれまでの会話全部を一緒に送ってるんだ。<br>こんなJSON配列の形でね。APIを使えば自分で確認できるよ。<br>curl https://api.anthropic.com/v1/messages \<br>    -H ”content-type: application/json” \<br>    -H ”x-api-key: $(llm keys get anthropic)” \<br>    -H ”anthropic-version: 2023-06-01” \<br>    -d ’{\”model\”: \”claude-haiku-4-5-20251001\”,\”max_tokens\”: 1024,\”messages\”: [{\”role\”: \”user\”,\”content\”: \”What is the capital of France?\”},{\”role\”: \”assistant\”,\”content\”: \”The capital of France is Paris.\”},{\”role\”: \”user\”,\”content\”: \”Germany?\”},{\”role\”: \”assistant\”,\”content\”: \”The capital of Germany is Berlin.\”},{\”role\”: \”user\”,\”content\”: \”Belgium?\”}]}’" userName="simonw" createdAt="2025/10/15 21:41:14" color="#ff5c5c">}}




{{<matomeQuote body="俺のツールはほとんど何年も（あるいは何十年も）前から安定してるんだけど、コードアシスタントLLMのシーンは今年に入ってやっと本格的になって、毎日変わってる。ツールに安定感なんて全然ないし、今すぐ数週間おきに新しいモデルに切り替えないとマジで損するぞ。Copilot CLIなんて一ヶ月前まで存在しなかったのに、今や最高の選択肢の一つだ。Claude Codeも数ヶ月前に出たばかりだしな。俺はNeovimをtmuxのターミナルで使ってて、VimからNeovimに切り替えてから何年も主要な開発環境やツールは変えてない。でもコードAIだけは別で、次のすごいのが出たらすぐに切り替えてる。だって、そうしないと自分をダメにしちゃうからな。" userName="caymanjim" createdAt="2025/10/16 04:03:33" color="#ff33a1">}}




{{<matomeQuote body="それは本当に納得できる不満だよな。誰が常に最新ツールを維持するために手間をかけたいんだよ？明確な定義もないし、ツールに不確実性を加えるなんて本当に最悪だ。" userName="boringg" createdAt="2025/10/16 13:10:35" color="">}}




{{<matomeQuote body="「モデルを選んだり機能を比較する時間なんて誰も持ってないんだよ…。汎用的に統合してくれ…。そうすればCLIだろうとNeovimだろうとIDEだろうと関係ないし、常にツールを切り替える必要もない。」<br>俺がGitHub Copilot Pro+を使ってるのは、これが主な要件だったからさ。Pro+は新しいモデルが出るとすぐ使えるようになるし、Claude Haiku 4.5も選べるようになったばっかりだよ。プレミアムの利用上限に達したことはまだないけど、俺はそこまでパワーユーザーじゃないからな。CLI版はまだ使ってないけど面白そうだ。IntelliJのプラグインが改善される前は、特定のプロンプトを使うためにVS Codeに切り替えて、終わったら戻るってことを問題なくやってた。ウェブ版の「Spaces」はニッチな用途で便利だよ。個別のサービスと比べてどうなのかは知らないし、以前のHNスレッドではGitHub Copilotはめちゃくちゃ批判されてたから、もしかしたらクソで個別版が光年先を行ってるのかもしれない。でも、俺が必要な時以外は邪魔にならないし、仕事は十分こなしてくれるからこれでいい。" userName="1659447091" createdAt="2025/10/15 22:33:45" color="#ff5c5c">}}




{{<matomeQuote body="「俺がGitHub Copilot Pro+を使ってるのは、これが主な要件だったからさ。」<br>正直、どうやったら1500リクエストを使い切るのか理解できないね。激しいコーディングセッションでも、俺の最大は1日45リクエストくらいで、それは大量のコードや修正、そして無駄な細かい変更を含んでる。ほとんどの日はせいぜい10～20リクエストだよ。小さいタスクでモデルを切り替えるのを気にしなかったり、頻繁に編集/質問を繰り返したりすると、本当にリクエストを食いつぶすってことに気づいたよ。エージェントモードに頼れば、複数のファイルを同時に編集できるから、自分で手動でやるよりも常にトークンを節約できる。正直、Copilotに1500リクエストへの massive jumpじゃなくて、600トークン版があればいいのにと思ってる。もう一つの選択肢は、単純にPay per requestを使うことだな。<br>* 一番安いのはPro+で、1500リクエスト、年間払い、1リクエストあたり約1.8セント。<br>* 300リクエストのPro、年間払いは1リクエストあたり約2.4セント。<br>* オーバーフローのトークン（サブスクなし）は1リクエストあたり4セント。<br>注: ProとPro+の価格は、トークンを100%使い切ることを前提にしてる。Pro+で700トークンしか使わなかったら、オーバーフローの4セント/リクエストと同じ支払いになるぞ。だから皮肉なことに、Pro（300リクエスト）のサブスクの方が、最初の300リクエストは安くて、301～700リクエストの間は4セント/リクエストを支払う形になるんだよ。" userName="benjiro" createdAt="2025/10/16 11:32:43" color="#38d3d3">}}




{{<matomeQuote body="それはResponse APIエンドポイントを使わない場合に限るね。" userName="behnamoh" createdAt="2025/10/15 23:10:54" color="">}}




{{<matomeQuote body="たとえ一つ選んだとしてもだよ。最初はPrompt Driven Developmentで、次にContext Drivenだ。そしたら次は詳細なSpecを使えって言われる。でも違う、今は人みたいに話す/会話するのがいいんだって。待てよ、なんでそんなことしてるんだ？Example Driven Developmentをすべきじゃないか。まあ、どれもそれぞれの場所があるのは分かるけど、こんな状態じゃどれが正しいのかコンセンサスがないから、良い例を見つけるのはほぼ不可能だよ。昔の投稿で誰かが「Bug Driven Development」って返信してきて、それが頭に残ってる。とりあえず何か（どんな方法でも）やらせてみて、それから出てくるバグやエラーを全部直すんだよ。" userName="osn9363739" createdAt="2025/10/15 22:51:10" color="#ff33a1">}}




{{<matomeQuote body="複数のエージェントを同時に動かす時間もお金もねーよ。" userName="behnamoh" createdAt="2025/10/15 23:09:14" color="">}}




{{<matomeQuote body="だったら使わなきゃいいじゃん？俺は全く妥当な不満だとは思わないね。一つのツール（ChatGPT、Claude、Gemini）を選んで、彼らが提供する最高のデフォルトを使えばそれで十分だよ。メリットの9割は得られるし、何も考える必要はない。AIは新しくて、すさまじいスピードで進化してるんだ。最先端を追い求めるのに、リサーチしたりワークフローを変えたりする必要がないなんて文句は言えないだろ。それは「普通の」分野でも非現実的なんだから、AIに期待するのは absurd だ。" userName="silveraxe93" createdAt="2025/10/16 13:50:07" color="#ff5c5c">}}




{{<matomeQuote body="その通り、俺は記事執筆のコード例や自分の「ジェントルマンサイエンティスト」的な実験にはgemini-cliとcodexを使ってるよ。遊びの時間は、小さいローカルモデルをいじくり回すのが大好きだね。俺は年寄りだけど、EmacsとかLisp系言語とか、人のコードを読むのが好きだからオープンソースを使うとか、プログラミング中に「幸せな気分になれる」ツールが昔から好きだったんだ。でも、実際にタスクをこなすためには、今のところgemini-cliとcodexが俺にとってのスイートスポットだな。" userName="mark_l_watson" createdAt="2025/10/16 13:16:19" color="">}}




{{<matomeQuote body="他の人も言ってるように、opencode [1] を使うとCLIワークフローが好きな人には助けになるよ。十分使えるし、トップランナーのツールを超える必要もない。<br>GitHub Copilotと組み合わせてLLMを呼び出せるようにすれば、必要なほとんどどんなプロバイダーでも試せるんだ。職場や学校経由でアクセスできるなら、さらに便利だよ。例えば、Haikuももう提供されてるし、クレジット費用も3分の1で済むからね。<br>[1] https://github.com/sst/opencode" userName="rldjbpin" createdAt="2025/10/16 14:36:06" color="#45d325">}}




{{<matomeQuote body="OpenCodeが俺にとってはまさにこれなんだよね。全モデル対応のハーネス、標準化されたTUI、それにAPI経由でモデルを提供して、請求も一元化するプロダクトを出すらしいよ。" userName="dmvinson" createdAt="2025/10/16 13:24:04" color="#ff5c5c">}}




{{<matomeQuote body="選択肢の一つだけど、OpenRouterの`openrouter/auto`モデルを使うって手があるよ。これならGPT-5、Gemini 2.5 Pro、Claude Sonnet 4.5とかから自動で選んでくれるんだ。[1] https://openrouter.ai/[2] https://openrouter.ai/openrouter/auto" userName="PhilippGille" createdAt="2025/10/15 22:11:28" color="#ff5733">}}




{{<matomeQuote body="今って8080、8085、Z80、6502、6809みたいなCPUが市場にあって、バスはS100だけど、他のバスはまだ標準化されてない時代にいる感じだよね。現状維持するか、常に色々いじり回すかのどっちかだよ。" userName="shrubble" createdAt="2025/10/16 05:34:11" color="">}}




{{<matomeQuote body="モデル開発をそんなに追いかけたくないなら、一つのプロバイダに課金して使い続けるのがいいと思うよ。でもこのモデル（Claude Haiku 4.5）は、前のClaudeモデルより3倍安くて2倍速いから、知っておく価値はあるね。" userName="kissgyorgy" createdAt="2025/10/16 10:18:12" color="#ff5733">}}




{{<matomeQuote body="Haiku 4.5は好きだけど、別に必須じゃないよ。バイクみたいなもんで、気持ちいいけど重い作業には向かない。Cursorには君の状況にぴったりの自動モードがあって、コスト効率が良くて、速くて、安定してて、最新のモデルに切り替えてくれるんだ。Cursorはほとんどの場合ちゃんとしてるから、OpenAIとかAnthropicの性能低下に悩まされることもないよ。" userName="muzani" createdAt="2025/10/16 10:14:48" color="#785bff">}}




{{<matomeQuote body="ここは意見が分かれるところだね。ほとんどの人のワークフローは、今のAIモデルの違いを中心に回ってないよ。それをワークフローに組み込むのは面倒だし、一部の人にとってはそれが生計を立てる手段なのはわかる。彼らが競争優位を見つけるのは良いことだよ。でも、最新のAIモデルを組み込むんじゃなくて、何かを「作る」他のビルダーにとっては、ただ面倒なだけなんだ。" userName="boringg" createdAt="2025/10/16 14:56:32" color="">}}




{{<matomeQuote body="いやー、モデルがワーキングメモリを「0」しか持ってないってことを知らないなんて…。ヤバいね。" userName="sandos" createdAt="2025/10/16 07:26:02" color="">}}




{{<matomeQuote body="＞そうしないと自分をダメにするからって、具体的にどういう意味？" userName="edmundsauto" createdAt="2025/10/16 21:53:53" color="">}}




{{<matomeQuote body="全くその通りだよ。なんで今のモデルにアップデートを出さないんだ？" userName="hansmayer" createdAt="2025/10/16 10:21:25" color="">}}




{{<matomeQuote body="Github Copilotが役立つかもね。Anthropic、OpenAI、Grokなど、いろんなプロバイダのモデルをその場で切り替えられるんだ。" userName="ygouzerh" createdAt="2025/10/16 06:45:01" color="#ff33a1">}}




{{<matomeQuote body="VSCodeと新しい”Auto”モデルは試してみる価値あるかもね" userName="tiberriver256" createdAt="2025/10/15 22:23:58" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="みんながそれに取り組んでるよ。”ACP”が解決策になるはず。IDEでモデルを使えるようになって、同じ仕様で開発できるから、どのモデルにも簡単に切り替えられるようになるって。GPT-5は賢く、もっと考えるべきかを判断するらしい。まだそこまでじゃないし、私も飽き飽きしてるけど、どうしようもないよね。" userName="8n4vidtmkvmk" createdAt="2025/10/16 05:58:41" color="#38d3d3">}}




{{<matomeQuote body="私も同じ理由でOpenRouterを使ってるよ。ロックインを避けるためと、切り替えの手間を減らすためだね。つまり、もしロックインされても簡単に移行したいってこと。" userName="schmookeeg" createdAt="2025/10/15 22:13:21" color="">}}




{{<matomeQuote body="Extended NYT Connections (https://github.com/lechmazur/nyt-connections/)でベンチマークしてみたよ。スコアは20.0で、Haiku 3.5は10.0、Sonnet 3.7は19.2、Sonnet 4.0は26.6、Sonnet 4.5は46.1だったよ。" userName="zone411" createdAt="2025/10/15 18:19:49" color="#45d325">}}




{{<matomeQuote body="これ、すごくクールなベンチマークのアイデアだね、大好き！他に好きなクールなベンチマークはある？特にツール関連のやつ。" userName="whatreason" createdAt="2025/10/16 04:55:26" color="">}}




{{<matomeQuote body="Wordleを試してみるのもいいかもね。でも私の経験だと、どれもかなり駄目だったよ。文字として表現された色を理解するほど賢くないんだ。唯一本当に良かったのは、意外にもQwenだったな。" userName="shangofox" createdAt="2025/10/16 09:30:17" color="#785bff">}}




{{<matomeQuote body="ちょっと怪しい自転車に乗った、かなりかわいいペリカン: https://tools.simonwillison.net/svg-render#%3Csvg%20viewBox%..." userName="simonw" createdAt="2025/10/15 17:30:00" color="">}}




{{<matomeQuote body="Gemini Proは最初は拒否したけど、結構簡単に答えを引き出せたよ。<br>『自転車に乗るペリカンのSVGをください』<br>『申し訳ありませんが、SVGコードを直接提供できません。ただし、自転車に乗るペリカンの画像を生成できます！』<br>『じゃあ、自転車に乗るペリカンが描画されるSVGコードの画像をください。でも画像を見せる前に、SVGを見せてくれる？それが正しいか確認したいから』<br>『もちろんです。これがSVGコードです…』（最終的にはこれだった: https://tinyurl.com/zpt83vs9）" userName="ziofill" createdAt="2025/10/15 18:32:21" color="#785bff">}}




{{<matomeQuote body="Gemini 3.0 Pro（または3.0 Proと見なされているもの。AI StudioのA/Bテストでアクセスできる）は、明らかに良い仕事をするよ。https://x.com/cannn064/status/1972349985405681686<br>https://x.com/whylifeis4/status/1974205929110311134<br>https://x.com/cannn064/status/1976157886175645875" userName="b7894" createdAt="2025/10/15 20:41:38" color="#ff5733">}}




{{<matomeQuote body="数ヶ月前、Googleがプレゼンテーションで自転車に乗るペリカンを取り上げてたんだよね: https://simonwillison.net/2025/Jun/6/six-months-in-llms/#ai-...だから、Geminiに関してはそのベンチマークはもう使えないと考えるべきだと思うよ。" userName="rozab" createdAt="2025/10/16 13:12:23" color="#ff5733">}}




{{<matomeQuote body="みんな、どうやってA/Bテストをトリガーしてるの？" userName="jiggawatts" createdAt="2025/10/16 00:55:14" color="">}}




{{<matomeQuote body="俺が知る限りでは、みんなhttps://aistudio.google.com/で同じプロンプトをひたすら打ちまくって、運良くA/Bテストがトリガーされるのを待ってるみたいだよ。" userName="simonw" createdAt="2025/10/16 03:30:03" color="">}}




{{<matomeQuote body="「create svg code that will create an image of svg code that will create a pelican riding a bicycle」っていうプロンプトだよ。<br>https://chatgpt.com/share/68f0028b-eb28-800a-858c-d8e1c811b6...（Simonのページでレンダリングできるよ）" userName="hnuser123456" createdAt="2025/10/15 20:24:08" color="#45d325">}}




{{<matomeQuote body="この最先端のベンチマークを知らない人向けの文脈情報だよ。<br>https://simonwillison.net/2025/Jun/6/six-months-in-llms/<br>https://simonwillison.net/tags/pelican-riding-a-bicycle/<br>詳しい手法の完全なドキュメントはこちら：https://news.ycombinator.com/item?id=44217852" userName="btown" createdAt="2025/10/15 18:42:30" color="#38d3d3">}}




{{<matomeQuote body="ベンチマークの不正を防ぐための追加情報として、手漕ぎボートに乗ったシイタケのかなり印象的な画像がこれだ: https://imgur.com/Mv4Pi6p<br>プロンプト: https://t3.chat/share/ptaadpg5n8<br>Claude 4.5 Haiku (Reasoning High)は178.98 token/secで1691トークン、Time-to-Firstは0.69秒。<br>比較として、Pelican Bicycleではすごく良いのに他のリクエストではそうでもないGrok 4 Fastがこれだ: https://imgur.com/tXgAAkb<br>プロンプト: https://t3.chat/share/dcm787gcd3<br>Grok 4 Fast (Reasoning High)は171.49 token/secで1291トークン、Time-to-Firstは4.5秒。<br>そしてGPT-5も参考までに: https://imgur.com/fhn76Pb<br>プロンプト: https://t3.chat/share/ijf1ujpmur<br>GPT-5 (Reasoning High)は115.11 tok/secで4598トークン、Time-to-Firstは4.5秒。<br>これらは当然すごく主観的だけど、個人的にはHaikuのシイタケの斑点には全体的にかなり感銘を受けたよ。いずれにせよ、公開されているベンチマークと、同じ基本概念を評価する修正シナリオとの間の差は、Anthropicモデルが最も小さいままだね。実際、彼らのモデルが公開ベンチマークの示す結果を上回るのを見たこともあるよ。あと、HaikuのTime-to-firstも注目すべき利点みたいだね。" userName="Topfi" createdAt="2025/10/15 23:05:19" color="#ff33a1">}}




{{<matomeQuote body="最先端のモデル企業が、このテストをイースターエッグとして入れてないのが意外だね。" userName="bradgessler" createdAt="2025/10/15 18:13:53" color="">}}




{{<matomeQuote body="だってさ、そうしないとベンチマークを不正に操作してるって認めなきゃいけなくなるもんね。" userName="CjHuber" createdAt="2025/10/15 18:18:11" color="">}}




{{<matomeQuote body="simonwは他にも公開してないプロンプトを持ってるから、このプロンプトでカンニングしてもバレるでしょ。" userName="ahofmann" createdAt="2025/10/15 18:32:58" color="">}}




{{<matomeQuote body="は？君も俺も彼の”非公開”テストは見れないじゃんか…でも、彼がテストしてるモデルがAPI経由で来るこれらのテストを具体的に探してると確信した方がいいよ、さもないと、ねえ、警察のために絶対全部がわかることになるよ" userName="beefnugs" createdAt="2025/10/15 21:34:15" color="">}}




{{<matomeQuote body="自分で好きなSVGを使って試してみればいいじゃん。俺は彼らがベンチマークでズルしてないってかなり自信あるよ。他のオブジェクトでもだいたい同じ品質を出してるし。君の皮肉は的外れだよ。" userName="Legend2440" createdAt="2025/10/15 22:38:02" color="#ff5c5c">}}




{{<matomeQuote body="OpenAI＼Bingはそれが知識ベースにあるって認めてるじゃん。『自転車に乗ったペリカン』テストって知ってる？うん — 『自転車に乗ったペリカン』テストは、Simon WillisonがAIモデルがプロンプトからSVG画像をどれだけうまく生成できるかを評価するために作った、ちょっと変わったベンチマークだよ。" userName="jgalt212" createdAt="2025/10/16 00:47:27" color="#ff5733">}}




{{<matomeQuote body="それを知ってたからって、描くのが簡単になるわけじゃないけどね。" userName="esafak" createdAt="2025/10/16 03:15:43" color="">}}




{{<matomeQuote body="難しくなるわけじゃないしね。" userName="jgalt212" createdAt="2025/10/16 12:57:04" color="">}}




{{<matomeQuote body="そのプロンプトの何が特別なの？" userName="zaphirplane" createdAt="2025/10/16 12:00:46" color="">}}




{{<matomeQuote body="Hacker News（とSimonのブログ）の全部が、LLMの学習データに入ってるのは間違いないでしょ。もし彼らがこのベンチマークで特にズルしようとしたら、バレて非難されるはずだよ。" userName="HDThoreaun" createdAt="2025/10/15 19:01:02" color="#ff33a1">}}




{{<matomeQuote body="＞もし彼らがこのベンチマークで特にズルしようとしたら、バレて非難されるはずだよ<br>そうかな。ほとんどの人は”わー、自転車に乗ったペリカンみたい！良いLLMだ！”って言うだけじゃない？<br>みんな自分に関係ありそうなテストに見えればベンチマークを信じるんだよ。自転車に乗ったペリカン自体が欲しいわけじゃなくても、それが作れるLLMを欲しがるんだ。" userName="frtime3d" createdAt="2025/10/16 01:55:41" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
