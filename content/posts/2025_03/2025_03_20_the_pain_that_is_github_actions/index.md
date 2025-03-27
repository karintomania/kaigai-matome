+++
date = '2025-03-20T00:00:00'
months = '2025/03'
draft = false
title = 'GitHub Actionsはマジで苦痛！みんな困ってる？使いにくいと話題沸騰'
tags = ["GitHub Actions", "CI/CD", "開発", "自動化", "DevOps"]
featureimage = 'thumbnails/blue_green2.jpg'
+++

> GitHub Actionsはマジで苦痛！みんな困ってる？使いにくいと話題沸騰

引用元：[https://news.ycombinator.com/item?id=43419701](https://news.ycombinator.com/item?id=43419701)

{{<matomeQuote body="GitLabの方が良いって言う人がもういるね。確かにそうだけど、GitLabにも別の意味で困ったところがあるんだよね。Jenkins、GitLab、GitHubと色々使ってきたけど、CIのロジックはできるだけ自分のコードに書くのが一番だって結論になったよ。シェルスクリプトでもmakeでも、何でも良いけど、ちゃんとメンテできるコードにするのが大事。それと、パイプラインをローカルでも実行できるように時間を使うべき。そうしないと、テストとかデバッグがマジで大変になるからね。あと、YAMLはできるだけ避けるべき。CIを解決してくれるみたいなVCが出資してる新しいものには、あんまり期待しない方が良いよ。EarthlyとかDaggerとかね。ランナーはいつも自分で用意して、できればオンプレミスが良いと思うな。" userName="deng" createdAt="2025-03-20T06:47:52" color="#ff33a1">}}

{{<matomeQuote body="数年前、Tech Leadとして初めての仕事で、偶然にも全く同じ結論にたどり着いたんだよね。大規模なCMSプロジェクトで、クライアントがセキュリティ上の理由でデプロイの自動化は無理だって言ってたんだ。だから、コードとか設定のデプロイは、複雑な手順書に従ってサポートエンジニアが手動でやってたんだ。まあ、予想通りの状況だったよ。最初は自分の問題を解決するために、ローカルサーバーにパッケージしてデプロイするためのbashスクリプトをたくさん作ったんだ。それをチームで共有して、みんなの問題を解決したんだよね。バグがなくなったら、スクリプトを更新してローカルから開発環境にデプロイできるようにしたんだ。それでJenkinsを導入して、同じbashスクリプトを使うように設定したら、開発環境とテスト環境へのCI/CDが完全に動くようになったんだ。そのうち、プラットフォームのサポート担当者が手動での作業に飽きて、俺たちが作ったスクリプトを使ってステージング環境と本番環境へのデプロイを自動化し始めたんだ。クライアントが俺のやり方に気づいた時には、完全に無視されたことに気づいた時には、もう大喜びしてたよ。ローカルから本番まで、繰り返し可能でエラーのない自動デプロイができてたからね。結構自慢できることだったよ。" userName="hi_hi" createdAt="2025-03-20T11:31:16" color="#ff5c5c">}}

{{<matomeQuote body="CIのピークがJenkinsだったってのがマジで嫌だわ。JenkinsもGroovyも嫌いだけど、今まで働いたどの会社にも、6年間稼働してるJenkinsがあって、会社全体を支えてるんだよね。なんか教訓がありそうだわ。" userName="badloginagain" createdAt="2025-03-20T15:17:05" color="">}}

{{<matomeQuote body="Jenkinsがピークってマジ？どのCIプラットフォームを使ったことがあるの？TeamCityはマジでおすすめだよ。GitHub Actionsでみんなが直面してるような問題は全くないみたい。GUIでも設定できるし、XMLでも、型安全なKotlin DSLでも設定できるんだ。しかも、これらは全部連携してるから、コードで設定されてるシステムでもGUIでパッチを当てられるんだよね。TeamCityは設定をgitリポジトリに保存して、変更があったらコミットする方法も知ってるから、DSLのドキュメントを調べるほどでもない簡単な変更とか、実験にはマジで便利。" userName="mike_hearn" createdAt="2025-03-20T15:55:40" color="#ff5733">}}

{{<matomeQuote body="他の人がセットアップしたCIが嫌いってだけじゃないかな。数年前にTeamCityを使った仕事があったけど、マジで嫌いだったよ。でも、嫌いだった理由の多くは、セットアップの仕方が悪かったからだと思うんだ。CIは誰もやりたくないけど、みんながただ動いてほしいもの。どんなコードやプロセスでもそうだけど、良くするためにはエンジニアリングが必要なんだよね。どんなプロジェクトでも、結果が悪いからってツールを責めるのは違うと思うな。" userName="DanielHB" createdAt="2025-03-20T16:01:36" color="">}}

{{<matomeQuote body="TeamCityでクリーンなgit cloneを試してみてよ。無理だよ。”クリーンクローン”ができるって言ってるプラグインを使ってもね。CIはクリーンな状態からアプリをビルド/実行/テストできるって確信を持つべきなんだ。CIがクリアできないキャッシュされた状態をエージェントに強制するなら…TeamCityは間違ってるよ。" userName="dmuso" createdAt="2025-03-20T20:56:22" color="">}}

{{<matomeQuote body="＞gorilla consulting<br>たぶん'guerilla'だけど、あなたのバージョンの方が好きだな。" userName="rrr_oh_man" createdAt="2025-03-20T16:27:43" color="">}}

{{<matomeQuote body="Nixはマジで最高だよ。CIツールを全部she’llかPythonで書いて、CIで実行されるのと同じ環境でローカルで実行できるんだ。SOPSを追加して、シークレットも一緒に持って行けるし。" userName="noplacelikehome" createdAt="2025-03-20T23:24:13" color="#45d325">}}

{{<matomeQuote body="NixってGitHub Actionsと相性いいのかな？それとも、Nix自体が代替になる感じ？例えば、pushするたびにテスト実行して開発環境にデプロイするのを自動化するにはどうすればいいんだろ？" userName="jimbokun" createdAt="2025-03-21T03:11:11" color="">}}

{{<matomeQuote body="NixとかBazelみたいな隔離されたシステムは、手軽にローカルで再現できるからマジ便利。<br>CIプラットフォームは、ステップごとに分けて、並列実行を可視化したり、GroovyとかJSでAPI叩いて通知出したりしたがるけど、それって本末転倒じゃね？ビルドツールが管理すべき。<br>次世代CIは、ローカルのツールと連携して、ビルドツールがやってることを表示してほしい。テストランナーも、プロセスごとにログとか出してくれよ。" userName="mikepurvis" createdAt="2025-03-20T19:45:09" color="#ff5c5c">}}

{{<matomeQuote body="半導体業界出身だけど、Jenkinsとbashスクリプトで全部ローカルでやってた。web SaaSのスタートアップに来たら、全部サードパーティ製でビックリ。POSIXとかLinuxの知識がほぼ役に立たない。<br>慣れたけど、本当に良いのか疑問。抽象化されすぎて誰も全体を理解してない気がする。" userName="doix" createdAt="2025-03-20T09:38:41" color="">}}

{{<matomeQuote body="これな。<br>ローカルrunnerベースのCI/CDにめっちゃ投資してる。最初はgogsとdrone使ってて、今はforgejoとwoodpecker CIのフォーク。<br>冗長化構成で、分散ハードウェアで簡単に構築できる。認証とクロスシステムのpull requestがちょっと面倒だけど、feature branchのマージとコードレビューは必要。<br>Goで全部作ってるから、/toolchain/build.goを用意して、bashも不要。<br>Github Actions CVEが決定打だった。TJ actionsがcompromisedされたのも同じ脆弱性だし。zizmorだけが脆弱性を検証してくれる。" userName="cookiengineer" createdAt="2025-03-20T08:03:28" color="#ff5c5c">}}

{{<matomeQuote body="最近はGitHub ActionsをMakefileのラッパーとして使うようにしてる。dependenciesのインストールとかbuild/Testコマンドとか全部Makefileでやってくれるから、ローカルでもテストできるし便利。" userName="JanMa" createdAt="2025-03-20T07:32:33" color="#ff5733">}}

{{<matomeQuote body="mise（https://mise.jdx.dev/）とdagger（https://github.com/dagger/dagger）も良さげじゃね？Miseはdependenciesインストールしてタスク実行できるし。" userName="oulipo" createdAt="2025-03-20T08:14:10" color="">}}

{{<matomeQuote body="daggerはVCから資金調達してるから救世主にはならないって意見もあるけど、CIじゃなくてAIに目をつけたみたい。“something something agents”って感じ。<br>dagger.ioから引用すると、”agentic softwareのためのオープンなプラットフォーム。<br>オープンなエコシステムで強力で制御可能なagentを構築。<br>モジュール式の拡張可能なプラットフォームで完全な可視性とクロスランゲージ機能を使用してagenticアプリケーションをデプロイ。<br>Daggerを使用してCIを近代化し、AIワークフローをカスタマイズし、MCPサーバーを構築するか、信じられないほどのagentを作成します。”" userName="jimmcslim" createdAt="2025-03-20T12:02:46" color="">}}

{{<matomeQuote body="やあ！DaggerのCEOだよ。CIパイプラインに加えて、DaggerがAI agentも実行できるって気づいたんだ。ユーザーが教えてくれたからね。<br>だから、それを活用しようとしてる。全角“something something agents”みたいな感じにならないように頑張ってるけど、まだやるべきことはあるね！エフェメラルな実行エンジン、クロスランゲージコンポーネントシステム、深い可観測性、インタラクティブなCLIが両方のワークロードに最適である理由をマーケティング用語で説明するのは難しい…でも頑張るよ！<br>社内では、自分たちをCI企業ではなく、CI市場で活動するオペレーティングシステム企業だと考えてた。今はAI agentっていう新しい市場に拡大してる。プラットフォームは両方実行できるから、両方サポートし続けるよ。<br>興味があれば、詳細はこちらで共有してるよ：https://x.com/solomonstre/status/1895671390176747682" userName="shykes" createdAt="2025-03-20T17:26:14" color="#38d3d3">}}

{{<matomeQuote body="＞全角“CIを一度で解決してくれるけど、最終的には収益化する必要があるような、VCが出資してる新しいもの（earthly, daggerとか）に縛られないように。”<br>まさにこのスレッドの根本にあるコメントから。" userName="lou1306" createdAt="2025-03-20T08:34:00" color="">}}

{{<matomeQuote body="長年の試行錯誤の結果、うちのチームも同じ結論に至った。クレイジーだと思う人もいるかもしれないけど、C#のCLIアプリケーションとしてスクリプトを実行してる（メインのアプリケーションはC#のwebサーバー）。bashスクリプトはほとんどなくて、あってもエントリーポイントくらい。ビルドと実行ファイルの受け渡しはちょっと手間だけど、静的型付けとかライブラリの利用とか、CIがtypoでダウンしないメリットの方が大きい。<br>環境変数を引数として渡すのもおすすめ。必要なdependenciesが分かりやすくなるし、移植性も高まる。" userName="ehansdais" createdAt="2025-03-20T07:32:27" color="#45d325">}}

{{<matomeQuote body="マジでそれな。YAMLを単なる設定ファイルじゃなくて、最適化されたCIパイプラインみたいな複雑なコードに使うとかありえんわ。正気か？あんたみたいな人が、ちゃんとしたプログラミング言語を使うべきだって言ってくれるから救われるわ。Lisp使いの人たちがこの狂気を見てどう思ってるか想像もできん。" userName="baq" createdAt="2025-03-20T07:38:51" color="#ff5c5c">}}

{{<matomeQuote body="ほんとそれ。誰が考えたのか知らんけど、これは「ワンクリックビルド」の原則だよ。それができないなら問題あり。<br>だから、CIは全部「ワンクリック」でできるスクリプトとして書くようにしてる。こうすると、CI全体の開発・テストが楽になるし、CIの実装を切り替えるのも簡単。CIがダウンしてても、ローカルでビルドできるから安心。<br>ただ、環境構築もスクリプトでやるから、速度は遅くなるかもね。" userName="stinos" createdAt="2025-03-20T09:17:29" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="＞パイプラインは開発者のマシンでもローカルで実行できるべき（少なくとも可能な限り）。<br>マジそれ。<br>さらに言うと、「デバッガーがあるツール」でロジックを実装しろってこと。YAMLは最悪。シェルスクリプトも二番目に悪い。ちゃんと使える言語使えって。" userName="forrestthewoods" createdAt="2025-03-20T07:39:20" color="#ff33a1">}}

{{<matomeQuote body="＞常に独自のrunnerを使うこと。可能であればオンプレミスで。<br>なんで？セキュリティが重要な場合とか、知的財産が絡む場合はわかるけど。「snowflake runner」とか、ただのコンテナイメージの実行環境のこと言ってる？" userName="alex_suzuki" createdAt="2025-03-20T06:55:01" color="">}}

{{<matomeQuote body="独自のrunnerだとキャッシュが便利。10GB以上の「開発コンテナイメージ」を、たった10行の変更のためにダウンロードし直す必要がない。<br>self hostedのGitLab runnerだと、インクリメンタルビルドとほぼ同じくらい速かった。ビルドに15～20分かかるような場合（中規模のC++コードベース）、30秒くらいに短縮できた。" userName="saidinesh5" createdAt="2025-03-20T07:10:59" color="#45d325">}}

{{<matomeQuote body="YAMLについて説明してくれない？宣言的なパイプラインなら、まあまあ使えると思うんだけど。" userName="qweiopqweiop" createdAt="2025-03-20T07:47:43" color="">}}

{{<matomeQuote body="YAMLはマークアップ言語としては問題ない。単純な設定ファイルとかなら全然OK。<br>でも、CIは「設定」じゃなくて「コーディング」だよね。完全にツール選択ミス。YAMLは無理やり拡張されて、とんでもないキメラになっちゃった。GitLabのYAMLでアンカーとかリファレンスを使い始めたら終わり。結果がどうなるか、ローカルでどう実行するか、デバッグはどうするかって話。<br>YAMLを完全に避けることはできないけど、本来の使い方を守るべき。" userName="deng" createdAt="2025-03-20T08:26:26" color="#ff33a1">}}

{{<matomeQuote body="＞CIは「設定」じゃなくて「コーディング」。<br>やっと言ってくれた！YAMLが言語としてまあまあでも、みんながやろうとしてることがうまくいかない理由を説明するのに苦労してたんだよね。特に、CIみたいにコマンドを実行する必要があるもの。<br>＞結果がどうなるか、ローカルでどう実行するか、デバッグはどうするかって話。行かない方がいい。<br>GitHub actionsみたいなリモートCI runnerは、問題をさらに悪化させる。CIコードをpushして、10分待って、エラーが出て、構文エラーを修正して、pushし直すっていうサイクルがマジで時間の無駄。<br>設定ファイルとしてYAML使うのも苦痛。空白（タブvsスペース）問題のせいで台無し。" userName="LeonM" createdAt="2025-03-20T09:57:34" color="#ff33a1">}}

{{<matomeQuote body="YAMLが宣言型プログラミング言語として正しいかどうかは興味ないけど、GitHub Actionsのワークフローを繰り返すのはマジで苦痛。重要なロジックを全部スクリプトとかMakefileに閉じ込めて、ローカルで高速にテストして、GitHubには環境構築とスクリプトの実行だけやらせる。" userName="cmsj" createdAt="2025-03-20T11:56:43" color="#ff5733">}}

{{<matomeQuote body="GitHub Actionsのワークフローを試すのめっちゃめんどいよね。大事なロジックはスクリプトとかMakefileに書いとけば、ローカルで爆速で試せるし。GitHubには環境用意してもらって、スクリプトを順番に実行してもらうだけで済むじゃん？何が悪いの？" userName="motorest" createdAt="2025-03-20T12:00:19" color="#ff5c5c">}}

{{<matomeQuote body=".ymlファイルには必要最低限のことだけ書いとくのが良いってことだよね。依存関係インストールとかビルド実行のスクリプト呼び出しだけとか。ランナー待つのもマジでイライラするけど。pushして待つしかないし。だからローカルでも実行できるスクリプトが良いってことね。ローカルで試せないとマジで辛い。" userName="tom_" createdAt="2025-03-20T15:44:32" color="#785bff">}}

{{<matomeQuote body="そのドキュメントにはそんなこと書いてないじゃん。「.ymlファイルには必要最低限のことだけ書いとけ」みたいなことなんてどこにも書いてない。ただの基本的な使い方しか書いてないし。それに、悪い例を紹介してるよね。<br>＞ - name: Run the scripts<br>＞ run: |<br>＞ ./my-script.sh<br>＞ ./my-other-script.sh<br>これって2つのスクリプトを実行してるんじゃなくて、シェルコマンドで2つのスクリプト呼び出してるだけでしょ。最初のスクリプトが失敗したらどうなるの？ローカルでどうすればいいの？" userName="kbolino" createdAt="2025-03-21T15:50:11" color="">}}

{{<matomeQuote body="書いてあるよ。スクリプトにロジック書いとけってことじゃん。シェル使ってコマンド実行するのなんて普通じゃん。エラー処理は自分で書けばいいし。CIエージェントはtrue/falseしか理解しないんだから。ベストプラクティスもちゃんと書いてあるし。highlightしてるところは権限の話でしょ。" userName="bastardoperator" createdAt="2025-03-21T16:24:47" color="">}}

{{<matomeQuote body="＞However, CI is not ”configured”, it is coded.<br>いや、違うでしょ。パイプラインサービスは共通のアーキテクチャパターン持ってるじゃん。pipeline runはbuild jobで構成されてて、外部イベントでtriggerされて、build jobはcontext持ってて、artifact出力できて、build jobはstageにまとめられてて、stageはdirected graphとして構成されてて、stage間の遷移はルールで決まってて。DSLsに最適じゃん。GitLab CICD見てみ？" userName="motorest" createdAt="2025-03-20T11:10:47" color="">}}

{{<matomeQuote body="YAMLにbreakpoint置けないし、変数評価できないし、debug情報printできないし、途中からrerunできない。YAMLはhappy flowには良いけど、それ以外はマジで無理。" userName="maratc" createdAt="2025-03-20T08:47:46" color="#45d325">}}

{{<matomeQuote body="Daggerの話しようと思ったけど、AIのゴミになっちゃった。depot.devはrunnerがマジで速いからオススメ。" userName="Aeolun" createdAt="2025-03-20T06:54:05" color="">}}

{{<matomeQuote body="マジかよ、GitHub ActionsとDevOpsってそんなに嫌われてるんだ！　俺は長年使ってて、ほとんど問題ないし、むしろ気に入ってるんだけど。全然知らなかった。セットアップとかテストは確かにちょっと面倒だけど、一度動けばこっちのもん。Nodeのバージョンアップ以外、4年も触ってないし。単純なニーズには合ってるのかもね。" userName="tobinfekkes" createdAt="2025-03-20T06:41:13" color="">}}

{{<matomeQuote body="何するかによるんじゃない？　GitHub CIはスクリプト言語とか、モノレポじゃない単一プロジェクトとか、複雑な統合テストがないとか、コンプライアンスがガチガチじゃないとか、開発者の権限がほぼ同じとか、CIが速いとか、そういう場合に合うように設計されてる気がする。それ以外だと問題が多発する。無料みたいな値段で始められるから、最初は安く見えるんだけど、結局高くつくことが多い。他のCIソリューションも大して変わらないけどね。" userName="dathinab" createdAt="2025-03-20T07:22:58" color="#45d325">}}

{{<matomeQuote body="＞no need for compliance enforcement stuff<br>いやいや、GitHub Actionsはコンプライアンスにめっちゃ使えるよ。attestation作れるから、artifactの出所とか完全性に関するポリシーを簡単に適用できるし。Jenkinsで同じことやるよりずっと楽だった。何が問題だったの？" userName="voxic11" createdAt="2025-03-20T15:27:29" color="#ff5c5c">}}

{{<matomeQuote body="＞languages with no or very very cheap ”compilation” steps (i.e. basically only scripting languages)<br>それはない。Haskellでも全然使える。依存関係をキャッシュすればビルドも速くなるし。" userName="tasuki" createdAt="2025-03-20T10:43:15" color="">}}

{{<matomeQuote body="GitHub Actionのキャッシュとビルドartifactの扱いがマジでクソ。アップロードもダウンロードも遅いし、細かいイライラが多すぎる。GitHub runnerも小さいから、リンカが重いとパフォーマンスがめっちゃ悪くなる。プロジェクトが小さければ関係ないけど。" userName="dathinab" createdAt="2025-03-20T14:54:34" color="">}}

{{<matomeQuote body="キャッシュが遅いのはどこも同じだと思う。シングルマシンのgitlab runnerでも、ローカルキャッシュへのアップロードにめっちゃ時間がかかる。100MBのアーカイブで数十秒とか。" userName="folmar" createdAt="2025-03-20T17:38:23" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="GitLabにはマジでイライラする。runnerはNVMe SSD積んだAlienwareデスクトップなのに、ローカルディスクからuncompressedキャッシュを読み込むのに10分もかかる。毎回、ジョブの起動に5～10分かかるんだよ。" userName="mystified5016" createdAt="2025-03-24T14:17:50" color="">}}

{{<matomeQuote body="＞But the worst part, which maybe is where a lot of hatred comes from, is that it’s there for cheap maybe even free (if you anyway pay for GitHub) and it doesn’t need an additional contract, billing, etc.<br>高いrunnerにお金払っても、Azureの請求にまとめられるから、別のSAASサービスを正当化する必要がない。" userName="Marsymars" createdAt="2025-03-20T22:32:16" color="">}}

{{<matomeQuote body="他のCIソリューションも大差ないってのがマジな話だよね。どのCIシステムも、想定された幸せな道から外れると途端にダメになる。もうCI自体諦めるしかないんじゃないかって思うわ。" userName="lolinder" createdAt="2025-03-20T20:49:43" color="">}}

{{<matomeQuote body="GH Actions使ってるけどさ、他のビルドシステムと同じで、得意なことだけやらせるのがコツだよ。残りはシェルスクリプトかDockerコンテナでやるべき。複雑になったら「このスクリプトを実行」ってレベルまで単純化する。スクリプトの方がYAMLよりずっと書きやすいしデバッグしやすいからね。<br>問題はGH Actionsじゃなくて、ビルドシステムに余計な機能を詰め込みすぎること。AntとかMavenとかGradleとかも同じ。ビルド＆CIシステムは単純にソフトウェアをビルドするくらいでいいんだよ。条件分岐とかカスタムな副作用とか、月の満ち欠けで挙動が変わるようなのはマジ勘弁。YAML使うならYAMLジェネレーター使うといいよ。Kotlinの使ってるけど、オートコンプリートとか型チェックとかあるから便利。" userName="jillesvangurp" createdAt="2025-03-20T07:21:37" color="#785bff">}}

{{<matomeQuote body="GH Actions使うなら、他のビルドシステムと同じで、得意なことだけやらせるのが基本だよね。残りはシェルスクリプトかDockerコンテナで。<br>＞CICD101だって言うじゃん。なんでみんなYAMLとか関係ないことで騒いでるんだろ？<br>パイプラインを設定して、自分でスクリプト用意して、GitHub Actionが便利なら使う。それだけじゃん。マジで自転車が倒れるミームみたい。" userName="motorest" createdAt="2025-03-20T11:50:11" color="#45d325">}}

{{<matomeQuote body="GitHub Actionsの目的がシェルスクリプトを順番に実行することだけなら、なんで式評価とか条件分岐とか、`run`以外のActionがあるの？" userName="int_19h" createdAt="2025-03-21T04:48:27" color="">}}

{{<matomeQuote body="GitHub Actionsのいいところは、GitHub ActionsのUI/APIからパイプラインが見やすくなること（PRビルドのステータスチェックとか）。再利用性も高いし。GitHub Actionとしてパッケージされてれば、他のプロジェクトのシェルスクリプトよりずっと再利用しやすい。GitHub Actionsは完璧じゃないけど、慣れればかなり使えると思う。" userName="michaelmior" createdAt="2025-03-21T13:47:31" color="">}}

{{<matomeQuote body="＞GitHub Actionsの目的がシェルスクリプトを順番に実行することだけなら、なんで式評価とか条件分岐とか、`run`以外のActionがあるの？<br>GitHub Actionsには'run'があるよ。<br>https://docs.github.com/en/actions/writing-workflows/workflo...<br>GitHub ActionsはカスタムActionもサポートしてる。カスタムActionを使えば、サードパーティのモジュールをインポートするのと同じように、ハイレベルなActionを作成、共有、再利用できる。<br>https://docs.github.com/en/actions/sharing-automations/creat...<br>カスタムGitHub Actionを使っても、steps.runは使えるよ。<br>そもそも式評価とか条件分岐についてのコメントが意味不明。CICDシステム使ったことあるのかな？みんな自分の無能さを棚に上げて文句ばっか言ってるようにしか見えない。" userName="motorest" createdAt="2025-03-21T07:27:12" color="#38d3d3">}}

{{<matomeQuote body="みんなYAML嫌いなのは、そう言うのがクールだと思ってるからでしょ。Python嫌いと同じ。見当違いな'hate'でも。<br>SaltStackユーザーだけど、YAMLで書くのが難しいと思ったら、カスタムモジュールとかステート書くよ。YAMLはSaltに何をしてほしいか伝えるだけにして、ロジックはPythonファイルに書く。<br>みんなもっとジェネラリストになるべき。" userName="pepoluan" createdAt="2025-03-20T14:12:09" color="">}}

{{<matomeQuote body="いろいろな組織を見てきたけど、DevOpsで苦労してる人たちには、とにかくシンプルにして、サードパーティへの依存をなくすように勧めてる。GitHub Actionsのhello worldみたいな状態に戻すのが一番。文句言う人は、HNとかで読んだことを鵜呑みにして、無駄に複雑な構成にしてるんだよね。パッケージマネージャーを5回も変えてるとか、パフォーマンスのためにJS, TS, Py, Go, Rustを混ぜてるとか。データベースの設定がひどいことになってるのに、言語がボトルネックだと思ってるんだから笑える。DevOpsも同じ。新しいものに無駄金使ってる。" userName="anonzzzies" createdAt="2025-03-20T07:13:04" color="">}}

{{<matomeQuote body="みんなと同じ苦労をしてるってことだよね。ただ、あなたはそれを無視してるだけ。<br>現状より良くできるはずだ！" userName="IshKebab" createdAt="2025-03-20T07:00:37" color="">}}

{{<matomeQuote body="そうかもね。でも、特に困ってないんだよね…。いつも問題なくビルドできるし。コードをコミットしてプッシュして、45秒待つとAWSに同期されて、サイトがS3バケットを定期的にチェックして新しいアイテムをダウンロードする。モバイルアプリとかよりずっと安定してる。ウェブアプリにコードをプッシュするのは楽しみだけど、モバイルアプリのビルドパイプラインはマジで憂鬱。" userName="tobinfekkes" createdAt="2025-03-20T07:34:11" color="">}}

{{<matomeQuote body="マジで全然問題ないんだよねー。毎回ちゃんとコードbuildしてくれるし。まあ、みんなが言ってるのは信頼性がないってことじゃないからね。セットアップがマジでめんどいって話。一回やっちゃえば、あとはほぼ放置でOK。CIがめっちゃシンプルでいつも同じなら、こういう問題に直面しにくいのかもね。" userName="IshKebab" createdAt="2025-03-20T09:07:00" color="">}}

{{<matomeQuote body="モバイルアプリのbuild pipelineはマジで憂鬱。<br>もしよかったらFastlane[0]見てみて。<br>[0] https://github.com/fastlane/fastlane" userName="michaelmior" createdAt="2025-03-21T13:49:44" color="">}}

{{<matomeQuote body="問題点って言うほど深刻じゃない気がするけどなー。deprecation warningがログに出たり、GitHubからメールが来たりしたら、1行commitしてNode.jsのバージョン上げるだけじゃん。簡単じゃん。typoしてpushするまで気づかないとかもあるけど、ちゃんと考えて書くようにしたら減ったし、誰かにちゃんとレビューしてもらうようにした（ただスクロールしてLGTMするだけじゃなくて）。俺の経験だと、設定しちゃえばほぼ放置でOK。数分の設定で、何年もbuildし続ける恩恵を受けられる。" userName="dkdbejwi383" createdAt="2025-03-20T08:26:33" color="#38d3d3">}}

{{<matomeQuote body="問題解決じゃなくて、問題を矮小化してるだけじゃん。そりゃどんな問題でもそうやって解決できるけど、周りのものが完璧じゃなくても、ちょっとくらいマシな方が良くない？" userName="ironmagma" createdAt="2025-03-20T09:21:58" color="">}}

{{<matomeQuote body="それって「ちょっと壊れてる」ってレベルじゃないと思うけどなー。それが普通じゃん。常に完璧に動いて、interventionとかupdateが必要ない魔法みたいな解決策なんてないと思うし。" userName="dkdbejwi383" createdAt="2025-03-20T10:48:58" color="">}}

{{<matomeQuote body="＞That's just how it works.”今は”そう”だけど、ずっとそうである必要はないじゃん。もっとマシな未来を想像できるじゃん。イライラしないような。<br>＞I don't think there's some universally perfect solution that magically just works all the time and never needs intervention or updating.”何が問題なのか勘違いしてるみたいだけど、maintenanceが面倒なんじゃなくて、最初のdevelopmentが面倒なの。" userName="IshKebab" createdAt="2025-03-20T13:04:26" color="#45d325">}}

{{<matomeQuote body="組織の規模とか、専門性の高さによるんじゃない？今はGitHub Actions嫌いだし、GitLab CIの方が全然良いと思ってるけど、俺にとってはたまに触る程度だから深く考えてない。でも、もし自分が「100% DevOps担当」で、巨大組織のためにずっとこれ専門でやることになったらマジで嫌だわ。多分1週間で発狂する。" userName="raffraffraff" createdAt="2025-03-20T07:14:46" color="">}}

{{<matomeQuote body="GitHub Actions自体は嫌いじゃないんだけど、一部の開発者がCIでエラーが出ても基本的なdebuggingをしないのが問題。ローカルで動いてCIでエラーになると、すぐ俺にメッセージ送ってくるんだもん。だから「100% DevOps」じゃなくて、他の開発者のローカル環境のdebuggingに時間を費やしてる。" userName="Marsymars" createdAt="2025-03-20T22:37:45" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="一番好きなのは、エラーメッセージがめっちゃ長くて、ほとんど関係ないことばかりだけど、問題の答えがその中に書いてあるパターン。" userName="sgarland" createdAt="2025-03-20T23:47:07" color="#ff5733">}}

{{<matomeQuote body="勘違いしてたらごめん、workflow_dispatchを使えば、無駄なcommitをしなくてもactionをtriggerできるよ。" userName="thom" createdAt="2025-03-20T16:32:10" color="#ff5c5c">}}

{{<matomeQuote body="マジでそれな。actions/upload-artifactがバイナリから実行許可剥ぎ取るの、マジありえん(1)。最初にやらかして6年も放置とか、マジでここのチーム信用できんわ。CI/CDサービス選ぶ時って、安定性と正確性マジ重要じゃん？GitHubにはどっちもねーわ。自前のタスクランナーをオフィスのPCに一日で構築して、uptimeもコストもパフォーマンスも実装も全部GitHub Actionsより上とか笑える。GHA選ぶ理由マジでわからん。Hello Worldレベルなら騙せるんかな。<br>(1) https://github.com/actions/upload-artifact/issues/38" userName="duped" createdAt="2025-03-20T16:22:37" color="#ff5733">}}

{{<matomeQuote body="そりゃ、あんたのフローがシンプルで、数人しか触らないならそうかもね。世の中には、委員会で作ってメンテしてるDev-opsパイプラインの悪夢みたいなのがゴロゴロあるんだよ。マジで勘弁。<br>個人的なやつだと、Google Cloud Build使ってて、マジでシンプルなフローで済んでるから満足。" userName="chanux" createdAt="2025-03-20T10:04:38" color="">}}

{{<matomeQuote body="使えないコミット作るなら、'git commit --allow-empty'がおすすめだよ。でもGitHubって、コミットなしでアクション再実行できるボタンなかったっけ？GitHub Actionsは、計算時間気にしないなら一番楽。オープンソースのリポジトリで無料版使ってるとか、会社がコスト気にしないとかならね。計算時間気にするなら、設定頑張れば節約できるけど、マジで面倒。" userName="eru" createdAt="2025-03-21T05:26:09" color="">}}

{{<matomeQuote body="ちょい複雑な、ありきたりじゃないワークフローやることになるまでは、俺もそう思ってたわ。CIジョブ構築がこんなに簡単になったのはマジすごいと思うけど、ローカルで完結させてからサービスにpush、って感じじゃないのが不満。" userName="trevor-e" createdAt="2025-03-20T17:05:14" color="">}}

{{<matomeQuote body="あんたのニーズがシンプルなだけだよ。Travisが閉鎖してからGitHub actions使ってるけど、今のところ問題ないわ。50人もいて5つの言語使うような大規模プロジェクトでGitHub actionsメンテしたいとは思わんけど…" userName="tasuki" createdAt="2025-03-20T09:31:28" color="">}}

{{<matomeQuote body="ソフトウェアエンジニアはイテレーション速度が命。変化に対応できないパイプラインは、マジで金食い虫。" userName="flanked-evergl" createdAt="2025-03-20T07:34:03" color="#ff5c5c">}}

{{<matomeQuote body="一番最悪なフィードバックループについて誰も触れてないのが気になる。30-60秒のフィードバックループってマジ最悪。画面に釘付けになるけど、生産性はゼロ。GHAの環境をローカルで再現しようとしたけど、無理だった。だから変更するたびに「push、GHが拾うの待つ、typoとかのミスに反応、やり直し」。スロットマシンみたいに「あと一回で当たる」って感じで、集中力と時間を奪っていく。5秒で終わるビルドに25分もかかった。GHAだと依存関係とかで3分かかる。キャッシュ追加？10時間溶けた。失敗と集中力低下のコストがデカすぎる。" userName="xlii" createdAt="2025-03-20T07:15:51" color="#785bff">}}

{{<matomeQuote body="マジでそれな。GitHub Actionのコンテナビルドのデバッグで、1回40分以上かかるとか…一日6、7回しかテストできずに終わる。マジでもっと良い方法あるだろ。誰か解決してくれ。" userName="kelseydh" createdAt="2025-03-20T08:03:36" color="#ff33a1">}}

{{<matomeQuote body="actってツールがあるよ。ローカルでアクション実行できる。完全に同じってわけじゃないけど、時間節約になるかも。<br>https://github.com/nektos/act" userName="elAhmo" createdAt="2025-03-20T08:26:05" color="">}}

{{<matomeQuote body="組織設定だと、既成のアクションや組織専用のアクション（ダウンロード不可）を使わされてるとほぼ役立たずだよね。アクセスできないイメージのセルフホストランナーを使わされる場合も同様。環境変数とかネットワークとかもそうだし…" userName="mab122" createdAt="2025-03-20T09:59:08" color="">}}

{{<matomeQuote body="actはマジ最高だよ！GitHubとかGiteaのアクションをローカルで試すのにめっちゃ役立つ。" userName="cantagi" createdAt="2025-03-20T14:47:43" color="#45d325">}}

{{<matomeQuote body="daggerってのがあるよ。CIをコードとして扱えるんだ。ローカルのIDEでパイプラインをテストできる。" userName="esafak" createdAt="2025-03-20T20:45:25" color="#ff5733">}}

{{<matomeQuote body="GitLab使ってて、firecow/gitlab-ci-local がめっちゃ時間短縮になるって気づいた（GitHubのnektos/actみたいなもん）。GitLab/GitHubがデフォルトでこういうの提供してくれたら嬉しいんだけどな。" userName="hv42" createdAt="2025-03-20T13:46:00" color="#38d3d3">}}

{{<matomeQuote body="actはマジで良い。アクションをローカルで試すのに使ってる（Giteaのアクションをセルフホストしてて、act使ってるからGitHubのアクションと全く同じ）。" userName="cantagi" createdAt="2025-03-20T14:33:19" color="#785bff">}}

{{<matomeQuote body="これマジでうちのフラストレーションの大きな原因だわー。フィードバックループが最悪で、どれだけ精神的なスペースを無駄にしてるかって話だよね。OPも最後に同じこと言ってる（何か動くまで終わらない”wip”コミットの世話）。" userName="lsuresh" createdAt="2025-03-20T21:17:00" color="">}}

{{<matomeQuote body="nektos/act 超おすすめ。もし複雑なことやるなら、SSHでサーバーに入って調べられる。それを手助けするアクションもたくさんある。" userName="figmert" createdAt="2025-03-20T09:56:58" color="#ff5733">}}

{{<matomeQuote body="最近LLMを色々使ってるけど、一番重要なのは、まさにこういう中途半端な非同期タスクで集中力を維持するメカニズムとして使うことかも。数分でフィードバックが返ってくるようなタスクね。<br>もしプロセスが数分以上かかるなら、待ってる間に別のタスクに切り替えられる。でも３～１０分くらいの待ち時間ってマジ耐えられないんだよね。集中力は途切れるし、コンテキストスイッチするほど長くもないし。今は待ってる間、LLMとタスクに関係することについてダベって、集中力を保つようにしてる。" userName="tomjakubowski" createdAt="2025-03-22T20:52:55" color="#45d325">}}

{{<matomeQuote body="GitLabを10年使ってた会社で働いてて、ランナーには慣れてたんだ。<br>最近GitHubを使ってる会社に移ったんだけど、規模的にGitHubの方がすごいだろうと思ってた。<br>でも、期待外れだった。比較にならないくらいひどいし、どうしてこうなったのかマジで理解できない。もし会社を経営してて、どっちか選べって言われたら、GitHub Actionsのせいで毎回GitLabを選ぶだろうな。" userName="silisili" createdAt="2025-03-20T04:57:54" color="#785bff">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
