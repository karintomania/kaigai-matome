+++
date = '2025-05-05T00:00:00'
months = '2025/05'
draft = false
title = '経験豊富なLLMユーザーですが生成AIはあまり使いません'
tags = ["AI", "LLM", "プログラミング", "使い方", "経験談"]
featureimage = 'thumbnails/orange_pink2.jpg'
+++

> 経験豊富なLLMユーザーですが生成AIはあまり使いません

引用元：[https://news.ycombinator.com/item?id=43897320](https://news.ycombinator.com/item?id=43897320)




{{<matomeQuote body="経験豊富なプログラマーのLLMに関するコメントに共通してて、ちょっと不思議なんだよね。\nPython でテーブルデータ扱うなら pandas が standard で2008年からあるのに、俺は比較的新しい polars を exclusively に使ってる。そしたらLLMが pandas の関数みたいに polars の関数を hallucinate しまくって、それが annoying で document 深掘りして確認しないといけなかったんだ。\n投稿では coding agent にも触れてるけど（著者は「distracting」だから使わないって言ってるけど、autocomplete も嫌いな人としてはその stance に sympathize するよ）、やっぱさ、coding agent こそ著者が describe した core な問題を解決するんだよ。「Raw」な LLM が coding task に放たれて blank page に code 吐き出すと hallucinate する。でも agenty な LLM configuration は LLM だけじゃなくて、LLM の interactions を structured する code もある。coding agent の背後にいる LLM が function を hallucinate しても、program が compile しないから agent がそれに notice して、LLM が iterate する。めっちゃ carefully 見てないと、それって happening にすら気づかないんだから。" userName="tptacek" createdAt="2025/05/05 17:52:25" color="#ff33a1">}}




{{<matomeQuote body="俺の gpt、o3、o4 mini との interactions では、俺が organic な middle man として code を repl に copy and paste して、何か問題があれば gpt に output を報告するって感じなんだ。で、俺にとっては、ある point を過ぎると、continually に問題を report しても new suggestions が全然 better にならない。just spin its wheels なんだよ。だからその process を automate することの value には skeptical なんだ。多分、君が使ってる llm は俺が試したやつより better なのかな？\nSpecifically に lesser known な kafka-mqtt connector （https://docs.lenses.io/latest/connectors/kafka-connectors/si...）を research してたんだけど、o1 は dynamic topics の support に必要な configuration を hallucinate してた。docs は違うこと言ってたし、俺も docs が contradict してるって o1 に mention したんだ。でも stick to its guns なんだよ。code が compile しないって mention したら、very implausible な scenarios を suggest し始めた--「did you spell this correctly?」みたいな。そんな Responses は you’ve reached a dead end を indicate するよね。君が mention する「structured LLM interactions」がどうやってこれを overcome するのか curious だよ。" userName="darepublic" createdAt="2025/05/05 18:51:19" color="#ff5c5c">}}




{{<matomeQuote body="Have you tried it？俺の experience では、they just go off on a hallucination loop、or blow up the code base with terrible re-implementations。\nSimilarly、Claude 3.5 は TensorRT 8 に stuck してて、documentation for the updated 10 APIs for RAG を pointing しても ever に new APIs を correctly に使うことはできなかった（そんなに complex じゃなかったのに；bind tensors、execute、retrieve results）。The whole concept of the self-reinforcing Agent loop は more of a fantasy。誰かが it likened to a lawnmower that will run rampage over your flower bed at the first hiccup って言ってたけど、まさにそんな感じ。" userName="stefan_" createdAt="2025/05/05 18:16:10" color="#ff33a1">}}




{{<matomeQuote body="Yes、agent は俺の daily toolset の part だよ。And yes、they can spin out。俺は they do の時に just hit the「reject」button して、my prompt を revise するだけ。Or、sometimes、俺は just take over して solve しようとしてる problem の some of the structure を自分で fill in する。\n「self-reinforcing」については I don’t know。俺が言ってるのは：coding agents は they’re running な code を compile して lint するし、they hallucinate interfaces の時には they notice するってこと。any developer who has ever used ChatGPT が know してる same way だよ。most errors を the web page に paste したら often（maybe even usually）apposite な fix を come up するってこと。I don’t understand how anybody が expects to convince LLM users this doesn’t work；it obviously does work。" userName="tptacek" createdAt="2025/05/05 18:21:08" color="#45d325">}}




{{<matomeQuote body="＞ I don’t understand how anybody が expects to convince LLM users this doesn’t work；it obviously does work.\nこれは really one of the hugest divides I’ve seen in the discourse about this：anti-LLM な people が very obviously untrue な things を saying してること。これが uh、kind of hilarious in a meta way なんだよね。\nhttps://bsky.app/profile/caseynewton.bsky.social/post/3lo4td... は a few days ago の this の instance。\nI am still trying to sort out why experiences が so divergent なのか。I’ve had much more positive LLM experiences while coding than many other people seem to、even as someone who’s deeply skeptical of what’s being promised about them。I don’t know how to reconcile the two。" userName="steveklabnik" createdAt="2025/05/05 19:26:17" color="#ff5c5c">}}




{{<matomeQuote body="＞ And for me、past a certain point、even if you continually report back problems it doesn’t get any better in its new suggestions。It will just spin its wheels。So for that reason I’m a little skeptical about the value of automating this process。\nIt sucks、but the trick は to always restart the conversations/chat with a new message。I never go beyond one reply、and also copy-paste a bunch。Got tired of copy-pasting、wrote something like a prompting manager（https://github.com/victorb/prompta）to make it easier、and not having to neatly format code blocks and so on。\nBasically make one message、if they get the reply wrong、iterate on the prompt itself and start fresh、always。Don’t try to correct by adding another message、but update initial prompt to make it clearer/steer more。\nBut I’ve noticed that every model degrades really quickly past the initial reply、no matter what length of each individual message。The companies seem to continue to increase the theoretical and practical context limits、but the quality degrades a lot faster even within the context limits、and they don’t seem to try to address that（nor have a way of measuring it）。" userName="diggan" createdAt="2025/05/05 19:52:06" color="#ff5733">}}




{{<matomeQuote body="In other words context window を使うな。Treat it as a command line with input/output、in which the purpose of the command is to extract information signal or knowledge manipulation or data mining and so on。\nAlso special care has to be given to the number of tokens。Even with one-question/one-answer、5 hundred to 1 thousand tokens が once に by our artificial overlords に focus される。After that they start losing their marbles。There are exceptions to that rule with the reasoning models、but in essence they are not that different。\nThe difference of using the tool correctly versus not、might be that instead of getting 99.9% accuracy、the user gets just 98%。Probably that doesn’t sound that big of a difference to some people。The difference is that it works 10 times better in the first case。" userName="emporas" createdAt="2025/05/06 05:57:08" color="#45d325">}}




{{<matomeQuote body="＞ If I mentioned that the code wouldn’t compile it would start suggesting very implausible scenarios\nI have to chuckle at that because it reminds me of a typical response on technical forums long before LLMs were invented。\nMaybe the LLM has actually learned from those responses and is imitating them。" userName="mr_toad" createdAt="2025/05/05 20:31:17" color="">}}




{{<matomeQuote body="It seems no discussion of LLMs on HN these days is complete without a commenter wryly observing how that one specific issue someone is pointing to with an LLM is also、funnily enough、an issue they’ve seen with humans。The implication always seems to be that this somehow bolsters the idea that LLMs are therefore in some sense and to some degree human-like。\nHumans not being infallible superintelligences does not mean that the thing that LLMs are doing is the same thing we do when we think、create、reason、etc。I would like to imagine that most serious people who use LLMs know this、but sometimes it’s hard to be sure。\nIs there a name for the「humans stupid --＞ LLMs smart」fallacy？" userName="-__---____-ZXyw" createdAt="2025/05/05 22:27:05" color="#45d325">}}




{{<matomeQuote body="People keep throwing these 95%+ accuracy rates for LLMs in these discussions、but that is nonsense。It’s closer to 70%。It’s quite terrible。I use LLMs but I never trust them beyond just doing some initial search if I am stumped、and when it unblocks me I immediately put it down again。It’s not transformative、it’s merely replacing google because search there has sucked for a while。" userName="namaria" createdAt="2025/05/06 08:40:33" color="#38d3d3">}}




{{<matomeQuote body="＞ the program doesn’t compile<br>って引用、それPythonの話でしょ？Pythonってコンパイルされないじゃん…<br>それって別の言語のワークフローのこと？それとも”compile”って静的チェッカーとかテストのこと言ってる？<br>あと、そのワークフローを実装するのにどんなツール使ってる？Cursorとかaiderとか？" userName="aerhardt" createdAt="2025/05/05 18:33:30" color="">}}




{{<matomeQuote body="ああいう”REPL”みたいなシステム、ChatGPTにPython VMが統合された時にすごく気に入った理由なんだ。<br>完璧じゃなかったけど、コードがうまく実行できない時に自分で気づけたからね。" userName="vunderba" createdAt="2025/05/05 18:04:37" color="">}}




{{<matomeQuote body="Pythonって、実際にはコンパイルされるんだよ（ネイティブじゃなくてバイトコードだけどね）。<br>普段は見えないけど、シンタックスエラーはコンパイルエラーになる。<br>でも、記事にあるような（関数を幻覚するとか）状況ではそうならないよ。<br>関数呼び出しはコンパイル時じゃなくて実行時に解決されるからね。" userName="dragonwriter" createdAt="2025/05/05 18:42:07" color="#785bff">}}




{{<matomeQuote body="じゃあ本当のエンジニアリングの仕事ってLLMそのものじゃなくてエージェントの方にあるのかな？<br>それともLLMとエージェントは正しく組み合わせる必要がある？<br>LLMとエージェントのペアを効率的に選ぶにはどうすればいいの？" userName="daxfohl" createdAt="2025/05/05 21:17:37" color="">}}




{{<matomeQuote body="まあね。でももう2025年だし、LLMのコード生成機能ってVSCodeに統合されたCursor、Windsurf、Copilotとか、aiderみたいなコマンドラインツールとか、NodeのOpenAI codexやClaude Codeとか、Emacsライブラリとしてでも、今はもう利用できるんだよ。<br>LLMにコードを単体で生成させて、エディタにコピペして試してイライラしてる人たちを見るけど、それはもう正しいやり方じゃないんだ。それは2024年のやり方だよ。" userName="tptacek" createdAt="2025/05/05 18:07:43" color="#ff33a1">}}




{{<matomeQuote body="精度95%対70%って、どっちの数字も根拠ないし、今の議論にはあんまり役に立たないよ。<br>それどうやって測ったの？いや、測ってないだろうけど、その仮説の25%差を共有する意味って何？<br>あと、LLMの使い方でみんな経験が全然違うって話と、君のコメントがぴったり合ってるのが面白いね。<br>＞ 経験がなんでこんなに違うのかまだ整理しようとしてるんだ。LLMについて懐疑的でも、コード書いてるときは他の人より良い経験をしてるよ。どう調和させればいいか分からない。<br>https://news.ycombinator.com/item?id=43898532" userName="diggan" createdAt="2025/05/06 11:38:52" color="#785bff">}}




{{<matomeQuote body="これは私がコードアシスタントとして使うLLMでよく経験することだよ。今はClaude 3.5とかDeepseek、Geminiを使うかな。<br>主流な言語やライブラリ、よくあることほどLLMは正確だね。自分が詳しい分野で使うのが一番役に立つんだ。<br>生産性ツールとしてスピードや質を上げるのに役立つんだよ。" userName="surgical_fire" createdAt="2025/05/05 19:13:10" color="#ff5733">}}




{{<matomeQuote body="やってみた？一回だけじゃなくて？<br>私はCursorとGemini 2.5かClaude 3.7でめちゃくちゃ生産性上がってるよ。<br>Rustのコードベースに機能を一発でまるごと追加してるんだ。" userName="mountainriver" createdAt="2025/05/05 18:44:03" color="#45d325">}}




{{<matomeQuote body="Pythonのコンパイルって事前コンパイルのイメージだけど、Pythonはそうじゃないし公式もインタプリタ言語って言ってるよね。<br>Polarsの幻覚メソッドの話だと、コンパイルじゃなくて実行時にエラーが出るはずだよ。<br>だから投稿者の「コンパイルできない」って意味、まだ分かんないな。" userName="aerhardt" createdAt="2025/05/05 18:48:20" color="#ff5733">}}




{{<matomeQuote body="記事の「polarsでLLMがpandas関数を幻覚する」って話、分かるわ。<br>面白いことに、俺はLLMでpandasのマイナーな部分を扱おうとしたら、非推奨の関数ばっかり提示されてイライラしたよ。" userName="protocolture" createdAt="2025/05/05 23:24:06" color="#785bff">}}




{{<matomeQuote body="LLM/agentの選び方についてね、”how do I use ai with VS: Code”ってググったらClineに行き着いたんだ。色々なバックエンドを試したけど、まだ詳しくないから強い意見はないな。ただ、無料のChatGPT agentは月20ドルのやつより、同じタスクで”全然ダメだった”って経験くらい。" userName="steveklabnik" createdAt="2025/05/05 21:34:20" color="">}}




{{<matomeQuote body="理由は単純だと思うよ。みんな数ヶ月前にちょっと試した限られた経験で意見を固めちゃって、それが間違ってるなんて思えないんだ。AIやLLMの進化は早すぎて、前提を見直す訓練ができてないんだよ。HNとか特定のSNSはアーリーアダプターのバブル。俺たちは最前線で見てるけど、一般的な報道とはズレてる感じかな。" userName="zoogeny" createdAt="2025/05/05 19:58:24" color="">}}




{{<matomeQuote body="Aiderっていうツールはね、俺の経験だと記事とは全然逆なんだ。マジで使えるよ。勝手に修正繰り返して問題解決してくれるんだ。" userName="PantaloonFlames" createdAt="2025/05/06 14:09:26" color="">}}




{{<matomeQuote body="LLMが人間っぽいって考えを強めてるみたいって話だけど、そうじゃないんだ。LLMは人間より高い基準で見られてる。人間は間違えるけど仕事は役に立つ。LLMだって完璧じゃなくても役に立つよ。性能は大事だけど、エラーがあっても即ダメってわけじゃないんだ。" userName="steveklabnik" createdAt="2025/05/06 00:25:59" color="">}}




{{<matomeQuote body="俺は毎日使ってるけど、議論は正直じゃないね。agent modeとか後付け機能について。Claude 3.7のCursors Agent/ComposeでC++のTensorRTアプリ作成を試したら、APIやCMakeを壊したり、別ビルドスクリプトを色々生成して失敗。最後は機能をモックにして偽ベンチマーク出すだけのコードで成功宣言！結局ゴミファイルが増えただけ。環境を見ない酷い連携だと、問題を理解できずゴミを延々生成するんだ。" userName="stefan_" createdAt="2025/05/05 22:02:55" color="#38d3d3">}}




{{<matomeQuote body="これは価値判断で、みんな言葉の使い方が違うんだけどね。LLM推進派は毎回「今度のは使える、前のはダメだっただけ」って同じこと言ってる。客観的に見て大きな変化（製品爆発、機能加速、解雇）はまだない。毎回「まだ出たばかり、数ヶ月後に分かる」って返すけどね。本当に秘密を知ってるなら、大企業のコンサルで年間何億も稼げるはず。本気なら、落ちてる金を拾いに行けってことだよ。" userName="foobarqux" createdAt="2025/05/05 21:39:11" color="#ff5c5c">}}




{{<matomeQuote body="反LLM派がおかしなこと言ってるのが面白いって話だけど、なんで驚くのか分からんな。ChatGPT searchは去年11月でイマイチだったし、o3やo4-miniの検索は最近。LLM単体は検索エンジンじゃないし、情報も完全じゃない。オフラインLLMを情報検索に使うのはヤバい時もある。<br>検索トリガーできないって間違いだけで、そんなに”面白い”かな？知識が半年以上古くても意見を言いたい人をゲートキーピングするのは悪い考えだと思うよ。" userName="magicalist" createdAt="2025/05/05 21:04:34" color="#ff5733">}}




{{<matomeQuote body="LLMが人間っぽいって考えは100%本当でしょ？人類の知識や相互作用のコーパスに基づいてるんだから、人間のパターンを”繰り返す”のは当たり前だよ。LLMの上に新しい層を作って人間組織や政治、社会学を模倣して結果を進化させるのも理にかなってるね。" userName="owebmaster" createdAt="2025/05/05 22:36:34" color="">}}




{{<matomeQuote body="LLM体験が違う理由を考えてる。俺は懐疑的だけどコーディングでのLLM経験は良い。でも他の人はダメ。この違いは忍耐力か、実験できる職場か？<br>短いagentic coding試みではすぐ諦めちゃう。agentが空回りするか、コードベースを芝刈り機みたいに荒らすのを見るからね。<br>時間をかければ改善できるだろうけど、これ生産性ツールとして売られてるんだ。自分で書けるし、スタートアップでAIの面倒見てる時間なんてない。確信がないと時間をかける気になれないんだ。" userName="dml2135" createdAt="2025/05/06 01:17:12" color="#ff5c5c">}}




{{<matomeQuote body="ライブラリ作者は、LLMがハルシネーションした関数を実装すべきって意見がある。それはLLMのためじゃなく、ハルシネーションが「平均的なユーザーが期待してるもの」を示してるから。俺は独自の方法でやる理由がないライブラリは嫌い。特定のAPIを覚えたいんじゃなく、直感的なAPIで、シンタックス調べる時間を減らして問題解決に時間を使いたいんだ。" userName="janalsncm" createdAt="2025/05/05 22:15:19" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="AgentにWeb検索させてドキュメントをLLMに渡せばいいんだよ。Context7はまさにそれでAIユーザーの間で今めちゃ人気なんだ。" userName="nikita2206" createdAt="2025/05/05 19:31:02" color="#38d3d3">}}




{{<matomeQuote body="vibe codingについてなんだけど、UIやWebサイトのモックアップに使うのがめっちゃ良いよ。俺フロントエンド経験ないけど、動くデモ作れるのは価値あるんだ。UIの絵を描く代わりに使ってる感じ。LLMコーディングは製品にはまだ readiness ないけど、社内議論を進めるモックアップにはめちゃ使える。この使い方はあまり評価されてないと思うな。" userName="andy99" createdAt="2025/05/05 17:44:11" color="#38d3d3">}}




{{<matomeQuote body="同意だね。俺もフロントエンドの仕事全然好きじゃないんだけど、見た目がそれなりに良いのを surprising に吐き出せるのはすごいわ。結局Reactのスパゲッティコードは大部分Svelteで書き直すんだけどね。" userName="vunderba" createdAt="2025/05/05 17:57:05" color="#ff5733">}}




{{<matomeQuote body="俺フロントエンド大好きで得意なんだけど、今はAIにCSSコーディングやらせてる。見た目の良いデザインを選んでくれるから、uglyなスタイル作って時間無駄にしなくなったよ。それ以外のコーディングは自分でやる方がマシだけど、たまにAIは surprising なことする。でも大抵は全然 wrong で、試させるのは counterproductive。goalに全然 attention 払わない stupid なインターンみたい。" userName="leptons" createdAt="2025/05/05 18:43:01" color="#45d325">}}




{{<matomeQuote body="Claudeの設定で、React使わないって言うのめんどくさくなったから、可能な限りSvelteとTypeScript使うように指示してるんだよね。" userName="NetOpWibby" createdAt="2025/05/05 18:41:26" color="#ff5c5c">}}




{{<matomeQuote body="指示に従うのが結構得意なんだよね。例えば「React、typescript、materialUiを使って、constよりfunctionsを preference して、いらないセミコロンは使わないで、タブは4スペースで、この sketch みたいなUI作って」って言えば、全部やってくれるよ。" userName="mattmanser" createdAt="2025/05/05 19:03:58" color="#ff5733">}}




{{<matomeQuote body="急ぎでモックアップ欲しい時はReactでやるかな。でも時間あるなら、最終的に作るプログラミング言語（svelteとかstatic astro、あるいはphpとかね）の best practices 使って作ってもらうように頼むよ。" userName="r0fl" createdAt="2025/05/05 22:14:26" color="#38d3d3">}}




{{<matomeQuote body="君が refer してるReactのスパゲッティコードなんて俺は見たことないな。concise でよく organized されてるコードで、かなり impressive なフロントエンドだよ。" userName="dyauspitr" createdAt="2025/05/06 03:25:19" color="">}}




{{<matomeQuote body="最近試したけど、結構 hit or miss。Claude 3.7はビジネスロジックはOKだったけどUIが全然ダメで直せず。俺フロントエンドじゃないから分からなかったけど、grid頼んだのにflexbox使おうとしてた。それをGeminiに貼り付けて”CSS gridでrewrite”って言ったら正しくできたんだ。Geminiの方がClaudeより全然良さそうだよ。" userName="Tainnor" createdAt="2025/05/06 08:24:58" color="#ff5733">}}




{{<matomeQuote body="figmaとかって manually state 管理しなきゃいけない時結構 annoying なんだよね。俺は大概dev toolsで調整して、既存システムの screenshot 撮って、ms paintで他の調整する方がマシだな。LLMは既存システムと alignment したモックアップをもっと quick に作るのに useful だと思うよ。" userName="ozim" createdAt="2025/05/06 09:28:10" color="#785bff">}}




{{<matomeQuote body="LLMでUI作るのって、プロンプト何度も入力しなきゃで大変そうじゃない？Webサイトビルダーとかテンプレートライブラリ使う方が、早いし簡単だと思うな．LLMにいちいち指示出すの面倒ってことだね．" userName="65" createdAt="2025/05/05 19:41:50" color="">}}




{{<matomeQuote body="＞ 記事にあった”あまり知られてないライブラリのコード質問は慎重になる”ってとこ、最近変わったな．ChatGPTのo3とかo4-mini、検索ツールで新しい情報調べるのが結構優秀なんだよ．Googleの新しいJavaScriptライブラリへの移行とか、マジでできたし．https://simonwillison.net/2025/Apr/21/ai-assisted-search/#la...<br>あと、新しいライブラリのドキュメントとかコード全部、長いコンテキストのモデルに貼り付けるのも超使えるよ．5万トークンくらいまでならいける．Gemini 2.5 Proはもっといけるけどね．昨日の例はこれ→ https://simonwillison.net/2025/May/5/llm-video-frames/#how-i..." userName="simonw" createdAt="2025/05/05 18:40:23" color="#ff5733">}}




{{<matomeQuote body="最近Cursorも変わったかも．人気ライブラリの古いAPI使うことたまにあるんだよね．でも、ライブラリ開発者がdeprecationとかログ出してくれてるの超助かる！その警告をLLMに貼ると”あ、API変わったね”って直してくれるんだよ．新しいAPIも覚えられるけど、デフォルトの知識にはないってこと．JSライブラリはすぐ変わるし、使うライブラリ多いから全部の最新ドキュメント用意するのは無理ゲー．だから今は実行時のエラーに注意してる．まあ、自分で書いても同じミスするから、LLMも大目に見てるかな．" userName="zoogeny" createdAt="2025/05/05 20:14:48" color="#ff33a1">}}




{{<matomeQuote body="Cursorの@Docs [0] を使えば、ライブラリの正しいドキュメントを取り込めるみたいだよ．[0] https://docs.cursor.com/context/@-symbols/@-docs" userName="satvikpendem" createdAt="2025/05/05 21:21:48" color="">}}




{{<matomeQuote body="うん、そうだね．でも”JSライブラリはすぐ変わる”とか”JSのサーバープロジェクトは使うライブラリ数十個ある”って言ったじゃん？それ全部取り込むと、すっごいコンテキスト量になるんだよね．Cursorのカスタムdocs機能で最新情報保つって手もあるけど、トークン予算超えないか心配だし試してないんだ．だって、エラーログで対処できてるからさ．でも、定期的にLLMに”このファイルで使ってるlib Y at version vN.M.P、docs見てエラーとかないか教えて”って聞くのは良いワークフローかもね．" userName="zoogeny" createdAt="2025/05/05 23:17:35" color="#45d325">}}




{{<matomeQuote body="俺も最近似たような経験したよ．ChatGPTの検索機能をオン（o4-mini-highで）にしたら、モデルの学習カットオフ日以降に変わったライブラリのせいでどうしようもなかったエラーとか、修正が分かりにくい問題が直せたんだ．簡単なUI設定なのに、想像以上にうまくいくから驚いた．" userName="liamwire" createdAt="2025/05/06 03:42:24" color="#38d3d3">}}




{{<matomeQuote body="＞ 記事の”長年LLMのあらゆるトリック使ってきた”ってとこ読んだ瞬間に”あー、この筆者あんま大したこと書いてないな”って思ったね．俺は実際にプロダクションで、LLM使ってQAするプロンプトとか書いてるけど、良いprompt engineeringってLLMを”騙す”みたいな変なやり方とは全然関係ないんだよ．ああいうの、モデルのバージョン変わると使えなくなるから逆効果だし．" userName="fumeux_fume" createdAt="2025/05/05 23:52:33" color="">}}




{{<matomeQuote body="あなたの言ってる”良いprompt engineering”の具体例を、簡単に教えてくれる？" userName="eclecticfrank" createdAt="2025/05/06 09:47:59" color="">}}




{{<matomeQuote body="記事の筆者がchat logs載せてくれたの、良いね！機密情報とかあってログ共有できないことが多いのは分かるけど、LLMでこんなことできた！って主張するなら、ちゃんと裏付け見せるのって超大事だと思うんだ．" userName="ziml77" createdAt="2025/05/05 20:09:41" color="#ff5733">}}




{{<matomeQuote body="俺にとっても（chat logs共有は）比較的新しいworkflowなんだ．ClaudeのUIからログ出すのって、copy/pasteの手作業だからさ．もうちょっと自動化できるツールでも作ろうかなと思ってるところだよ．" userName="minimaxir" createdAt="2025/05/05 20:25:55" color="">}}




{{<matomeQuote body="これ使ってるよ： llm -m claude-3.7-sonnet ”prompt”<br> llm logs -c | pbcopy<br><br>それでGistに貼り付け。こんな感じのができるよ： https://gist.github.com/simonw/0a5337d1de7f77b36d488fdd7651b..." userName="simonw" createdAt="2025/05/05 20:31:49" color="#ff5c5c">}}




{{<matomeQuote body="あなたのObservableノートブックの方が、彼が話してること（Claude UIのスクレイピング）にもっと当てはまるんじゃない？ https://x.com/simonw/status/1821649481001267651" userName="fudged71" createdAt="2025/05/05 20:46:07" color="">}}




{{<matomeQuote body="LLMの出力をオフラインでもっと整理する方法に興味あるけど、スクリプトツール使うのが一番現実的かもね。" userName="minimaxir" createdAt="2025/05/05 20:48:30" color="">}}




{{<matomeQuote body="記事に同意！backend UI使うのわかるわ、コントロールしやすいしAPIラッパーみたいで便利。ChatGPT UIはモデル弱体化されてる気がするんだよね。コスト削減？でもGeminiはStudioもアプリも同じっぽい。システムプロンプト設定できないUIはダメ。最近はプロンプト頭で十分だけど、文字数とかの制約は相変わらずモデル苦手だね。" userName="behnamoh" createdAt="2025/05/05 17:45:38" color="#ff33a1">}}




{{<matomeQuote body="見出しに”generative”って追加したのは、記事中で非生成LLMであるテキスト埋め込みモデルの重要な使用法に言及したからだよ。そうしないと意味論争になっちゃうと思って。（見出しは無しの方が自然だけどね）" userName="minimaxir" createdAt="2025/05/05 19:45:12" color="">}}




{{<matomeQuote body="あー、なるほどね。正直、記事読み始めたのは「非生成LLMって一体何だ？」って疑問に答えるためだけだったんだ。聞いたことなかったからさ。最初の数文で明確に答えてくれると思ってたんだけど、なかなかその話題が出てこなくて、だんだんイライラしてきて、スロープにクリックベイトされたのかと思って読むのが難しくなっちゃったんだ。でもその背景を知って、ずっと読みやすくなったよ。" userName="geor9e" createdAt="2025/05/11 05:00:14" color="">}}




{{<matomeQuote body="backend UIの話で、カスタムラッパー使ってるの？それとも使いやすい既存のクライアントがあるの？<br>もし誰か他にオススメあれば教えて！" userName="Jerry2" createdAt="2025/05/05 17:42:39" color="">}}




{{<matomeQuote body="ここで自分のLLM CLIプロジェクト宣伝させて！今、こんなコーディングタスクで毎日使ってるんだ：llm -m o4-mini -f github:simonw/llm-hacker-news -s ’write a new plugin called llm_video_frames.py which takes video:path-to-video.mp4 and creates a temporary directory which it then populates with one frame per second of that video using ffmpeg - then it returns a list of [llm.Attachment(path=”path-to-frame1.jpg”), ...] - it should also support passing video:video.mp4?fps=2 to increase to two frames per second, and if you pass ?timestamps=1 or &timestamps=1 then it should add a text timestamp to the bottom right conner of each image with the mm:ss timestamp of that frame (or hh:mm:ss if more than one hour in) and the filename of the video without the path as well.’ -o reasoning_effort high<br>こうやって使うと、プロンプトと応答は全部ローカルのSQLiteデータベースに記録されるんだ。<br>この例の詳細はここで： https://simonwillison.net/2025/May/5/llm-video-frames/#how-i..." userName="simonw" createdAt="2025/05/05 18:45:42" color="#ff33a1">}}




{{<matomeQuote body="CLIには賛成、みんな使うべきだよ。<br>Simon：その例はすごいけど、HNのコメントとしては複雑で読みにくいね。" userName="dcre" createdAt="2025/05/06 02:32:39" color="">}}




{{<matomeQuote body="LLM向けにどんなモデルでも使えるオープンソースライブラリ(https://github.com/minimaxir/simpleaichat)開発してたんだけど、まだ動くけどメンテする時間なくなっちゃって残念。最近はLLMと連携するコード書くときは、必要ない限りクライアントSDKじゃなくてrequestsとかhttpxでHTTPエンドポイント直叩きしてるよ。こっちの方がasyncにアップグレードしやすいしね。" userName="minimaxir" createdAt="2025/05/05 17:58:20" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="だいたいのサービスはモデル提供時に”スタジオモード”みたいなの用意してるよ。<br>あとはOpenWebUIとか使うのも良いかもね。" userName="asabla" createdAt="2025/05/05 18:30:37" color="">}}




{{<matomeQuote body="この目的のためにオープンソースのCLIコーディングエージェント作ったんだ[1]。Claude/Gemini/OpenAIモデルを組み合わせて、ワークフローのステップとかコンテキストサイズに合わせて最適なモデルを選んでる。面白いと思うよ。APIレイヤーにはOpenRouterを使って複数のプロバイダーAPIをシンプルにしてるけど、モデルプロバイダーのAPIキー直接統合も今週リリースする予定。[1] https://github.com/plandex-ai/plandex" userName="danenania" createdAt="2025/05/05 18:57:33" color="#45d325">}}




{{<matomeQuote body="めちゃくちゃ試したけど、最近結局使ってるのは新しいこと教えてもらう（自分で実装するんだけどね。だって一発で完璧にしてくれることなんてまずないし）とか、たまにファイルのハンドリングとかffmpegみたいな使い捨ての短いスクリプト書かせるとかだけだな。" userName="qoez" createdAt="2025/05/05 18:10:20" color="">}}




{{<matomeQuote body="ブログ記事のこの引用が面白かったよ：「LLMに自分の文章を書いてもらわずに、文章を改善させるっていうちょっと変わったテクニックを見つけたんだ：ほぼ書き終えたブログ記事のテキストをLLMに食わせて、”冷笑的なHacker Newsコメンテーター”のふりをしてブログ記事に基づいたコメントを5つ書くよう頼むんだ。」" userName="rfonseca" createdAt="2025/05/05 17:42:29" color="">}}




{{<matomeQuote body="僕のブログ記事のかなりの部分はハスキー犬と散歩しながらスマホの音声入力で書くんだ。でもそれってまだ形になってない粘土みたいなもんで、ちゃんとろくろの上で形作る必要があるんだよね。それをLLMに食わせて、このプロンプト<br>を使って編集してもらう。「あなたはプロの編集者です。スペルミス、文法、継続性の問題、構造的な問題、単語の繰り返しなどを含む可能性のある段落が提供されます。元の文章スタイルを維持しながらこれらの問題を修正してください。ユーザーを”消毒”しないでください。テキストに下品な言葉が使われている場合、それは強調のために使われているので省略しないでください。あなたのスタイルを文章に持ち込まないでください。可能な限り彼らのライティングスタイルを保持してください。新しい文を追加することは絶対に禁止されています。」<br>これ、実質Grammarlyの強化版で、すごくうまくいくよ。" userName="vunderba" createdAt="2025/05/05 18:00:23" color="#45d325">}}




{{<matomeQuote body="僕も似たようなことやってるよ。でも、LLMに自分がその記事を書いたって絶対バレないようにしてるんだ。そうすればLLMがお世辞言わないで正直なフィードバックくれるからね。" userName="meowzero" createdAt="2025/05/05 17:46:13" color="#ff5c5c">}}




{{<matomeQuote body="ロールプレイさせたフィードバック提供者で、みんなが一番うまくいった人格と、一番ダメだった人格ってどんなのだった？人格を指定するとLLMが出してくる批評の種類も変わりそうだよね…みんなの経験談聞きたいな。" userName="kixiQu" createdAt="2025/05/05 18:00:44" color="">}}




{{<matomeQuote body="筆者が共有した今回の記事に関するLLMチャットログ、絶対見てみて！マジで冷笑的なHNコメンテーターのトーンだよ。リンクはこちら→https://github.com/minimaxir/llm-use/blob/main/criticism_hn...." userName="jdnier" createdAt="2025/05/06 01:24:50" color="">}}




{{<matomeQuote body="JSONレスポンスって、返す項目が少ない時以外は期待通りにいかないことが多いんだよね。Maxさんの例だと分類だけど。一貫したJSONを返したい人には、「構造化データ」をチェックしてみて。必須フィールドを含んだJSONスキーマを定義すると、常に同じ構造で返ってくるよ。GPT-4o-miniで試したら、すごく成功したんだ。" userName="Oras" createdAt="2025/05/05 17:45:35" color="#ff5733">}}




{{<matomeQuote body="データサイエンティストだけど、まじそれな。期待通りの結果出すにはPrompt engineeringめちゃくちゃ大事だし、LLMのPOCってサクッとできちゃうんだよね。" userName="danbrooks" createdAt="2025/05/05 18:10:58" color="#ff5c5c">}}




{{<matomeQuote body="”だから、ChatGPT.comとか普通の人が使うフロントエンドは使わないんだ。制御しづらいから。代わりに、LLMサービスのバックエンドUIにアクセスしてる。API機能の軽いラッパーになってて、必要ならコードに移植しやすいし。”<br>これってどうやるの？有料プランじゃないとダメなの？" userName="Beijinger" createdAt="2025/05/05 18:44:42" color="#785bff">}}




{{<matomeQuote body="たぶん、API公開してるほとんどの会社が提供してるSandboxとかPlaygroundとかEditorみたいなやつのことじゃない？APIの機能をすぐ試せるやつ。<br>OpenAIならこれ→ https://platform.openai.com/playground/prompts?models=gpt-4.... <br>Anthropicはこれ→ https://console.anthropic.com/workbench <br>て感じ。" userName="diggan" createdAt="2025/05/05 18:50:16" color="#ff5c5c">}}




{{<matomeQuote body="APIのバックエンドにログインすると、だいたいUIへのリンクがあるよ。<br>OpenAIとかChatGPTなら https://platform.openai.com/playground これ。<br>これはChatGPT+とは関係ないんだ。<br>クレカ登録は必要だけど、使った分だけ払えばいいだけだよ。" userName="minimaxir" createdAt="2025/05/05 18:47:32" color="#ff5c5c">}}




{{<matomeQuote body="この記事のタイトル、ちょっと残念だよね。<br>記事自体はニュースメディアでの機械学習の利用を探る面白い内容なのに。<br>俺もタイトルだけ見て、最近LinkedInによくある”LLMなんてちょろいぜ”みたいな釣り記事かと思って危うくスルーするところだったわ。" userName="cbeach" createdAt="2025/05/06 09:22:59" color="">}}




{{<matomeQuote body="えっとなー、Claudeがコードを’改善’したみたいだけど、なんでSQLiteをスレッドセーフに設定した上で、DB操作全部にロックかけてるの？（コールバックがマルチスレッドから呼ばれる可能性はあるけど、コールバック自体はスレッドセーフじゃないんだよな）" userName="Snuggly73" createdAt="2025/05/05 18:13:00" color="#ff5c5c">}}




{{<matomeQuote body="インターンも並行処理なんてわかんねーよ。" userName="dboreham" createdAt="2025/05/05 18:28:26" color="">}}




{{<matomeQuote body="いいか、お前がLLMに払ってる金額の半額で、俺がお前の質問を理解できないってことなら、俺にもできるぜ。" userName="jayd16" createdAt="2025/05/06 01:33:24" color="">}}




{{<matomeQuote body="でもさ、今日正しいやり方を教えて直させたら、明日も明後日も夏の間ずっと間違ったやり方はしなくなるんだよ。" userName="daxfohl" createdAt="2025/05/05 18:42:49" color="">}}




{{<matomeQuote body="並行処理に関しては、夏の間ずっとまだ間違える可能性あるよ。難しいトピックだしね。<br>でも少なくとも、前にも問題になったのと似たようなことやる時は、フィードバックを求めるべきだ、ってことは学べるかもね。" userName="chowells" createdAt="2025/05/05 20:42:02" color="">}}




{{<matomeQuote body="あんたの経験、俺の使い道と一緒だわ。<br>LLMにはマジで色々使えることあるよ。<br>VibeCodingはvibeが少なくて、成功するにはもっと構造が必要だな。" userName="tomrod" createdAt="2025/05/06 12:26:11" color="">}}




{{<matomeQuote body="”LLMに冷笑的なHacker Newsコメントになりきって、ブログ記事に基づいたコメントを5つ書かせてみろ”だって？<br>ほら、もう一度言ってみろよ、AIが俺たちの仕事を奪いに来てないって。" userName="PeterStuer" createdAt="2025/05/06 07:35:26" color="">}}




{{<matomeQuote body="＞＞LLMに正規表現を書くのを手伝ってもらったことがある<br>Regexの構文がもっとまともなら、LLMに頼る必要なんてなかったんじゃないか。" userName="osigurdson" createdAt="2025/05/06 12:33:20" color="">}}




{{<matomeQuote body="この記事、まるで”俺は他のLLMユーザーとは違うぜ”って感じのテック記事だな。<br>LLMが実際に役立つ場面と、過剰に期待されてる場面についての良い点は認めるけど、その逆張りっぽいフレームが、素直な実用的なアドバイスになり得た部分を台無しにしてる。<br>”俺の方が他の奴らよりわかってる”みたいなスタンス、テック系の議論ではうんざりするんだよな。特に実際の内容が役立つ時なんかは。" userName="lxe" createdAt="2025/05/05 17:57:59" color="#785bff">}}




{{<matomeQuote body="逆張りするつもりは全然なかったんだけど、実用的なアドバイスが直感的じゃなくて、現代の規範に反してると、どうしても逆張りフレームになっちゃうんだよね。<br>この記事を公開するかマジで迷ったんだ。”ChatGPT.com使わない”とか”Agents/MCP/Vibe codingに使い道を見出せない”って発言は、エンジニアとしてのキャリアに傷がつく可能性があるから。<br>でも正直になれなきゃ書く意味ないし。..." userName="minimaxir" createdAt="2025/05/05 18:18:29" color="#ff33a1">}}




{{<matomeQuote body="＞”ChatGPT.com使わない”とか”Agents/MCP/Vibe codingに使い道を見出せない”って発言は、エンジニアとしてのキャリアに傷がつく可能性がある<br>それは残念だね。でも責められないよ。<br>技術ってのは、特定の正統派を盲信することじゃないはずだ。" userName="mattgreenrocks" createdAt="2025/05/05 20:53:11" color="">}}




{{<matomeQuote body="問題は実際のところトーンと言葉の選び方だな。:)1つの例：”normal-person frontends”っていうのは、すぐに人に対して判断を下してるみたいに聞こえる。<br>”normal-person”の代わりに regular, typical, normal とか言えたはずだろ。<br>同僚がよく問題解決に来て、あんたの解決策がほとんどいつも上手くいくって言うのも、自分が同僚より賢いって言われかねない。..." userName="kayodelycaon" createdAt="2025/05/05 18:23:12" color="#45d325">}}




{{<matomeQuote body="あの表現は、もっと自分を卑下するジョークのつもりだったんだけど、あんたの解釈ももっともだわ。" userName="minimaxir" createdAt="2025/05/05 18:31:44" color="">}}




{{<matomeQuote body="逆張りフレームへのあんたの弁解、なんかズレてる気がするな。<br>あんたが”直感的じゃない”って言ってること、LLMとある程度深く付き合ってる人にとってはかなり普通のことだよ。<br>経験豊富なLLMユーザーのほとんどは、温度設定とかAPIアクセスとか、もう知ってる秘密の知識じゃない。..." userName="lxe" createdAt="2025/05/05 20:48:25" color="#ff33a1">}}




{{<matomeQuote body="＞経験豊富なLLMユーザーのほとんどは、温度設定とかAPIアクセスとか、もう知ってる秘密の知識じゃない。<br>ここで言う”ほとんど”の対象人口って、実際どれくらいの規模なんだ？" userName="philipwhiuk" createdAt="2025/05/06 11:40:19" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
