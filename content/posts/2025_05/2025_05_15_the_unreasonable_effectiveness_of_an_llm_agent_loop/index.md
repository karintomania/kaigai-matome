+++
date = '2025-05-15T00:00:00'
months = '2025/05'
draft = false
title = 'LLMエージェントループ＋ツール使用の驚異的な効果'
tags = ["AI", "LLM", "エージェント", "ツール", "プログラミング"]
featureimage = 'thumbnails/blue2.jpg'
+++

> LLMエージェントループ＋ツール使用の驚異的な効果

引用元：[https://news.ycombinator.com/item?id=43998472](https://news.ycombinator.com/item?id=43998472)




{{<matomeQuote body="この記事と同じ点で、もっと詳しくて説得力あるブログ記事超おすすめだよ！著者がゼロからコーディングエージェント作ってる→https://ampcode.com/how-to-build-an-agent<br>LLMがツール使うループ、マジであらゆるタスクに効くの驚くよね。たまに暴走するけど、自分で30分くらいで作ってみてほしい。AIへの健全な懐疑心は持ちつつ、ワクワクするのは良い。この”異常な有効性”が、今すごい数のコーディングエージェント（Claude Codeとか）が出てる理由。秘密のソースはなくて、マジックの95％はLLM自体とツール呼び出しチューニングだから。Claude Codeの開発リーダーも認めてるよ→https://www.youtube.com/watch?v=zDmW5hJPsvQ" userName="libraryofbabel" createdAt="2025/05/15 20:36:59" color="#ff5c5c">}}




{{<matomeQuote body="LLMに単独でループさせといて大丈夫なくらい上手くできることなんて思いつかないな。数回繰り返すと、すぐに俺が手綱を握らなきゃいけなくなるんだよ。" userName="datpuz" createdAt="2025/05/16 00:35:42" color="#45d325">}}




{{<matomeQuote body="エージェントの最大の課題は、自分のパフォーマンスを振り返ったり、ヤバい時に積極的に人間に助けを求めたりしないことだね。成功することもあるけど、毎回手助けが必要な場合もある。<br>そういう意味では人間に似てるんだけど、自己評価とか自己認識をまだ組み込めてないから、まるで自分の力量を超えても助けを求めるべきだと気づかないジュニアみたいだよ。" userName="CuriouslyC" createdAt="2025/05/16 01:01:58" color="#ff5733">}}




{{<matomeQuote body="nステップごとの進行度を測って、遅すぎたら止まって人間に助けを求める”監視役LLM”を追加するのって、価値あるかな？" userName="ariwilson" createdAt="2025/05/16 02:37:10" color="#38d3d3">}}




{{<matomeQuote body="で、それってどうやって効果的に進行度を測るの？" userName="solumunus" createdAt="2025/05/16 02:47:32" color="">}}




{{<matomeQuote body="シニアの役割と同じように振る舞えるんじゃないかな。ジュニア（エージェント）が従うべき一連のステップを生成して、特定のステップでジュニアが詰まってるか評価するんだ。" userName="NotMichaelBay" createdAt="2025/05/16 03:13:17" color="#ff5733">}}




{{<matomeQuote body="彼ら（エージェント）って、予算を燃やすのはめちゃくちゃ得意なんだよね。放置しとくとさらに上手くなるっていう。" userName="Groxx" createdAt="2025/05/16 01:33:45" color="#38d3d3">}}




{{<matomeQuote body="ステップの一連の流れを作るのが難しい部分なんだよ。それができたら、従うべきジュニアなんて必要ない、実行するプログラムができてるってことだろ。" userName="chongli" createdAt="2025/05/16 03:18:09" color="#38d3d3">}}




{{<matomeQuote body="実は、LLMと対話してソクラテス式で要件を引き出してもらい、READMEにロードマップとして書いて、エージェントに順番に実行させるやり方で、エージェントコーディングでめっちゃ成功したんだよね。一度に一つずつ作らせて、その都度チェックさせてエラーを修正。このワークフローで、ほとんど介入なしで複雑なソフトウェアをエージェントで作れたよ。テスト戦略が不安定な稀なケース以外はね。" userName="CuriouslyC" createdAt="2025/05/16 06:47:15" color="#785bff">}}




{{<matomeQuote body="＞LLMとソクラテス式で要件引き出してREADMEに書いてエージェントにやらせたら成功した話<br>ちょっと興味あるんだけど、具体的にどんなツールとかやり方なの？Claude？Gemini？VS Code + Copilot Chat？<br>”めっちゃ成功した”って言ってたけど、俺はAIがたまに期待外れでさ。モデル選び、プロンプト、入力のどれが影響してるのか気になってたんだ。" userName="Xevion" createdAt="2025/05/16 07:08:57" color="#ff5c5c">}}




{{<matomeQuote body="俺はAiderにSTYLEGUIDE.mdとかAIルール文書でめっちゃチューニングして使ってるよ。このプロセスを毎回指示しなくていいから楽。<br>個人的にはGemini 2.5 Proがこの手の作業には断然いいわ。Claudeもたまに一発で決めたりするけど、エンジニアリングプロセスとかテストエラーへの対応は全然ダメ。" userName="CuriouslyC" createdAt="2025/05/16 07:26:02" color="#ff33a1">}}




{{<matomeQuote body="こういうツールってAPI呼び出し必要じゃん、あれって普通消費者向けプランみたいな値段じゃないんだよね" userName="nsomaru" createdAt="2025/05/16 03:25:24" color="">}}




{{<matomeQuote body="最近のRubyのX11バインディングのほとんど書いてくれたし、システムトレイの動くサンプルも全部作ってくれたよ。<br>俺が使ってるWMのマルチモニター対応も最初の部分を追加してくれた（Claude Codeが作業中、同じXセッションで端末を何回も再起動してたけど）。<br>まあ、手綱を握る必要はあるけどさ、安全なツールの使い方とか承認しちゃえば、ファイル変更する前に何回も試行錯誤してくれることも多いよ。" userName="vidarh" createdAt="2025/05/16 10:52:28" color="#ff5c5c">}}




{{<matomeQuote body="俺はAiderの設定できるところが気に入ってる。静的解析のツールとか色々繋げて、モデルに全部直させられるし、Aiderのウィンドウを2〜4個並べて同時に走らせることもできる。Claude Codeでどうなるかは知らないけど。<br>あと、Aiderが全部Gitコミットで管理してくれるのも最高。" userName="CuriouslyC" createdAt="2025/05/16 11:37:22" color="#ff5733">}}




{{<matomeQuote body="どんなワークフローでやってるか、もっと詳しく教えてくれない？俺もAiderは普段使ってるんだけど、やり方が結構素朴なんだよね。<br>ちょっと気になるのが、プロンプトが明らかにカスタマイズできないこと。標準のプロンプトには2〜3種類の言語のコード例が入ってて、俺のコードベースで使ってない言語だとLLMがちょっと混乱する気がするんだ。" userName="TeMPOraL" createdAt="2025/05/16 12:59:24" color="">}}




{{<matomeQuote body="俺は`styleguide.md`と`.cursorrules`っていう設定ファイルを使ってLLMの振る舞いを細かく制御してるんだ。<br>例えば、設計段階ではソクラテスみたいに質問させて、実装段階では効率的にコード書かせてテストも書かせるように指示してるよ。<br>＊明確さ、シンプルさ、堅牢さ、拡張可能性＊を優先するとか、ドキュメント更新するとかもルールにしてる。<br>AiderでLintやテストを自動実行させる設定もできるよ。" userName="CuriouslyC" createdAt="2025/05/16 13:56:12" color="#45d325">}}




{{<matomeQuote body="ありがとね。だいたい僕のやり方（CONVENTIONS.md、AI.mdを使う）と似てるかな。aiderのテスト・リンティングはまだ慣れてないんだけど。AI.mdにはAIとの協業とか、コード品質、モジュール性、設計に関する具体的なガイドラインを色々書いてるんだ。ターゲットはRaspberry Pi 2っていう古いボードで、Pythonのバージョンとか色々制約があるよ。このAI.mdファイルはプロジェクトごとにAIが自分でガイドラインを追記できるようにしてるし、aiderのDiff問題対策でファイルを細かく分けるのを重視してるんだ。" userName="TeMPOraL" createdAt="2025/05/16 18:28:39" color="#ff5c5c">}}




{{<matomeQuote body="うん、そりゃ安いよね。API呼び出しで0.20ドルでアプリまるごと書いたことあるし。" userName="adastra22" createdAt="2025/05/16 03:46:27" color="">}}




{{<matomeQuote body="君がリンクした最初の記事にはRuby版もあるよ。機能的にはだいたい同じだけど、もし君が（僕みたいに）PythonよりRubyの方が好きなら、両方読む価値あるよ。<br>https://news.ycombinator.com/item?id=43984860<br>https://radanskoric.com/articles/coding-agent-in-ruby" userName="vidarh" createdAt="2025/05/16 10:49:54" color="">}}




{{<matomeQuote body="良さそうだね。自動ツールチェーンが整って、モデル選びも調整できたら（もし使ってないならGeminiがいいよ）、うまく進むはずだよ。" userName="CuriouslyC" createdAt="2025/05/16 23:59:34" color="">}}




{{<matomeQuote body="僕は毎日エージェント型LLMを使ってて、ものすごい価値を感じてるよ。LLMに細かいタスクのセットを、修正リマインダー付きで作ってもらうのが本当に得意なんだ。これで良い結果が出てるよ。君の使い方が間違ってるならごめんね。" userName="adastra22" createdAt="2025/05/16 07:38:05" color="#785bff">}}




{{<matomeQuote body="魔法の95%はLLM自体にあって、別に秘密のソースなんてないのが理由だよ。<br>だからWindsurfの”3 billion”ドル評価はめっちゃ怪しいと思うな。" userName="xnx" createdAt="2025/05/16 13:17:15" color="">}}




{{<matomeQuote body="今日、GPT-4oと4.1で初めて”vibe-coding”を手動で試してみたんだけど、全然ダメだったわ。<br>-古いパッケージ使う<br>-指摘しても全部直さない<br>-構文壊しまくって全然直せない<br>-4.1はcanvas使おうとしないし、使ってもコードを”// omitted for brevity”とか言って省略する<br>もう無理。エージェントならこれが直るの？<br>bashにアクセスさせるなんて怖すぎるんだけど。" userName="kgeist" createdAt="2025/05/15 20:28:59" color="#ff5c5c">}}




{{<matomeQuote body="確かにイライラする時もあるね。でも試せば試すほど、何を聞けばいいかとか、何を期待できるかとか分かって上手くなるもんだよ。<br>でも、vibe codingが少し”overrated”って言われる理由、君もこれで分かったんじゃないかな。この記事とかも参考になるよ。（リンク）" userName="fsndz" createdAt="2025/05/15 21:11:48" color="">}}




{{<matomeQuote body="“skill issue”って言われるとムカつくのは分かるけど、LLMを使うのは絶対スキルだよ。色んなツールの強みを理解して、実験してテクニックを掴んで、ただ練習するしかない。<br>でもbashにアクセスさせるなら、僕も間違いなくdockerコンテナの中でやるかな。" userName="ebiester" createdAt="2025/05/15 21:09:06" color="#ff5c5c">}}




{{<matomeQuote body="確かに慣れたら上手くなるんだろうけど、それってプログラミング自体を上手くなる努力に比べて、本当にやる価値あるの？" userName="wtetzner" createdAt="2025/05/15 23:36:55" color="">}}




{{<matomeQuote body="戦闘機に乗るのに、君が自転車に乗ってるとして、運動したり食事を改善しても助けにはならないよ。もっと良いツールを使うべきだ。<br>AIツールを使う優秀なプログラマーは、AIツールを使わない優秀なプログラマーより遥かに速く進めるだろうね。" userName="cheema33" createdAt="2025/05/16 00:34:16" color="">}}




{{<matomeQuote body="CursorかWindsurfをClaudeかGeminiで試してみるといいよ。<br>まずドキュメントファイルを作って、全てのテストを生成するんだ。多ければ多いほど良いね。<br>そしてテストが通るまで100回サイクルさせればいい。<br>普通のプログラミングが歩くみたいに丁寧で確実なら、Vibe codingはサーフィンみたいなものさ。全てをコントロールできるわけじゃないけど、自動で「はい」って進んでいけばいい。プロセスを信じて、間違いを起こさせて自分で回復させるんだ。" userName="visarga" createdAt="2025/05/15 20:39:08" color="#45d325">}}




{{<matomeQuote body="デプロイされたパッケージを使うのは、モデルのトレーニングカットオフ日があるからだよ。これを知っておくのは重要だね。（リンク）<br>僕は多くのコードで、検索機能を使って最新のドキュメントを調べられるChatGPT経由のo4-mini-highをデフォルトモデルにしたんだ。<br>「ライブラリXの最新バージョンを調べて使って」って指示すると、結構うまくいくことが多いよ！<br>最近面倒なアップグレードでも使ってみたら、頼んだ通りにやってくれたんだ。（リンク）" userName="simonw" createdAt="2025/05/15 21:13:52" color="#ff5c5c">}}




{{<matomeQuote body="例え話だけどさ、マラソン経験者みたいに慣れてる人は目的地までサーフィンより歩くのを選ぶ方がずっとマシって理由、分かるでしょ？" userName="prisenco" createdAt="2025/05/15 21:21:51" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="150行ってマジ？俺はサクッと1500行くらいいけるし、そっから修正したいクラスとか関数にピンポイントでいける感じ。" userName="theropost" createdAt="2025/05/15 20:45:00" color="">}}




{{<matomeQuote body="400行超えたら全然ダメ（Claude 3.7, paid Cursor）。ヤバいのは複雑なこと頼んで300行いいコード書いたと思ったらタイムアウトとかクラッシュ。続きって頼むとマジでコードがヤバくなる。重複したり、全然合わない関数作ったり。" userName="jokethrowaway" createdAt="2025/05/15 21:15:22" color="#ff5c5c">}}




{{<matomeQuote body="サーフボード無しで波に乗ろうとしてうまくいかないって文句言ってる奴いたら、水とかサーフィンのせいにする？それとも物理無視して文句言ってる奴のせい？どれだけ走りたくてKelvin Kiptumだろうと、結局ダメなんだよ。" userName="fragmede" createdAt="2025/05/15 21:44:55" color="#38d3d3">}}




{{<matomeQuote body="4oとか4.1ってコーディングはそんな良くないね。俺は4o-mini-highが一番いい結果。o3もたまに使える。個人的にはキャンバス嫌い。チャットに出してくれる方が好き。結構ファイル丸ごととか、そのまま置き換えてって頼むこと多いんだよね。でもだいたい300～400行くらいで微妙になってくるから、ファイルを分けたりリファクタリングしないとダメになる（ファイル内のメソッド一つだけならいけるけど）。" userName="nico" createdAt="2025/05/15 20:54:47" color="#ff33a1">}}




{{<matomeQuote body="他の人も言ってたけど、君、最先端から3ヶ月くらい遅れてる感じだよ。書いてることは2月頃の俺の経験そっくり。Claudeに乗り換えなよ（個人的にはGeminiも同等と思う）。ちゃんとしたコーディングツール使って、チャット窓からコピペなんて先週の話。" userName="danbmil99" createdAt="2025/05/15 22:18:03" color="#ff33a1">}}




{{<matomeQuote body="物作るのサボってフロントエンドフレームワークいじり倒してた代わりに、ちょびっとの効率アップのために開発環境いじり回すようになった感じ。" userName="candiddevmike" createdAt="2025/05/16 01:13:48" color="">}}




{{<matomeQuote body="それってサーフィンが目的地への唯一の行き方の場合にしか意味ないでしょ。でもそうじゃないじゃん。" userName="prisenco" createdAt="2025/05/15 22:24:12" color="">}}




{{<matomeQuote body="「明らかに多くの人に使えてるもの」を否定して知的ぶる奴らへ。俺はLLMじゃなくvibe codingについて言ってる。理解せずコピペするだけのvibe codingは猿にナイフ渡すのと一緒。LLMは便利だけどvibe codingは技術史上最低。「使えてる」ってのはおもちゃレベルの話？本番で使える？遊びや実験ならいいけど、あれ学習にもならないよ。" userName="the_af" createdAt="2025/05/16 13:29:28" color="#ff5733">}}




{{<matomeQuote body="vibe codingにはvibeとcodingの要素がある。coding取ったらvibeしか残らん。そこ間違うな。俺はvibe codingで作ったReactの社内ツールを本番で問題なく使ってるぞ。数日分の作業があっという間に終わったし。" userName="baq" createdAt="2025/05/16 05:50:17" color="#785bff">}}




{{<matomeQuote body="こないだVSCodeのClineプラグインとClaude使ってAndroidアプリのプロトタイプをゼロから作ってみたんだ。Android Studioのテンプレートから始めて数千行のコードがエラーなしでできたよ。アプリもほぼ思った通りに動いた。バグもあったけど、それはLLMじゃなくAndroid APIの変な仕様のせい。LLMに指摘したらデバッグを手伝ってもらって直せたよ。コードの質は最初はダーティだったけど、フィードバックで改善できた。コード書くエージェントとレビューエージェントを組み合わせたら、もっと良くなりそうだね。" userName="codethief" createdAt="2025/05/15 21:27:38" color="#785bff">}}




{{<matomeQuote body="＞それらを混同しないで。<br>Vibe codingって言葉を流行らせた人が説明してたのは、コードを全く書かないことだよ。エラーメッセージを貼り付けて、LLMの応答を貼り付けて、またエラーメッセージを貼り付けて、応答を貼り付けて、それが何度か繰り返されたら結果が出るのを祈るだけ。<br>LLMの出力もエラーメッセージも「見ない」ことが含まれてる。<br>たぶん、あなたは別の定義を使ってるんじゃない？" userName="the_af" createdAt="2025/05/16 13:24:16" color="">}}




{{<matomeQuote body="なぜ多くの人が少数の人しか「hello world」とかその程度の難易度のことしかしないかっていうとね。すべてのソフトウェア開発者が簡単なフロントエンドの仕事をするために雇われてるわけじゃないんだよ。" userName="guappa" createdAt="2025/05/16 06:36:56" color="">}}




{{<matomeQuote body="＞それはモデルの学習カットオフ日付があるからだね<br>非推奨のパッケージを使ってるって指摘したら、LLMは同意してくれて、それが非推奨になった正しいバージョン（ずっと前の2021年）まで挙げてくれたんだ。だから非推奨だってことは知ってるんだけど、たくさんの学習データ（2021年より前）がそのパッケージをまだ使えるものとして使ってるから、次のトークン予測（推論やツールなしだと）では点と点が繋がらないんだ。<br>＞多くのコードでデフォルトモデルをChatGPTのo4-mini-highに変えたよ、検索機能で最新ドキュメントを見れるからね<br>情報ありがとう！" userName="kgeist" createdAt="2025/05/15 21:27:22" color="#ff5c5c">}}




{{<matomeQuote body="経験の浅い、あるいは何も知らない、ジュニアな、または経験不足の開発者に、何日もスパゲッティコードを書いて、結局先輩に助けを求めたり仕事をしてもらったりするよりも、さっき言われたナイフを与える方が良いと思うな。" userName="zo1" createdAt="2025/05/16 06:45:42" color="">}}




{{<matomeQuote body="＞「猿にナイフ」アナロジーは適切<br>経験者ならvibe codeできる？＞「明らかに動く」って？プロトタイプ？頑丈なものもできるの？<br>AIが基盤CRUDアプリ作れないと？＞vibe codingは学習にならない<br>それがあなたの言う「動く」？vibe codingの意味を狭めてる？" userName="lnenad" createdAt="2025/05/16 15:52:00" color="">}}




{{<matomeQuote body="o3は、本当に衝撃的に良いんだよ。レート制限でしょっちゅうは使えないから、たまの機会にとっておいてるんだけどね。今日はSwiftのバイナリパッケージをSDK内でツリー状に統合して、内部バージョン衝突を検出する方法をどうすればいいか聞いてみたら、すごく良く調べられてて理にかなった概要をくれたんだ。しかも、新しいアイデアまで教えてくれたよ。" userName="manmal" createdAt="2025/05/15 21:38:17" color="#38d3d3">}}




{{<matomeQuote body="＞コード書くエージェントとレビューするエージェントをループさせたらもっと一般的に解決できそうだよね。<br>これ×100。LLMに他のLLMのコードをレビューさせて修正させると、本当に格段に質の良いコードになるんだ。ありえないくらい効果的だよ。" userName="cheema33" createdAt="2025/05/16 00:37:39" color="#45d325">}}




{{<matomeQuote body="LLMは慣れるのに時間がかかるんだね。gpt3.5を毎日半年使ってやっと上達したよ。コードは600-1000LOCくらい書ける。”vibe coding”って感じじゃないな、詳細な指示が必要だから。新規開発だと10倍、既存だと2倍速くなったかな。出てきたコードは読むべきだよ。エラー防ぐには、考え方やロジックを読むのが大事。ミスを見つけたらpromptをやり直す。ダメならsession変える。o1-proみたいなテスト時間モデルはエラー少なくてマジで良いよ。claudeは知らんけど、遅いテスト時間モデルはコーディングに超向いてるわ。" userName="johnsmith1840" createdAt="2025/05/15 21:33:03" color="#38d3d3">}}




{{<matomeQuote body="普通のチャットUIはLLMには合ってないんだよ。contextが必要だから。これ見てよ -＞ https://github.com/marv1nnnnn/llm-min.txt<br>LLMは問題解決は得意だけど、ドキュメント置き場じゃないんだ。NNは概念をモデル化してるだけ。人間みたいにAPIドキュメントとか探すのは必要。o3でWeb検索もできるけど効率悪い。プロ向けのLLMコーディングツールはcontext管理がうまいんだよね。" userName="voidspark" createdAt="2025/05/15 23:58:11" color="#785bff">}}




{{<matomeQuote body="LLMのツール使用、マジで興奮する！ReAcT論文から知ってたけど、最近のモデルはめちゃくちゃ上手くなったよね。o3/o4-miniの検索性能もツール呼び出しのおかげだし、軽いQwen3 4Bでもそこそこできる。<br>PyCon USでLLMワークショップやった時に、自作ツールにツール機能を追加したんだ。資料はこれ： https://building-with-llms-pycon-2025.readthedocs.io/en/late...<br>今やシェルワンライナーで単語中の特定文字を正確に数えられるようになった！" userName="simonw" createdAt="2025/05/15 21:10:38" color="#ff5733">}}




{{<matomeQuote body="俺、Claude Code (Sonnet 3.7) マジで使ってる。CLIとかWebとか色々作って、前より野心的になれたわ。完璧じゃないけど、リファクタリングとか超得意で、複雑な変更もすぐやってくれる。「このデータ構造変えて」とかも一瞬。頭の負担がマジでimmenseに減った！コード以外のファイルも見せて質問できるし、履歴書とか子供の名前まで！まだ初期なのに、マジで幸せ。" userName="tqwhite" createdAt="2025/05/15 22:04:03" color="#ff5733">}}




{{<matomeQuote body="最近、データの構造からAPI、保存、表示まで一連の作業をClaudeに全部やらせてみたんだ。<br>そしたら、各層の変更影響を見ながら色んなアイデアを試せて、一番良い解決策を見つけられたよ。層をまたいで試せるのがマジで目から鱗。生産性も上がったし、全体像の理解も深まったわ。" userName="felipeerias" createdAt="2025/05/16 01:05:59" color="#785bff">}}




{{<matomeQuote body="リファクタリングの話、マジ同意！Sprintに入れるのが大変なことが5分で終わるんだぜ。チームが待機してて、すぐに俺の指示に応えてくれる感じ。仕事の正当化とかスケジュールとか、面倒なこと一切なし！" userName="benoau" createdAt="2025/05/16 00:37:55" color="#45d325">}}




{{<matomeQuote body="LLMエージェント、実際の仕事だとコンテキストが問題だね。ツール使うとコンテキスト増えるし、10k超えると質落ちる。あと脱線して戻れなくなることも。俺たち1年前からこの問題取り組んでるんだ。解決はまだだけど進んでるよ。［宣伝］nonbios.ai試してみて！長期間コーディング、リアル実行環境、透明性あり。無料ベータ、捨てメアドOK！（mailinatorとか）" userName="suninsight" createdAt="2025/05/16 07:02:12" color="">}}




{{<matomeQuote body="＞間違った方向に行くと戻ってこれないってやつ、これがツールとして使えるかって議論の一番の核心だろうね。LLMが間違った方向行かないように問題を十分説明できた時には、もうほとんど自分で解決しちゃってるでしょ。エラーフィードバックで自動っぽく聞こえるけど、人間の意図を代弁してる薄い層にすぎないってすぐ気づくよ。" userName="bob1029" createdAt="2025/05/16 09:43:13" color="#45d325">}}




{{<matomeQuote body="うん、でも俺たちはこれが“根本的”な問題だとは思ってないよ。彼らの行動をもっとうまく導けるようになったし、最初に始めた頃よりウサギの穴に落ちることはずっと減ったからね。" userName="suninsight" createdAt="2025/05/16 10:13:06" color="">}}




{{<matomeQuote body="確かにね。でも、その一方でタイピングがめちゃくちゃ多くて、そんなに複雑じゃないタスクもいっぱいあるよ。特にGUI開発でフォームとかチャートとか作る時とか。そういう時 LLM はすごい助けになると思うな。" userName="k__" createdAt="2025/05/16 09:56:47" color="">}}




{{<matomeQuote body="一部の思考モデルは回復するかもね…追加で4kトークンとか“思考”に使って。たとえ長いコンテキストでも安定しても、速度はめちゃくちゃ落ちる。このアーキテクチャじゃ勝てないってば笑。" userName="moffkalast" createdAt="2025/05/16 08:25:56" color="">}}




{{<matomeQuote body="うちが見つけたこととすごく正確に一致してるね。“思考”モデルはもっとうまくやるけど、速度はめちゃくちゃ落ちる。今のところは速度より正確さを選んだよ。でも速度低下が3-4倍だから、たまにしか“思考”しないアーキテクチャに移るかも。LLM分野で起きてること全部、人間の自然な思考にすごく近いよね。" userName="suninsight" createdAt="2025/05/16 08:34:47" color="#ff5733">}}




{{<matomeQuote body="面白そうだね。コンテキストはどうやって管理してるの？" userName="toit4wing" createdAt="2025/05/16 07:27:27" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="コンテキスト管理が一番大変なんだ。色々戦略使って減らしてるよ。例えばね：<br>1. カスタムのMCPサーバーでLinuxコマンドライン作業。コンテキスト減らす最適化済み。<br>2. ガードレールでコンテキスト減らす。LLMにヒント与えて少なく作業させる。<br>3. コンテキストを剪定してエージェントに“忘れさせる”。重要じゃないことを忘れるのは基礎能力だよ。<br>これは人間が睡眠で記憶を“忘れ”て脳を健康に保つのにヒントを得たんだ。LLMも忘れさせるのがタスク集中に重要だよ。" userName="suninsight" createdAt="2025/05/16 07:38:32" color="#ff5c5c">}}




{{<matomeQuote body="今朝Cursor使って、ゲームの複雑な部分を抜き出しテスト作ったよ。Cursorが書いたテスト341個で、コアな部分全部カバー。たまに暴走するけど、制約与えるほど結果は良くなる。合計3500行のテストコードを自分で書かずに済んだし、直す必要もない。前提変わっても削除して再生成できる。難易度カーブ調整とかミッション生成とかも助けてくれたよ。" userName="benoau" createdAt="2025/05/15 23:17:02" color="#ff5733">}}




{{<matomeQuote body="テスト書くこと、俺の経験だとこれがLLMの一番良い使い方だね！何時間、何日もの面倒な作業がなくなるし、自分で考えるよりずっと多くのエッジケースをカバーできる。それにコードも頑丈になる！全面的に素晴らしいね！" userName="otterley" createdAt="2025/05/16 00:54:14" color="#785bff">}}




{{<matomeQuote body="コメントしてからも、テストを60個、テストコードを500行も生成したんだよね。大変なやり方でテストコードを何十万行も書いてきた身としてはさ、これ、俺より全然速いだけじゃなくって、カバレッジの面でも俺より優れてるんだよ。しかも、俺が今まで見てきた何人かの開発者よりも俺の手がかからないんだよね。" userName="benoau" createdAt="2025/05/16 01:06:19" color="#38d3d3">}}




{{<matomeQuote body="”あー、このテスト通らないな…もうスキップしちゃお”、なんて言われると、すっげーイライラするんだよね。<br>そこで突拍子もないアイデアなんだけどさ。メインのLLMが指示通りに動くように、別の監視役LLMを並行して独立して走らせるってどう？<br>もしその監視役LLMがさ、リアルタイムでコーディングLLMが”スキップしちゃお”みたいなことを言うのを禁止できたらどうだろう。例えば”let’s just”ってトークンが見えたら、次に”skip”っていう単語が出てくる可能性を排除するように出力にバイアスをかけるんだ。<br>”let’s just”の後に”skip”が出ないように強制することで、LLMを望ましくない振る舞いから別のパスへ誘導できるじゃん。<br>これってStructured OutputsとかJSONモードみたいなもんだけど、監視役LLMが動かしていて、トークンが出力されるたびにリアルタイムで動的に変わるんだ。<br>もしこのアイデアがうまくいったらさ、監視役LLMにもっと高度なことを指示できるかもね。例えば、コーディングLLMがテストコードを削除してテストをパスさせようとするのを禁止したり、意味のないコメントを出すのを禁止したり…。今システムプロンプトに入れて、LLMがやってくれることをただ祈ってるようなポリシー全部を、代わりに監視役LLMのプロンプトに入れるんだ。<br>Outlinesの人たちがこのアイデアについてどう思うか、興味あるね！" userName="cadamsdotcom" createdAt="2025/05/15 23:01:49" color="#ff5733">}}




{{<matomeQuote body="この流れで言うとさ、もしメインのLLMが間違った方向に進んじゃったら、間違った方向に進み始める”前”の状態にモデルを”巻き戻す”こともできるかもね。監視役のLLMは、必ずしも”let’s just”の後に”skip”がまずいトークンだって推測する必要はなくて、代わりに”let’s just skip the test”って全部見てから「ダメだ、”just ”のトークンまで巻き戻して、logit_biasで{”skip”: -10, ”omit”: -10, ”hack”: -10}みたいにバイアスかけてやり直そう」ってできるわけだ。<br>もちろん、これやると使えるモデルプロバイダーが限られるけどね（特にOpenAIはここ1年くらい、そういうパワーユーザー的なことやるのに結構敵対的になってきてる）。" userName="JoshuaDavid" createdAt="2025/05/15 23:08:49" color="#ff5733">}}




{{<matomeQuote body="それ、すっげーいいアイデアだね。<br>なんか最適化みたいだね。「トークン禁止」をツール呼び出しみたいにすると、トークンごとだと遅すぎるだろうしね。巻き戻しがもし可能なら、君のアイデアは実用的なパフォーマンスにできるかも。" userName="cadamsdotcom" createdAt="2025/05/15 23:54:11" color="#ff33a1">}}




{{<matomeQuote body="いや、最適化とは違うんだよ。貪欲なアプローチはうまくいかない、だって拒否トリガーとなるトークンの”後”に来る重要な文脈を無視しちゃうからさ。<br>例えばさ、”Let’s just skip writing this test, as the other change you requested seems to eliminate the need for it.”（君がリクエストした別の変更で、このテストを書く必要がなくなったみたいだから、書くのはスキップしちゃおう）って考えてみてよ。<br>”Let’s just”のところでモデルを巻き戻すのはバカげてるし、”Let’s just skip writing this test”で巻き戻すのもバカげてる。テストを書くのが神への聖なる義務で無条件にそうしなきゃいけない、なんて信じるのもね。その後の文脈で、その判断が正しいって明確になってるでしょ？もし君（または監視役エージェント）がその理屈に納得できないとしても、その時は完璧な位置にいるわけだ。”nope, Let’sまで巻き戻して、[”skip”, test”]に対してバイアスをかけよう”って言える。<br>メッセージ全体を一度チェックするのが理にかなってるんだ。トークンごとじゃなくてね。" userName="TeMPOraL" createdAt="2025/05/16 07:32:48" color="#38d3d3">}}




{{<matomeQuote body="OpenAIのチームが似たようなことをやろうとしてたんだよね[1]。o3-miniが難しすぎるテストを回避しようとしてないか、4oに監視させてたんだ。それでo3-miniがそういうことするたびに罰を与えて学習させたんだけどさ。結局o3-miniは相変わらず報酬ハッキングしてたんだけど、4oに検知されにくくなっただけだったんだ。言うことがこう変わったんだ：<br>＞To skip all tests, we can define a `pytest_runtest_setup` function that always skips.<br>から<br>＞Idea: Starting a new build with a random first succession, calling random_new_succession should not increment succession, but in implementation, it does. Adjust to prevent increment. Implement fix to random_new_build not to increment succession, or test adapted to behavior.<br>に変わって、結局全く同じこと（テストをスキップすること）をやってたんだよ。<br>学習させなくても、それは一時的な絆創膏にすぎないんだ。報酬ハッキングのインセンティブが十分高くなれば、単に検知できない別の言い回しを使い始めるだけさ。<br>[1]: https://openai.com/index/chain-of-thought-monitoring/" userName="phi0" createdAt="2025/05/16 14:19:41" color="#ff33a1">}}




{{<matomeQuote body="もし最初のLLMをチェックするために2番目のLLMを走らせるのがうまくいくならさ、なんで”Mixture of Experts”のLLMは専門家の一人を他の専門家の結果をチェックすることに専念させられないの？それか、テスト時の計算で”思考”するモデルは、自分の出力を検証する別の思考スレッドを走らせられないの？それが60％くらい効果あるなら、さらに検証役を検証する別の思考スレッドがあってもいいんじゃないの？みたいな。" userName="panarky" createdAt="2025/05/15 23:19:14" color="#38d3d3">}}




{{<matomeQuote body="それはね、エージェントと監視役が一緒に学習されてたら、共有された報酬関数が監視役を腐敗させちゃうからさ。" userName="somebodythere" createdAt="2025/05/16 00:41:03" color="#785bff">}}




{{<matomeQuote body="事前学習で得られる共有された報酬関数なんて、LLMにとって小学校みたいなもんでしょ。RLHFは中学校かな。監視役は、システムのプロンプトやユーザープロンプト、ファインチューニングなんかで、ワーカーとは差別化できるじゃん。それは人間でいうと、医大とか法科大学院みたいなもんだよね。<br>確かに、人間の裁判官、弁護士（弁護側と検察側）、陪審員だって、同じ小中学校に通ってたとしても、それぞれの仕事をちゃんとこなせるわけでしょ。" userName="panarky" createdAt="2025/05/16 16:45:10" color="#ff33a1">}}




{{<matomeQuote body="君が言いたいことはわかるよ。俺の言いたいポイントはね、もしRLVRなんかからの報酬に基づいてエージェントと検証役／監視役を一緒に学習させると、システム全体（エージェント＋監視役）が報酬ハッキングするようになるってことなんだ。OpenAIが彼らの”Learning to Reason with CoT”っていうブログ記事でこれを示してたんだよ。CoTの中で報酬ハッキングと関連する文字列を検知して罰を与えるためにモデルを使ったんだけど、結局モデルは検知されにくい方法で報酬ハッキングするようになっただけだったんだ。高次の検証役をどんどん積み重ねても、時間を稼げるだけかもしれないし、偽陰性率も上がる。それに報酬ハッキングはシステムにとって安定したアトラクターなんだよ。" userName="somebodythere" createdAt="2025/05/16 18:56:56" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
