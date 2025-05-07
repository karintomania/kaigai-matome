+++
date = '2025-04-30T00:00:00'
months = '2025/04'
draft = false
title = 'シャオミ MiMo 推論モデルとは'
tags = ["AI", "LLM", "プログラミング", "強化学習", "機械学習"]
featureimage = 'thumbnails/blue_green5.jpg'
+++

> シャオミ MiMo 推論モデルとは

引用元：[https://news.ycombinator.com/item?id=43842683](https://news.ycombinator.com/item?id=43842683)




{{<matomeQuote body="論文からさ、コードデータに対するRL（強化学習）のステップの扱い方がすごく気になったんだ。unit testingを走らせて、難しくても解けるコード生成タスクで訓練してたんだって。他のモデルもこういう訓練ステップやってんの？<br>＞Code Dataについて：質の高い訓練セットはオープンソースとか新しく集めた問題集で集めてるんだ。テストケース無い問題は削除。完璧な解答があってもテストに通らない奴もダメ。解答無い奴は、高度な推論モデルで16回試しても何もテストケース解けない奴は捨てる。数学データと同じで、MiMo-7BのSFT版で簡単な問題はフィルタリングしてるよ。この厳しい過程で3万問のコード問題ができたんだって。<br>＞各RLの反復では、何千もの問題で報酬を計算するんだけど、それぞれの問題にテストケースが何百もあるんだ。報酬計算の効率上げてGPUの遊休時間なくすために、大量のunit testを並列実行できるonline judge環境を開発したんだよ。" userName="Arcuru" createdAt="2025/04/30 19:53:02" color="#ff5733">}}




{{<matomeQuote body="unit testing無しでRL訓練とかやってるモデルあんの？そんなことあるなら、他のモデル開発者は精度とか気にしないってことになるし、それはびっくりだね。小さいモジュールの問題ならできるかもだけど、20万トークンもの入力がある問題じゃ無理じゃない？" userName="loufe" createdAt="2025/05/01 12:40:15" color="">}}




{{<matomeQuote body="なんで中国のAIモデルってEnglish-firstなの多すぎんの？自分たちの国民にサービスする気ないの？それとも、中国語ファーストだと西側で注目されないからとか？" userName="lvl155" createdAt="2025/04/30 13:23:26" color="">}}




{{<matomeQuote body="中国には”良い”検索エンジンが無いのが理由の一つだと思うよ。一番人気のBaiduもGoogle searchに比べたらゴミみたいなもんだもん。中国語の質の高い訓練データはSNSとか動画サイトのが多いだろうけど、それを集めて綺麗にするのがすっごい大変なんだと思う。" userName="choutianxius" createdAt="2025/04/30 14:16:12" color="#ff5c5c">}}




{{<matomeQuote body="高品質な訓練資料の大部分が英語なんじゃないかなって俺も思うね。" userName="enlyth" createdAt="2025/04/30 13:42:31" color="">}}




{{<matomeQuote body="うん、君の言う通りだよ。Common Crawlっていう”オープンインターネット全部”みたいな訓練コーパスだと、英語が43%でダントツなんだ。他の言語は二桁にも届かないよ。次に多いのがRussianで6%、その次がGermanで5%って感じ。" userName="sigmoid10" createdAt="2025/04/30 13:50:58" color="#785bff">}}




{{<matomeQuote body="もう流れは逆になったよ。今の20歳以下の世代はタッチパネルで育ったんだ。だからpinyin入力とかいらなくなったんだよね。キーボードが無くても気にしない子が多いよ。" userName="throwaway519" createdAt="2025/04/30 14:40:55" color="">}}




{{<matomeQuote body="なんで沢山のアメリカのモデルは、アメリカじゃそんなに使われてない何百もの言語に対応してるの？多言語だと技術的に知識プールが大きくなるから？ビジネス的にTAMが大きくなるから？<br>LLMの訓練に英語データセット使うのはデフォルトだよ、君が示唆してるのとは逆でしょ。" userName="overfeed" createdAt="2025/04/30 16:49:35" color="#ff5c5c">}}




{{<matomeQuote body="そのデータどこで手に入れたの？WikipediaによるとRussianは7位だよ https://en.wikipedia.org/wiki/Languages_used_on_the_Internet<br>Russianがトップ5に入ってるのはWikipediaの閲覧数だけなんだよね。ロシア語圏のインターネットはどんどん小さくなってるんだよ。" userName="Svoka" createdAt="2025/04/30 17:40:52" color="#38d3d3">}}




{{<matomeQuote body="Common Crawlの言語統計によると、英語が一番多いデータらしいよ<br>https://commoncrawl.github.io/cc-crawl-statistics/plots/lang..." userName="div72" createdAt="2025/04/30 18:19:03" color="">}}




{{<matomeQuote body="一番人気のあるBaiduはGoogle searchと比べるとゴミみたいだってさ<br>Google searchが年々クソになってるの見ると、Baiduは相当ヤバいに違いないよ…" userName="littlestymaar" createdAt="2025/04/30 20:36:16" color="">}}




{{<matomeQuote body="それは明らかに別の話だよ<br>アメリカのモデルがEnglish-firstで他の言語もサポートしてるみたいに、これらのモデルもMandarin-firstで他の言語をサポートすることは可能だけど、今起きてるのはそうじゃないんだよね" userName="achierius" createdAt="2025/04/30 16:50:47" color="#45d325">}}




{{<matomeQuote body="ずいぶん昔の1995年に中国の都市部に行った時、ほとんどみんな英語を少し話してたよ<br>バイリンガル社会なんだ" userName="34679" createdAt="2025/04/30 13:57:07" color="">}}




{{<matomeQuote body="”もし仮にMandarin-firstなモデルがあったら、どう見える？”<br>現在のモデルが”English-first”だっていう考えには異議ありだな<br>それは事実に基づかない根拠のない意見だよ<br>きっとね、これらのモデルはSoTA（最高性能）だとMandarinでも思うよ<br>そう考えると、”なんで中国以外では英語対応モデルとして売られてるの？”とか”なんで英語がそんなに得意なの？”っていう質問は、単純につまらない質問なんだよね<br>答えは明らかだからさ" userName="overfeed" createdAt="2025/04/30 17:01:24" color="#ff5c5c">}}




{{<matomeQuote body="そうだよ<br>Googleが使える中国語圏では、誰もBaiduを使ってないね" userName="sidibe" createdAt="2025/04/30 23:38:46" color="">}}




{{<matomeQuote body="どのLLMも基本的に同じような大量のデータで学習してるんだ<br>ほとんど英語で、ほとんどが海賊版の本とかそんな感じだよ" userName="chvid" createdAt="2025/04/30 13:43:57" color="#ff5c5c">}}




{{<matomeQuote body="”もし仮にMandarin-firstなモデルがあったら、どう見える？”<br>”12 ＋ 89”みたいな言語に依存しないプロンプトを与えたとき、出力される説明テキストのほとんどがMandarinになるはずだよ<br>このテストによると、XiaomiのMiMo-7B-RLはEnglish-firstモデルだね" userName="yorwba" createdAt="2025/05/01 07:19:23" color="#ff33a1">}}




{{<matomeQuote body="科学研究、特にAIベンチマークでは英語が事実上の標準語になってる状況じゃないか？<br>中国語で何か試すのは明らかに不可能だよ、翻訳が必要になっちゃうからね" userName="whynotmaybe" createdAt="2025/04/30 13:32:30" color="">}}




{{<matomeQuote body="Mandarinモデルは確かにあるけど、アクセスできてもどう使うの？どんな知識が入ってるの？Mandarinで符号化された知識体系ってどんな感じ？中国外でMandarin使える人ってそんなに多くないのが悲しい現実。たとえ「流暢」だって言ってる非ネイティブMandarin話者でも、テキストで意図を取り違えたり、直訳で意味不明になったりするんだ。中国国内だとLLMはMandarinベースだろうね。外ではEnglishが自然な選択肢に見える。皮肉な話、Mandarin話せない素人がMandarinベースのモデルを試す一番良い方法は、別のLLMでプロンプトをMandarinに翻訳してもらうことだろうね。悲しい未来を見てるのか、それとも輝かしい未来か。時間が教えてくれるさ。" userName="bilbo0s" createdAt="2025/04/30 13:49:18" color="">}}




{{<matomeQuote body="”12 + 89”はLatin alphabet使ってるし、この文脈では言語非依存じゃないよ。借用語は元言語でより頻繁に出てくるはずだね。Mistralモデルが”Rendezvous”とか”coup d’etat”みたいな「言語非依存」フレーズにどう答えるか気になるなぁ。" userName="overfeed" createdAt="2025/05/01 19:03:09" color="">}}




{{<matomeQuote body="数千年の文学が何でもないわけないでしょ…" userName="thoroughburro" createdAt="2025/04/30 17:08:58" color="">}}




{{<matomeQuote body="Pinyinで入力が時代遅れだって？<br>え？Pinyin入力は中国で断トツ一番人気の入力方法だよ。手書き入力してる人なんてほとんど見ない。それはEnglishが勝つこととは全く関係ない。Latin alphabetを使った中国語の入力技術なだけ。中国でEnglishが流暢な人はあまり多くないんだ、特に話し言葉はね。" userName="olalonde" createdAt="2025/04/30 15:43:41" color="">}}




{{<matomeQuote body="ソースは？これって「見出しを一度見ただけ」病みたいな感じだね。特に中国語の文字を「calligraphy characters」なんて呼んでる点が、それが一般的な用語みたいに聞こえるし。" userName="-__---____-ZXyw" createdAt="2025/04/30 17:20:17" color="">}}




{{<matomeQuote body="たぶん、クローラーが非Englishソースをうまくインデックスしてないんだろうね。Yandexがデータセット公開したら面白いのにな！" userName="tough" createdAt="2025/04/30 22:22:36" color="">}}




{{<matomeQuote body="それは違うよ。例えば、Deepseek-R1は中国語で質問されたら中国語で推論する。English-firstじゃないんだ。" userName="Leary" createdAt="2025/04/30 16:23:12" color="">}}




{{<matomeQuote body="それ、間違ってるよ。多くのLLMは他のLLMが生成した合成データで訓練されてるんだ。（間接的に、著作権侵害された本で訓練されてる可能性はあるけど、直接ではないよ。）" userName="eru" createdAt="2025/05/01 11:56:53" color="">}}




{{<matomeQuote body="中国のインターネットはほとんど、大企業が厳しく管理するいくつかのクローズドガーデンで成り立ってるんだ。各社がデータを守るために何千人もエンジニアを雇ってるから、クローラーは単純には機能しない。一番人気のウェブサイトの多くはアプリオンリーだしね。良いLLMを訓練するのに必要なコーパスを手に入れるのは不可能だよ。" userName="yyhhsj0521" createdAt="2025/04/30 15:57:11" color="">}}




{{<matomeQuote body="あと、たくさんの人がウェブでEnglishを第二言語として書いてる。それが母語の存在感を減らして、Englishの存在感を増やしてるんだよね。" userName="simongray" createdAt="2025/05/01 07:04:25" color="">}}




{{<matomeQuote body="数学記号は”Latin”だけでなくMandarinなど色々な言語で共通なんだ。Chinese文字で数学を書くのはEnglishで数を言葉で書くくらい珍しいよ。Frenchの« rendez-vous »や« coup d’État »のようにEnglishと区別できる例とは違うね。" userName="yorwba" createdAt="2025/05/01 21:36:52" color="">}}




{{<matomeQuote body="これ，7Bモデルとしては信じられないくらいコーディング性能が高いね．俺が使ってるGemini Pro 2．5は67．8点で，これは57．8点だったから，60．6点だったGemini 2．5 Flashにすごく近いんだ．llama4で聞いた話の後だと，評価結果にはかなり懐疑的になってるけど，非公開の評価でどうなるか楽しみだよ．マジで感動したね．" userName="siliconc0w" createdAt="2025/04/30 17:19:46" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="GGUFバージョン（LM StudioとかOllama向けだよ）： https：／／huggingface．co／jedisct1／MiMo−7B−RL−GGUF" userName="jedisct1" createdAt="2025/04/30 12:49:48" color="#ff33a1">}}




{{<matomeQuote body="ollamaでGGUFファイルを使うとき，みんなは普通，一緒に使うmodelfileを作ってるの？それとも，ollamaのデフォルト設定が新しいモデルでも動くことを期待してるだけ？https：／／github．com／ollama／ollama／blob／main／docs％2Fmodelfile．．．．" userName="rahimnathwani" createdAt="2025/04/30 14:34:12" color="">}}




{{<matomeQuote body="Georgi GerganovがGGUFを設計した目的の一つは，他のファイルがいらないことだったんだ．仕様の bullet point ＃1 に「Single−file deployment」「Full information」って書いてあるよ．複数ファイルの混乱から解放されたのに，ollamaがそれを復活させたんだからね ：／" userName="Havoc" createdAt="2025/04/30 17:25:46" color="#ff5c5c">}}




{{<matomeQuote body="ollamaのModelFileに入れるパラメータのほとんどは，llama．cppにコマンドラインフラグで渡すものと同じだよ．モデルごとに一つの設定セット（同じtemp， top＿p， system prompt…）しか使わないなら，GGUFファイルに入れられると思う（形式は拡張可能だからね）．でも二つ違うセットが欲しい場合は？どこかに保存する必要があるよね．それはllama．cppならシェルスクリプト，ollamaならModelFileになるかな．（パラメータの組み合わせごとに新しい（巨大な）GGUFファイルを作りたくないなら，ね．）" userName="rahimnathwani" createdAt="2025/04/30 18:03:41" color="#785bff">}}




{{<matomeQuote body="だから俺たちはxdelta3とかrdiff，gitを使うんだよ．" userName="novaRom" createdAt="2025/04/30 21:44:25" color="">}}




{{<matomeQuote body="ollama pull でmodelfileもDLされるんだ。変更はmodelfile編集して新モデル作成で。Open WebUIでの手順はshow→コピペ編集→パラメータ変更だよ。modelfileワークフローは面倒だけど，ollamaは手軽に始められるのは良いね．VLLMやllama．cppより楽だよ．" userName="monkmartinez" createdAt="2025/04/30 15:05:55" color="#ff5c5c">}}




{{<matomeQuote body="ごめん、もっとちゃんと説明すればよかったね。Ollamaのライブラリのモデルじゃなくて、huggingfaceから直接ggufファイルをダウンロードする場合のことだよ。" userName="rahimnathwani" createdAt="2025/04/30 15:23:24" color="">}}




{{<matomeQuote body="`ollama pull hf.co/unsloth/Qwen3-30B-A3B-GGUF:Q4_K_M`とやるとmodelfileも一緒に来るんだ。でもこのやり方だとテンプレートとかパラメータにエラーがあるかもね。使う前にGGUF/GGMLに変換しないといけないんだ。もちろん、bf16 safetensorsから特定のOllamaモデルを変換して作ることもできるよ。" userName="monkmartinez" createdAt="2025/04/30 15:37:21" color="#45d325">}}




{{<matomeQuote body="そうなんだよね、僕がやるとModelfileにはFROMとTEMPLATEしかなくてPARAMETERsがないんだよ。<br>`ollama pull hf.co/jedisct1/MiMo-7B-RL-GGUF:Q4_K_M`<br>`ollama show --modelfile hf.co/jedisct1/MiMo-7B-RL-GGUF:Q4_K_M`" userName="rahimnathwani" createdAt="2025/04/30 17:16:39" color="#45d325">}}




{{<matomeQuote body="きっとOllamaがどこでも生のハッシュを使ってるのは、NNのギガバイト単位のファイルを毎回コピーするのを避けるためだと思うよ。" userName="o11c" createdAt="2025/04/30 15:35:45" color="">}}




{{<matomeQuote body="もしかしたら僕が何か間違えてるのかも！Modelfileのパラメータを変えると、全体がコピーされちゃうんだよ。知ってる限りだと、ファイルを直接編集するんじゃなくて、num_ctxをまともな値にするために別の38GBもあるデカいファイルを作らなきゃいけないんだ。" userName="monkmartinez" createdAt="2025/04/30 15:41:00" color="">}}




{{<matomeQuote body="パラメータ（promptとか）は新しいModelfile（`ollama create`に渡すやつ）でのみ設定しようね。前のOllamaモデルをFROMで参照するんだ。ModelfileのパラメータはGGUFのハードコードされたパラメータを上書きできるよ（GGUF側はバグってることもある）。Mimoはストップトークンとかテンプレートが欠けてるらしい（専門じゃないけど）。この方法だと`ollama list`に別エントリで出るけど、コピーされるのはModelfileだけでGGUFはコピーされないよ。APIを使えば”一時的に”上書きもできるし、UIによっては楽だよ。" userName="o11c" createdAt="2025/04/30 15:49:32" color="#38d3d3">}}




{{<matomeQuote body="僕は最初はだいたいデフォルトを使って、もし使う予定があるならModelfileを使うかな。Ollamaが使ってるModelfileをダンプすれば、作業用のテンプレートが手に入ると思うよ。" userName="memhole" createdAt="2025/04/30 15:08:46" color="">}}




{{<matomeQuote body="Its funny to see benchmarks where they omit the top performing models like O3 (Which is the best model in many benchmarks currently) and Gemini Pro/Claude 3.7." userName="gizmodo59" createdAt="2025/04/30 14:40:47" color="">}}




{{<matomeQuote body="あれらはもっとずっと大きいモデルだし、プロプライエタリなんだよ。そういうモデル提供者は、蒸留版を特定して提供してないんだ。ベンチマークで比較されてるモデルのほとんどが7Bモデルってことに気づいて。例外もオープンウェイトモデル（Qwen-2.5-32B-RL-Zero）だよ。32BパラメータでもMiMo-7Bの方が性能上回ってるんだ。" userName="daveguy" createdAt="2025/04/30 14:46:06" color="#45d325">}}




{{<matomeQuote body="たぶんここでの目的は、オフラインとかモバイルハードウェアで動くように最適化されてる、似たようなモデルと比較することだと思うよ。" userName="erikig" createdAt="2025/05/01 14:54:29" color="">}}




{{<matomeQuote body="MiMo-7BがQwen-32BとかOpenAI o1-miniよりすごくて、7Bなのにmathやcodeのベンチマークで同等かそれ以上らしいよ。これってpretrainingとRLHFの最適化がモデルのサイズより大事になったってこと？ それとも特定の能力のベンチマークがうまくできてるだけかな？" userName="badmonster" createdAt="2025/05/01 01:27:13" color="#785bff">}}




{{<matomeQuote body="READMEに”RL”ってしか書いてないんだけど、どんなRL使ったのか書いてほしいな。研究者さん、忙しいのはわかるけど、こういう大事な情報は省略しないでほしいな。" userName="xpe" createdAt="2025/04/30 23:24:09" color="">}}




{{<matomeQuote body="テクニカルレポートにはRLの詳しいこと、例えばGRPOっていう目的関数とか書いてあるらしいよ。READMEについては、この分野の人は”RL”って言えばだいたいわかるんじゃないかな。" userName="ainch" createdAt="2025/05/04 13:15:48" color="">}}




{{<matomeQuote body="たぶん”Reinforcement Learning”のことだよね。AIを大学で勉強してからもう１０年も経つんだけど、”RL”って言うだけでダメなのかな？ Q-Learningとか、もっと細かいアルゴリズム名を知りたいってこと？" userName="paulluuk" createdAt="2025/05/01 10:09:59" color="">}}




{{<matomeQuote body="それって”妥当か”じゃなくて”透明か”って話だと思うんだ。”RL”ってただ書いてあるだけじゃなくて、どういうRLを使ったのか詳しく書いてないのは、ちゃんとした科学的な知識交換じゃない気がする。競争上の理由でわざと曖昧にしてるのかな？ LLMだとよくRLHFとか使うけど、それすら書いてないし。どういうやり方したのか、どういうトレードオフがあったのか、ちゃんと知りたいんだよね。最近のML／AI論文の書き方にはがっかりすることが多いけど、これは特に残念。AIシステム開発者の考え方とかプロセスが見たいんだ。" userName="xpe" createdAt="2025/05/02 13:00:00" color="#ff5733">}}




{{<matomeQuote body="そう言われると、完全に同意だわ。でもこれって知識交換っていうより、オープンソースプロジェクトの公開って感じじゃないかな？ どう使うかの説明だけあれば十分みたいな。モデルを自分で改善したり再現したりするのは期待してないのかもね。もしそうならすごいけど！" userName="paulluuk" createdAt="2025/05/06 05:19:30" color="">}}




{{<matomeQuote body="このモデル、Xiaomi 15 series phonesのAIアシスタントに使うのかな？ たぶん使うよね。どんな感じになるのか想像つかないけど。" userName="Jotalea" createdAt="2025/04/30 11:43:41" color="">}}




{{<matomeQuote body="７Bモデルでこのベンチマーク数値はありえないでしょ。" userName="ramesh31" createdAt="2025/04/30 10:45:59" color="">}}




{{<matomeQuote body="小さなモデルもどんどん良くなってるんだよ。大手の主要モデルほどニュースにならないけど、どれもかなり使える。最近適当な12Bモデルをollamaで使ってみたら、びっくりするくらいちゃんとしてたし、動かしてたマシンでもサクサクだった。１年くらい前じゃ考えられなかったね。" userName="strangescript" createdAt="2025/04/30 11:13:12" color="#785bff">}}




{{<matomeQuote body="そうそう、前から思ってたんだけど、普段使いはローカルモデルがメインになるって考えが裏付けられた感じだね。" userName="apples_oranges" createdAt="2025/04/30 11:16:30" color="#ff5733">}}




{{<matomeQuote body="でも誰がアップデートし続けるの？何が彼らのモチベーションになるんだろう？それが想像できないんだよね。ちょっと曖昧だ。" userName="wg0" createdAt="2025/04/30 11:36:32" color="#38d3d3">}}




{{<matomeQuote body="前に試した時、最初は感動したんだ。でも問題は、おすすめの本トップ10のうち最初の3つしか実在しなくて、あとは適当に混ぜ合わせた幻覚だったこと。「魔法が好き？ Harlew Porthouse シリーズを読んでみて。 JRR Marrow 作で、孤児の魔法使いが Hogwesteros で冒険する話だよ」みたいな。コンテキストの限界に近づくほど、この創造的で派生的な狂気は深まる。面白いけど、使い道は限られてるね。" userName="justlikereddit" createdAt="2025/04/30 11:29:54" color="#785bff">}}




{{<matomeQuote body="open source projects は誰がメンテナンスしてるの？何が彼らのモチベーションなの？" userName="cruzcampo" createdAt="2025/04/30 11:37:34" color="#ff5c5c">}}




{{<matomeQuote body="LLMs は search engines じゃないんだよ…" userName="omnimus" createdAt="2025/04/30 11:47:14" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ほとんどの open source projects と違って、 ML 開発には巨大な GPU clusters や soulcrushing な human labor が必要。無料の時間でコード書いてるだけじゃ無理。 ML は open source hardware に似てて、アイデア実現コストが高すぎて商業プロジェクトに追いつくのは難しいんだ。" userName="jsheard" createdAt="2025/04/30 11:48:33" color="#ff33a1">}}




{{<matomeQuote body="それは的確な指摘だね。 GPU clusters は大きいと思うけど、残りはボランティア作業でもいけそうだ。" userName="cruzcampo" createdAt="2025/04/30 11:50:47" color="">}}




{{<matomeQuote body="それか、 GPU 計算を共有するとか。 Crowd sourcing だね。" userName="wg0" createdAt="2025/04/30 15:56:37" color="">}}




{{<matomeQuote body="どのモデル？俺は ollama が遅すぎたから、ほとんど API 使ってるよ。" userName="nickip" createdAt="2025/04/30 11:41:15" color="">}}




{{<matomeQuote body="LLM の benchmarks は、今のところほとんどデタラメだよ。 hype cycle が落ち着いて正気を取り戻すまで数年待ちな。" userName="otabdeveloper4" createdAt="2025/04/30 14:31:50" color="">}}




{{<matomeQuote body="ローカルモデルだけじゃなくて、カスタムアプリもたくさん作ってるんだ。この半年で、自分で作った特注アプリの数が劇的に増えたよ。レシピや献立計画に使うやつ、全メールをチェックして毎日要約してくれるやつ、天気予報と土壌水分を考慮した灌漑システムのインテリジェントプランナーも作り終えたところ。なんかイラつくことがあって、欲しい機能がある市販やオープンソースのソリューションがないなら、もう自分で作っちゃうんだ。それが最高にいい。友達や家族に使わせてって頼まれたけど、断ったよ。サポートとか機能リクエストとかやりたくないしね。" userName="AustinDev" createdAt="2025/04/30 20:07:14" color="#ff33a1">}}




{{<matomeQuote body="「非現実的だと思うなら、https://qwenlm.github.io/blog/qwen3/を見て、qwen3-4Bのベンチマーク数値を確認してみてごらんよ。」" userName="GaggiX" createdAt="2025/04/30 10:59:33" color="">}}




{{<matomeQuote body="結局どうなるかって？MicrosoftとCopilot、AppleとSiriだよ—たとえモデル作りを外注したとしてもね。デスクトップLinuxにとっては大変な挑戦になるだろうね。" userName="ebiester" createdAt="2025/04/30 13:41:42" color="">}}




{{<matomeQuote body="全く同感だよ。ウチの会社はAIに何千万もかけるって言ってるけど、この初期段階でも僕の実験では、小規模でローカルで動くモデルで多くの技術やビジネスのタスクには十分だって分かったんだ。このアプローチは明確なプライバシーの利点があるし、API経由の従量課金LLMと比べるとコスト面でも有利だろうね。" userName="mring33621" createdAt="2025/04/30 14:34:33" color="#ff5c5c">}}




{{<matomeQuote body="僕の推測だけど、テストに対して過学習してるんじゃないかな。" userName="bearjaws" createdAt="2025/04/30 12:25:02" color="">}}




{{<matomeQuote body="“本物の”アプリ開発にAIを使ったことがないんだけど（主にChatGPTで小さな関数やスクリプトを生成してもらうくらい）、これを始めるにあたって、何かおすすめのツールやリソースはある？" userName="the_pwner224" createdAt="2025/05/01 04:35:02" color="">}}




{{<matomeQuote body="おおお、Seti＠Homeみたいなセットアップがうまくいくのが見える気がするな。" userName="cruzcampo" createdAt="2025/04/30 16:26:23" color="">}}




{{<matomeQuote body="これから楽しみな面白い展開は、それらを検索エンジンに繋げることだろうね。プロプライエタリモデルはもうこれをやってるし、オープンソース版もそんなに遅れてないよ。最近のQwenモデルは知識面ではそんなにすごくないけど、agentic機能では最高クラスの一つだ。ワクワクする時代がすぐそこだ！" userName="Philpax" createdAt="2025/04/30 12:54:37" color="#ff5733">}}




{{<matomeQuote body="「ベンチマークの数値が現実的じゃない」「ベンチマークはデタラメ」って意見、どういう意味？不正？学習？設定不明？実用性との乖離？もっと詳しく教えてよ。<br>MiMoと他のモデル比べた？小型モデルが予想より良いって話はどう思う？" userName="xpe" createdAt="2025/05/01 00:03:56" color="#38d3d3">}}




{{<matomeQuote body="大きなオープンソースプロジェクトの場合、そのコードを使って儲けてる企業があるよね。MicrosoftとかGoogleとかIBM（他にもたくさん）が、Linuxをすごく使ってるからサポートしてるみたいにね。これと同じことが、これらのモデルにも当てはまるかもしれないな。もし本当に製品や社内のワークフローに統合されるようになったら、企業がムダな競争じゃなく、良い実装を維持するために協力する市場が出てくるだろうね。" userName="simiones" createdAt="2025/04/30 12:28:19" color="">}}




{{<matomeQuote body="言うは易しだけど、学習ってのはたいてい”big iron” GPUとか、一般人が持ってるより全然上のハードでやるんだよね。それに、クラスターは数百ギガビットのネットワークで動いてる。たとえゲーミングカードにスケールダウンしてボランティア集めたとしても、インターネットの低帯域幅と高遅延が問題になるだろうね。" userName="jsheard" createdAt="2025/04/30 16:35:03" color="#38d3d3">}}




{{<matomeQuote body="Open Web UIみたいなのを使えば、検索との連携は今でも結構うまくいくよ。" userName="hedgehog" createdAt="2025/04/30 15:48:16" color="">}}




{{<matomeQuote body="モデルにさせたいタスクの多くは、暗黙のうちに検索がサブタスクとして含まれることが多いんだ。例えば”サンティアゴへの旅行を計画して”とか、”Pythonスクリプトを書いて”とかね。検索が必要ないタスクは比較的少なくて、テキスト処理（校正とか）はそうだけど、計算タスクはLLMが苦手なんだ。" userName="achierius" createdAt="2025/04/30 16:56:51" color="#38d3d3">}}




{{<matomeQuote body="モデルは汎用的なんだから、検索エンジンとしての機能はその一部ってことさ。" userName="justlikereddit" createdAt="2025/04/30 13:05:55" color="">}}




{{<matomeQuote body="まさに！基本モデルは”Kardashian”みたいな無駄な知識はやめて、論理、数学、プログラミングとかに絞るべきだ。モデルは検索ツールを使うのが得意になるべきで、結果を真似るんじゃなくてさ。小さいモデルはその方が速くて実験しやすいし、最低限に絞れば高性能でチューニングも簡単、巨大なコンテキストも扱えるようになると思うんだ。" userName="mirekrusin" createdAt="2025/04/30 12:35:11" color="#ff33a1">}}




{{<matomeQuote body="これはパッケージ配布と同じような形になるだろうね。Linuxディストリビューションを使ったことある人ならわかると思うけど、いつもいくつか.edu（大学）のドメインからパッケージが提供されてるじゃん。大手テクノロジー企業は特化したモデルを持つかもしれないけど、Linuxのパラダイムに従うと、大学の研究からもっと最先端だけど気難しいモデルが出てくる可能性が高いね。" userName="WorldPeas" createdAt="2025/04/30 15:10:31" color="#45d325">}}




{{<matomeQuote body="Gemma 3、めっちゃ好きだな。27Bの量子化版は結構色んなことに使えると思うよ。それに、ガードレールが全くないabliterated版（リンク参照）を使えば、あの”ごめんなさい、私はフレンドリーで安全なモデルなのでそれはできません、あと子供たちのことも考えてください”っていうウザい応答なしに、すっごく面白い犯罪小説とか書かせられるんだぜ。" userName="patates" createdAt="2025/04/30 12:36:43" color="#ff5733">}}




{{<matomeQuote body="Qwen3とか小さめのgemmaは、かなり性能良くて速いね。俺のm4 pro max（RAMめっちゃ積んでるけど）でのベンチマークの数字をgistに貼っといたよ（リンク参照）。小さめのモデルなら、スペックの良い開発用Macでも十分動くと思うぜ。" userName="estsauver" createdAt="2025/04/30 11:50:48" color="#ff5733">}}




{{<matomeQuote body="へぇ、すごいベンチマークだね。このモデルと話すの楽しみだ。7Bモデルが25Tトークンで学習されてるのがマジすごいわ（Metaレベル！）。それに、reasoningを焼き付けたゼロからのRLモデルってアプローチも面白いね。効率上がるらしい。Xiaomiのモデルは知らんけど、 stats 見るとローカルで動かす reasoning モデルとして超有望に見えるよ。" userName="vessenes" createdAt="2025/04/30 15:14:22" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
