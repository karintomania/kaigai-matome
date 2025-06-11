+++
date = '2025-06-04T00:00:00'
months = '2025/06'
draft = false
title = 'プログラマー向けプロンプトエンジニアリング虎の巻'
tags = ["プロンプトエンジニアリング", "AI", "プログラミング", "エンジニア", "AI活用"]
featureimage = 'thumbnails/color4.jpg'
+++

> プログラマー向けプロンプトエンジニアリング虎の巻

引用元：[https://news.ycombinator.com/item?id=44182188](https://news.ycombinator.com/item?id=44182188)




{{<matomeQuote body="俺の経験だと、プロンプトエンジニアリングの真のテクニックはたった3つだよ。In Context Learning（例を見せるやつ、one shotとかfew shot）、Chain of Thought（ステップバイステップで考えさせるやつ）、Structured output（JSONみたいに形式を指定するやつ）だね。この記事のRole Promptingも加えるのはアリかも。RAGは文脈を要約させる別物だよ。ぶっちゃけ、それ以外は全部「何をしたいかハッキリ言う」ってことに尽きるんだよね。" userName="DebtDeflation" createdAt="2025/06/04 22:20:47" color="#ff5c5c">}}




{{<matomeQuote body="結局Contextが一番大事だよ。<br>Typescriptで始めてデータサイエンスの質問しても、上手く答えられないでしょ？<br>Pythonで同じ質問したら、すごい良い答えが返ってくるんだ。<br>LLMは（まだ）ドメイン間の知識を本当の意味で transfer できないから、正しくprimingしてあげる必要があるんだよね。" userName="dachris" createdAt="2025/06/05 04:36:32" color="">}}




{{<matomeQuote body="どうかな〜？俺、Typescriptでサイドプロジェクトやってて、「linear regression」って言葉が思い出せなかったんだよ。それでagentに「点群の中にtrend lineを引くあのやつを実装して」みたいな曖昧なこと言ったら、一発でlinear regressionのコードを出してくれたんだよね。<br>あと、シンプルなSQLをいじったり、Bunで結果を分析させたりするのもすごく得意だって気づいたよ。<br>俺はそこまでheavyなデータ処理はしてないけど、今のところremarkably良い感じ。" userName="christophilus" createdAt="2025/06/05 11:54:23" color="">}}




{{<matomeQuote body="Linear regressionはニッチじゃないし、よく知られたトピックで、データサイエンス以外の多くのドメインでも使われてるからね。<br>でも、「データ点を類似グループにまとめるあのやつ」を実装してって頼むのは、K-meansみたいにmachine learningに特有だから、もう少しcontextが必要だよ（今試してみた）。" userName="whoknowsidont" createdAt="2025/06/05 16:26:52" color="">}}




{{<matomeQuote body="freshなsessionで試してみたよ：<br>最初のprompt：「新しいtypescriptファイルを開始して。これはデータサイエンスの目的で使用する。」<br>2番目のprompt：「データ点を類似グループにまとめるあのやつを実装して。」<br>出力はK-meansを実装したフルfunctionだったよ（Euclidean distance functionも一緒に）。<br>見てみて：https://chatgpt.com/share/68420bd4-113c-8006-a7fe-c2d0c9f91d..." userName="throw2342412314" createdAt="2025/06/05 21:38:09" color="#38d3d3">}}




{{<matomeQuote body="「データサイエンスの目的で使用する」って、この議論のポイントを台無しにしてない？無視してるんじゃない？<br>誰も違うと思ってなかったと思うけど？" userName="whoknowsidont" createdAt="2025/06/06 14:49:30" color="">}}




{{<matomeQuote body="それはlarge public training datasetsがないnicheなプラットフォーム/言語に当てはまると思うんだ。<br>もしRustが今日発表されたとしたら、productivityの差がすごく不利に働いて、仮にhypothetically生き残れるかどうかわからないレベルだったと思う。" userName="nxobject" createdAt="2025/06/05 23:08:33" color="">}}




{{<matomeQuote body="magicalな説明じゃなくて、LLMがどう動くかっていう原理に基づいてると思うけど。<br>もちろん、具体的にどう動くかはまだ完全に解明されてないけど、basic principlesをmagicalって呼ぶのは行き過ぎかな。" userName="LPisGood" createdAt="2025/06/05 15:29:10" color="">}}




{{<matomeQuote body="LLMがどう動くかって？<br>他の人は知らないと思ってたんだけど、どうかな。" userName="apwell23" createdAt="2025/06/05 20:23:41" color="">}}




{{<matomeQuote body="Even role prompting is totally useless imo. Maybe it was a thing with GPT3, but most of the LLMs already know they”re ”expert programmers”. I think a lot of people are just deluding themselves with ”prompt engineering”.<br>Be clear with your requirements. Add examples, if necessary. Check the outputs (or reasoning trace if using a reasoning model). If they aren”t what you want, adjust and iterate. If you still haven”t got what you want after a few attempts, abandon AI and use the reasoning model in your head." userName="lexandstuff" createdAt="2025/06/04 23:08:18" color="">}}




{{<matomeQuote body="It”s become more subtle but still there. You can bias the model towards more ”expert” responses with the right terminology. For example, a doctor asking a question will get a vastly different response than a normal person. A query with emojis will get more emojis back. Etc." userName="dimitri-vs" createdAt="2025/06/05 02:22:01" color="#ff33a1">}}




{{<matomeQuote body="This is definitely something I”ve noticed — it”s not about naïve role-priming at all, but rather about language usage.<br>“You are an expert doctor, help me with this rash I have all over” will result in a fairly useless answer, but using medical shorthand — “pt presents w bilateral erythema, need diff dx” — gets you exactly what you”re looking for." userName="didgeoridoo" createdAt="2025/06/05 11:45:24" color="#45d325">}}




{{<matomeQuote body="If this holds up, it”s an interesting product idea you could MVP in a day.<br>Lay person”s description<br>-＞ translate into medical shorthand<br>-＞ get the expert response in shorthand<br>-＞ translate back.<br>Liability and error is obviously problematic." userName="james_marks" createdAt="2025/06/05 14:20:11" color="#38d3d3">}}




{{<matomeQuote body="I get the best results with Claude by treating the prompt like a pseudo-SQL language, treating words like ”consider” or ”think deeply” like keywords in a programming language. Also making use of their XML tags[1] to structure my requests.<br>I wouldn”t be surprised if in a few years from now some sort of actual formalized programming language for ”gencoding” AI is gonna emerge.<br>[1]https://docs.anthropic.com/en/docs/build-with-claude/prompt-..." userName="easyThrowaway" createdAt="2025/06/05 12:40:42" color="#ff33a1">}}




{{<matomeQuote body="One thing I”ve had a lot of success with recently is a slight variation on role-prompting: telling the LLM that someone else wrote something, and I need their help assessing the quality of it.<br>When the LLM thinks _you_ wrote something, it”s nice about it, and deferential. When it thinks someone else wrote it, you”re trying to decide how much to pay that person, and you need to know what edits to ask for, it becomes much more cut-throat and direct." userName="petesergeant" createdAt="2025/06/05 11:47:01" color="#785bff">}}




{{<matomeQuote body="I notice this to affect its tendency to just make things up in other contexts, too. I asked it to take a look at ”my” github, gave it a link, then asked it some questions; it started talking about completely different repos and projects I never heard of. When I simply said take a look at `this` github and gave it a link, its answers had a lot more fidelity to what was actually there (within limits of course - it”s still far from perfect) [This was with Gemini Flash 2.5 on the web]. I have had simlar experiences asking it to do style transfer from an example of ”my” style versus ”this” style, etc. Presumably this has something to do with the idea that in training, every text that speaks in first person is in some sense seen as being from the same person." userName="dwringer" createdAt="2025/06/05 16:44:04" color="#45d325">}}




{{<matomeQuote body="The main thing I think is people just trying to do everything in ”one prompt” or one giant thing throwing all the context at it. What you said is correct but also, instead of making one massive request breaking it down into parts and having multiple prompts with smaller context that say all have structured output you feed into each other.<br>Make prompts focused with explicit output with examples, and don”t overload the context. Then the 3 you said basically." userName="coolKid721" createdAt="2025/06/05 13:38:04" color="#ff5733">}}




{{<matomeQuote body="Regarding point 3, my colleagues and i studied this for a use case in science: https://doi.org/10.1038/s41467-024-45563-x" userName="denhaus" createdAt="2025/06/05 00:27:38" color="">}}




{{<matomeQuote body="あのね、材料化学の3つのタスクで試したんだよ。ドーパントとホストを紐付けたり、MOFの目録作ったり、組成とか形態とか応用情報を抽出したりね。論文の1文や段落からデータ取って、簡単な英語やJSONみたいな構造化データにしたんだ。これ、研究論文から専門知識のDB作るのにシンプルで使いやすくて、すごく柔軟な方法だと思うよ。" userName="melagonster" createdAt="2025/06/05 03:12:17" color="">}}




{{<matomeQuote body="簡単に言うと、多くの科学分野で構造化されたDBを作る方法ってことかな。なんでかって？そういうDBにデータ駆動な手法を適用するためだよ。それがどうした？って？百万本もの論文に隠された科学的な疑問やトレンドを、強力な方法で探求できるんだ。例えば、PDBがタンパク質折りたたみの理解に貢献して、AlphafoldみたいなML技術を可能にしたみたいにね。多くの科学分野はタンパク質折りたたみほどデータが豊富じゃない。でも、もしそうできたら？長い話になるけど、過去15年の計算科学＋MLの研究で、構造化DBが新しい発見のフロンティアを開いてきたんだ（PDB、Materials Projectとかね）。でも、ほとんどの科学トピックはDBになってないで、何百万本もの論文に散らばってる。特に材料科学の一部では深刻な問題なんだ。データが少ないんじゃなくて、構造化するのが難しいんだよ。DBがないから、ほとんどのML手法が使えないんだ。この論文は、科学論文から専門的で複雑な階層的な知識グラフを構造化DBとして大量に生成する方法なんだ。ファインチューニングはうまくいったけど、プロンプトエンジニアリングはダメだった（当時はね、今は変わったかもだけど）。DBができたら、科学のサブ分野全体をMLや統計で分析できるんだよ。" userName="denhaus" createdAt="2025/06/09 02:35:32" color="#38d3d3">}}




{{<matomeQuote body="Chain Of Thoughtプロンプトって、GPT “o”シリーズとかClaude Sonnetみたいな新しい推論モデルだと、効果がかなり薄れるんだよね。読者の課題として、プロンプトエンジニアリングの論文にあるChain of Thoughtの例と対照プロンプトを試してみてほしいな。最新モデルは、デフォルトで推論するように訓練されてるか、指示されてるのがわかると思うよ。出力はほぼ同じになるから。CoTプロンプトは、多分数年前の古い、性能が低いモデルにはもっと効果的だったんだろうね。問題をどう推論してほしいか、モデルに正確に指示するのもメリットがあるかもしれないけど、逆にモデルの能力を制限しちゃう可能性もあることに注意してね。俺が見つけたのは、ほとんどの場合、モデルにデフォルトの推論能力を使わせて、それをガイドする方が、自分で推論方法を与えるよりも良いってことかな。" userName="Esophagus4" createdAt="2025/06/07 12:46:03" color="#ff5733">}}




{{<matomeQuote body="補足だけど、俺たちのユースケースでは、low-shotとかfew-shotのプロンプトエンジニアリングがうまくいかなかったから、プロンプトエンジニアリングよりもファインチューニングを多めに使ったんだよ。" userName="denhaus" createdAt="2025/06/05 00:28:42" color="">}}




{{<matomeQuote body="構造化出力を作りながら、同時に同じプロンプトで推論させるのって難しかった？" userName="faustocarva" createdAt="2025/06/04 22:39:51" color="">}}




{{<matomeQuote body="これは2段階のプロンプトを使えばいいんだよ。まず答えを推論させて、明確にラベル付けした’final answer’セクションに英語で答えを記述させる。次に、その応答をJSONモードで再度実行して、前のモデルが言ったことを構造化された形式にパッケージングするようにプロンプトを出すんだ。2段階目は安いモデルでも大丈夫だよ。" userName="demosthanos" createdAt="2025/06/05 00:16:42" color="#38d3d3">}}




{{<matomeQuote body="いいね、試してみるよ！でも、それはChain basedなプロンプト？それとも普通の会話の流れの中で？" userName="faustocarva" createdAt="2025/06/05 01:09:07" color="">}}




{{<matomeQuote body="会話でもできるけど、APIリクエストで一番成功したよ。それが一番柔軟性があるからね。擬似プロンプトはこんな感じかな：<br>プロンプト1：タスクを実行して、詳しく説明して、${THINGS_YOU_NEED_FOR_JSON}を含む答えの明確な要約で締めくくって。<br>プロンプト2：前のエージェントが${CONTENT}と言いました。${SCHEMA}に従ってJSONとして構造化してください。<br>理想的には、プロンプト2でJSONスキーマをサポートするモデルを使うと、返されるものが100％パース可能であることが保証されるよ。そうでなければ、ローカルで検証してエラーを返し、修正するようにプロンプトを送ることで自分で実装することもできるよ。" userName="demosthanos" createdAt="2025/06/05 02:12:25" color="#ff5c5c">}}




{{<matomeQuote body="たまに感じるんだけど、めっちゃ長くて複雑なプロンプトって、モデルの認知能力を低下させる気がするんだよね。制御できてる感じとか、ちゃんとしたエンジニアリングに見えるかもしれないけど、全体としては得じゃないんじゃないかな。俺の使い方は、すごくシンプルでミニマルなプロンプトにして、何回かイテレーションしながら微調整するってところに落ち着いたよ。" userName="haolez" createdAt="2025/06/04 18:13:34" color="#ff5733">}}




{{<matomeQuote body="俺も最初はそのやり方で始めたわ。1. 最小限のコンテキスト、前提、ゴールを与える。2. 回答を確認してプロンプトを修正する。経済的なやり方でもあるよね。エージェントには散々やられたんだ（ただスピンして1回のプロンプトで30ドル燃やしたり、コードベースをめちゃくちゃにしたり、前のコードに戻ったり）。AIにプロジェクトで大量のコードを書かせると、進化させたり先に進むのが難しくなるって警告も必要だと思う（自分で考えて書かなかったコードは記憶に定着しにくいしな）。" userName="taosx" createdAt="2025/06/04 19:25:43" color="#45d325">}}




{{<matomeQuote body="＞ただスピンして1回のプロンプトで30ドル燃やしたり、コードベースをめちゃくちゃにしたり、前のコードに戻ったり）。<br>俺の経験も全く同じだよ。時代遅れってレッテル貼られるのが怖くて、これを認めるのが怖いんだ。" userName="apwell23" createdAt="2025/06/04 22:53:10" color="">}}




{{<matomeQuote body="それって、1年前に俺が書いたコードとか、誰か他人のコードを修正しなきゃいけない時と何が違うの？" userName="scarface_74" createdAt="2025/06/04 22:18:32" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="探せばあるはずだけど、素人じゃなくて専門家の語彙を使う方が良い結果を生むって証拠があるらしい。それは理にかなってるよね。普通に話す場所は間違いが多いけど、専門用語で話す場所は正しい可能性が高い。そして学習データはその関連性をAIの空間で結びつけるだろうから。" userName="conception" createdAt="2025/06/05 01:00:11" color="">}}




{{<matomeQuote body="結局、AIってのは本質的にはまだただのドキュメント補完マシンだよ。すごく賢いけどね。入力された部分に合う続きを見つけようとしてるだけなんだ。" userName="ijk" createdAt="2025/06/05 23:09:51" color="">}}




{{<matomeQuote body="これ、正しいと思うわ。俺はよく質問を2段階に分けて、この利点を活用してるんだ。（1）その分野のプロならどう質問するか聞く。（2）その質問を新しいチャットに貼り付ける。" userName="heisenzombie" createdAt="2025/06/05 10:27:04" color="#ff5c5c">}}




{{<matomeQuote body="別のタスクの話だけど、同僚がすごく長いプロンプトを書いてたんだ。それを組み込む必要があったから、プロンプトのCRUD操作を追加したんだ。テストで、すごく短いプロンプトを作ってみたんだ。「これを＜profession＞として分析して」みたいなやつ。出力はほぼ同等だったよ。ただ、長いプロンプトの出力には、そのプロンプトの文字通りの部分への参照が（結構たくさん）含まれてた。意味不明じゃなかったけど、まるでそのモデル（ちなみにGemini 2.5）は、プロンプトから抽出したタスクに対する基本的な応答があって、そこに余計な部分をマージしてるみたいだった。少なくともこの特定のタスクでは、モデルに違う「考え方」をさせるのは（簡単に）できないみたいだね。" userName="tgv" createdAt="2025/06/04 18:28:53" color="#ff5733">}}




{{<matomeQuote body="ああ、今日まさにそういう経験したよ。CLAUDEで大きな詳細なプロンプトファイルを書いてコードレビューしてたんだけど、そのファイルがないブランチでやったら、かえって良い結果が出たんだ。" userName="pjm331" createdAt="2025/06/04 21:30:21" color="#785bff">}}




{{<matomeQuote body="俺も同じ経験だな。それと同時に、いくつかのエージェントのシステムプロンプト（https://github.com/x1xhlol/system-prompts-and-models-of-ai-t...）を見たんだけど、ものすごく長いんだ。あれはどういう仕組みなんだろう？" userName="nico" createdAt="2025/06/05 16:12:11" color="">}}




{{<matomeQuote body="俺もそう結論づけてるんだけど、AIラボが出してる長いシステムプロンプト（https://docs.anthropic.com/en/release-notes/system-prompts#m...）はどう説明するの？" userName="sagarpatil" createdAt="2025/06/05 04:31:41" color="">}}




{{<matomeQuote body="》制御感や適切なエンジニアリングって感じがするかも<br>超辛口だけど、個人的にはLLMに関わることを“適切なエンジニアリング”だと思ったことないな。“もがいてる”のはそう、“試行錯誤”も絶対そう。“自信満々の間違ったハルシネーション”も確かにある。でも“適切なエンジニアリング”と“LLM”は、僕の中では相容れない概念だね。" userName="ath3nd" createdAt="2025/06/05 20:54:55" color="">}}




{{<matomeQuote body="これは“無関係なコンテキストはコンテキスト無しより悪い”ってシンプルに言えると思うけど、関連性の高い長いプロンプトがダメってわけじゃないよ。" userName="dwringer" createdAt="2025/06/05 13:13:51" color="">}}




{{<matomeQuote body="僕も同じだよ。最初に無理やりロードマップを作るんじゃなくて、比較的具体的なニーズから始める。知らない技術だと、“コピペ”する前にそれが何を意味するのか質問して理解するようにしてる。高度なプロンプトだと、生成されたコードがコンパイルに失敗して、原因を追うのがゼロから始めるより時間かかることがあるんだ。" userName="wslh" createdAt="2025/06/04 18:37:56" color="#38d3d3">}}




{{<matomeQuote body="より高度なプロンプトには、Markdownで仕様書（specs）を使ってるよ。まずLLMにMarkdownを洗練させて実装ステップを追加してもらうんだ。そうすれば、LLMが何をやるかレビューできる。実装が始まったら、“ステップ1だけ実装して、終わったらドキュメントを更新して”って頼めるし、仕様書が正しく実装されたか検証させることもできるよ。" userName="lodovic" createdAt="2025/06/04 21:12:40" color="#ff33a1">}}




{{<matomeQuote body="これって、いつから法務用語みたいなプログラミングになるの？" userName="matt3210" createdAt="2025/06/05 00:51:53" color="">}}




{{<matomeQuote body="もうなってるよ。プログラミング言語はすでに構文にすごく厳しいでしょ。専門用語も同じで、あいまいさをなくすためって理由も同じだよ。" userName="efitz" createdAt="2025/06/05 04:56:30" color="">}}




{{<matomeQuote body="“プロンプトエンジニアリング”なんてものは存在しないよ。いつから適切で意味のある文章を書く能力がエンジニアリングになったの？これは“ソフトウェアエンジニアリング”よりさらにひどいね。残念なことに、たぶんこういう求人が出てきて、文章を書く並外れた能力でプロンプトエンジニアって名乗る人たちが出てくるんだろうな。" userName="bsoles" createdAt="2025/06/05 00:08:17" color="">}}




{{<matomeQuote body="》いつから適切で意味のある文章を書く能力がエンジニアリングになったの？<br>何が適切で意味があるかは、たくさんの変数に依存するからだよ。それをテストし、追跡し、ログを取り、バージョン管理することが、“感覚でのプロンプト作成”から“プロンプトエンジニアリング”にするんだと僕は思うね。この作業を詳しく説明した論文はたくさんあるよ。何かをやる方がやらないより効果的だったり（ピンクの象の話みたいにね）、構造やスタイル、情報の順序、問題の再提示が重要だったりする。それに、モデルのファミリーには癖があるし、APIで提供されるモデルを使うなら、新しいバージョンがプロンプトでうまく動作するか内部チェックが必要だ。こういうチェックやテストが“プロンプトエンジニアリング”だよ。多くの人はバズワードに脊髄反射して、その本質を見落としてる気がするな。" userName="NitpickLawyer" createdAt="2025/06/05 05:46:47" color="#45d325">}}




{{<matomeQuote body="それでも、エンジニアリングからはまだまだかけ離れてるよ。だって、エンジニアリングの学位を取るのに、どれだけ長く、たくさんの分野を勉強しないといけない？5年とかでしょ。一方、プロンプトの微調整なんて、数日実験するだけで学べちゃうんだから。" userName="gwervc" createdAt="2025/06/05 15:49:23" color="">}}




{{<matomeQuote body="プロンプトエンジニアリングのエンジニアリングって言葉にみんなキレすぎだろ？定義はハッキリしてるし、なんでそんな些細なことで揉めるんだよ？変なの。" userName="NitpickLawyer" createdAt="2025/06/05 17:35:17" color="">}}




{{<matomeQuote body="うまくいく方法があるってのはカフェでコーヒー頼む時も同じだろ？「バリスタ注文エンジニアリング」なんてあるのかよ？「問題を言い直すのが重要」って言うなら、具体例見せてくれよ。" userName="apwell23" createdAt="2025/06/05 20:33:38" color="">}}




{{<matomeQuote body="もし近所のバリスタが自分をコーヒーエンジニアって呼び始めたら、もっと信用できる肩書きだと思うかもね。" userName="liampulles" createdAt="2025/06/05 10:32:54" color="">}}




{{<matomeQuote body="この調子だと、エンジニアっていう肩書きもマネージャーやVPみたいに価値が下がっちゃうかもな。<br>だからコーヒーエンジニアが出てくるのもありえるかもね:D" userName="hansmayer" createdAt="2025/06/05 12:32:28" color="">}}




{{<matomeQuote body="バーテンダーはもうミクソロジストって呼ばれるようになってるしね。" userName="gwervc" createdAt="2025/06/05 15:45:52" color="">}}




{{<matomeQuote body="個人的な経験だけで不可能って思わない方がいいよ。LLMで難しい問題を解くにはプロンプトエンジニアリングは絶対必要（でもそれだけじゃダメ）。ないと解決難しいし、あっても90%までで最後の微調整はいる。もしかしたら、エンジニアリングじゃなくて「プロンプトクラフティング」って呼ぶべきかもな。工学的な原則より、職人技やセンスの方が大きいから。" userName="yowlingcat" createdAt="2025/06/05 02:02:33" color="#45d325">}}




{{<matomeQuote body="「high leverage outcomes」なんてマネージャーみたいな言葉使うなよ。普通の言葉で話せ！プロンプトエンジニアリングじゃなくプロンプトクラフティングって言うべきって意見、分かる。エンジニアリングは予測可能なプロセス（橋とか）だけど、プロンプティングは違うもんな。" userName="SrslyJosh" createdAt="2025/06/05 16:50:49" color="">}}




{{<matomeQuote body="俺のビジネスの目標は、LLMで人間より桁違いの成果を出すことだ。それがレバレッジで、普通の言葉だろ。知らないからってマネージャー用語って決めつけるなよ。LLMにはプロンプトエンジニアリング（クラフティングでもいい）が超重要ツールなんだ。コード書いて連携したり、パターン化したりしてる。工学とクラフティングの中間かな。エンジニアリングの言葉の曖昧さが不安にさせてるんだろうけど、LLM活用でコードの書き方自体が変わってるんだから、ソフトウェアエンジニアリングも根本的に進化してるに決まってるだろ。" userName="yowlingcat" createdAt="2025/06/05 20:43:27" color="#45d325">}}




{{<matomeQuote body="コンテキストが一番大事。例えばアメリカとインドのチームで話し方変えるだろ？「プロンプトエンジニアリング」もそれと同じ。言語モデルって癖があるから、良い結果出すには特定の指示が必要なんだ。無料のモデルでスクリプト書かせてみれば分かるよ。それぞれスタイルが違うから。" userName="theshrike79" createdAt="2025/06/06 12:17:58" color="#ff5c5c">}}




{{<matomeQuote body="yowlingcatの意見もわかるけど、あなたの言いたいこともわかるよ。俺から見れば、これって’SSHできる人’っていう求人出すのにちょっと似てる感じ。SSHは便利なスキルだけど、linux/unix/network administrationのごく一部であって、専門として極めるようなもんじゃないからね、もし意味がわかるなら。" userName="sach1" createdAt="2025/06/05 11:15:21" color="">}}




{{<matomeQuote body="そもそもちゃんとした文章なんて書く必要もないんだよ。「me get error X how fix here code:」みたいな文章でもだいたい通じるし。" userName="mseepgood" createdAt="2025/06/05 14:19:35" color="">}}




{{<matomeQuote body="プロンプトエンジニアリングって、エンジニアリングっていうよりは、ピープルマネジメントのスキルに近いと思うんだよね。" userName="empath75" createdAt="2025/06/05 13:36:30" color="">}}




{{<matomeQuote body="codeも意味のある文章だって言えるんじゃない？だから「ソフトウェアライター」の方が適切じゃない？（笑）" userName="bicepjai" createdAt="2025/06/05 14:40:59" color="">}}




{{<matomeQuote body="AI sloperators（AI使う人たち）は、自分らがちゃんと仕事してるように見せるのに必死なんだよ。" userName="SchemaLoad" createdAt="2025/06/05 06:08:31" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="弁護士みたいに？" userName="lowbloodsugar" createdAt="2025/06/05 21:40:07" color="">}}




{{<matomeQuote body="ジャスティスエンジニアには敬意を払うように。教養がない人たちのために言うと、ローエンジニアっていうのは議会とか連邦議会とか、[あなたの国の呼び方を入れてね]のメンバーのことだから。" userName="ocimbote" createdAt="2025/06/06 05:34:14" color="">}}




{{<matomeQuote body="もう、”エンジニア”って言葉にそんなに反応するの？文化的なもん？" userName="wiseowise" createdAt="2025/06/05 07:03:13" color="">}}




{{<matomeQuote body="昔のコンピュータサイエンスの授業で、プログラム検証の方法を習ったんだ。それがデータエンジニアリングでプロンプトを作る時にすごく役立ってるんだよね。「Given input (…) and preconditions (…) write me spark code that gives me post conditions (…)」みたいに、入力とか事前条件、事後条件をちゃんと形式的に指定すると、だいたい良い感じのコードが出てくるよ。David GriesのScience of programmingとか、そういう考え方ね。" userName="orochimaaru" createdAt="2025/06/04 21:17:11" color="#785bff">}}




{{<matomeQuote body="今ってプロンプトガイドがいっぱいあるけど、正直あんまり必要ないと思うな。ツールをしっかり使い込んで、使い方に慣れてくれば、どんなプロンプトを使えば良いかなんて自然と分かってくるもん。" userName="ColinEberhardt" createdAt="2025/06/04 18:07:55" color="">}}




{{<matomeQuote body="なんかさ、Googleが流行り始めた時のあの熱狂とFOMO（取り残されることへの恐れ）を思い出すね。本がいっぱい出て「買わないと時代遅れになるぞ！」みたいな。でも実際は、誰でも一日で使えるようになっちゃったじゃん。全部のツールを知らなきゃダメなんて議論は無用だったんだよな。" userName="Disposal8433" createdAt="2025/06/04 20:40:27" color="">}}




{{<matomeQuote body="いやいや、それって逆を証明してるだけだよ。「Googleを使い慣れてる人」と、適当な言葉を入れて検索する人との間には、確実に違いがあるってことじゃん。" userName="wiseowise" createdAt="2025/06/05 07:05:33" color="">}}




{{<matomeQuote body="え、本当にそう？ 最近のGoogleってさ、「すごい検索の達人」向けっていうより、「適当な入力」でもうまくいくようにめちゃくちゃ最適化されてる気がするけどな。" userName="marliechiller" createdAt="2025/06/05 08:15:55" color="">}}




{{<matomeQuote body="プロンプトガイドを読んだり（上手い人のやり方を見たり）するのが、すごくためになる人もいると思うな。自分で頑張って改善しようとしない人でも、ガイドなら読むかもしれないし。実際、他の人がツール使ってるとこ見たり、友達と話したりして、自分で使うだけじゃ気づけなかったコツを結構学んだよ。それは間違いなく自分の成長につながったね。" userName="sokoloff" createdAt="2025/06/04 21:54:45" color="#785bff">}}




{{<matomeQuote body="何年も前に、ユーザーストーリーの書き方ガイドがあったのを思い出したよ。「As a [role], I want to be able to do [task] so I can achieve [objective]」ってやつね。あれ、頭良い開発者でも、あいまいな要求を正確に理解してもらうのにすごく役立ったんだ。シンプルに見えるけど、経験上、優秀な開発者でも構造化されてない要求は見落としたり誤解したりすることがあるんだよね、彼らのせいじゃなく。" userName="awb" createdAt="2025/06/05 06:51:57" color="#38d3d3">}}




{{<matomeQuote body="少なくとも、他の人がこれらのツールでどう生産的にやってるかを知るのには役立つよね。自分がすでにやってることを改善するような clever なアイデアが見つかることもあるし、この分野の今の状況を知るのにも良い。一年前に何かやってみて、もう今はダメだと思ってても、進化してる可能性もあるしね。自分で試行錯誤して車輪を再発明するより、まず調べる方が好きだな。他の人が時間かけて見つけたことを共有してくれるのは本当にありがたいよ。もう十代みたいに世界のすべてを探求する時間があるわけじゃないからさ。" userName="TheCowboy" createdAt="2025/06/05 02:41:20" color="#45d325">}}




{{<matomeQuote body="プロンプトには一見分からないコツがあるんだね。例えば「please」みたいな丁寧語は消した方がいいみたいだよ。" userName="baby" createdAt="2025/06/05 15:56:33" color="">}}




{{<matomeQuote body="俺の経験だと、LLMだけじゃ無理な問題は、いくらプロンプト“エンジニアリング”してもダメなんだよね。サブタスクに分けたり例を示したりして、部分的に解決させるしかないと思う。もし違う経験してる人いたら教えてほしいな。" userName="heisenburgzero" createdAt="2025/06/05 01:59:37" color="#45d325">}}




{{<matomeQuote body="LLMを使うスキルって、問題分解の感覚を掴むことと、それをするべきかどうかの判断力だと思う。記事にも書いてあったね。コードの構造とかコメントも、LLMとの連携を良くするために変わっていくだろうし、LLM自身も問題分解を提案してくれるようになるかもね。" userName="TheCowboy" createdAt="2025/06/05 02:10:05" color="#785bff">}}




{{<matomeQuote body="プロンプトエンジニアリングの目的は、もっといい答えを早く、欲しい形で手に入れることだと思う。でも、やっぱ理想はモデルが勝手に“分かってくれる”ことで、質問を“エンジニアリング”する必要がなくなることだよね。" userName="stets" createdAt="2025/06/05 02:13:55" color="">}}




{{<matomeQuote body="なんか過剰な(プロンプト)エンジニアリングって感じだね。俺は生コードとかエラーを貼り付けて、普通の質問するだけで全然OKなんだ。モデルは賢いから自分で解決策を見つけてくれるよ。" userName="yuvadam" createdAt="2025/06/04 21:01:10" color="">}}




{{<matomeQuote body="プロンプトを書くことに“エンジニアリング”って言葉を使うの、なんか軽々しい感じがするなぁ。" userName="leshow" createdAt="2025/06/04 19:38:47" color="">}}




{{<matomeQuote body="数年前にプロンプト“エンジニアリング”がめっちゃ流行ってた頃に、面白い例えを見たんだ。「プロンプトエンジニア」って呼ぶのは、Subwayの店員さんがシャツに“サンドイッチアーティスト”って書いてるから芸術家って呼ぶみたいなもん、だってさ。冗談はともかく、“エンジニア”って言葉はもうとっくに意味が薄れてるよね。https://jobs.mysubwaycareer.eu/careers/sandwich-artist.htm" userName="vunderba" createdAt="2025/06/04 22:51:02" color="#38d3d3">}}




{{<matomeQuote body="なんでその店員をサンドイッチエンジニアって呼ぶのに問題があるんだ？<br>https://en.wikipedia.org/wiki/Audio_engineer" userName="theanonymousone" createdAt="2025/06/05 05:40:18" color="">}}




{{<matomeQuote body="サウンドエンジニアがちょっとの時間で習得できると思ってるなんて、可愛いね。音響学とか電子工学、音楽理論、人間の知覚の知識がいるのにさ。" userName="guappa" createdAt="2025/06/05 10:13:47" color="#38d3d3">}}




{{<matomeQuote body="それは君が俺の書いたことをそう理解しただけで、俺が言いたかったこととは全然違うんだけどね。" userName="theanonymousone" createdAt="2025/06/05 14:00:46" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
