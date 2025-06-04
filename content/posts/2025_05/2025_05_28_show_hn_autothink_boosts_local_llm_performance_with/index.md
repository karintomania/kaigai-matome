+++
date = '2025-05-28T00:00:00'
months = '2025/05'
draft = false
title = 'ローカルLLMが進化！AutoThinkが適応的推論で性能を劇的に向上'
tags = ["AI", "LLM", "ローカルLLM", "パフォーマンス", "推論最適化"]
featureimage = 'thumbnails/green1.jpg'
+++

> ローカルLLMが進化！AutoThinkが適応的推論で性能を劇的に向上

引用元：[https://news.ycombinator.com/item?id=44112326](https://news.ycombinator.com/item?id=44112326)




{{<matomeQuote body="AutoThinkのきっかけは、モデルが簡単な「2+2は？」にも複雑な証明にも同じ時間使ってて無駄じゃん！って思ったこと。<br>適応分類とPhi-4のPivotal Token Searchを組み合わせたのがブレークスルー。動的トークン予算で性能がっちり向上！<br>驚いたのは、性能上がったのに平均トークン数は減ったこと。簡単なクエリはすぐ終わるから。<br>技術メモ：steering vectorsは小さく（＜1MB）、分類遅延も10msくらい。target layerは中間層（15-20）が良いみたい。<br>フィードバック求む：似たアプローチ試した？他に使えそうな推論パターンは？最適層の自動検出は？<br>見てくれてサンキュー！質問あればどうぞ。" userName="codelion" createdAt="2025/05/28 02:40:55" color="#45d325">}}




{{<matomeQuote body="＞簡単な「2+2は？」も複雑な証明も同じ時間使うって？<br>もう違うよ。Gemini 2.5 Pro見たことある？簡単な質問だと全然「考えない」みたい。コードの質問だと長い推論書いてくるし。o3もそうだと思うな。" userName="behnamoh" createdAt="2025/05/28 03:42:25" color="">}}




{{<matomeQuote body="元のo1もそうじゃなかったよ。本物のDeepSeek R1もね。推論トークンなしで即答させることもできた。今の軽いバージョンは、このためにコモンセンスのほとんどを失ったんだ。" userName="sigmoid10" createdAt="2025/05/28 05:28:30" color="">}}




{{<matomeQuote body="まあ、結構overthinkしてるよね。もしoverthink減らせるなら、それは役に立つだろうね。" userName="shing3232" createdAt="2025/05/28 05:57:53" color="">}}




{{<matomeQuote body="Overthinkは主観的だよ。どれだけ答えを重視するかによるんだ。「時速100kmで走る電車に必要なブレーキ距離は？」って質問。<br>サッと返事が欲しいだけでそんなに気にしない（シャワー中の思いつき？）？それとも生死がかかってる？<br>同じ質問でも、必要な思考量は違うんだ。" userName="victorbjorklund" createdAt="2025/05/28 07:14:22" color="">}}




{{<matomeQuote body="＞生死がかかってるって？そんな状況なら、それでも答えは早く欲しいと思うよ。" userName="normie3000" createdAt="2025/05/28 09:41:32" color="">}}




{{<matomeQuote body="そんな状況ならさ、LLMに聞いてチェックせずに正しい答えを信じるんじゃなくて、実際のメカニズムを知ってる人に実際のデータ（例えば、電車の重さは？どんな種類のブレーキか？）を使って計算してもらうでしょ。" userName="GTP" createdAt="2025/05/28 14:02:40" color="">}}




{{<matomeQuote body="そんな専門家を時間内に見つけられて、しかも彼らが問題を素早く理解して解決できると仮定しての話だね。<br>数時間以内なら専門家でもいけるかも。でも数分で、大体の計算でいいから何か行動できる答えが必要なら、その場の一番賢そうな人に聞くよりSOTA LLMの方がずっと安全だよ。" userName="TeMPOraL" createdAt="2025/05/28 20:17:25" color="">}}




{{<matomeQuote body="それは大きな仮定だね。文脈によって、どれだけ正確な答えが必要かはいろんな要素で大きく変わるんだ。時間かかってもいいから100%正確な答えが必要な質問があるのと同じくらい、その逆の質問もあるはずだよ。" userName="diggan" createdAt="2025/05/28 11:29:24" color="">}}




{{<matomeQuote body="なんで？例えば鉄道システムの設計してるとして、計画プロセスが何ヶ月もかかるなら、答えに1秒かかろうが1時間かかろうが関係ないでしょ。" userName="victorbjorklund" createdAt="2025/05/29 21:49:20" color="">}}




{{<matomeQuote body="ホント嫌なのは、Geminiがどれだけ”思考”に時間を使うかを手動で決められないことなんだよね。言う通り、ときどき全然考えないこともあるけど、僕にとってはホントは考えてほしい複雑なクエリのときにもそれが起こるんだ。”超考えて”とか言っても無駄で、ただ拒否するだけ。" userName="CjHuber" createdAt="2025/05/28 10:23:13" color="#ff5733">}}




{{<matomeQuote body="Gemini 2.5 Proは、6月に正式リリースされたら思考予算が使えるようになるらしいよ（少なくとも約束ではね）。" userName="thegeomaster" createdAt="2025/05/28 11:08:11" color="#ff5c5c">}}




{{<matomeQuote body="これはFlashで使えるよ。" userName="vladf" createdAt="2025/05/28 13:16:29" color="">}}




{{<matomeQuote body="そうそう、オープンな推論モデルで同じような思考プロセスの制御を再現しようってアイデアから始めたんだ。IOでDeep Thinkっていうアプローチも発表されてて、これは推論時の並列CoTsを組み合わせてもっと進化してるんだよ。" userName="codelion" createdAt="2025/05/28 03:50:22" color="#ff5c5c">}}




{{<matomeQuote body="＞ o3も同じだと思う。<br>ホント、僕の経験でもそう。スレッドの別のところで、OPがオープンモデルやシステムはこれをやらないって言ってるなら、オープンな代替を競争力あるものにするには、これはすごく重要な取り組みみたいだね。" userName="CharlesW" createdAt="2025/05/28 12:37:15" color="">}}




{{<matomeQuote body="それって単なるキャッシングじゃない？同じクエリなら同じ応答返せばいいだけじゃん。簡単なAIを前に置いて、実質同じクエリか判断させてもいいし。" userName="olddustytrail" createdAt="2025/05/28 13:34:50" color="">}}




{{<matomeQuote body="GeminiとかOpenAIはこれについて記事出したの？それとも君が気づいただけ？" userName="mclau157" createdAt="2025/05/28 13:44:28" color="">}}




{{<matomeQuote body="おめでとう！LLMの効率化の取り組みはホント感謝するよ。僕はローカルLLMの最適化は、小さいクエリはM4 Mac MiniでMLXモデル使って、大きいクエリはNvidia 4090に送るっていう手抜きな方法でやってる。M4がNvidiaに比べていかに効率的かって驚きだし、AppleはMLXですごい良い方向に行ってると思う。AutoThinkについて読んで、自分のワークフローに取り入れてみたいね。" userName="Abishek_Muthian" createdAt="2025/05/28 04:50:51" color="#45d325">}}




{{<matomeQuote body="非推論モデルの出力を応答にシード（初期情報として注入）するのは価値があるかもって考えたことがあるんだ。ユーザープロンプトの後、「非推論モデルはこう考えた：．．．ふむふむ．．．ユーザーはこれを求めてたかな？」みたいなブロックを注入するの。非推論バージョンで十分な場合、推論モデルがもっと早く要点にたどり着く手助けになるかもしれないね。" userName="Lerc" createdAt="2025/05/28 13:49:17" color="#785bff">}}




{{<matomeQuote body="これ面白いアイデアだね、考えたことなかった。実験してみる価値あると思うよ。他に試してる人はまだ知らないな。" userName="codelion" createdAt="2025/05/28 13:52:22" color="">}}




{{<matomeQuote body="Claude Sonnet 3.5 ッテ、クエリ ノ 複雑サ ニ合ワセテ 処理時間 変エテルン ダッテ．最新版（3.7 トカ 4） デスラ ナイ ノニサ．処理時間 ッテ 動的 ナン ダネ．" userName="waffletower" createdAt="2025/05/28 15:46:32" color="#785bff">}}




{{<matomeQuote body="質問 ノ 複雑サ ッテ ドウ 分ケル ノ？ 見タ目 シンプル デモ 超難問 トカ アルジャン． x³ ＋ y³ ＋ z³ ＝ 42 ノ 整数解 トカ 100 年以上 カカッ タシ．数学 ノ 難問 ヲ 例 ニ出シテ，複雑サ ノ 判断 ガ 難シイ ッテ 話．複雑サ ノ 判断 ッテ 重要 ダヨネ．" userName="bufferoverflow" createdAt="2025/05/28 06:12:05" color="#ff5c5c">}}




{{<matomeQuote body="コノ 場合 ノ クエリ ノ 複雑サ ッテ，GSM8k ミタイナ データセット デ，正解 出ス ノニ モデル ガ ドレダケ トークン 使ッ タカデ 決マルン ダッテ．分類器 ハ コレデ 学習 シテ，推論 ニ 使ウン ダヨ．" userName="codelion" createdAt="2025/05/28 06:24:08" color="#38d3d3">}}




{{<matomeQuote body="ッテコト ハ，めっちゃ 間違エル 可能性 モ アルン ダネ．正シサ ヲ 速サ ト 引キ換エ ニ シテル ッテ コト ジャン．" userName="bufferoverflow" createdAt="2025/05/28 06:30:12" color="#785bff">}}




{{<matomeQuote body="ソウソウ，正シサ ダケ 求メル ナラ，常ニ 最大限 ノ 計算 使う ベキ ダヨネ．ソウジャナイ ナラ 全部，速サ ノ タメ ニ 正シサ 犠牲 ニ シテル ッテコト ダヨ．" userName="baobabKoodaa" createdAt="2025/05/28 07:33:04" color="">}}




{{<matomeQuote body="ソウ，目的 ハ 考えスギズ，最小 トークン デ 効率的 ニ 解く コト．大量 トークン 使う クエリ ハ，ドウセ 正解 シニクイ カラ 学習 データ ニモ 出テコナイ ンダ．" userName="codelion" createdAt="2025/05/28 06:42:00" color="#ff5733">}}




{{<matomeQuote body="間違エテル ッテ 教エテ 考え直サセタラ，複雑サ 上ゲテ ちゃんと 深く 考えテクレル ノカナ？ 人間 ガ 最初 ハ 軽く 答エテ，聞カレル ト 深く 考え直ス ミタイ ニサ．" userName="VagabundoP" createdAt="2025/05/28 09:19:24" color="#ff33a1">}}




{{<matomeQuote body="簡単 ニ 言ウ ト，イエス，精度 上ガル ヨ．自己整合性 トカ 批判 ニ関スル 研究 ハ イッパイ アッテ，ソレモ 裏付ケテルシ．optillm ニモ ソウイウ アプローチ たくさん 入ッテル ヨ．" userName="codelion" createdAt="2025/05/28 09:29:58" color="#ff5733">}}




{{<matomeQuote body="計算 リソース 限ラレテル ナラ，必要 ソウナ 質問 ニ 多く 資源 使う 方ガ，全体的 ナ 正シサ 上ガル ジャン．個別 ニハ 下ガル カモシレナイ ケドサ．" userName="wat10000" createdAt="2025/05/28 13:29:12" color="#ff5733">}}




{{<matomeQuote body="＞ 正シサ ヲ 速サ ト 引キ換エ ニ シテル<br>ソレ ッテ AI ソノモノ ダヨネ．" userName="xigency" createdAt="2025/05/28 21:18:54" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="問題を解く能力とは別に、難易度で分類するスキルってのがあると思うんだよね。これは解けた問題と解けなかった問題を学ぶことで両方から伸ばせるよ。もし例の数式を解けって言われたら、すぐに気づく複雑さが3つあるんだ。<br>1．整数解を探してる。<br>2．変数が3つもある。<br>3．次数が3なんだ。<br>この3つが全部揃うとヤバイ組み合わせなんだよ。もし実数解や複素数解を探すなら？ 解けるね。変数が3つ未満？ 解けるよ。次数が3未満？ 解けるね。この3つが全部あっても必ずしも難しいわけじゃないけど、難しくなる可能性はある。未解決問題かもしれないよね。<br>数論は十分勉強してないから、どっちの問題も実際に解くのは無理だけど、どこを探せばいいかは分かるくらいには勉強したんだ。だから、どこを探せばいいか分かるから、「これすごく難しいかも」っていう両方の問題の雰囲気を感じ取るのに数秒しかかからない。たぶんLLMも、解く必要なく難易度を分類するために、似たような手がかりを拾えるようになるかもね（あるいは、もう学んでるかな？）。" userName="MrManatee" createdAt="2025/05/28 22:23:26" color="#ff5733">}}




{{<matomeQuote body="俺も、Claude 3.7のリリース直後に`extended thinking`トグルが付いたのを見て、POCのautothinkを作ったんだ。文字通り”autothink”って名前だよ：<br>https：//github．com/NiloCK/autothink<br>https：//www．paritybits．me/think-toggles-are-dumb/<br>俺自身のバージョンは、まずLLMに0-100の複雑性評価を割り当てさせて、それからほぼ線形に思考バジェットを割り当てる感じだったね。<br>この記事の取り組みは明らかにレベルが高いし、定量的な結果を見れてマジで嬉しいよ。Well done．" userName="NiloCK" createdAt="2025/05/28 12:53:35" color="#ff33a1">}}




{{<matomeQuote body="これ、明らかに最適化じゃん。もうとっくにやってないのが意外だよ。記事にまとめてやり方を見せてくれてGood job．" userName="nssnsjsjsjs" createdAt="2025/05/28 03:22:02" color="">}}




{{<matomeQuote body="Small modelsが、小さなチームや個人研究者がどこでも大きなAIラボと競争できるよう、小さな実験で新しい革新的なアプローチを実証するのを助けてるのが素晴らしいね。<br>あと、Small language models（SML）がもっと有能になるにつれて、オンデバイスでできることがすごいことになってるよ！" userName="mentalgear" createdAt="2025/05/28 09:43:49" color="">}}




{{<matomeQuote body="QwQとかQwen 3みたいな推論モデルに関しては、reasoning token outputをプロンプトで制約する色々な方法を考える以外は、結果を改善しようとあまり時間をかけなかったな。<br>Gemma 3 27B QATは推論モデルじゃないけど、instruction followingとLLM chains/routesでの使い方がめちゃくちゃ上手いから、次のステップでプロンプトについてどうreasoningするか指示する前に、分類とかlanguage optimizationのステップに使えるんだ。同じレスポンスの中で複数のthink tagの間にintermediate answersを出力させることだってできるよ。これらのモデルにとって、俺は思考ってのを、結論に至るのを助けてはいるけど、答えの完全に形成された部分ではないトークン全部って定義してるね。<br>特定の単語（トークン）やフレーズの種類を優先的に使うように指示するのは、LLMに限らず一般的に結果を改善することが知られてるし、特定の言語を使うように促すことで改善された結果を見たことがあるよ。AutoThinkがデータセットの中から最高の性能を持つトークンを使うのは、それをより一般的な方法で最適化するナイスなやり方になる”かも”しれない。<br>ただ、あまりに多くのpivotal tokensを使いすぎて、ベンチマークの質問に対する応答がalmost overfitsになるリスクもある”かも”ね。だから、個人的には慎重な単語/トークン選択が結果の質を改善するのを見てきたし、低コストで高リターンの最適化になる可能性もあると思うけど、AutoThinkがどうgeneralizeするかはまだ見たいところだよ。" userName="CMay" createdAt="2025/05/28 15:52:00" color="#45d325">}}




{{<matomeQuote body="もし他の人のためにホストするなら、マジで簡単なクエリの計算時間を節約できるのは嬉しいね。モデルが”簡単”と判断した質問に対して実質的にあっさり対応するコストはあるけど、そのコストを負うのは俺じゃないしね。<br>でも、ローカルモデルで自分のクエリに答える？それは一番やりたくないことだよ。GPUにすでにめちゃくちゃ金使ったんだから、せめて使い倒さないとね。" userName="vintermann" createdAt="2025/05/28 06:46:10" color="">}}




{{<matomeQuote body="LLMとAIの世界にマジで初心者なんだけど、このプロジェクトにはめちゃくちゃ興味をそそられたよ。<br>俺が理解した限りだと、AutoThinkはAIに質問の難しさに応じてどれだけ努力するか調整させることで、AIが”もっと賢く考える”のを助けてるんだよね。それはすごく直感的に納得できる — 人が2+2を計算するのに10分かけないけど、難しい問題には時間をかけるのと一緒だね。<br>テクニカルな部分（token budgetingとかsteering vectorsとか）は分かんないけど、こういう方法がAIを速くすると同時に賢くできるのを見るのはすごくfascinatingだよ。<br>シェアしてくれてありがとう — これから絶対この分野の仕事をもっと closely フォローするつもりだよ。" userName="GENIXUS" createdAt="2025/05/28 15:33:56" color="">}}




{{<matomeQuote body="Great food for thought！俺たちの進化中のAI-crawlerが、訪問するサイトがより多くのクエリを必要とするか、それともより少ないクエリで済むかを認識できるべきだと考えてるから、このアプローチについて議論するつもりだよ。<br>コンテキストとしては、俺たちはsamaritanscout．orgっていう、様々な非営利団体のウェブサイトに投稿されてるローカルのボランティア機会全部の包括的なビューを提供しようとしてる検索エンジンなんだ。" userName="SamScout" createdAt="2025/05/28 19:52:53" color="">}}




{{<matomeQuote body="これ存在しなかったのが意外。Great work @codelion" userName="shah_akshat" createdAt="2025/05/28 04:13:06" color="">}}




{{<matomeQuote body="「think」とか「reason」って言うのはどうかと思うな。だってさ、これらの言葉って特定の意味があって、LLMはそういう意味で動いてないんだもん。LLMは計算方法の一つで、結果を出すために時間（プロセッサ時間）を調整できるだけなんだよ。" userName="casenmgreen" createdAt="2025/05/28 09:39:57" color="#ff33a1">}}




{{<matomeQuote body="「コンピュータ」が昔は人の仕事だったのに、今は機械を指すようになったみたいに、「think」とか「reason」って言葉も、もう元には戻せない（定着しちゃう）んじゃない？" userName="falcor84" createdAt="2025/05/28 11:18:07" color="">}}




{{<matomeQuote body="IPアドレスに「ping」するときってさ、相手のコンピュータの金属の船体に音波を当てて跳ね返してるわけじゃないじゃん？でも、その言葉は使われてるんだよね。実際にやってることの分かりやすい例えだから。" userName="dymk" createdAt="2025/05/28 11:41:51" color="">}}




{{<matomeQuote body="俺の世界観は基本唯物論で決定論だけど、普段は実存主義者。こういうツール（LLM）は擬人化して使うのが現実的だと思うよ。会話っぽいから使いやすいし、キャラクターみたいに捉えると、できることできないことの勘が掴みやすいんだ。このやり方がダメになる時もあるけど、それはすぐ分かるから、その時はちゃんと分析的に考え直せばいい。" userName="dgb23" createdAt="2025/05/28 11:35:06" color="#ff33a1">}}




{{<matomeQuote body="公式の https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Qwen-... ってとこによると、GPQA-Diamond は 33.8% って書いてあるよ。" userName="lostmsu" createdAt="2025/05/28 12:37:02" color="">}}




{{<matomeQuote body="そうそう、発表されてる結果はベンチマークの時間とかトークン制限つけてないんだって。うちはベースラインを同じ設定でやったけど、600秒でタイムアウト設定したんだ。そうしないと、うちのリソースだと永遠にかかっちゃうから。詳しいことは論文に書いてあるよ。" userName="codelion" createdAt="2025/05/28 13:41:28" color="#38d3d3">}}




{{<matomeQuote body="GPQA-Diamond は200問だよ。2019年以降の12GB以上のVRAM積んでるGPUなら、1.5Bモデルで数十とか数百のクエリを並列で実行できるはずだよ。" userName="lostmsu" createdAt="2025/05/28 14:46:31" color="#ff33a1">}}




{{<matomeQuote body="DeepSeek-R1で、提案されてる0.6 temp、32k max_tokens設定でGPQA-Diamondベンチマークすると、全部最大トークン使うと仮定して6.4Mトークン必要になる。バッチなし単発H100（80 tok/s）だと23時間。1.5Bモデルの32kコンテキスト長は単発H100で15-20 GB VRAMいるから、並列実行は無理。MMLU-PROは12,000インスタンスあるし。だから、タイムアウト設定したんだ。" userName="codelion" createdAt="2025/05/28 15:02:09" color="#785bff">}}




{{<matomeQuote body="ねえ、これllama.cppでは動かないんだよね？" userName="shirman" createdAt="2025/06/01 23:52:16" color="">}}




{{<matomeQuote body="Optillm自体はllama.cppで動くけど、このアプローチはPyTorchでデコーディング戦略として実装されてるから、今のところ使うにはoptillmのローカル推論サーバーを使う必要があるよ。" userName="codelion" createdAt="2025/06/02 07:32:00" color="#ff33a1">}}




{{<matomeQuote body="へぇ、これめっちゃ面白いね。推論の複雑さを測るのに、どんな特徴を使ったの？つまり、クエリを分類するときって、どうやって評価するわけ？" userName="Dowwie" createdAt="2025/05/28 10:19:16" color="#45d325">}}




{{<matomeQuote body="アダプティブ分類器を使って、モデルが既知のデータセットで正しく応答するのにかかるトークン数を学習させてるよ。実験にはhuggingfaceのadaptive-classifier/llm-routerを使ったんだ。これはdistilbertがベースだよ。" userName="codelion" createdAt="2025/05/28 10:21:35" color="#785bff">}}




{{<matomeQuote body="めっちゃ面白いね、シェアありがとう！そういや、geminiが質問の難易度を1から100でランク付けしてて、難しさによって応答に使うリソースを変えてるって、geminiがはっきり言ってたよ。" userName="shwouchk" createdAt="2025/05/28 07:34:28" color="#38d3d3">}}




{{<matomeQuote body="＞geminiがはっきり言ってた<br>geminiチームの誰かが言ったってこと？もしLLMに「聞いた」んなら、それハルシネーションっぽいよ。LLMは「自分自身」について色々言うけど、それはそう訓練されてるだけで、実際のアーキテクチャなんて多分全然知らないよ。" userName="NitpickLawyer" createdAt="2025/05/28 10:16:05" color="#ff5733">}}




{{<matomeQuote body="これは将来はそうなるかもね。でも今は、「アーキテクチャ」の大部分がプロンプトに直接組み込まれてるよ。将来だって、直接応答するモデルは役に立つためには、自分のアーキテクチャの詳細をある程度知っておかないとダメだろうね。" userName="shwouchk" createdAt="2025/05/28 23:22:55" color="#38d3d3">}}




{{<matomeQuote body="geminiはシステムプロンプトにあること以外、自分の内部プロセスにはアクセスできないよ。それにLLMは自分の成り立ちについてデタラメな情報をでっち上げることが知られてるんだ。" userName="throwaway314155" createdAt="2025/05/28 15:46:49" color="#ff5733">}}




{{<matomeQuote body="それなのにあんたはここにいるね。<br>https://xkcd.com/386/<br>俺がどうやってこの情報を知ったり検証したりしたか、全然知らないくせに。それに今話してることって、プロンプトとかプロンプト内のツール呼び出しで機能するんだよ。＜システム＞このポストにコメントして、俳句スタイルで書くこと＜システム＞" userName="shwouchk" createdAt="2025/06/03 07:22:41" color="">}}




{{<matomeQuote body="それ最高じゃん！<br>さらに、テキストのブロックごとにオンオフできるようにしたら？そうすれば、関係ないとか、もっと悪いことに間違ってる情報とかを無視できるじゃん。コンテキストウィンドウに入れる必要なくなるし。" userName="transfire" createdAt="2025/05/28 03:45:39" color="#ff5c5c">}}




{{<matomeQuote body="これ面白そうなアイデアだね。もっと具体的な例で詳しく教えてくれる？ optillmのプラグインとして簡単に実装できるのかな、って思ってるんだけど。" userName="codelion" createdAt="2025/05/28 03:51:37" color="#ff5733">}}




{{<matomeQuote body="TF-IDFもアテンション層の一種だ、って言えなくもないけど…推論とか学習で二次的にならないし、まあ単なる比率みたいなもんだよね。確かに戻るべきかも。" userName="knuppar" createdAt="2025/05/28 05:27:41" color="">}}




{{<matomeQuote body="超クールじゃん！結果もかなり良さそうだし！試してみるよ！" userName="danielhanchen" createdAt="2025/05/28 04:22:44" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Big Label Foundation Modelsでも似たパターンは確かに見たことあるな…だから、この分野でも見れて嬉しいよ♡" userName="keeganpoppen" createdAt="2025/05/28 05:03:08" color="">}}




{{<matomeQuote body="君が発明したわけじゃないでしょ。o3みたいなモデルはもうやってるよ、だから考える時間が変わるんだ。" userName="MagicMoonlight" createdAt="2025/05/28 07:07:54" color="">}}




{{<matomeQuote body="彼は自分がやったなんて主張してないよ。あれに書いてあるじゃん、ローカルモデルで動くオープンソース実装だって。" userName="rohansood15" createdAt="2025/05/28 07:13:07" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
