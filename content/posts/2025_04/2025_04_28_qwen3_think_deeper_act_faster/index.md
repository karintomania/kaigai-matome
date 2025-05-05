+++
date = '2025-04-28T00:00:00'
months = '2025/04'
draft = false
title = 'Qwen3 より深く考え速く動ける！'
tags = ["AI", "LLM", "Qwen3", "推論", "性能評価"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> Qwen3 より深く考え速く動ける！

引用元：[https://news.ycombinator.com/item?id=43825900](https://news.ycombinator.com/item?id=43825900)




{{<matomeQuote body="LLMに物理問題を出すのが好きなんだ．人間にとっても難しい問題で、試したLLM（GPT o3，Claude 3.7，Gemini 2.5 Pro）は全部最初は正解できなかったんだ．でも、答えを説明させると eventually 正解するんだよね．ただ、一発で当たったやつはいない．Qwen3をmax thinkingで試したら、他のやつよりさらに間違えてて、まあ参考までにって感じかな．" userName="stavros" createdAt="2025/04/28 23:32:46" color="#785bff">}}




{{<matomeQuote body="俺も似たような簡単めな空間推論問題があるんだけど、reasoning モデルでも間違うし、全部じゃないんだよね．Qwen3 max reasoningでもダメだった．問題は＞コップにコイン入れて逆さまにガラスTに乗せ、鏡を下に滑らせたらheadsが見えた．コップと鏡をどけたら何見える？" userName="furyofantares" createdAt="2025/04/29 01:45:25" color="#38d3d3">}}




{{<matomeQuote body="よく言うじゃん、「アネクドートの複数形はデータ」ってさ．" userName="stavros" createdAt="2025/04/28 23:50:13" color="">}}




{{<matomeQuote body="みんな言う通り、AIは現在の最高レベルじゃなくて、どれだけ遠く、どれだけ速く進歩してるかで判断すべきだよね．将来のモデルが今回よりさらに間違えるのを見るのが待ちきれないよ．" userName="mrkeen" createdAt="2025/04/29 07:45:38" color="">}}




{{<matomeQuote body="個人的には（アネクデータだけど）、ベンチマークはすごくても日常で practical な進歩は長いこと感じない．得意なこと（ソース集め）はいいけど、苦手なこと（新しい問題やソースが少ない Liquidsoap［０］スクリプトとか）は terrible．情報が少ないと”思考”してないって分かるんだよね． Liquidsoap［０］ https://www．liquidsoap．info／" userName="kaoD" createdAt="2025/04/29 07:59:26" color="#ff33a1">}}




{{<matomeQuote body="それは「opinion の複数形は fact」って言うのと同じくらいだよ 😉" userName="rtaylorgarlock" createdAt="2025/04/29 00:07:07" color="">}}




{{<matomeQuote body="あんまり training set に入れたくないけど、まあいいか．はい、これだよ．＞今 3D プリンターで印刷中、一時停止．hotend を室温以上に保って後で温める vs 完全にオフにして後で全部温める．どっちがエネルギー使う？ 答えが変わる時間はある？ LLM は hotend がすぐ冷えるって仮定して間違えるけど、聞くと気づく．Qwen は気づかず、オフにするより hotend 30分加熱が良いって答えた．" userName="stavros" createdAt="2025/04/29 01:15:01" color="#45d325">}}




{{<matomeQuote body="まあ、literal に言えば、データってのは single point の集まりだよ（つまり俺たちが”anecdotes”って呼んでるものね）．" userName="stavros" createdAt="2025/04/29 00:18:53" color="">}}




{{<matomeQuote body="LLMはObjective-CとかSwift苦手だよねー。JSとかHTML、Pythonと比べるとさ。でもClaude Codeは簡単なランディングページ作るのに超使えることに気づいたんだ。静的なhtml+jsを出力してくれるからホストしやすいし、デザインもまあまあ見れる。コードは最高とは言えないし、正直人間が保守するのは無理な部分もあるけど、とりあえず役に立つよ。" userName="jim180" createdAt="2025/04/29 09:07:44" color="#ff5c5c">}}




{{<matomeQuote body="いや、Wittgensteinの規則追随のパラドックスとか、Shannonの標本化定理とか、有限個の点を通る無限多項式の法則（名前あったっけ？）とか、その他諸々、全部極限的には「いくら個別の事例を集めても、それは偶然以上のものにはならない」って考え方と一緒なんだよ。" userName="bcoates" createdAt="2025/04/29 00:39:18" color="">}}




{{<matomeQuote body="僕の最初の試み（思考の連鎖は省略するね）：<br>コインと鏡のパズルでLLMが出した答え（テール）とその理由だよ。鏡は下面を映すけど、見える上面はその反対側。だから鏡でヘッドが見えたら、上はテールだって解説してたよ。具体的で分かりやすい解説だった。" userName="natrys" createdAt="2025/04/29 02:07:43" color="#785bff">}}




{{<matomeQuote body="うん、それダメだったね。僕がLLMにいつも解かせている川渡りパズルで、Qwen3はダメだったよ。ChatGPT o3も苦労するくらい難しいんだけど、Qwen3はエラーに気づいても同じ失敗を繰り返すんだ。解けないパズルだってヒントを出しても、毎回自信満々にやり直してまた失敗する様子が面白かった。" userName="SamBam" createdAt="2025/04/29 02:24:51" color="#45d325">}}




{{<matomeQuote body="流体のアナロジーがあると分かりやすいかもね。水漏れしてるバケツがあるとする。全部水が漏れるのを待ってから最初から入れ直すのと、ちょくちょく満タンにしておくのと、どっちが水を無駄にするか？答えは、どれだけ水漏れがひどいか vs どれだけ長い間バケツの水位を維持する必要があるかによる。少なくとも僕はそのパズルをそう解釈してるよ。" userName="markisus" createdAt="2025/04/29 02:42:51" color="">}}




{{<matomeQuote body="でも、基本的な静的htmlのランディングページ作るのってめちゃくちゃ簡単だよね。JavaScriptなんて何に使うの？もしそれがhtmlファイルとスタイルシートだけなら、そりゃホストするのも簡単だよ。CSS20行くらい書けばまあまあ見れるページになるし。これって難しい問題じゃないんだよ。" userName="ggregoryarms" createdAt="2025/04/29 10:45:51" color="">}}




{{<matomeQuote body="僕はどのLLMからも、プロダクションで使えるPythonコードを全く得られてないんだ。簡単なスクリプトならまあいいけど、将来保守したりデバッグしたりする必要があるもの？全然ダメ。LLMを訓練してるひどいPythonコードがたくさん出回ってるんだろうね。だから、人気の言語であることはかえって役に立たないのかも。この時代は、基準がどれだけ低いかを透明にしてるね。" userName="copperroof" createdAt="2025/04/29 15:04:09" color="#ff5733">}}




{{<matomeQuote body="ただし、個別の事例の複数形は決してデータじゃないよ。交絡変数とかサンプリングバイアスをコントロールしないと、ゴミになるだけだからね。" userName="rwj" createdAt="2025/04/29 00:29:20" color="">}}




{{<matomeQuote body="Liquidsoapのスクリプト頼む前にどんなプロンプトとかコンテキスト与えてるのか気になるなー。<br>あとCursor使ってLiquidsoapのドキュメントとかコンテキストとして大量にあげたりしてみた？<br>そういうのがモデルの性能すごく上げると思うんだよね。<br>社内APIとかベストプラクティスとかパターンとかでうまくいくの見たりしたし。" userName="krosaen" createdAt="2025/04/29 12:18:40" color="#ff5733">}}




{{<matomeQuote body="うん、Cursor使ったよ。<br>Liquidsoapの本丸ごととか、オンラインリファレンスのURLとかコンテキストとして渡してみた。<br>コンテキストが大きすぎたりRAGが発動したりするかなーと思ってね。<br>でもダメだったなー。<br>やりたいことができなかったっていうか、ほとんどの場合そもそも動かなかったんだ。<br>エラーメッセージに合わせて試行錯誤しても、どんどんバカな非解決策にたどり着いて、結局ぐるぐる回るだけだった。" userName="kaoD" createdAt="2025/04/29 12:31:36" color="#38d3d3">}}




{{<matomeQuote body="へー、私のだとこう言ってたよ。<br>コインはガラスのテーブルに置かれてて、下から鏡で見ると上面が見える。<br>鏡は前後を反転させるけど左右はしないから、見た面（表）はそのまま認識できる。<br>コインは動いてないから、カップと鏡をどけて上から見ても、鏡で見えてたのと同じ面（表）が見えるって。" userName="SamBam" createdAt="2025/04/29 02:25:50" color="#785bff">}}




{{<matomeQuote body="どんな回答期待してんの？<br>ホットエンドの形状とか材質、温度差、部屋の空気の動きの速さ、空気の湿度とか、全部に依存するじゃん。" userName="bufferoverflow" createdAt="2025/04/29 05:17:26" color="">}}




{{<matomeQuote body="Qwen3-32bはかなり正確にやったみたいだね。<br>周囲温度までの時間ごとの熱損失を計算して、10分未満の短い休憩なら100Cで待機するって提案してた。<br>長い休憩なら完全にシャットダウンね。" userName="oscord" createdAt="2025/04/29 06:02:56" color="#ff33a1">}}




{{<matomeQuote body="でもそれって依存するかな？<br>漏れ出てる水（熱）が、補充しないといけないものじゃん。<br>水位が下がると（ホットエンドが冷えると）漏れは遅くなる。<br>だから補充すると、結局もっと水（熱）を追加してその分後で支払うことになる、つまり漏れが増えるってことだよね。" userName="Torkel" createdAt="2025/04/29 03:15:56" color="#45d325">}}




{{<matomeQuote body="Sonnet 3.7の非推論バージョンは正解だったって。<br>コインをガラスのテーブルにひっくり返して置くと、下から鏡で見えるのは底面。<br>鏡に「表」が映ってるなら、それはコインの底面が表ってことだね。<br>鏡は左右を反転させるけど、表裏はひっくり返らない。<br>だから、カップと鏡をどかして上から見ると、鏡で見た底面（表）の反対側、つまり「裏」が見えるはずだって。" userName="UltraSane" createdAt="2025/04/29 04:10:35" color="#785bff">}}




{{<matomeQuote body="構造的な仮定なしには必然性なんてなく、観察された規則性だけだ。<br>必然性なんて文字通り存在しないし、データの中にも見つけられない。<br>データ単体じゃ役に立たないんだ。<br>これに対するみんなの反応を見るのは面白いね。<br>Humeがこれを見抜いて、Kantが応答したんだ。" userName="whatnow37373" createdAt="2025/04/29 05:34:18" color="#ff33a1">}}




{{<matomeQuote body="ドキュメントもかなりいい感じ<br>メジャーな推論スタックは初日から全部サポートしてるみたいだし、サイズも色々あるね。Quantsもコミュニティの人たちと連携してたからすぐ出てる。性能はまだこれからだけど、細かいとこまで気が配られてて、これだけでも素晴らしいリリースだよ。MetaがLlama 4でやってたのとは大違い（明日のLlamaConでMetaが驚かせてくれるといいけどね）。[1] https://qwen.readthedocs.io/en/latest/" userName="natrys" createdAt="2025/04/28 21:01:42" color="#38d3d3">}}




{{<matomeQuote body="これ同意！ llama.cppとかtransformers、vllm、sglang、ollamaとか、メジャーなLLMフレームワーク全部にqwen3サポートのパッチを数週間前から当ててて、モデルウェイトも世界同時公開みたいに一斉に出したんだって。この細かさと努力はマジでヤバいね。" userName="Jayakumark" createdAt="2025/04/28 22:02:16" color="#38d3d3">}}




{{<matomeQuote body="Alibabaさんお願い！ gpt-image-1に対抗して、QwenとWanを組み合わせたマルチモーダル画像生成モデル出してほしい！ それができたらアート界が激変する。OpenAIがAI画像・動画市場を独占しようとしてるけど、オープンソース界隈じゃ開発が難しい。Alibabaさんならできるはずだよ。ファインチューン可能なオープンモデルが出たら、巨人たちの独占を止められる。お願いだから作って！ Wan Videoもすごいし、Alibabaさん応援してる！" userName="echelon" createdAt="2025/04/28 23:26:45" color="#785bff">}}




{{<matomeQuote body="AI画像の質は上がったけど、まだアートじゃないよね。chatgpt-imagen以前はひどかったし。オープンソースでchatgptレベルが欲しいって、Alibabaとかに無料労働求めてるだけじゃない？ OpenAIの独占より、みんな安く使いたいだけっぽい。アーティスト→ストックフォト→AI画像→chatgpt→もっと安く、って流れ。deepseek r1が価格競争を促したみたいに。<br>自分たちは稼ぎたいのに、誰にも払いたくない、オープンソースには無料労働求める…人間って変だよね。" userName="Imustaskforhelp" createdAt="2025/04/29 10:46:20" color="#38d3d3">}}




{{<matomeQuote body="一方で、ChatGPTの画像生成は使うのが超楽しいよ。ミームに使うような画像のために、人間のアーティストにお金払おうとは思わないな。" userName="fkyoureadthedoc" createdAt="2025/04/29 12:23:45" color="">}}




{{<matomeQuote body="あのKaty Perryですら、ツアーの背景にAI使ってるらしいけど…正直ひどい見た目だよ。 https://twitter.com/bklynb4by/status/1915514396421337171" userName="lovestory" createdAt="2025/04/29 11:38:26" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="＞ それができたらアート界がマジで永遠に変わる。って、どの世界線？ 数パーセント良くなったからって、それがアートを革新したって？ 数年前じゃなくて、今、これが？ Wow。" userName="bergheim" createdAt="2025/04/29 01:53:54" color="">}}




{{<matomeQuote body="今のテック界隈じゃ、何でも”世界を揺るがす”って言われがちだよね。それが本当かは毎回違うけどさ。chatgpt-4oの画像生成モデルだって、他の手法にはなかった弱点があると思う。でも、新しい＝絶対良い、世界を変える、って思われちゃうんだよね。" userName="horhay" createdAt="2025/04/29 10:45:00" color="">}}




{{<matomeQuote body="永遠に、って言ってもたぶん数週間でしょ。笑" userName="Tepix" createdAt="2025/04/29 05:51:33" color="">}}




{{<matomeQuote body="いやー，このコメント読んでニヤッとしちゃったよ，だってこれマジでそうなんだもん．技術の進歩が速すぎて，みんなすぐ「これが最高，永遠だ！」って言うけど，すぐに新しいのが出て前のを忘れ去る．DeepSeek R1，Grok 3，Claude 3.7，Gemini 2.5 Proとあっという間に入れ替わった．人間は結果を後付けで正当化しがちだけど，永遠なんてない，ただの今の話．AI界隈が忘れがちな文字通りの事実だね．" userName="Imustaskforhelp" createdAt="2025/04/29 10:53:31" color="#ff33a1">}}




{{<matomeQuote body="コミュニティの量子化メーカーと既にたくさん協力してるって言ってたよね．誰のことか気になるな？" userName="kadushka" createdAt="2025/04/28 21:15:04" color="">}}




{{<matomeQuote body="Unsloth［1］とBartowski［2］のことかなって思った．両方ともRedditで，Qwenがリリース前に重みにアクセスさせてくれたからスムーズだったって言ってたよ．［1］ https：//huggingface．co/unsloth<br>［2］ https：//huggingface．co/bartowski" userName="natrys" createdAt="2025/04/28 21:25:40" color="#ff5733">}}




{{<matomeQuote body="exl2量子化なら，https：//huggingface．co/LoneStriker もいるよ．" userName="Gracana" createdAt="2025/04/28 22:13:01" color="#ff5c5c">}}




{{<matomeQuote body="ダウンロード数で言うと： https：//huggingface．co/spaces/mvaloatto/TCTF これとか？" userName="dredds" createdAt="2025/04/29 19:46:12" color="">}}




{{<matomeQuote body="あー，Hugging Faceへのリンク，今切れてるね．" userName="sroussey" createdAt="2025/04/28 21:18:17" color="">}}




{{<matomeQuote body="今は大丈夫みたいだよ： https：//huggingface．co/collections/Qwen/qwen3-67dd247413f0e2…<br>スペースも最終的には読み込めるし，Hugging Faceがめっちゃ混んでるだけかも．" userName="daemonologist" createdAt="2025/04/28 21:25:49" color="#45d325">}}




{{<matomeQuote body="へー、そうなんだ。でもONNXも入れて欲しかったなー。" userName="sroussey" createdAt="2025/04/29 03:24:21" color="">}}




{{<matomeQuote body="新しいLLMが出る時の恒例で、Qwen 3（32B、OllamaでMac）でHacker Newsのスレを要約させたんだ。プロンプトと記事中の質問を混同してるみたいで、タスクはイマイチだけど”思考”プロセスが興味深いよ。詳細リンクは省略。" userName="simonw" createdAt="2025/04/29 04:39:16" color="#785bff">}}




{{<matomeQuote body="Redditで誰かが最初のUnslothリリースはバグってたって言ってたよ。もしそれ使ったなら、修正版でもう一回試せるかも？" userName="manmal" createdAt="2025/04/29 09:25:13" color="">}}




{{<matomeQuote body="そうだったみたいね。Unslothは一時HFにQ6以上だけ使えってメッセージ出してたよ。これが予測精度にどれくらい影響したかは分からないけどね。" userName="daemonologist" createdAt="2025/04/29 13:56:27" color="">}}




{{<matomeQuote body="これはメタデータで提供されてたチャットテンプレートのことだけだと思うよ（公式リリースでも壊れてたやつ）。でも、推論フレームワークは壊れたテンプレート渡されたらエラーになるだけだろうから、このテストには影響ないと思うな。" userName="hobofan" createdAt="2025/04/29 10:36:26" color="">}}




{{<matomeQuote body="これって”思考”モードを使いたくないタスクみたいだね" userName="anentropic" createdAt="2025/04/29 12:08:40" color="">}}




{{<matomeQuote body="僕のnanoagentベンチマークだと、Qwen3はすごいんだけど考えすぎ！Qwen3-0.6bはLlama 3.2 3bよりさらに性能良いみたい…でも6倍遅いんだ。Gemma3 4bに結果は似てるけど、後者（Gemma3）の方がApple M3ハードウェアで5倍速いよ。だから多分、メモリがボトルネックになるようなケース、例えばNvidia GPUとかで、より良いモデルを動かすのが有用なのかな？ベンチマーク詳細は省略。" userName="hbbio" createdAt="2025/04/29 07:26:55" color="#45d325">}}




{{<matomeQuote body="これらのモデルのクールなところは、”思考”プロセスを調整できることだよ、”思考なし”までね。でも、君の推論エンジンではできないかもだけど。" userName="phh" createdAt="2025/04/29 08:14:27" color="">}}




{{<matomeQuote body="今はできるようになったよ、提案ありがとう。<br>Qwen3 4bは通常のステップで一番良いデフォルトモデルみたいだね。プルリクリンクは省略。" userName="hbbio" createdAt="2025/04/30 06:12:20" color="#ff5733">}}




{{<matomeQuote body="プロンプトに”/no_think”って付ければいいだけだよ。詳しいことはここのブログを見てね。https://qwenlm.github.io/blog/qwen3/#advanced-usages" userName="ammo1662" createdAt="2025/04/29 09:02:17" color="#785bff">}}




{{<matomeQuote body="ハハ、これでこのスレッドまとめられなくなっちゃったじゃん。君のコメントで思考オフになっちゃうからさ！" userName="simonw" createdAt="2025/04/29 13:24:54" color="">}}




{{<matomeQuote body="ちなみにだけど、公式のREADMEには”/nothink”って書いてあるし、それが俺の場合はうまくいったよ。”/think”とか”/nothink”ってシステムメッセージかユーザーメッセージに入れると、Qwen3が考えるかどうか指示できるんだ。複数ターンの会話では、一番新しい指示が有効になるよ。https://github.com/QwenLM/Qwen3/blob/main/README.md" userName="Casteil" createdAt="2025/04/29 13:49:29" color="#45d325">}}




{{<matomeQuote body="ありがとう、”/nothink”うまくいったよ！それでさ、Qwen3 1.7bはGemma3 4bとスピードは大体同じくらいで、ちょっと劣るけど、これはかなりすごいと思う。Qwen3 4bは200個のテスト全部通ったし、Mistral Small 3.1 24bとかGemma3 27bより全然速いよ。" userName="hbbio" createdAt="2025/04/30 05:13:04" color="#ff33a1">}}




{{<matomeQuote body="ありがとう！どうも”ただ”って言葉は適切じゃなかったみたいだ。俺のベンチマークは会話形式でやってて、SystemMessageとUserMessageに構造化されたコンテンツを入れてるんだ。でもQwen3はSystemMessageに”/no_think”付けても無視するみたいなんだよね。構造化されたコンテンツに付けるのはちょっと変だけど試してみるか。temperatureみたいな”think”パラメーターがあればもっと良かったな。" userName="hbbio" createdAt="2025/04/29 12:26:31" color="#45d325">}}




{{<matomeQuote body="o1-previewも同じ問題あったよ！長い会話を渡してまとめさせようとしても、会話が質問で終わってたらo1-previewはそれに答えちゃって、指示を完全に無視するんだよね。個人的な問題設定で試した感じだと、Qwen3にはあんまり感動しなかったな。" userName="claiir" createdAt="2025/04/29 12:38:15" color="#ff5c5c">}}




{{<matomeQuote body="そういえば、Qwenモデルってシステムプロンプト苦手って言われてなかったっけ？" userName="littlestymaar" createdAt="2025/04/29 05:17:04" color="#38d3d3">}}




{{<matomeQuote body="それは知らなかったけど、モデルがこのタスクをめちゃくちゃにした理由はそれが原因かもね。システムプロンプトじゃなくて普通のプロンプトでこんな感じで試してみたんだ（llm-hacker-newsプラグインでhn:プレフィックス使って）。<br>llm -f hn:43825900 <br>  ’Summarize the themes of the opinions expressed here.<br>  For each theme, output a markdown header.<br>  Include direct ”quotations” (with author attribution) where appropriate.<br>  You MUST quote directly from users when crediting them, with double quotes.<br>  Fix HTML entities. Output markdown. Go long. Include a section of quotes that illustrate opinions uncommon in the rest of the piece’ <br>  -m qwen3:32b<br>これでずっと良くなったよ！Gistのリンクはこちら。https://gist.github.com/simonw/3b7dbb2432814ebc8615304756395..." userName="simonw" createdAt="2025/04/29 05:32:25" color="#38d3d3">}}




{{<matomeQuote body="入力トークンをたった2048だけに切り詰めるっぽいなー。" userName="croemer" createdAt="2025/04/29 12:12:07" color="">}}




{{<matomeQuote body="あーっ！ それ、Ollamaのデフォルト設定じゃん。<br>num_ctx設定を増やせば直せるよー。もう一回実行してみるね。<br>出力サイズはnum_predict設定でコントロールできるんだ。" userName="simonw" createdAt="2025/04/29 13:21:04" color="#785bff">}}




{{<matomeQuote body="Qwenはそこそこいい感じだけど、DeepSeekはシステムプロンプトが苦手っぽいね。<br>Qwen使うならパラメータいじりまくらないとダメだよ。" userName="notfromhere" createdAt="2025/04/29 05:27:05" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="QwenやDeepSeekがCCPの世界観で学習されてて、Tiananmen Squareみたいな検閲があるか気になるんだよね。<br>でも1年以上使われてるけど、問題になった報告ってあんまり聞かない。<br>これって予想より問題じゃないのかな？<br>それとも検閲の仕方が違うのかな？" userName="simonw" createdAt="2025/04/28 21:52:08" color="#ff5c5c">}}




{{<matomeQuote body="話すのを避けるって部分は、フロントエンドレベルの検閲だと思うなー。<br>API側では検閲されてないんじゃない？" userName="eunos" createdAt="2025/04/28 21:54:04" color="">}}




{{<matomeQuote body="それは違ーう！<br>少なくとも俺のローカルの1.5B版モデルではね。<br>オフラインモードで使うと回答ブロックされるよ。<br>Perplexityには検閲されてないバージョンがあるけど、どうやってるかは公開されてないと思うな。" userName="nyclounge" createdAt="2025/04/28 23:23:55" color="#ff33a1">}}




{{<matomeQuote body="前の人が言ってるのは、中国の世界観にモデルが合わせてるって話で、質問に答えないってことじゃないんだ。<br>試しに「Taiwanは国？」ってAPIで聞いたら、Deepseekは「中国の一部」ってCCPよりの回答だった。<br>Chatgptは「定義によるけど現実には国みたい」って客観的な回答だったよ。<br>これでDeepseekがCCPのイデオロギーに合わせてるのがわかるだろ？" userName="johanyc" createdAt="2025/04/29 01:39:13" color="#38d3d3">}}




{{<matomeQuote body="今んとこ、これらのモデルはUSのモデルより検閲が少ないよ。<br>とはいえ、支配権争いしてる最中だから、今検閲するのはバカげてる。<br>もし勝って独占状態になったら、締め付けが始まるだろうね。" userName="CSMastermind" createdAt="2025/04/28 23:24:34" color="#ff5c5c">}}




{{<matomeQuote body="俺が同じことやろうとしたら、DeepSeekは質問に答えるのを拒否したよ。" userName="pxc" createdAt="2025/04/29 01:58:48" color="">}}




{{<matomeQuote body="USのモデルからどんなコンテンツが削除されてるの？<br>ポルノとか、化学兵器の作り方とか？<br>歴史的なイベントについてはそうじゃないの？" userName="sisve" createdAt="2025/04/29 07:33:19" color="">}}




{{<matomeQuote body="PerplexityがR1の検閲を突破したなんて知らなかったけど、これ完全に無検閲らしいね。アカウントなくても誰でも試せるよ：https://labs.perplexity.ai/。HuggingFaceもOpen R1に取り組んでたみたいだけど、どれくらい進んだのかな？" userName="theturtletalks" createdAt="2025/04/28 23:30:55" color="#785bff">}}




{{<matomeQuote body="俺の限られた経験だとさ、LlamaとかGemmaみたいなモデルは、QwenとかDeepseekよりずっと検閲が厳しい気がするな。" userName="horacemorace" createdAt="2025/04/28 22:01:59" color="">}}




{{<matomeQuote body="この”世界観チューニング”って、モデルが注目を集めるための現れかもね。天安門事件の投稿がSNSで拡散されたことで、技術的なメリットよりモデルの存在が広まったと思う。特に無料Deepseekがこれで知られたのは、新しいAI発表がSNSでバズる流れに合ってるね。" userName="pbmango" createdAt="2025/04/28 21:56:39" color="#ff33a1">}}




{{<matomeQuote body="その結論に至るデータあるのかな？「DeepSeekに検閲したのは、天安門検閲のスクショ見たら消費者が無料DeepSeekを気に入るって知ってたから」ってのは考えにくいよ。スクショが話題を呼んだってのはあるけど、それはちょっと文脈的に無理があるかな。" userName="refulgentis" createdAt="2025/04/28 22:15:08" color="">}}




{{<matomeQuote body="それってAPIを何に使うかによると思うよ。例えば、コーディングに使ってるなら政治的な見解なんて誰が気にする？ 個人的には、政治はLLMの利用目的のごく一部だと思うな。" userName="johanyc" createdAt="2025/04/29 01:45:29" color="">}}




{{<matomeQuote body="オープンウェイトモデル自体と、Deepseekのアプリには重要な違いがあるんだよ。ホストされてるモデルにはフィルターがあるけど、オープンウェイトにはないんだ。" userName="Me1000" createdAt="2025/04/29 06:27:13" color="">}}




{{<matomeQuote body="＞完全に無検閲＜br＞ごめん、違うよ。そうじゃないんだ。問題があることについては何も書けないよ。性的な話を書かせたり、マスタードガスの作り方を聞いてみて。標準APIのDeepseek R1だと、こういう質問は検閲されないんだ。PerplexityのバージョンはDeepseekより検閲されてると言っていいと思うよ。" userName="ranyume" createdAt="2025/04/29 01:08:11" color="#ff33a1">}}




{{<matomeQuote body="どのモデルでもいいから、イスラエルとHamasについて聞いてみて。" userName="neves" createdAt="2025/04/29 00:14:46" color="">}}




{{<matomeQuote body="エンジンによって違うね。Googleはナチスの画像に少数派を入れたり。Bingは昔、白人の子供だけのノルウェー誕生日画像作れたけど今はダメ。イギリスのグルーミングスキャンダルとか聞くのも良いかも。予想より酷くはないけど、話そうとしないことには戸惑うね。" userName="maybeThrwaway" createdAt="2025/04/29 08:28:49" color="#ff5733">}}




{{<matomeQuote body="PerplexityがポストトレーニングしたR1 1776についてのブログ記事だよ：https://www.perplexity.ai/hub/blog/open-sourcing-r1-1776" userName="yawnxyz" createdAt="2025/04/29 00:02:18" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
