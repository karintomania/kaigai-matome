+++
date = '2025-08-06T00:00:00'
months = '2025/08'
draft = false
title = 'EmacsにClaude Codeが統合！まるでIDEのような開発体験を実現'
tags = ["Emacs", "Claude Code", "AI", "開発環境", "プログラミング"]
featureimage = 'thumbnails/cyan4.jpg'
+++

> EmacsにClaude Codeが統合！まるでIDEのような開発体験を実現

引用元：[https://news.ycombinator.com/item?id=44811567](https://news.ycombinator.com/item?id=44811567)




{{<matomeQuote body="LSPやTree-sitterみたいに、Claude CodeやAiderみたいなAIコーディングツールはEmacsやVimみたいなニッチなエディターにとって朗報だね。IDEみたいな機能の実装で苦労する代わりに、これらのツールと簡単に連携できるし、独自のエディター機能に集中できる。実は、これらエディターはカスタマイズ性が高く、ツール連携がしやすいから、もっと競争力が出ると思うよ。" userName="blahgeek" createdAt="2025/08/06 14:01:20" color="#ff5c5c">}}




{{<matomeQuote body="Vimがニッチだって？StackExchangeの調査によると、NeovimとVimは開発者の38%以上が使ってるんだぜ。3人に1人以上、5人に2人近いじゃん。最近ここどうなってるんだか分からないけど、俺が成長しすぎたのか、それとも毎日ちょっとずつCSについて話すべきじゃない人たちが増えてきてるのか？" userName="throwaway4496" createdAt="2025/08/07 02:39:30" color="">}}




{{<matomeQuote body="LSPが言語ごとの機能統合を可能にするみたいに、エージェント型コーディングツールをエディターに統合するための標準ってあるのかな？" userName="mikece" createdAt="2025/08/06 14:06:26" color="">}}




{{<matomeQuote body="gptelはMCPやLSPほどじゃないけど、活気あるエコシステムでゴッドモードだよ。VSCodeを圧倒する。今、超時間プレッシャーで、gptelでOpus 4を使うのは”コストなんかどうでもいい”って感じ（QwenとK2が、癖を掴むとOpus 4を置き換えてるけど、負荷時のOpus 4 TTFTは使えないし、”トークンけち”な設定だと劣る）。Cursorの妥協につきあってる時間はない。超強力でコスト無視、マージンにチューニングされたスタックが必要なんだ。VSCodeベースではそんなもの知らない。他も試したが比較にならないね。Neovimにも同じくらい良いものがあるだろう。" userName="benreesman" createdAt="2025/08/06 14:33:19" color="#45d325">}}




{{<matomeQuote body="gptelだけ使ってるの、それともAiderやClaude Codeも使ってるの？もし時間があったら、ワークフローについてもっと聞きたいな！" userName="cvdub" createdAt="2025/08/06 15:39:21" color="">}}




{{<matomeQuote body="もちろん。みんなと同じように試行錯誤中だけど、主にgptelをメインに、Claude Codeはリファクタリングとか”機械的以上、創造的未満”な編集に使ってるよ。これら2つはMagitと組み合わせると最高なんだ。AI監視のために設計されたみたいに天才的だよ。Claude Codeには、”バイブスでコード”したいものはHaskellに、設定はDhallに、デプロイはチェックが厳しいNixに切り替えてる。これでプロパティテストと合わせると、Claude Codeを厳しく制限できて、役立つコードが出るまでコンパイラをループさせられるんだ。プロンプト改ざん防止やGHCで-Wall -Werrorを有効にすると逃げ場がない。Emacsでelispも書いてるけど、gptelが強力すぎてチューニングの価値があるのか迷うね。質問があれば答えるよ。" userName="benreesman" createdAt="2025/08/06 15:52:15" color="#ff5c5c">}}




{{<matomeQuote body="この10年EmacsとVimしか使ってない者として、あんたが正しければいいんだけど。でも俺の観察だと、あの38%の開発者の90%は、SSHでサーバーに繋いでちょっと設定ファイルを更新したりスクリプトをちょこっといじる時にVimを使うだけ。本格的なプログラミング（プロジェクトで何百行もコード書くような）は、VSCodeみたいな他のIDEに切り替えてるよ。だから個人的には、VimとEmacsはやっぱり”ニッチ”なエディターだと考えてるね。" userName="blahgeek" createdAt="2025/08/07 04:42:25" color="#ff5c5c">}}




{{<matomeQuote body="ええ、それが事実だとしても、40%近くの開発者が使ってるツールのどの部分がニッチなの？<br>niche<br>/niːʃ,nɪtʃ/<br>（形容詞）<br>人口の小さい、専門的な層にアピールする製品、サービス、または興味を表す。" userName="throwaway4496" createdAt="2025/08/07 05:52:03" color="">}}




{{<matomeQuote body="”かまけてる暇はない、毎日死ぬ気でやる”って？落ち着けよ。あんたが書くことなんて、半年後には何の意味もなくなってるさ。" userName="sexyman48" createdAt="2025/08/06 16:14:53" color="">}}




{{<matomeQuote body="CSを語るべきじゃない人へ。Dijkstraの言う通り、CSはコンピュータと密接だけどエディタ選びじゃない。昔は.vimrc使ってたけど、今はVSCodeやIntelliJがメインだ。エディタ選択なんてCS理解には一番重要じゃない。デバッガやプロファイラ、監視ツールの方が問題解決にマジで影響するぜ。" userName="never_inline" createdAt="2025/08/07 17:48:50" color="#ff5c5c">}}




{{<matomeQuote body="それ（Emacs/Vim）は開発作業だとニッチだよ。開発者が使ってるからって、それが開発ツールとして使われてるとは限らないんだ。じゃないと、一番使われてる開発ツールはトイレになっちまうぜ。" userName="davrosthedalek" createdAt="2025/08/07 08:14:47" color="">}}




{{<matomeQuote body="EmacsとVimはニッチじゃないよ、笑" userName="peterjliu" createdAt="2025/08/07 00:12:10" color="">}}




{{<matomeQuote body="長年の経験から、こんな調査より自分の目を信じるぜ。代替手段がない（つまりSSH経由で使うとか）場合を除けば、EmacsやVimの使用率は確実に10%より全然低いと思うね。" userName="siva7" createdAt="2025/08/07 05:22:22" color="">}}




{{<matomeQuote body="15年間Emacs一筋だけど、これまで勤めた会社でEmacsユーザーに一度も会ったことないんだ。Vimユーザーは山ほどいたけど、Emacsは本当にゼロだったぜ。" userName="mickael-kerjean" createdAt="2025/08/07 01:44:04" color="">}}




{{<matomeQuote body="違うね。俺はVimを毎日使ってるけど、コミットメッセージを書くことしかしないんだ。それ以外の作業はIDEか別のエディタでやってるよ。きっと俺みたいな奴は他にもたくさんいるはずだぜ。" userName="AndyPa32" createdAt="2025/08/07 08:57:06" color="#45d325">}}




{{<matomeQuote body="俺はVimを10年以上使ってるけど、知ってるコマンドは保存、終了、行番号表示、シンタックスハイライトくらいだよ。お前の統計に出てくる人の90%は俺みたいなもんだと思うぜ。" userName="xmhsez" createdAt="2025/08/07 05:34:01" color="#785bff">}}




{{<matomeQuote body="あといくつかあるぜ！これ全部バックエンドの仕事？Haskell系のフロントエンド言語、Elmとか試したことある？<br>そうそう、EmacsのMagitがAIの監督にすごく向いてて、天才が作ったみたいに思えるって話だけど、この点についてもう少し詳しく教えてくれるか？" userName="neutronicus" createdAt="2025/08/06 20:24:42" color="#45d325">}}




{{<matomeQuote body="EmacsにClaude Code統合ってヤバいね！それで何作ったの？Emacsユーザーとして、gptel、magit、tramp、org-mode以外で知られてない良いパッケージやelispスニペットとかない？他にはどんなEmacsエコシステムを使ってるの？" userName="aquariusDue" createdAt="2025/08/06 16:33:36" color="#785bff">}}




{{<matomeQuote body="いいね。どんな開発してるの？誰がお金出してるの？" userName="AlexCoventry" createdAt="2025/08/06 20:13:59" color="">}}




{{<matomeQuote body="俺もそうだよ。大企業で働いてるけど、Emacsユーザーにはまだ会ったことないんだよね。" userName="reddit_clone" createdAt="2025/08/07 04:02:57" color="">}}




{{<matomeQuote body="それには同意できないけど、テキストエディタの選択だけの話じゃないのは確かだね。長年働いてて、なんでみんなカーソル移動に矢印キーを使うんだろう？この非効率性の解決策は昔からあるし、ほとんどのツールで使えるのに。自動化が重要なこのメディアの精神に反してるよ。" userName="wraptile" createdAt="2025/08/08 05:06:04" color="#45d325">}}




{{<matomeQuote body="君らの会社に#emacsのSlackチャンネルとかないの？うちの中規模なテクノロジー企業だと、Emacsユーザーは片手で数えるほどしかいない気がするよ。チャンネルはほとんど動いてないけど、たまにヒントやMacへのインストール方法が聞かれるくらいかな。どういうわけか、Emacs使うマネージャーが多いみたいだね、歳もあるかもだけど。(俺はJVM関係以外は本気でEmacsを使ってるよ。git関係は全部Emacs/Magitでやってるけどね)" userName="kelvie" createdAt="2025/08/07 05:23:24" color="#ff5c5c">}}




{{<matomeQuote body="Emacsは本当の生産性のボトルネックじゃないよ。車のペダルがどれだけ近いかで移動時間が変わらないのと同じくらい、どうでもいいことだ。" userName="jama211" createdAt="2025/08/08 19:31:19" color="">}}




{{<matomeQuote body="ごめん、他のコメントでdotfilesの質問があったの気づかなかったよ。キーファイルは全部ここにGistでリンクされてるよ: https://news.ycombinator.com/item?id=44817968<br>何か質問（または提案）があったら教えてね、まだ改善の余地があるから。" userName="benreesman" createdAt="2025/08/06 22:15:56" color="#ff33a1">}}




{{<matomeQuote body="dotemacsやgptelの設定をシェアしてくれない？EmacsのAI統合には満足してないんだ。モデルへの直接編集や制御方法を知りたいな。gptelも数ヶ月使ってるけど、まだすごくぎこちないんだ。" userName="yablak" createdAt="2025/08/06 20:55:54" color="#ff5c5c">}}




{{<matomeQuote body="EmacsはAIエージェントにとって究極のエディタだと思ってたんだ。elispでエディタの状態にアクセスしたり、振る舞いを簡単に変えたりできるし。VimやEmacsみたいに高いカスタマイズ性を持つエディタは、今後大きなアドバンテージになりそうだね。" userName="yoyohello13" createdAt="2025/08/06 15:42:56" color="#ff33a1">}}




{{<matomeQuote body="VimとEmacsは常に利点があったんだ。VSCodeやIntelliJの閉鎖的な拡張モデルは大きな欠点だよ。俺はEmacsのおかげで”目標指向”で作業できるし、IDEでよくぶつかる制限が Emacsにはない。IntelliJを10年使ってたけど、Emacsでの問題解決は段違いだよ。" userName="iLemming" createdAt="2025/08/06 18:41:09" color="#ff5733">}}




{{<matomeQuote body="10年前、EmacsからJetBrainsに乗り換えたんだ。当時はEmacs風の機能を手軽に使える”イケてるヤツ”だった。でも今は、単なる多機能IDEになっちまった。テキストファイル編集も非実用的でさ。でもEmacsは、JetBrainsとは違って、これからも機能的であり続けるだろうな。" userName="smaudet" createdAt="2025/08/06 19:29:00" color="">}}




{{<matomeQuote body="俺は筋金入りのJetBrains信者だったんだ。WebStormがEmacsに乗り換えを遅らせた最大の理由だね。Emacsを学んでも、できないことだらけで後悔するんじゃないかって不安だったけど、とんでもない間違いだった！Emacsで必要なものは全部見つかったし、全く違う問題解決法も発見できたんだ。もっと早くEmacsを試さなかったことが最大の心残りだよ。だから、みんなにEmacsのすごさを伝えたいんだ！" userName="iLemming" createdAt="2025/08/06 22:06:07" color="#38d3d3">}}




{{<matomeQuote body="Emacsの利点はLispインタープリタコアにあるんだ。AIエージェントは、ユーザーと同じ評価メカニズムでエディタ全体の状態をランタイムで調査・変更できる。これは、厳格なプラグインAPIを持つほとんどのエディタとは違う点だね。" userName="ethan_smith" createdAt="2025/08/06 22:29:30" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="この新しいパッケージには疑問符が付くんだ。Emacsにはすでに優れた汎用LLMラッパー（gptelやllm）があるし。俺は現在gptelを好んでるよ。LLMを切り替えたり、ローカルLLMを使ったりできるのが強みだ。プロジェクト情報はまだ不十分だけど、chat bufferでのLLMとツールの連携はうまくいく。俺のgptel-tool-library（https://github.com/aard-fi/gptel-tool-library）を見てくれ！<br>buffer-turtle（https://github.com/aard-fi/buffer-turtle）やarch-installer（https://github.com/aard-fi/arch-installer）みたいな楽しい実験もしてるぜ。" userName="finaard" createdAt="2025/08/07 05:22:40" color="#ff5c5c">}}




{{<matomeQuote body="俺はhttps://github.com/stevemolitor/claude-code.elを快適に使ってるよ。これは単なるターミナルラッパーだけど、Emacs内で動かすだけでかなり強力だ。もっと効率的なワークフローを簡単に作れたからね。新しい提供品も注目するけど、生産性ツールは慎重に採用したいかな。Clojureコミュニティで人気のclojure-lspの作者によるeca-emacs（https://github.com/editor-code-assistant/eca-emacs）も試してみたいぜ。" userName="vemv" createdAt="2025/08/06 14:00:10" color="#ff33a1">}}




{{<matomeQuote body="俺もclaude-code.elをちょっと試したけど、結局ターミナルに戻ったんだ。Emacs内だと少しぎこちなくて、別のターミナルウィンドウを使う以上のメリットがなかったからね。この新しいプロジェクトがうまくいくか疑問だな。既存のmcp.el（https://github.com/lizqwerscott/mcp.el）と連携しないのは残念だけど、俺もmcp.elは設定してなかったし。まだclaude codeを仕事で使えるレベルのコードを生成させられてないから、あまり使ってないんだ。" userName="mijoharas" createdAt="2025/08/06 15:18:21" color="">}}




{{<matomeQuote body="gptelとmcp、Claude (Copilot経由) を使ってEmacsでAIアシスタントをうまく使ってるよ！<br>設定方法の記事もあるから見てみてね: https://her.esy.fun/posts/0029-ai-assistants-in-doom-emacs-3...<br>gptelはClaudeからollamaやgpt4allみたいなローカルLLMへの切り替えも簡単で、インターフェースも似てるのが超便利！" userName="yogsototh" createdAt="2025/08/06 17:28:56" color="#ff5733">}}




{{<matomeQuote body="EmacsがLSPやtree-sitter、Claude Codeを統合するのは嬉しいけど、このアプローチは古さを感じるね。<br>20年Emacsユーザーだけど、最近の設定は超大変だよ。<br>macOSでTypescript/Goのリポジトリでlspやtsを動かすのに苦労してる。<br>Emacsユーザーは最近どうしてるの？ Zedも良いけど20年のEmacsは捨てられないな。<br>neovimの方がいいのかな？ elispのデバッグを学ぶべき？" userName="Karrot_Kream" createdAt="2025/08/06 17:12:00" color="#ff33a1">}}




{{<matomeQuote body="「elispのデバッグを学ぶべき？」って？もちろん学ぶべきだ！<br>何十年もEmacsを使ってるのに、プロファイラやedebug、aproposなんかの組み込みツールを知らないなんて信じられない。<br>Emacsは生きてるシステムなんだから、トラブルシューティングの知識は必要だよ。<br>問題を見つけてgptelでelisp書かせたり、その場で試したりできるのは本当に最高なんだ！<br>「クリーンな設定」は目指さない。壊れてもすぐ直せるから腹も立たないね。" userName="iLemming" createdAt="2025/08/06 18:56:02" color="#ff5c5c">}}




{{<matomeQuote body="Emacs歴8年だけど、2ヶ月前にneovimに乗り換えて、もうEmacs開いてないよ。<br>lazy.vim使ってLazyExtrasでAIツールをガンガン試してる。<br>neovimのエコシステムはEmacsよりずっと良くて、AIツールに関するコミュニティの活動も活発だね！ThePrimeagenを見てみて。" userName="komali2" createdAt="2025/08/07 00:34:22" color="">}}




{{<matomeQuote body="neovimに「乗り換えた」って聞くと、正直理解できないな。<br>俺にとってEmacsは単なるテキストエディタじゃない。動画再生、PDF注釈、Ankiカード管理、APIテスト、dotfiles管理、ファイル管理、Web検索、シェルコマンド実行、メール、時間追跡、Hacker News/Reddit、プレゼン、DBクエリ、Docker、man pages、翻訳、LLM連携...。<br>これら全部Emacsでやってるんだ。<br>俺の人生すべてがこのテキストベースのOSに織り込まれてる。Emacsは俺が生きる場所なんだ。" userName="iLemming" createdAt="2025/08/07 04:21:05" color="#ff5733">}}




{{<matomeQuote body="あなたのEmacs知識には本当に嫉妬するね！僕の環境はこれだよ: https://blog.calebjay.com/posts/my-emacs-environment/<br>多くのタスクは、専用ツールの方が良いUXを得られると僕は思う。<br>動画はFirefox、PDF注釈はやめた、Ankiもやめた。<br>APIテスト、dotfiles管理、ファイル管理、Web検索、シェル連携、テーマ変更、メール、時間管理、Reddit/HN、プレゼン、DBクエリ、Docker、man pages、翻訳...。<br>それぞれのタスクでEmacsの代替案と自身の選択を説明。LLM統合は期待してるけど、Cursorのタブ補完には及ばない。<br>org modeもTrilium-nextに移行したよ。<br>「乗り換え」を勧めてるわけじゃないけど、僕はEmacsをそこまで極められなかったんだ。" userName="komali2" createdAt="2025/08/07 04:59:13" color="#38d3d3">}}




{{<matomeQuote body="あなたのメッセージ後半は興味深いけど、前半は無用に高圧的だよ。" userName="macintux" createdAt="2025/08/06 19:33:59" color="">}}




{{<matomeQuote body="高圧的かもしれないけど、不満は理解できるはずだ。<br>VSCodeは勝手に広がるけど、Emacsは違う。<br>「Emacsを長年使ってたけど乗り換えた」って言う人は、単なる「テキスト編集」しかしてないことが多い。<br>それは「使ってる」んじゃなくて「ちょっと触ってる」だけ。<br>Emacsは深掘りすればするほど価値が出るツールなんだ。<br>表面的な機能だけ比較してEmacsを批判するのは、Emacsの本質を見誤ってる。" userName="iLemming" createdAt="2025/08/06 20:44:01" color="#ff33a1">}}




{{<matomeQuote body="こういうコメントはEmacs嫌いを増やすと思うよ。<br>ほとんどの人はエディタの「エキスパート」になりたいわけじゃない。<br>「プログラミングしないと使ってることにならない」なんて言うのは、初心者に「使うな」って言ってるのと同じだよ。<br>「アドバイスを書かなくても」「パッケージを公開しなくても」「customizeで」使っても、Emacsは十分素晴らしい。<br>開発者はEmacsを使いやすくするために色々な機能を追加してるんだから、Lispの達人じゃなくても、ぜひEmacsを楽しんでほしい。" userName="massysett" createdAt="2025/08/08 03:05:37" color="#ff5733">}}




{{<matomeQuote body="僕は同意しないね。ネットのコメントでツールから離れるようなら、その人はまだ準備ができてないんだろう。<br>「Emacsを十年間、ただのテキストエディタとして使った」ってのは、「スマホを2年使って通話しかしたことない」ってのと同じくらい変だ。<br>EmacsはLispベースのイベントループなんだから、Lispを書くのはゲームみたいに楽しいはず。<br>「エキスパート」なんていないし、「初心者」も「プロ」もない。<br>ただ楽しむか、そうじゃないか、それだけだ。僕自身は、若い頃にこんな熱い「エバンジェリズム」に触れたかったよ。" userName="iLemming" createdAt="2025/08/08 04:41:25" color="#ff5c5c">}}




{{<matomeQuote body="伝道には2つの方法があるんだ。一つは「罪人だから悔い改めろ」ってやつ。もう一つは「まだ知らないけどこの世界は最高だよ、教えてあげる」ってやつ。多くの人は後者に良い反応を示すよね。" userName="macintux" createdAt="2025/08/08 14:16:49" color="">}}




{{<matomeQuote body="Emacsは個別の機能だと最強じゃないけど、全てを繋ぐ接着剤みたいに機能するから最高なんだ。Lispマシンだと理解すれば使い方がガラッと変わるよ。<br>mpv.elで動画操作したり、org-noterでPDFに注釈つけたり、Org-modeでAPIテストしたりしてる。AnkiもOrg-modeで管理してるんだ。めっちゃ便利だよ。 https://news.ycombinator.com/item?id=44131735" userName="iLemming" createdAt="2025/08/07 17:41:20" color="#ff5c5c">}}




{{<matomeQuote body="俺が言いたいのは、EmacsをLisp環境として最初から理解してほしいってこと。表面的な使い方だと「不満」って言う人が多いけど、それってピアノを打楽器として使うようなもんだよ。<br>最初からプログラマブルな性質を受け入れれば、想像もしなかった可能性に気づけるはず。俺はEmacsに出会うまで無駄にした時間を後悔してるよ。" userName="iLemming" createdAt="2025/08/08 19:21:50" color="#785bff">}}




{{<matomeQuote body="Neovimへの移行どうだった？APIテストの話、めっちゃ気になるよ！<br>Emacsのツールって結構放置されがちで、それが嫌なんだよね。プレゼンはOrg-modeでPDF生成するとどこでも使えるよ。<br>Neovimに乗り換えようか迷ってるんだ。Unixツールとの連携やデバッグのしやすさに魅力を感じる。<br>でもEmacsの編集体験、特にelispで色々自動化できるのは捨てがたいんだよな。DvorakだからVimのキーバインドも気になるし。" userName="Karrot_Kream" createdAt="2025/08/07 08:37:35" color="#45d325">}}




{{<matomeQuote body="新しい言語をEmacsに統合するのは大変だけど、Nix（devenv.sh）とdirenvを使えば外部ツール（LSPサーバーとか）の管理が楽になるんだ。Emacsが自分でダウンロードしなくていいし、パスから見つけるだけ。<br>これで設定もソース管理できるし、チームのみんなもエディタ関係なく同じツールを使えるようになるよ。" userName="pxc" createdAt="2025/08/06 23:29:54" color="#ff5c5c">}}




{{<matomeQuote body="Org-babelでdotfiles管理はマジ最高。一つのファイルでシステム全体を管理できるし、新しいマシンでもすぐ起動できる。<br>Diredもファイル管理にめちゃくちゃ便利。Embarkでコンテキストに応じたアクションもできるよ。<br>Eshellでコマンド結果をEmacsバッファに残せるし、manページもLLMで解説させたり、翻訳で数字を文字で読ませたりできるんだ。<br>gptelでのLLM統合もヤバい。Emacsはテキスト関連なら何でもできるって実感してる。" userName="iLemming" createdAt="2025/08/07 17:41:48" color="#38d3d3">}}




{{<matomeQuote body="プロファイラとかアドバイシングは知ってるけど、elispのデバッグはあんまりしてこなかったんだ。SBCLとかCommon Lispでデバッグしてたからね。でもedebugは次に挑戦したい分野だよ。<br>gptelでelisp書いたりテストしたりできるのはマジ最高。Emacsの設定メンテは大変だけど、このパワーとカスタマイズ性は他にはないよ。Cursorみたいな独自エディタは意味わかんないね。" userName="Karrot_Kream" createdAt="2025/08/06 20:07:57" color="#ff5733">}}




{{<matomeQuote body="長年Emacs使ってるのは、今まで積み重ねてきたカスタマイズがすごい量だからだよ。他のエディタが20年も使えるか疑問だね。<br>VSCodeもデバッグとかGit GUIで使うけど。Neovimのユーザーベースは大きいかもね。<br>elispのデバッグは絶対に学ぶべきだ。DvorakでEmacsキーバインドに慣れてるんだけど、NeovimでもEmacsキーバインドにできないのかな？" userName="lelele" createdAt="2025/08/06 18:06:59" color="">}}




{{<matomeQuote body="PDFでのプレゼンは賢かったね。Neovimは試す価値あるよ、俺はevil-mode使いだから移行は楽だった。<br>VimのバインドはRSIにいいって思うけど、Dvorakだと色々難しいかもね。<br>キルリングが恋しいよ！Vimのマクロは強力だし、NeovimコミュニティはEmacsより活発だ。<br>Unix系ツールに詳しくなれるのもNeovimの魅力。lazy.vimで移行したら99%の生産性を維持できたよ。" userName="komali2" createdAt="2025/08/07 10:36:43" color="#45d325">}}




{{<matomeQuote body="Neovimの編集機能はすごく進化したよ。プラグインも豊富だし、IDEみたいにフル機能にもできるんだ。<br>LazyVimみたいなプリセットされたものもあるから、自分で一から設定しなくてもいいよ。AIプラグインもいっぱいあるしね。<br>[1]: https://www.lazyvim.org/<br>[2]: https://github.com/rockerBOO/awesome-neovim?tab=readme-ov-fi..." userName="alwillis" createdAt="2025/08/06 19:40:07" color="">}}




{{<matomeQuote body="NixはEmacsと組み合わせて使うのにずっと考えてたんだよね。特に非Linux環境、例えばmacOSやFreeBSDでNixを動かした経験ってどう？俺は主にmacOSを使ってるんだけどさ。" userName="Karrot_Kream" createdAt="2025/08/07 08:24:09" color="#45d325">}}




{{<matomeQuote body="macOSではhttps://emacsformacosx.com/から提供されてるGUI版Emacsを使ってるよ。<br>そこでシェル問題を一度解決すれば、その設定が定着するんじゃないかな。" userName="antipaul" createdAt="2025/08/06 17:23:24" color="#38d3d3">}}




{{<matomeQuote body="Emacsのワークフローに関するYouTubeチャンネル、絶対始めるべきだよ！スクリーンキャストとか良いじゃん！" userName="nahuel0x" createdAt="2025/08/07 19:17:36" color="">}}




{{<matomeQuote body="君のシェル問題については、https://github.com/purcell/exec-path-from-shellを見てごらん。<br>これ、ログインシェルの設定からPATHとか環境変数を抽出してくれるんだ。" userName="frumplestlatz" createdAt="2025/08/06 17:46:22" color="#785bff">}}




{{<matomeQuote body="「Emacsを“ただのエディタ”として扱うのは設計に反してる」って？<br>そんなこと言ったらEmacsを使いたくないって人が増えちゃうよ。<br>GNU Emacs Manualだって、ほとんど“ただのエディタ”としての使い方を説明してるんだ。<br>Emacsはプログラムしないとダメなんて、Vimだって同じこと言えるのか？<br>ユーザーはただエディタを使ってるだけだよ。" userName="massysett" createdAt="2025/08/09 00:08:03" color="#ff33a1">}}




{{<matomeQuote body="`use-package`のおかげで、すべてがめちゃくちゃシンプルになったよ。<br>例えばC言語のモード設定はこんな感じ。<br>` (use-package c-mode<br>    :ensure nil<br>    :defer t<br>    :mode ”\\.cu?\\’”<br>    :config (setq c-default-style ”gnu”<br>                  c-basic-offset 2)<br>    :hook ((c-mode . lsp)<br>           (c-mode . bmacs-ide)))`" userName="b5n" createdAt="2025/08/07 21:16:36" color="#ff5c5c">}}




{{<matomeQuote body="「[Neo]VimユーザーがEmacsのキーバインディングをInsert Modeに移植したことないって？！」マジか。<br>どれくらいスムーズなのか気になるね。<br>俺のEmacsキーバインディングの経験は、かなりムラがあったからさ。<br>Vim系の人たちがもっと良い体験を作れるといいな。<br>ReadlineのEmacsバインディングはちょっと物足りないけど、普段使いには結構良いよ。" userName="Karrot_Kream" createdAt="2025/08/06 18:19:56" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="「Emacsを“ただのエディタ”として使える」って？<br>デバッグとかで`-Q`オプション使う時はそうだけど、カスタマイズなしでEmacs使ってる人には何年も会ってないな。<br>Vimとは全然違うよ。<br>GNU Emacs Manualを読んでみろよ。<br>冒頭から「拡張可能」であることが強調されてるだろ？<br>Emacsは第一に“拡張可能なエディタ”なんだ。<br>それが他のエディタと一線を画す点だよ。<br>この事実に文句があるなら、Emacsコミュニティのためにも来ない方が良いね。" userName="iLemming" createdAt="2025/08/09 05:05:06" color="#ff5733">}}




{{<matomeQuote body="そういえば、LLMってEmacsの設定、特にカスタム機能を作るのにすごく役立つんだよ。<br>でも、俺の家のEmacs環境、Rust-modeが動かなくなっちゃってさ。<br>設定はGitにあるから、きっと何とかするつもりだけど。<br>とりあえず`use-package`への移行を始めて、設定に構造を持たせようとしてるんだ。<br>Zedは面白そうだけど、Emacsみたいに実行時に設定したり拡張したりは無理だろうね。<br>まあ、Zed自体にそういう機能を実装することはできるかもしれないけどさ。" userName="_flux" createdAt="2025/08/07 07:21:53" color="#ff5c5c">}}




{{<matomeQuote body="あんたがなんで低評価されてるのか、全然わかんないわ。" userName="monooso" createdAt="2025/08/06 23:06:40" color="">}}




{{<matomeQuote body="俺は長年のEmacs dabblerだけど、どこでもEvil modeを使ってるんだ。<br>Insert modeではEvilとぶつからないEmacsのバインディングも使うことあるよ。結構調和してるように感じるね。<br>Evilから始めたから、デフォルトのEmacsバインディングには特にこだわりはないよ。" userName="pxc" createdAt="2025/08/06 23:44:07" color="#ff5733">}}




{{<matomeQuote body="Use-packageってサードパーティのパッケージも自動でインストールできるんだぜ！<br>絶対学ぶ価値あるよ。数年前に.emacsをUse-packageに切り替えたんだ。<br>俺はgitが好きだから、パッケージのインストールにはborg[0]を使ってるよ。<br>[0] https://github.com/emacscollective/borg" userName="globular-toast" createdAt="2025/08/08 07:08:58" color="#785bff">}}




{{<matomeQuote body="MCPサーバーにツールを追加できるEmacsの機能がマジ好きだぜ！<br>長年Emacs使ってるけど、最近やっと自分でelispツールを書き始めたんだ。<br>Claudeはelisp書くのが結構得意だよ（たまに括弧を間違えるけど、全体的にはかなり良い）。<br>Steve Yeggeのefritも絶対試すつもり！<br>エージェントがelispを自由に評価できるんだって。<br>https://github.com/steveyegge/efrit" userName="pjm331" createdAt="2025/08/06 13:45:50" color="#ff5733">}}




{{<matomeQuote body="俺は長年のYeggeファンだよ。<br>彼はまだ“vibe code”のハネムーン期間中だと思うけど、Emacsに関して彼の信頼性は抜群だね。<br>1年ちょっと前にLLMがelispに妙に強いって気づいたんだ（これが俺のhypermodernな取り組みのきっかけ）。<br>efritには何かあると感じてる。まだ完全に使いこなせてないけど、マジで期待できるよ。" userName="benreesman" createdAt="2025/08/06 14:45:01" color="#785bff">}}




{{<matomeQuote body="EmacsとClaude Codeの統合パッケージが5つもあって、Redditとかで2、3つが競い合ってるのは嬉しいね。<br>でも、俺が思うに、一番よく実装されてるのは、誰も話題にしてない静かなやつだよ。<br>https://github.com/yuya373/claude-code-emacs<br>これ、他の全部の機能を網羅してるんだぜ。" userName="wyuenho" createdAt="2025/08/06 16:00:08" color="#ff33a1">}}




{{<matomeQuote body="どのくらい人気あるかは知らないけど、これが一番インストールしやすいんじゃないかな？<br>https://melpa.org/#/claude-code" userName="kgwgk" createdAt="2025/08/06 19:27:37" color="#ff5c5c">}}




{{<matomeQuote body="それってClaude-code-ideが持ってるような、／ide統合機能はないみたいだね。" userName="celeritascelery" createdAt="2025/08/06 16:28:15" color="">}}




{{<matomeQuote body="いや、絶対あるよ！試してみてくれ。" userName="wyuenho" createdAt="2025/08/06 18:42:38" color="">}}




{{<matomeQuote body="今試したけど、やっぱり／ide統合はサポートしてないよ。<br>Claude Codeで／ideって打てば確認できるしね。<br>MCPサポートはIDEサポートと同じじゃないんだよ。" userName="celeritascelery" createdAt="2025/08/06 20:36:42" color="#38d3d3">}}




{{<matomeQuote body="あー、アクティブファイルの認識とか選択コンテキストのことか。<br>このコードはかなりよく設計されてて、WebSocketもちゃんと統合されてるから、<br>チケット切ればその機能は昼休み中に作れそうだね。<br>それ以外は、これらの機能がどう実装されてるかとか、／ideが動くかはどーでもいいや。" userName="wyuenho" createdAt="2025/08/07 02:53:05" color="#ff5733">}}




{{<matomeQuote body="最近、Emacsコミュニティではこういうツールの統合に冷たい視線があるけど、俺はそれは逆効果だと思うんだ。今のAI開発は昔の技術と違うかもしれないけど、Emacsの歴史ってMIT AI Labと切っても切れない関係にあるだろ？だから、その出自を考えると、AI統合を避けるってなんか変じゃないか？" userName="cml123" createdAt="2025/08/06 14:53:37" color="#45d325">}}




{{<matomeQuote body="Emacsの素晴らしいところは、ユーザーが完全にコントロールできることだね。誰もEmacsのElispレイヤーで何かを変更するのを止められないから、こういうパッケージが生まれるんだ。VS CodeはMSがAPIに制限をかけるから、フォークがたくさん生まれる。たとえ最高のLLM連携をVS Codeでやりたい奴らがいても、フォークせざるを得ないだろうね。でもEmacsなら、やる気のあるElisp開発者が一人いれば、どんな外部パッケージでも統合できる。EmacsコミュニティのAIへの反発も、ちょっと大げさじゃないかな。AI／LLM関連のプラグインはどんどん出てきてて、結構人気あるぜ。例えば https://github.com/karthink/gptel とか。" userName="uludag" createdAt="2025/08/06 15:16:57" color="#38d3d3">}}




{{<matomeQuote body="これってリチャード・ストールマンのせいだよ。彼はフリーな代替品がないときにノンフリーなものを統合すると、フリーソフトウェア開発が遅れるって考えてるんだ。FSFがコントロールするプロジェクトにこだわりすぎ。GCCへの拡張リンク、LLVMデバッガー統合、Treesitter、Git対bzr、CIビルドファームでも同じことしただろ。どのケースでも、彼は結局折れてコアプロジェクトにノンフリーなものが何年も後になって統合された。この遅延はノンフリーなものを止められなかったし、コアプロジェクトの普及を遅らせただけだよ。こんなひどいプロジェクト管理のせいで、みんなノンフリーなソフトウェアに流れちゃってるんだ。ひどいケースだと、彼の個人的なエゴとFSFに存在価値を持たせたかったからやっただけだろ。" userName="paddy_m" createdAt="2025/08/06 15:00:36" color="#ff33a1">}}




{{<matomeQuote body="俺らの多くは、RMSが技術的にも組織的にも、残されたソフトウェアの自由を守るためにやった基礎的な仕事には抽象的な形で感謝してるけど、もうずっと前に彼とは距離を置いたよ。彼、本当におかしくなっちゃったからね。「立ち入り禁止区域」みたいな感じ。今のEmacsコミュニティは、彼の歴史は認めてるけど、現代的な意味ではもう関わってないんだ。" userName="benreesman" createdAt="2025/08/06 15:12:16" color="">}}




{{<matomeQuote body="はあ？オープンソースライセンスはストールマンよりずっと前からあったんだぜ。彼はせいぜい、OSSムーブメントを乗っ取って、変なイデオロギーのニッチに持ち込もうとしただけの、ご都合主義者だよ。" userName="7e" createdAt="2025/08/07 03:01:18" color="">}}




{{<matomeQuote body="俺はストールマンがオープンソースを発明したなんて言ってないし（実際そうじゃない）、シンボリックスの騒動の後でGNUを始めた動機が純粋だったとも言ってないよ（実際はつまらなかった）。今のFSFが良い組織だとも思ってない（glibcの動的リンクロックとか、ドレッパーの怪しい繋がりとか見ればわかるだろ）。俺が言ったのは、彼がやった基礎的な仕事は今でも重要だってことだよ。貢献を認めただけで、彼を聖人扱いしてるわけじゃないんだからな。" userName="benreesman" createdAt="2025/08/07 04:43:04" color="">}}




{{<matomeQuote body="そもそもどこに統合するんだ？EmacsはC言語の小さなコアで、ほとんどがElispだし、サードパーティパッケージと同じ扱いだろ。AIパッケージがEmacsコアに入ることに、どんな意味があるのか分からないな。" userName="skydhash" createdAt="2025/08/06 15:14:29" color="#ff5733">}}




{{<matomeQuote body="eglotとかproject.elとかと何も変わらないだろ。サードパーティパッケージが色々試して、安定した実装がコアに取り込まれるだけだよ。" userName="spauldo" createdAt="2025/08/06 17:15:03" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
