+++
date = '2025-04-14T00:00:00'
months = '2025/04'
draft = false
title = '速報！GPT-4.1 APIに登場！OpenAI最新モデルの実力は？'
tags = ["GPT-4.1", "API", "AI", "自然言語処理", "OpenAI"]
featureimage = 'thumbnails/red1.jpg'
+++

> 速報！GPT-4.1 APIに登場！OpenAI最新モデルの実力は？

引用元：[https://news.ycombinator.com/item?id=43683410](https://news.ycombinator.com/item?id=43683410)

{{<matomeQuote body="ChatGPTユーザーとしては、まだ使えないのがちょっと嬉しいかも。今はもう、どのモデルを使うか意識的に選ばなきゃいけないんだよね。<br>・4o（ウェブ検索、Canvas、Pythonサーバーサイド実行、画像生成ができるけど、CoTがない）<br>・o3-mini（ウェブ検索、CoT、canvasがあるけど、画像生成がない）<br>・o1（CoTがあって、o3よりいいかもだけど、canvasもウェブ検索も画像もない）<br>・Deep Research（めっちゃ強力だけど、月に10回しか使えないから、ほぼ使ってない）<br>・4.5（クリエイティブな文章に強いし、アナログチューブアンプのおかげで音も暖かいけど、遅いしリクエスト制限があるし、他の機能がどれだけ使えるのかもわからない）<br>・4oの”scheduled tasks”付き（なんでモデルなの？！他のモデルが使えるツールにすればいいのに！）<br>なんで全部自分で調べなきゃいけないんだろ？" userName="lxgr" createdAt="2025-04-14T21:28:12" color="">}}

{{<matomeQuote body="＞Deep Research（めっちゃ強力だけど、月に10回しか使えないから、ほぼ使ってない）”<br>マジそれな。Gemini 2.5 ProのDeepResearchに切り替えたわ。有料ユーザーは1日に20回使えるし、OpenAIのDeep ResearchよりGeminiの方が10倍くらいページを閲覧するみたい（200～400ページ vs 20～40ページ）。<br>レポートは長すぎるけど、開発アイデアとか、特定のライブラリを使った複雑な方法とか、問題に対する別のアプローチとかを調べるのにめっちゃ役立ってる。vibe codingに陥ることなく生産性が上がる。" userName="throwup238" createdAt="2025-04-14T22:03:11" color="#45d325">}}

{{<matomeQuote body="マジか、上限があるの知らなかった。確認したことなかったけど、OpenAIの制限がリセットされるとすぐに使い切っちゃうから、控えめに使ってたんだよね。教えてくれてありがとう。<br>Deep Researchしか勝たん。ニッチな歴史トピックについて、中心となる記事がない場合でも数分で調査してくれる。今まで何日も何週間もかかってたのに。" userName="qingcharles" createdAt="2025-04-15T03:13:39" color="#38d3d3">}}

{{<matomeQuote body="Deep Researchは好きだけど、歴史家として言わせてもらうと…歴史テーマで期待値を調整するために使ってみたけど、いいツールではあるけど…微妙な議論を無視して、ブログからのありふれた知識を返すことがあるんだよね。<br>歴史で一番好きなのは、還元できない複雑さがたくさんあること。一次資料と二次資料を読み込むことだけが、理解を深める唯一の方法なんだ。" userName="namaria" createdAt="2025-04-15T07:45:27" color="">}}

{{<matomeQuote body="最近『存在と時間』を読んだんだけど、反復的に定義される概念がたくさんあるんだよね。色々問題はあるけど、100年前に書かれた未完成の本だから文句は言えないか。<br>長いから、Perplexity*に意味を思い出させようとしても、役に立つ答えが返ってくることはほとんどなかった。でも、難しいテキストだし、仕方ないかもね。色々な解釈があるし。<br>でも、Deep Researchに深い調査をさせると、変な場所から答えを引っ張ってくることに気づいたんだ。大学のサーバーにある論文とか、Redditとか、大学のチュートリアルのハンドアウトとか。オンラインで有名な哲学百科事典は使わないんだよね。<br>変だよ。テキストの読解を補強するために使ってたんだけど、AIによって情報へのアクセスと学習が混同されてるなって思った。<br>*私が使えるのはこれだけ。" userName="fullofbees" createdAt="2025-04-15T12:13:17" color="">}}

{{<matomeQuote body="LLMに特定のテキストについて質問するなら、たとえ有名なテキストでも、モデルに”記憶から思い出す”させるより、プロンプトの一部としてテキストを提供する方が、ずっと良い結果が得られるかも。<br>例えば、こんな感じ: ”ここに『存在と時間』を含むPDFファイルがあります。存在の解明における不安（Angst）の重要性について説明してください。”" userName="laggyluke" createdAt="2025-04-16T06:15:25" color="#38d3d3">}}

{{<matomeQuote body="そうならないようにしたい時は、ソースを指定すると上手くいくよ。<br>例えば、ニュースよりも詳しく事情を知りたい時は、メディアを無視して、関係者の発言記録とか、書かれたものだけを見るように指示した。" userName="tekacs" createdAt="2025-04-15T08:00:45" color="">}}

{{<matomeQuote body="Deep Searchは最近のニュースにかなり使えるよ。ヨーロッパのある国の法的な動きを分析してもらったんだけど、素晴らしい概要を教えてくれた。" userName="namaria" createdAt="2025-04-15T08:11:08" color="#785bff">}}

{{<matomeQuote body="良いニュースソースなら、少なくとも一次資料を検証しようとするはず。LLMにはそれができないから、その使い方は意味がないんじゃない？" userName="iamacyborg" createdAt="2025-04-15T11:05:27" color="">}}

{{<matomeQuote body="LLMは広範な思考を一般化するのは得意だけど、例外的なことには向いてないみたい。知識曲線を自信満々に滑らかにする感じ。心理学で言うと、CBT療法だけが受け入れられているみたいなもので、個人のレベルではもっと効果的な方法がたくさんあるのに、人口レベルではそうじゃない。" userName="taurath" createdAt="2025-04-15T09:08:49" color="">}}

{{<matomeQuote body="なるほどねー。でもさ、ニッチな分野だとクロールされたページに情報がないこと多いじゃん？そしたら的外れな答えになっちゃうんだよね。Geminiの方がもっとページ見てるからマシな結果になるかもね。" userName="antman" createdAt="2025-04-15T07:48:17" color="">}}

{{<matomeQuote body="Perplexityの3回/日制限、マジ良いよね！使い切っちゃっても（ほぼないけど）、次の日リフレッシュすれば良いし。" userName="chrisshroba" createdAt="2025-04-15T00:17:55" color="">}}

{{<matomeQuote body="DeepResearchって学術論文レビューでしか使ったことないんだけど、みんな何に使ってそんなすぐ上限に達するの？" userName="behnamoh" createdAt="2025-04-15T02:02:10" color="">}}

{{<matomeQuote body="めんどくさいこと全部やらせてる。息子とコンサート行きまくってワッペン集めてんだけど、集め始めたのが最近なのよ。<br>30バンドくらいのワッペンリストがあって、欲しいものを具体的に指示したら、Deep Researchが全部ダイレクトリンク付きで返してくれたの。プロンプト書くのに2分で、あとは全部お任せ。" userName="jml78" createdAt="2025-04-15T13:10:47" color="#45d325">}}

{{<matomeQuote body="用途はこんな感じ：<br>o1-pro：正確さとか推論が必要な重要案件に使う。コンテキストが多くても一発でちゃんとやってくれる。<br>deepseek R1：アカデミックじゃない高品質な文章とか詩が欲しいときに使う。マジで最高。分析も速くて面白い。R1とGrok-3はレスポンス速くて推理もしてくれるから、アイデア出しに最適。R1はクリエイティブだし、文体とかトーンの真似も上手い。Grok-3はR1の改造版じゃないかなーって思ってる。<br>4o：画像生成。たまに他のことにも使うけど、コードとか分析は絶対しない。テキストから正確な技術図面作れるようになるの楽しみ。<br>o3-mini-highとgrok-3：o1-proが終わるまで待ちたくないコードとか分析。<br>claude 3.7：他のモデルがエラー出すときたまにコードで使う。新しい情報教えても古い情報に固執することあるよね。<br>Gemini models：たまに試すけど、今のところイマイチ。でも得意なことありそう。2.5 Deep Researchに期待。<br>Perplexity：他のモデルの検索機能が良くなったから解約した。<br>o3-proマジ楽しみ。早く出てほしい。" userName="resters" createdAt="2025-04-14T21:46:37" color="#785bff">}}

{{<matomeQuote body="Phindは技術的な質問に対してMermaidの図を生成するように特化してチューニングされてるんだよ（創業者です）。" userName="rushingcreek" createdAt="2025-04-14T23:08:35" color="#ff5c5c">}}

{{<matomeQuote body="Phind大好きだったし、PerplexityとかRAG検索エンジンの元祖だと思ってる。ドメインの重み付けできなくなって解約しちゃったけど…。技術的な質問に対する出力形式（オプション、賛成/反対、Mermaid図）はマジ最高。他のサービスより技術検索に強い。" userName="underlines" createdAt="2025-04-15T12:00:11" color="#785bff">}}

{{<matomeQuote body="どこかでインタビュー受けたことありますか？あなたのストーリー読みたいです。" userName="bsenftner" createdAt="2025-04-15T10:54:30" color="">}}

{{<matomeQuote body="Gemini 2.5 Proはコーディング結構できるよ。Cursorで使うのに最高。Claude 3.7は制限多すぎ。" userName="shortcord" createdAt="2025-04-14T22:12:25" color="">}}

{{<matomeQuote body="マジそれなー。2.5 Proはコーディングめっちゃ得意だけど、ちょー自信家で、何かうまくいかないと全部人のせいにするんだよね。「リンターが悪いから再インストールしろ」とか、「Goコンパイラのせいっぽい」とか、「この関数絶対あるはずなのにエラー出るのまじありえない」とか言うし。<br>あと、すぐ「はい、まだ動かない。直して、終わったら教えて。そしたら続きやるから」って投げ出してくる。でもコーディングに関しては、Gemini Pro 2.5 ＞ Sonnet 3.5 ＞ Sonnet 3.7って感じ。" userName="artdigital" createdAt="2025-04-15T08:59:08" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="えー、マジ意外。俺的には、sonnet 3.7の方が集中力あるし、特に変更必要な箇所を見つけたり、他のツール使う時にめっちゃ優秀だと思うけどなー。Cursorとの連携が成熟してるからかな？" userName="valenterry" createdAt="2025-04-15T04:38:01" color="#ff33a1">}}

{{<matomeQuote body="わかるー。sonnet 3.7はじゃじゃ馬って感じ。Gemini 2.5 Proは33歳のベテランって感じかな。o1は、頼れる先輩って感じ。" userName="behnamoh" createdAt="2025-04-15T02:05:25" color="#38d3d3">}}

{{<matomeQuote body="Gemini 2.5 Proは、動くけど複雑すぎるコードを生成しがちだと思ってる。Claude 3.7よりね。" userName="benhurmarcel" createdAt="2025-04-15T14:55:15" color="">}}

{{<matomeQuote body="それって推論の副作用かもね。これらのモデルって、推論を使って数学やロジックのパズルを解くとき、めちゃくちゃ長くて複雑な思考の連鎖を生成するじゃん。それがそのまま解決策に現れるんだよね。<br>人間なら2～3ステップで済むのに。コード生成でも同じことが起きてるのかも。" userName="torginus" createdAt="2025-04-15T18:15:51" color="">}}

{{<matomeQuote body="知ってると思うけど、もう正確な図を生成できるよ。mermaidとかgraphvizみたいな図の言語で出力を要求するだけでOK。" userName="motoboi" createdAt="2025-04-14T21:50:48" color="">}}

{{<matomeQuote body="マルチモーダルモデルなら、十分なトレーニングデータがあれば、めっちゃうまくできると思う。システムのテキスト記述とか図、図のソースコード(mermaid, SVGなど)、結果の画像を組み合わせて、全部相互変換できるように学習させるの。" userName="resters" createdAt="2025-04-14T21:58:50" color="#ff5c5c">}}

{{<matomeQuote body="だよねー。こういうサービスはもうある(か、簡単に作れる)と思う。ユーザーが情報を提供 → LLMがモデリング言語で構造化された出力を生成 → 別のマルチモーダルLLMが生成されたグラフのスタイリング/配置の問題をレビューして、ユーザーのリクエストに合ってるか確認 → LLMがフィードバックに基づいて構造化された出力を生成…みたいな。<br>マルチモーダルモデルをファインチューンすれば、ワンショットで、もっと効果的にできると思う。" userName="bangaladore" createdAt="2025-04-14T22:48:48" color="#ff33a1">}}

{{<matomeQuote body="latexのtikzで図を作る問題があったんだけど、sonnet 3.7は10回試してもできなかった。Gemini 2.5 Proは2回目で解決したよ。" userName="behnamoh" createdAt="2025-04-15T02:06:13" color="">}}

{{<matomeQuote body="同じ経験したわ。o3-miniはマジでダメダメ、claude 3.7もイマイチだったけど、gemini 2.5 proは完璧に解決してくれた。（ソースのない図の画像をtikz図に変換）" userName="gunalx" createdAt="2025-04-15T06:48:01" color="#38d3d3">}}

{{<matomeQuote body="結果はバラバラで安定しない感じだなー。うまく近づいても、なかなか改善できないし。プロンプトのやり方を見直す必要がありそう。mermaidとSVGを試したけど、アドバイス通りgraphvizも試してみる。" userName="resters" createdAt="2025-04-14T21:55:32" color="">}}

{{<matomeQuote body="Plantuml（action）の図が私のお気に入り。" userName="antman" createdAt="2025-04-15T05:21:17" color="#ff33a1">}}

{{<matomeQuote body="知ってるかもだけど、一応言っとくね。私がよくやるのは、必要な図の元データを読み込ませて、それを“印刷準備OK”な画像として再構築させること。ネイティブじゃないけど、時間短縮になるし、構造化されてないデータでも意外とうまくいくんだよね。ネイティブじゃないし、ナイーブだけど。いつも念入りにチェックしてね！" userName="wavewrangler" createdAt="2025-04-15T00:03:49" color="#785bff">}}

{{<matomeQuote body="＞4．5（クリエイティブな文章作成に優れていて、アナログ真空管アンプを使用しているため、より暖かく聞こえますが、速度が遅く、リクエストが制限されており、他のどの機能をサポートしているかわかりません）<br>それってLLMのハルシネーションじゃない？" userName="cafeinux" createdAt="2025-04-14T22:39:47" color="">}}

{{<matomeQuote body="gemini 2.5 Proに乗り換えれば幸せになれるよ。すべてにおいて優れてる。" userName="SweetSoftPillow" createdAt="2025-04-15T06:44:45" color="#45d325">}}

{{<matomeQuote body="そんなことない。クローズドソースだし。でも、Googleはプライバシーに関しては最悪だよ。私は、自分のデータを第三者と共有する可能性のないオープンソースのモデルしか使いたくない。" userName="miroljub" createdAt="2025-04-15T10:48:01" color="">}}

{{<matomeQuote body="SWE-bench VerifiedとかAider Polyglotとかの数値比較だね。GPT-4.1はSWEが55%、Aiderが53%、コストは$8、速度は169 tokens/秒、知識のアップデートは2024年6月だって。これって完全に同じ条件じゃないかもね。Tokens/秒のデータは[https://artificialanalysis.ai/models/gpt-4o-chatgpt-03-25/pr...]からで、4.1は4oと同じ速度って仮定してるみたい。Cursorで使えるかな？" userName="modeless" createdAt="2025-04-14T17:28:12" color="">}}

{{<matomeQuote body="Aider polyglotのリーダーボードをGPT-4.1とかで更新したよ。結果はOpenAIの数値とだいたい同じ。Gemini 2.5 Proが一番良いスコアで72.9%、コストは$6.32。GPT-4.1は52.4%で$9.86。Aider v0.82.0もリリースされてて、新しいモデルに対応してるよ。[0] [1]を見てね。" userName="anotherpaulg" createdAt="2025-04-14T23:54:08" color="#45d325">}}

{{<matomeQuote body="DeepSeek R1とDeepSeek V3の組み合わせって試した？ DeepSeek R1とclaude-3-5-sonnetの組み合わせが3位みたいだけど、V3がClaude 3.5より良いから、R1とV3の組み合わせは2位になるんじゃないかなと思って。" userName="pzo" createdAt="2025-04-15T03:55:16" color="">}}

{{<matomeQuote body="最近はGemini 2.5 Proをよく使ってるよ。よく聞かれるからFAQに統計情報を自動更新するようにしてるんだ。[0] Gemini 2.5 Proが88.1%を占めてるね。" userName="anotherpaulg" createdAt="2025-04-15T03:28:11" color="">}}

{{<matomeQuote body="[https://aider.chat/docs/leaderboards/]だとGemini 2.5 Proは73%って書いてあるよ？ベンチマークのコストも追加されてて良いね。出力トークンあたりのコストは、モデルがどれだけ考えるかでトークン数が変わるから、参考程度にしかならないかも。" userName="jsnell" createdAt="2025-04-14T18:09:37" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Aiderの作者だよ。GeminiチームがAiderの”diff-fenced” edit formatに対応してるのを知らなかったみたい。Geminiモデルに合うように調整してるんだけどね。Aiderはトップモデルに合うように調整してるんだ。それがAiderのベンチマークの理由だよ。Aiderは最高のAIコーディング結果を出すために、モデルごとにプロンプトとかを調整してるよ。" userName="anotherpaulg" createdAt="2025-04-14T20:47:29" color="#ff5733">}}

{{<matomeQuote body="素晴らしいツールをありがとう。Aiderは大きなコードベースを扱うときに概要を把握するのにマジで助かる。" userName="BonoboIO" createdAt="2025-04-14T23:08:11" color="#ff33a1">}}

{{<matomeQuote body="チューニングはAiderをより便利にするけど、Aiderで使うモデルを決めるためのベンチマークとしては良いけど、他のツールで使うときのモデルの品質を評価するのには向かないかもね。チューニングされたモデルがチューニングされてないモデルより優れてるのは当然だし。" userName="modeless" createdAt="2025-04-14T22:57:45" color="">}}

{{<matomeQuote body="別の見方もできると思うよ。どのモデルも、ちょっとしたプロンプトの違いで結果が変わってくるから、実際に使う人はモデルに合わせてプロンプトを調整するはず。Aiderはモデルの能力を最大限に引き出すことはできないけど、努力すれば達成できることの目安にはなると思う。" userName="jmtulloss" createdAt="2025-04-15T02:52:07" color="">}}

{{<matomeQuote body="Googleが出してるスコアが“diff”モードと“whole”モードで違うみたいで、他のやつは“diff”だったから“diff”のスコアを選んだんだって。マジで正確な比較は難しいよねー。" userName="modeless" createdAt="2025-04-14T18:23:07" color="">}}

{{<matomeQuote body="今のリーダーボードの73%は“diff”を使ってるよ。“whole”じゃない。（正確にはdiff-fencedだけど、違いはファイル名の場所だけ。）" userName="jsnell" createdAt="2025-04-14T18:27:53" color="#ff33a1">}}

{{<matomeQuote body="AiderがGeminiのために特別なモードを作ったっぽいね。Googleが公式のパフォーマンスを発表した後だけど。でも、他のスコアと並べて引用するのはどうかなー。まあ、特別なモードがなくてもGeminiの69%がトップスコアだけどね。[1] https://aider.chat/docs/more/edit-formats.html#diff-fenced:~..." userName="modeless" createdAt="2025-04-14T18:37:19" color="">}}

{{<matomeQuote body="そのモードは発表後に追加されたんじゃないよ。Aiderはもう1年近く前から持ってるんだって。https://aider.chat/HISTORY.html#aider-v0320<br>このベンチマークには信頼できる情報源（リーダーボード）があるから、それを使うのが当たり前じゃない？" userName="jsnell" createdAt="2025-04-14T18:59:35" color="#ff33a1">}}

{{<matomeQuote body="でも、Geminiを良くするために追加されたんでしょ？リーダーボードの他の誰も使ってないし。Google自身も他のモデルと比べてベンチマークするときは使ってないよ。みんなが使ってる普通のdiffモードを使ってる。<br>https://blog.google/technology/google-deepmind/gemini-model-..." userName="modeless" createdAt="2025-04-14T19:07:07" color="">}}

{{<matomeQuote body="彼らはただ、提供している組み込みモードの中で一番良いパフォーマンスのやつを選んでるだけだよ。モデルの挙動についての面白いデータだけど、最適なパフォーマンスのためにモデルをどう設定するかの推奨でもあるよね。現実世界のパフォーマンスを評価してるんだから、これは公平なベンチマークだと思うよ。" userName="tcdent" createdAt="2025-04-14T18:41:18" color="#38d3d3">}}

{{<matomeQuote body="Cursor[1] と Windsurf[2] でも使えるよ。<br>[1] https://twitter.com/cursor_ai/status/1911835651810738406<br>[2] https://twitter.com/windsurf_ai/status/1911833698825286142" userName="meetpateltech" createdAt="2025-04-14T17:42:25" color="">}}

{{<matomeQuote body="Windsurfで無料で試せるよ。<br>追記：Cursorでもできるようになった" userName="tomjen3" createdAt="2025-04-14T18:06:42" color="">}}

{{<matomeQuote body="GPT 4.1はマジで他のやつに比べて全然ダメだね。色々試した結果、良かったのは：<br>Deepseek：一般的なチャットとリサーチ<br>Claude 3.7：コーディング<br>Gemini 2.5 Pro experimental：深いリサーチ<br>値段的にはDeepseekがマジ最強！<br>OpenAIはピンチだね。" userName="ilrwbwrkhv" createdAt="2025-04-15T01:56:53" color="#ff33a1">}}

{{<matomeQuote body="マジか、俺のタスクの一つに、モデルに本まるごとテキスト食わせて、色々質問するってのがあるんだよね（「4章で何があった？」とか「Xってキャラは何した？」とか）。<br>GPT 4.1は、マジで初めて人間レベルの回答してくれたモデルだわ。プロットとかキャラのモチベーションをちゃんと理解してるっぽい。<br>テキスト処理ってLLMにとって超重要なユースケースだし、これはマジで注目すべきだと思う。" userName="torginus" createdAt="2025-04-15T18:21:10" color="#ff5c5c">}}

{{<matomeQuote body="CursorとWindsurf、どっちもイエス！<br>https://twitter.com/cursor_ai/status/1911835651810738406" userName="soheil" createdAt="2025-04-14T20:01:46" color="">}}

{{<matomeQuote body="OAIがGPT 4.1専用のプロンプティングガイド出してんの、マジ見逃し厳禁！エージェント作る人向けで、新しいオススメは：<br>・モデルに粘り強くあれって言う（+20%）<br>・toolcallを自分で注入/解析しない（+2%）<br>・プロンプトで計画させる（+4%）<br>・JSONはダメ。XMLかarxiv 2406.13121(GDM形式)使え<br>・指示+ユーザーの質問は一番上と一番下に書け。下だけはマジでダメ<br>・ALL CAPSとか賄賂とか脅しは効果ないっぽい<br>ソース：https://cookbook.openai.com/examples/gpt4-1_prompting_guide#..." userName="swyx" createdAt="2025-04-14T18:47:15" color="#45d325">}}

{{<matomeQuote body="LLMの隆盛で一番ムカつくのは、エンジニアリングが全部トライ＆エラーの手探りになっちゃったことだわ。「これ試せ、あれ試せ、そしたら+5%改善するかもね」みたいな。なんでそうなるかは知らんけど。<br>マジでそういう働き方嫌い。" userName="pton_xd" createdAt="2025-04-14T19:16:00" color="">}}

{{<matomeQuote body="トライ＆エラーの手探りって、実験とそんな変わんないと思うけどね。<br>昔、ゲーム業界でマルチコアがマジで出始めた頃に働いてたんだよね。Xbox-360とかPS3の時代かな？主要なプラットフォームが全部マルチコアになった世代があったんだよ。<br>誰もゲームでマルチコアをどう使うのがベストか知らなかった。色んなチームが違うアプローチを試して、「これやったらx%改善するかも？」みたいなテックトークによく参加したわ。実験の嵐だったね。ベストプラクティスがちょっと標準化されるまで数年かかった。<br>そういう時代にイライラする人もいれば、自分が何かを発見できる広い分野だって喜ぶ人もいた。" userName="zoogeny" createdAt="2025-04-14T20:01:25" color="#ff5733">}}

{{<matomeQuote body="そうそう、X360とPS3の世代だよね。X360は3コアで、PS3は1+7コア（big.littleみたいな構成）。<br>でも、ゲームがちゃんとマルチコアを使い始めるまで、マジで何年もかかったんだよね。レンダリングに16.67ms/8.33msしか使えなくて、しかもレンダリングがワールドの状態に縛られてるから、全部が繋がっちゃうんだよね。<br>今でも、実際に負荷がかかってるコアは2～4個くらいじゃないかな。" userName="jorvi" createdAt="2025-04-14T21:53:30" color="">}}

{{<matomeQuote body="パフォーマンス最適化は違うんだよ。だって、一応ベースラインとなる真実があるじゃん。FPSって何かわかってるし、+5% FPSは+5% FPSなんだよ。トリッキーなケースでも、何かしらの境界線があるし（このハードウェアでは+5% FPSだけど、別のハードウェアでは-10%とか、この条件を満たすシーンでは+2%だけど、それ以外では-3%とか）。<br>一方、LLMの「良い」って何かって、誰も合意できないじゃん。ましてや、どうやって測るかなんて。" userName="Nullabillity" createdAt="2025-04-15T15:25:55" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="クロスハッチングで構造的にテストする方法はあったかもしれないけど、まあ、当てずっぽうだと時間がかかって同じ解決策にたどり着くかもね。" userName="hackernewds" createdAt="2025-04-15T02:15:05" color="">}}

{{<matomeQuote body="STEM分野で働く人によくあるパターンだと思うわ。形式的な証明とか方程式とか数学とかに慣れてる人が、スタートアップで働くことで、未知のこととか不完全な解決策とか、面倒な詳細とかに対応できるように自分を改造するんだよね。話が逸れちゃったけど、ちょっと共有したかった。" userName="kitsunemax" createdAt="2025-04-14T21:29:32" color="">}}

{{<matomeQuote body="LLMのデメリットは、確率的で、気まぐれで、信頼できないこと。<br>メリットは、人間も確率的で、気まぐれで、信頼できないってこと。LLMは、人間とその曖昧なアウトプット（テキスト、画像、音声など）との間のギャップを埋める方法なんだよね。完全には信頼できないけど、昔よりずっとギャップが小さくなってる。<br>人間とかそのファジーなアウトプットとやり取りするソフトウェアを作ってなくて、ちゃんと定義されたスキーマを使えるなら、メリットは感じないだろうね。" userName="barrkel" createdAt="2025-04-15T12:01:57" color="#38d3d3">}}

{{<matomeQuote body="ソフトウェアエンジニアリングってここ10年くらい、試行錯誤と手探りの連続だったじゃん？それを今、形式化してるって感じ。" userName="pclmulqdq" createdAt="2025-04-14T19:42:09" color="">}}

{{<matomeQuote body="ちょっと気になるんだけど、何に取り組んでるの？色んな解決策を試して一番良いのを見つける必要がない仕事ってある？" userName="brokencode" createdAt="2025-04-14T20:23:01" color="">}}

{{<matomeQuote body="普通、実際にやるときは、ランダムに邪魔なものを投げ込んで上手くいくのを祈るだけじゃなくて、もうちょっと仕組みを理解してるよね。" userName="FridgeSeal" createdAt="2025-04-14T21:09:43" color="">}}

{{<matomeQuote body="LLMはまだ若いからね。そのうちできるようになるって。新しいCPU/GPUアーキテクチャに合わせて最適化するのと何が違うの？って思うけど、後者はもう何十年もやってる事だしね。" userName="RussianCow" createdAt="2025-04-14T21:18:32" color="#ff33a1">}}

{{<matomeQuote body="別にケチつけたいわけじゃないんだけど、それこそが問題の手探りってやつじゃん。どうしてできるようになると思うの？こういった技術が犯すエラーの種類は変わってないし、改善する方法について学んだことはどんどん変わって、誰もコントロールできない。他のものは決定論的だったから違うんだよ…" userName="th0ma5" createdAt="2025-04-15T07:05:21" color="">}}

{{<matomeQuote body="コンピュータサイエンスでは決定論的だけど、他の科学分野（例えば医学）ではそうじゃないよね。あと、多くの科学では、そうなるまで非決定論的に見える（例えば、医学は理論的には決定論的だけど、実験的に確率的に推論する必要がある<br>ーそれは新しい薬が技術的な進歩ではないという意味ではない）。<br>エラーの種類は変わってないけど、エラーの量と深刻さは比較的短い期間で劇的に減ってるよ。" userName="Closi" createdAt="2025-04-15T07:28:13" color="#45d325">}}

{{<matomeQuote body="問題はいつも、すべてのトークンが疑わしいってこと。" userName="th0ma5" createdAt="2025-04-15T16:41:31" color="">}}

{{<matomeQuote body="大事なのは答え全体が正しいかどうかでしょ。GPT3と今の状況を比べたら、たった5年で正確さ、知識、知能の進歩がマジでヤバい。" userName="Closi" createdAt="2025-04-17T06:32:25" color="#45d325">}}

{{<matomeQuote body="新しいfrontierモデルでは、ハルシネーションの量と深刻さがかなり減ってるよ。" userName="Closi" createdAt="2025-04-20T21:30:05" color="">}}

{{<matomeQuote body="新しいCPU/GPUアーキテクチャに合わせて最適化するのと何が違うのかわからん。それってマジ？だって、それらのアーキテクチャにはドキュメントがあるし、ブラックボックスじゃないじゃん。LLMに対してやってることって、インプットを投げ込んで、上手くいくのを祈るだけって感じ。もしそれで最適化してるなら、マジで驚きだわ。" userName="girvo" createdAt="2025-04-14T22:55:03" color="">}}

{{<matomeQuote body="もしローレベルのハードウェアエンジニアとかチップエンジニアに話したら、きっと笑って「また始まった」って言うんじゃない？" userName="swyx" createdAt="2025-04-14T23:14:40" color="">}}

{{<matomeQuote body="いやー、そうでもないと思うよ。設計されたシステムと訓練されたLLMの間には、根本的な違いがあると思う。" userName="girvo" createdAt="2025-04-15T03:16:35" color="">}}

{{<matomeQuote body="＞[citation needed]<br>俺の経験だと、単純なCRUDアプリでも、ドメイン固有の複雑さとかエッジケースがあって、それを解決するには実験が必要になる。" userName="RussianCow" createdAt="2025-04-14T21:20:30" color="#785bff">}}

{{<matomeQuote body="なんか、理想と現実が違うって感じだよね。<br>俺の経験だと、人気のあるプラットフォームでも、コアコントロールとかAPIにバグがあったり、ドキュメントが不十分だったりするし。パフォーマンスの問題も、試行錯誤なしには解決できないことが多い。" userName="brokencode" createdAt="2025-04-14T21:21:45" color="#38d3d3">}}

{{<matomeQuote body="LLMの知識のカットオフが1年前で、APIとかライブラリが変更されてる場合、役に立たない。" userName="karn97" createdAt="2025-04-15T15:54:52" color="">}}

{{<matomeQuote body="LLMの長所であり短所でもあるのは、人間みたいに振る舞うこと。プロンプトのアドバイスって、人に教える方法と似てる気がする。先生とか親は有利だよね。" userName="muzani" createdAt="2025-04-15T09:04:07" color="">}}

{{<matomeQuote body="統計的、ML的な解決策が嫌いな理由の一つがこれ。モンテカルロ法は、とりあえず弾を壁に投げつけて、当たるのを祈るようなもんで、何の保証もない。古典的な手法の方がクリーンで論理的だけど、性能が悪いから仕方なく不確実性を受け入れるしかない。" userName="moffkalast" createdAt="2025-04-15T12:07:11" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
