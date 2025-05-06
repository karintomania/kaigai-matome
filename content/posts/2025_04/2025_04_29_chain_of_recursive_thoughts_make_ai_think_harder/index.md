+++
date = '2025-04-29T00:00:00'
months = '2025/04'
draft = false
title = 'AIの思考力を高める自己議論テクニック 再帰的思考とは'
tags = ["AI", "LLM", "思考", "研究", "機械学習"]
featureimage = 'thumbnails/cyan3.jpg'
+++

> AIの思考力を高める自己議論テクニック 再帰的思考とは

引用元：[https://news.ycombinator.com/item?id=43835445](https://news.ycombinator.com/item?id=43835445)




{{<matomeQuote body="LLMは他のLLMの検証には向いてないんだ。GPT-4もSATソルバーがないと間違った証明出すし、自己批判させると精度下がるって研究もある［2］。検証は生成より難しいから、コンパイラみたいな外部チェッカーが必要。LLM複数使うより、強い1つ＋検証器の方が効率良いし精度も上がるみたいだよ。" userName="dudeinhawaii" createdAt="2025/04/30 02:21:09" color="#45d325">}}




{{<matomeQuote body="参照先見ると、これってタスク次第だって分かるね。”批評が作成より簡単”って分野は多いよ。本や映画、ソフトウェア開発とか。でも、数学的証明の間違い探しみたいに、検証自体に推論が必要なタスクだと、LLMに検証させても性能が劇的に向上するかっていうと疑問だね。" userName="zurfer" createdAt="2025/04/30 07:09:43" color="#ff33a1">}}




{{<matomeQuote body="数学の証明は、原則として比較的検証しやすい問題だよ。コンピューターで検証できる形式にできるんだ。弱いモデルに翻訳させてツールで検証、とかね。証明を作るのは大変だけど、検証はもっと機械的。証明を見つけるよりはるかに簡単かもしれないね。" userName="aoeusnth1" createdAt="2025/04/30 15:57:43" color="#38d3d3">}}




{{<matomeQuote body="LLMは数学的証明を推論できないんだ。もしできたら、それはもうLLMとは違うものだね。" userName="simulator5g" createdAt="2025/04/30 20:21:35" color="">}}




{{<matomeQuote body="LLMっていう言葉、最近はツール呼び出しできたり、MoEで専門ソルバー組み込んできたり、色々多様なモデル含むようになってて、もうオーバーロードされてる感あるよね。でもみんなそういうバリエーションもLLMって呼ぶんだ。" userName="mycall" createdAt="2025/04/30 21:44:19" color="">}}




{{<matomeQuote body="良くも悪くも、これはLLM as a Judgeの論文［0］が出て以来、LLM評価の研究論文では事実上の標準になってきてるよ。LangChainやLlamaIndexみたいなフレームワークでもRAGパイプラインの評価に結構組み込まれてるね［1］。" userName="meander_water" createdAt="2025/04/30 04:15:46" color="">}}




{{<matomeQuote body="俺はむしろ良い方向だと思うよ。LLM as judgeは完璧じゃないし人間レベルでもないけど、結果は確実に向上するんだ。人間の判断を置き換えるんじゃなくて、安価な第一段階としてすごく良い。時間とともにどんどん良くなると思うね。" userName="swyx" createdAt="2025/04/30 05:52:49" color="#ff5c5c">}}




{{<matomeQuote body="＞…だから、ちゃんと世界を推論できるチェッカーが必要。同意。LLMに生成コードの単体テストも一緒に作らせて、それを実行するのはどう？（既存テストも）これで確実な検証ができると思うんだ。<br>・コードはコンパイルする？<br>・テストは通る？<br>AIはテスト結果で間違いを直せるよね。" userName="hu3" createdAt="2025/04/30 03:04:21" color="#ff5c5c">}}




{{<matomeQuote body="これ、うまくいくけど、俺の経験だとテストをちょっと手直しして、よく見ないとダメなんだよね。じゃないと、AIは手抜きしてテストをパスさせるために自明なやつ作っちゃう。それに、テストケースをハードコードしないように明示的に指示する必要がよくあるんだ。" userName="nojs" createdAt="2025/04/30 04:04:48" color="#ff33a1">}}




{{<matomeQuote body="＞テストケースをハードコードしないように…<br>それはプロパティベーステストでできるよ。でも、テスト失敗をAIにフィードバックし続けると、どんどん悪いコードになる悪循環に陥るケースに何度も遭遇したんだよね。" userName="eru" createdAt="2025/04/30 18:10:28" color="#38d3d3">}}




{{<matomeQuote body="でもさ、 LLM にテストを評価させるのって結構うまくいくんだよね。特にハードコードされたテストケースを探させる時なんかは。" userName="macrolime" createdAt="2025/04/30 10:46:08" color="#ff33a1">}}




{{<matomeQuote body="確かに、テストランナーはモデルを現実世界に近づけて、フィードバックループを作る方法だよね。万能薬じゃないけど、すごく役に立つことがある。" userName="dwaltrip" createdAt="2025/04/30 03:34:04" color="">}}




{{<matomeQuote body="俺が思うに、賢い AI 企業が今コッソリやってるのって、俺たち人間と AI への返信を、次の自己検証モデルの訓練に使ってることなんじゃないかな。コーパスデータでの訓練は1段階進めるだけ。でも、 OODA-loop を観察して適応できるインタラクティブなデータでの訓練？そっちの方が断然パワフルだよ。少なくとも、俺が AI やってるならそうするね :) まぁ、俺は BrowserBox しかやってないけど。" userName="keepamovin" createdAt="2025/04/30 07:07:51" color="#785bff">}}




{{<matomeQuote body="人間からの応答を使うなら、かなり厳密に応答の質をスクリーニングする必要があると思うな。だって、ただの”修正”なのに全く間違ってるって人もたくさんいるだろうから。" userName="captainbland" createdAt="2025/04/30 11:11:42" color="#785bff">}}




{{<matomeQuote body="いい点突くね！でもさ、たぶん”スーパーユーザー”みたいなのを特定して、その人たちの応答だけを拾えばいいんじゃないかな ハハハ :)" userName="keepamovin" createdAt="2025/05/01 03:24:41" color="">}}




{{<matomeQuote body="この回答を生成してテストするアイデアは、何十年も前からある古い方法だよ。正確な答えを出すのが難しい問題で、複数の候補を出す方が簡単な場合に役立つんだ。信頼できるテストアルゴリズムが必要だけどね。この記事で言えば、生成器が LLM で、テストする verifier がコンパイラや linter とかなんだ。これは試行錯誤と同じようなものだね。" userName="mcswell" createdAt="2025/05/01 03:37:17" color="#ff5733">}}




{{<matomeQuote body="” letting GPT-4 critique its own answers reduces accuracy ”ってのはさ、出力が入力になることで、ツリーが context window に入った瞬間に直接ツリーの中に誘導されちゃうからだよ。" userName="foobiekr" createdAt="2025/04/30 17:08:52" color="#ff5733">}}




{{<matomeQuote body="人間の指示を受けた LLM って、良い verifier になるのかな？検証ルールを知ってるか、十分なデータ（ネットアクセスとか、実際の応答とか）があればさ。" userName="ashu1461" createdAt="2025/04/30 03:07:24" color="">}}




{{<matomeQuote body="もちろん、それは verifier がある問題にしか通用しないよね。" userName="eru" createdAt="2025/04/30 18:08:47" color="">}}




{{<matomeQuote body="実際さ、間違いなくもっと良い結果を出せるって分かったんだよね。俺、 temperature 0で1回、 temperature 1で9回 prompt を試す実験をやってみたんだ。そしたら、一番変な応答でさえ、20サンプル中15回は temperature 0の応答と同等か、5回はそれより良かったんだよ。" userName="autokad" createdAt="2025/04/30 15:55:14" color="#45d325">}}




{{<matomeQuote body="俺がたまにやってる方法ね。<br>ーまずAIに問題の答えを出させる。<br>ー次に、それを知らない人向けに答えが正しい理由とか詳しく書かせたレポートを作らせる。<br>ーで、別のAIにそのレポートを評価させて、不明点とか矛盾点を指摘させるんだ。（a）不明点を尋ねるか（b）矛盾点を指摘ね。それを最初のAIに戻して修正させる。相手のAIが納得するか全部修正するまで繰り返す。めっちゃ手間かかるけど、試した時はかなりうまくいったんだよ笑" userName="odo1242" createdAt="2025/04/29 20:16:02" color="#785bff">}}




{{<matomeQuote body="あー、これで昨日Spainで停電があった理由がわかったわ。" userName="ASalazarMX" createdAt="2025/04/29 23:58:47" color="">}}




{{<matomeQuote body="てっきりcryptocurrencyが電力網（とGPU製造）を既に温めてくれてると思ってたわ。" userName="Cthulhu_" createdAt="2025/04/30 08:42:06" color="">}}




{{<matomeQuote body="ちょっと対立するようなことではね、AIに計画を立てさせて、次に敵の立場になってその計画を破る方法とか反論を考えさせるんだ。で、敵の反応を踏まえて最初の計画を修正させる。こうしてできた計画は、だいたいもっとしっかりしてて練られてるよ。このテクニックが自分自身にも効くってのが面白いんだよね。計画を見直す前に欠点を探すのは本当に効果あるよ。" userName="StopDisinfo910" createdAt="2025/04/29 21:20:37" color="#ff33a1">}}




{{<matomeQuote body="正直、このリポジトリがタイトルからしてこういうことやってるんだと思ってたんだよね。自分で議論するって言ってるけど、単に複数の答えを並列で作って一番良いのを選んでるだけに見えるし。君の方法は”sycophancy”にうまく対処できると思う？" userName="meander_water" createdAt="2025/04/29 23:29:06" color="">}}




{{<matomeQuote body="うーん、どうかな。ChatGPTは色々気を使うようになってきて使うのやめたんだんだよね。GPT3が出た頃はありえない映画のマッシュアップ作って楽しんでたんだけど、そのうちIP権とか暴力とかにすごく敏感になってうざかったから。最近はDeepseekをよく使ってるよ。これはsycophanticじゃないし、特にDeepseek自身がホストしてるバージョンじゃなければ、そんなに検閲されてないみたいで驚いたんだ。" userName="StopDisinfo910" createdAt="2025/04/30 05:44:14" color="">}}




{{<matomeQuote body="俺も同じようなことやってるよ。あと、もう一つテクニックがあるんだ。一つのプロジェクトのためにいくつかチャットを立ち上げるんだけど、それぞれに違うコンテキストを持たせるんだ。例えば、技術寄りとか、マーケティング寄りとか、自分の個人的な目標に関するコンテキストとかね。で、同じ質問を違うコンテキストを持ったチャットに投げ込むんだ。これは同じ問題に対して色々な視点を持つみたいな感じだね。で、コンテキストが違うと結論も違うことが多いんだ。" userName="zoogeny" createdAt="2025/04/29 22:40:03" color="#ff5c5c">}}




{{<matomeQuote body="俺はGeminiでこう使ってる。プロジェクト情報をたくさん入れて（100kトークン位）、固いコンテキストを作る。次に、そのコンテキストを保ったまま新しいチャットで使えるよう要約させて、新しいチャットに移す。これで容量を節約し、応答性も保てる。これを基本に、マーケティング、デザイン（Substance Designerとかね）みたいなブランチを作る。さらにマーケティング内でもチャンネル別にサブブランチ作ったりしてるよ。" userName="odie88" createdAt="2025/04/30 13:17:16" color="#38d3d3">}}




{{<matomeQuote body="これ、Monte Carlo Tree SearchとLLMを使って結果の質を上げるっていうYT動画を思い出したよ。<br>リンク：https://www.youtube.com/watch?v=mfAV_bigdRA&ab_channel=Treli...<br>良いアイデアっぽいけど、トークン使いまくりそう。あと、LLMが判定役になるのが心配かな。良い答え出せないのに正確に評価できるのかなって。" userName="jsight" createdAt="2025/04/29 22:01:12" color="">}}




{{<matomeQuote body="限界費用で考えると、こういう実験って計算に使う追加の電気代だけでできるんだよね。ヨーロッパだと、計算リソース持ってる人にとってはほぼタダだったりするし。" userName="looofooo0" createdAt="2025/04/30 06:11:31" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="KagiのAssistant機能使うと超簡単だよ。<br>Assistantを切り替えて、もう片方に確認してもらうだけ。" userName="JumpCrisscross" createdAt="2025/04/29 20:30:48" color="#45d325">}}




{{<matomeQuote body="AIアシスタントに手順聞けば？<br>そのうちみんな知識のスープに溺れて、IDKATFAIA (I don’t know, ask the f’ing AI already)みたいな新しい略語ができそう。" userName="nativeit" createdAt="2025/04/30 00:19:47" color="">}}




{{<matomeQuote body="正直、AIアシスタントって思ったほど賢くないね。まだ自分でチェックしないといけないし。" userName="BOOSTERHIDROGEN" createdAt="2025/04/30 12:04:32" color="">}}




{{<matomeQuote body="Sillytavernのグループチャットでいつもやってるよ。<br>記事で説明されてるのに似たキャラ3人と俺で”会話”に参加して、彼らが納得するまでやり取りさせるの。<br>良いモデルでロールプレイさせると、マジ最高。" userName="subscribed" createdAt="2025/04/29 22:18:47" color="#ff5c5c">}}




{{<matomeQuote body="AIの最初の結論が完全に変わった状況ってあった？<br>結果が変わったり、すごく改善された状況の例を教えてもらえる？<br>面白そうだね。" userName="hsuduebc2" createdAt="2025/04/29 20:29:49" color="">}}




{{<matomeQuote body="”オシレーション”ってどんぐらい起きるか知りたいな。まるで同意してたかと思えばすぐ反論にひっくり返るやつ（たぶん疎な潜在空間だろうけど）。俺の場合、結構頻繁に起きるんだよね。「いや、それは違うよ」って何度も言うと、LLMが180度変わって「そうですね、実際間違ってました、あなたが正しいです」って説明するの、繰り返されるんだ。" userName="nomel" createdAt="2025/04/29 21:13:02" color="#785bff">}}




{{<matomeQuote body="これって、Inference Time Scalingの別のやり方みたいなもんじゃない？いくつかの思考経路を作って、内部関数で一番報酬の高いやつを追求するみたいな？" userName="itissid" createdAt="2025/04/29 21:57:35" color="#ff5c5c">}}




{{<matomeQuote body="訓練データをさ、二つのLLMにランダムに”シャード”して食わせたらどうかなって考えたことあるんだ。片方に半分、残りをもう片方に。モデル一つじゃなく、その二つの部分に同じような（熟考する）プロセスをやらせるんだ。フルデータを使ったシングルモデルより効果あるかな、さらにシャードしたらどうなる？" userName="pessimizer" createdAt="2025/04/29 23:48:00" color="#ff33a1">}}




{{<matomeQuote body="そういうの、いくつか前例はあるよ。二つのモデルのクロスエントロピーで有用なことできるし、k-fold cross validationも関連するかもね。" userName="ijk" createdAt="2025/04/30 01:12:51" color="">}}




{{<matomeQuote body="でも、これやるのめちゃくちゃ時間かかるんじゃない？どんな問題だと時間の節約になるわけ？" userName="aprilthird2021" createdAt="2025/04/30 04:35:53" color="#ff5c5c">}}




{{<matomeQuote body="これ、もっと大規模に常に動かす”AI上院”みたいなのでやりたいんだ。タスクリスト渡して、グループで作業したり、結果に文句言ったり提案したり。多様な視点で批判的に分析すると、マジですごい結果出るはず。トークンはヤバいけど、値段は下がってるし。AIだけのIRCサーバー作って共同討論室にするのもアリかもね。" userName="Lerc" createdAt="2025/04/29 18:57:33" color="#38d3d3">}}




{{<matomeQuote body="最近DevOps作業（ansibleとかdockerとか）で、ChatGPTがデタラメな情報自信満々に言うのがマジむかついたんだ。間違ってるって指摘すると、間違ってた部分だけこっそり変えて「君が正解！」って言う。確認しない張り切りインターンみたい。マジ「それマジ？」ってセカンドボットがチェックしてくれたら最高なのにって思うわ。" userName="mikepurvis" createdAt="2025/04/29 19:32:42" color="#ff5733">}}




{{<matomeQuote body="LLMから、実際に持ってる情報以上のものは引き出せないよ。Anthropicが言ってたみたいに、名前知ってても他の情報ないと幻覚見る。多分ここも同じ。LLMはフラグあるって知ってるけど全部覚えてない。短いヒントをプロンプトで出すといいかも（GPTならウェブ検索）。俺の考えだけどね。" userName="MoonGhost" createdAt="2025/04/29 20:51:16" color="#ff33a1">}}




{{<matomeQuote body="確かに、疑問をぶつけるだけでLLMは別のやり方見つけるの楽しそうにやる気がする。だからモデル内部で、もっと色んな選択肢考えろって促すセカンドボイスが必要なのかもね。" userName="mikepurvis" createdAt="2025/04/29 21:23:27" color="#45d325">}}




{{<matomeQuote body="LLMが持ってる情報よりたくさんの情報を引き出せるってのが、この課題全体をうまく言い表してるよね。" userName="buu700" createdAt="2025/04/30 07:09:52" color="#ff33a1">}}




{{<matomeQuote body="DevOpsやってた時、infra-as-code言語だとどのモデルもこんな感じだったよ。特にyaml系はひどかったな。Amazonのサービスでさえ、自社フォーマットについて適当なこと言ってたし。<br>なんでそうなるのか気になるね。訓練データは十分ありそうだし、Amazonなら検証ツールくらいモデルに提供できそうなのに。" userName="0x20cowboy" createdAt="2025/04/29 20:27:29" color="#38d3d3">}}




{{<matomeQuote body="人間みたいに捉えすぎかもしれないけど、自分の考え方とちょっと似てるなって思うんだ。「XYZ機能が必要だから、よく使う他のツールだとたぶん--xyzフラグだな。じゃあそれでググって確認するか、それともGithubで４年前の「対応しないよ」ってコメントを見つけるか」みたいにね。<br>でも…モデルにはその最後のステップがないんだ。代わりに、ただ自信満々な調子で、全部完璧に動くぞ！って断言する仮説をぶちまけるだけ。" userName="mikepurvis" createdAt="2025/04/29 21:21:25" color="#ff5c5c">}}




{{<matomeQuote body="Cursorには、カスタムドキュメントをアップロードして@Docsで参照できるいい機能があるよ。これを使うとハルシネーションを防げるし、推論モデルを使うのにも役立つと思う。" userName="meander_water" createdAt="2025/04/29 23:31:30" color="#45d325">}}




{{<matomeQuote body="Claudeが間違ったフラグでコマンドを実行しようとして、試して、それから直していく様子を見るのが面白かったな。" userName="organsnyder" createdAt="2025/04/29 20:16:13" color="">}}




{{<matomeQuote body="俺もLLMはDevOpsのタスクだとイマイチだって気づいたよ。訓練データが足りないのかもね。いい面としては、プラットフォームエンジニアの仕事は安泰ってことかな。" userName="corvus-cornix" createdAt="2025/04/30 16:08:25" color="">}}




{{<matomeQuote body="全くその通り！ こういうことが何度もあったから、せめてmanページとかのドキュメントを直接モデルに入れて、 sanity check（正しさの確認）として使えたらって思ったよ。" userName="vunderba" createdAt="2025/04/29 20:20:36" color="#ff33a1">}}




{{<matomeQuote body="的を得てるね。" userName="nonelog" createdAt="2025/04/29 20:17:16" color="">}}




{{<matomeQuote body="1年くらい前に、ユーザーのプロンプトを分割して「いろんなAIペルソナ」に渡す実験をしたんだ。それぞれ別のやり方で問題に取り組んで、最後にマスターアービター（仲裁役）が合意形成するっていう仕組み。Civilization IIのアドバイザーの考え方を参考にしたよ。<br>一つのLLM (Mistral) だけに制限されてたから限界はあったけど、そこそこ上手くいったんだ。まあ、ついでにPCが燃えかけたけどね。" userName="vunderba" createdAt="2025/04/29 20:17:38" color="#785bff">}}




{{<matomeQuote body="どんな感じのペルソナを試したの？ お互い恨み合ってて、不合理に相手の計画の穴を探すようなグループとか、面白い実験になりそうだね。" userName="bee_rider" createdAt="2025/04/29 21:35:21" color="#ff5733">}}




{{<matomeQuote body="Disco Elysiumプレイしたことあるけど、内なる声がいっぱい言い争うの楽しいってのはマジでそうだよ。" userName="vintermann" createdAt="2025/04/30 12:03:00" color="">}}




{{<matomeQuote body="理論的にはこれって一つの敵対的なモデルに組み込めないの？" userName="nonethewiser" createdAt="2025/04/29 19:19:57" color="">}}




{{<matomeQuote body="全然そうってわけじゃないよ。LLMの生成は自己回帰的で前の結果が次に影響するから自己強化されがち。でもちょっとした違いで結果が大きく変わるカオスな面もあるんだ。だから同じ入力でもシードや温度を変えて再生成すると全く違う結果になるよ。自分が正しいと譲らない時もあれば間違ってると主張する時もある。LLM単独で判定するのは難しいけど自己整合性みたいに複数生成するとばらつきや不確実性を評価できて役立つんだ。" userName="RevEng" createdAt="2025/04/30 03:39:17" color="#785bff">}}




{{<matomeQuote body="そうだね、でもモデルって比較的速い応答のために最適化されてると思うんだよね。一方でこういうテクニックはモデルにもっと時間を使わせて質の高い応答を生成させてるんじゃないかな。" userName="tonmoy" createdAt="2025/04/29 19:27:56" color="#ff5733">}}




{{<matomeQuote body="ある程度はね、でも違うモデルは得意なことが違うんだ。それって俺も気になるんだよ。同じトークン化を使うモデルでも得意なことが違うとして、同じ入力から生成されたトークンのlogprobsを分析することで何か面白いことが見つかるんじゃないかな。モデルが間違った方向に進む特定のポイントで何か注目すべきことがあるはずだよね。" userName="Lerc" createdAt="2025/04/29 19:34:38" color="#ff5733">}}




{{<matomeQuote body="例えば、ひたすらトークンを生成し続けてその出力を処理して終わりのない議論が良いアイデアを生み出した時にそれを拾い上げるってこと？十分な時間とトークンで何を生み出すのか興味深いね。" userName="crowcroft" createdAt="2025/04/29 20:03:04" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これはもうやられてることだし、多くの領域に応用できるよ。君のユースケースで試してみなよ。" userName="danielmarkbruce" createdAt="2025/04/29 20:23:44" color="">}}




{{<matomeQuote body="こういうアンサンブル手法はAIの進歩の歴史でずっと試されてきたんだ。ちゃんと構造化された大きなモデルの方がこれまで質も速度/コストも有利だった。もしかしたらこれは特に効果的なアンサンブルかもしれないけど、ちゃんとしたデータを見る必要があるね。" userName="kmacdough" createdAt="2025/04/30 09:52:02" color="#ff5c5c">}}




{{<matomeQuote body="これマジすごいね！<br>俺がよく使う（この記事のよりシンプルで限定的だけど）やり方は、メッセージの最後に「＜thinking＞タグの中で考えて、＜critique＞タグの中で自己批判して、それから最後にまた＜thinking＞して、返事してね」って付け加えることなんだ。<br>これめっちゃうまくいくよ。<br>同じように「提案のヤバい点５つ見つけて」って聞くのもかなり良い感じ（５つって指定すると、たとえあんまり関係なくても何か見つけようとするからね）。" userName="cube2222" createdAt="2025/04/29 18:02:52" color="#ff5733">}}




{{<matomeQuote body="これがさ、Geminiのバカでかいコンテキストウィンドウが好きな理由の一つなんだ。<br>メッセージのやり取りの中でこれできちゃうんだよね。<br>一発で全部やらせようとするんじゃなくて、３回くらいのメッセージで同じアイデアを使うんだ。<br>１．プランを考えさせる（モデルがプランを答える）<br>２．プランの欠点を指摘させる（モデルが欠点を答える）<br>３．欠点を修正してプランを更新させる（モデルが更新されたプランを答える）<br>他にもよく聞くのは「なんか見落としてることない？」とか「［performance｜security｜legal｜cost］の考慮事項は？」みたいなことかな。<br>「他に何かある？」みたいな軽い促しプロンプトで、特に考慮すべきトピックを指定しながら、何回か繰り返すことが多いよ。<br>それぞれの後で、それらを考慮してプランを更新させる感じ。" userName="zoogeny" createdAt="2025/04/29 22:49:47" color="#ff33a1">}}




{{<matomeQuote body="俺はいつも「今度は批判的な帽子をかぶって、もう一回やって」って言うな。" userName="danielbln" createdAt="2025/04/29 18:31:48" color="">}}




{{<matomeQuote body="ああ、それめっちゃいいね。自分のアイデアをメトリクスで採点させて、特定のスコアになるまで繰り返しやらせたくなるわ。" userName="bentt" createdAt="2025/04/29 21:18:48" color="">}}




{{<matomeQuote body="これ、タイトルから期待してたのとちょっと違うみたいだね。<br>もっと露骨に敵対的な感じかと思ってた。<br>１．君はアシスタントです。質問に直接答えてください。<br>２．君は反対尋問者です。アシスタントは間違っています。理由を説明してください。<br>３．君はアシスタントです。反対尋問者は間違っています。自分の主張を弁護してください。<br>４．君は裁判官です。どちらかの当事者は主張を証明できましたか、それとももう一周議論が必要ですか？<br>これ、俺は試したことないんだ。うまくいくかどうかわからないけどね。<br>でも、別のプロンプトでChatGPTに「XYZが本当である理由を説明して」と「XYZが嘘である理由を説明して」って聞いて、どっちの方が説得力あるか見るのは役立つって感じてるよ。" userName="electroly" createdAt="2025/04/29 18:21:41" color="#ff33a1">}}




{{<matomeQuote body="Fast Agent見てみて！<br>個人的には関係ないけど、使ってるんだ。<br>https://github.com/evalstate/fast-agent" userName="ChadMoran" createdAt="2025/04/29 20:42:59" color="">}}




{{<matomeQuote body="こういうテクニックってGPT-3.5の時代からあるじゃん。<br>論文も山ほど出てるし。<br>なんでこれが新しいって思う人がいるのか、マジで分からないわ。<br>まあ、それがHNのレベルってことなんだろうね。" userName="mountainriver" createdAt="2025/04/29 21:38:41" color="">}}




{{<matomeQuote body="そうなんだよな…<br>STORMを実装するなんて、この分野じゃ基本的なステップだと思ってたんだけど…<br>なんか堂々巡りしてる感じだね。" userName="moribunda" createdAt="2025/04/29 21:44:49" color="">}}




{{<matomeQuote body="マルチエージェントを含むエージェントアーキテクチャに関する論文だよ。<br>ちょっと古いけど、良い概観がつかめると思う。<br>https://arxiv.org/abs/2404.11584" userName="kmacdough" createdAt="2025/04/30 13:49:04" color="#ff33a1">}}




{{<matomeQuote body="ChatGPTってチャット間でコンテキスト共有するじゃん。<br>それがどう影響するのかな？<br>でも、良いアプローチみたいだね。<br>自分が間違ってるって示唆するのは絶対やめた方がいいよ。<br>大体、すぐ自分が間違ってるって思っちゃうから。<br>いや、マジで感心するのは、俺がこうやっても、実際に反論して自分を守る時なんだ。" userName="nonethewiser" createdAt="2025/04/29 19:17:28" color="">}}




{{<matomeQuote body="“メモリ更新済み”みたいなメッセージが出なくても、俺に関する事実を保存してなくても、コンテキスト共有するの？<br>ChatGPTに聞いてみたら“しない”って言ってたけど、まあ自己内省とか、自分の仕組みに関するデータは信頼できないからな。" userName="the_af" createdAt="2025/04/29 21:21:16" color="">}}




{{<matomeQuote body="あれらは別々のシステムだと思うな。<br>一つは保存されたスニペットの集まりで、もう一つはチャット履歴に対するRAGみたいな感じ。" userName="visarga" createdAt="2025/04/30 04:33:41" color="">}}




{{<matomeQuote body="ChatGPTは、俺の他のチャットウィンドウからRAGは使わないって断言してた。<br>でも、メモリに保存された設定（Settings-＞Personalization-＞Memoryで見れるやつ）は使うって。<br>まあでも、ChatGPTが自分の内部動作について話すのは当てにならないと思う。<br>---<br>あ、いや、ここだとチャット履歴も参照するって書いてあるわ。<br>https://help.openai.com/en/articles/8590148-memory-faq" userName="the_af" createdAt="2025/04/30 16:35:34" color="#ff33a1">}}




{{<matomeQuote body="こういう質問にはChatGPT使えるけど、検索モードかリサーチモードを使う必要があるよ。<br>閉鎖的なモードで聞いちゃダメ。" userName="visarga" createdAt="2025/05/01 06:47:39" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
