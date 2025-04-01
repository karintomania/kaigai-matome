+++
date = '2025-03-25T00:00:00'
months = '2025/03'
draft = false
title = 'GPT-4o画像生成がマジですごい！リアルタイム編集も可能でクリエイター歓喜！'
tags = ["GPT-4o", "画像生成AI", "AIイラスト", "リアルタイム編集", "OpenAI"]
featureimage = 'thumbnails/cyan4.jpg'
+++

> GPT-4o画像生成がマジですごい！リアルタイム編集も可能でクリエイター歓喜！

引用元：[https://news.ycombinator.com/item?id=43474112](https://news.ycombinator.com/item?id=43474112)

{{<matomeQuote body="diffusionじゃなくてtokenでimage generationするのって、pixel spaceでreasoningしてるってことらしいぜ。例えば、tic-tac-toeのnotepad描かせて、最初にmoveさせて、次にお前がmoveするとか。drawing style変えたり、day to nightとか、hat被せるとか、information-conservingなtranslationもすごいみたい。resolutionはまだ低いみたいだけど、もっとwildなことできるようになりそう！appをimageでstep by step作らせて、code書かせるとか。diffusion modelの代わりにreasoningさせるとかもできるかも。generative UIも夢じゃないかもね。" userName="blixt" createdAt="2025-03-25T19:42:16" color="#785bff">}}

{{<matomeQuote body="＞What’s important about this new type of image generation that’s happening with tokens rather than with diffusion, is that this is effectively reasoning in pixel space.”<br>それ違うと思うな。4oはDALL-Eっていうexternal model使ってimage生成してたけど、release後はmulti-modal model使うようになったんだって。4oに聞いたら、”image generationはlatent diffusion modelでやってる”って言ってたよ。" userName="Taek" createdAt="2025-03-25T22:50:55" color="">}}

{{<matomeQuote body="＞You can ask 4o about this yourself. Here’s what it said to me:<br>＞”So while I’m deeply multimodal in cognition (understanding and coordinating text + image), image generation is handled by a linked latent diffusion model, not an end-to-end token-unified architecture.”<br>modelは自分のことなんて知らないって。なんでみんなbotに聞くの？" userName="noosphr" createdAt="2025-03-26T08:00:19" color="">}}

{{<matomeQuote body="それ間違ってるよ。4oは自分のこと知らないからそんなこと言えないし。4oがやってることって別にnewじゃないし。Gemini 2.0も同じことできるよ。" userName="rickyhatespeas" createdAt="2025-03-25T23:34:00" color="">}}

{{<matomeQuote body="modelって自分のarchitectureについて間違ってること多いよ。半分はOpenAIだって言うけど違うし。信用できないって。" userName="wegfawefgawefg" createdAt="2025-03-26T08:31:32" color="">}}

{{<matomeQuote body="証拠は正しくないかもしれないけど、これは正しいと思うな。<br>https://chatgpt.com/share/67e355df-9f60-8000-8f36-874f8c9a08... のchat見て。" userName="mgraczyk" createdAt="2025-03-26T01:18:43" color="">}}

{{<matomeQuote body="ううん、link見た？" userName="mgraczyk" createdAt="2025-03-26T05:46:02" color="">}}

{{<matomeQuote body="うん、見たよ。botが言うこと信じてるように見えるから聞いたんだ。genericなfunction callしてるだけじゃん。なんでそれが内部で実際に起きてることだって信じるの？ prompt繰り返したら別のmodule name出てきたし。" userName="low_tech_love" createdAt="2025-03-26T06:00:47" color="#ff5733">}}

{{<matomeQuote body="チャット共有してくれー！API経由でツール呼び出ししてるの確認した。ググったらTwitterとかで話題になってるね。" userName="mgraczyk" createdAt="2025-03-26T06:02:44" color="">}}

{{<matomeQuote body="なんか回りくどい説明多いけど、そもそも本当に毎回ちゃんと動くのかも怪しいよね。LLMハイプも3年目だし、何十億ドルも燃やしたんだから、もっと色々できるようになってて欲しかったなー。CopilotにReactの簡単な構造お願いしたら、インポートとかズレまくっててさ。昔の自動コード生成の方がまだマシだったわ。少なくとも毎回同じ結果だったし。まあ、次のAI()に期待するしかないか。" userName="hansmayer" createdAt="2025-03-26T15:13:26" color="">}}

{{<matomeQuote body="状況変わりまくってるから、今すぐもう一回試した方がいいよ！LLMコード生成はまだアレだけど、生産性はめっちゃ上がったし。基本o1(openAI経由)とかdeepseek、jetbrainsのAIサービス(Copilotのクローン)しか使ってないけどね。VS Codeのツールも色々試したい。なんでみんな「楽しいこと」したがるんだろ？開発はつまんないもんじゃん。嫌なら違うことすればいいのに。" userName="pdntspa" createdAt="2025-03-26T15:45:44" color="">}}

{{<matomeQuote body="いやいや、今朝もCopilot使ってみたけど、さっき言ったとおりの結果だったんだって。なんかフワフワした約束じゃなくて、「ちゃんと動いて」欲しいんだよね。スティーブ・ジョブズの「It just works」って言葉知ってる？エンジニアリングの情熱でエンジニアになった人もいるんだよ。CSSいじってるだけの人と一緒にしないで欲しい。そっちの方がよっぽど退屈だわ。" userName="hansmayer" createdAt="2025-03-26T15:58:14" color="#ff33a1">}}

{{<matomeQuote body="スティーブ・ジョブズはビジネスじゃすごいけど、エンジニアじゃないから。そもそも「it just works」ってエンジニアリングのおかげじゃん。文句ばっか言ってないで、自分で解決すれば？退屈な作業は飯のタネだし、ビジネス側がそれを無くそうとするのは脅威だよ。AIは便利なツールだよ。使いこなせないなら、プロンプトが下手か、ツールが合ってないか、業界が間違ってるんじゃない？" userName="pdntspa" createdAt="2025-03-26T19:19:11" color="">}}

{{<matomeQuote body="別に傲慢じゃないよ。LLMの技術自体はもう20年以上前からあるし、何十億ドルも吸い込んでるんだから、クソの山だよ。Github Copilotの有料ユーザーだけど、エラーメッセージの検索とか、構文の確認くらいにしか使えない。魔法の機械じゃないし、AGIでもない。生成されたコードはちゃんと確認しないとヤバいよ。自動運転車と一緒で、もう15年くらい「もうすぐそこ」って言われてるじゃん。" userName="hansmayer" createdAt="2025-03-26T20:45:10" color="">}}

{{<matomeQuote body="ちゃんと読んでよ。LLMの“技術”は20年以上前からあるって言ってるの。ニューラルネットワークとか機械学習とかね。スマホの次はLLMで人の知能が下がるんじゃない？初期から使ってて、お金も払ってるけど、マーケティングの言うほどじゃないって話。簡単なwebアプリ作るくらいしか役に立たない。君みたいな非技術系の人が作ったコードベースがどうなるか楽しみだね。保険入っとけよ。" userName="hansmayer" createdAt="2025-03-26T21:46:00" color="">}}

{{<matomeQuote body="Copilotはコンテキスト全部使わないから。スクリプト書いて、関係あるコードを全部ClaudeとかGeminiにぶち込んでみなよ。そっちの方がずっと良い結果になるよ。" userName="cma" createdAt="2025-03-27T10:11:26" color="#45d325">}}

{{<matomeQuote body="マジかー、追加のスクリプト書いたり、めんどいことして「すごいツール」を動かしたくないんだよね。プロンプトをちょっと言い換えるくらいならいいけどさ。LLMって、箱から出してすぐ使えるように宣伝されてるじゃん（この記事もそうだし）。" userName="hansmayer" createdAt="2025-03-27T11:11:03" color="">}}

{{<matomeQuote body="LLMはウェブチャットで宣伝されることが多いし、常に魔法のツールってわけじゃないよ。でも、claude/geminiのコンテキストに入るプロジェクトなら、全部突っ込んじゃえばいいんだ。<br>コマンド例は省略するけど、AIなしで大規模コードベース検索するよりはマシかもね。claudeにコマンド書かせたりもできるし。もっとすごいツールが欲しいなら、claude codeとか試してみて。Cursorも似たようなの追加してるけど、API使うからコンテキストは最小限だよ。<br>githubプロジェクトを指定して必要なものだけ引っ張ってくることもできるし。" userName="cma" createdAt="2025-03-27T15:17:40" color="">}}

{{<matomeQuote body="＞真の生成UI、モデルがアプリの次のフレームを生成するって？<br>やめてくれ！<br>そんなのありえないし、絶対に使いたくない。アプリはバグだらけなのに、すべての操作をLLMに解釈させるなんて悪夢だよ。AI Minecraftのデモがまさにそれ。" userName="sureIy" createdAt="2025-03-25T23:43:39" color="#ff5733">}}

{{<matomeQuote body="この意見は、これまでソフトウェアに追加してきたすべての抽象化レベルで言えたことだよね。なのに、今こうしてバグだらけのアプリからコメントしてるじゃん！" userName="blixt" createdAt="2025-03-25T23:48:08" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="https://i.imgur.com/xsFKqsI.png<br>”ワイングラスいっぱいの絵を描いて。赤ワインがなみなみと注がれてて、こぼれそうなくらいで…。グラス全体が見えるようにズームアウトして、上に「HELL YEAH」ってキャプションを追加して。ワインの量は変えないで。”" userName="meeton" createdAt="2025-03-25T21:08:35" color="#45d325">}}

{{<matomeQuote body="再現できないな。ロールアウトが段階的なのかも？ヨーロッパのPlusユーザーだけど、いつも半分しか入ってないグラスになる。" userName="Stevvo" createdAt="2025-03-25T21:15:50" color="">}}

{{<matomeQuote body="オーストラリアのPlusユーザーだけど、満タンでも半分でもないな。半分空っぽのグラスが出てくる。" userName="amy_petrik" createdAt="2025-03-26T05:03:23" color="">}}

{{<matomeQuote body="新しい4o image generationを使ってる？<br>https://imgur.com/a/wGkBa0v" userName="yusufozkan" createdAt="2025-03-25T20:10:38" color="">}}

{{<matomeQuote body="「満杯のグラス」の定義が予想以上に文字通りの意味だった。" userName="minimaxir" createdAt="2025-03-25T20:12:20" color="">}}

{{<matomeQuote body="つまりそういうこと。昔のモデルじゃ、ワイングラスにいっぱいまで注がれた状態をうまく再現できなかったんだよね。学習に使ったデータにそういうのがあんまりなかったから。" userName="Loeffelmann" createdAt="2025-03-25T20:18:40" color="#ff5733">}}

{{<matomeQuote body="もし「なみなみ注がれたワイングラス」の写真をいっぱい学習させたらどうなるかな？一種のリトマス試験紙みたいな感じで。" userName="colecut" createdAt="2025-03-25T20:31:54" color="">}}

{{<matomeQuote body="「なみなみワイングラス」のデータが追加されたかは知らないけど、このお題はもうダメかもね。みんなが議論してるから、テストの一部になっちゃった。<br>ネットで正しい答えを得る一番の方法は、間違った答えを投稿することだって言うでしょ？これって人間の学習と変わらないんじゃないかな。" userName="gorkish" createdAt="2025-03-25T21:09:39" color="#785bff">}}

{{<matomeQuote body="人間はインターネット全部を学習するわけじゃないから、学び方は違うと思うよ。" userName="vlovich123" createdAt="2025-03-25T23:29:29" color="">}}

{{<matomeQuote body="人間が見るって行為は、一瞬のsnapshotを見てるだけじゃないんだよね。数秒見つめるだけでも、いろんな角度から見た画像を無意識に取り込んでる。machine learningじゃこれは無理。計算コストが高すぎる。" userName="sayamqazi" createdAt="2025-03-26T01:16:55" color="#ff33a1">}}

{{<matomeQuote body="じゃあ、目の見えない子供はどう説明するの？感覚が発達に影響するのは確かだけど、もっと効率的な能力があるはず。人間は少ない例からでも一般化して推論できるんだよ。" userName="vlovich123" createdAt="2025-03-26T03:11:18" color="#ff5733">}}

{{<matomeQuote body="すごいね！2時35分を指してる時計みたいな、変わった画像も作れる？Geminiで試した人がいたけど、できなかったみたい。4oならどうかな。" userName="Imustaskforhelp" createdAt="2025-03-25T20:25:38" color="">}}

{{<matomeQuote body="「牛が月の上を跳ぶ」ってpromptで試せる？どうしても牛が月の上にならないんだよね。いつも隠れちゃったり、横になっちゃったり。" userName="stevesearer" createdAt="2025-03-25T20:51:34" color="">}}

{{<matomeQuote body="＞tokensを使った新しい画像生成って何がすごいの？<br>すごく興味深いね。仕組みについて解説してる記事とかある？" userName="xg15" createdAt="2025-03-25T20:35:13" color="">}}

{{<matomeQuote body="＞真にgenerativeなUI。モデルがアプリの次のframeを生成する。<br>それ、先月作ったよ！demoは[https://universal.oroborus.org](https://universal.oroborus.org) (スマホじゃ無理。タブレットかPCで)。<br>github:[http://github.com/snickell/universal](http://github.com/snickell/universal)<br>Claude 3.7で、LLMがsvgかhtml/cssでframeを生成。クリックした場所をLLMに伝えて、次のframeを生成。言語はもう古いと思う。" userName="snickell" createdAt="2025-03-26T02:28:15" color="#ff33a1">}}

{{<matomeQuote body="いくつか複雑なプロンプトを試してみたよ。画像調整はimg2imgとかじゃなくて、テキストプロンプトだけでやったんだけどね。<br>https://mordenstar.com/blog/chatgpt-4o-images<br>9角形がやっぱり苦手みたいだけど、マジですごいわ。" userName="vunderba" createdAt="2025-03-26T04:45:35" color="">}}

{{<matomeQuote body="最初のプロンプトじゃうまくいかなかった（10角形になっちゃった）。でも「10角形だから9角形にして」って送ったら、9角形になったよ。" userName="jimbo_joe" createdAt="2025-03-26T10:45:22" color="#ff5733">}}

{{<matomeQuote body="魔法の塗り絵のスペルが変わってるのが笑える。Westherとかwntilityとか。CO2タンクがなくなってたり、8'が3'に変わってたり、意味が全然変わっちゃってるし。お世辞にも合格点とは言えないね。でも、パーティーの余興としては面白いかも。使うならちゃんとレビューしないとね。" userName="Too" createdAt="2025-03-30T07:48:53" color="">}}

{{<matomeQuote body="エンジニアリング系の図面とか、回路図とかは試したことある？[1]みたいなやつ。<br>[1] <br>https://techcrunch.com/wp-content/uploads/2024/03/pasted-ima..." userName="algo_trader" createdAt="2025-03-26T15:14:32" color="">}}

{{<matomeQuote body="いい質問だね。イチから作ったことはないけど、テキストが多い図面で調整テストをしてみたら、余裕で合格点だったよ（pun intended）。" userName="vunderba" createdAt="2025-03-26T20:59:26" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="回路図のテキスト説明から生成された画像がこれだよ。<br>https://i.imgur.com/sGfdtWo.png" userName="randomjoe2" createdAt="2025-03-27T01:34:50" color="#38d3d3">}}

{{<matomeQuote body="パンを持った腕のないビーナス像はマジで芸術だわ。" userName="therealdrag0" createdAt="2025-03-26T15:51:07" color="">}}

{{<matomeQuote body="プロンプトが最高！" userName="ttul" createdAt="2025-03-26T13:30:03" color="">}}

{{<matomeQuote body="試してみたらマジですごかった。娘の誕生日招待状をほぼ1発で作れたよ。要素もスタイルも完璧だった。日付とか場所とかの詳細をテキストに追加するように頼んだら、それもできたし。ショックだわ。今までのモデルじゃ無理だった。" userName="M4v3R" createdAt="2025-03-25T20:49:48" color="#ff5c5c">}}

{{<matomeQuote body="個人情報以外のプロンプトを共有してくれない？" userName="swyx" createdAt="2025-03-25T22:27:01" color="">}}

{{<matomeQuote body="4歳の女の子[名前]の誕生日招待状を描いてほしいな。手描き風で、恐竜とか花、ハート、猫の絵が周りにちょこちょこある感じ。背景は明るく、赤、ピンク、オレンジ、青をメインに使って。<br><br>で、ちょっと修正依頼。<br><br>＞ほとんど完璧じゃん！このスタイルと要素はそのままに、テキストを<br>＞[修正テキスト]に変えて。<br>＞あと、場所と日付の詳細を下に追記してほしい。<br>＞[場所の詳細]”" userName="M4v3R" createdAt="2025-03-25T22:55:57" color="">}}

{{<matomeQuote body="この最初のプロンプトの出力例に興味ある人いるかな？<br><br>https://x.com/0xmetaschool/status/1904804277341839847" userName="nvalis" createdAt="2025-03-26T13:49:09" color="">}}

{{<matomeQuote body="うちの息子の誕生日にも同じようなプロンプト試してみたよ。よくあるエラーが出まくり。最初のは良さげだったけど、日付と時間が重複してたり、“Roarrr！”（恐竜テーマ）の“a”がぼやけてたり。<br><br>それを指摘してやり直させたら、もっと酷いの出てきた。まだおもちゃレベルかな。" userName="yaba_money" createdAt="2025-03-26T18:41:48" color="">}}

{{<matomeQuote body="それいいね、ありがとう。絵心ないから、こういうの参考にさせてもらうと助かる。" userName="swyx" createdAt="2025-03-26T17:09:17" color="#ff5733">}}

{{<matomeQuote body="＞4o Image Generationをご紹介：今までで一番進んだ画像生成モデルだってさ。<br><br>で、ググってみると：<br><br>＞Gemini 2.5：うちの会社で一番賢いAIモデル<br>＞Gemini 2.0 | うちの会社で一番優秀なAIモデル<br><br>まだまだ出てくるよ。こういうトレンドはもう終わってほしいし、Appleが効果的なものを使い始めて、他の会社も新しい言葉遣いを真似し始めればいいのに。" userName="kh_hk" createdAt="2025-03-25T19:05:23" color="">}}

{{<matomeQuote body="今、AIの能力は前例のないほど爆発的に伸びてる最中だよ。この言い回しに不満を持つのは難しいなー。文字通り本当だし、めっちゃ正確じゃん。" userName="roenxi" createdAt="2025-03-25T22:46:10" color="">}}

{{<matomeQuote body="そうなら、大げさに言う必要なくない？一番進んだモデルじゃないものを公開する理由がないじゃん。" userName="kh_hk" createdAt="2025-03-25T23:21:32" color="">}}

{{<matomeQuote body="ほとんどのことは爆発的な成長なんてしてないし、ほとんどの人はAIにそんなに関わってない。これはマーケティングの素晴らしいコミュニケーションの例だよ。この分野に詳しくない人に、何が起こっているのかを伝えてるんだ。<br><br>＞一番進んだモデルじゃないものを公開する理由？<br><br>さあ、OpenAIの会議に出てるわけじゃないし。何が起こってるか教えてくれないとわかんないじゃん。最高のモデルじゃないものをリリースする可能性も十分あるし、これはマジで新しいやつだって説明してるんだよ。" userName="roenxi" createdAt="2025-03-25T23:58:33" color="">}}

{{<matomeQuote body="（肩をすくめる）基礎モデルより劣るモデルが時々リリースされるのはよくあることだよ。新しいオプション、機能、価格設定、サービスレベル、APIなどを提供するためだったり、メインモデルに組み込まれる予定がないものだったりする。<br><br>新しい基礎モデルをトレーニングするには時間もお金もかかるからね。毎週のようにできるわけじゃない。だから“史上最高のモデルを発表します”って言うのは当然だと思うよ。" userName="CamperBob2" createdAt="2025-03-25T23:57:35" color="#ff5733">}}

{{<matomeQuote body="o3 miniは、一番進んだモデルというより、当時としてはそのIQに対して信じられないほど手頃な価格だったんだ。最先端じゃなくても、効率を重視することもある。" userName="ghshephard" createdAt="2025-03-25T23:44:11" color="">}}

{{<matomeQuote body="誇張してるわけじゃないよ。新しい製品を使う理由を正確に説明してるんだよ。<br>あと、すべてのモデルがベンチマーク性能で最前線を目指してるわけじゃないんだ。速くて安いだけのモデルもあるんだから。" userName="sebzim4500" createdAt="2025-03-26T13:42:44" color="#785bff">}}

{{<matomeQuote body="ジョブズ亡き後のAppleに、これほどの期待を抱かせるようなものが何かあったっけ？" userName="sigmoid10" createdAt="2025-03-25T19:21:21" color="">}}

{{<matomeQuote body="どのiPhoneも今までで最高のiPhoneだってこと。" userName="internetter" createdAt="2025-03-25T19:34:13" color="">}}

{{<matomeQuote body="Apple Intelligence搭載の18 Pro Max Ultraでさえ？<br>スティーブ・ジョブズのマーケティングに関する独白：https://www.youtube.com/watch?v=P4VBqTViEx4" userName="brianshaler" createdAt="2025-03-25T21:10:21" color="">}}

{{<matomeQuote body="9月に出るやつだけね😉" userName="layer8" createdAt="2025-03-25T21:43:27" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="それってある意味そうだよ。iPhone 16eは最新だけど最高とは言えないんじゃない？それとも、純粋な性能じゃなくて価格対性能で評価してるのかな？（16eが一番いいかすらわからないけど）" userName="echoangle" createdAt="2025-03-26T18:16:11" color="">}}

{{<matomeQuote body="Appleは最高のスマホだって言ったの？Proモデルだけじゃないかな。" userName="azinman2" createdAt="2025-03-27T20:15:29" color="">}}

{{<matomeQuote body="いや、俺が（間接的に）返信したユーザーが言ったんだよ：<br>＞Every iPhone is their best iPhone yet<br>＞どのiPhoneも今までで最高のiPhoneだって" userName="echoangle" createdAt="2025-03-27T21:44:40" color="">}}

{{<matomeQuote body="Appleってマジで最高のソフトウェア会社ってわけじゃないし、Siriでデジタルアシスタントの先駆けだったけど、放置してる感じだよね。今のAIの能力からすると、Siriがマジでポンコツなの笑えるレベル。でもAndroidもマジで良いビルトインのソリューションないんだよね。<br>Appleはハードウェアの会社って感じ。でもCookはMacのMシリーズARMチップとか、Airpods、Apple watch、Apple payで結構良い実績上げてるよね。" userName="chrisco255" createdAt="2025-03-26T15:24:11" color="">}}

{{<matomeQuote body="Apple siliconチップ" userName="pell" createdAt="2025-03-26T00:37:23" color="">}}

{{<matomeQuote body="いや、でも「最高に～」ってのはもうやめたんじゃないかな(他の頭空っぽの会社がみんな真似したから)。今は形容詞をドットで繋げてるんだよ。<br>Hotwheels：Fast．Furious．Spectacular．って感じで。" userName="kh_hk" createdAt="2025-03-25T19:35:26" color="">}}

{{<matomeQuote body="もしかしたらみんな気づいたんじゃない？Appleの「最高にXな製品」ってのは、誰かがずっと前にXをやってて、Appleが単に後追いしてるだけってことに。" userName="sigmoid10" createdAt="2025-03-25T20:05:11" color="">}}

{{<matomeQuote body="改善し続ければ、常に最高か一番になるでしょ？<br>＞https://www．youtube．com/watch?v=bPkso_6n0vs" userName="magicmicah85" createdAt="2025-03-26T00:31:43" color="">}}

{{<matomeQuote body="勾配降下法のステップは毎回最高のモデルじゃん！" userName="Buttons840" createdAt="2025-03-25T21:45:14" color="">}}

{{<matomeQuote body="勢いがある勾配降下法だとそうとは限らないよ。" userName="echoangle" createdAt="2025-03-26T18:17:00" color="">}}

{{<matomeQuote body="それってマジで無意味ってわけじゃないかもよ。1)自社の製品としか比較してないし、2)その製品が最新のベストだって知るのは役に立つじゃん。新しい機能があるかもしれないけど、実際には一番進んでない新製品じゃなくてね。<br>特にXbox(Series X vs S)からOpenAIのモデル名(4o vs o1-pro)まで、名前を見ただけじゃどれが最新でベストかわからない場合に重要だよね。<br>ここでは4oが一番有能なimage generatorだって言ってるけど、これはマジで役立つ情報だよね。特にドロップダウンリストに複数のモデルがあって、どれでも画像を生成できる場合は。" userName="hombre_fatal" createdAt="2025-03-25T19:11:24" color="#ff33a1">}}

{{<matomeQuote body="発表の時の表現がいつも同じっていう、細かい指摘だよ。<br>＜製品名＞：史上最高の＜最上級の言葉＞＜もの＞。" userName="kh_hk" createdAt="2025-03-25T19:17:32" color="">}}

{{<matomeQuote body="自分のマーケティングでそんな言い方したくないけどさー、マジでみんな時間くれなさすぎなんだよねー。マーケティングってのは、その物の説明じゃなくて、もっと知りたいって思わせるためのもんだからしゃーない。" userName="rachofsunshine" createdAt="2025-03-25T19:31:35" color="">}}

{{<matomeQuote body="ほんのちょっとしか注意を払わない人たちのことなんて、興味ない人たちって言うじゃん。プロジェクトプランナー探してるとか、その分野に興味あるとかじゃない限り、どんな言葉使ってもアピールなんて無理だよ。もし興味あったら、ちゃんと隅々まで読むって。" userName="skydhash" createdAt="2025-03-25T21:08:12" color="#38d3d3">}}

{{<matomeQuote body="理想論乙。マーケティングは効果あるからみんなやってんだよ。" userName="adammarples" createdAt="2025-03-25T21:37:36" color="">}}

{{<matomeQuote body="いやいや、みんなマーケティング使うのは、それが無難な選択だからでしょ。効果ないことだって多いけど、誰もリスク冒して反対意見なんて言いたくないんだよ。" userName="bigstrat2003" createdAt="2025-03-26T01:14:17" color="">}}

{{<matomeQuote body="いやー、今はソフトウェアエンジニアリングの用語から「blazingly fast（超高速）」って言葉を消したい。" userName="xboxnolifes" createdAt="2025-03-25T20:08:02" color="">}}

{{<matomeQuote body="Electronのおかげで願いが叶いそうじゃん。" userName="acheron" createdAt="2025-03-26T03:00:52" color="">}}

{{<matomeQuote body="＞もし_effortlessly_ eliminate any word you mean？<br>＞もし楽に言葉を消せるならって意味？" userName="kh_hk" createdAt="2025-03-25T19:41:23" color="">}}

{{<matomeQuote body="バージョニングがマジで意味不明だから、実はダウングレード版とかライト版とかリリースしててもおかしくないよね。" userName="vagab0nd" createdAt="2025-03-26T16:40:03" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
