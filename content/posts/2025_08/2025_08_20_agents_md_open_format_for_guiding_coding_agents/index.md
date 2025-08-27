+++
date = '2025-08-20T00:00:00'
months = '2025/08'
draft = false
title = 'AGENTS.md」AIコーディングエージェントを賢く導くオープンフォーマット！'
tags = ["AI", "プログラミング", "LLM", "ファイルフォーマット", "開発ツール"]
featureimage = 'thumbnails/red3.jpg'
+++

> AGENTS.md」AIコーディングエージェントを賢く導くオープンフォーマット！

引用元：[https://news.ycombinator.com/item?id=44957443](https://news.ycombinator.com/item?id=44957443)




{{<matomeQuote body="「AGENTS.md」って単一ファイルじゃなくて、「.agents」みたいなディレクトリにして、その中に「index.md」を置くべきだよ！小さいプロジェクトなら単一ファイルでいいけど、複雑なプロジェクトだと階層構造にした方が、LLMが関連する情報だけ使えるし、ノイズも減って効率的だよ。メンテナンスも楽になるしね。名前も「.codebots」とか「.context」の方がいいかもね。" userName="CharlesW" createdAt="2025/08/20 01:03:04" color="#38d3d3">}}




{{<matomeQuote body="隠しファイルにするのはやめてよ！なんでみんな大事なファイルやディレクトリを隠したがるの？特にドキュメントは隠すべきじゃないでしょ。伝統なのは分かるけど、これはアンチパターンだよ。「robot_docs」とかにすればいいじゃん。" userName="skybrian" createdAt="2025/08/20 03:30:02" color="">}}




{{<matomeQuote body="それは、普通の「agents/」ディレクトリと名前が衝突しないようにするためだよ。" userName="animal_spirits" createdAt="2025/08/20 04:12:13" color="">}}




{{<matomeQuote body="それなら、実際のソースコードを「src/」ディレクトリに入れればいいだけの話じゃん。" userName="globular-toast" createdAt="2025/08/20 05:48:30" color="">}}




{{<matomeQuote body="もう2025年なんだから、Unixの古い慣習に従うのはやめて「source」みたいに分かりやすい名前にしようよ。「/etc」とかほんと嫌なんだよね。変わらないのは分かってるけどさ、まだイライラするよ。" userName="oblio" createdAt="2025/08/20 06:30:54" color="">}}




{{<matomeQuote body="この「AGENTS.md」の内容って、ずっと「CONTRIBUTING.md」であるべきだったんだよ。だって、人間がプロジェクトに貢献するときに探してる情報と全く同じだもん。" userName="zimbatm" createdAt="2025/08/20 13:03:37" color="#ff33a1">}}




{{<matomeQuote body="現代では、タイピングのしやすさ、画面の占有率、慣習とか、他にも最適化してる指標があるって考えたことある？「/User Files/Bob’s Files/Coding Projects/Python Projects/Bob’s Cool Python Library/Source Code/Model Files/SomeObject.py」みたいな長いパス、本当に書きたい？" userName="von_lohengramm" createdAt="2025/08/20 06:51:12" color="">}}




{{<matomeQuote body="「.well-known/」なんてどう？" userName="riffic" createdAt="2025/08/20 02:03:04" color="">}}




{{<matomeQuote body="そうそう！プロジェクトは独自のルートファイルやディレクトリを作るのをやめてほしいな。ルートディレクトリを汚染しないで。’well-known’って名前は好きじゃないけど、少なくとも一つの規約にはなってるよね [1]。XDG [2]みたいのをリポジトリやビルドスクリプト、パッケージマネージャとかツール設定で共通化できたら最高だと思う！<br>[1] https://www.rfc-editor.org/rfc/rfc8615<br>[2] https://wiki.archlinux.org/title/XDG_Base_Directory" userName="echelon" createdAt="2025/08/20 02:31:16" color="#ff33a1">}}




{{<matomeQuote body="これはソフトウェアが読むためのファイルなんだから、人間向けじゃないよね。俺の視点から見ると、これって隠しディレクトリに入れるのが一番じゃないかな？" userName="nephanth" createdAt="2025/08/20 06:13:25" color="">}}




{{<matomeQuote body="1. うん、俺のコメントをもう一度読んでくれたらわかると思うよ。2. 俺が言ってない極端な意見と戦いたくはないんだ。これを読んでみて: https://gobolinux.org/at_a_glance.html<br>パスにスペースが必要だとかは言ってない。常識的に考えて、”2025年になったんだからちゃんとした言葉を使おう”ってことだよ。" userName="oblio" createdAt="2025/08/20 07:42:36" color="">}}




{{<matomeQuote body="他の開発者にコードにコメントさせる一番効果的な議論は「エージェントがそれを読んで、もっと良い提案をしてくれるよ」ってやつ。すごくひねくれてるけど、これが効くんだよね。俺も君に同意するけど、現実には「みんなが自分と同じことを知ってるわけじゃない」ってことを理解できない人が多いんだ。だから、彼らには別の理由が必要なんだよ。" userName="oehpr" createdAt="2025/08/20 13:25:56" color="#45d325">}}




{{<matomeQuote body="このアイデア好きだな！今のセットアップで、このディレクトリの内容をエージェントプロンプトに追加するミドルウェアとか使ってる？" userName="jitix" createdAt="2025/08/20 02:12:21" color="">}}




{{<matomeQuote body="俺に言わせれば、これはアンチフィーチャーだよ。エージェントはAGENTS.mdの中から必要なものを選び取るべきで、全てを盲目的に使うべきじゃない。" userName="createaccount99" createdAt="2025/08/20 05:46:44" color="">}}




{{<matomeQuote body="コードベースの中に複数のAGENTS.mdファイルがあってもいいんだよ。ツールは現在のディレクトリにあるものと、コードベースのルートにあるものの両方を見るんだ。こうすれば、君が提案してるようなこともできるし、情報をコードの近くに保てるよ。" userName="awbraunstein" createdAt="2025/08/20 06:47:59" color="#38d3d3">}}




{{<matomeQuote body=".configは良い名前だよね。それに、ちょっとした支持者もいるんだよ。https://dot-config.github.io" userName="vinnymac" createdAt="2025/08/20 03:00:40" color="">}}




{{<matomeQuote body="大文字を使うと、Shiftキーと目的の文字を打つ、二つのキーを叩く必要があるんだ。だから/Programsは9キーじゃなくて10キー必要になっちゃう。さらに悪いことに、大文字がディレクトリ名の最初にあるから、自分で全部打たなきゃいけないし、タブ補完も使えない。10キーの/Programsは、4キーの/binの二倍以上のキーストロークだよ。短い名前の方が速く打てるし、手間もかからないんだ。俺の人生はほぼ全部キーボードを打つのに費やされてるから、その体験を最適化したいんだよね。" userName="eadmund" createdAt="2025/08/20 10:34:31" color="">}}




{{<matomeQuote body="コンテキストは無限じゃないからね。LLMと作業する時、重要なコンテキストを保存するのが超大事だよ。" userName="theshrike79" createdAt="2025/08/20 08:35:17" color="#45d325">}}




{{<matomeQuote body="AGENTS.mdを他のドキュメントファイルへのインデックスとして使えばいいんだよ。Apache Airflowの例<br>-https://github.com/apache/airflow/blob/main/AGENTS.md-を見てみて！" userName="meander_water" createdAt="2025/08/20 05:04:11" color="#785bff">}}




{{<matomeQuote body="私はLLMの指示を100行くらいの短いファイルにまとめてて、基本的なアーキテクチャ、テストモック、大規模な変更へのアプローチなんかをカバーしてるよ。自分のプロジェクトではこれで十分だって感じてるな。" userName="p1necone" createdAt="2025/08/20 03:09:50" color="">}}




{{<matomeQuote body="こういうファイルは.gitignoreみたいにネストして動くことが多いから、プロジェクト内のどんなディレクトリにも、競合しにくい形で挿入できるものが良いね。" userName="andrewingram" createdAt="2025/08/20 10:15:19" color="">}}




{{<matomeQuote body="この記事から分かったのは、人間は時間と労力を節約するために略語を使うってことだね。別に昔インクが高かったからじゃないんだよ。" userName="jadamson" createdAt="2025/08/20 10:11:42" color="">}}




{{<matomeQuote body=".agentsは隠しファイルで、AGENTS.mdはREADMEみたいに人間が見るものだよね。人間が見るファイルが隠しファイルにリンクしてるのは意味ないんじゃない？" userName="setopt" createdAt="2025/08/20 05:13:26" color="#ff5c5c">}}




{{<matomeQuote body="これは人間とAI両方の設計ドキュメントみたいだね。docs/に入れてClaude Codeに書かせるべきで、AGENTS.mdはロボット専用にするのがいいと思う。ファイルサイズは好みだけど、小さいファイルの方がエージェントに集中させやすいし、レビューも楽だよ。" userName="nivertech" createdAt="2025/08/20 08:23:22" color="#ff5c5c">}}




{{<matomeQuote body="コンテキストはまだ無限じゃないんだよね。すぐ古くなるかもしれない新しい標準を作るのは、ちょっと良くないアイデアだと思うな。" userName="_ache_" createdAt="2025/08/20 08:54:17" color="">}}




{{<matomeQuote body="/usr が Program Files、/var が ProgramData、/home が Documents and Settings、/etc が Control Panel。WindowsとUnix系のパス/ディレクトリ名の対比だね。" userName="Lockal" createdAt="2025/08/20 11:10:16" color="">}}




{{<matomeQuote body="隠す意味がわかんないな。表に出してあれば、自分で調整できるし、LLMにやらせることもできるじゃん。" userName="meander_water" createdAt="2025/08/20 05:23:04" color="">}}




{{<matomeQuote body="つまり、`Agents.md`をテストフォルダに入れて、テストの実行方法とか、新しいテストの生成方法を記述するってこと？使い方、合ってる？" userName="bryanrasmussen" createdAt="2025/08/20 06:57:23" color="">}}




{{<matomeQuote body="今はAIエージェントに特別な指示が必要だけど、そのうちいらなくなると思うんだ。人間のための包括的なプロジェクトドキュメントに集中して、`AGENTS.md`の内容もそこに含めるべきだね。LLMは人間の書いたものを読めるんだから、そのレベルで設計しようよ。" userName="blinkymach12" createdAt="2025/08/20 00:44:27" color="#785bff">}}




{{<matomeQuote body="「そのうち特別な指示がいらなくなる」って保証はないよ。完全自動運転車が無理なように、人間品質のコーダーAIも無理だろうね。今はAIコーダーも道具の一つにすぎないさ。" userName="vFunct" createdAt="2025/08/20 00:53:43" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Waymoに乗ったことある？" userName="CuriouslyC" createdAt="2025/08/20 01:03:34" color="">}}




{{<matomeQuote body="AIが社会に組み込まれるにつれて、機械可読な慣行が標準になると思う。自動運転の例で言うと、「赤信号での右折禁止。学期中の午前7時～9時」みたいな状況だと、場所、学校の学期、日時が必要になる。<br>検索で集めるか、自治体が法規を簡素化するか、QRコードみたいな機械可読な情報を標識に載せるかしないと、違反だらけになるよ。" userName="goosejuice" createdAt="2025/08/20 01:36:53" color="#38d3d3">}}




{{<matomeQuote body="リモートの人間オペレーターがいるような限定的な自動運転車のこと？いや、乗ったことないよ。" userName="vFunct" createdAt="2025/08/20 01:11:38" color="">}}




{{<matomeQuote body="コードベースの理解だけじゃないよ。「このassertライブラリを使ってテストを書け」とか「コメントは一切書くな」とか「構造化ログを使え」みたいなスタイルの指示も重要なんだ。コードが少ない新規プロジェクトでは特に役立つよ。" userName="tptacek" createdAt="2025/08/20 00:50:04" color="#ff5c5c">}}




{{<matomeQuote body="数年の進歩を考えると、それはちょっと見下した反応だね。詳細なマップを使ってるってのは正しいけど、リモートの人間オペレーターがいるってのは間違いだよ。WaymoはUberより楽しいし、サンフランシスコでの乗車数はLyftを抜いて、Uberもすぐ追い抜くだろうね。" userName="bix6" createdAt="2025/08/20 02:49:08" color="#45d325">}}




{{<matomeQuote body="「リモートの人間オペレーターがいない」ってのは間違いだよ。いるんだ。検索するなら“remote assistance operator”だね。<br>例: https://philkoopman.substack.com/p/all-robotaxis-have-remote..." userName="lemming" createdAt="2025/08/20 05:49:18" color="#ff33a1">}}




{{<matomeQuote body="このAIエージェントへの情報提供って、新人開発者をオンボーディングするときにもかなり使える情報だよね。" userName="naniwaduni" createdAt="2025/08/20 00:51:55" color="#ff33a1">}}




{{<matomeQuote body="それって、友達に電話で聞くのと同じで、遠隔で車を運転してるのとは違う話だよ。" userName="bix6" createdAt="2025/08/20 14:16:15" color="">}}




{{<matomeQuote body="これって、人間が機械の奴隷になる「逆ケンタウロス」みたいな感じがするな。機械に分かりやすくするのは無駄じゃないけど、人間が犠牲にする時間を考えなきゃダメだろ。" userName="username223" createdAt="2025/08/20 02:54:21" color="#ff33a1">}}




{{<matomeQuote body="車のために社会を再設計して、人間の住む環境を悪くしちゃった前例があるんだよ。歩道とか信号とか一時停止とか、色々ね。" userName="oblio" createdAt="2025/08/20 07:32:07" color="">}}




{{<matomeQuote body="あの手の標識ってバカげてる。道路を狭くしたり、シケインを設けたりして、そもそもスピードが出せないように再設計すべきだろ。標識なんて効果ないんだから。" userName="iknowstuff" createdAt="2025/08/20 03:48:25" color="">}}




{{<matomeQuote body="もしすでに共通のルールがあれば、AIエージェントはそれを見てたはずだよ。でもないから、新しく作る必要があったってこと。" userName="ameliaquining" createdAt="2025/08/20 01:14:35" color="#ff33a1">}}




{{<matomeQuote body="codexにagents.mdを作らせたら結構良かったよ。このファイルは最適化にはなるけど、エージェントが自分で見つけられないことは書いてないんだ。本当に必要なのは、何度も試行錯誤しながら学習していくリポジトリごとの学習ベースだよ。今のAIって会話ごとに毎回最初からやり直しなんだよね。これってAGIへの大きな課題だよ。コンテキストを増やすだけじゃ解決しないと思う。" userName="jillesvangurp" createdAt="2025/08/20 08:02:46" color="#45d325">}}




{{<matomeQuote body="人間の介入が必要なら、それは自律型とは言えないんだよ。例えば、数マイルごとに人間の操作が必要って、全然自律的じゃないよね。https://rodneybrooks.com/predictions-scorecard-2025-january-..." userName="lemming" createdAt="2025/08/20 23:46:27" color="#ff5733">}}




{{<matomeQuote body="自転車乗りとして、めちゃくちゃ同意するよ。たぶん、自動運転車でも同じように専用レーンとか特別な標識とか作るんだろうな。" userName="username223" createdAt="2025/08/20 13:52:27" color="">}}




{{<matomeQuote body="うん、同意。こういう情報はCONTRIBUTING.mdに入れるのがベストだと思うな。俺も自分だけのプロジェクトでも書くようにしてるよ、数ヶ月後に戻ってきたときにめちゃくちゃ助かるからさ。" userName="jaggederest" createdAt="2025/08/20 01:15:58" color="#ff5c5c">}}




{{<matomeQuote body="Waymoの体験って、世間では過小評価されてるんだよな。ちゃんと動くところでは、乗り込んだら目的地まで人間が何も手を出さなくても連れてってくれる。これってさ、最初のハンズオフAIコーディングエージェントも似たようなもんかもね。全部の作業は無理でも、得意な部分なら人間が介入しなくても動かせそうじゃん。" userName="Philpax" createdAt="2025/08/20 09:13:41" color="#ff5c5c">}}




{{<matomeQuote body="正直、AIのコンテキストとしてMarkdownファイルに書いてきたことって、元々人間のコントリビューター向けに書いてたことばっかりなんだよね。ていうか、いつもちゃんと書きたいと思ってたけど、半分くらいしかできてなかったようなこと。今、何が違うって、AIがそれを実際に読んで、理解して、しかも結構ちゃんと実行してくれるってことだよ！" userName="time0ut" createdAt="2025/08/20 03:51:27" color="">}}




{{<matomeQuote body="全然無関係じゃないよ、だってあれって根本的に運用・トラブルシューティングのモードが違うんだから。あんたは人間が運転してるって言うけど、俺はしてないって言ってるんだ。純粋な自律性についてじゃなくて、人間が問題を解決する方法について議論してるんだよ。<br>それに、2マイルの自動運転は…自律走行だろ。それが時とともに3、それから4、5って増えていくんだ。無限の自律性には達しないかもしれないけど、1時間の自動運転があれば都市のほとんどの場所に行けるし、10年以内にはそのレベルに達するって俺は賭けてもいいぜ。" userName="bix6" createdAt="2025/08/21 19:39:53" color="#ff5733">}}




{{<matomeQuote body="彼らは文字通り、車を運転してるんだよ。" userName="vFunct" createdAt="2025/08/20 18:03:13" color="">}}




{{<matomeQuote body="自動運転車に対する悲観的な見方はこれ見てみてよ: https://www.youtube.com/watch?v=040ejWnFkj0&t=3148s<br>もし動画が描いてるような結果になったら、人間はどんなテクノロジーも持つべきじゃないって思うね。" userName="oblio" createdAt="2025/08/20 15:16:36" color="">}}




{{<matomeQuote body="「うまくいくところでは、うまくいく」って基準なら、もう人間の指示なしでプログラミングできるエージェントは既にいるってことになっちゃうじゃん。" userName="agos" createdAt="2025/08/20 10:00:00" color="">}}




{{<matomeQuote body="AIはさ、ビジネスロジックみたいなものには常に特別なガイダンスが必要になると思うな。俺たちが何を作ってるのか、なんで作ってるのかっていうプロジェクトの最終目標を、AIは正確には理解できないだろうから。アーキテクチャの決め方も人間の好みによるし、結局変更点を確認するのは人間だから、そこが本当のボトルネックになる気がするね。" userName="joegibbs" createdAt="2025/08/20 01:36:38" color="#45d325">}}




{{<matomeQuote body="俺も同意見。今考えてるのはさ、(人間の)コントリビューターは自分のローカルチェックアウトで`ln -s CONTRIBUTING.md CLAUDE.local.md`とかをやるように促すべきだなってこと。それを.gitignoredにして、人間もLLMも両方のコントリビューターが同じファイルを読み書きできるようにするんだよ。<br>「新しい」やり方としては、`CONTRIBUTING.md`を適切なサブフォルダに入れることかな。それって人間にとっても結構便利だったりするしね。" userName="andyferris" createdAt="2025/08/20 02:05:13" color="#45d325">}}




{{<matomeQuote body="たぶん新しい学校なら可能だろうけど、既存の学校はほとんどの場合、隣接する道路設計の変更を強制するなんて贅沢はできないんだよ。あとさ、スクールゾーンって学校から何方向にも離れてて、学校に通じる交通量の多い交差点が安全になるように拡張されてるのをよく見るね。歩行者もドライバーも安全にするためだよ。現実世界って基本的にそんな白黒ハッキリしてないから、いつもグレーなニュアンスに対処しなきゃいけないんだ。" userName="lsaferite" createdAt="2025/08/20 12:46:54" color="">}}




{{<matomeQuote body="AIエージェントって、2010年代の自動運転車に近いって言えるんじゃないかな。順調に進んでる時でさえ、めちゃくちゃにならないように頻繁に人間が介入しなきゃいけないんだから。" userName="Philpax" createdAt="2025/08/20 10:08:13" color="#ff5c5c">}}




{{<matomeQuote body="君のプロンプト、ちょっとシンプルすぎない？<br>Claude Codeの`init`とかGithub Copilotの自己文書化プロンプトとか、すごい特別な工夫がいっぱいだよ。彼らのプロンプトを参考にすると、もっと改善できるはず！<br>詳しくはこちら: https://docs.github.com/en/copilot/how-tos/configure-custom-..." userName="criley2" createdAt="2025/08/20 11:38:38" color="#ff33a1">}}




{{<matomeQuote body="全然そうじゃないよ。人間向けの良いドキュメントはモデルにも役立つけど、モデルは人間よりずっと多くの詳細や文脈が必要だから、人間には書かないような情報も盛り込むべきだね。<br>モデルはとんちんかんなこともするから、そういう調整も必要だよ。" userName="kissgyorgy" createdAt="2025/08/20 10:19:51" color="#ff5733">}}




{{<matomeQuote body="そうそう！<br>まさにその点を、僕もここで指摘したんだよ: https://news.ycombinator.com/item?id=44837875" userName="theletterf" createdAt="2025/08/20 04:29:49" color="">}}




{{<matomeQuote body="今のところAGENTS.mdって、ただのREADME.mdじゃん？<br>でも、ロボット向けっていう「流行」が、みんなに内容を埋めさせるモチベーションになってるんだよね。<br>人間向けにはめんどくさがって書かなかったドキュメントを、ロボットのためなら書くって、ちょっと皮肉だよね。<br>人間工学に基づいたデザインみたいだ。" userName="spawarotti" createdAt="2025/08/20 00:52:22" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="僕は逆だと思うな。<br>みんなドキュメントを読むのがめんどくさかったから、誰も書く気にならなかったんだよ。<br>エージェント向けに一度CLAUDE.mdに書けば、一週間で何千ものエージェントに読まれるって分かってるから、モチベーションになるんだよ。" userName="nicklo" createdAt="2025/08/20 01:00:19" color="#ff33a1">}}




{{<matomeQuote body="この洞察、いいね！<br>良いドキュメントが欲しかったのは分かってたけど、誰も読んでくれないと維持する気力なくなるんだよね。<br>LLMはミーティングとかでオンボーディングできないから、ちゃんとしたオンボーディングにはドキュメントが必須だし、使われてるって分かれば怠けなくなるし、報われるよね。" userName="blinkymach12" createdAt="2025/08/20 01:23:32" color="#38d3d3">}}




{{<matomeQuote body="なんでREADME.mdじゃダメなのか、いまだに分かんないんだけど？<br>くだらない情報は最小限にすればいいだけじゃないの？" userName="yanis_t" createdAt="2025/08/20 12:21:04" color="">}}




{{<matomeQuote body="とはいえ、エージェントって結局、こういうの全然読まないでしょ。<br>3つも指示したら、すぐに忘れちゃうんだから。" userName="whywhywhywhy" createdAt="2025/08/20 16:52:27" color="">}}




{{<matomeQuote body="今との違いは、みんな積極的にソフトウェア開発から人間（自分自身も含めて）を排除しようとしてること。<br>だからロボットに十分な指示が必要になるんだ。<br>ソフトウェア開発から人間の関与を完全に無くしたいっていう願望が、みんなすごく強いんだよ。" userName="wfhrto" createdAt="2025/08/20 04:20:28" color="#785bff">}}




{{<matomeQuote body="みんなが？<br>それ、どこ情報？" userName="samename" createdAt="2025/08/20 04:47:13" color="">}}




{{<matomeQuote body="5000以上のリポジトリを管理するコーディングエージェントを開発中だよ。エージェントの状態は隠しディレクトリ`.agent`に保存されてて、役割ごとの設定と指示が入ってる。<br>うちのプロセスは`/init`コマンドで始まるんだけど、リポジトリ全体を深く分析して、生のコードをインデックスするだけじゃなく、アーキテクチャやロジックのハイレベルな要約を生成するんだ。これらはエディタで『ゴーストコメント』として表示されて、メタデータ層だから実際のコードにはコミットされない。要約とコード行を正確に紐付ける洗練されたマッピングシステムもあるよ。<br>RAGをソースコードに直接実行しても必要な結果が得られなかった問題への解決策なんだ。今使ってるシステムはハイブリッド検索モデルで、ASTで速い字句検索をして、RAGはハイレベルな要約に対する意味検索に使う。これがめちゃくちゃ重要で、『このアプリの認証ってどうなってるの？』って聞いたら、純粋な字句検索じゃ`login`って単語を含む関数とかしか見つからないけど、意味検索なら物語を読むように認証フロー全体を理解して、ファイル間のつながりも考慮して完全な情報をくれるんだ。<br>まさに魔法みたいだよ。" userName="faangguyindia" createdAt="2025/08/20 01:21:03" color="#785bff">}}




{{<matomeQuote body="俺も似たようなものに取り組んでるよ。レガシーコードベースを理解するには、この手の注釈が必要だね。『ただコードコメントを使えばいい』ってのは、良すぎる鈍器だよ。注釈はファイルとは完全に別で保存してるの？それともファイルシステムメタデータみたいな機能を使ってる？<br>この手のメタデータ自体に価値があると思うんだ。LLMで分析されるドキュメントはたくさんあって、ドキュメントの一部と一緒に分析結果を保存する場所だけじゃなく、分析に関するメタメタデータ（タイムスタンプ、モデル、使ったプロンプトとか）も必要になるだろうね。もちろん全部OOBでできるけど、そうするとメタデータストアと、それ自体のライフサイクルを持ってて、君だけが監視できるファイルとを紐付ける堅牢な方法が必要になるよね。" userName="threecheese" createdAt="2025/08/22 00:36:58" color="#38d3d3">}}




{{<matomeQuote body="君のアイデアにさらに付け加えるなら、要約の階層構造を作れるよ。メソッドレベル、クラスレベル、マイクロサービスやモジュールレベルで要約があって、各層が子層を指し、一番下がコード自体になる感じだね。Bツリーとか普通のツリーで考えられる。<br>RAGエージェントは意味的なクエリに応じて、必要な深さまで辿っていける。各レベルはその下の層のセマンティックな理解を保ちつつ、必要最低限の情報だけを残すんだ。これはコードベースの抽象化がしっかりしてる場合にうまくいく話で、抽象化って実装詳細を隠すからこそ役立つんだよね。もし抽象化が十分なら、モデルのコンテキストには上位層だけあればいいけど、そうじゃない場合は実際のコードも入れる必要があるかもね。<br>例えば`add(n1, n2)`みたいなメソッドは強い抽象化で、俺はこのレベルでは実装じゃなくて意味だけ分かればいい。でも、実際にはメソッドって常に一つだけのことするわけじゃないじゃん？ロギングとかグローバルキャッシュとかもあるし。" userName="simianwords" createdAt="2025/08/20 05:49:37" color="#ff5c5c">}}




{{<matomeQuote body="俺が開発中のエージェントは『古いコードベース』の改善・拡張が目的だよ。多くのエージェントはゼロからコードを生成できるけど、本当の課題はレガシーコードを何も壊さずに改良することなんだ。この問題に取り組んでて、今のところうまくいってるよ。エージェントがコミットしたらGit UIで元に戻したり、スカッシュしたり、修正したりできるから、誰でも簡単に使える。<br>問題は開発者がコードレビューをサボりがちなことだね。だから、変更を一つずつレビューするハンクごとのプロセスに移行しようかと考えてる。レビューが終わったらエージェントがコミットする。コンセプトはシンプルだけど、既存のCLIツールを統合するのに、他のエージェントみたいに完全なシェルアクセスを与えないような実装の細部が面白いんだ。<br>一番興奮するのは、2〜3体のエージェントに競合させたり、協力させたり、出力を解釈させて問題を解決させたり、最高の解決策を見つけるために『戦わせる』ってアイデアだね。そこが本当の醍醐味だよ。ほとんどのエージェントが『蒸気ローラー』みたいに一気にやるのとは違って、外科医の『メス』みたいにアプローチする感じかな。" userName="faangguyindia" createdAt="2025/08/20 02:10:15" color="#ff5c5c">}}




{{<matomeQuote body="README.mdとAGENTS.mdを分けるって話、本当にいいアイデアなのかな？まだ納得できてないよ。" userName="ivanjermakov" createdAt="2025/08/20 00:31:41" color="">}}




{{<matomeQuote body="いや、分けるべきだよ。READMEは人間用、AGENTSはLLM用。READMEにはツールの使い方とかインストール方法、AGENTSにはコンパイルやテスト、アーキテクチャとかコーディング標準を書くんだよ。" userName="stingraycharles" createdAt="2025/08/20 00:36:27" color="#ff5733">}}




{{<matomeQuote body="この例を読んでたら、私も同じこと思ったんだよね。AGENTS.mdにある内容って、全部ちゃんとしたREADME.mdに入れればいいじゃんって。" userName="blinkymach12" createdAt="2025/08/20 00:38:23" color="">}}




{{<matomeQuote body="この分離について、僕も議論してるんだって。分離するメリットは、書き方が違うこと、エージェント用は厳選して短く、人間用は完全に書くべきってこと。あと、LLMが必要とする情報と人間が必要とする情報が違うんだ。例えばGemini 2.5 ProはC++スタイルガイドを知ってるから、AGENTS.mdに全部書かなくていいとかね。デメリットは、情報が重複することだよ。引用元：https://technicalwriting.dev/ai/agents/#gotta-keep-em-separa..." userName="kaycebasques" createdAt="2025/08/20 02:55:59" color="#ff5733">}}




{{<matomeQuote body="コーディングスタイルとか、サブエージェント生成のガイドラインをREADMEに書くの？それってエージェントに特化した内容じゃん。分けるべきだよ。僕のCLAUDE.mdとREADME.mdは全然違うからね。" userName="sothatsit" createdAt="2025/08/20 00:57:06" color="#ff5733">}}




{{<matomeQuote body="エージェント特有のものをわざわざコードベースに公開する意味ある？それって個人の好みであって、プロジェクト自体とは関係ないんじゃないかな。" userName="bongodongobob" createdAt="2025/08/20 01:01:08" color="">}}




{{<matomeQuote body="58378のコメントに付け足しだけど、エージェントには「絶対するな」って言っても、うっかりやっちゃう可能性が高いんだよね。でも人間が同じことを言われたら、解雇とかサービス停止とか、重大な結果を考えて絶対にやらないようにするはず。だから、同じメッセージでも受け取り方が全然違うってことだよ。" userName="CGamesPlay" createdAt="2025/08/20 04:24:37" color="#ff5c5c">}}




{{<matomeQuote body="なんでこれらの情報が人間にとっても関係ないって言えるの？" userName="sponnath" createdAt="2025/08/20 01:17:36" color="">}}




{{<matomeQuote body="否定的な言い方って、コンテキストに変な重みを与えちゃうことがあるんだよね。肯定的な言い方の方が、LLMの挙動を予測しやすいって僕は思うな。" userName="skhameneh" createdAt="2025/08/20 05:06:02" color="#785bff">}}




{{<matomeQuote body="確かにそれらの情報は重要だけど、プロジェクトのルートに全部まとめちゃうのは、エージェントには良くても人間には最適じゃないんだよね。リポジトリに初めて来た人が、依存関係を追加したり、アプリをインストールしたり、人間向けの使い方を知りたいだけなのに、関係ない情報がたくさんあるのは邪魔でしょ。" userName="throwup238" createdAt="2025/08/20 01:22:10" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
