+++
date = '2025-04-07T00:00:00'
months = '2025/04'
draft = false
title = 'ヤバすぎ！ブラウザ操作をAIで自動化！？Cursor、Claude、VS Code連携で何でもできるぞ！ただし、監視とBANには要注意！'
tags = ["ブラウザ自動化", "AI制御", "データ収集", "セキュリティリスク", "プライバシー"]
featureimage = 'thumbnails/orange3.jpg'
+++

> ヤバすぎ！ブラウザ操作をAIで自動化！？Cursor、Claude、VS Code連携で何でもできるぞ！ただし、監視とBANには要注意！

引用元：[https://news.ycombinator.com/item?id=43613194](https://news.ycombinator.com/item?id=43613194)

{{<matomeQuote body="Browser MCPの作者です。<br>1. 拡張機能は匿名デバイスIDを使ってて、ツールが使われた時に分析イベントを送ってるよ。個人情報とかは一切送ってないから安心して。アクセス状況を知りたくて、ウェブサイトの訪問者数みたいな感じで匿名データ集めてるんだ。色んなプロジェクトやってるから、どれに集中するか決めるのに役立つんだよね。<br>2. 拡張機能は全部自分で書いたよ。GitHubにMCPサーバーのコードしかない理由は、複数の拡張機能で使うコードをまとめて管理してるから。個別に管理するのは大変なんだ。<br>誤解されちゃってるみたいだけど、怪しいことは何もしてないから！" userName="namukang" createdAt="2025-04-08T17:17:56" color="">}}

{{<matomeQuote body="わかるー。作った側としては、どう使われてるか知りたいよね。個人情報を集めてないなら、全然問題ないと思う。<br>過剰な反応は良くないよ。トラッキングは良くないけど、製品を改善したり、注力するポイントを絞ったりするには、ある程度のトラッキングは必要だよ。" userName="asaddhamani" createdAt="2025-04-08T18:32:36" color="#ff5733">}}

{{<matomeQuote body="「収集します」って言葉を見ただけで、もう読まなくなる人が多いんだよね。<br>これって致命的だよ。<br>どんなに理由があっても関係ない。<br>スパイウェアって思われちゃう。" userName="Trias11" createdAt="2025-04-08T18:12:49" color="">}}

{{<matomeQuote body="それって現実と逆のこと言ってる気がする。" userName="wyldberry" createdAt="2025-04-08T20:25:20" color="">}}

{{<matomeQuote body="「詳細な」って、匿名デバイスIDとツールの使用回数のこと？アプリが基本的な使用状況を知りたいだけなのに、そんなに問題かな？" userName="nlarew" createdAt="2025-04-08T15:47:02" color="">}}

{{<matomeQuote body="テレメトリーは常にオプトインであるべき。簡単に拒否できるべき。<br>それ以外のやり方は道徳的に破綻してる。" userName="tomrod" createdAt="2025-04-08T16:43:59" color="">}}

{{<matomeQuote body="マジ？大げさすぎだよ。<br>マックで注文する時に契約書にサインしないけど、ビッグマックが何個売れたかは絶対に数えてるでしょ。それって道徳的に破綻してる？普通にビジネスとして合理的じゃない？" userName="nlarew" createdAt="2025-04-08T22:49:00" color="">}}

{{<matomeQuote body="マクドナルドは道徳的に最も破綻してる企業の一つだと思うけど、言いたいことはわかる。" userName="genevra" createdAt="2025-04-14T01:14:56" color="">}}

{{<matomeQuote body="ユーザーを監視する権利があるって思い込んでるのがマジありえない。2025年だぞ！ちゃんと説明して、許可取ってくれよ。勝手にデータ集めて金儲けとかふざけんな。利用規約とかクソだし、いい加減やめろってマジで。現状維持とかマジで意味わからん。クソみたいなもん積み重ねんな。" userName="observationist" createdAt="2025-04-08T16:39:19" color="">}}

{{<matomeQuote body="え、匿名カウンターで人数数えるのと、データを全部集めて金儲けするのって全然違うくない？もしサイト超えて個人情報追跡して売り飛ばしてるなら、そりゃ怒るけどさ。それとは全然違うじゃん。嫌なら自分でMCP作れば？" userName="nlarew" createdAt="2025-04-08T22:45:20" color="">}}

{{<matomeQuote body="拡張機能のサプライチェーン脆弱性はマジでヤバい。テレメトリーの問題点も多すぎるのに、なんでみんな気づかないんだろ？許可なしの監視とかありえないって。匿名化って言っても、バレバレだし。PosthogとかAmplitudeが狙われたら終わりだよ。データ集めなきゃいいんだよ。ユーザーの許可なしにデータ集めるの違法にしろ。監視データ漏洩しまくりなのに誰も責任取らないのクソ。" userName="observationist" createdAt="2025-04-09T15:11:28" color="#ff33a1">}}

{{<matomeQuote body="自分でビルドできるChrome拡張機能以外入れるな。" userName="bn-l" createdAt="2025-04-08T12:04:28" color="#ff5c5c">}}

{{<matomeQuote body="…そして、ちゃんとレビューして完全に理解すること。" userName="neycoda" createdAt="2025-04-08T14:27:30" color="#ff5733">}}

{{<matomeQuote body="つまり、ほぼないってことね。<br>拡張機能はいつでも勝手にアップデートされるからね。買収されたりしたら最悪だよ。パスワードとか盗まれるかも。ほとんどの人は気づかないだろうね。デフォルトで拡張機能を実行するな。" userName="EGreg" createdAt="2025-04-08T14:42:58" color="">}}

{{<matomeQuote body="GitHubとかのソースリポジトリURLから簡単に拡張機能インストールできたら面白いかも。誰を信用してるか分かりやすくなるし。Chrome ストアの「インストール」ボタンを盲目的に信用するのはマジでヤバい。GoogleがChrome ストア始めた理由って安全性の確保じゃなかったっけ？" userName="metadat" createdAt="2025-04-08T15:08:26" color="#38d3d3">}}

{{<matomeQuote body="user.script/grease monkeyみたいな感じか。昔は大きなスクリプト公開したら誰かがレビューしてくれたよね。権限システムをもっと複雑にして、ユーザーにちゃんと説明すべき。あと、独立したレビュアーが署名するとか。App Storeの悪質なやつらの信頼性を疑えるように。" userName="econ" createdAt="2025-04-08T16:06:03" color="">}}

{{<matomeQuote body="拡張機能はいつでも勝手にアップデートされるからね。<br><br>自分でソースからビルドできる拡張機能だけインストールしろって言ってる人がいるけど、Chromeストア経由でアップデートされる拡張機能が多いから、ソースからインストールすればアップデートされないよ。" userName="rahimnathwani" createdAt="2025-04-08T19:27:10" color="">}}

{{<matomeQuote body="＞ So ... pretty much none<br>＞”つまり、ほぼない”<br>意外とそうでもないよ。私が使ってる拡張機能は全部当てはまる。" userName="bn-l" createdAt="2025-04-08T15:36:09" color="#785bff">}}

{{<matomeQuote body="ウェブサイトには「リアルなブラウザのフィンガープリントを使うから、bot検出やCAPTCHAを回避できる」って書いてあるけど、マジじゃないよ。俺も似たようなシステム（自作）を数週間前に使ったんだけど、AIにログイン済みのブラウザを操作させたら、普通のブラウザ利用時にもCaptchaが出るようになって、最終的には色んなウェブサイトでブロックされちゃったんだ。今はもうその使い方はやめたからブロックは解除されたけど、マジで警告する。同じことやると自分もアクセスできなくなるから。銀の弾丸じゃないってこと。" userName="bhouston" createdAt="2025-04-07T18:33:34" color="">}}

{{<matomeQuote body="こういう系の注意点って、だいたい「高品質なプロキシを使えば」ってやつだよね。あと、この拡張機能もバレバレだと思うから、CFのbot検出もすぐにPlaywrightとかと同じように認識するようになるんじゃないかな。" userName="tempest_" createdAt="2025-04-07T19:04:38" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="この拡張機能ってブラウザのデバッグを有効にするんだよね（自動化について知らせるバナーが表示される）。それってJavaScriptで検出できるじゃん。だから、こういうプロジェクトがあるんだね。<br><br>https://github.com/Kaliiiiiiiiii-Vinyzu/patchright<br><br>これはJavaScriptからデバッグ部分を隠すもの。" userName="unixfox" createdAt="2025-04-08T17:29:42" color="#ff5c5c">}}

{{<matomeQuote body="ウェブサイト上の要素をクリックする速度にもよるんじゃない？" userName="DeathArrow" createdAt="2025-04-07T18:43:44" color="">}}

{{<matomeQuote body="マジでそう。俺が普通にクリックしてるだけでも、速すぎるとCFにBANされる。" userName="SSLy" createdAt="2025-04-07T19:42:34" color="">}}

{{<matomeQuote body="5年くらい前かな、GoogleがやたらとCaptcha送ってくるようになったんだよね。同じような検索を繰り返してたら。間違ってるかもしれないけど、大規模プラットフォームは、かなり高度なアンチbot/scraping対策をしてる気がする。" userName="omgwtfbyobbq" createdAt="2025-04-07T20:10:06" color="">}}

{{<matomeQuote body="Googleは俺にも同じことしてくるよ。なんで分かんないんだろ。検索結果がクソすぎて、欲しい情報を見つけるために30回も検索し直してるんだよ。" userName="SubiculumCode" createdAt="2025-04-08T01:27:36" color="">}}

{{<matomeQuote body="GitHubはよく俺をブロックするんだよね。遅くしろって言われて、数時間ブロックされる。意味不明。" userName="what" createdAt="2025-04-08T02:40:53" color="">}}

{{<matomeQuote body="GitHubがログインしてないユーザーの検索を無効にしたの覚えてる？　まあ、最近は検索の閾値を0に設定したから、事実上また無効にしたんだよね。今回は騒ぎになるのを避けてる。" userName="Tepix" createdAt="2025-04-08T06:08:22" color="#45d325">}}

{{<matomeQuote body="ログインしてるか確認して。ログインしてないと、数回検索しただけでブロックされた。" userName="rcakebread" createdAt="2025-04-08T02:59:44" color="">}}

{{<matomeQuote body="Yandexも同じことやってるよ。" userName="clown_strike" createdAt="2025-04-08T01:45:42" color="">}}

{{<matomeQuote body="Vimium（Chrome拡張機能でキーボードでブラウザ操作するやつ）使ってるんだけど、挙動が「不自然」に見えるせいで同じことになってるわ。" userName="michaelbuckbee" createdAt="2025-04-07T21:08:10" color="">}}

{{<matomeQuote body="支援ソフト使ってる人にとってはマジで最悪だろうな。俺もCloudflareに理由もなくブロックされるし。" userName="sitkack" createdAt="2025-04-07T23:56:53" color="#38d3d3">}}

{{<matomeQuote body="それってADA的に何か問題ないのかな？ってちょっと思う。" userName="verve_rat" createdAt="2025-04-08T02:01:42" color="">}}

{{<matomeQuote body="マジでそうであってほしい。支援が必要な人たちのためだけじゃなくて、他の皆のためにもね。アクセシビリティはエンドユーザーの相互運用性を守る最後の砦だから。<br>スクリーンリーダーは、わかりやすく機械可読なサイトを見る必要があるし、法律で義務付けられてる場合もあるし、一般的に良いこととされてるから、サイトはスクリーンリーダーだけでなくエンドユーザーの自動化にも優しくなる。（これがいつまで続くかわからんけど。LLMはすでに特別な機能なしでスクリーンリーダーになれるからね。UIを健常者と同じように理解できる。今はまだ信用できないけど、もっと良くなるだろう。）" userName="TeMPOraL" createdAt="2025-04-08T07:52:05" color="#ff5c5c">}}

{{<matomeQuote body="Cloudflare使うのやめてほしいわ。インターネットが悪くなるだけじゃん。" userName="wordofx" createdAt="2025-04-08T05:21:39" color="">}}

{{<matomeQuote body="どういうこと？" userName="fastball" createdAt="2025-04-08T07:08:43" color="">}}

{{<matomeQuote body="俺もだわ。Vimiumも使ってる。" userName="bombela" createdAt="2025-04-07T23:34:53" color="">}}

{{<matomeQuote body="何を探してると思う？すぐ検出できるようなことって何かあるかな？マウスの動きを追跡して、マウスの動きがあまりにも綺麗すぎると判断できるんじゃないかと思ってる。だから、もっと人間らしいノイズをマウスの動きに加えて、システムを回避できるようにするとか。速すぎる操作とかも言われてるけど、操作間のタイミングはどうだろう。クリック自体は速くなくても、間隔が一定だと人間じゃないって判断されるかも。" userName="SkyBelow" createdAt="2025-04-07T20:48:04" color="#ff33a1">}}

{{<matomeQuote body="最近のcaptchaって、言ってるような色んな方法使ってるんだよね。だからCloudFlareの「私はロボットではありません」ってチェックボックスが一瞬でチェックされて終わるのを見たことあると思う。あれって、チェックする前に色んな情報を見て、人間っぽいかどうか判断してるんだって。" userName="tempoponet" createdAt="2025-04-07T20:53:12" color="#ff33a1">}}

{{<matomeQuote body="キーボード操作とかショートカット、自動入力とか使ってると、botと間違われること多いんだよね。captchaってbotを見抜くのは下手なのに、人間をbotだって誤判定するのは得意だよね。" userName="dalemhurley" createdAt="2025-04-07T22:26:50" color="">}}

{{<matomeQuote body="AIがサイトのトラフィックを食い荒らしてて、captchaとかその手の対策は増える一方だと思う。residential proxyを売ってる人も増えてるし、対策と対抗策はどんどん高度になっていくだろうね。<br>＞These Captchas are really bad at detecting bots and really good at falsely labelling humans as bots.<br>＞人間からするとそう感じるよね。false-positive率は低いと思うけど。ブラウジングの仕方のせいで誤判定されてるなら最悪だね。" userName="Quarrel" createdAt="2025-04-08T02:20:33" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="botの量を考えたら、captchaってbotを見つけるのがすごく上手いんだよね。bot検出のチームで働いてるけど、マジで効果あるよ。誤判定を減らすように頑張ってるし。" userName="diatone" createdAt="2025-04-08T07:28:09" color="#45d325">}}

{{<matomeQuote body="captchaはbotがよく使うパターンを検出してるんだよ。人間もたまに同じパターンを使うってだけ。昔Call of Duty 4やってた時、マウス連打が速すぎてチートだって疑われたことあるわ。良いマウスと速い指があっただけなのに。" userName="magicalhippo" createdAt="2025-04-08T03:25:39" color="">}}

{{<matomeQuote body="問題は結果の重大さだよね。CoDでチーター扱いされるくらいなら、サーバーから蹴られるだけだけど、CloudFlareにbot認定されたら、医療サービスとか銀行口座にアクセスできなくなったり、フライトのチェックインができなくなったりするんだよ。だからCFにはもっと頑張ってほしい。人間がbotと誤判定されるのは大問題だよ。" userName="animuchan" createdAt="2025-04-08T09:05:22" color="#45d325">}}

{{<matomeQuote body="最悪かって？そりゃそうだよ。CFは誤判定を減らす努力を続けるべき？もちろんだよ。CFのbotテストに引っかかったことないから、どんな気分かわからないけど。GoogleのReCaptchaでレベル8か9まで行ったことはあるけど、諦めたこともある。<br>＞Though my point was just it's gonna boil down to a duck test, so if you walk like a duck and quack like a duck, CF might just think you're a duck.<br>＞結局はアヒルのテストになるってこと。アヒルみたいに歩いてアヒルみたいに鳴けば、CFはアヒルだと思うかもね。" userName="magicalhippo" createdAt="2025-04-08T09:43:54" color="#45d325">}}

{{<matomeQuote body="誤検出は避けられないからね。誤検出（positive）を優先してるのかもね。" userName="willsmith72" createdAt="2025-04-08T01:25:59" color="">}}

{{<matomeQuote body="＞I'm wondering if it is something like they can track mouse movement<br>＞マウスの動きを追跡してるのかも<br>そう、それも重要な情報源。<br>＞adding some more human like noise to the mouse<br>＞マウスに人間っぽいノイズを加えてみる<br>それもよくある回避策。言うは易し行うは難し。新しいノイズ生成方法が出るたびに、検出方法も開発される。グローバルな使用パターンとかも見てるから、人間のワークフロー全体を真似する必要があるよ。" userName="kmacdough" createdAt="2025-04-08T09:31:45" color="#ff33a1">}}

{{<matomeQuote body="小さな要素をたくさん積み重ねて判断してるんじゃないかな。ユーザーは割と直線的な動きをするけど、急に違う動きをしたら怪しいって判断されるかも。" userName="econ" createdAt="2025-04-08T16:18:21" color="">}}

{{<matomeQuote body="CAPTCHAってあるじゃん？あれって結局、みんなが自動化ツールを悪用するからなんだよね。　「bot対策とかCAPTCHA回避！」とか言ってるやつ、マジ勘弁。必要なアクセスがあるならAPIくれって言えばいいのに。金払う必要があるかもだけど。ダメって言われたら、お前のやり方が嫌われてるって自覚しろってこと。" userName="mrweasel" createdAt="2025-04-08T07:12:19" color="">}}

{{<matomeQuote body="いやいや、CAPTCHAの主な原因はお前みたいなアホのせいだろ。企業間での自動化された迷惑行為が多いんだよ。競合とか、外部委託とか。お前の会社もやってるかもよ？<br>＞もし本当にアクセスが必要ならAPIを要求しろよ。<br>＞広告スキップとか、自動化とか、UI改善に使われたら嫌じゃん？分析データ見えなくなったり、セールスファネルから外れたりしたら困るんだろ。<br>＞サイトオーナーに最終決定権があるみたいに言うなよ。<br>ユーザーエージェントって言葉もあるし、ユーザーとサーバーの領域は分かれてるんだよ。サイトオーナーは余計な口出しすんなって。" userName="TeMPOraL" createdAt="2025-04-08T07:45:31" color="">}}

{{<matomeQuote body="ビジネスの種類が違うみたいだね。ユーザー追跡とか広告は考えてなかったけど、このツールがそういう目的で使われるとは思わないな。コンテンツファームとか、迷惑botとか、詐欺とか。そういうのが無くなっても困らないでしょ。<br>もし注文受けて商品発送するビジネスなら、APIを要求できるはず。大企業なら無料で提供してくれるかも。メールとかExcelデータとかもAPIの一種だよ。<br>ユーザー追跡で稼いでるサイトはAPIくれないだろうね。RedditはAPIあるけど、めちゃくちゃ高いと思うよ。" userName="mrweasel" createdAt="2025-04-08T08:38:18" color="">}}

{{<matomeQuote body="ビジネスの種類が違うみたいね。B2Bの自動化の話ね。例えば、競合店の価格を自動で収集して、自分の店の価格を調整するとか。昔の「従業員にこっそり価格をメモさせる」の現代版。<br>レビューを自動で書いたり読んだり、SEOコンテンツファームのためにサイトをコピーしたり…<br>迷惑行為をしてるせいでbot対策が必要になってるんだよ。<br>＞もし注文を受けて発送するビジネスなら、APIを要求できるはず。<br>個人ユーザーはAPIもらえないことが多いよね。小さすぎて相手にされないとか。既存のサービスを便利に使いたいだけなのに。RedditのAPI変更もLLM対策だよね。ユーザーコンテンツを囲い込んで、利用料を取ろうとしてる。" userName="TeMPOraL" createdAt="2025-04-08T14:38:07" color="#ff5733">}}

{{<matomeQuote body="MCPは、LLMモデルが「呼び出せる」メソッドのライブラリ/APIみたいなもん。メソッド名とか、パラメータとか、出力の型とか、説明とかをLLMに教えてあげる。<br>例えばChatGPTに「Googleマップで自転車屋検索して電話番号教えて」って言っても無理だけど、browser MCPがあればできる。ChatGPTがブラウザに「Googleマップ開いて」「スクショ撮って」「ここクリックして」って指示できるんだ。" userName="oulipo" createdAt="2025-04-07T22:30:30" color="#ff33a1">}}

{{<matomeQuote body="AIエージェントがJSONで返事して、それをPythonコードの関数にマップするってこと？それが「呼び出し」ってこと？" userName="mattfrommars" createdAt="2025-04-08T01:20:59" color="">}}

{{<matomeQuote body="そうそう、その通り。MCPはそれをちょっと形式化しただけ。" userName="oulipo" createdAt="2025-04-08T07:51:11" color="">}}

{{<matomeQuote body="モデルの信頼性が低いのに、こんな標準化を急ぐのは変な感じがする。実用レベルになるまで、まだ時間がかかるんじゃない？<br>なんか仮想通貨の「作れば誰か来る」みたいなノリを感じる。" userName="throwaway314155" createdAt="2025-04-07T22:33:55" color="">}}

{{<matomeQuote body="MCPは、最小限で定義されたアクションインターフェースを提供することで、信頼性の問題を解決しようとしてるんだと思う。LLMは、何をすべきかを考える必要がなくなるから、短いリストから選ぶだけで良くなる。" userName="taberiand" createdAt="2025-04-08T00:33:01" color="#45d325">}}

{{<matomeQuote body="Pokemon RedのMCPを作っても、Claudeは子供向けに作られたゲームでさえ何週間も苦戦して、ありえない間違いを犯すと思うよ。マジでまだそこまでいってないって。" userName="throwaway314155" createdAt="2025-04-08T02:54:23" color="">}}

{{<matomeQuote body="Pokemon RedのMCPってあるのかな？" userName="taberiand" createdAt="2025-04-08T03:51:31" color="">}}

{{<matomeQuote body="知らないけど、それ自体は面白いプロジェクトになりそう。ClaudePlaysPokemonっていうtwitchのストリームのことなんだけど、ClaudeにGameboy Colorのエミュレーターへのツールコーリングを与えてPokemonをプレイさせようとしてるんだ。ゆっくり進歩してるけど、LLMがどれだけ計画を立てるのが苦手なのかわかると思うよ。今回のツールコーリングAPIは、同じフックとかツールを持ったMCP構成に似てると思ったんだよね。" userName="throwaway314155" createdAt="2025-04-08T04:11:13" color="">}}

{{<matomeQuote body="主要なLLMモデルプロバイダーがこぞってこの流れに乗っかってるのは、マジで作為的で不自然に感じる..." userName="acedTrex" createdAt="2025-04-07T23:31:32" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="たぶんLLMの改善が去年はあんまり良くなかったから、何か新しい話題で盛り上げたかったんじゃない？ベンチマークのスコアは確かに上がってるけど、個人的にはLLMは前と変わらずミスが多いし、事実に基づいた正確な答えが必要な場合にはまだ使えないと思う。" userName="XCSme" createdAt="2025-04-07T23:38:08" color="">}}

{{<matomeQuote body="これはまさにそうだと思う。みんな手当たり次第に試して、”インパクト”を見せようとしてるんだよ。" userName="acedTrex" createdAt="2025-04-08T01:15:35" color="">}}

{{<matomeQuote body="Operatorっていうのがあるけど時間の無駄だよ。エージェントとかMCPの99%と同じ。" userName="dimitri-vs" createdAt="2025-04-08T00:25:15" color="">}}

{{<matomeQuote body="Operatorは基本的にMCPみたいなもん..." userName="oulipo" createdAt="2025-04-08T07:51:25" color="">}}

{{<matomeQuote body="最悪なのは、潜在的なエクスプロイトのパンドラの箱を開けてしまうこと。https://elenacross7.medium.com/%EF%B8%8F-the-s-in-mcp-stands..." userName="jastuk" createdAt="2025-04-07T21:52:50" color="">}}

{{<matomeQuote body="それはMCPのせいじゃなくて、SaaSモデルにしがみついてMCPを売り込んでるベンダーのせいだよ。MCPはLLMにあなたのマシン上で任意のコードを実行させるための方法だけど、信頼できる”エアロックのあなたの側”で使うように設計されてるんだ。信頼も制御もできないサードパーティ製のツールで使うべきじゃない。リスクを説明するのは良いことだけど、MCP自体を責めるのは筋違いだよ。" userName="TeMPOraL" createdAt="2025-04-08T08:17:57" color="#ff5733">}}

{{<matomeQuote body="これは非難じゃないけど、常に意識しとくべき現実だよね。新しい失敗パターンが増えるし。例えば、ツール同士が干渉し合うとか、多くの人が気づかないようなこととか。外部のツールを使う時は、オープンソースでも、自社のシステムでも、めっちゃ注意して分析する必要があるんだよ。注意しても、絶対セキュリティ事故は起きると思うな。" userName="kmacdough" createdAt="2025-04-08T10:04:28" color="">}}

{{<matomeQuote body="ほとんどはリモートサーバーでOauth使ってれば問題ないよ。もしim-deffo-not-hacking-you.comからPayPal MCP MCPサーバーをインストールしたら、https://mcp.paypal.com/sse と同じセキュリティモデルだよ。この記事、皮肉にもLLMっぽいよね。" userName="joshwarwick15" createdAt="2025-04-07T23:42:21" color="">}}

{{<matomeQuote body="結局そうなんだよね。ユーザーが1個でもヤバいツール持ってたら、終わりじゃん！https://invariantlabs.ai/blog/mcp-security-notification-tool..." userName="tuananh" createdAt="2025-04-08T07:14:59" color="">}}

{{<matomeQuote body="NPM/left padと同じセキュリティモデルだよね。でもみんなElectronアプリ使うじゃん？新しい攻撃方法だけど、新しい攻撃対象ってわけじゃないよね。" userName="joshwarwick15" createdAt="2025-04-08T10:00:32" color="">}}

{{<matomeQuote body="泥棒を擁護してるみたいに聞こえるかもしれないけど、自動車ってボニーとクライドみたいな無法者を生み出したよね。FBIが州境を越える犯罪を取り締まるまではさ。自動車が生み出した進歩全体を考えたら、最初の10年が悪かっただけで諦めるべきじゃないと思うんだ。" userName="halJordan" createdAt="2025-04-07T22:33:06" color="">}}

{{<matomeQuote body="MCPは、AIモデルが便利なツールを使えるようにするための規格だよ。普通の人は混乱すると思うけど、開発者は自分たちのツールに見えるからそうは思わないんだよね。" userName="orbital-decay" createdAt="2025-04-08T02:09:54" color="#38d3d3">}}

{{<matomeQuote body="言いたいことはわかるよ。MCPは広く採用されてるけど、草の根的な広がり方じゃないよね。大手AI企業が開発者の心と市場を支配しようとしてるって感じ。コンセンサスが得られる前に。" userName="hedgehog-ai" createdAt="2025-04-08T00:35:42" color="">}}

{{<matomeQuote body="LLM専用のRPCだよね。まさに今流行りのトレンドって感じ。" userName="whalesalad" createdAt="2025-04-08T10:24:25" color="">}}

{{<matomeQuote body="ショッピングサイトで「このサイドボード全部見て、155cmより大きくて100cmより小さいやつを絞り込んで。濃い色の木でできてて、高さ31.43cmのレコードが入るスペースがあるやつを優先して」ってブラウザに指示したいんだよね。そんなことできるブラウザってまだないよね？ページから情報を抽出できるの超便利じゃん！" userName="andy_ppp" createdAt="2025-04-07T20:54:31" color="#ff5c5c">}}

{{<matomeQuote body="MatterRankってサービスを開発してて、似たようなことができるよ。今はウェブ検索だけど。（例えば、「Xについて話してて、Yの偏りがある結果を優先して、何かを売ろうとしてる結果は優先度を下げる」とか）。試してみてね。<br>https://matterrank.ai<br>どんな使い方を考えてるか教えてくれると嬉しいな。ブラウザ拡張として使う？それともショッピングアグリゲーター？" userName="mfkhalil" createdAt="2025-04-07T21:47:26" color="#ff33a1">}}

{{<matomeQuote body="わかる～、めっちゃ共感するわ。実現可能かどうかとか、儲かるかどうかは置いといて、こういうことよくあるんだよね。<br>何か買いたいものがあって、サイズとか色とか、細かい希望があるとするじゃん？で、たぶんそのサイトに条件に合うものがあるはず…でも絞り込み検索じゃ無理！例えば、置きたい場所にピッタリのサイズが欲しいのに、サイトのフィルターじゃ無理なのよ。製品ページには詳しい情報が載ってるのに、全部見るのめんどくさい！<br>例えば、IKEAでライトウッドのデスクを探してほしい。幅は55インチで、奥行きが一番深い順に並べて。あと、最寄りのIKEAに在庫があるか、1週間以内に配達可能かどうかも調べて。" userName="Niksko" createdAt="2025-04-08T03:50:21" color="#785bff">}}

{{<matomeQuote body="＞You could do that with browser-use:<br>”https://browser-use.com/”<br>これを使えばできるよ。" userName="unixfox" createdAt="2025-04-08T17:32:03" color="">}}

{{<matomeQuote body="インテリアを考える時、めっちゃ細かい条件で合うものを探したいって気持ち、マジでわかる。" userName="bravura" createdAt="2025-04-07T21:53:10" color="#45d325">}}

{{<matomeQuote body="Claude Desktopで試してみたけど、マジでスムーズでPlaywrightより全然使いやすい！いい方向だね！<br>もうやってたらごめん、captchaを検知したら自動化を一時停止して、ユーザーに通知してくれると嬉しいな。Playwrightはcaptchaを無視して進もうとするから。" userName="neilellis" createdAt="2025-04-07T17:34:49" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
