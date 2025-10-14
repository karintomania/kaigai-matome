+++
date = '2025-10-07T00:00:00'
months = '2025/10'
draft = false
title = 'Gemini 2.5、遂にPC操作モデルを発表！ブラウザ自動化はどこまで進化するのか？'
tags = ["AI", "ブラウザ自動化", "プログラミング", "Web開発", "エージェント"]
featureimage = 'thumbnails/orange_pink3.jpg'
+++

> Gemini 2.5、遂にPC操作モデルを発表！ブラウザ自動化はどこまで進化するのか？

引用元：[https://news.ycombinator.com/item?id=45507936](https://news.ycombinator.com/item?id=45507936)




{{<matomeQuote body="Chrome DevTools MCP（https://github.com/ChromeDevTools/chrome-devtools-mcp）とGemini CLIを使ったブラウザ自動化は結構うまくいってるよ。この新しいモデルならもっと良くなるんじゃないかなって思ってる。" userName="xnx" createdAt="2025/10/07 20:28:41" color="#785bff">}}




{{<matomeQuote body="Chrome DevTools MCPでどんな自動化ができたの？" userName="arkmm" createdAt="2025/10/07 20:33:27" color="">}}




{{<matomeQuote body="質問主じゃないけど、僕の経験だとJestとかPlaywrightの方がずっと速いから、MCPで色々やるのは割に合わないね。面白いおもちゃとしてはアリだけど、LLMがMCPの呼び出しを使ってブラウザを制御するには遅すぎるよ。" userName="odie5533" createdAt="2025/10/07 21:03:11" color="">}}




{{<matomeQuote body="LLMがブラウザにいることの最大の利点は、LLMでPlaywrightスクリプトを書くのをすごくシンプルにできることかもね。例えば、この前Rate Your Musicのスクレイパー作ったんだけど、Playwrightに慣れてなくてイライラしたんだ。DevToolsをずっと見てHTMLをコピーしたり、要素を調べたりする作業がこれなら回避できて、複雑なテストの開発が速くなるだろうね。" userName="raffraffraff" createdAt="2025/10/08 06:17:21" color="#ff33a1">}}




{{<matomeQuote body="そうだね、今のやり方（アクション実行→結果読み込み→次のツール呼び出し）みたいに遅いより、モデルにPlaywrightスクリプトを書かせた方が良いと思うよ。まずは手動でナビゲートして、それに基づいて将来のテスト用のPlaywright TypeScriptスクリプトを書かせる、とかね。" userName="atonse" createdAt="2025/10/07 21:47:00" color="#ff33a1">}}




{{<matomeQuote body="これは基本的に僕らのHerd[0]のアプローチなんだ。僕らはエージェントを動かして、ブラウザを使わないLLMで動く、より安価で信頼性の高い自動化（trails[1, 2]）を開発・テスト・修復してるよ。Trailの自動化はREST APIやMCP[3]として抽象化されてて、コードから関数として呼んだり、自分のエージェントから使ったりできるんだ。<br>独自のtrailsを構築して、レジストリに公開したり、組み合わせたりもできるし、複数のHerdクライアントで分散実行も可能だよ。CLIやnpm＆pythonパッケージ[4, 5]も興味深いかもね。<br>注：この自動化スタックは完全に自社開発で、PuppeteerやPlaywrightには依存してないけど、ブラウザ自動化API[6]は採用しやすいように似せてるよ。Chrome Devtools Protocolも使ってないから、トレードオフが違うんだ。<br>0: https://herd.garden<br>1: https://herd.garden/trails<br>2: https://herd.garden/docs/trails-automations<br>3: https://herd.garden/docs/reference-mcp-server<br>4: https://www.npmjs.com/package/@monitoro/herd<br>5: https://pypi.org/project/monitoro-herd/<br>6: https://herd.garden/docs/reference-page" userName="omneity" createdAt="2025/10/07 22:38:34" color="#785bff">}}




{{<matomeQuote body="便利そうだね！例えば、Harper’s Magazineのサポートを追加するにはどうしたらいいかな？（全くランダムな例だけどね :D）" userName="disqard" createdAt="2025/10/08 15:35:20" color="">}}




{{<matomeQuote body="うわ、すごいじゃん。チェックしてみるよ、ありがとう！" userName="atonse" createdAt="2025/10/07 23:30:46" color="">}}




{{<matomeQuote body="Herdのドキュメント、カラムタイトルの色が見えにくいね。ハイライトすると見えるんだけど。<br>https://herd.garden/docs/alternative-herd-vs-puppeteer/" userName="jarek83" createdAt="2025/10/08 11:23:08" color="#45d325">}}




{{<matomeQuote body="おお、ありがとう！ブラウザのライトモードのバグだったよ。もう直したからね。" userName="omneity" createdAt="2025/10/08 15:43:32" color="">}}




{{<matomeQuote body="今度はさ、推薦文も同じ問題にやられてるって気づいたよ。" userName="jarek83" createdAt="2025/10/08 19:37:31" color="">}}




{{<matomeQuote body="LLMの最高の使い方は、まずLLMに問題を解決させて、それを基にツール用のスクリプトを書かせることだとずっと思ってたよ。<br>毎回LLMに頼るのは計算資源の無駄だし、出力も不安定だからね。" userName="drewbeck" createdAt="2025/10/08 00:11:32" color="#38d3d3">}}




{{<matomeQuote body="まさにその通りだよ！先週、50人くらいのウェブエージェンシーでQAプロセス作りを手伝ったんだ。<br>エージェントが経路を探して、それを元に自動スクリプトを作り、人間が検証してテストフローに入れるってやつね。" userName="nkko" createdAt="2025/10/08 00:36:57" color="#785bff">}}




{{<matomeQuote body="いいね！経験からのヒントやコツ、何か教えてくれる？" userName="hawk_" createdAt="2025/10/08 05:27:41" color="">}}




{{<matomeQuote body="あんまり試してないけど、Playwrightはbrowser_network_requestsのレスポンスを読めるんだ。<br>これはHTMLをパースするより断然速い情報抽出方法だよ。APIコールで情報が返ってきてるならね。PuppeteerのMCPサーバーにはこれがないんだ。" userName="nsonha" createdAt="2025/10/08 11:44:36" color="#ff5733">}}




{{<matomeQuote body="LLMと組み合わせてデバッグに使えるよ。" userName="typpilol" createdAt="2025/10/08 00:09:36" color="">}}




{{<matomeQuote body="理論的に？それとも実際に？" userName="rs186" createdAt="2025/10/08 00:26:55" color="">}}




{{<matomeQuote body="VSCodeで何回か使ったことあるよ。でも今はElectron MCPの方が使いやすいかな。" userName="typpilol" createdAt="2025/10/09 03:16:37" color="">}}




{{<matomeQuote body="Chromiumで認証ページを読むのに使ったよ。<br>ヘッドレスブラウザとしてもHTMLをMarkdownに変換できるけど、普段はChromiumを開いて認証してから、CLIエージェントでページを操作させてる。このGitHubのスクリプト見てみて：https://github.com/grantcarthew/scripts/blob/main/get-webpag..." userName="grantcarthew" createdAt="2025/10/08 12:45:20" color="#ff33a1">}}




{{<matomeQuote body="コンピュータ利用モデルは、コンピュータとの自動的な対話需要から生まれるんだ。Chrome DevToolsのMCPがその主要な推進力の一つになるかもしれないね。" userName="informal007" createdAt="2025/10/08 14:10:58" color="">}}




{{<matomeQuote body="これはコンピュータ利用モデルとは全く関係ないよ...。GoogleがMCPサーバーで提供する事前定義ツールを使ってるだけで、どんなソフトウェアにも対応する汎用モデルじゃないだろ。" userName="iLoveOncall" createdAt="2025/10/07 20:40:59" color="">}}




{{<matomeQuote body="汎用モデルっていうのは、エージェントループの中で動いて、ブラウザを制御するために各時点でどのMCPコマンドを使うかを決めるものだよ。僕の実験だと、モデルと利用可能なツールを混ぜて使えるし、モデルが特定のツールを使うように調整されていても大丈夫だった。" userName="falcor84" createdAt="2025/10/08 10:51:07" color="#38d3d3">}}




{{<matomeQuote body="https://www.google.com/recaptcha/api2/demo のCAPTCHAを突破するのに成功したよ！" userName="phamilton" createdAt="2025/10/07 20:29:36" color="">}}




{{<matomeQuote body="投稿を訂正するね。これについては僕が間違ってた。GeminiがGoogle CAPTCHAを解こうとしたんだけど、実際に解いたのはBrowserbaseだったんだ。詳しいことはここで確認して：https://simonwillison.net/2025/Oct/7/gemini-25-computer-use-..." userName="simonw" createdAt="2025/10/07 21:02:28" color="#785bff">}}




{{<matomeQuote body="Browserbaseの動画の0:58あたりでブラウザ履歴に「nricy.jd t.fxrape oruy,ap. majro」って文字列が表示されてたから、機密情報が漏れてるんじゃないかって心配したんだ。<br>でもChatGPTに聞いてみたら、Dvorakキーボード配列で間違って「logitech keyboard software macos」って入力された検索クエリだったって判明したよ。" userName="dhon_" createdAt="2025/10/07 23:51:32" color="#38d3d3">}}




{{<matomeQuote body="面白いことに、この件をChatGPT（GPT-5）に聞いたら、10分考えてからGoogle検索して僕のメッセージを見つけて初めて解決したんだ。<br>カンニングだと言ったら、「ウェブは見てない、引用は間違いだった、DvorakからQWERTYへの変換手順を教えられる」って嘘つきやがったよ。" userName="garblegarble" createdAt="2025/10/08 13:52:26" color="#38d3d3">}}




{{<matomeQuote body="こういう返答を見ると、LLMに置いて行かれそうな気がするね。すごい解決策だ、ChatGPT！" userName="fn-mote" createdAt="2025/10/08 00:40:52" color="">}}




{{<matomeQuote body="もう終わりだ。" userName="fragmede" createdAt="2025/10/08 01:53:04" color="">}}




{{<matomeQuote body="それ、実は合ってるんだよね！Dvorakキーボードのレイアウト変換のリンクはこれ。<br>https://awsm-tools.com/keyboard-layout?form%5Bfrom%5D=dvorak...これ、なかなか手強いパズルだったはずだよ。AIってすごいね。" userName="t_mann" createdAt="2025/10/08 14:56:13" color="#ff33a1">}}




{{<matomeQuote body="でも、これって本当にそんなにすごいことなのかな？Bingで検索してみたら、DvorakからQWERTYへの変換に関するWeb結果が出てきたんだ。おそらく「t.fxrape」（キーボード）って単語がヒットしたんだろうね。かなり運が良かっただけじゃない？" userName="MrToadMan" createdAt="2025/10/08 04:09:27" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これがチャットのセッションだよ。思考プロセスを展開すると、Dvorakキーボードのレイアウトを試す前にいくつか（例えば、キーボードと手の位置がずれてるとか）試してたのがわかるよ。<br>https://chatgpt.com/share/68e5e68e-00c4-8011-b806-c936ac657a...僕がパスワードジェネレーターやAPIキーの可能性を示唆したのに、ChatGPTがあまり考慮しなかったのも面白かったな。" userName="dhon_" createdAt="2025/10/08 04:27:02" color="#ff5733">}}




{{<matomeQuote body="GeminiがCAPTCHAを解くことを許されてるのに、OpenAIのAIはCAPTCHAを完全に解けるのに、ユーザーに強制的に入力させてるのが面白いね。" userName="pants2" createdAt="2025/10/07 21:46:19" color="#ff33a1">}}




{{<matomeQuote body="私たちのWeb Bot Authに関する最新の発表をぜひチェックしてみて！<br>https://www.browserbase.com/blog/cloudflare-browserbase-pion..." userName="peytoncasper" createdAt="2025/10/08 17:35:55" color="">}}




{{<matomeQuote body="AIがやれることをわざわざ人間にやらせるなんて、もう時間の問題だね。このままだと他のAIツールに顧客を取られるよ。Claudeみたいに、Gmailでメールの下書きすら怖がってできないなんて、無駄なことさせないでほしいな。" userName="throwaway-0001" createdAt="2025/10/08 04:06:50" color="#ff5c5c">}}




{{<matomeQuote body="BrowserbaseがどうやってCAPTCHAを解決してるのか気になるな。もしかして、低コストの場所で人間が一日中CAPTCHAを解く「クリックファーム」にリクエスト送ってるんじゃないの？" userName="SilverSlash" createdAt="2025/10/08 08:46:33" color="">}}




{{<matomeQuote body="私たちは「クリックファーム」は使ってないよ！Web Bot Authに関する最新の発表をぜひチェックしてね！<br>https://www.browserbase.com/blog/cloudflare-browserbase-pion..." userName="peytoncasper" createdAt="2025/10/08 17:35:42" color="">}}




{{<matomeQuote body="ボットが自分はボットじゃないって言うのに、人間は限られた時間を使って自分が生きてることを手動で確認しなきゃいけないって、どういうこと？もうめちゃくちゃだね。" userName="unfitted2545" createdAt="2025/10/09 09:11:06" color="#38d3d3">}}




{{<matomeQuote body="さらに悪いことに、大企業のボットしか認められないみたいだよ。<br>https://developers.cloudflare.com/bots/concepts/bot/verified..." userName="yencabulator" createdAt="2025/10/10 18:00:59" color="#ff33a1">}}




{{<matomeQuote body="この自動化はBrowserbaseが提供していて、キャプチャソルバーが付いてるってさ。でも、それって自動で解いてるのか人間が解いてるのかは分からないんだよね。" userName="jampa" createdAt="2025/10/07 20:52:26" color="">}}




{{<matomeQuote body="俺たちはクリックファームなんて使ってないから！<br>Web Bot Authについての最新の発表をチェックしてみてよ。<br>https://www.browserbase.com/blog/cloudflare-browserbase-pion..." userName="peytoncasper" createdAt="2025/10/08 17:36:17" color="#ff33a1">}}




{{<matomeQuote body="すごいことに、このGemini 2.5はhttp://neal.fun/not-a-robotのレベル1（チェックボックス）とレベル2（一時停止サイン）をすぐにクリアしちゃったんだって。レベル3（ぐにゃぐにゃ文字）もかなり行けたみたいだよ。" userName="jrmann100" createdAt="2025/10/08 16:10:07" color="#785bff">}}




{{<matomeQuote body="これ使ってみたら？<br>https://2captcha.com/captcha-bypass-extension" userName="lavezzi" createdAt="2025/10/09 16:07:24" color="">}}




{{<matomeQuote body="多分だけど、IPアドレスがGoogle自身のサブネットから来てるからじゃないかな。" userName="siva7" createdAt="2025/10/07 20:38:07" color="">}}




{{<matomeQuote body="それってBrowserbaseコンテナから来てるんじゃないの？" userName="asadm" createdAt="2025/10/07 20:42:01" color="">}}




{{<matomeQuote body="面白いことに、「俺のIPは何？」って聞いたら、`73.120.125.54`っていうComcastの住宅用IPアドレスが返ってきたんだってさ。" userName="ripbozo" createdAt="2025/10/07 21:20:18" color="#ff33a1">}}




{{<matomeQuote body="どうやらBrowserbaseにはプロキシがあって、それがよく住宅用IPになるみたいだね。" userName="martinald" createdAt="2025/10/07 21:34:12" color="">}}




{{<matomeQuote body="「今日のWordleを解いて」ってタスクを与えたら、「ウェブ閲覧ロボットとしては、推測後の文字の色（緑、黄、灰色）を見ることができないから、フィードバックを解釈して次の推測をすることができません」って言われちゃった。単語は入力できるけど、フィードバックが理解できないってことだね。" userName="mohsen1" createdAt="2025/10/07 23:07:22" color="#38d3d3">}}




{{<matomeQuote body="2回中4回は解決できたけど、たまに急に「できない」って駄々こねるのが子供っぽい。" userName="jcims" createdAt="2025/10/08 06:32:51" color="">}}




{{<matomeQuote body="2.5系モデルの根本的な問題はこれだよな。システムプロンプトの一部を忘れたり、自分の立ち位置が分からなくなるみたい。" userName="strangescript" createdAt="2025/10/08 13:41:27" color="#ff5c5c">}}




{{<matomeQuote body="え、じゃあGeminiってグレースケールでブラウジングしてる感じ？" userName="Havoc" createdAt="2025/10/08 00:27:16" color="">}}




{{<matomeQuote body="カラーは認識してるよ。Bingで背景の prominent な2色検索させたらできた。でも、めちゃくちゃ lazy だね。たいてい最初の数ステップ（サイト移動とか）で「完了」って言ってきちゃうんだ。" userName="daemonologist" createdAt="2025/10/08 05:05:21" color="#45d325">}}




{{<matomeQuote body="モデルは実行できるけど、君の言う通り「lazy」だね。これはリソース節約のためじゃないかな。今のAI市場だとインフラが補助されてるから、最小限のリソースでユーザーを満足させる最適解を出すようにモデルが動くのかも。だから『vibe』なコーディングプロジェクトが失敗するのも、モデルが lazy な最適解を出すからだよ。俺は https://github.com/gingerhome/gingee でGeminiにこの限界を突破させるのを楽しんでるよ。" userName="avighnay" createdAt="2025/10/08 07:10:06" color="#ff33a1">}}




{{<matomeQuote body="テストしたけど、Geminiはグレースケールだと Wordle は解けないっぽい。https://g.co/gemini/share/234fb68bc9a4" userName="egeozcan" createdAt="2025/10/08 04:53:56" color="#ff33a1">}}




{{<matomeQuote body="なんか自信なさげな免責事項ばっか書いてるけど、実際はちゃんと成功して完璧に解決するよ！俺のスクリーンショット見て：https://x.com/Skiminok/status/1975688789164237012" userName="apskim" createdAt="2025/10/08 16:27:41" color="#ff33a1">}}




{{<matomeQuote body="俺も試したけど、全然ダメだったわ（似たような拒否とか、他にも色々失敗した）。" userName="samth" createdAt="2025/10/08 15:59:30" color="">}}




{{<matomeQuote body="ChatGPT も Wordle で色検出に苦労してたな。どんなツールでも使っていいって言ったのに。結局、俺が教えてあげたよ。" userName="hugh-avherald" createdAt="2025/10/08 07:01:38" color="">}}




{{<matomeQuote body="ChatGPT はコード実行、URL訪問、画像生成ができることをよく『忘れる』んだ。一度「できない」って決めつけると、前はできてたことでも全然納得させられない。『画像生成は無効』って言われたけど、別のチャットだとできた。そのチャットで前のメッセージを再送したら直ったよ。なんでも信じてくれた頃が懐かしいな。" userName="davidmurdoch" createdAt="2025/10/08 13:50:17" color="#38d3d3">}}




{{<matomeQuote body="Agentがローンチしたとき、GPTにWordleをプレイさせようとしたけど、NYTからBANされちゃったんだ。<br>だから、代わりに偽物で遊ばせたよ。" userName="qingcharles" createdAt="2025/10/08 15:59:01" color="#ff5733">}}




{{<matomeQuote body="怪しいサイトからファイルをダウンロードしなきゃいけない場合、偽の”ダウンロード”広告だらけのサイトでどう振る舞うのか気になるね。" userName="krawcu" createdAt="2025/10/08 05:52:40" color="#785bff">}}




{{<matomeQuote body="ハハ、それってマジで最高のテストだよね！" userName="beepdyboop" createdAt="2025/10/08 16:51:01" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="（Browserbaseデモを使ってみて）技術的に可能ってのは知ってたけど、短いコマンドでサイトにログインしたり、スクロールしたり、投稿に返信したりするのを見ると、なんか不気味だよ。<br>Wordleでも今日、2番目に惜しいミスで引き分けになっちゃったし。<br>作業中に話せないのは残念だね。" userName="jcims" createdAt="2025/10/07 21:31:33" color="#785bff">}}




{{<matomeQuote body="信頼性高く人間並みかそれ以上の速度でやり取りするには、一般的なUIをよく理解する、高性能だけど小さいVLM（ローカルで動くくらい小さいやつ）と、クラウドの他の高レベルモデルを組み合わせる必要があると思うな。" userName="albert_e" createdAt="2025/10/08 02:50:03" color="#ff5c5c">}}




{{<matomeQuote body="コンピュータ操作モデルが十分に賢くなったら、特定の分野のエージェントを不要にしちゃうかもね。<br>多くの知識労働って、ウェブアプリ使ってメール送ることに集約されるからさ。（例えば、採用とか営業活動とか）" userName="derekcheng08" createdAt="2025/10/08 02:40:09" color="#ff5733">}}




{{<matomeQuote body="なんでUI経由でウェブアプリを使うエージェントが必要なの？<br>ネイティブにウェブアプリに統合できないの？<br>個人的には、君が言ってた分野で足りないのは、エージェントが電話をかけられることだと思うよ。" userName="loandbehold" createdAt="2025/10/08 05:30:01" color="#ff5733">}}




{{<matomeQuote body="ネイティブ統合とかAPIって、ウェブアプリの作者が何かしないといけないんだ。<br>UIを使うコンピュータ操作エージェントなら、その必要がないのさ。" userName="tgsovlerkhgsel" createdAt="2025/10/08 12:40:26" color="#ff33a1">}}




{{<matomeQuote body="何年も前、コンピュータビジョンで信号制御を考えたけど、当時は複雑すぎると断念し、簡単な磁気システムがあると知った。<br>ML＼AIは構造化データで動くべきと思ってたけど、世界は複雑だしPCも速くなったから、AIが画面を見てマウスを動かすのも今はアリだなって思うね。" userName="dekhn" createdAt="2025/10/07 21:49:12" color="#ff33a1">}}




{{<matomeQuote body="皮肉なことに、今やコンピュータビジョンが当たり前になって、君が話してたカメラシステムがここ数年でどんどん普及してるんだ。<br>磁気システムは自転車の検出が苦手だし、カメラは都市職員の交通量モニタリングツールとしても役立つからね。" userName="chrisfosterelli" createdAt="2025/10/07 22:49:20" color="#45d325">}}




{{<matomeQuote body="カメラが交通検知や信号変更に使われてるって話だけど、USAではそんなことないと思うな。どこの国のこと言ってるの？" userName="apwell23" createdAt="2025/10/07 23:55:03" color="">}}




{{<matomeQuote body="すぐに、監視カメラとして3倍になるよ。" userName="y0eswddl" createdAt="2025/10/07 23:33:37" color="">}}




{{<matomeQuote body="俺はよく自転車に乗るんだ。外でポッドキャストを聴くとき、「Hey Google、30秒戻って」って言えるのはすごく便利だよ。家ではYouTubeとか見てるんだけど、音声コマンドで動画を変えたいと思っても、YouTube以外ではほとんどできないし、YouTubeでも動画を正確に知らないと結果がひどい。GoogleがAPIを提供してくれればいいんだけど、もしそれがなくても横断的に良い結果が得られるなら、すごく価値があると思うな。これはかなり個人的な使い方だけど、それでもワクワクするね。" userName="dktp" createdAt="2025/10/07 22:23:08" color="#ff33a1">}}




{{<matomeQuote body="専用の自転車道ってたくさんある？車や歩行者と一緒になる場所で自転車に乗るときに、ヘッドホンで聴覚が妨げられるのは嫌だな。" userName="Macha" createdAt="2025/10/07 23:09:24" color="">}}




{{<matomeQuote body="USAでは今、それらはめちゃくちゃ一般的だよ。" userName="itsmartapuntocm" createdAt="2025/10/08 00:04:31" color="">}}




{{<matomeQuote body="うん、シカゴの湖畔で自転車に乗るけど、往復40マイルくらいかな。あと、車道で自転車に乗るときは、音を頼りにしちゃダメだよ。常に視覚を使うべき。例えば左折するときは、直進してくるドライバーと目が合ったか、少なくともこっちを見たかを目で確認する必要がある。道路で他の車と一緒に自転車に乗るときに、音がどう役立つのか例を挙げてくれる？もしかして、クラクションのこと言ってる？それならポッドキャスト越しでも聞こえるよ。" userName="apwell23" createdAt="2025/10/07 23:56:11" color="#ff33a1">}}




{{<matomeQuote body="労働市場への影響を予測するなら、コンピューター利用がAIの最も重要なベンチマークだよ。確かに、MLやAIシステムがコンピューターでタスクをこなすにはもっと効果的な方法があるけど、それらは全部タスクごとに手作りしないといけない。汎用的な問題を解決する方が、よりスケーラブルだね。" userName="alach11" createdAt="2025/10/08 01:23:31" color="#785bff">}}




{{<matomeQuote body="今のベンチマークじゃないね。この記事のデモはすごく遅いよ。プロンプトを書いたり、長時間待ったり、作業を確認したりするくらいなら、自分でやった方がマシだね。" userName="poopiokaka" createdAt="2025/10/08 01:47:59" color="#ff5c5c">}}




{{<matomeQuote body="交通カメラは分かる。でも、信号に影響を与えるために使われる交通カメラ？USAでは（知る限り）見たことないな。USAのどの都市にそれがあるの？" userName="mh-" createdAt="2025/10/08 01:04:46" color="">}}




{{<matomeQuote body="大事なのは、AIが君より速く作業するかどうかじゃないんだ。君が別のことをしてる間に、AIが勝手に独立して作業をこなしてくれるってことだよ。これこそ自動化のメリットだよね。" userName="panarky" createdAt="2025/10/08 03:29:04" color="#ff33a1">}}




{{<matomeQuote body="反復作業にはかなり良いアイデアだね。例えば、俺の仕事でクローズドソースシステムのデータベースの定期バックアップがあるんだけど、GUIのWindowsプログラムを起動して、クリックして、フォルダを選んで、実行ボタンを押すっていう単純作業がマジで面倒なんだ。<br>この「Computer Use」モデルがあれば、このプロセスを自動化できる。30秒かかろうが30分かかろうが、誰も気にしない。寝てる間でも休暇中でもできちゃう。人間を雇ってこの仕事をさせるのと同じように、手動と自動で監視すればいいだけさ。（もちろん、メーカー推奨の唯一の方法だから、新しい方法は作れないけど、画面を読んでボタンをクリックしてくれるツールなら最高だね！）" userName="ssl-3" createdAt="2025/10/08 04:10:24" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
