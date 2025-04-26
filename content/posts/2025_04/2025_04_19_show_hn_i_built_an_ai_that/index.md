+++
date = '2025-04-19T00:00:00'
months = '2025/04'
draft = false
title = 'マジかよ！GitHubのコードがAIで激変！誰でも理解できる神チュートリアル爆誕！'
tags = ["AI", "GitHub", "チュートリアル", "プログラミング", "ドキュメント生成"]
featureimage = 'thumbnails/color4.jpg'
+++

> マジかよ！GitHubのコードがAIで激変！誰でも理解できる神チュートリアル爆誕！

引用元：[https://news.ycombinator.com/item?id=43739456](https://news.ycombinator.com/item?id=43739456)

{{<matomeQuote body="これマジですごいじゃん！AI studio APIキーで試したら結構感動したわ。ただ、説明がちょいと初心者向けすぎるかも。「APIってレストランのアナロジーで言うと…」みたいな説明はいらん気がする。GraphQLの説明も長すぎ。全体的に、ソフトエンジニアよりちょっとテクニカルなPM向けな感じ。プロンプトを調整すれば改善できるかもね。あと、図の種類も増やしてほしいな。例えば、AWS Step Functionsで書かれたステートマシンには、シーケンス図よりフローチャートの方が合うと思う。" userName="bilalq" createdAt="2025-04-20T04:48:40" color="">}}

{{<matomeQuote body="こういうコメント見ると、AIの価値が分からんエンジニアは何を吸ってんだ？って思うわ。AIを全否定するのは賢くないし（OP、別にあんたのこと言ってるんじゃないよ、一般論ね）。あと、こういう批判するやつに限って、マジモンのLLMを使ったことないんじゃない？知ってるコードベースをLLMに突っ込んで、コールドリードで目的とか実装について良い回答が返ってくるのはマジですごい。コード書けなくても、ソフトの理解が早くなるってことは、ソフト開発も早くなるってことじゃん。" userName="cushychicken" createdAt="2025-04-20T12:12:27" color="#ff5c5c">}}

{{<matomeQuote body="まだ多くの開発者は、コードを書くことが仕事で、ビジネスに必要なプロダクトを作ることが仕事じゃないと思ってるんだな。俺はLLMをめっちゃ使ってて、仕事が早く、質も良くなった。" userName="linotype" createdAt="2025-04-21T01:08:26" color="">}}

{{<matomeQuote body="LLMが得意なことと苦手なことってあるよね。人によって違う問題を扱ってるから、LLMに対する評価も真逆だったりする。" userName="grugagag" createdAt="2025-04-21T02:36:16" color="">}}

{{<matomeQuote body="LLMで生産性が10倍とか100倍になるって言ってる人は、LLMが得意な作業をしてるんだと思う。単純なCRUD処理とかはLLMはマジで強いから。でも、新しいアルゴリズムやデータ構造を設計したり、既存のものを拡張したりするのは苦手。新しいハードウェアのドライバを不完全な仕様から実装するとかも無理ゲー。こういうタスクだと、LLMはむしろ邪魔になる。だから、生産性が上がるとか下がるとかっていうのは、両方とも正しいんだよね（LLMを使いこなせてないだけってわけじゃない）。LLMが得意なことと苦手なことを理解するのが一番重要だと思う。もちろん、LLMは常に進化してるから、これは継続的なプロセスだね。個人的にはLLMに満足してるよ。俺の代わりにはなれないけど、退屈な作業は任せられるから、面白い問題に集中できる。OpenSCADをClaudeで学ぶのも簡単になった。" userName="danieldk" createdAt="2025-04-21T08:47:02" color="#ff5c5c">}}

{{<matomeQuote body="OpenSCADの経験談は、生産性議論で忘れられがちな重要な点だね。今まで不可能だったプロジェクトが、今は実現可能になった。10年前ならOpenSCADのドキュメントを検索したり、ビデオを見たりして、必要な情報が見つからなくて諦めてたかも。Claudeみたいなツールのおかげで、最初の壁を乗り越えられたことが何度もあったよ。0から1を生み出すことは、1から10や1から100を生み出すことと同じくらい（あるいはそれ以上に）重要だと思う。" userName="kaycebasques" createdAt="2025-04-21T11:40:08" color="#ff5733">}}

{{<matomeQuote body="そんなすごい例を持ち出さなくても、10年以上前のコードとか、色んなパラダイムが混ざってて、ドキュメント化されてない暗黙の了解が多いコードベースなんていくらでもあるじゃん。そういうところでAIは役に立たない。意味のある変更は無理。あと、フロントエンドとか、古いコードじゃなくてもAIは使えないことが多い。NPMパッケージとか、スタイルの衝突とか、AIは全然役に立たない。AIはオートコンプリートの強化版って感じ。成熟したコードベースでマジなことは無理。ビジネスルールとか技術的負債が絡んでくると、AIは信用できなくなるから、自分で書いた方が早い。index.tsファイルのエクスポートリストを自動生成できないAIに、何を期待すればいいんだ？" userName="iteria" createdAt="2025-04-21T12:06:37" color="">}}

{{<matomeQuote body="最後に大規模で古くてドキュメント化されていないコードベースに対してLLMを使用したのいつ？<br>ここ６週間で状況はマジで変わったぞ。<br>Gemini 2.5 Proは100万トークンを受け入れて、それらを使って「推論」できる。つまり、数十万行のコードを投入すれば驚くほど物事を理解できる可能性があるってことだ。<br>OpenAIはGPT 4.1シリーズで最初の100万トークンモデルをリリースした。<br>OpenAI o3とo4-miniはどちらも20万トークンの入力制限を持つ非常に強力な推論コードモデルだ。<br>これらのモデルはすべて過去6週間以内に新しく登場した。彼らは大量の古くてドキュメント化されていないコードを扱うのが非常に得意だ。" userName="simonw" createdAt="2025-04-21T12:28:10" color="#38d3d3">}}

{{<matomeQuote body="結局、LLMはコードがランタイムで何をするのか理解してないんだよね。コードベースを解析するだけでも良い推測はできるけど、複雑なコードベースだと、誰もドキュメント化してない変な部分があるから、LLMの変更を信用するのは難しい。あと1～2世代したら、人間が手作業で書くことが減って、コードベースがもっと均一になるかもね。自動運転車も同じで、人間のドライバーがいなくなれば、問題は簡単に解決できる。" userName="grugagag" createdAt="2025-04-22T00:42:33" color="">}}

{{<matomeQuote body="それは6週間前よりも当てはまらなくなってきている。「推論」モデルは、コードの実行方法に関する質問に答えたり、バグの原因を特定したりするのが不気味なほど得意だ。まだ間違いも犯すし、基本的には次のトークンを予測する機械だけど、「コードがどのように実行されるか予測できない」っていう先入観はアップデートした方がいいかも。" userName="simonw" createdAt="2025-04-22T02:14:58" color="#ff5c5c">}}

{{<matomeQuote body="そりゃ、モデル名にまだ”preview”とか”experimental”って付いてるくらいだし、そういうことだよね。" userName="simonw" createdAt="2025-04-22T14:08:05" color="">}}

{{<matomeQuote body="＞LLMが目的とか実装についてコールドリーディングで良い答えを出すって話だけど<br>このツールでコールドリーディングできるかはまだ疑問だよね。チュートリアルが有名コードベースばかりで、LLMの学習データにめっちゃ含まれてる可能性あるし。個人的には自分の非公開リポジトリで試してみるつもり。" userName="kaycebasques" createdAt="2025-04-21T11:29:59" color="">}}

{{<matomeQuote body="＞たとえLLMが一行もコード書かなくても、ソフトウェアの理解が早くなるってことは、ソフトウェア開発も早くなるってことだから価値はあるよね。<br>AIが生成した文章ってマジで価値ないと思ってる。AI製品って一見すごいけど、結局役に立たずに潰れるスタートアップをいっぱい見てきたし。コードを消しても動くAIが出てきたら impressするわ。" userName="tossandthrow" createdAt="2025-04-21T06:25:33" color="">}}

{{<matomeQuote body="＞コードを消しても動くAIが出てきたら impressするわ。<br>今のAIでもそれなりにできるよ。もちろん、ミスとか見落としのリスクはあるけどね。" userName="jonahx" createdAt="2025-04-21T07:01:59" color="">}}

{{<matomeQuote body="要約はLLMが得意なことの一つだよね。(今は違うものがhypeになってるけど)" userName="otabdeveloper4" createdAt="2025-04-23T05:49:58" color="">}}

{{<matomeQuote body="＞こういう意見を聞くと、AIの価値が分かってないエンジニアは何吸ってんだろって思うわ。<br>俺は勝者が現れるまで待つわ。色々試してガッカリするのもう疲れたし。" userName="panny" createdAt="2025-04-21T04:00:19" color="">}}

{{<matomeQuote body="＞AIは価値がないって言うエンジニアは何吸ってんだって意見があるけど<br>マジでパラレルワールドに住んでるのかと思うわ。周りのエンジニアは「AIこそ未来！」か「AIには問題がある」って意見ばっかりだよ。AI hypeを批判してるだけじゃない？<br>GitHubのPRの要約botを試したけど、良い面も悪い面もあった。良い点は詳細を正確に捉えること。悪い点はPRの目的を真逆にとらえること。怖い点はAIに頼りすぎること。効率化のためにAIを盲信してミスが積み重なり、大惨事になる未来が見える。" userName="CodeMage" createdAt="2025-04-21T02:16:31" color="#ff5c5c">}}

{{<matomeQuote body="細かいところまで正確なのが価値だって認めてるじゃん。それだけでも使う価値あるよ。修正が必要でも時間は節約できるし、PRの質も上がる。大事なのは*Accountability*。エンジニアは自分の仕事に責任を持つべき。ツールに頼ってもそれは変わらない。PRツールが間違ってても、それを提出するのはエンジニアの責任。責任感のある文化なら、怖がることはない。最近のツールはPRとかcommit messageの作成マジで優秀だよ。" userName="doug_durham" createdAt="2025-04-21T06:11:23" color="#ff5c5c">}}

{{<matomeQuote body="新しいKubernetesクラスタのCPUバグの責任は誰が取るの？信頼できる”誰か”がいないと、trusting-trust問題は解決しないよね。" userName="svieira" createdAt="2025-04-21T14:32:16" color="">}}

{{<matomeQuote body="結局、企業は最先端のLLMを有料化するんだよねー。でも、役に立つかどうか分からないものにお金払いたくないじゃん？" userName="voidUpdate" createdAt="2025-04-21T14:07:55" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="Gemini 2.5 Pro Experimental（最先端モデル）は5 RPM、25 RPDだってさ。Gemini 2.5 Flash Preview 04-17も強力で、10と500。OpenAIもトークン共有に同意すればAPIを無料で使えるよ。" userName="GaggiX" createdAt="2025-04-21T14:14:24" color="">}}

{{<matomeQuote body="RPMとRPDって何？まさかRevolutions Per Minuteじゃないよね？" userName="voidUpdate" createdAt="2025-04-21T14:16:18" color="">}}

{{<matomeQuote body="Requestsのこと。" userName="GaggiX" createdAt="2025-04-21T14:19:09" color="">}}

{{<matomeQuote body="APIをレストランのアナロジーで説明するのはちょっとくどいかなー。GraphQLの説明も長すぎだし。このツール、チュートリアルコンテンツ作成には向いてないかもね。チュートリアルは実践重視で、特定のスタート地点からゴールまで導いてくれるものじゃん？理論は不要って言う人もいるし。でも、プロンプト調整でアクション重視にできると思うよ。" userName="kaycebasques" createdAt="2025-04-20T21:56:21" color="#785bff">}}

{{<matomeQuote body="＞プロンプトを改善すれば解決できるかもね<br>子供向けの説明になったり、逆に説明不足だったりするんだよねー。プロンプト変更だけじゃ解決しない気がする。特定のケースには有効でも、汎用的なプロンプトは難しい。LLMは“私の意図を理解してない”感じ。プロンプトの要求には従うけど、すべての状況に対応できないんだよね。もうLLMに疲れちゃった。" userName="neop1x" createdAt="2025-04-22T17:03:54" color="">}}

{{<matomeQuote body="まさにそれな。エンジニアが対象なんだから、ある程度技術的な内容でも良いんじゃない？VPにETLパイプラインの説明をする必要なんてないと思うし。" userName="hackernewds" createdAt="2025-04-20T04:51:12" color="">}}

{{<matomeQuote body="flow.pyから引用<br>“口調は歓迎的で、初心者にわかりやすく{tone_note}。”<br>“Markdownコンテンツのみを出力。”<br>“超初心者向けのMarkdownを出力（markdownタグ不要）”<br>だから、ここを変えるだけでも効果あるかも。でも、Geminiでレベル調整って難しいよね。教育系だと、極端な回答になりがち。何かアドバイスある？" userName="trcf21" createdAt="2025-04-20T07:24:38" color="">}}

{{<matomeQuote body="“シンプルで厳密な記述を、第一原理から始めて、論理的な結論に導くように。箇条書きや要約はせず、率直な文章で。自明の理や抽象的な表現は避ける。（オプション）読者を{元のプロンプト}と仮定”<br>同じ意味の文章を何度か書いたり、短くしたりもするけど、大体OK。たまに小さな変更で良い結果が出るけど、パターンは見つからない。モデルは頻繁に変わるし、小さな変更の影響範囲は大きいから、無駄な努力かもね。" userName="porridgeraisin" createdAt="2025-04-20T08:09:25" color="#ff5c5c">}}

{{<matomeQuote body="ありがとう、試してみるよ！" userName="trcf21" createdAt="2025-04-20T09:00:49" color="#785bff">}}

{{<matomeQuote body="doc generatorは便利な例だけど、Cursorを使ってPocketFlowの設計ドキュメントを作ったのがマジですごいね！PocketFlowの実行グラフとかユーティリティに合わせて設計を調整して、doc generatorのコードもCursorに生成させたんだって。PocketFlowのパターンが、AIが設計をコードに変換するのに役立つってことだね。マジで感動！設計ドキュメントは[https://github.com/The-Pocket/Tutorial-Codebase-Knowledge/bl...]、動画は[https://m.youtube.com/watch?v=AFY67zOpbSo]を見てね！" userName="swashbuck1r" createdAt="2025-04-21T11:17:56" color="#45d325">}}

{{<matomeQuote body="gemini初めて使ったから、APIアクセスとかGoogle projectの設定で時間かかっちゃった。APIキーはOpenAPIの持ってるんだけど、使い方がわからなくて。<br>api_key=os.getenv(”GEMINI_API_KEY”, “your-api_key”)って書いた方がいいかも。<br>あと、モデルも変更したよ。<br>model = os.getenv(”GEMINI_MODEL”, “gemini-2.5-pro-preview-03-25”)<br>rate limitに引っかかったから、previewモデルを使ってみた。<br>会社のプロジェクトで試してみたよ。<br>[https://github.com/prime-framework/prime-mvc]<br>[https://github.com/FusionAuth/fusionauth-quickstart-ruby-on-...]とか。<br>全体的な感想としては、びっくりマーク多すぎ(笑)<br>すごい詳しいし、例えも上手い。でも、ちょっと使いすぎかも。<br>チュートリアルに間違いはなかったよ。マジですごい！" userName="mooreds" createdAt="2025-04-20T14:45:07" color="#38d3d3">}}

{{<matomeQuote body="出力結果が見たい人向け！mooredsのGitHubにチュートリアルをいくつか投稿したよ。<br>[https://github.com/mooreds/prime-mvc-tutorial]<br>[https://github.com/mooreds/railsquickstart-tutorial]<br>[https://github.com/mooreds/fusionauth-jwt-tutorial/]<br>index.mdをREADME.mdにリネームして、ちょっと修正しただけだよ。" userName="mooreds" createdAt="2025-04-20T16:02:57" color="#45d325">}}

{{<matomeQuote body="請求が遅れたけど、チュートリアル4つで約5ドルかかったよ。" userName="mooreds" createdAt="2025-04-21T01:24:50" color="">}}

{{<matomeQuote body="マジ最高！Cursorに質問しまくって、同じような結果を得てるよ！口調を少し変えたいなー。スタイルテンプレートみたいな機能があると嬉しいかも。PR出すかもだけど、時間かかるならやめとく。" userName="manofmanysmiles" createdAt="2025-04-20T00:32:49" color="#38d3d3">}}

{{<matomeQuote body="PR待ってるよー！" userName="zh2408" createdAt="2025-04-20T00:37:47" color="">}}

{{<matomeQuote body="マジで neat だね！新しいライブラリを使う時、まずリポジトリをcloneしてClaude codeにドキュメントを書かせてるんだ。これがあれば、手間が省けるね！" userName="TheTaytay" createdAt="2025-04-20T01:33:01" color="#45d325">}}

{{<matomeQuote body="まさに今日やったわ！(Codexで！)出力結果はこっちの方がちょっと良いかも！数ヶ月後には、すべてのライブラリで動的なドキュメントが手に入るかもね！" userName="randomcatuser" createdAt="2025-04-21T04:09:38" color="#38d3d3">}}

{{<matomeQuote body="未知のコードベースだとどうなるの？requestsのチュートリアルが、事前知識なしで生成されたにしては不気味なほど正確なんだよね。具体的なユースケースとか例が多すぎるし。「functional api」とか「hooks checkpoints」みたいな用語は、リポジトリに一度も出てこないのに。requestsのチュートリアルはネットにたくさんあるから、AIがそれらを使ってないとは言い切れないよね？" userName="Too" createdAt="2025-04-21T05:32:51" color="">}}

{{<matomeQuote body="Ollamaを使ってローカルモデルを実行したい場合は、こんな感じだよ。<br>＞from ollama import chat, ChatResponse<br>＞def call_llm(prompt, use_cache: bool = True, model=”phi4”) -> str:<br>＞    response: ChatResponse = chat(<br>＞        model=model,<br>＞        messages=[{<br>＞            'role': 'user',<br>＞            'content': prompt,<br>＞        }]<br>＞    )<br>＞    return response.message.content" userName="fforflo" createdAt="2025-04-20T16:05:42" color="">}}

{{<matomeQuote body="アウトプットの質はどうかな？<br>ローカルでLLMを動かせたら、公開されてないコードでも使いやすいからマジで欲しい。" userName="mooreds" createdAt="2025-04-20T16:09:01" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="まあまあ使えるレベルだよ。でもllama2みたいなモデルを使うと、GPUが燃えちゃうかもね。" userName="fforflo" createdAt="2025-04-20T16:38:19" color="">}}

{{<matomeQuote body="mutable aiって会社が去年Googleに買収されたんだけど、似たようなことやってて、チュートリアルじゃなくてwikiを出力してたんだよね。" userName="chairhairair" createdAt="2025-04-19T23:49:48" color="#ff5c5c">}}

{{<matomeQuote body="mutable.aiについてのブログを書こうと思ってたんだけど、サービスが終わっちゃった。<br>前に仕事で使った時に生成されたwikiをアーカイブしたから見てみて！<br>https://web.archive.org/web/20240815184418/wiki.mutable.ai/g...<br>(画像は表示されないけど、自動生成されたクラスの継承図とか依存関係の図だったと思う)<br>＞最初の段落はかなり良い感じ。<br>＞2番目の段落でpw_rpcをPigweedの”コア”と呼ぶのは間違い。pw_rpcが必須で、他のモジュールがそれに依存してるみたいな印象を与えるけど、そうじゃないから。<br>＞その後のモジュールの説明はまあまあ良かったと思う。<br>大きな問題は、wikiがコードベースのいろんな部分の寄せ集めになってるってこと。まとまりがないんだよね。それに、Pigweedのコードベースにある他の100以上のモジュールについては何も触れてない。<br>大きなコードベースで作業するときは、mutable.aiとかPocket Flowみたいなツールに、コードベースのどの部分をドキュメント化するか具体的に指示する必要があると思う。" userName="kaycebasques" createdAt="2025-04-21T11:22:20" color="">}}

{{<matomeQuote body="サイト落ちてるみたい。結果が見れないや。" userName="zh2408" createdAt="2025-04-20T00:01:26" color="">}}

{{<matomeQuote body="買収されたの？それとも諦めてCEOがGoogleで仕事を見つけただけ？<br>https://news.ycombinator.com/item?id=42542512<br>このスレッドだと後者っぽい。" userName="codetrotter" createdAt="2025-04-20T00:15:56" color="">}}

{{<matomeQuote body="買収の詳細は知らないけど、YCのプロフィールには買収されたって書いてあるよ。" userName="chairhairair" createdAt="2025-04-20T13:28:39" color="">}}

{{<matomeQuote body="会社の状況を知らないで、LinkedInを見て勝手に結論を出した人の言うことを信じるの？" userName="cowsandmilk" createdAt="2025-04-20T18:55:32" color="">}}

{{<matomeQuote body="GoogleのNotebookLMのポートフォリオにぴったりだと思うんだけどなー。スケールアップしたいなら。" userName="nxobject" createdAt="2025-04-20T09:40:34" color="">}}

{{<matomeQuote body="ブラウザで使ってみたよ。うちのライブラリの結果がマジですごいんだけど、全く修正してないの？<br>ドキュメントを最新のコードベースに合わせてメンテするのが大変なんだよね(コード例が動かなくなったりする)。Pocketの一部を使って改善できないかな。" userName="gregpr07" createdAt="2025-04-20T06:10:47" color="#45d325">}}

{{<matomeQuote body="別のライブラリのメンテナーだけど、これマジであるかも。ドキュメントも学習させて、不正確なところを見つけるようにしたら最高じゃね？多少の間違いがあっても、人間が最終判断するから今よりマシになるっしょ。" userName="cehrlich" createdAt="2025-04-20T06:27:32" color="#785bff">}}

{{<matomeQuote body="ありがとね！出力はそのままなのよ。小さい変更なら、コミット履歴をLLMに食わせてドキュメント修正させればOK。大規模な変更なら、古いドキュメントを書き直す方が楽かも。10分もかからないし。" userName="zh2408" createdAt="2025-04-20T12:39:47" color="">}}

{{<matomeQuote body="手っ取り早くコードベースを知るには良いけど、人が書いたドキュメントの代わりにはならないよね。<br>https://passo.uno/whats-wrong-ai-generated-docs/" userName="remoquete" createdAt="2025-04-21T06:13:53" color="">}}

{{<matomeQuote body="人間とLLMの組み合わせが最強だと思うな。機械によるドキュメント作成ツールを取り入れることで、最終的にドキュメントの質が向上するはず。例えば、コードベースの要約ツールを試したんだけど、いくつか不正確な点があったの。原因もわかったから修正して、再度実行したら正確な要約になったよ。でも、テクニカルライターは必要だよね。" userName="kaycebasques" createdAt="2025-04-21T12:00:29" color="#ff5733">}}

{{<matomeQuote body="マジそれ。強化していくしかないっしょ。" userName="remoquete" createdAt="2025-04-21T12:26:26" color="">}}

{{<matomeQuote body="肥大化しすぎ。コード自体は100行程度なのに、コード以外の部分がガス惑星みたいに膨張してる。テキストも動画もLLMが書いてるし。量より質ってことを理解して、もっと簡潔にした方が良いと思う。生成された“設計ドキュメント”が2000行以上あるし。Quota超えそう。" userName="iamsaitam" createdAt="2025-04-25T05:53:28" color="">}}

{{<matomeQuote body="最初は良い感じだけど、すぐにコードを人間語にしただけになるんだよね。関連する単体テストを調べれば、もっと便利な使用パターンが見つかるはず。チュートリアルを読む人が知りたいのは使い方でしょ。" userName="esjeon" createdAt="2025-04-20T03:14:40" color="">}}

{{<matomeQuote body="マジかよ。<br>一日で作ったの？マジですごいな。<br>数週間前に同じことを考えたけど、実装方法がわからなかったんだよね。<br>マジGJ" userName="mattfrommars" createdAt="2025-04-20T19:33:21" color="#ff5733">}}

{{<matomeQuote body="$GEMINI_MODE=gemini-2.0-flash で simonw/llm と pgcli みたいなライブラリでも良い結果が出たよ。<br>simonw はドキュメントをしっかり書いているし、ロジックもわかりやすいからモデルも助かるよね！<br>https://github.com/Florents-Tselai/Tutorial-Codebase-Knowled...<br>https://github.com/Florents-Tselai/Tutorial-Codebase-Knowled..." userName="fforflo" createdAt="2025-04-20T16:39:37" color="">}}

{{<matomeQuote body="ドキュメントがないリポジトリだとどうなるの？" userName="3abiton" createdAt="2025-04-21T09:13:55" color="">}}

{{<matomeQuote body="HNで何度か言ってるんだけど、LLMを使ってドキュメントを自動生成すればいいのにって思うんだよね。でも、反対する人が出てくるんだよな…" userName="amelius" createdAt="2025-04-20T13:33:16" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="役に立つドキュメントって、コードがなぜそうなってるのかを説明するものだよね。つまり、なぜこのコードが存在するのかってこと。LLMは、君がそう書いた動機を魔法のように理解することはできないんだ。" userName="runeks" createdAt="2025-04-20T16:28:48" color="#ff33a1">}}

{{<matomeQuote body="APIの「なぜ」をLLMに教えて、個々の関数やクラスのドキュメントを書かせればいいじゃん。" userName="bonzini" createdAt="2025-04-21T06:21:05" color="#785bff">}}

{{<matomeQuote body="コードを書いた人だけがドキュメントを書けるって言いたいの？" userName="johnnyyyy" createdAt="2025-04-20T17:23:25" color="">}}

{{<matomeQuote body="いや、LLM（と他の多くの人間）は最高のドキュメントを書けないって言ってるんだよ。正直、ほとんどのドキュメントは役に立たないものばかり。LLMなら、そういうのを大量に書けるだろうね（笑）。" userName="oblio" createdAt="2025-04-20T19:08:13" color="">}}

{{<matomeQuote body="できないからだよ。前のコメントを見て。<br>https://news.ycombinator.com/item?id=43748908" userName="remoquete" createdAt="2025-04-21T12:29:39" color="">}}

{{<matomeQuote body="代わりに、コードをちゃんとドキュメント化しろってこと。" userName="tdy_err" createdAt="2025-04-20T15:26:00" color="">}}

{{<matomeQuote body="チームにドキュメントを作るように働きかけて、いつも「他の優先順位と比べてどうなの？」って議論になることが多すぎて、ランチをおごってもらいまくったかも。それって、賢い人が面倒で重要度の高いタスクから逃れるための常套手段なんだよね。AIは文句言わないし、ただ書くだけ。人間が著者じゃなくて、レビュー担当になることで、作業がすごく早くなるんだ。" userName="cushychicken" createdAt="2025-04-20T15:29:05" color="#ff5733">}}

{{<matomeQuote body="これマジですごいし、めっちゃ実用的じゃん。近いうちにいくつかのプロジェクトで試してみるよ。生成後に微調整が必要になるかもしれないけど、自分のコードベースを知ってれば問題ないよね。" userName="mvATM99" createdAt="2025-04-20T07:31:27" color="#ff5c5c">}}

{{<matomeQuote body="マジですごい。ここ2年で見たAI関連の物の中で一番良いかも。" userName="citizenpaul" createdAt="2025-04-21T04:01:40" color="#45d325">}}

{{<matomeQuote body="めっちゃクールじゃん！シェアありがとね。これ、うちのテクニカルライター仲間が将来についてもっと不安になるかもなー。でも実際は、今まで多くのコードベースでちゃんとしたチュートリアルを作るのが難しかったんだよね。例えば、サイドプロジェクトだと時間もエネルギーもないし、チュートリアルなんて一番手間がかかるドキュメントだし。企業もテクニカルライターを雇うのを渋るし、仕事が売上に繋がりにくいから。でも、これからは色んなプロジェクトでちゃんとしたドキュメントが当たり前になって、テクニカルライターの需要が増えるかもよ？これからはMLツールを使いこなしてドキュメントを作るのが大事になると思う。まあ、テクニカルライターが滅びる可能性もゼロじゃないけどね。このツールを評価する方法があるから、数日後にhttps://technicalwriting.devに感想を投稿するね。最近、ドキュメント自動化のスタートアップが多いけど、競争が激しい分野だと思う。ドキュメントのニーズは広いから、ベストプラクティスはコモディティ化されてオープンソースになると思うよ（Pocket Flowみたいに）。" userName="kaycebasques" createdAt="2025-04-20T19:37:39" color="#ff33a1">}}

{{<matomeQuote body="記事書いたよ！<br>https://technicalwriting.dev/ml/pocketflow/index.html" userName="kaycebasques" createdAt="2025-04-22T04:13:16" color="">}}

{{<matomeQuote body="これは新しいオープンソースの貢献者にとってマジで最高のオンボーディングだね！PostgresとかRedisのコードベースを突っ込んで、理解を深めて貢献できるようになるじゃん。" userName="wg0" createdAt="2025-04-20T06:07:40" color="#ff5733">}}

{{<matomeQuote body="それって楽観的すぎじゃない？Postgresのソースコードってマジで複雑だし、簡単なチュートリアル読んだだけでデータベースエンジンのニンジャになれるわけないじゃん。そんな簡単なチュートリアルで理解できるなら、その分野の本読んだらどうなるんだよ。" userName="tgv" createdAt="2025-04-20T08:21:52" color="">}}

{{<matomeQuote body="いやいや、そんなにLLMに期待してないって。ただ、何もないよりマシってことよ。理解するのはエンジニアの仕事だし。得られるのは、どこを見ればいいかの概要だけだよ（しかもちょっと不正確な部分もある）。" userName="wg0" createdAt="2025-04-20T16:07:45" color="">}}

{{<matomeQuote body="これめっちゃクール！プロジェクトで使ってみようとしたら、「This model's maximum context length is 200000 tokens. However, your messages resulted in 459974 tokens. Please reduce the length of the messages.」ってエラーが出ちゃった。Open ai o4-miniを使ったんだけど、どうすればいい感じに処理できるかな？大きいコードベースやプロジェクトディレクトリでチュートリアルを作る方法について何か考えある？" userName="nitinram" createdAt="2025-04-23T01:00:54" color="#38d3d3">}}

{{<matomeQuote body="Gemini 2.5 proを試してみてはどうかな？最初は毎日25回まで無料で、1Mのトークンを扱えるよ。" userName="zh2408" createdAt="2025-04-23T01:53:54" color="#ff33a1">}}

{{<matomeQuote body="実行するのにどれくらいのコストがかかったか測った？自分のリポジトリで実行するのにいくらかかるか知りたい。" userName="potamic" createdAt="2025-04-20T08:34:45" color="">}}

{{<matomeQuote body="プロンプトが4つあって、最後のやつは章の内容に応じて最大10回実行されるみたい。無料枠の25回で、2～3個チュートリアル作れるんじゃない？章の数にもよるけど。" userName="pitched" createdAt="2025-04-20T11:40:30" color="#785bff">}}

{{<matomeQuote body="このアイデアの拡張として、AIが生成するソフトウェアのインタラクティブなチュートリアルは良い製品になるかも。コード内の定義された使用パスで学習されていれば、ユーザーをガイドできるはず。" userName="1899-12-30" createdAt="2025-04-21T17:15:43" color="#38d3d3">}}

{{<matomeQuote body="生成された概要図は結構面白いけど、AIが生成した文章の口調とかスタイルがマジで無理だわー。例えば、https://the-pocket.github.io/Tutorial-Codebase-Knowledge/Req...を見てみなよ。ちょっとこれはキツイっしょ。" userName="Retr0id" createdAt="2025-04-19T23:44:36" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
