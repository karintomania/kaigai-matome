+++
date = '2025-05-01T00:00:00'
months = '2025/05'
draft = false
title = 'Claude Integrations！ AI進化が止まらない？'
tags = ["AI", "Claude", "統合", "研究", "プログラミング"]
featureimage = 'thumbnails/cyan2.jpg'
+++

> Claude Integrations！ AI進化が止まらない？

引用元：[https://news.ycombinator.com/item?id=43859536](https://news.ycombinator.com/item?id=43859536)




{{<matomeQuote body="AIの進化ヤバいね（良い意味で、たぶん？）。最近は最先端の機能も数週間で抜かされちゃうくらい。<br>LLMはずっと面白いおもちゃだったけど、OpenAI DeepResearchが出てから、複雑なプログラミング（自分でコードは書くけど、色んなライブラリやAPIを組み合わせるやつ）で役立つ結果を出すようになったんだ。でも安いプランだと月10回までだった。<br>次にGoogle Deep Research（2.5 Proにアップグレード）が出て、有料だけど1日20回まで使えるから、もう何でも放り込んでみたんだ。1週間以上前のレポートもまだ処理してるくらい。あと、一度に400ソースも検索できたのも、本の初版特定とか歴史調査でOpenAIよりずっと役に立ったね。<br>今度はClaudeが同じ研究機能出すんだ（Cloudflare MCP authとか Val.town みたいな連携に期待）。しかも実行時間は45分だって。<br>半年前は変化のペースに圧倒されてたけど、今はもう馬鹿げてるレベルだよ。" userName="throwup238" createdAt="2025/05/01 17:23:08" color="#785bff">}}




{{<matomeQuote body="君の全体的な意見には同意するよ。速い成長は競争を促して、企業にベストを尽くさせるみたいだね。<br>だけど、残念ながら Claude 3.7 はあんまり褒められないんだ。もし「なんで？3.7は3.5よりずっと良いでしょ？」って誰かに聞かれたら、きっと君（か誰か）がClaudeを会話よりコーディングでずっとたくさん使ってるからだろうって思うよ。俺の意見では、3.5 Haiku（高負荷時無料で使えるやつ）でさえ、3.7 Sonnetより優れてる。<br>簡単なテストがあるよ。3.7に何か専門的なことを直感的に説明させてみて。例えば、質量支配振動とバネ支配振動とか。俺はメカエンジニアでこれを勉強したけど、3.7のアナロジーは理解できなかったんだ。<br>コーダーが Claude のユーザーの最大のグループだってのは理解してるけど、Claude は俺にとって一番使うアプリから、今では chatgpt と Gemini の両方の後でしか使わないものになっちゃった。それは絶対後悔してることだよ。" userName="user_7832" createdAt="2025/05/01 17:41:09" color="#38d3d3">}}




{{<matomeQuote body="でもさ、あのレポートってどれもあんまり良くないんだよね。浅いリサーチなら良いかもだけど、深い内容は見つけられなかったな。どんな種類のリサーチで、 Deep Research が本当に深いリサーチで素晴らしい仕事をしたのか、シェアしてくれる？" userName="ilrwbwrkhv" createdAt="2025/05/01 17:48:44" color="">}}




{{<matomeQuote body="俺の今の仮説：トピックに詳しければ詳しいほど、どのLLMからの結果も悪くなる。" userName="garrickvanburen" createdAt="2025/05/02 00:33:45" color="">}}




{{<matomeQuote body="俺もこの意見に賛成。Deep Research はあんまり役に立たなかったな。もしかして俺の使い方が間違ってるのかな？<br>例：北米の人口が多い上位250都市の降水量をミリメートルで、月ごとの最高気温と最低気温を摂氏で知りたい。<br>俺にとっては、このプロンプトって Deep Research にとってすごく当たり前で分かりやすいタスクに思えるんだ。長くて面倒だけど、ほとんどが構造化されたデータソース（wikipedia）からで、せいぜい2言語だしね。<br>でもこれを色んなモデルに入れても、たいてい自分でデータを見つけに行く方法を返してくるだけなんだ。Wikipediaの調べ方は知ってるんだよ、250ページ手作業で探したくないし、HTMLのボックスを全部扱うスクリプトを書くのも嫌だってこと。この何日もかかる面倒なタスクをLLM/モデルにやってほしいんだよ。" userName="Balgair" createdAt="2025/05/01 21:47:36" color="#ff5c5c">}}




{{<matomeQuote body="3.7はコーディングベンチマークでは点数高かったけど、実際には3.5の方がずっとコーディングうまいんだ。3.7は指示を無視したり、頼んでないことをやったりするんだよね。" userName="tiberriver256" createdAt="2025/05/01 22:43:38" color="">}}




{{<matomeQuote body="面白いことに、もし君のリクエストが上位100の気温か上位33の降水量だけなら、「都市別の平均気温リスト」とか「都市別の平均降水量リスト」を読むだけで済むんだよね。でも上位250だと184倍もページを読まなきゃいけない。<br>俺のこの件に関する見方だけど、もし Deep Research が何かできないなら、自分でそれをやって結果をインターネットに公開するべきだよ。他の人間や同じタスクをしようとしてるAIの助けになるだろうしね。" userName="85392_school" createdAt="2025/05/01 22:16:33" color="#ff5733">}}




{{<matomeQuote body="そうなんだよ、それは意図的だったんだ、まあ、ある程度ね。<br>プロジェクトでは西半球の全ての既知の都市と、日本、韓国、台湾のリスト全体が必要なんだ。でもそのデータセットが本当に気が遠くなるほど巨大で、可能なのかどうかも怪しいくらい。たぶん何年もかかると思ってる、翻訳もたくさんしなきゃいけないし。<br>だから、優しくするために色んなモデルで上位250だけ頼んでみたんだよ。<br>他にも集めようとしてるデータはたくさんあって、仕事関係だから公開許可がもらえるといいなと思ってる。" userName="Balgair" createdAt="2025/05/01 23:06:08" color="">}}




{{<matomeQuote body="ちょっと興味あるんだけどさ、 Deep Research をプログラミングの質問にどう使ってるか、具体的な例を何か教えてくれない？どう役立つのか想像するのが難しくて、参考にしたいんだ。" userName="greymalik" createdAt="2025/05/01 22:44:56" color="">}}




{{<matomeQuote body="3.7は過剰に活発すぎるね。<br>俺は今、コードは全部 Gemini 2.5 Pro を使ってるよ。" userName="spaceman_2020" createdAt="2025/05/02 04:56:55" color="">}}




{{<matomeQuote body="それってさ，実はDeep Researchが目的としてるもんじゃないんだよ．好きなように使っていいけど．君のクエリは単なるデータ収集で，研究じゃないんだ．Deep Researchは高品質な情報源からトピックを探求するものだよ．自分の研究の出発点になる．一ヶ月で読めないくらいたくさんの情報源から10分で要約レポートを作るんだ．そこから掘り下げたり，情報源を読書リストにして自分で分析するのもいいかもね．" userName="sxg" createdAt="2025/05/01 23:01:46" color="">}}




{{<matomeQuote body="2.5はさ，俺的には”よし，Claudeじゃ無理だわ”って時の選択肢だけど，まず”銀行口座”を確認して買えるかチェックするんだ．" userName="conception" createdAt="2025/05/02 12:46:02" color="">}}




{{<matomeQuote body="ほんとこれ．自分が専門家である分野で，LLMに何か詳しく説明させてみると，すぐに欠点がわかるんだよね．" userName="danw1979" createdAt="2025/05/02 09:17:15" color="">}}




{{<matomeQuote body="なんか，”研究”って言葉の定義，全然違うみたいだね．君のは”要約”って感じ．俺にとっての”研究”は，データ全部集めに行く作業．例えば，恐竜の骨掘りとか土壌サンプル測定とかね．モデルにウェブページ集めさせるなんて，夏の学部生に最初にやらせてファイルシステム慣れさせるレベルだよ．論文書くのも研究だけど，大事な大変な部分じゃないね．" userName="Balgair" createdAt="2025/05/01 23:12:57" color="#785bff">}}




{{<matomeQuote body="＞My current hypothesis：the more familiar you are with a topic the worse the results from any LLM．<br>それ，そんなに真実じゃないよ．だって君のプロンプトもどんどん良くなってるわけだし．Better input leads to better output remains true，even with LLMs （when you see it as a tool）．" userName="jeswin" createdAt="2025/05/02 02:03:35" color="">}}




{{<matomeQuote body="うん，ウェブで見つかる情報に欠陥がある場合は特にひどいね．例えば，俺は専門家じゃないんだけど，おもちゃのプロジェクト用にRC motorを探してて，OpenAIがDeep Researchでいくつか候補を探してくれたんだ．でも，一番いい候補がmotorのスペックに明らかな誤植（68 grams instead of 680 grams）があって，その寸法のmotorとしてはありえないんだ．" userName="startupsfail" createdAt="2025/05/02 15:42:09" color="#ff5733">}}




{{<matomeQuote body="俺は自分が知ってることの検証によくChromeを使うんだ．最近，KnuthーBendix completion procedureをpropositional logicに適用する方法をChromeに頼んだんだけど，自分の考えは固まってた．その応答で，俺は全くのバカじゃないって確信できたよ．俺は学者じゃないし，theoryは間違えるから，validationできるのは助かるね．" userName="emorning3" createdAt="2025/05/02 01:53:15" color="#785bff">}}




{{<matomeQuote body="いくつかのAPIを呼ぶのがleapーfrogging？GPTー3でもできたことだし，新しい名前でブランド化されて，（欠陥のある）standardを作ろうとしてる以外，何も変わってないじゃん．もしOpenAIとかAnthropicで本当にまだinnovationが起きてるなら，modelsだけに取り組んでるはずだよ．誰かが週末に開発できるようなside featuresじゃなくてさ．" userName="iLoveOncall" createdAt="2025/05/02 07:46:19" color="">}}




{{<matomeQuote body="Dataはあるけど，全部parseする必要がある場合，十分なcontext windowがある好きなLLMにuploadして，projectを終わらせてもらうことってできないのかな？" userName="wyre" createdAt="2025/05/02 00:38:00" color="">}}




{{<matomeQuote body="何言ってんの？もう一年も停滞してんじゃん。変わったのは、もっと多くのAPIに繋げただけ。あと、同じモデルで思考ループを追加しただけだよ。だから速く見えるんだろ、簡単なこと以外は何も変わってないんだってば。" userName="risyachka" createdAt="2025/05/01 23:34:58" color="">}}




{{<matomeQuote body="俺にとって、Gemini 2.5 pro がマジで”これこそが真の普及の瞬間だ”って思った時だったわ。AIが人間を置き換えるって話、2024年じゃちょっと大げさだと思ってたんだよね。でも2025年には、モデルは本当に十分良くなってきてると思うな。" userName="spaceman_2020" createdAt="2025/05/02 04:55:57" color="#785bff">}}




{{<matomeQuote body="ニッチな話題だとAIは苦手みたいだね。でも、この記事の例の質問はChatGPTかGeminiか3.5 Haikuかは忘れたけど、他のAIはちゃんと答えてくれたよ。特にDIYオーディオとか、創造性と工学の組み合わせはLLMが苦手で、教科書通りのつまらない設計しか出さないんだ。スマホみたいな議論が多い質問なら、もっと良い答えが出ると思うけどね。" userName="user_7832" createdAt="2025/05/02 08:20:39" color="#ff5733">}}




{{<matomeQuote body="あれって、トークンを使い果たさせてアップグレードさせようとしてるだけだと思うんだよね。簡単な質問をしただけなのに、READMEとかMakefileとか全部揃ったリポジトリ全体を出してきたりさ。知りたかったのは、コードに含まれる特定のアルゴリズムがどれくらい効率的かだけだったのに。Pro planにリサーチ機能が追加されるのが待ちきれないな、だって、いろいろ聞きたいことがあるからさ..." userName="UncleEntity" createdAt="2025/05/02 02:17:22" color="#ff33a1">}}




{{<matomeQuote body="集めたデータに対して、リサーチさせてKnapsack problemを解かせてるみたいだね。traveling salesman oneでも同じことやるべきだね。そのシナリオでどうやって結果を検証してるの？”言ってること鵜呑みにしてるだけ”？" userName="therein" createdAt="2025/05/02 07:48:33" color="#38d3d3">}}




{{<matomeQuote body="オープンアクセスの論文やデータで短い文献レビューを作るのには優れてるね。判断力はなくて、特に指示しない限りほとんどの情報を鵜呑みにするけど。" userName="tomrod" createdAt="2025/05/02 01:46:56" color="#45d325">}}




{{<matomeQuote body="簡単だよ、自分で5分かかるようなリサーチタスクなら、並行して別の作業をしながらDeep Researchリクエストを飛ばす価値はあるね。ドキュメントが曖昧だったり古かったりする時によく使うよ。Gemini/o3が2回試しても何も分からない時とか。全然知らないサービス/API/フレームワーク/何でもいいけど、Googleで何を検索すればいいかも分からない時とかにね。" userName="dimitri-vs" createdAt="2025/05/02 00:51:44" color="#ff5c5c">}}




{{<matomeQuote body="Claude 3.7は過学習してるっぽい。特にコーディングに力入れすぎたかな。3.5がヒットしたからベンチマーク重視にしたんだろうけど、ベンチマークって実際と違うしね。もし本当に良かったら4.0になってたはずだよ。3.5から3.7って変な名前だし、それだけで色々わかる気がする。" userName="fastball" createdAt="2025/05/02 03:06:21" color="#ff5c5c">}}




{{<matomeQuote body="これ、最近OAuth2.1がMCP仕様に追加されて、リモートサーバーと安全に通信できるようになったからできることみたい。でも、大きな懸念は、サーバーホスト側が認可の実装責任を負うってこと。議論はここ[1]: https://github.com/modelcontextprotocol/modelcontextprotocol... 、仕様はここ[0]: https://modelcontextprotocol.io/specification/2025-03-26 だよ。" userName="meander_water" createdAt="2025/05/01 22:25:19" color="#ff33a1">}}




{{<matomeQuote body="そのGitHubイシューはもう閉じてるけどさ、サーバーホストが認可実装責任負うのヤバいって言うけど、それ普通じゃない？Claudeが俺のJiraにアクセスする時、JiraがリモートのMCPサーバー動かしてて、俺のリソース公開を手伝うなら、Jiraが認可責任持つのは当たり前じゃないの？他にどうやるのさ？" userName="marifjeren" createdAt="2025/05/02 00:50:40" color="#45d325">}}




{{<matomeQuote body="そのGitHubイシューが閉じてるのは、大体終わったからだよ。このリンクhttps://github.com/modelcontextprotocol/modelcontextprotocol... 見ると、最新の仕様草案では、リソースサーバーがIdPの代わりを務める必要はないってなってる。まだ正式な仕様にはなってないけど、SDKは既に草案に従って実装してるよ。" userName="halter73" createdAt="2025/05/02 19:05:29" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="認可サーバーとリソースサーバーは別の存在でいいんだよ。つまり、Jiraインスタンスはトークンを検証できるけど、トークンを発行したり認証情報を扱ったりするサーバーじゃなくてもいいってこと。" userName="cruffle_duffle" createdAt="2025/05/02 01:14:36" color="">}}




{{<matomeQuote body="そうだよ、それはOAuthの話で、まさに最新のModel context protocolが使ってるものだよ。じゃあ何が懸念なの？もしかして、責任はMCPサーバーじゃなくて認可サーバーにあるって言いたいのかな。技術的にはそうだけど、これはほとんど意味ないと思う。だってさ、1. 俺の経験上、リソースサーバーと認可サーバーってほとんど同じ会社が管理してるんだよね。Jira/Atlassianとかがそう。2. リソースサーバーは、どこかの認可サーバーと連携しなきゃいけないし、誰かは認可サーバーにならないといけないわけだから、その誰かに責任押し付けるのが、批判に対する強力な防御策になるとは思えないんだ。強力な防御策は、「もちろんMCPサーバーがこれらの責任を持つべきだ」って言うことだよ。" userName="marifjeren" createdAt="2025/05/02 02:34:39" color="#38d3d3">}}




{{<matomeQuote body="困るのは主にエンタープライズ企業だろうね。自社の認証システムとサーバーを連携させたい時とか。例えば、Entra IDでSSOしてる自社Jiraがあると、AuthZとリソースがガッチリ繋がってて実装もバラバラだから、市販のMCPサーバーをそのまま使えないんだ。サーバーがリソースだけ提供して、AuthZは別のとこに任せられる方がずっといいのにね。" userName="meander_water" createdAt="2025/05/02 03:17:03" color="#ff5733">}}




{{<matomeQuote body="俺の印象では、君が説明したことこそ、まさに新しいModel context protocolがやろうとしてることだと思うよ。だってOAuth使ってるんだから、認証（SSOとか）の詳しいことは知らないはずだ。君の認証プロセスが伝書鳩経由だったとしても、Claudeは全く気づかないだろうね。" userName="marifjeren" createdAt="2025/05/02 03:26:36" color="#45d325">}}




{{<matomeQuote body="認可に関する仕様ページの直接リンクだよ: https://modelcontextprotocol.io/specification/2025-03-26/bas...。ソースはここ: https://github.com/modelcontextprotocol/modelcontextprotocol/..." userName="dmarble" createdAt="2025/05/01 22:50:03" color="">}}




{{<matomeQuote body="Claudeとの統合デモ、LinearとかStripeとかPaypalとかIntercomとかAリスト企業がいっぱいやってるよ。今ライブ中！<br>動画リンク: https://www.youtube.com/watch?v=njBGqr-BU54<br>もし上のリンクが後でダメになったら、このデモデイのページはここ: https://demo-day.mcp.cloudflare.com/" userName="VSerge" createdAt="2025/05/01 17:36:19" color="#ff5733">}}




{{<matomeQuote body="これは万能アプリ時代の始まりかな？ついにLLM向けSaaSが始まるってこと？最初はネットがあったけど、価値が出たのはインストールアプリじゃなくてウェブアプリがSaaSになった時だよね。もしLLMが特定のリモートMCP、これもLLM向けのSaaSなんだけど、これを使えるなら、そのリモートMCPを使ったサービスはすごいことしてサブスク課金できるわけだ。ほら！LLM向けSaaSの新黄金時代を始めようぜ。そして「AIでXYZの仕事をなくす」みたいな古い流行りはもう終わらせよう。" userName="n_ary" createdAt="2025/05/01 17:47:38" color="#ff33a1">}}




{{<matomeQuote body="最高じゃん！誰もサービスの稼働率（9が何個並ぶか）なんて気にする暇なくなるね。だって非決定性っていう気まぐれな故障モードがど真ん中に座っちゃって、それが彼らの問題になるんだから！" userName="insin" createdAt="2025/05/01 21:46:28" color="#ff5733">}}




{{<matomeQuote body="想像してみてよ。雰囲気（vibes）でサブスク料金が動的に変わるんだぜ。提供してる側ですら説明できないから、値上げされても気づきもしないってわけ。" userName="Manfred" createdAt="2025/05/02 08:02:57" color="#785bff">}}




{{<matomeQuote body="それよりカスタムサイトにMCP繋いで、SaaSに金払ってた賢い機能を自分で動かせるのがワクワク！データも自分で管理できるし、すごい勝ち筋だよ。AIアシスタントコーディングでSaaSを内製できる気がする。特定のスタックなら運用もシンプルにできるし、MCPで全部連携して知能を引き出せる。OSSも今後もっと面白くなるはず。" userName="clvx" createdAt="2025/05/01 18:24:08" color="#ff5c5c">}}




{{<matomeQuote body="中国企業がこんなにすごいオープンウェイトモデルをいっぱい出してくれてることにマジ感謝すべきだね。これからも続けてほしいな。将来、コンピューターとのやり取り全部でOpenAIとかAnthropicとかGoogleに頼りたくないからさ。" userName="heyheyhouhou" createdAt="2025/05/01 21:01:24" color="">}}




{{<matomeQuote body="Metaも忘れないでよ。もしあいつらがなかったら、今公開されてるモデルの半分もなかっただろうからさ。" userName="achierius" createdAt="2025/05/01 21:20:41" color="">}}




{{<matomeQuote body="一方では、個人的に使う分には超クールなのは確かだよ。でも他方では、どんな企業でもこれだけのレベルで、そこら中にある色々な個人データソースにアクセスできちゃうってのは、マジで怖え。米国に包括的なデータプライバシー法みたいなのがちゃんとあったら、もっと気が楽なんだけどね。だってHIPAAでカバーされない個人情報が、基本的に誰でも扱えるワイルドウェストになっちゃうのは嫌だから。" userName="naravara" createdAt="2025/05/01 19:33:15" color="#ff5c5c">}}




{{<matomeQuote body="全く同意だよ。でも、これって基本的にはZapierとか、あいつらのトップ事例の一つであるMCP統合に与えるアクセスレベルと同じだって言いたかっただけね。" userName="falcor84" createdAt="2025/05/01 20:15:07" color="">}}




{{<matomeQuote body="オンライントラッキングとかiframeとかsticky cookiesとかCambridge Analiticsとかがあった後、GDPRみたいなのが生まれるまでに何年もかかったんだよね。同じように、LLMのパイプラインとか統合から似たような大きな漏洩事故が起こるまで、数年待たなきゃいけないんだろうな。悲しいけど、それが俺たちが生きてる現実なんだよ。" userName="n_ary" createdAt="2025/05/02 00:21:19" color="#ff5733">}}




{{<matomeQuote body="問題はさ、それがSkynetが出てくるより先に起こるかってことだよな。" userName="jimbokun" createdAt="2025/05/02 00:47:08" color="">}}




{{<matomeQuote body="LLMベンダーが、クエリの応答でウェブサイトのコンテンツ／機能／サービスを使ったら、自動的にチップを払ってくれるみたいな、＿チップジャー＿ MCPがあったら最高だなあ．金額がめちゃくちゃ小さくても、集まれば広告収入の損失を補えるかもしれないし．" userName="OtherShrezzing" createdAt="2025/05/01 20:28:05" color="#ff5733">}}




{{<matomeQuote body="全く同じじゃないけど、Stripeからちょっと前にtwitterでこれを見たよ： https：／／x．com／jeff＿weinstein／status／1918029261430255626" userName="fredoliveira" createdAt="2025/05/01 21:15:15" color="">}}




{{<matomeQuote body="これ、全く思いつかなかったけど、結構いいね．MCPの普及スピードを見るのは本当にすごいことだね．" userName="consumer451" createdAt="2025/05/03 07:56:50" color="">}}




{{<matomeQuote body="＞もしLLMが特定の遠隔MCPを使えるようになったら、それはLLMのための別のSaaSってことだよね．その遠隔MCPサービスはすごいことをするためにサブスクで課金できる．ほらね！<br>優秀な従業員は明確なプロセスと質の高いドキュメントで自分を置き換え可能にするって前提でいつも仕事してるんだ．なぜこんなにもかけがえのないSaaSソリューションをビジネスプロセスに統合したがるのか、理解するのに苦労してる．<br>AIはそんなに使ってないけど、やってきたことは全部自分のコンテキストや設定などを所有することに重点を置いてきた．他の誰かが10年以上分のAIコンテキストを持ってるとして、人々はどれだけ払おうとするんだろう？<br>俺がおかしいのか、それともコンテキストを所有することって途方もなく価値があるのか？" userName="donmcronald" createdAt="2025/05/01 22:07:29" color="#ff5733">}}




{{<matomeQuote body="おう、コンテキストオーナー仲間！モジュールのルートレベルにcontext．shがあるのが好きなんだよね．ちゃんと作れば、魔法みたいにうまくいくんだ．逆に、AIがおかしくなるときは、たいていコンテキスト管理が悪いせいで、それを改善すれば直るよ．" userName="brumar" createdAt="2025/05/01 22:28:29" color="#38d3d3">}}




{{<matomeQuote body="MCPってのは、既存SaaSの単なる別のインターフェース（UIとかAPIみたいな）にすぎないんだろ？でもなんか魔法みたいに”エージェント対応”になったって感じ．もちろん、金儲けのためだよな．" userName="throwaway7783" createdAt="2025/05/01 17:51:16" color="">}}




{{<matomeQuote body="「Xはどうやるの？」ってプロンプトに、「これ、2ヶ月前にJiraで上がったチケットと関係あるみたいだよ」とか、「Sharepointにこの件のドキュメントがあるよ」って答えられるAIがいたら、とんでもなく価値あるな、マジで泣くかも．編集：いや、実はチケット自体に直接表示される方がいいかもな、MCPは要らないかもしれないけど．でも、それでも．" userName="sebstefan" createdAt="2025/05/02 09:14:46" color="#785bff">}}




{{<matomeQuote body="CopilotはもうSharepointとかを使えるように設定できるよ．あと、内部コンテンツだけに基づいて答えるように設定することも可能．だから「マーケティング担当は誰？」って聞いたら、一般的な答えじゃなくてSharepointから読み取って答えてくれるんだ．" userName="MagicMoonlight" createdAt="2025/05/02 09:52:05" color="#ff33a1">}}




{{<matomeQuote body="遠隔MCPサーバーってまだちょっと変な感じ．Anthropicが1ヶ月くらい前に新しいStreamable HTTP transportを含むMCP仕様を更新したけど、Claudeはまだそのトランスポートをサポートしてないみたいなんだ．<br>俺たちの遠隔MCPサーバーを繋いだとき、ClaudeはエンドポイントにGETリクエストを送ってきたんだ．仕様によると、両方のトランスポートをサポートしたいクライアントは、まずサーバーURLにInitializeRequestをPOSTしてみるべきなんだ．もしそれが4xxを返したら、SSE統合を想定するべきなんだって．" userName="conroy" createdAt="2025/05/01 19:32:03" color="#38d3d3">}}




{{<matomeQuote body="Claude Desktopはリソースを直接インポートしないとサポートしてくれないし、しかもそのボタンとツールがなくなっちゃったんだ．だから、何が読み込まれてて何がそうじゃないか確認するために、それらのステータスをツールに組み込む必要があったんだよ．<br>俺のDesktop用ツールはここにあるよ： https：／／github．com／kordless／EvolveMCP" userName="kordlessagain" createdAt="2025/05/03 15:27:04" color="#ff5c5c">}}




{{<matomeQuote body="remote MCP serversのリスト作ったよ。新しいリリースを追跡できるから見てみてね。<br>https://github.com/jaw9c/awesome-remote-mcp-servers" userName="joshwarwick15" createdAt="2025/05/01 17:20:15" color="">}}




{{<matomeQuote body="色々な調査系AIを試してるけど、個人的にはGoogleのGemini 2.5 Pro Experimentalが一番かな。OpenAIも悪くない。Anthropicの新しいAdvanced Research（Claude）も試したけど、短すぎていまいちだったんだよね。プロンプトに沿ってなかったし。それぞれの結果へのリンクは下にあるよ。<br>Writing conventions in Japanese and English<br>https://claude.ai/public/artifacts/c883a9a5-7069-419b-808d-0...<br>https://docs.google.com/document/d/1V8Ae7xCkPNykhbfZuJnPtCMH...<br>https://chatgpt.com/share/680da37d-17e4-8011-b331-6d4f3f5ca7...<br>Overview of an industry in Japan<br>https://claude.ai/public/artifacts/ba88d1cb-57a0-4444-8668-e...<br>https://docs.google.com/document/d/1j1O-8bFP_M-vqJpCzDeBLJa3...<br>https://chatgpt.com/share/680da9b4-8b38-8011-8fb4-3d0a4ddcf7..." userName="tkgally" createdAt="2025/05/02 01:12:56" color="#ff5c5c">}}




{{<matomeQuote body="LLMに45分もかかる調査ってどんなの？McKinseyみたいなコンサルの話？<br>俺はもっとインタラクティブに、ちょっとずつ質問しながら知らない分野を深掘りする使い方をしてるんだ。45分任せっぱなしだと、どうでもいいとこに時間使いそう。<br>これって”augmentation”（補助）じゃなくて”replacement”（置き換え）を狙ってる感じ？もし金持ちなら、複数AIに並行でやらせて、結果見て次、ってできるけどね。" userName="zoogeny" createdAt="2025/05/01 17:57:17" color="#45d325">}}




{{<matomeQuote body="そうそう、そのインタラクティブなやり方、Google Deep Researchで20回/日の制限あるから俺もやってる。調査して気になったらまた質問、みたいにね。API連携とかEEのデータシート読みとか、調査に時間かかる作業では、AIにやらせてる間に他のことやるのが効率的だよ。<br>あと古い本の歴史研究にも使ってる。Gemini DeepResearchがOrigin of Speciesのキメラ初版本の見分け方を、30分で400件の資料読んで詳しく説明してくれたのはすごかったな。細かい違いまで教えてくれた。" userName="throwup238" createdAt="2025/05/01 18:06:18" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="なんか、インテグレーションがRAGっぽいよね。話して、ツール使うって言って、検索して、見つけたこと話す...<br>いつか、会社ごとに毎晩finetuneして、全社内データで学習させられるといいな。そしたら、自分がやってること全部知ってるシームレスなネイティブモデルが実現できるかも。" userName="WhitneyLand" createdAt="2025/05/01 17:34:10" color="#ff33a1">}}




{{<matomeQuote body="自分のコードベースでも、コミットごとにこれやりたいな。" userName="pyryt" createdAt="2025/05/01 17:55:04" color="">}}




{{<matomeQuote body="finetuningって、RAGより全然話題にならないのはなんで？全然実用的じゃないの？" userName="notgiorgi" createdAt="2025/05/01 17:57:08" color="">}}




{{<matomeQuote body="RAGの方がfinetuningより断然手軽で安いんだよ。でも、finetuningの方がRAGとかより性能出せるのに、見過ごされてる状況があるのは確かだね。" userName="omneity" createdAt="2025/05/01 20:14:05" color="#785bff">}}




{{<matomeQuote body="＞ RAGの方がfinetuningより断然手軽で安い。これはデータの使い方によるね。もし同じテキストをLLMに何度も入力するなら、1回finetuneする方が効率的だよ。" userName="riku_iki" createdAt="2025/05/01 20:54:44" color="#45d325">}}




{{<matomeQuote body="RAGとfinetune、どっちも同じスキルでできるって前提じゃない？スキルセットも違うし、finetuneはモデル選びからデプロイまで複雑だよ。<br>予算も関係する。同じテキスト何度も使うならfinetuneの方が効率良い場合もあるけど、finetuneは設備投資みたいなもんで、時間かけて使うならRAGの方が手軽と感じるかも。<br>俺はfinetune推しだけど、開発者/AIエンジニアにはRAGの方がずっと手軽ってのは認めざるを得ないな。" userName="omneity" createdAt="2025/05/01 21:04:42" color="#ff33a1">}}




{{<matomeQuote body="「＞ RAGは開発者とかAIエンジニアにとって、MLエンジニアや研究者よりずっと使いやすいのは確かだね。でも主要ベンダーはfine-tuning用の簡単なAPIを提供してるから、MLエンジニアとかは要らないみたいだよ。URLはここ→ https://platform.openai.com/docs/guides/fine-tuning RAGのインフラ構築の方がよっぽど複雑そうだよ。」" userName="riku_iki" createdAt="2025/05/01 21:16:56" color="#ff5733">}}




{{<matomeQuote body="managed platformsでfine-tuningが簡単になるのは確かにそうだね。でも、managed/closed modelのfine-tuningは結構限定的で、”distribution modeling”とか呼ぶべきかも。この方法だと、open-weightのfine-tuningが持つ力（と必要なスキルセット）に比べて、結果はかなり限られてるよ。どっちにしても、alignmentとevalsは忘れちゃだめだね。" userName="omneity" createdAt="2025/05/01 22:16:57" color="#ff5c5c">}}




{{<matomeQuote body="「＞ この方法だと、open-weightのfine-tuningの力に比べて結果はかなり限られてるんだよね。あなたが、一流の研究者が作った市場トップのモデルをfine-tuneした結果が、どんなオープンソースモデルを選んで作った結果より著しく悪くなるってそんなに確信してる理由が、正直よく分かんないな。」" userName="riku_iki" createdAt="2025/05/03 18:50:22" color="">}}




{{<matomeQuote body="fine-tuningって、RAGみたいに根拠に基づいた結果を出せるの？<br>何エポック回すの？" userName="never_inline" createdAt="2025/05/02 09:45:24" color="">}}




{{<matomeQuote body="fine tuningは80ドルと数時間でできるよ。良いRAGなんて存在しないね。" userName="retinaros" createdAt="2025/05/01 22:18:26" color="">}}




{{<matomeQuote body="うまくやるのはすごく難しいし、in context learning/RAGに比べて技術的な複雑さがかなり増すよ。今はfine tuningの軽量版で、モデル全体の重みを更新せずに小さなアダプター層を訓練するLoRAっていうのがあって、これは今のところ商業的にはずっと現実的だと思うな。" userName="computerex" createdAt="2025/05/01 19:10:05" color="#ff5733">}}




{{<matomeQuote body="fine tuneは通常、能力を追加したいときに使うんだ（出力スタイル、json output、function callingとかね）。知識を追加するにはRAGを使うよ。" userName="onel" createdAt="2025/05/02 06:58:12" color="#45d325">}}




{{<matomeQuote body="どっちも専門家じゃないけど、RAGはプロンプトコンテキストに”役立つ”情報を落とし込む感じかな。一方、fine tuningは再学習と新しいモデル層の追加、あるいは脳外科手術みたいなもの。<br>どっちが難しいかは君に任せるよ。" userName="mring33621" createdAt="2025/05/01 19:03:02" color="">}}




{{<matomeQuote body="fine-tuningがRAGほど流行らなかったのは、最初の頃は難しかったから。<br>fine-tuningの難点：時間や計算資源がいる、特定の情報を記憶しにくい、VRAM食う、間違えられない情報はRAGが良い、技術知識いる、データ沢山いる、覚えたこと忘れがち、モデル制御できないと無理、クローズドモデルは無理、大規模モデルに勝てない場合も。<br>でも、fine-tuningの良い点もある：汎化性が高い、新しいタスク学習に強い、出力スタイル変えられる、自分だけのモデルが持てる、小型モデル使える、RAGと組み合わせるともっと良い。<br>どっちもやる理由はあるけど、費用や時間、専門知識がいるからRAGが人気ってわけ。でも最近はfine-tuningもやりやすくなってるよ。特定のタスク、大量データ、強みがないとビジネスとしてはまだ難しいけどね。<br>[1] https://unsloth.ai/blog/contpretraining" userName="ijk" createdAt="2025/05/01 19:10:29" color="#45d325">}}




{{<matomeQuote body="つまり、良いまとめとしてはこうかな。<br>1. 企業が持ってないような価値ある大量データがあるなら、それを使ってfine tuningするのが良いよ。<br>2. そうじゃないなら、RAGを使えばいい。" userName="jimbokun" createdAt="2025/05/02 00:55:44" color="#38d3d3">}}




{{<matomeQuote body="その要約、間違ってないけど単純化しすぎだよ。Fine-tuningはさ、スタイルの変更とか、実行時に使えないデータで学習させる時に意味があるんだ。RAGはモデル全部学習し直す必要なく、事実を追加したい時に超使えるんだってば。どっちかじゃなくて、コスト、遅延、使い方、更新頻度で決まるんだよ。<br>でも、白黒つけないとプレゼンじゃウケないもんね。" userName="kordlessagain" createdAt="2025/05/03 15:34:53" color="#ff5c5c">}}




{{<matomeQuote body="詳しいコメントありがとう。Fine tuningで情報追加が今できるようになってるなんて知らなかったよ。最後に確認した時（1年以上前だけど）は、あんまりうまくいかないみたいだったんだよね。" userName="msp26" createdAt="2025/05/02 09:48:01" color="">}}




{{<matomeQuote body="微妙なニュアンスって難しいよね。白黒つけるのって早くて安心するし、深く考えなくて済むもん。特にテックとかでは断言する意見の方がウケるしね。前にいたスタートアップのCEOがリアルタイムFine-tuningが未来だって言ってたけど、それマジで絵空事だって。<br>LLMの仕組みじゃないし、効率悪いし、柔軟性ないし、RAGがあるから必要ないんだよ。絵空事ってプレゼン資料には映えるけど、現場に出すとすぐ壊れるの。ほんと絵空事だよ。" userName="kordlessagain" createdAt="2025/05/03 15:32:41" color="#ff5c5c">}}




{{<matomeQuote body="思うんだけどさ、一般向けのLLMは使える文脈を広げようとしてるけど、実際には文脈を最小限にして絞り込む方が一番価値を生むと思うんだよね。一つのPDFに似たデータが多いと出力が混乱するじゃん。「Hallucination」の問題って、文脈が増えると広がってるんだよ、減ってないの。" userName="boh" createdAt="2025/05/01 17:12:23" color="#38d3d3">}}




{{<matomeQuote body="間違いなく私の経験とも一致するよ。Claude-as-Google-replacementとして使うにしても、システムにLLMを組み込むにしても、私はContextを猛烈に管理してるんだ。少なすぎても多すぎても結果はおかしいの。<br>Anthropicとかが何ができるかは分からないけど、integrationsって間違った方向に行ってる気がするんだよね。ツール使うのを試した時、シンプルな呼び出しよりコストがかかって大体 inferiorだったんだよ。" userName="fhd2" createdAt="2025/05/01 17:34:18" color="#ff5c5c">}}




{{<matomeQuote body="マジで同意だよ。大手モデルメーカー全部にさ、独自のUIの中に「内容を要約してその情報を基に新しい会話を始める」ツールを作ってほしいな。LLMでコーディングしてる時、Context制限に引っかかったり思考がまとまる限界を超えたりして、会話を新しいスレッドに移すのが一番のボトルネックなんだよ。" userName="loufe" createdAt="2025/05/01 19:27:13" color="">}}




{{<matomeQuote body="私はWebインターフェースは全然使わないんだ。EmacsパッケージのgptelをClaudeのAPIとかに繋いでて、会話全部がバッファに入ってるんだよ。強力なテキストエディタだから、効率的な編集はお手の物って感じ。<br>もっと良いツールもあるだろうけど、Contextを管理するための強力で速い仕組みが鍵だと思うんだ。私にとっては、それが強力なテキスト編集機能なんだよ。" userName="fhd2" createdAt="2025/05/01 20:49:09" color="#ff5733">}}




{{<matomeQuote body="私の懸念もこれだよ。何百、何千ってツールの中から正しいツールを選ぶのって、どれくらい成功するんだろう？<br>高い精度（99%）が要求されるプロダクションでLLMを使う場合、ある程度の成功を収めるには、使えるツールセットをすごく限定しないといけないんだよ。" userName="roordan" createdAt="2025/05/01 19:48:24" color="#45d325">}}




{{<matomeQuote body="これも私の経験通りだね。インターネットアクセスをオンにした瞬間、Kagi Assistantがおかしな出力をし始めるんだ。オフにすると全部大丈夫になる。" userName="Etheryte" createdAt="2025/05/01 17:18:50" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
