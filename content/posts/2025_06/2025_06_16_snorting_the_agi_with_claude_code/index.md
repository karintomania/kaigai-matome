+++
date = '2025-06-16T00:00:00'
months = '2025/06'
draft = false
title = 'Claude CodeでAGI級コード生成！驚きの体験？'
tags = ["AI", "プログラミング", "LLM", "コード生成", "エージェント"]
featureimage = 'thumbnails/cyan_orange2.jpg'
+++

> Claude CodeでAGI級コード生成！驚きの体験？

引用元：[https://news.ycombinator.com/item?id=44288377](https://news.ycombinator.com/item?id=44288377)




{{<matomeQuote body="俺はちょっとバイアスかかってるけど［0］、LLMに依存しないオープンソースのエージェントを中心にスクリプトを組むべきだと思うんだ。この技術はソフト開発の根幹を変えてるから、どう働くか自分たちでコントロールし続けることが超大事だよ。[0] https://github.com/all-hands-ai/openhands" userName="rbren" createdAt="2025/06/17 01:00:16" color="#38d3d3">}}




{{<matomeQuote body="これは良いリソースに見えるね。Nvidia 4090の24GB RAMで動くDevstralとかQueen 3みたいなかなり強力なモデルもあるんだ。Ollamaを使えば自分のハードウェアで動かすのは簡単だけど、GPUのコストはかなりの投資だよね。でも、もしプロプライエタリなツールに毎月250ドル払ってるなら、かなり早く元が取れるかも。" userName="robotbikes" createdAt="2025/06/17 02:01:35" color="#38d3d3">}}




{{<matomeQuote body="＞ Nvidia 4090の24GB VRAMでDevstralを使う件ね。24GB VRAMだとDevstralを使うのはお勧めしないな。そこに入れるには重い量子化が必要で、それが結果にかなり影響するんだよ。locallamaでは、特にkv cacheの量子化でイマイチな結果の報告が多いんだ。うちはfp8とフルキャッシュで動かすのは良い経験だったけど、それより下だと品質にすごく影響するよ。" userName="NitpickLawyer" createdAt="2025/06/17 06:44:45" color="#ff5733">}}




{{<matomeQuote body="64GBのM3 Maxなら、もっと幅広いモデルでうまくいくよ。Stable Diffusionみたいな作業にはちょっと劣るけどね。それにノートPCとしても手に入るし。" userName="seanmcdirmid" createdAt="2025/06/17 02:37:11" color="#ff5733">}}




{{<matomeQuote body="でも、もしクローズドなモデルの方がただ単に性能が良かったら、どうするの？" userName="handfuloflight" createdAt="2025/06/17 01:05:34" color="#ff33a1">}}




{{<matomeQuote body="エージェントとモデルは別物だよ。Claude CodeだとClaudeしか使えないけど、Aiderならどんなモデルでも使えるんだ。" userName="rkangel" createdAt="2025/06/17 09:24:41" color="#45d325">}}




{{<matomeQuote body="それが、クローズドモデルがオープンモデルより優れてるっていう問題をどう解決するの？" userName="handfuloflight" createdAt="2025/06/17 09:28:38" color="#785bff">}}




{{<matomeQuote body="問題ないよ。スレ主はオープンな_モデル_じゃなくて、オープンな_エージェント_を使うべきって言ってたんだ。オープンなエージェントなら、オープンでもクローズドでも、どんなモデルとも一緒に使えるんだよ。Claude Codeみたいのだと、一つのモデルベンダーに縛られちゃうけどね。" userName="hn8726" createdAt="2025/06/17 10:41:49" color="#38d3d3">}}




{{<matomeQuote body="スレ主が何を言ったかはわかってるし、それに対する質問を返したんだけど。" userName="handfuloflight" createdAt="2025/06/17 18:38:56" color="">}}




{{<matomeQuote body="そしたら、LLMにお金かけてる他の会社にすぐ追い抜かれちゃうんじゃないの？" userName="handfuloflight" createdAt="2025/06/17 01:18:24" color="">}}




{{<matomeQuote body="Deepseekの学習って、OpenAIの利用規約を破ってやったんじゃないの？" userName="dghlsakjg" createdAt="2025/06/17 14:27:52" color="">}}




{{<matomeQuote body="これ、マジで10000パーセント同意！" userName="ProofHouse" createdAt="2025/06/17 01:02:33" color="">}}




{{<matomeQuote body="この記事、ちょっとまとまりないね。まず、コードの説明にスライド使うのは微妙。発表の補助以外でスライド使わないのには理由があるんだよ。<br>投稿のほとんどは新しい能力じゃないし。ワークフロー自動化は確かに価値あってクールだけど、AGIは関係ないと思う。" userName="tinyhouse" createdAt="2025/06/16 22:06:49" color="#ff5c5c">}}




{{<matomeQuote body="あと、信頼できないんだよね。記事でも少し触れてた気がするけど（斜め読みしただけ）。<br>それに、コードを理解するのにLLMなんていらないはず。もっとわかりやすく書けばいいだけじゃん！でも資本家たちは近道とか裏ワザが好きだから、Q3までに次の機能出すために利用するんだろうね。" userName="bravesoul2" createdAt="2025/06/16 22:10:36" color="">}}




{{<matomeQuote body="LLMにコード理解させるんじゃなくて、もっとわかりやすく書けっていう人たちは、自分でコードを読み書きする量を最小限にしたいタイプ。だから自然言語でプログラム作るのが理想のワークフローなんだよね。この人たちのためにコードベースをわかりやすくするのは、ほとんど無駄な努力。<br>プログラミング言語は人間が使いやすいように作られたのに、今や人間が読みたがらないって、皮肉な運命のいたずらだよ。コードはマシンにとって無用な中間生成物になってきてる、だってマシンは直接マシンコードを書けるんだもん。<br>誰かこのパンドラの箱を閉じてくれたらなと思う。" userName="imiric" createdAt="2025/06/16 22:39:50" color="#785bff">}}




{{<matomeQuote body="プログラミング言語は人間が使いやすいように作られたのに、今や人間が読みたがらないって話だけど、それはあなたが自分で言ってるように、人間の中でも違うグループの話だよ。" userName="DougMerritt" createdAt="2025/06/16 23:18:39" color="">}}




{{<matomeQuote body="静的な資料じゃ、使う人みんなの頭に合わせて完璧に形を変えるのは無理だよね。知りたいことを知りたい時に学べるインタラクティブなやつがあるのは超便利。前の人が作ったスライドデッキは微妙だろうけど、もしそれがどうしても欲しいなら、Claudeみたいにすぐ作ってくれるのは良いね。変更点のまとめとか、「機能Xの実装って専門用語だらけだけど、全体像はどんな感じ？」って知りたい時、LLMがリポジトリ読んで適当だけど役に立つ答えを出してくれる。ポケットにスイスアーミーナイフ持ってるみたいですごい。<br>正直、前はめっちゃ嫌いだったし信用してなかったんだけど、実際に使ってみたら、その便利さを否定できなくなったよ。" userName="lelandbatey" createdAt="2025/06/16 22:50:50" color="#38d3d3">}}




{{<matomeQuote body="問題は、もしコード一行ずつLLMに読ませないと誰も言葉で説明できないようなら、それは人間には理解できないってことじゃないかな。<br>それが狙い（ノリでコーディング最高！）なのかもしれないけど、人が理解して改良したいなら、コードはモジュール化して分解できて、分かりやすいのが良い。もちろん、AIに言葉の助けは借りるけど、根本では構造を理解してる人間が必要だと思う。" userName="bravesoul2" createdAt="2025/06/17 00:40:31" color="">}}




{{<matomeQuote body="＞それに、コードベースを理解するのにLLMなんていらないだろ。もっと分かりやすくすればいいんだ！<br>（レガシーコードに）笑<br>結局、それは「金」の問題じゃないんだよね。どんなコードベースも、書いた人の暗黙の前提に影響されてる。読む人と書く人の前提に根本的なズレやギャップがあると、読めるようにならないんだ。<br>LLMは、そういう暗黙の前提の一部を分かりやすくしてくれる方法だよ。万能薬じゃないけど、「ただ分かりやすくすればいい」なんて考えは現実的じゃない。「デバッガーなんていらない、バグ書かなきゃいいだけ」って言うのと同じレベルだよ。" userName="groby_b" createdAt="2025/06/16 23:53:32" color="#ff33a1">}}




{{<matomeQuote body="俺がLLMで一番役に立つって思ったのは、コードのMermaid.js図を作ることだな。完璧じゃない時もあるけど、結構な場面で「これで十分じゃん」って感じだったし、ハルシネーション（嘘の生成）は見たことない、抜け漏れだけだね。もし何か足りないって気づいたら、修正しろって言うのも超簡単だよ。" userName="sandos" createdAt="2025/06/17 12:40:31" color="">}}




{{<matomeQuote body="＞AGIが何の関係があるかよく分からん<br>記事のトーンからすると、AGIって言葉をジョークで使ってて、大げさにしてないのが新鮮だね。<br>まぁ、記事に役立つ情報がなかったら新鮮でも何でもないけど、実際スライドデッキってコードベースを理解するのに使えると思うんだ。ジュニアに時間かけさせたくない「あればいいな」ってものだけど、5ドルくらいで作れてちょっとでも役に立つなら、かなり良いね。<br>LLMを使うことで考え方が変わるっていうのは、前は価値に対して手間がかかりすぎるから嫌ってたことでも、自分でやらなくていい、チームメンバーの時間や正気をすり減らさなくていいなら、「もう知るか、コードベース全部読んで、機能と要件をテーブル形式でまとめたMarkdownドキュメント作ってみろ。思ったよりうまくいくかもだし、ダメなら次行けばいいし」って思えるようになることだよ。" userName="Uehreka" createdAt="2025/06/16 22:56:03" color="#ff33a1">}}




{{<matomeQuote body="素晴らしい記事だね！俺も似たような感じで、Claude Codeは exceptional に良いよ――ほとんど毎日、git worktrees のおかげで同時に複数の作業をしてて、それぞれが過去最速で進んでるんだ――これって本当に crazy だよ。<br>「sub agents」のことだけど、sigoden/aichat を経由した o3 の呼び出しには、数えきれないほど救われたことがあるって認めざるを得ない！<br>o3 が得意な問題、例えば race conditions とか bug hunting とか、たくさんのコンテキストと本当に高い推論能力が必要なことは確かにあるんだ。<br>でも、Opus 4 が出てからは使う頻度は減ったね。もちろん、これは sub-agent とかとは全然違うことだけど。<br>俺がメインの CLAUDE.md で使ってるプロンプトはこれだよ: https://github.com/pgflow-dev/pgflow/blob/main/.claude/advan...<br>sigoden/aichat はこれ: https://github.com/sigoden/aichat" userName="jumski" createdAt="2025/06/17 05:23:12" color="#785bff">}}




{{<matomeQuote body="git worktree は、一つのリポジトリを使って、複数のブランチを別々のディレクトリに展開するんだ。<br>git worktree add new/path/for/worktree branchname ってコマンドでやる。<br>俺はもう git checkout でブランチ切り替えるのやめて、main ブランチは常にチェックアウトして最新の状態にしといて、feature 作業はいつも worktrees を使うようにしてる。このワークフロー最高だよ！" userName="jumski" createdAt="2025/06/17 12:34:51" color="#ff5733">}}




{{<matomeQuote body="俺も Claude Code とかが出てくるまでは使う理由がなかったんだよ。だから知らなかった。<br>リポジトリ全体を新しいフォルダに新しいブランチでコピーして作業するためのコマンドだよ。<br>https://git-scm.com/docs/git-worktree" userName="pjm331" createdAt="2025/06/17 12:21:28" color="">}}




{{<matomeQuote body="これすごいね、全然知らなかったよ、何年もリポジトリをローカルにクローンしてたわ。" userName="noiwillnot" createdAt="2025/06/17 12:27:53" color="">}}




{{<matomeQuote body="ターミナルってさぁ、LLMにはある意味で最高のインターフェースだよね。カスタムIDE連携よりこっちが主流になるかもって思うんだけど、どうかな？" userName="jasonthorsness" createdAt="2025/06/16 22:31:58" color="">}}




{{<matomeQuote body="ある意味そうだけど、将来LLMは人間の時間よりLLMの時間の方が安いから、並列で5回くらい修正を試すようになると思うんだ。<br>で、そういうワークフローになると複数コンテナを立ち上げたくなるから、そうなるとターミナルの利点は薄れるんだよね。" userName="drcode" createdAt="2025/06/16 22:38:13" color="#45d325">}}




{{<matomeQuote body="はあ？？？マジで最悪のインターフェースだよ！<br>生成されたコード、編集したくないわけ？" userName="mountainriver" createdAt="2025/06/17 00:36:08" color="">}}




{{<matomeQuote body="5つのPR（自動テスト更新込み）誰がレビューすんの？もしそれも別エージェントなら、各PRに5回レビュー必要？<br>結局、”詳細”の制御を譲って出力信頼するか、手動で検証に手間かけるかだよ。どっちも悪いとは言わないけど。" userName="sally_glance" createdAt="2025/06/17 00:15:14" color="#45d325">}}




{{<matomeQuote body="モデルがどんどん賢くなったら、IDEって”低レベル”に見えるようになるよ。" userName="ldjkfkdsjnv" createdAt="2025/06/17 00:14:16" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="問題をちゃんと定義できれば、先にテスト書けるんだよ。MLの人は”verifier”って呼ぶね。verifierがあれば計算資源をガンガンつぎ込んで解決策を見つけられる。" userName="smallnamespace" createdAt="2025/06/17 00:26:53" color="">}}




{{<matomeQuote body="え、コード手で書いてるの？えぇ…。" userName="magackame" createdAt="2025/06/17 00:33:50" color="">}}




{{<matomeQuote body="みんな喜んでテスト書くのをフルタイムの仕事にするようになるのかな？" userName="djeastm" createdAt="2025/06/17 01:30:33" color="">}}




{{<matomeQuote body="Aiderはさ、’音声’前からサポートしてるよ。" userName="fragmede" createdAt="2025/06/17 01:07:21" color="">}}




{{<matomeQuote body="…もしIDEにターミナルついてないなら、それはIDEじゃないでしょ。" userName="handfuloflight" createdAt="2025/06/17 01:07:45" color="">}}




{{<matomeQuote body="Exactly。ClaudeはMCP serverを含む全てにアクセスできるんだ。読み取り専用ユーザーでデータベースをチェックさせたり、puppeteerブラウザを開いてCSSの変更が変じゃないか確認させたりできるの最高すぎ。<br>完璧なインターフェースだし、Anthropicはマジで nailed it。kubectlコマンドでk8sクラスターをデバッグさせたり、APIでprometheusをチェックさせたりもできるんだ、これどんだけ凄いの？" userName="ed_mercer" createdAt="2025/06/17 01:42:54" color="#ff33a1">}}




{{<matomeQuote body="俺はターミナルを別の窓でAIとやり取りさせて、VS Codeでプロジェクトを同じディレクトリで開いてるんだ。そうするとIDEで更新や新規ファイルをカラーコードでレビューできるからね。みんなはプロジェクトとどうやってやり取りしてる？" userName="bretpiatt" createdAt="2025/06/17 02:46:49" color="">}}




{{<matomeQuote body="＞ puppeteerブラウザを開いてCSSの変更が変じゃないか確認させる。<br>AI「7本指あるけど？問題なく見えるよ！」- AI" userName="leptons" createdAt="2025/06/17 02:00:41" color="">}}




{{<matomeQuote body="人間の音声は生物的な制約とか神経的な適応で進化した非線形な出力で、 untrained ear には不明瞭な部分がある。だから、コンピューターにはそんな制約ないからさ、音声はコンピューターにとって損失の多いアナログ→デジタル変換だと思うな。" userName="datameta" createdAt="2025/06/17 02:08:07" color="">}}




{{<matomeQuote body="フロントエンドじゃない俺がCSSをやる羽目になると笑っちゃうよ。<br>マネージャーとか同僚に技術提案を却下された数、見た目が halfway decent じゃなかったって理由でさ、多すぎ！" userName="paulluuk" createdAt="2025/06/17 05:49:04" color="">}}




{{<matomeQuote body="俺はターミナル用に別の画面を丸々使ってるよ。IDEにはもう十分色々詰め込まれてるからね。" userName="leptons" createdAt="2025/06/17 02:02:59" color="">}}




{{<matomeQuote body="LLMがテストを書いてくれるようになるだろうね。そしたら俺たちは passion projects に集中できるし、最終的にはLLM同士が会話してるだけになるよ。" userName="ericrallen" createdAt="2025/06/17 03:30:20" color="">}}




{{<matomeQuote body="”AI”が唯一うまくできるのがCSSを書くことで、これだけは本当に trust できる。出力 trusting の consequence が very little だからね。<br>チームにデザイナーがいるから彼らが polish してくれるけど、まずは俺が作る。フロントエンドがどうなるかは気にしない、それは someone else to worry about だから。<br>だから buttons とか他のUI elements のCSSは”AI”に書かせるんだ。時間節約になるし、俺が自分でやるより way better looking な front-end UI styling を作る。デザイナーがいなくてもAI生成CSSで most people には十分だろうね。<br>でも、AIにページが「変に見えるか」判断させるのは trust しないかな。false-positives の nuisance になるか、実際ある問題を報告しないだけになりそう。" userName="leptons" createdAt="2025/06/17 16:57:27" color="#38d3d3">}}




{{<matomeQuote body="コマンドラインツールで複数のコンテナを立ち上げて、結果をまとめてくれるのは、結構自然なやり方っぽいね。" userName="jyounker" createdAt="2025/06/16 22:45:44" color="">}}




{{<matomeQuote body="PRがダメなら捨てて、プロンプトを編集してエージェントにやり直させる方がいいんじゃないかな。たくさんの計算リソースを無駄にするのは贅沢すぎるよ。<br>高価なエージェントを並列で使うより、より良いエージェント一つでプロンプトを改善しながらやるのが効率的だと思う。人間の仕事は仕様書チェックとエージェントの成果レビューになるね。" userName="sothatsit" createdAt="2025/06/17 03:37:41" color="#38d3d3">}}




{{<matomeQuote body="https://github.com/dagger/container-use" userName="cwlb" createdAt="2025/06/17 00:31:54" color="">}}




{{<matomeQuote body="テストに通ったからといって、変な動きや遅い処理、誰もチェックしてない副作用がないわけじゃないよ。<br>LLMの出力は、頼んでもいない新しいフィールドを勝手に追加したりすることもあるからね。" userName="ehnto" createdAt="2025/06/17 03:08:09" color="#38d3d3">}}




{{<matomeQuote body="機械が何でもできるようになるだろうね。最終的に人間には、機械より上手くできる、精密さとパワーを同時に使うような手作業しか残らないと思うんだ。工場を維持するとか、狭い配管を工具咥えて這うみたいな、その場その場で対応が必要な作業だけ。でも、ロボティクスが追いつけば、それもなくなるかもね。" userName="TeMPOraL" createdAt="2025/06/17 07:16:32" color="">}}




{{<matomeQuote body="なんでコンテナを起動することがメリットを消すの？<br>コンテナとやり取りするターミナルもあるだろうに。" userName="mejutoco" createdAt="2025/06/17 06:03:20" color="">}}




{{<matomeQuote body="VS CodeのChatパネルみたいな専用ツールpaneでAI使う方が、ターミナルで使うより良くない？VS CodeのChatパネルは色々洗練されてて、HTMLもMarkdownも綺麗に表示できるし、ファイルリンクとかAIコンテキスト表示もすごい。＠とか＃とかの補完もあるしね。ターミナルだとそこまでネイティブな体験できないし、VS Codeが既に提供してるものより劣る体験な気がするよ。" userName="WorldMaker" createdAt="2025/06/17 20:09:06" color="">}}




{{<matomeQuote body="rustの借用チェッカー説明させるの、AIがコード読める能力を示す例としては最悪だよ。学習データに山ほどあるじゃん。" userName="blahgeek" createdAt="2025/06/17 00:27:15" color="">}}




{{<matomeQuote body="確かに。python asyncioの例外処理をコード全部渡して説明させても、マジでダメダメ。教え込んでもすぐ忘れるし、今の文脈以外じゃ続かない。簡単なのにマジ時間の無駄だよ。" userName="dundarious" createdAt="2025/06/17 02:27:46" color="">}}




{{<matomeQuote body="「学習データに山ほどある」って批判、変じゃない？人間だって借用チェッカーの説明読んだり教えてもらったりして理解するじゃん。何も教わらずに理解すると思う？AIが新しいアイデア出す証拠にはならないって言いたいのは分かるけど、実用的なんだからいいじゃん（幻覚あるけど）。" userName="gilbetron" createdAt="2025/06/17 13:10:18" color="">}}




{{<matomeQuote body="細かいとこに気を配るのが職人技の証だとすると、Anthropicの法務規約が論理的に守れないってのは、ASIの安全な管理人として信頼できないサインじゃない？仕事で使ったら競合禁止に違反するとか、「3原則セーフ」じゃないじゃん。" userName="bionhoward" createdAt="2025/06/16 22:53:58" color="">}}




{{<matomeQuote body="法務部のことは知らんけど、製品のClaude Codeはマジ細かいとこまで気を配ってる感あるよ。「working...」って表示の可愛い動詞とか、Haikuで考えてるらしい。すごいね。" userName="alwa" createdAt="2025/06/17 00:21:38" color="">}}




{{<matomeQuote body="```<br>claude --dangerously-skip-permissions # science mode<br>```<br>これ、ウケたw。" userName="abhisheksp1993" createdAt="2025/06/16 22:19:47" color="">}}




{{<matomeQuote body="同意！Claude codeがcursorより強力に感じるのは、スクリプトで動かせるとこかも。cursorはエディタだけど、claude codeは（超すごい）万能ツールだよ。伝統的なコードベース以外でもObsidianとかで色々使ってる。カスタムKeyboard binding作ったり、OllamaにTerminalコマンドまとめさせたり。スクリプト作るか手動でやるか迷ってた昔と違って、今はclaudeにディレクトリで実行させればすぐ終わる。マジで色んなことに使えるよ。" userName="SamPatt" createdAt="2025/06/16 21:45:19" color="#ff5c5c">}}




{{<matomeQuote body="そうなんだよ、Claude Codeってプラン契約しないとダメで、APIじゃ使えないんだ。月100ドルで足りるのかな？俺は一日中使ってるから、100ドルよりはるかに多く消費してる気がするんだよね。" userName="Aeolun" createdAt="2025/06/16 22:26:13" color="">}}




{{<matomeQuote body="「一日中毎日」使うなら、そりゃプラン選ぶのが当然でしょ。使い方によってはプランなしでも全然経済的だよ。どっちがいいか決める助けになるツール、誰かが作ったから見てみたら？ https://github.com/ryoppippi/ccusage" userName="CGamesPlay" createdAt="2025/06/16 23:35:50" color="">}}




{{<matomeQuote body="まあそうだけど、もし使うパターンで料金プランに見合わないならCursorのがいい選択だよ :)" userName="Aeolun" createdAt="2025/06/17 09:55:46" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="LLMの世界がまたBigCorps有利になってきてるのが嫌だな。オープンソースってのは、シチリアのantirezみたいな人が一人でRedis作って、みんなが参加して雪だるま式に大きくなる世界だったのに。大企業しか提供できないサブスクが必要なのは不満だよ。コーディングみたいな特定のタスク向けに「ローカルで動かせる」モデルが出てくるか、だね。" userName="davidw" createdAt="2025/06/17 00:46:08" color="#ff33a1">}}




{{<matomeQuote body="この懸念わかるわ。改善のペース考えたら、これくらいのレベルのが18ヶ月くらいでローカルで動くようになるって期待してる。もちろんその頃にはクローズドソースのはもっと良くなってるだろうけど、もし選べるなら今すぐオープンソース版を選ぶと思う。今使ってるオープンソースの代替は、俺の4090じゃまだそこまでじゃないんだよね。実現できるよう願ってるよ。" userName="SamPatt" createdAt="2025/06/17 03:09:14" color="#785bff">}}




{{<matomeQuote body="これマジで悪夢みたいなベンダーロックインだよ。コードベース誰も理解できなくなって、企業はどんどん金を払い続けなきゃいけない。そうしないとビジネスが成長も適応もできなくなる。" userName="TSiege" createdAt="2025/06/17 01:39:22" color="">}}




{{<matomeQuote body="うわー、君がまさに俺が無意識のうちにコーディングスキルを磨き続けたいと思ってる一番の理由になってる流れを完璧に言語化してくれたわ。" userName="datameta" createdAt="2025/06/17 02:12:01" color="">}}




{{<matomeQuote body="先見の明があるね、お見事。次はAGIがスパゲッティコードを解きほぐせるって主張が出てきて、そして現実を知る番だ。個人的には、新しいLLM支配者を歓迎するよ。" userName="3rdDeviation" createdAt="2025/06/17 02:26:55" color="">}}




{{<matomeQuote body="＞APIで使うのは不可能だ<br>これってどういう意味？" userName="sorcerer-mar" createdAt="2025/06/16 22:27:31" color="">}}




{{<matomeQuote body="記事の筆者じゃないけど、たぶんコストのことじゃないかな。" userName="oxidant" createdAt="2025/06/16 23:07:01" color="">}}




{{<matomeQuote body="これだよな。ちょっと使っただけで簡単に1日20ドル、間違いなく50ドル超えることもできる。ちゃんと動くけど、お試しで入れた100ドルはSonnetでも全然長く持たなかった。" userName="SV_BubbleTime" createdAt="2025/06/17 00:16:51" color="#ff5c5c">}}




{{<matomeQuote body="Claude CodeはAPI経由で間違いなく使えるよ。" userName="ggsp" createdAt="2025/06/16 22:33:26" color="">}}




{{<matomeQuote body="ある iOS Dev が Claude Code で iOS App 作って、API 料金と比較するためにトークン消費量チェックツール作ったんだって。Max プラン２つ（月200ドル+月200ドル）使ってて、API だと月10,000ドル超えるって試算してたらしいよ。" userName="wahnfrieden" createdAt="2025/06/17 01:57:14" color="#785bff">}}




{{<matomeQuote body="Claude Pro で使えるようになったから、たった20ドルだよ。" userName="practal" createdAt="2025/06/16 22:38:22" color="">}}




{{<matomeQuote body="使えるけど、すごく制限されてるんだ。<br>僕は API Only 使ってるよ。これだけが使用量制限なしでオンデマンド価格だからね。<br>Pro の5倍（月100ドル）<br>Pro の20倍（月200ドル）<br>ソース: https://support.anthropic.com/en/articles/11145838-using-cla...<br>”Pro（月20ドル）：通常ユーザーは5時間で Claude に約45メッセージ送れるか、Claude Code に約10～40プロンプト送れる。”<br>”集中的なコーディングスプリントには、Anthropic Console アカウントで従量課金制の使用量に切り替える柔軟性があります。”" userName="razemio" createdAt="2025/06/17 00:16:11" color="#ff5733">}}




{{<matomeQuote body="Obsidian Vault でどんなユースケースで使ってるのか、めっちゃ聞きたいな。" userName="jjice" createdAt="2025/06/16 22:04:56" color="">}}




{{<matomeQuote body="たくさんのノートの書式変更、カスタムプラグイン作成、コミュニティプラグインの問題診断、Vault（publish:true の frontmatter 付き）をブログリポジトリと比較して変更見つけたら自動更新する同期プログラム作成、インラインURLを Markdown 脚注に変換するツール作成とかだよ。<br>Obsidian が僕の Source Of Truth で、Claude はテキスト、書式、Markdown、JS なんかの管理にマジで良いんだ。自動で変更させるほどはまだ信用してないけど、プラグインとか書式の手作業をいじる時間を確実に何時間も節約してくれたよ。" userName="SamPatt" createdAt="2025/06/17 03:02:19" color="#45d325">}}




{{<matomeQuote body="Claude Code をスクリプトでどうやって組むの？CLI としては使ってたけど、スクリプト経由で Claude Code を呼び出すなんて考えたことなかったよ。すごく面白そうだね。" userName="cpard" createdAt="2025/06/17 05:38:14" color="">}}




{{<matomeQuote body="記事読めよ。要するに特定のプロンプトに Alias 使ってるだけだよ。" userName="dghlsakjg" createdAt="2025/06/17 14:40:51" color="">}}




{{<matomeQuote body="ちょっと余談だけど、この前 LLM に大量のノートをカテゴリフォルダに整理させたんだ。あれはマジで役に立ったわ。" userName="AstroBen" createdAt="2025/06/17 03:12:02" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
