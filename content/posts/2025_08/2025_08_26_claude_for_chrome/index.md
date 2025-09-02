+++
date = '2025-08-26T00:00:00'
months = '2025/08'
draft = false
title = 'ClaudeがChromeで利用可能に！個人情報流出の懸念は？'
tags = ["AI", "セキュリティ", "プライバシー", "Chrome", "LLM"]
featureimage = 'thumbnails/green2.jpg'
+++

> ClaudeがChromeで利用可能に！個人情報流出の懸念は？

引用元：[https://news.ycombinator.com/item?id=45030760](https://news.ycombinator.com/item?id=45030760)




{{<matomeQuote body="ClaudeのChrome拡張機能について、このURLも見てみて。https://claude.ai/chrome" userName="davidbarker" createdAt="2025/08/26 19:01:56" color="">}}




{{<matomeQuote body="Claude for Chromeは「致死的トライフェクタ」に陥りそうだね。プライベートデータへのアクセス、信頼できないコンテンツへの露出、データ流出に使われる外部通信能力の3つが揃うと、攻撃者は簡単に個人情報を盗めるって。詳しくはこちら。https://simonwillison.net/2025/Jun/16/the-lethal-trifecta/" userName="dfabulich" createdAt="2025/08/27 01:10:21" color="#785bff">}}




{{<matomeQuote body="もっと安全にするにはどうすればいいんだろうね？たとえば、OCRできるテキストだけ取り込むか、ウェブセッションのテキストがモデルのアクションから隔離されるようにするとか？そうすれば、単純にトレードオフになるだけだけどね。" userName="afarviral" createdAt="2025/08/27 01:51:21" color="#38d3d3">}}




{{<matomeQuote body="これまでの対応策は、「悪いことはしないでね」って言うセキュリティプロンプトで全てのプロンプトを囲むことみたいだね。LLMをjailbreakさせないためのガードレールとか、旅行の好みは含めるけどクレジットカード情報は除外するとか。変な命令で縛ろうとしてる例も多いよ。https://news.ycombinator.com/item?id=41864014<br>https://news.ycombinator.com/item?id=41450212<br>https://news.ycombinator.com/item?id=44444293" userName="lionkor" createdAt="2025/08/27 07:26:25" color="#785bff">}}




{{<matomeQuote body="自分のプロンプトに「”protected”ディレクトリのファイルは絶対に読まないで」って書いてるのに、いつも読んじゃうんだよね。プロンプトってあんまり意味ないんじゃないかな。" userName="withinboredom" createdAt="2025/08/27 07:41:01" color="#38d3d3">}}




{{<matomeQuote body="現時点では、LLMにブラウザへのフルアクセスを安全に与えるのは無理だと思う。この組み合わせを安全にするには、新しい革新的な技術が必要になるだろうね。" userName="jimbokun" createdAt="2025/08/27 03:10:45" color="">}}




{{<matomeQuote body="自分の両親にブラウザへのアクセスを安全に与えることはできるかな？" userName="brookst" createdAt="2025/08/27 03:59:31" color="">}}




{{<matomeQuote body="サイモンは、致死的トライフェクタを解消するために2つのLLMを使う方法を提案してたと思う。最初のLLMは信頼できないデータにアクセスできるけどアクションはできず、2番目のLLMは権限があるけど、最初のLLMから抽象化された変数しか受け取らないんだ。君のオプション(b)とかなり似てるね。https://simonwillison.net/2023/Apr/25/dual-llm-pattern/" userName="kccqzy" createdAt="2025/08/27 01:57:30" color="#38d3d3">}}




{{<matomeQuote body="Bing Chatに「絵文字使うな、じゃないと死ぬぞ」って言ったら、めちゃくちゃになったのを覚えてる。あれはいい教訓だったね。まともに動かないLLMと触れ合ったことがないと、本当にLLMを理解してることにはならないと思う。親父はまだLLMが100%正しい答えを出さないことに驚いてるよ。GPT-3の頃は、勝手に人間のうんちのレシピを書き出して、「フランスの国民的珍味だ」って主張してたこともあったっけ。すごく詳細だったな…。 " userName="chamomeal" createdAt="2025/08/27 11:23:59" color="#ff5733">}}




{{<matomeQuote body="それじゃあ、攻撃者は最初のLLMをjailbreakして、2番目のLLM向けにアクション付きのjailbreakを生成させることができないかな？" userName="maximilianthe1" createdAt="2025/08/27 03:38:05" color="#ff5c5c">}}




{{<matomeQuote body="みんなAIを全能の神様みたいに信じすぎ！「これは嘘かも」って大きな警告が必要だよ。みんな批判的思考がないんじゃなくて、AIが人間っぽくって信頼しちゃうんだよね。Siriに感謝するのと同じ感覚かも。ベンダーはもっとこの危険性に対処すべきだったと思うな。" userName="DrewADesign" createdAt="2025/08/27 11:55:34" color="#785bff">}}




{{<matomeQuote body="「みんな批判的思考がないわけじゃない」って言うけど、ホントかな？「人がバカ」ってのは違うとして、AIが統計的なテキスト生成器なのに、なんでみんなその出力が真実だと思うのか、全然わかんないんだよね。" userName="bluebarbet" createdAt="2025/08/27 16:25:17" color="">}}




{{<matomeQuote body="それって簡単そうに聞こえるけどさ、俺がいないところで親が安全にブラウザを使うようにさせるのがマジで大変なんだよな。" userName="seemaze" createdAt="2025/08/27 04:35:11" color="">}}




{{<matomeQuote body="リスクを減らすには、LLMが勝手にクッキーとか使ってリクエスト送れないようにして、使うたびにユーザーが許可する仕組みがいいんじゃないかな？そうすれば、デフォルトではヤバいことにならないし、例えばHNアカウントはOKだけど銀行口座はダメ、みたいに自分でリスク選べるようになるよ。" userName="victorbjorklund" createdAt="2025/08/27 06:47:02" color="#785bff">}}




{{<matomeQuote body="そもそも安全なウェブブラウザなんて最初からなかったんだよ。インターネットって根本的にダメな作りだし、プログラマーはずっとその根本的な問題にごまかし続けてるだけ。これは絶対変わらないと思うな。" userName="zwnow" createdAt="2025/08/27 05:46:27" color="">}}




{{<matomeQuote body="これ見てみろよ。<br>https://en.wikipedia.org/wiki/Wikipedia:Don%27t_stuff_beans_up_your_nose" userName="xaitv" createdAt="2025/08/27 07:50:04" color="">}}




{{<matomeQuote body="「Prompt Engineering」とか「Guardrails」がさ、ちゃんとしたセキュリティ対策だと思ってる人なんて、まさかいないよね？" userName="JyB" createdAt="2025/08/27 13:28:28" color="">}}




{{<matomeQuote body="「Easily」って言うけど「Possibly」くらいが正しいだろ。それにAIが俺たちの全データに好き放題アクセスできるわけじゃないよ。新人アシスタントを雇うみたいなもんだ。仕事にはある程度のアクセスが必要だけど、最初から秘密や金庫の鍵を全部渡すなんてバカげてるだろ。" userName="brookst" createdAt="2025/08/27 03:58:54" color="#ff33a1">}}




{{<matomeQuote body="ほとんどのことでさ、「統計的テキスト生成器」って俺たちが知ってる人間とかテキトーなブログより正しいこと多いじゃん？人間も確率で話すし、間違えるしね。でもLLMは俺たちよりはるかにたくさんのこと読んでるから、読書で学べることに関しては、その情報の正確さはかなり広範囲で優れてる傾向にあるんだよ。" userName="crazygringo" createdAt="2025/08/27 17:56:07" color="#45d325">}}




{{<matomeQuote body="なんでみんなこんな詭弁を続けるわけ？Claudeはただのツール、技術の一部だよ。お前の親じゃないし、LLMは人間じゃないんだからさ。" userName="aydyn" createdAt="2025/08/27 06:00:37" color="">}}




{{<matomeQuote body="みんな自分のエージェントに直接root権限を与えてるから、大丈夫なんじゃないかな。" userName="melagonster" createdAt="2025/08/27 07:50:10" color="">}}




{{<matomeQuote body="これ見てみろよ。<br>https://www.youtube.com/watch?v=NquF_-7B9_U" userName="Cthulhu_" createdAt="2025/08/27 07:55:03" color="">}}




{{<matomeQuote body="まさにそうだよ。でももっとひどいのは、これはまるで致命的な”四重苦”みたいだね。情報流出だけじゃなくて、メール送信、金融取引、ブラウザでやる他のこと全部、行動を起こせる能力もあるんだから。" userName="klabb3" createdAt="2025/08/27 01:21:33" color="#38d3d3">}}




{{<matomeQuote body="絶対的な安全性やセキュリティが無理だからって、わざとシステムに脆弱性を増やすべきじゃないよ。OSでもブラウザ自体でも同じ話だ。AIの世界に置いていかれるのを恐れて、やみくもに全部のトレードオフを犠牲にするべきじゃない。" userName="Arisaka1" createdAt="2025/08/27 08:25:05" color="#ff5733">}}




{{<matomeQuote body="記事をよく読めば、このアプローチは非LLMコントローラーを使って、アクション可能なPrivileged LLMと、汚染されてるとされる構造化データだけを生成するQuarantined LLM間の通信を管理してるのがわかるよ。CaMeLも見てみて。汚染データを追跡する型システムを導入してて、Privileged LLMが人間にレビューされるまで汚染データを見れないようにしてるんだ。でもこれだとユーザーが疲れる可能性もあるね。<br>https://simonwillison.net/2025/Apr/11/camel/" userName="dfabulich" createdAt="2025/08/27 06:47:53" color="#ff5c5c">}}




{{<matomeQuote body="ふーん、じゃあLLMが3つもいるのか。" userName="ares623" createdAt="2025/08/27 04:22:14" color="">}}




{{<matomeQuote body="これ、Claude Codeの`--dangerously-skip-permissions`を思い出すな。それに対して俺たち、どんだけ無頓着なんだよ！ブラウザをサンドボックス化して、”無害”なCookieは許可して”有害”なのはダメにするってアイデアを拡張できるかも。いや、Gmailは有害だけど、Gmailなしじゃ何もできないから、うまくいかないか。うーん…" userName="johnfn" createdAt="2025/08/27 10:32:15" color="#ff33a1">}}




{{<matomeQuote body="将来、結果を伴うどんなアクションも、暗号資産の出金レベルのセキュリティが必要になるだろうね。もしかしたら、完了前に顔スキャンまで必要になるかも。" userName="csomar" createdAt="2025/08/27 03:46:14" color="">}}




{{<matomeQuote body="attacker.evilにログイン情報や個人データをリクエストしてごらん。そしたら彼らが好きなように使えるよ。" userName="IsTom" createdAt="2025/08/27 10:26:13" color="">}}




{{<matomeQuote body="ごまかしだと思うならポイントを見逃してるよ。ブラウザはオープンなツールで、熟練者も一般人も銀行取引や買い物など重要なことをブラウザでできる。昔からお年寄りが詐欺に遭う問題もあったしね。Claudeもブラウザを使うツールで、昔ながらの、あるいは新しい詐欺や悪用に弱いだろう。重要な操作をする人は、個人情報を含むブラウザを誰に使わせるか注意すべきだよ。Claudeのようなツールを親と同じように高リスクなブラウジングで信用してはいけない。プライベートモードを使わせたり、管理者権限を与えないなどの予防策をとろう。エージェントがコードか人間かは関係ない。個人ブラウジングコンテキストをどんなエージェントにでも使わせるのは危険で、用心すべきだよ。これは新しいことじゃない。" userName="brookst" createdAt="2025/08/27 17:49:05" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="数ヶ月前、Claudeを含む多くのモデルをサポートし、マウスやキーボード操作、観察ツールを使ってユーザーのブラウザを制御できる似たような拡張機能[1]を僕も作ったんだ。この種の仕組みを理解するのに面白いプロジェクトだよ。でも、まだ技術はそこまで来てないのが明らかだね。ウェブページのDOMやスクリーンショットといった標準表現の情報密度は、LLMが得意な文書やコードと比べて桁違いに低い。だから、これを安定して動かすには、もっと良いウェブページ表現か、もっと高性能なモデルが必要だよ。LLMにDOM操作でフライトを予約させるのは、アセンブリ言語でウェブアプリをコーディングさせるようなもの。Dia、Comet、Browser Use、Geminiなどがこの問題に取り組んでるから、かなりの進歩が期待できるね。ある面白い観察としては、一部のモデルはウェブブラウジングタスクのために明らかにファインチューニングされていて、特定のセレクター（例: Google検索の検索入力欄のセレクターは`.gLFyf`）を記憶していたことだよ。<br> [1] https://github.com/parsaghaffari/browserbee" userName="parsabg" createdAt="2025/08/26 20:24:36" color="#ff5c5c">}}




{{<matomeQuote body="面白いのは、多くのタスクで機械可読なAPIが既存なのに、それらを無視して人間向けのUIを力ずくで操作するという難しい課題が選ばれているシステム設定だよね。フライト予約が良い例だ。旅行代理店はAPIを使って全航空会社のチケット在庫を照会している。つまり、フライト予約の問題は理論上解決済みなんだ。でもAIエージェントにとっては、このAPIを使うルールを作るのは障害になっている。選択肢のない消費者は何が欠けているか知らないから、改善へのインセンティブがないんだ。" userName="asdff" createdAt="2025/08/26 22:53:24" color="#785bff">}}




{{<matomeQuote body="生DOMをLLMのコンテキストにただぶち込むのは、トークン使用量的にはかなりきついよ。全DOMとスクリーンショットを含めると、ページによっては60〜70kトークン食っちゃうから、何も役立つことを始める前にコンテキストウィンドウがほぼ満杯になっちゃうんだ。僕たちはまさにこの問題にhttps://github.com/browseros-ai/BrowserOSで取り組んできたんだ。モデルにDOM全体を投げつける代わりに、Chromiumのレンダリングエンジンにフックして、実際にページにあるもののよりクリーンな表現を抽出してる。僕たちのブラウザエージェントはこのクリーンアップされたデータで動くから、全体のやり取りがずっと効率的になるよ。" userName="felarof" createdAt="2025/08/26 23:55:43" color="#ff33a1">}}




{{<matomeQuote body="LLMは生のDOMじゃなくて、簡略化されコンパクトになったバージョンを見るべきだよ。コンテキストが大きいほど、情報密度が低いほど性能が落ちるからね。良いパフォーマンスのためには、プロンプトへの入力はコンパクトで情報密度が高いものにしないと。E2Eブラウザテストの自動生成ツールを僕も作ったことがあるんだ。サブLLMでコンテキストを圧縮する手もあるし（HTMLセレクターは幻覚を起こえないのが重要）。<br> 現代のLLMはうまく実装すればウェブページを上手に解釈できる。でも、このClaude製品はセキュリティとアプローチの両面で根本的に設計が悪いように見えるし、プロンプトエンジニアリングが解決策だとは全く思わないな。AIが間違ったループ部分を処理して、多すぎるコンテキストを取り込む、質の悪い製品が多すぎるよ。" userName="adam_arthur" createdAt="2025/08/26 22:55:51" color="#ff5733">}}




{{<matomeQuote body="“技術はまだそこまで来てない”って意見、完全に同意だね。これはMCP-B（現在のWebMCP https://github.com/MiguelsPizza/WebMCP）の考え方の根幹なんだ。HN投稿: https://news.ycombinator.com/item?id=44515403<br> DOMとビジュアル解析はブラウザ自動化にとって行き止まりだよ。モデルが悪いわけじゃなくて、ウェブが彼らのためには設計されてないんだ。人間向けに作られてるからね。MCPを介して拡張機能とウェブサイトの間にAPI契約を提供すれば、AIがウェブサイトとファーストクラスの市民としてやり取りできるようになる。これはウェブサイトの所有者からの賛同が必要だけどね。これはウェブ標準として提案されてるよ:<br> https://github.com/webmachinelearning/webmcp" userName="miguelspizza" createdAt="2025/08/26 22:10:49" color="#ff5c5c">}}




{{<matomeQuote body="これは医療分野、少なくともカナダでは巨大な問題だね。医師らが使うEMRのほとんどはAPIがないか、あってもベンダーが厳重に管理してる。EMRはクリニックが扱う数あるツールの一つに過ぎないんだ。相互運用性の欠如が医療システムの最大の問題の一つで、人間向けのUIを介してデータにアクセスすることが唯一の現実的な解決策になるかもしれないよ。" userName="zukzuk" createdAt="2025/08/27 00:40:31" color="#38d3d3">}}




{{<matomeQuote body="これに加えて、旅行代理店の人がフライトチケット予約の“機械可読”APIを操作するために研修を受けるってのもさらに面白いよね。人間が機械インターフェースの訓練を受ける一方で、AIエージェントは人間の仕事を奪うために私たち消費者向けのインターフェース（予約サイトとかね）を使うように訓練されてるなんて、なんて逆説的な状況なんだろう！" userName="shswkna" createdAt="2025/08/27 01:16:30" color="#38d3d3">}}




{{<matomeQuote body="セマンティックウェブを放置して枯らしてしまったことを、今、後悔してる？" userName="Exoristos" createdAt="2025/08/27 04:51:38" color="">}}




{{<matomeQuote body="LLMブラウザエージェントは、広告収入に依存しないウェブサイトには受け入れられるけど、広告収入を重視するサイトは抵抗するだろうね。AI企業がユーザーの注目をウェブサイトに再販する仕組みを作るかも。" userName="chatmasta" createdAt="2025/08/26 22:39:15" color="#45d325">}}




{{<matomeQuote body="Rabbit R1もそうだったけど、UberやDoorDash、SpotifyみたいなサービスAPIはビジネス交渉が必要なんだよね。それを避けてユーザーのようにサービスを使おうとするのは、Rube Goldbergマシンみたいに複雑で、結局うまくいかないか壊れる可能性が高いよ。" userName="makeitdouble" createdAt="2025/08/27 02:24:42" color="#785bff">}}




{{<matomeQuote body="LLMでのUI自動化って、そんなに新しい問題じゃないんじゃないかな。UI自動化技術はLLM登場前からあったし、ちゃんと動いてたよ。不正確なLLMに決定論的な動きをさせようとするのは、どうなんだろうね。" userName="j45" createdAt="2025/08/27 07:34:17" color="">}}




{{<matomeQuote body="LLMがDOMでフライトを予約するのは、アセンブリでウェブアプリを組むようなものだよね。DOMは安価だけど、大事なのはユーザーに見える視覚層だよ。DOMはすでに改ざんされてるのに、LLMが加わるとさらに問題が深刻化して、偽のDOMコンテンツが増えたり、コンテンツが視覚的に隠されたりするだろうね。" userName="threatofrain" createdAt="2025/08/26 21:29:27" color="#38d3d3">}}




{{<matomeQuote body="フライト予約の”API”って本当にひどいんだよ。Travelportの顧客はグリーンスクリーン読み書きソフトを使うし、多くのGDSプロバイダーは古いIBM TPFメインフレームを使ってるんだ。Michael Jacksonの”Thriller”以降に発明されたものはほとんどないって冗談を言ってたぐらい古い技術だよ。" userName="dudeWithAMood" createdAt="2025/08/27 00:36:13" color="#ff5733">}}




{{<matomeQuote body="なんか、兄妹コメントが両方とも競合するAIプロジェクトを売り込んでるみたいに読めるのは僕だけ？まるで同じAIが書いたみたいだよ。" userName="tempestn" createdAt="2025/08/27 02:06:31" color="">}}




{{<matomeQuote body="同僚と話したんだけどさ、LLMがデータ操作や可視化に役立つって言われても、モニターとUIがすでにその役割を果たしてるんじゃないかなって思ったんだ。LLMが”万能のハンマー”みたいに、問題がないところにまで使われてる気がするよ。インターネットをターン制のテキストゲームに変える必要はないし、UIは素晴らしいことが多いよね。" userName="originalvichy" createdAt="2025/08/27 08:03:05" color="#785bff">}}




{{<matomeQuote body="広告収入以外が主力のサイトも、エージェントが主要インターフェースになるのは嫌がるかもね。InstacartはChatGPT Operatorでの注文を歓迎してるけど、主要インターフェースが自社じゃなくなったら、OpenAIが高額な手数料を要求したり、競合に誘導したりする可能性があるよ。AmazonがAlexa以外にウェブサイトを使わせないのと同じ理由だね。そういえばInstacartのCEOがOpenAIのApplications CEOになったのは皮肉だよね。https://www.instacart.com/company/updates/ordering-groceries..." userName="onesociety2022" createdAt="2025/08/26 23:00:24" color="#38d3d3">}}




{{<matomeQuote body="多くのチームが非合理に見える道を選ぶのには理由があるんだ。まず、たくさんのAPIは設計がバラバラだから、ビジネス交渉がうまくいっても開発は大変。次に、APIすらないベンダーも多いんだよね。だから、一度ツールを作ればOKっていう発想が魅力的なんだろうね。" userName="digitaltrees" createdAt="2025/08/27 23:57:42" color="#ff5c5c">}}




{{<matomeQuote body="もしかしたら、AIツールと相性良くするために、もっとシンプルで小さいウェブサイトが作られるようになるかもね。そうなったら嬉しいな。" userName="apitman" createdAt="2025/08/27 01:51:46" color="">}}




{{<matomeQuote body="LLMの利用について、シグナル抽出とノイズ生成の二つの側面で考えてたんだ。LLMは不要な情報から要点を抜き出せる反面、逆に余計な情報を増やすこともできる。もしLLMでシグナル抽出するなら、元の情報はもっと密で分かりやすいべきだよ。<br>また、プログラミングでは、たくさんの細かい決定を下す必要があるけど、LLMはそこでの意思決定を助けてくれるからすごく便利だと思う。例えば、デザインの具体的な要素をLLMに任せることもできるんだ。" userName="chamomeal" createdAt="2025/08/27 11:45:03" color="#ff5c5c">}}




{{<matomeQuote body="疑問なんだけどさ、ベンダーが企業ライセンスのためにAPIを厳重に管理してるのに、LLMがその支払いフローを回避するのを急に許すってことある？LLMがシステムと連携できるのは一時的なもので、広く使われ始めたら、サービスを”海賊版”的に利用するLLMを防ぐためにシステムはロックダウンされる可能性が高いと思うよ。" userName="asdff" createdAt="2025/08/28 01:55:40" color="#ff5733">}}




{{<matomeQuote body="UI自動化の開発と維持にかかるコストは、ほとんどの企業にとって高すぎるよ。" userName="digitaltrees" createdAt="2025/08/28 00:32:25" color="">}}




{{<matomeQuote body="PlaywrightのMCPは、DOMじゃなくてアクセシビリティツリーをデフォルトにするっていう強いアイデアがあったらしいね。残念ながら、それでもかなり重いけど。" userName="commanderkeen08" createdAt="2025/08/27 01:28:07" color="">}}




{{<matomeQuote body="これすごく面白いね。僕らもこの問題の小さい部分に取り組んできたんだ。いくつかの場合で、モデルに発生するイベントのシーケンス（トランジションの動画とか）を何とかして渡す必要があるって分かったよ。<br>例えば、Eコマースサイトでテストケースを実行してたら、初期DOMがレンダリングされた後、アクションする前にランダムなポップアップが出てくることがあったんだ。LLMはポップアップが出たことを知らなかったから、次に取るべきアクションで混乱しちゃってたよ。" userName="kodefreeze" createdAt="2025/08/27 06:26:06" color="#38d3d3">}}




{{<matomeQuote body="Claude Codeと似たような感じで動くんじゃない？コードベース全体を取り込むんじゃなくて、特定の文字列を検索したり、指定された場所から参照を辿ったりする感じで。確かに、全部を取り込むのは無理そうだもんね。" userName="edg5000" createdAt="2025/08/27 06:24:08" color="">}}




{{<matomeQuote body="まさにこれだよ！僕らはブラウザエージェントを開発して、簡素化・コンパクト化したコンテキスト設計と、小さくて効率的なLLMを使うことで素晴らしい結果を得たんだ。試したかったら、smooth.shを見てみてね。" userName="antves" createdAt="2025/08/26 23:33:09" color="#ff5733">}}




{{<matomeQuote body="LLMは生のDOMじゃなくて、もっと単純でコンパクトなバージョンを見るべきだって！まさに！Chromiumのレンダリングエンジンが作るアクセシビリティツリーってのがあって、それが意味のあるDOMのバージョンなんだよね。BrowserOS.comではこれを活用してるんだ。" userName="felarof" createdAt="2025/08/26 23:57:19" color="#ff5c5c">}}




{{<matomeQuote body="browser useとかplaywright、puppeteerで遊びまくったんだけど、特にClaudeってブラウザを操作し出すとすぐに文脈を見失っちゃうんだ。複雑なことやろうとすると、視覚情報とかコンテキスト情報がごっそり消えちゃうんだよね。スクリーンショットと新しいコンテキストウィンドウを強制的に何度も挟むと、多少はClaudeの複雑な操作能力が上がるんだけど、まだ全然弱い感じ。Claudeがブラウザで5つのラジオボタンを正確に理解できるようになったら、本当の進歩だと思ってるよ。今のところ、そういう評価は見たことないな。" userName="aliljet" createdAt="2025/08/26 19:19:46" color="#785bff">}}




{{<matomeQuote body="うちは営業チームのために、企業情報とか技術スタックを見つけるカスタム「ディープリサーチ」をpuppeteerで作ったんだ。LLMにめっちゃ限られたツールだけ与えて、スクリーンショットなしでやったら、かなりうまくいったよ。俺の用途だと`navigate_to_url`と`click_link`以上のインタラクティブ性は必要なかったしね。各ツールはページのテキストバージョンとクリック可能なオプションの配列を返す感じ。基本的な質問にはちゃんと答えられる。今はGPT-5を使ってるけどね。" userName="jascha_eng" createdAt="2025/08/26 20:58:38" color="#45d325">}}




{{<matomeQuote body="全部を一つのコンテキストに突っ込むと、数回で破綻しちゃうんだよね。俺はエージェントの階層構造でより成功したよ。スーパーバイザーエージェントが主要な目標に集中して、ターンごとに計画を修正するんだ。そんで、有望なサイトを探すサブエージェントを呼んで、検索結果の各サイトにはさらにサブサブエージェントを割り当てる。ページやステップが多いサイトを巡回するときは、各ページやステップにサブサブサブエージェントを使ってもいい。このサブサブサブエージェントがそのページやステップの全コンテキストを持って、内容の短い要約とか実行したアクションの結果をサブサブエージェントに返すんだ。サブサブエージェントは親であるサブエージェントに重要な詳細だけを返す。こうすれば、スーパーバイザーエージェントがコンテキストウィンドウを使い果たしたり、目的を見失ったりせずに、トップレベルで何回もターンを続けられるわけ。" userName="panarky" createdAt="2025/08/26 21:49:37" color="#ff33a1">}}




{{<matomeQuote body="うん、俺のブラウザエージェントはそれぞれ約50～100ターン（だいたい3～5分）で一つの目的に集中してるんだ。見つけた情報は、最後に構造化出力を使って標準形式にまとめるんだ。その「リサーチエージェント」が4つあって、それぞれ違うプロンプトで順番に動かしてる。そして最後に、結果のJSONだけを入力にして、Slackメッセージに整形したり、要約して評価するんだ。これは本当にうまくいくよ。リードがうちにとってどれだけ有望かをスコアリングするのに使ってるんだ。" userName="jascha_eng" createdAt="2025/08/26 22:28:17" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="`navigate_to_url`とか`click_link`みたいなのって、LLMにpuppeteerスクリプトを作らせて、うまくいけばこのシンプルなアクションを信頼性高くやらせるより、普通のスクリプトでpuppeteerを動かした方が解決するんじゃない？この場合、LLMツールを使う大きな利点って何なのさ？" userName="asdff" createdAt="2025/08/26 22:57:04" color="">}}




{{<matomeQuote body="ああ、ツールは手書き（というかClaude Codeで作った）だけど、エージェントがそれらを呼び出してブラウザを制御するんだ。こんなプロンプトを想像してみてよ：「君はリサーチエージェントだ。この会社の技術スタックを特定するのが目標だ：- 会社名。使えるツールは：- `navigate_to_url`: これを使ってページを読み込む。例えばGoogleやBingで会社のサイトを検索してね。ページのコンテンツと利用可能なリンクのリストが返ってくるよ。- `click_link`: これを使って現在開いているページの特定のリンクをクリックする。これも現在のページのコンテンツと利用可能なリンクを返すよ。良い戦略はたいてい、会社のキャリアページに行って、技術職を探すことだ。」これは実際に書いてあるものの短いバージョンだけど、うちはPostgreSQLとAWSをベースにしてるから、会社がそれらを使ってるなら、すごく興味深い関連性シグナルになるんだ。これでリードのスコアリングをしてるんだよ。" userName="jascha_eng" createdAt="2025/08/26 23:09:38" color="#38d3d3">}}




{{<matomeQuote body="LLMが何してるのか、まだよくわかんないんだけど。これって数行のcurlと、クエリするツールのリストがあればできることじゃないの？" userName="asdff" createdAt="2025/08/26 23:20:41" color="">}}




{{<matomeQuote body="LLMってさ、どんなウェブページでも理解して正しいリンクをクリックできるんだって。特定のページじゃなくて、企業名を言えばどんな会社のページからでも使ってる技術リストを教えてくれるんだよ。<br>ページの構造とか関係ないって。このレベルの汎用的な理解は、正規表現やcurlだけじゃ無理だよ。" userName="jascha_eng" createdAt="2025/08/26 23:59:20" color="#785bff">}}




{{<matomeQuote body="いや、できるって！ウェブページの全リンクを再帰的に巡回して、目的の言葉を探すことなんてできるよ。<br>wgetやcurlをパイプでいくつか繋げば多分いける。具体的なコマンドはman pages見ないとだけど、みんな昔からやってることだから。<br>そもそも、こんな方法でLLMがちゃんと動くか検証しないの？" userName="asdff" createdAt="2025/08/27 00:17:31" color="#ff33a1">}}




{{<matomeQuote body="これ、めっちゃクールじゃん！<br>ブラウザで直接”ディープリサーチ”みたいなエージェントが使えたら、便利じゃない？<br>僕らBrowserOSで、まさにそれ作ってるんだよ！" userName="felarof" createdAt="2025/08/26 23:59:29" color="">}}




{{<matomeQuote body="ほんとそれ。簡単なループ作業（スクショ撮って、次へクリックして、繰り返し）をやらせようとすると、100回くらい必要なのに5回くらいで”全部終わったよ、ボス！”って言われちゃうんだよね。<br>Anthropicのブラウザ拡張機能が、Claude Codeみたいにこういう限界を乗り越える”トリック”を使ってくれるといいな。" userName="MattSayar" createdAt="2025/08/26 19:32:06" color="#38d3d3">}}




{{<matomeQuote body="Claudeってさ、GeminiやChatGPTと比べると視覚能力がめちゃくちゃ低いんだよね。<br>Anthropicは評価をコーディングとかテキストのユースケースに過学習させすぎてる気がする。<br>安易にブラウザ利用を追加しても大丈夫かな、ちょっと懐疑的だね。" userName="robots0only" createdAt="2025/08/26 19:58:54" color="#ff5733">}}




{{<matomeQuote body="僕の経験は全然違うよ。スクリーンショットをCCに貼り付けるのが、僕の定番なんだ。<br>そうすると、CCは何をすべきか理解してくれることがほとんどだからね。" userName="bdangubic" createdAt="2025/08/26 20:07:45" color="#ff5733">}}




{{<matomeQuote body="もし、特定のタスクで最高になるんだったら、それって”過学習”って言うの？" userName="user453" createdAt="2025/08/26 21:05:06" color="">}}




{{<matomeQuote body="僕が試したブラウザベースのツールは全部、まさにこの経験だったよ。<br>ChatGPTのエージェントが一番進んでるけど、それでも10回くらいの反復が限界なんだよね。" userName="CSMastermind" createdAt="2025/08/26 20:19:09" color="#45d325">}}




{{<matomeQuote body="「百万回の反復を実行する短いスクリプト」を頼む方が、直接LLMに変更させるよりも成功するんだ。（追記：これはIDEでの話で、ブラウザじゃないけどね。)" userName="rzzzt" createdAt="2025/08/26 20:39:25" color="#785bff">}}




{{<matomeQuote body="精度が必要なら、それが一番の方法だよね。それに、たいてい安くて速いし。" userName="seunosewa" createdAt="2025/08/27 11:17:15" color="#785bff">}}




{{<matomeQuote body="ClaudeのChrome版がバニラのClaudeなのか、ブラウザ用にファインチューニングされたバージョンなのか疑問だね。LLMをRLファインチューニングすると驚くほど良い結果が出るんだ。BrowserOS（https://www.browseros.com/）でQwen3:4BをGRPO訓練したら、バニラのClaudeやGPTよりずっと良かったよ。" userName="felarof" createdAt="2025/08/27 00:05:47" color="#785bff">}}




{{<matomeQuote body="ブラウザでの使用例に基づいてモデルを訓練するっていう「コツ」の一つだといいな。" userName="tripplyons" createdAt="2025/08/26 19:46:55" color="">}}




{{<matomeQuote body="Context rotっていう概念があるよ。これに関する記事は<br>https://news.ycombinator.com/item?id=44564248<br>を見てみて。" userName="philip1209" createdAt="2025/08/26 20:12:58" color="#45d325">}}




{{<matomeQuote body="Skyvern（https://github.com/Skyvern-AI/skyvern）を試したことある？もし良かったら意見を聞かせてほしいな。" userName="suchintan" createdAt="2025/08/27 01:46:43" color="">}}




{{<matomeQuote body="ちゃんと動くっていう実際の証拠を待つのは良いアイデアだね。ブラウザ利用向けに訓練されてない同じモデルをただ使ってないことを願うよ。" userName="tripplyons" createdAt="2025/08/26 19:31:21" color="">}}




{{<matomeQuote body="これからの時代、AIがウェブページをちゃんと理解できるようになって、ちゃんとしたウェブアクセシビリティの時代が来るかもね。" userName="lopis" createdAt="2025/08/27 08:44:27" color="#45d325">}}




{{<matomeQuote body="これが「セマンティックウェブ」とウェブアクセシビリティが真剣に考えられるようになるきっかけになるかもね。" userName="rukuu001" createdAt="2025/08/27 00:17:50" color="#ff33a1">}}




{{<matomeQuote body="公式ブログによると、対策後もモデルの攻撃成功率が11%もあるんだって。メインブラウザにアクセスさせるのはまだ全然安心できないよ。限定的な公開で良かったね。（余談だけど、このページってなんでこんなに壊れてるの？ほとんど隠されてて見えないんだけど。）" userName="biggestfan" createdAt="2025/08/26 19:11:15" color="#ff5733">}}




{{<matomeQuote body="この記事を読んで強く感じたのは、Anthropicは今この種のことを安全にするのは不可能だと考えてるってこと。Perplexityとかからユーザーを遠ざけたいんじゃないかな。市場シェアを失うのを避けつつ、未完成の製品を出さないためだね。もっと面白い疑問は、将来的に安全にできる手段があるかってことだけど、近い将来はかなり懐疑的だよ。" userName="mkozlows" createdAt="2025/08/27 00:40:01" color="#ff5733">}}




{{<matomeQuote body="「安全にできない」っていう前のコメントの意見は、記事の最初の文章と直接矛盾するよ。「私たちはClaudeをカレンダー、ドキュメント、そして他の多くのソフトウェアに接続するのに最近数ヶ月を費やしてきたんだ。次の論理的なステップはClaudeにブラウザで直接作業させることだよ。」って記事にはあるからね。利他主義を言い訳にするのは、せいぜいごまかしだよ。" userName="AdieuToLogic" createdAt="2025/08/27 01:53:04" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
