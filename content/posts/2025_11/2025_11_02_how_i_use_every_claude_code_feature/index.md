+++
date = '2025-11-02T00:00:00'
months = '2025/11'
draft = false
title = '私がClaude Codeの全機能をどう使っているか徹底解説！'
tags = ["AI", "プログラミング", "Claude", "エージェント", "ツール"]
featureimage = 'thumbnails/orange2.jpg'
+++

> 私がClaude Codeの全機能をどう使っているか徹底解説！

引用元：[https://news.ycombinator.com/item?id=45786738](https://news.ycombinator.com/item?id=45786738)




{{<matomeQuote body="記事にはAGENTS.mdと同期してるってあるけど、Anthropicがおすすめしてるのは、CLAUDE.mdに「@AGENTS.md」って一行だけ書いて、実際のコンテンツは別のファイルに置く方法らしいよ。詳しい情報はこのURLを見てみてね！<br>https://docs.claude.com/en/docs/claude-code/claude-code-on-t..." userName="simonw" createdAt="2025/11/02 02:27:09" color="#ff5733">}}




{{<matomeQuote body="これは彼らがちゃんと合わせるべき点の一つだね。慣例に従ってCLAUDE.mdをAGENTS.mdにリネームすべきだと思うよ。" userName="allyant" createdAt="2025/11/02 09:12:06" color="">}}




{{<matomeQuote body="公平に言うとさ、AnthropicやClaudeはAGENTS.mdが流行る前からCLAUDE.mdを使い始めたんじゃないかな。" userName="embedding-shape" createdAt="2025/11/02 15:10:55" color="">}}




{{<matomeQuote body="そこまで先を読めなかったことを批判するなら、それでもかなり公平な意見だと言えるんじゃないかな。" userName="jstummbillig" createdAt="2025/11/02 16:53:27" color="">}}




{{<matomeQuote body="僕は強く反対だな。エージェントごとに違うプロンプトファイルを読ませられないのはめちゃくちゃ迷惑だよ。Cursorは今、AGENTS.mdを自動でロードしちゃうんだけど、それを無効にする方法がなくて最悪なんだ。" userName="SavioMak" createdAt="2025/11/03 01:15:20" color="#45d325">}}




{{<matomeQuote body="うちはAGENTS.mdをCLAUDE.mdにシンボリックリンクしてるんだけど、それで問題なく動いてるみたいだよ。" userName="donatj" createdAt="2025/11/02 08:08:28" color="#ff33a1">}}




{{<matomeQuote body="それが正しいやり方だね。" userName="schainks" createdAt="2025/11/02 15:54:55" color="">}}




{{<matomeQuote body="うん、それがたぶんもっときれいなやり方だよね。" userName="sshh12" createdAt="2025/11/02 02:48:23" color="">}}




{{<matomeQuote body="symlinkを使うとClaude Codeがよく混乱するんだよね。CLAUDE.mdがAGENTS.mdへのシンボリックリンクだって理解させるのに、何回もやり取りが必要になるんだ。<br>推奨アプローチはClaude Code固有の情報を分けられる利点があるけど、AnthropicはAGENTS.mdフォーマットを採用すべきだと思う。別ファイルだとCLAUDE.mdに記憶が書かれて、定期的に整理が必要になるのも面倒だよ。" userName="nivertech" createdAt="2025/11/02 08:58:11" color="#ff5c5c">}}




{{<matomeQuote body="Gitリポジトリでのsymlinkの挙動、特に違うOS間での動きがよく分かってないんだ。大丈夫なのかな？<br>Anthropicは「CLAUDE.mdに@AGENTS.mdを入れろ」って言ってるし、自分で試したら、手動でコピーしたみたいにシステムプロンプトに内容が全部入ったから、この方法で満足してるよ。Anthropicが直接AGENTS.mdをサポートするまではね。" userName="simonw" createdAt="2025/11/02 02:40:43" color="">}}




{{<matomeQuote body="Gitでは、他のチェックアウトでも同じsymlinkが作られるだけだよ（Linux/macOSの場合ね。Windowsはローカル設定の変更が必要だと思うけど）。<br>保証されたポータブルな唯一の方法は、同じリポジトリ内の別のファイルへの相対パスのsymlinkにすることだね。つまり、CLAUDE.mdはAGENTS.mdを指すようにするべきで、絶対パスはダメだよ。" userName="OJFord" createdAt="2025/11/02 11:46:09" color="#ff5c5c">}}




{{<matomeQuote body="Windowsだと、ローカルのGit設定次第なんだ。特にDockerコンテナを使ってWindowsで開発をすると、symlinkの挙動がまた違ってくるから、あまり良くないと思ってるよ。" userName="pletnes" createdAt="2025/11/02 10:16:09" color="">}}




{{<matomeQuote body="僕はAGENTS.mdをCLAUDE.mdにsymlinkしてるけど、自分のリポジトリではうまく動いてるよ。でも、OSをまたいでの動作は保証できないな。" userName="j_bum" createdAt="2025/11/02 02:42:19" color="">}}




{{<matomeQuote body="新しくクローンした時に、ファイルを変更したらもう一方が更新されるか確認してほしい。<br>Gitはデフォルトで、新しくクローンする時symlinkをただのファイルコピーとして扱うと思ってたんだ。つまり、Gitがsymlinkを認識してないのかも。" userName="BoiledCabbage" createdAt="2025/11/02 04:37:56" color="">}}




{{<matomeQuote body="Gitはsymlinkをしっかりサポートしてるよ。ただ、システム設定によっては、Windowsで実際のsymlinkが作成されないこともあるけどね。" userName="auscompgeek" createdAt="2025/11/02 05:13:20" color="#ff33a1">}}




{{<matomeQuote body="僕の経験だと、Claudeも他のエージェントも、セッションごとに明示的に指示しない限り、AGENTS.md（やCLAUDE.mdなど）を実際には読んでくれないよ。" userName="caymanjim" createdAt="2025/11/02 16:20:40" color="">}}




{{<matomeQuote body="Claude CodeのHTTPトラフィックを調べて確認したよ！CLAUDE.mdファイルの内容（そして@で参照されたAGENTS.mdも）は、追加のファイル読み込み操作なしで、システムプロンプトに自動的に含まれてるんだ。" userName="simonw" createdAt="2025/11/02 17:21:46" color="#ff5c5c">}}




{{<matomeQuote body="うわー！これって正直がっかりだよ。Claudeが僕のAGENTS.mdの指示をしょっちゅう無視するの考えるとね。" userName="topherhunt" createdAt="2025/11/02 19:34:56" color="">}}




{{<matomeQuote body="@参照の要件、気づいてた？AGENTS.mdはデフォルトでは含まれないけど、CLAUDE.mdは含まれるべきだよ。" userName="brulard" createdAt="2025/11/02 22:38:26" color="#785bff">}}




{{<matomeQuote body="MCPに関するこの見解、めちゃくちゃ好きだな！https://blog.sshh.io/i/177742847/mcp-model-context-protocol<br>APIが肥大化するより、MCPはシンプルで安全なゲートウェイとして、強力な高レベルツールを提供すべきってさ。MCPの役割は、エージェントのために現実を抽象化するんじゃなく、認証、ネットワーキング、セキュリティの境界を管理して、あとは邪魔しないことだって。" userName="simonw" createdAt="2025/11/02 02:41:42" color="#ff5733">}}




{{<matomeQuote body="ありがとう！MCPが出たばかりの頃は、この使い方を想像できなかったな。でも、Claudeはだんだん「ツール」じゃなくてデータに対するスクリプト処理を求めてるみたい。僕／MCPの仕事は、そのデータをClaudeに渡すことになったよ。" userName="sshh12" createdAt="2025/11/02 02:55:02" color="#45d325">}}




{{<matomeQuote body="MCPじゃなくて軽いCLIsを使ってみた？CLIsの方がClaudeにとって簡単だって分かったんだ。特にClaudeと一緒にCLIsを作って、計画中にユーザーが困惑しないようにガイダンスを追加するように指示すると良いよ。僕らの認証、ログ解析、インフラ状態とか全部CLIで使えるし、Claudeにそれを指定するとかなりいい感じ。" userName="nostrebored" createdAt="2025/11/02 06:03:48" color="#ff5733">}}




{{<matomeQuote body="うん、それが可能で、もし自分で作れるなら、それが正しい解決策だね。今、僕のほとんどの統合はMCPじゃなくて、そういう純粋なCLIsなんだ。CLIsを使えば何でもできるけど、MCPは共通インターフェースとして人々やプラットフォームが採用したいと思う標準としてまだ存在するよ。" userName="sshh12" createdAt="2025/11/02 06:13:53" color="#38d3d3">}}




{{<matomeQuote body="MCPって、ほとんどのケースでまだスコープが足りないよね。例えば、企業のGoogle Drive全体に接続できるMCPなんて実用的じゃない。無理だよ。特定のホワイトリストに制限できないのはなんで？" userName="theshrike79" createdAt="2025/11/02 21:39:29" color="#ff33a1">}}




{{<matomeQuote body="＞ 特定のホワイトリストに制限できないのはなんで？<br>それはできるよ。でも、Rootsを実装したMCPクライアントとサーバーを使う必要があるんだ。" userName="brazukadev" createdAt="2025/11/03 22:24:14" color="#785bff">}}




{{<matomeQuote body="同感だよ。僕の唯一のMCPはコードインタプリタなんだ。最近、MCPの「プロキシ」を作って、コードインタプリタ内からエージェントがMCPを呼び出せるようにする実験も始めたよ [1]。でも、基本的にはまだMCPはあまり使ってないな。エージェントが自分で問題を解決するのがすごく得意だからね。MCPはツール部分よりも認証部分に重点を置いてほしいな。資格情報でAPIにアクセスできるようにするだけで、エージェントは自分で問題を解決するのに十分な力を得るよ。<br>[1]: https://x.com/mitsuhiko/status/1984756813850374578?s=46" userName="the_mitsuhiko" createdAt="2025/11/02 09:27:20" color="#ff5733">}}




{{<matomeQuote body="MCPは、もしエンドユーザーが直接接続するクライアント向けサービスじゃなくて、重要な内部ツールAPIゲートウェイ（ステートレスHTTP）として使うなら、こんな感じで機能するよ。基本的にはOpenAPIなんだけど、LLM推論向けにもう少し調整されてるって感じだね。" userName="cjonas" createdAt="2025/11/02 02:57:20" color="#45d325">}}




{{<matomeQuote body="正直、LLMツールはどれも結構良い感じだよね。でもさ、みんな出力スタイルとかUIにこだわりすぎじゃない？例えば、「絶対その通り！」みたいなゴマすり表現は別にバグじゃないんだよ。むしろ、君がAIに依存しすぎてるサインって感じ。俺の目標は「撃って忘れる」こと。つまり、仕事を任せて、文脈を設定したら、あとはAIにやらせるだけ。ツールの評価は最終的なPRの出来で判断するんだ。<br>でも、俺が毎日LLMツールを使ってて思うのは、ある程度の規模や複雑さのアプリケーションだと、このやり方は通用しないってこと。すぐに大量のコード、コメント、Markdownファイル、そして問題解決になるかわからない余計なテキストに圧倒されちゃうよ。そうなると、大量の怪しいコードのPRレビューが重荷になって、もしそれをマージしすぎたら、すぐにコードベースが肥大化して、どんなに巧みなプロンプトを使っても整理できなくなる。だから、アイデア出しや、すごくターゲットを絞ったプロンプトに使うのが一番。任せっぱなしはマジでクレイジーだよ。" userName="spicyusername" createdAt="2025/11/03 03:48:38" color="#785bff">}}




{{<matomeQuote body="完全に同意だね。上で言ってた戦略は、小さいホビー用のコードベースでしか通用しないよ。" userName="isubkhankulov" createdAt="2025/11/03 17:08:39" color="#ff5c5c">}}




{{<matomeQuote body="Claude Codeの設定を改善するのに、Claude Code自体を使うのを忘れてない？plan modeに切り替えて、このプロンプトを試してみてよ：「https://blog.sshh.io/p/how-i-use-every-claude-code-feature のドキュメントを読んで、私のClaude Codeのセットアップをどう改善すればいいか教えて」" userName="michaelbuckbee" createdAt="2025/11/02 11:54:45" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="「Claude Codeは単なるインタラクティブなCLIじゃない。全く新しいエージェントを構築するための強力なSDKなんだ——…」ってさ。エムダッシュと「XじゃなくてY」構文が同じ文にあるなんて、AIが書いた記事を読むのはもううんざり。読者に対して失礼だよ。" userName="WickyNilliams" createdAt="2025/11/02 10:15:22" color="">}}




{{<matomeQuote body="俺もAIが生成したものを読むと本能的に嫌悪感があったんだけど、最近はもっと穏やかな意見になってきて、内容そのもので判断しようとしてるんだ。例えば、この記事では全然気にならないよ。すごく役立つ参考資料だし、著者がちゃんと読んで、整理して、編集してるのが明らかだからね。これはAIの良い使い方だと思う。ただ、AIの出力をコピペしてブログ記事として出すだけのやつらは、かなり非難されるべきだね。" userName="freedomben" createdAt="2025/11/02 14:38:57" color="#ff5c5c">}}




{{<matomeQuote body="書くことって思考のためのツールだと思うんだ。思考をアウトソースしちゃうと、言いたかったことが薄まっちゃう気がする。もしそこまでがっつり編集されてたら、そんなAIっぽい兆候は残らないはずだよね。俺はコードにはAIを使うけど、人間が読む文章には絶対使わないよ。" userName="WickyNilliams" createdAt="2025/11/02 17:50:21" color="#ff33a1">}}




{{<matomeQuote body="ハルシネーションの心配はないの？" userName="nxor" createdAt="2025/11/02 15:39:06" color="">}}




{{<matomeQuote body="心配するよ、もちろん。でも、この記事は「著者がちゃんと読んで、整理して、編集してる」って部分が対策になってると思う。あと、人間が書いたものにも間違いはたくさんあるから、俺は何でも懐疑的に読むようにしてるんだ。" userName="freedomben" createdAt="2025/11/02 16:20:02" color="#45d325">}}




{{<matomeQuote body="もし著者がドラフトを書いて、それを徹底的に読み直したら、AIが引き起こしたハルシネーションじゃなくて、人間が引き起こしたハルシネーションだけになるはずだよ。" userName="NewsaHackO" createdAt="2025/11/02 16:23:37" color="">}}




{{<matomeQuote body="インターネットは死んだ。インターネットよ永遠なれ。" userName="yard2010" createdAt="2025/11/02 10:42:25" color="">}}




{{<matomeQuote body="「永遠の9月 2」が、今回はもっと「永遠」になってるって話だね。" userName="resize2996" createdAt="2025/11/02 15:11:07" color="">}}




{{<matomeQuote body="今や「永遠の9月 3」って感じだね。iPhoneが登場した時に「永遠の9月 2」が来たんだ。" userName="joquarky" createdAt="2025/11/03 03:23:38" color="">}}




{{<matomeQuote body="「AIが書いた記事を読むのはもううんざりだ」って意見に対して、「別に強制されてるわけじゃないでしょ？」って反論してるね。「読者に失礼だ」って意見には、「全然失礼なんて感じなかったよ。むしろ尊重されてる気分で全部読んじゃった」って返してる。" userName="paulcole" createdAt="2025/11/02 16:29:37" color="">}}




{{<matomeQuote body="「強制された」なんてことは何も書かれてなかったよ。記事は全部読んだし。ただ、AIによって（一部？）書かれたとは明かされてなかったね。僕が引用したあの文章は、かなり後の方に出てきたんだ。" userName="WickyNilliams" createdAt="2025/11/02 17:46:35" color="#38d3d3">}}




{{<matomeQuote body="「AIによって書かれたとは明かされなかった」って言うけど、それがどうしたって言うの？AIが書いた文章が嫌いで、かなり読み進めてから腹が立ったんだとしたら、怒る相手は著者？それとも自分自身？もしこれAIなしで書かれてて、ただ君がAIライティングの検出が苦手だったって分かったら、もっとハッピーになるの？" userName="paulcole" createdAt="2025/11/02 17:50:23" color="#45d325">}}




{{<matomeQuote body="「/clear と /catchup（シンプルな再起動）：僕のデフォルトの再起動方法。状態を /clear してから、Claudeにgitブランチの変更された全ファイルを読ませるカスタムの /catchup コマンドを実行してるんだ。」僕も似たような回避策をしてるよ。Anthropicはそのうち /compact コマンドがこの機能をするようにするんじゃないかな。" userName="mritchie712" createdAt="2025/11/02 13:02:44" color="#38d3d3">}}




{{<matomeQuote body="/compact の遅延がひどくて使えないって感じだよ。僕がコンテキストが0%になるまで待っちゃうせいかもしれないけどね。面白い豆知識なんだけど、実はコンテキストの大部分がコンパクト化のために予約されてるんだ。「残りコンテキスト0%」って表示されても、実際はコンパクト化用に約30%が残ってるんだよ。なのに、なぜか半分くらいの確率で、コンテキストがなくなったりAPI制限に引っかかったりしてコンパクト化が失敗するんだよね。" userName="cannonpalms" createdAt="2025/11/02 19:17:04" color="#ff5733">}}




{{<matomeQuote body="不思議なんだけど、そういう時ってClaudeを閉じて claude --continue を実行すると、compactするためのスペースができるんだ。意味不明だけどね。でもcompact後の状態がどうなるか分からないから、どのソースファイルを読めばいいかとか全部含めて、完全で徹底したレポートを書くようClaudeに頼む方が良いよ。手間はかかるけど、変な方向に行っちゃうよりはマシだね。" userName="fourthark" createdAt="2025/11/03 01:36:29" color="#38d3d3">}}




{{<matomeQuote body="古い経験則だと、コンパクト化する時点で、もう手遅れってことらしいよ。" userName="theshrike79" createdAt="2025/11/02 21:40:09" color="">}}




{{<matomeQuote body="3000語が「長すぎて全部読むより参照として使う」って言われるのはちょっと悲しいけど、いくつか面白い点もあったよ。プレースホルダーじゃなくて具体的な例が入った、もっと長いバージョンも見てみたいね。" userName="sixhobbits" createdAt="2025/11/02 13:53:05" color="">}}




{{<matomeQuote body="もしClaude CodeとかCodex CLIみたいなCLIベースのエージェントを使ってないなら、使うべきだって。CLIベースのエージェントってCursorアプリより良いの？どうして？CursorはCmd-Lでコードの一部を選択して“ここをこう直して”って簡単にできるから好きなんだけど。CLIエージェントは試したことないけど、コードをCLIで送るのって面倒くさそう。“login.tsの148-160行目を直して、ここがこう壊れてるよ___”ってね。" userName="dfabulich" createdAt="2025/11/02 05:27:33" color="">}}




{{<matomeQuote body="うん、最初はCursorから始めて、ハイブリッドになって、先月くらいから完全に移行したよ。きびきびしたミニマルなUXもそうだけど、純粋に効果がずっと良いみたい。ClaudeはCCで最高の仕事をするし、Codexも同じだと思うよ。" userName="sshh12" createdAt="2025/11/02 06:17:23" color="#45d325">}}




{{<matomeQuote body="Cursor Composerは、こういう連携機能を持ってて、他のモデルよりも平均的にIDEリソースを上手く使ってるみたいだよ。" userName="dlojudice" createdAt="2025/11/02 13:05:36" color="">}}




{{<matomeQuote body="どうやらCursor 2.0のこと、まだ知らないみたいだね。<br>https://cursor.com/blog/2-0" userName="kristofferR" createdAt="2025/11/02 13:47:27" color="#785bff">}}




{{<matomeQuote body="より良いかって？それは難しいね。違うか？うん。評価する価値はあるか？絶対に。30分使ってみれば、ここに返信するよりも良い答えが見つかるはずだよ。すぐに自分で答えが出ると思う。15年くらい真剣にコーディングしてるけど、Claude Codeほど私のコーディング方法を変えたツールはないね。これには“AI”じゃないツールやサービスも含まれるよ。宣伝してるみたいに聞こえるかもしれないけど、私は関係者じゃないんだ。これが物作りへの情熱を再燃させてくれた大きな要因なんだ。" userName="stressback" createdAt="2025/11/03 01:12:24" color="#ff33a1">}}




{{<matomeQuote body="Claudeは、VSCodeで選択されたコードの行をちゃんと検出できるんだよ。" userName="rajamaka" createdAt="2025/11/02 06:07:07" color="#785bff">}}




{{<matomeQuote body="Gemini CLIやCodexもそうだよ。私はCLIをVSCで実行してて、VSCはファイルブラウザとしてだけ使ってるよ。" userName="greymalik" createdAt="2025/11/02 12:33:05" color="#45d325">}}




{{<matomeQuote body="どれもオプションでIDE連携ができるんだ。例えば、ClaudeはアクティブなVSCodeタブやハイライトされた行を知ってるんだよ。" userName="wonnage" createdAt="2025/11/02 05:36:06" color="#45d325">}}




{{<matomeQuote body="CursorからClaudeに乗り換えたら、24時間で戻れないって気づいたよ。CursorのVS Code UIは余計な機能が多すぎるしバグだらけ。出力も全然良くなかった。Claude CLIとVS Codeの組み合わせが最高すぎて、もう他のを試す気にならないな。Cursorはおもちゃみたいだったけど、Claude CLIは毎日価値を提供してくれる最高の製品だよ。" userName="solumunus" createdAt="2025/11/02 07:41:15" color="#ff5c5c">}}




{{<matomeQuote body="VS Codeにはもうエージェントが内蔵されてるけど、そのUIって使ってみた？" userName="davidmurdoch" createdAt="2025/11/02 14:44:44" color="">}}




{{<matomeQuote body="その部分はCursorとだいたい同じだね。それよりも、僕が最後に確認した時点ではCCの方がCursorより良いエージェントだよ。VS CodeでCCを動かすための公式Anthropic拡張もあるんだ。VS Codeのdiffビューを使えるのが一番の利点なんだけど、残念ながらこの拡張はターミナル版CCの最新機能をすべてサポートしてないから、結局ターミナルを使ってるよ。" userName="KingMob" createdAt="2025/11/02 08:32:16" color="#ff5c5c">}}




{{<matomeQuote body="うん、複数のファイルを選んでフォーカスできるよ。あと、PATHにあるものなら何でも実行できるんだ。例えば、`gh`とかを使うのもかなり得意だね。" userName="dansult" createdAt="2025/11/02 05:53:10" color="">}}




{{<matomeQuote body="Cursorで同じモデルを使うよりも、CodexやGPT5、Claude Code CLIを直接使う方が良い結果が出るよ。両方比較したんだ。Cursorは独自のaugmentationを適用してて、出力サイズを減らしてるみたい。たぶんトークンを節約するためだろうね。" userName="shanecp" createdAt="2025/11/03 00:05:41" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ClaudeはCursorよりコーディングが上手いんだよね。正直、インターフェースはあんまり重要じゃないよ。僕は`cmd-L`も好きだけど、Claudeの方がただコードを書くのが得意なんだ…。あと、AnthropicがSkillsみたいなクールなものを作るのに集中してるのは良いんだけど、Cursorの連中がCursor 2.0で何をやってるのかはよく分からないな :shrug:" userName="noodletheworld" createdAt="2025/11/02 12:11:49" color="#38d3d3">}}




{{<matomeQuote body="CursorでもClaude SonnetやClaude OpusのLLMを使えるから、出力に関してはかなり似たものになると予想するよ。エージェントの部分は、両方とも常に改善され続けてるんだ。" userName="smokel" createdAt="2025/11/02 15:30:01" color="">}}




{{<matomeQuote body="Claude Code CLIには、使ってるモデルだけじゃなくて、プロンプト、ツール、ヒューリスティクスの中に何か特別なものがあるんだ。ANTROPHIC_URLを別のモデルに向けてみたらそれが明らかになったよ。結果はほぼ同じだったからね。Kilo CodeやCoPilot、JetBrain’s agentなんかもSonnet 4に直接当ててみたけど、それと比べるとClaudeの出力は全然良くなかったな。Claudeには不満もあるけど、それでもすごく感動してるよ。" userName="cmrdporcupine" createdAt="2025/11/02 17:30:18" color="#45d325">}}




{{<matomeQuote body="Claude Codeは、Anthropicモデルを使ってるCursorと比べてもはるかに効率的だよ。プランニングとツール利用の能力が段違いに優れてるんだ。" userName="ta988" createdAt="2025/11/02 16:45:08" color="#785bff">}}




{{<matomeQuote body="VS CodeでClaudeとCodex使ってんだけど、マジでめっちゃ使えるよ。テキスト選んでCmd-Lで「ここ壊れてるから直して」って言うだけでちゃんと動くんだ。このやり方、最高！" userName="nl" createdAt="2025/11/03 00:24:43" color="#38d3d3">}}




{{<matomeQuote body="マジかよ、プログラミングってこの2年で激変したよな。今はツール相手に心理戦仕掛けて、なんとか動かそうとしてる感じ。そのうちLLMが「メンタルブレイク中だから会社休む」とか言って、俺らも病欠する日も来そうだわ。" userName="ryandvm" createdAt="2025/11/03 13:38:31" color="#ff5733">}}




{{<matomeQuote body="プロンプトの一部を大文字にすると、もっと良い結果が出るって聞いて、もう無理ってなったわ。こんなのにいちいち付き合ってらんないよ。" userName="rkomorn" createdAt="2025/11/03 13:43:08" color="">}}




{{<matomeQuote body="こういうツールは面白いけどさ、業界全体でまた「顧客」以外のことに夢中になってない？Paul Grahamの「Top idea in your mind」ってエッセイみたいにさ。" userName="johnrob" createdAt="2025/11/02 03:08:40" color="">}}




{{<matomeQuote body="そうそう、LLMコーディングツールは開発スピードとコストばっか見てるけど、顧客が求めてるのは機能とバグのなさだろ？安く早く作っても、顧客のニーズに合わないバグだらけの商品じゃ誰も得しない。AI全般も同じで、CEOは人減らしにAIを使いたがるけど、顧客を満足させるレベルにはまだ遠い。AIチャットボットとか、顧客をイラつかせるだけだよ。" userName="HarHarVeryFunny" createdAt="2025/11/02 14:07:49" color="#38d3d3">}}




{{<matomeQuote body="「顧客」って具体的に何のこと？だって俺はこれらのツールを、顧客をもっとよく理解するために使ってるんだけど。" userName="mewpmewp2" createdAt="2025/11/02 10:56:26" color="">}}




{{<matomeQuote body="結論から言うと、スキルって適切な抽象化で、MCPみたいなAPIモデルより堅牢で柔軟なスクリプトベースのエージェントモデルのことだね。MCPもAPIだけど、そのAPIがスキルを実行できるんだ。つまり、MCPとスキルは対立じゃなくて、「柔軟なスキル」と「パラメータベースのAPI」っていう広い概念だよ。パラメータAPIも書き方次第で柔軟になるけど、LLMをガイドするSKILL.mdがないのがスキルとの違いだね。あと、Macユーザーなら俺が作ったOpenSkillsでスキルをローカル実行できるよ。https://github.com/BandarLabs/open-skills" userName="mkagenius" createdAt="2025/11/02 04:06:11" color="#ff33a1">}}




{{<matomeQuote body="Claude Codeの進化、マジで半端ないよな！毎週新しいことを覚えなきゃいけないくらい、どんどん良くなってるんだぜ。" userName="thoughtsyntax" createdAt="2025/11/02 06:29:17" color="">}}




{{<matomeQuote body="CPUとmemoryの使用量見たら、別に大したことないだろ。M4 Macの64GB RAMでも動きが遅くならないで機能が増えたら、それはもう魔法レベルだよ。" userName="prodigycorp" createdAt="2025/11/02 08:45:56" color="">}}




{{<matomeQuote body="俺のM1 MacBook Proは、iTerm2でClaude Codeのセッションを10個以上開いても全然問題なく動いてるよ。ひょっとしてメモリリークしてるターミナル使ってんの？" userName="ed_mercer" createdAt="2025/11/02 09:00:11" color="#785bff">}}




{{<matomeQuote body="iTerm2を使ってるんだけど、メモリリークとかCPUの問題がGitHubのissueでめちゃくちゃ報告されてるよ。" userName="prodigycorp" createdAt="2025/11/03 00:56:11" color="">}}




{{<matomeQuote body="俺も16GB RAMのホームサーバー（150ドルくらい）でClaude Codeを問題なく動かしてるよ。" userName="mewpmewp2" createdAt="2025/11/02 10:55:25" color="">}}




{{<matomeQuote body="10個も並行してエージェントをどうやって管理してるの？？" userName="swah" createdAt="2025/11/02 11:22:23" color="">}}




{{<matomeQuote body="俺はWindows Terminalを使ってるよ。タブの名前を変えてるんだ。<br>今のプロジェクトだと、トップレベルのチャットが1つ、4つのコンポーネントのサブディレクトリにそれぞれ1つずつチャットがあるよ。<br>さらにQA機能用のターミナルも別で開いてるから合計10タブだね。<br>docker psみたいな簡単なコマンドをサッと実行する用にもう1つ使ってるよ。<br>モデルはqwenを使ってる。" userName="reachableceo" createdAt="2025/11/02 13:08:31" color="#ff5c5c">}}




{{<matomeQuote body="CCがめちゃくちゃ速くなったとはいえ、それを管理するのはかなりの認知負荷だよね。<br>アウトプットはちゃんとレビューしてるの？" userName="yyhhsj0521" createdAt="2025/11/02 14:03:00" color="">}}




{{<matomeQuote body="アウトプットはユーザーがレビューしてるよ。" userName="blueside" createdAt="2025/11/03 05:08:20" color="">}}




{{<matomeQuote body="ごめん、10個全部を同時にアクティブには使ってないよ。<br>メモリには置いておいて、作業を再開する時のために開いたままにしてるんだ。<br>同時にアクティブで使うのは2、3個だけだよ。" userName="ed_mercer" createdAt="2025/11/02 21:00:50" color="#ff5733">}}




{{<matomeQuote body="え、Claude Codeってほとんどシステムリソース使わないんだけど。<br>本当にClaude Codeなの？Tahoe向けにアップデートされてないElectronアプリとかじゃない？" userName="sunaookami" createdAt="2025/11/02 14:49:34" color="">}}




{{<matomeQuote body="Claudeはローカルマシンでほとんど何も動かさないよ。<br>MacBook Airとか、しょぼい2vCPU 4GBのVPSでも全然問題なく動いてる。" userName="caymanjim" createdAt="2025/11/02 16:23:14" color="#ff5c5c">}}




{{<matomeQuote body="CCはシステムリソースをほとんど使わないよ。" userName="cannonpalms" createdAt="2025/11/02 18:57:30" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
