+++
date = '2025-06-25T00:00:00'
months = '2025/06'
draft = false
title = 'Google GeminiのCLIツールが登場！Workspaceユーザーは要チェック？'
tags = ["AI", "CLI", "Google", "プログラミング", "ツール"]
featureimage = 'thumbnails/red1.jpg'
+++

> Google GeminiのCLIツールが登場！Workspaceユーザーは要チェック？

引用元：[https://news.ycombinator.com/item?id=44376919](https://news.ycombinator.com/item?id=44376919)




{{<matomeQuote body="GitHubのリポジトリはこちらだよ！ https://github.com/google-gemini/gemini-cli" userName="sync" createdAt="2025/06/25 13:10:46" color="">}}




{{<matomeQuote body="こんにちは、開発者だよ。今は利用者急増で大変だけど、みんなのフィードバックを読んでるからバグ報告や機能要望どんどん書き込んでね！TPUにも思いやりを！" userName="cperry" createdAt="2025/06/25 13:50:09" color="#45d325">}}




{{<matomeQuote body="Workspaceユーザーなのに`GOOGLE_CLOUD_PROJECT`って環境変数が無いってエラーが出たよ。GCP使ってないから設定方法が分かりにくいし、Workspaceユーザーが使えないのは困るな。" userName="ebiester" createdAt="2025/06/25 14:02:40" color="#45d325">}}




{{<matomeQuote body="Workspaceユーザーは「Gemini for Google Cloud」で月19ドル追加で払わないとCLI使えないみたい？それなら残念だな、普通のWorkspace契約に含まれてると思ったのに。情報源はこちら: https://console.cloud.google.com/marketplace/product/google/..." userName="thimabi" createdAt="2025/06/25 14:23:54" color="#38d3d3">}}




{{<matomeQuote body="今使えるツールはこんな感じらしいね。これらを拡張したり、逆に不要なものを無効にしたりってできるのかな？<br>利用可能なツール: ReadFolder, ReadFile, SearchText, FindFiles, Edit, WriteFile, WebFetch, ReadManyFiles, Shell, Save Memory, GoogleSearch" userName="elashri" createdAt="2025/06/25 13:54:34" color="#45d325">}}




{{<matomeQuote body="ターミナルでUI立ち上げずにサクッと短い応答だけ欲しいんだけど、そういう使い方できるの？「このシンボルをgrepで見つけるnmコマンド教えて」みたいな簡単な質問に素早く答えさせたいんだ。カスタムプロンプト書くしかないかな？" userName="danavar" createdAt="2025/06/25 15:32:39" color="#45d325">}}




{{<matomeQuote body="お願いだから、モデルがいつもエッセイみたいな長い回答書いたり、コードにやたら解説コメント付けたりするのやめてよ！毎回コメント消す羽目になるんだ。抑制できないみたいだし、「pythonで乱数生成する方法教えて」って質問に15秒もかかるのもアホらしい。" userName="nprateem" createdAt="2025/06/25 19:19:22" color="#38d3d3">}}




{{<matomeQuote body="[編集]全部ウソだった。勘違いしてたけどWorkspaceの無料ティアはまだ未対応なんだって。プロジェクト設定して課金が必要。これはWIPだよ。Workspaceユーザーも無料ティア使える[編集: cperryは間違い]、ログインで「その他」から「Google for Work」を選べばいいと思ってたんだけどね。みんなが使えるシンプルなフローにするの苦労してるよ。" userName="cperry" createdAt="2025/06/25 14:26:01" color="#45d325">}}




{{<matomeQuote body="CLI使って最初に「GEMINI.mdファイル作って」って試したら、1分くらいかかって「クォータ上限超えた」ってエラーが出たよ。https://ai.google.dev/gemini-api/docs/rate-limits に詳細あるらしいけど、最初からこれで萎えた。" userName="ciwchris" createdAt="2025/06/25 16:11:42" color="#ff33a1">}}




{{<matomeQuote body="Claude Codeにある「sub-agent」って機能が見過ごされがちだけどすごいんだ。モデルがサブタスクを独立して実行できるんだよ。Gemini CLIにもこれ欲しいな。あと、よくやる作業用にカスタムプロンプトやツールセットを定義して、それをメインエージェントのツールとして使えるようになるとさらに便利になると思う。" userName="akrauss" createdAt="2025/06/26 13:16:30" color="#ff33a1">}}




{{<matomeQuote body="僕もプロダクトに関わってるんだけど、MCPでツールを拡張できるんだ。詳しくはここを見てみてね: https://github.com/google-gemini/gemini-cli/blob/main/docs/t..." userName="_ryanjsalva" createdAt="2025/06/25 14:02:31" color="#38d3d3">}}




{{<matomeQuote body="これは関連情報かな？ここに詳細があるよ: https://github.com/google-gemini/gemini-cli/blob/main/docs/c..." userName="cperry" createdAt="2025/06/25 14:05:57" color="">}}




{{<matomeQuote body="作ってくれてありがとう！このツール、すごく可能性を感じるよ。Claude Codeを使ってたんだけど、このCLIの基本機能はしっかりしてるね。ただ、エンタープライズ向けには権限周りの調整が必要かも。コードをさっと見た感じだけどね。<br>高ROIな要望：パターンベースの権限、CLIフラグでの権限指定、拒否優先ルール、設定ファイルの階層。<br>中ROIな改善点：コマンド引数フィルタ、複数設定形式対応、実行時権限診断、環境変数注入。<br>権限エンジンが本当に鍵で、「これの内のこれは許可、あれは禁止」みたいにできれば、高度な使い方はほぼ全部できるようになるはず。素晴らしい仕事ぶりを続けてね！" userName="bravura" createdAt="2025/06/26 11:37:08" color="#ff5c5c">}}




{{<matomeQuote body="すごく不思議だね！僕は先週ずっと使ってるけど、無料ユーザーのクォータ制限に当たったことないんだ。今ちょっとキャパシティの問題はあるんだけど、それはクォータとは別のはずだよ。明日か明後日、もう一回試してみてくれると嬉しいな！" userName="fhinkel" createdAt="2025/06/25 18:46:14" color="#ff5c5c">}}




{{<matomeQuote body="じゃあ、ClaudeとかOpenAIのモデルは、なんでこうなってないの？" userName="nprateem" createdAt="2025/06/26 03:54:53" color="">}}




{{<matomeQuote body="これの開発ありがとう！昨日の午後、ruby（全然知らない言語）で書かれたアルゴリズムを素のJavaScriptに変換しようとしてたんだ。gpt-4.1に手伝ってもらおうとしたら、ダメダメで意味不明なことばかりで困ってたんだよね。 curiosityでGemini CLIをインストールして、rubyプロジェクトを指定したら、たった一つのリクエストで変換してくれたんだ。試そうと思ってから動くまでたった5分。感動したよ。" userName="bsenftner" createdAt="2025/06/25 14:57:05" color="#ff33a1">}}




{{<matomeQuote body="そんなに混乱する？GeminiはChatGPTみたいなもの、AI Studioは温度とか制御したい上級者向け、Vertex AIはGCPに統合されたAPI、Notebook LLMはだいたい個人的なRAG、Julesは開発者エージェントだよ。結構違うじゃないか。" userName="sagarm" createdAt="2025/06/26 03:35:10" color="">}}




{{<matomeQuote body="解説ありがとう！おかげでWorkspaceアカウントでGemini CLIが設定できたよ。<br>ちょっと注意点なんだけど、Githubの認証ドキュメントでは環境変数にGOOGLE_CLOUD_PROJECT_IDを設定って書いてるけど、CLIが実際に見てるのはプロジェクト名を設定するGOOGLE_CLOUD_PROJECTみたい。他の人も混乱するかもしれないから、コードとドキュメントのこの違いは直した方がいいかもね。<br>Workspaceアカウントで使うのにプロジェクトIDか名前が必要な理由がわからないけど、この要件がなくなったらもっと楽になると思うな。" userName="thimabi" createdAt="2025/06/25 14:52:59" color="#ff33a1">}}




{{<matomeQuote body="API Keyを使ってても同じことが起きてるよ。<br>APIエラー：{”error”:{”message”:”{<br>  \”error\”: {<br>    \”code\”: 429,<br>    \”message\”: \”Resource has been exhausted (e.g. check quota).\”,<br>    <br>  \”status\”: \”RESOURCE_EXHAUSTED\”<br>  }<br>}<br>”,”code”:429,”status”:”Too Many Requests”}}<br>待ってからもう一度試してね。制限を増やすにはAI StudioからQuota増加リクエストするか、別の認証方法に切り替えてって出てる。<br>でも、Google cloud consoleではどのQuotaもデフォルト制限を超えてないんだ。データ保護のTerms of Useは有料アクセスじゃないと適用されないのかな？" userName="jrbuhl" createdAt="2025/06/25 21:06:23" color="#ff5c5c">}}




{{<matomeQuote body="趣味で使ってるだけなんだけど、「Geminiが生成したコード変更は自動的に適用できません。手動で適用するか、もう一度Geminiに試させてください」ってエラーが 계속 떠.サービスが混んでるからかな？<br>追記：これ、Gemini Code Assist経由でアクセスしてるから、もしかしたら関係ない話かも。" userName="GenerWork" createdAt="2025/06/25 15:46:38" color="">}}




{{<matomeQuote body="テクノロジーがどう動くか、予算のことも含めて自分でどう設定できるか、時間を取って理解した方がいいよ。LLMをよく使うけど、ここに挙がってる問題は全然馴染みがないな。" userName="mpalmer" createdAt="2025/06/25 20:01:15" color="">}}




{{<matomeQuote body="すぐに高い価値があるのは確かだけど、正直、arbitrary code executionに使われうる複数のツール（テスト実行、依存関係インストール、pluginシステムがあるリンター実行など）へのアクセスを許可してるんだから、例えばgit --exec-path=/bin/shをブラックリストに入れるのは…見当違いな気がする。インターネットアクセスがない環境にagentを隔離した方がいいんじゃない？" userName="Phlogistique" createdAt="2025/06/26 13:55:57" color="">}}




{{<matomeQuote body="O3は違うんじゃない？2.5 Proは思考モデルだよ。もっと速い応答が欲しいならflashを試してみて。" userName="8n4vidtmkvmk" createdAt="2025/06/26 04:11:57" color="">}}




{{<matomeQuote body="これ、本当にありがとう！<br>Claude Maxみたいに、Gemini CLI（IP compliance付き）とGemini app（APIアクセスもあれば最高！）を組み合わせた、もっとコンシューマー向けのサブスクリプション提供があるとすごく嬉しいな。" userName="kingsleyopara" createdAt="2025/06/25 17:54:02" color="#785bff">}}




{{<matomeQuote body="Workspaceアカウントは全部プロジェクトIDが必要なの？うちはWorkspaceアカウントでGemini Proにお金を払ってるけど、GCPは使ってないし、それ以外のプロジェクトIDもないんだ。" userName="streb-lo" createdAt="2025/06/25 15:13:19" color="#38d3d3">}}




{{<matomeQuote body="ごめん、無料枠について間違ってた - 上で編集したよ。これはWIPなんだ。<br>ドキュメントの件、了解。これに関するPRが進行中だよ。あと、デベロッパープログラムに参加してるgmailユーザーが問題にぶつかってることも分かったよ。" userName="cperry" createdAt="2025/06/25 15:05:46" color="#ff5733">}}




{{<matomeQuote body="If you uv install llm<br>Then grab my shelllm scripts github.com/irthomasthomas/shelllm and source them in your terminal then you can use premade prompt functions like shelp ”what’s a nm and grep command to find this symbol in these 3 folders” -m gemini-pro<br>There’s also wrappers that place the command directly in your terminal prompt if you run shelp-c" userName="irthomasthomas" createdAt="2025/06/25 18:15:58" color="">}}




{{<matomeQuote body="odd, haven’t seen that one - you might file an issue https://github.com/google-gemini/gemini-cli/issues<br>I don’t think that’s capacity, you should see error codes." userName="cperry" createdAt="2025/06/25 15:48:30" color="">}}




{{<matomeQuote body="Been using Claude Code (4 Opus) fairly successfully in a large Rust codebase, but sometimes frustrated by it with complex tasks. Tried Gemini CLI today (easy to get working, which was nice) and it was pretty much a failure. It did a notably worse job than Claude at having the Rust code modifications compile successfully.<br>However, Gemini at one point output what will probably be the highlight of my day:”I have made a complete mess of the code. I will now revert all changes I have made to the codebase and start over.”What great self-awareness and willingness to scrap the work! :)" userName="joelm" createdAt="2025/06/25 16:56:06" color="#785bff">}}




{{<matomeQuote body="Gemini has some fun failure modes. It gets “frustrated” when changes it makes doesn’t work, and replies with oddly human phrases like “Well, that was unexpected” and then happily declares that (I see the issue!) “the final tests will pass” when it’s going down a blind alley. It’s extremely overconfident by default and much more exclamatory without changing the system prompt. Maybe in training it was taught/figured out that manifesting produces better results?" userName="joshvm" createdAt="2025/06/25 18:24:12" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="It also gets really down on itself, which is pretty funny (and a little scary). Aside from the number of people who’ve posted online about it wanting to uninstall itself after being filled with shame, I had it get confused on some Node module resolution stuff yesterday and it told me it was deeply sorry for wasting my time and that I didn’t deserve to have such a useless assistant.<br>Out of curiosity, I told it that I was proud of it for trying and it had a burst of energy again and tried a few more (failing) solution, before going back to it’s shameful state.<br>Then I just took care of the issue myself." userName="jjice" createdAt="2025/06/25 18:50:47" color="#785bff">}}




{{<matomeQuote body="After a particular successful Claude Code task I praised it and told it to “let’s fucking go!” to which it replied that loved the energy and proceeded to only output energetic caps lock with fire emojis. I know it’s all smoke and mirrors (most likely), but I still get a chuckle out of this stuff." userName="danielbln" createdAt="2025/06/25 19:08:40" color="">}}




{{<matomeQuote body="I asked it to do a comparatively pedestrian task: write a script to show top 5 google searches.First it did the search itself and then added “echo” for each of them - cuteThen it tried to use pytrends which didn’t go anywhereThen it tried some other paid service which also didn’t go anywhereThen it tried some other stuff which also didn’t go anywhereFinally it gave up and declared failure.It will probably be useful as it can do the modify/run loop itself with all the power of Gemini but so far, underwhelming." userName="noisy_boy" createdAt="2025/06/26 00:57:16" color="#ff5c5c">}}




{{<matomeQuote body="This was also my exact experience. I was pretty excited because I usually use Gemini Pro 2.5 when Claude Code gets stuck by pasting the whole code and asking questions and it was able to get me out of a few pickles a couple of times.<br>Unfortunately the CLI version wasn’t able to create coherent code or fix some issues I had in my Rust codebase as well.<br>Here’s hope that it eventually becomes great." userName="fcoury" createdAt="2025/06/26 12:42:43" color="#38d3d3">}}




{{<matomeQuote body="Claude will do the same start over if things get too bad. At least I’ve seen it when its edits went haywire and trashed everything." userName="fpgaminer" createdAt="2025/06/25 19:10:30" color="">}}




{{<matomeQuote body="Same here. Tried to implement a new feature on one of our apps to test it. It completely screwed things up. Used undefined functions and stuff. After a couple of iterations of error reporting and fixing I gave up.<br>Claude did it fine but I was not happy with the code. What Gemini came up with was much better but it could not tie things together at the end." userName="eknkc" createdAt="2025/06/25 19:40:43" color="#38d3d3">}}




{{<matomeQuote body="Geminiで最初のコード作って、Claudeでレビューして完成させる<br>って使い分け、面白そうだね。" userName="taberiand" createdAt="2025/06/25 21:56:09" color="#45d325">}}




{{<matomeQuote body="俺の個人的な推測だけど、GeminiはGoogleの巨大な社内コードベースで学習してるから強いんじゃない？RustはGoogle社内でそんなに使われてなくて、C++ツールがめちゃくちゃ優秀だから、GeminiはRustが比較的苦手なんだと思う。" userName="ZeroCool2u" createdAt="2025/06/25 17:18:43" color="">}}




{{<matomeQuote body="話はそれるけど、LLMのせいでプログラミング言語の進化がめっちゃ停滞しそうで心配なんだよね。新しい言語をいくつか試したけど、LLMが全部、構文似てる別の言語のコードに変換しちゃうんだよ。ドキュメント読ませてもそう。これが良いのか悪いのかは分からないけど、新しい言語って本当に難しい問題を解決するために生まれてる気がするんだ。" userName="data-ottawa" createdAt="2025/06/26 02:19:16" color="#ff5c5c">}}




{{<matomeQuote body="それだけじゃない、いろんなレベルでこれ起きそうだと思う。事実上固定化されたライブラリとかツールとかね。LLMはStack OverflowやGitHubみたいな質の高いコーパスが豊富にあったから栄えたけど、皮肉にもLLMが普及したせいで、そのデータ源が枯渇しつつあるんだ。" userName="breakingcups" createdAt="2025/06/26 09:43:51" color="#45d325">}}




{{<matomeQuote body="たぶん、次のすごいプログラミング言語は、LLMに使いやすいように設計されるんじゃないかな。人間にとって親切な長いキーワードとかは、LLMにとってはトークンの無駄だし、他にも最適化できる部分はあるはず。" userName="sillystu04" createdAt="2025/06/27 10:31:44" color="#ff5c5c">}}




{{<matomeQuote body="＞個人的な説だけど、GeminiはGoogleの巨大な内部コードベースで学習してる恩恵を受けてるんじゃないか<br>もし彼らがC++コードベースで学習させたら、外部で一般的なboostやcmakeみたいな主要なものを使ってないせいで効果ないと思うよ。使えない社内ライブラリを使えって推奨するだけになる。だから、社内C++コーパスで学習してないし、しても特に役立たないだろうね。" userName="leoh" createdAt="2025/06/25 23:58:58" color="#45d325">}}




{{<matomeQuote body="内部コードベースで学習させたら、具体的な情報漏洩しない？" userName="simianwords" createdAt="2025/06/26 16:34:18" color="">}}




{{<matomeQuote body="できないよ、それは良い点指摘してるね。それに俺が言った理由で、基本的に役に立たないだろうね。" userName="leoh" createdAt="2025/06/27 02:47:26" color="">}}




{{<matomeQuote body="＞個人的な説だけど、GeminiはGoogleの巨大な内部コードベースで学習してる恩恵を受けてるんじゃないか<br>Googleって本当に社内コードベースでモデル学習させてるの？専有情報とかセキュリティ構造の詳細を漏洩するリスクを考えると、そんな危険は冒さないと思うけど。" userName="thimabi" createdAt="2025/06/25 20:50:45" color="">}}




{{<matomeQuote body="Google社員だけどさ、社内コードで学習した別のモデルがあるんだ。公開版のGeminiは、俺の知る限りそのデータは見てないよ。弁護士が黙ってないからね。" userName="kridsdale3" createdAt="2025/06/25 20:56:50" color="#38d3d3">}}




{{<matomeQuote body="あんたんとこの弁護士はどんなモデルで動いてんの？" userName="blurrybird" createdAt="2025/06/26 09:47:45" color="">}}




{{<matomeQuote body="ああ、そうか、法的な問題もあるのか。ちょっと聞きたいんだけどさ、社内モデルと公開版で品質にだいぶ差があるの？" userName="thimabi" createdAt="2025/06/25 21:00:31" color="#45d325">}}




{{<matomeQuote body="実はさ、社内版の「2.5」バージョンは数日前にやっと来たところで、まだ使ってみてないんだ。でも、「Googleの社内知識付き2.0」と「何も知らない2.5」だと、後者の方がいつも良かったよ。やっぱ「量の暴力」かな。" userName="kridsdale3" createdAt="2025/06/25 21:03:18" color="#ff33a1">}}




{{<matomeQuote body="面白いね。俺もGemini 2.5 Proを評判良いからたまに試すんだけど、C# + Unityのコードだと毎回がっかりさせられるんだよ（ChatGPT 3/4やGrokと比べても）。その説はありえるね。" userName="dilap" createdAt="2025/06/25 18:26:38" color="#ff5c5c">}}




{{<matomeQuote body="面白い！じゃあGoのコードは得意中の得意ってことかな？俺も試してみないと。" userName="danielbln" createdAt="2025/06/25 19:10:20" color="">}}




{{<matomeQuote body="Goは他の人気言語より窮屈だけど、LLMには向いてると思うよ。そういえばGoって最初からそういうコンセプトじゃなかったっけ？誰もが理解できるコードを書けるように、複雑なことをしないようにって。Goのプロジェクトなら大体どんなコードか想像つくから、ビジネスでは便利だよね。" userName="jordanbeiber" createdAt="2025/06/26 06:56:03" color="#45d325">}}




{{<matomeQuote body="GoogleだとGoよりJavaとかC++の方が断然多いよ。" userName="Unroasted6154" createdAt="2025/06/25 20:18:16" color="">}}




{{<matomeQuote body="小規模なGoコードなら、ほとんどのLLMでうまくいくよ。俺はいつもデカいプロジェクトを中規模の独立したGoツールに分けて開発してるんだけど、AIコーディングの今はそのやり方が役立つね。" userName="chewz" createdAt="2025/06/27 08:31:21" color="#ff5c5c">}}




{{<matomeQuote body="今のところ、Gemini CLIは既存コードの解説はめっちゃ得意だって感じてる。新しいコードを書かせるのはよく分かんないけどさ。" userName="raincole" createdAt="2025/06/25 19:01:06" color="#ff5c5c">}}




{{<matomeQuote body="俺も試したけどさ、あれ全然ダメだったよ。たった15分で記事にあるのと同じ”revert”現象出たし、マジ最悪。<br>" userName="skerit" createdAt="2025/06/25 20:57:21" color="">}}




{{<matomeQuote body="数日前にClaude Codeでstreamlitのpythonでシンプルな株トラッカーをノリで作ってみたんだ。最初は超うまくいったのに、ある規模超えるとバグ修正できなくなった。でもGemini CLIで同じことやったら、いけるプロジェクトサイズが全然大きいね。Claudeが迷子になったところでGemini CLIに”コードベースを分析して全部バグ直して”って言ったら、ちょっと指示追加しただけでアプリ動くようになった。未来って感じだね。" userName="wohoef" createdAt="2025/06/25 14:51:20" color="#45d325">}}




{{<matomeQuote body="これってコンテキストウィンドウサイズが関係してるのかな？GeminiのはClaudeの5倍大きいんでしょ。数週間Claudeで副業やってるんだけど、計画とかデバッグでノリノリになってる途中でコンテキスト足りなくなるんだよね。次に再開しようとすると、どんなにコンパクトな指示書いても細かいニュアンスが消えて実装がイマイチになる。Geminiのデカいコンテキストウィンドウでこれが解決するか試すのが楽しみだよ。" userName="agotterer" createdAt="2025/06/25 17:15:24" color="#ff5c5c">}}




{{<matomeQuote body="俺もデカいコンテキストウィンドウは絶対助けになると思うな。どのモデル使っても、ハードリミットより全然手前でコンテキストがいっぱいになると、コード品質が明らかに落ちるんだ。エディタツールも違う。Claude Codeは色々ファイルアクセスとかツール呼び出しでコンテキストを汚染するけど、Aiderみたいに手動でコンテキスト内のファイルを管理した方が結果は一貫してるよ。Claude Codeでコンテキスト限界に近づいてミスが増えるのは、”穴を掘ってたら、まず掘るのをやめろ”って状況だね。" userName="macNchz" createdAt="2025/06/25 22:35:10" color="#785bff">}}




{{<matomeQuote body="新しいAIセッションで、不足してる重要なコンテキストを足してやると、すぐに使えるようになるのを発見したんだ。俺の一番デカいコードベースだと、大体2～3個の重要な関数かな。主要なコンテキストを掴めば、あとは自分でできるみたい。もちろん、AIの思考プロセスが見れなくて、不足してるコンテキストを割り込んで供給できないと、このやり方はダメだけどね。エージェントが毎回正しいことするわけじゃないなら、不透明なのは困る。" userName="seunosewa" createdAt="2025/06/26 12:24:54" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これって/compactコマンドが役に立つの？今日初めてClaude Codeでコンテキスト不足になったから、何か良い方法ないか探してるんだ。/resumeとかメモリー機能をもっと使いこなして、ツールから価値を引き出せるようになりたいな。" userName="data-ottawa" createdAt="2025/06/26 02:24:59" color="">}}




{{<matomeQuote body="新しい機能やタスクの時は毎回新しいセッション始めるのがベストプラクティスって読んだ気がする。俺はそうしてるよ。あとClaudeにREADMEとかclaude.mdにアーキテクチャの詳細とか書いてもらうことも多いね。/compactについては、コンテキストウィンドウが終わりに近づいたら（15%くらい）、何をどう圧縮するか具体的に指示してる。例えばデバッグ中なら”このセッションはもうすぐ終わりで、次のセッションでデバッグ続けるよ。このエラーメッセージ…をデバッグする。上手くいかなかったこと全部まとめて、次に何を試すべきか提案して、この作業に重要なアーキテクチャとかファイルもまとめて。それ以外の前半のことは全部無視していい。”って感じ。これ結構上手くいってるよ。デバッグには有効だけど、機能実装の詳細引き継ぎには向かないかな。/compact自体にもコンテキストスペースがいるから、ちょっと余裕残しとくのをお忘れなく。" userName="agotterer" createdAt="2025/06/26 03:21:26" color="#45d325">}}




{{<matomeQuote body="自動でコンパイルされるくらいコンテキストがいっぱいになる手前まで行かないのが一番だよ。/clearコマンドをよく使って、新しいタスクに必要なコンテキストをすぐ作れるようにドキュメントとかマクロを準備しとくといい。もし残量20%の警告が出たら、何かヤバいことになってるから、コンテキストをクリアしてやり直さないと多分結果は良くならないね。" userName="nojs" createdAt="2025/06/26 08:01:36" color="#ff5733">}}




{{<matomeQuote body="今のClaude Codeのベストプラクティスは、重い作業はGemini Pro 2.5とかo3＼o3proに任せることらしいよ。MCPサポートのおかげでかなりシームレスにできる（例：Repo Prompt）。今回のGemini CLIはまだ見てないけど、オープンソースなら他のモデルも繋げられるのかな？LLMがコモディティ化する未来が見えるね。どの企業も自分のLLMを勝ち組にしたいけど、競合が勝つよりコモディティの方がよっぽどマシだろうし。もし将来がCLIエージェント中心なら、派手なUIが勝者総取りになるかっていうと、ちょっと分からないな。今OpenAIはChatGPTのブランド力でユーザー数では勝ってるけど、実際の仕事にはUI劣るしね。" userName="AJ007" createdAt="2025/06/25 15:06:06" color="#ff5c5c">}}




{{<matomeQuote body="AIには得意な分野があると思うな。Webプロトタイピングはsuperficialな作業が多いからAIにめっちゃ向いてる（昔のDelphiみたいにね）。Webが難しいのは色んなフレームワークがあって互換性問題が多いからだけど、LLMはこれを簡単にできる。でも組み込み系みたいな他の分野はワークフローが全然違う。ブレークポイントとかトレースで仮説立てて検証とか、直感に頼る部分が多くて、CLIエージェントには難しいと思う。自動運転に似てるね。高速道路は自動化しやすいけど、雨の山道みたいに判断必要なのは人間じゃないと無理。" userName="sysmax" createdAt="2025/06/25 15:52:17" color="#45d325">}}




{{<matomeQuote body="「opencode-ai/opencode」っていう別のツールも試してみたらどうかな？ URLはこれだよ: https://github.com/opencode-ai/opencode" userName="sagarpatil" createdAt="2025/06/26 02:32:07" color="#785bff">}}




{{<matomeQuote body="Claude Codeで外部モデルを使ってヘビーな処理をさせるのに、どのMCPsが使えるの？<br>ちょっと専門的で分かりにくい質問かもね。" userName="jswny" createdAt="2025/06/26 10:09:04" color="">}}




{{<matomeQuote body="これも見てみたら？「BeehiveInnovations/zen-mcp-server」っていうGitHubリポジトリだよ。URLはこちら: https://github.com/BeehiveInnovations/zen-mcp-server" userName="Matrixik" createdAt="2025/06/26 22:26:31" color="#ff33a1">}}




{{<matomeQuote body="AIに各モジュールを100行のmarkdownで文書化させるのがいいみたい。すごくハイレベルで、詳細はいらないけど、AIが自分で情報を見つけられるように関連ファイルへのポインタを入れるんだ。これでAIにモジュールのコンテキストを与えられるよ。もし100行で書けないなら、それはリファクタリングのいい機会！ Claudeのコンテキストウィンドウで扱えないなら、人間も難しいかもね。LLMに重要なコンテキストを正確に示すのがポイントだよ。" userName="crazylogger" createdAt="2025/06/25 16:35:31" color="#ff33a1">}}




{{<matomeQuote body="やっぱりプロンプトエンジニアリングとか、具体的に指示する方が効果ある気がするな。「バグを全部直して」みたいなのは現実的じゃないんじゃない？" userName="dawnofdusk" createdAt="2025/06/25 15:32:07" color="#785bff">}}




{{<matomeQuote body="いや、でもこれって実際の複雑なコードだと破綻するし、自分で書いた方がコードは重複しないしメモリ効率も倍くらい良くなるんじゃない？<br>もっとソフトが「雰囲気コーディング（vibe coding）」されるようになって、DRAMの需要が通常より増えるかどうか、個人的に見てみたいんだよね。" userName="TechDebtDevin" createdAt="2025/06/25 16:24:02" color="#ff5c5c">}}




{{<matomeQuote body="そうそう、しかも挙動が不安定で、250kトークンとか500kとか、もっと後で起きたりする。詳しく聞いてみると、AIが特定の1つの問題にレーザーフォーカスみたいに固執しちゃって、方向転換させるのがすごく難しいんだ。<br>うまく比較できないけど、AIがまるでスペクトラム症候群みたいに感じる時があるよ..." userName="tvshtr" createdAt="2025/06/25 15:51:32" color="#38d3d3">}}




{{<matomeQuote body="Claudeはセッションが長くなると、コンテキストに追加するためのコードスニペット抽出に苦労するみたい。sedとかrgとかを使ってもファイルから数行を抽出するのにループして、結局諦めるのを見たことあるよ。" userName="ugh123" createdAt="2025/06/25 16:17:37" color="#785bff">}}




{{<matomeQuote body="確か、LLMってある時点で集中力が切れて、投げ捨てて最初からやり直した方がマシなことがあるんだよね、ハハ。" userName="tobyhinloopen" createdAt="2025/06/26 06:22:11" color="">}}




{{<matomeQuote body="確かだけど、Claude Codeはvector DBでコードをインデックス化するらしいよ。だから大規模なコードベースに強いんだね。GeminiCLIにもこれが搭載されてるかは知らないな。" userName="KETpXDDzR" createdAt="2025/06/28 01:58:16" color="#ff5733">}}




{{<matomeQuote body="これ使うとさ、コードとかGoogleに全部送られちゃうらしいよ。規約見たら、プロンプトやコード、生成された出力とかをGoogleのサービス改善のために集めるって書いてあるんだよね。<br>品質改善のために、人がデータを見ることもあるって。でも、プライバシー保護のためにGoogleアカウントとは切り離して、最大18ヶ月保存するってさ。機密情報とか、人に見られてもいいデータ以外は送らない方が良いね。<br>規約はここ→https://developers.google.com/gemini-code-assist/resources/p..." userName="ipsum2" createdAt="2025/06/25 16:21:46" color="#38d3d3">}}




{{<matomeQuote body="それ、ちょっと違うと思うな。無料版でもオプトアウトできるよ。規約の最後に書いてあるんだけど、「Gemini Code Assist for individuals の設定」の手順でオプトアウトできるって。<br>→https://developers.google.com/gemini-code-assist/docs/set-up...<br>有料版を使ってるか、APIキーを従量課金アカウントで使ってる場合は、データは改善に使われないんだって。無料のコンシューマーアカウントで、オプトアウトしてない場合だけみたいだよ。君の説明とは違うんじゃない？" userName="mattzito" createdAt="2025/06/25 16:44:21" color="#785bff">}}




{{<matomeQuote body="「オプトアウトしない限りデータが使われる」って？いやいや、もっと複雑だよ。<br>Google、最近の裁判で、ユーザーがオプトアウトした後でも、別の部署がそのデータで学習してるって証言したんだよ。オプトアウトはGoogle内の一つの部署にしか適用されないっていう抜け穴があるんだって。今捜査中らしいけど、最近の動き見てると信用できないよね。<br>→https://www.business-standard.com/technology/tech-news/googl..." userName="foob" createdAt="2025/06/25 18:21:41" color="#ff5c5c">}}




{{<matomeQuote body="ごめん、それ正しくないよ。リンク見た？それ、CLIじゃなくてIDEのことしか説明してないよ。「VS Code」とか「IntelliJ」って書いてあるでしょ。CLIについては何も書いてないんだよ。" userName="ipsum2" createdAt="2025/06/25 17:01:02" color="#ff5c5c">}}




{{<matomeQuote body="MozillaとGoogleがさ、「gemmafile」っていう代替案を出してるんだ。これはGoogleが「Gemma」って呼んでるGeminiのエアギャップ版で、依存関係なしにローカルで単一ファイルで動くんだよ。→https://huggingface.co/jartine/gemma-2-27b-it-llamafile<br>結構使われてるみたいで、組織の32%が導入してるって。→https://www.wiz.io/reports/the-state-of-ai-in-the-cloud-2025" userName="jart" createdAt="2025/06/25 16:22:43" color="#785bff">}}




{{<matomeQuote body="皆さん、こんにちは。<br>これは本当に素晴らしい議論で、重要な点を指摘してくれて感謝してます。Gemini CLIのプライバシーポリシーが、どうログインするかによって分かりにくかったこと、気づいて指摘してくれてありがとう。<br>全てを明確にするために、アカウントの種類ごとの規約とデータポリシーをまとめた一つのドキュメントを作成しました。このスレッドでの質問もカバーするFAQも含まれてます。<br>リンクはこちら→https://github.com/google-gemini/gemini-cli/blob/main/docs/t...<br>明確さを求めてくれて、重ねて感謝します！" userName="fhinkel" createdAt="2025/06/25 22:37:49" color="#ff33a1">}}




{{<matomeQuote body="この件、configuration.mdの「Usage Statistics」に情報が埋もれてるよ。彼らが収集しないものとしてこう書いてあるんだ。<br>・PII: 個人的な情報は収集しない。<br>・プロンプトと応答のコンテンツ: ログしない。<br>・ファイルコンテンツ: ログしない。<br>→https://github.com/google-gemini/gemini-cli/blob/0915bf7d677..." userName="mil22" createdAt="2025/06/25 17:11:06" color="#ff33a1">}}




{{<matomeQuote body="それってさ、ウォルマートじゃなくて地元の店で買い物しろって言ってた人たちと同じこと言ってるよね。" userName="Xss3" createdAt="2025/06/25 20:19:55" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
