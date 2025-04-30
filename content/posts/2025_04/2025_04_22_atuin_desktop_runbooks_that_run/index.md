+++
date = '2025-04-22T00:00:00'
months = '2025/04'
draft = false
title = 'Atuin Desktop登場！実行可能なRunbookで作業効率爆上げ！？'
tags = ["runbook", "自動化", "ドキュメント", "開発", "ツール"]
featureimage = 'thumbnails/green1.jpg'
+++

> Atuin Desktop登場！実行可能なRunbookで作業効率爆上げ！？

引用元：[https://news.ycombinator.com/item?id=43766200](https://news.ycombinator.com/item?id=43766200)




{{<matomeQuote body="Emacs好きならorg-babelでも同じようなことできるよ。プレーンテキストファイルがそのままプログラム、ドキュメント、ノート、ウェブサイトになるんだ。めっちゃ強力で、リテラシープログラミングの良い例だと思う。詳しくはこのリンクを見て→https://osem．seagl．org/conferences/seagl2019/program/proposa…" userName="floathub" createdAt="2025/04/22 22:27:09" color="#45d325">}}




{{<matomeQuote body="org-babelはリテラシープログラミングに関して、一番できることが多いシステムの一つだと思う。プログラミングの本から学ぶときにめっちゃ役に立った。昔書いたプログラムもorg-babelのおかげで理解がめっちゃ早くなった。細かい質問にも答えてくれるからね。ただ、学習コストは高いから、無理に使う必要はないかも。" userName="zelphirkalt" createdAt="2025/04/23 04:47:26" color="#45d325">}}




{{<matomeQuote body="紹介ありがとう！org-babelはこの用途にマジで最適だと思うし、素晴らしいドキュメントが作れるよ。動画とデモのgitリポジトリもチェックしてみて！[0]: https://www．youtube．com/watch?v=0g9BcZvQbXU[1]: https://gitlab．com/spudlyo/orgdemo2" userName="spudlyo" createdAt="2025/04/23 00:27:12" color="#ff33a1">}}




{{<matomeQuote body="プレゼンありがとう。babelを使い始めた頃にめっちゃ参考になったし、今でも時々見返してるよ。" userName="floathub" createdAt="2025/04/23 15:30:07" color="#ff33a1">}}




{{<matomeQuote body="BBEditのShell Worksheetsも似てる。文章とコマンドを混ぜて、キー押すだけで実行できるんだ。" userName="kstrauser" createdAt="2025/04/22 22:54:47" color="#ff5c5c">}}




{{<matomeQuote body="7年くらい前に同じようなことやったことあるよ。→https://nurtch．com/　このアイデアはマジで可能性あると思う。JupyterCon Paris 2023でも発表したんだ。→https://www．youtube．com/watch?v=TUYY2kHrTzs　ドキュメントに実行可能なコードがある場合、PRレビューのワークフローをドキュメントにも適用したくなるんだよね。頑張って！" userName="amirathi" createdAt="2025/04/23 04:02:31" color="#785bff">}}




{{<matomeQuote body="僕も最初に「Jupyterじゃダメなの？」って思った。同じこと考えてる人がいてよかった！" userName="wodenokoto" createdAt="2025/04/23 06:20:14" color="">}}




{{<matomeQuote body="AWSにいた時、まさにこういうのがチームに欲しかったんだよね。自動化するにはちょっと危険すぎるオペレーションがたくさんあって、これなら段階的に構築できる。おめでとう！" userName="huntaub" createdAt="2025/04/22 23:37:00" color="#45d325">}}




{{<matomeQuote body="これは個人的な意見だけど。AWSにどれくらいいたの？実は、僕はこの数年、AWSで社内プラットフォームサービスの仕事をしてたんだ。オペレーションの負担を減らすために、runbookをコード化して安全かつ自動的に実行できるサービスだよ。Atuin Desktopと似てるけど、もっと機能が多かった。" userName="rochak" createdAt="2025/04/23 07:24:39" color="#ff5733">}}




{{<matomeQuote body="OPじゃないけど、15年間AWSにいた（2021年12月退職）。知らなかったな。ChimeやTT、アラームから自動的にコンテキストを集めたり、アクションを起こしたりするチャットボットみたいなツールはいくつか知ってたけど。" userName="perpil" createdAt="2025/04/23 17:26:12" color="#785bff">}}




{{<matomeQuote body="AWSにいたとき、wikiから直接コマンド実行できるのを作ったんだよね。CloudWatchのクエリとか、AWS CLIコマンドとか。必要な認証情報を安全に取得したり、入力フォーマットしたりするの全部なしで。GitHubから直接実行できるように作り直したよ。GitHub wikiからLambda関数を呼び出すのが4行でできる例はこちら: https://speedrun.nobackspacecrew.com/index.html#invoking-an-…" userName="perpil" createdAt="2025/04/23 17:09:07" color="">}}




{{<matomeQuote body="コロナ前だけどAmazonにいたとき、Eiderってので同じようなことできたよ。IAM連携付きのホスト型notebook。" userName="simsla" createdAt="2025/04/23 06:24:20" color="">}}




{{<matomeQuote body="これってローカルのJupyter notebookと何が違うの？!とか%を使えば同じことできるんじゃない？マジな質問。この会社とかCLI製品のことよく知らないんだ。" userName="dheerkt" createdAt="2025/04/22 21:30:43" color="">}}




{{<matomeQuote body="Pythonだけで完結しないことにJupyter notebookを使いたくないのは、Pythonのせいなんだよね。pipenv/pyenv/conda/poetry/uv/dependencies.txtとか、Pythonのバージョンアップで他のものが壊れるのがマジ勘弁。AnsibleとかBuild Pipelinesとかdeploy.pyとかもそう。Pythonは基盤的なものには使いたくない。依存関係で毎年壊れるから。" userName="berkes" createdAt="2025/04/23 11:52:37" color="#ff5733">}}




{{<matomeQuote body="Jupyter Notebooksってターミナル用途だとハックっぽく感じるから、試してみるの楽しみ。" userName="RestartKernel" createdAt="2025/04/23 03:24:09" color="">}}




{{<matomeQuote body="marimoはどう？" userName="BOOSTERHIDROGEN" createdAt="2025/04/23 04:25:29" color="">}}




{{<matomeQuote body="マジで同じ疑問。Jupyterなら柔軟なスクリプトも書けるし、osコマンドも使えるじゃん(!/%とかos.system()とかで)。" userName="hashstring" createdAt="2025/04/23 10:56:59" color="">}}




{{<matomeQuote body="これってhttps://runme.devとすごく似てる。" userName="celera" createdAt="2025/04/23 00:49:08" color="">}}




{{<matomeQuote body="紹介ありがとう。Runmeの共同開発者です。実行可能なドキュメントもっと増えてほしい。" userName="sourishkrout" createdAt="2025/04/23 15:08:10" color="#ff5c5c">}}




{{<matomeQuote body="https://runme.dev/の動画がいまいち分かりにくかった。「Make Markdowns Interactive」のデモに置き換えた方がRunmeが何なのか理解しやすいと思う。" userName="mkl" createdAt="2025/04/24 10:25:02" color="">}}




{{<matomeQuote body="検討してみるよ。フィードバックどうもありがとうね！" userName="sourishkrout" createdAt="2025/04/24 17:16:20" color="">}}




{{<matomeQuote body="これマジですごい！まさに探してたものだ、ありがとう！" userName="nathabonfim59" createdAt="2025/04/23 11:57:58" color="#ff33a1">}}




{{<matomeQuote body="面白そうだね！最近Jupyter notebookの代わりにhttps://marimo.io/を使い始めたんだけど、いくつか改善点があって、これも同じ方向に向かってるみたい。" userName="elAhmo" createdAt="2025/04/22 21:59:55" color="#45d325">}}




{{<matomeQuote body="それってDockerのマニフェストじゃん。" userName="jimbokun" createdAt="2025/04/23 00:37:29" color="">}}




{{<matomeQuote body="＞それってDockerのマニフェストじゃん。<br>基本的には今もそうだよ。Dockerfileが秘密にされてなければ、どんなコンテナもDockerfileから複製できる。DockerコンテナはLinuxが動く場所ならどこでも動くはず。" userName="x-complexity" createdAt="2025/04/23 01:01:39" color="">}}




{{<matomeQuote body="コンテナをDockerfileから再現できることなんてほとんどないよ。<br>厳密なルール（apt update禁止とか、“latest”タグ禁止とか、インターネットアクセス禁止とか）を守れば再現可能なDockerfileを作れるかもしれないけど、普通じゃないよね。" userName="spott" createdAt="2025/04/23 02:06:08" color="">}}




{{<matomeQuote body="確かに100%再現可能なビルドは難しいけど、Dockerを使えば簡単になるんじゃない？100%再現可能が目標なら、Dockerより簡単な方法ある？" userName="taberiand" createdAt="2025/04/23 03:04:42" color="#38d3d3">}}




{{<matomeQuote body="途中で何か変更したくなったらどうするの？最初から全部手動でやり直すの？" userName="milkshakes" createdAt="2025/04/22 22:10:55" color="">}}




{{<matomeQuote body="それってさ、A) ダンプした状態を直接いじるか、B) パラメータ化するか、C) プログラムに状態をトランザクションに分割させてそれを修正させるってことだよね。プログラムは全部終わらせるために複数ステップ必要になるかも。失敗したらトランザクションみたいに元に戻したいじゃん？できるなら特定のステップで停止、開始、再開もしたいよね。Terraformがクソなのは、既存のリソースを新しいコードとしてダンプする方法がないから。Googleのチームがそれやるツール作った（Terraform-er）。Terraformにその機能があって、リソース管理に既存の状態に頼ってなかったら、俺が欲しいものの90%くらい満たせるのに。リソースをコードとしてダンプして、それを再実行させて、必要なら入力を求めたり変更加えたりできるようにしてほしい。(Terraformはクラウドのリソースでしか使えないと思われてるけど、Ubuntu Linuxを設定するプロバイダとかも作れるんだぜ)" userName="0xbadcafebee" createdAt="2025/04/22 22:15:01" color="">}}




{{<matomeQuote body="状態をダンプして後で再適用するみたいな要件を満たすには、宣言型じゃないと無理だよね。<br>リソースをコードとしてダンプって言うけど、VM foo1のコードって何さ？メモリ16GiB、ネットワークmynet1とか？<br>それってリソースを適用するシステムの状態に依存するよね。VM foo1が既に16GiBのメモリでネットワークmynet1に接続されてたら、コードは何もする必要ないよね？それ以外は間違いだよ。例えば、コードが一致するVMを削除して再作成するとか、継続性と可用性にとって最悪だよ。ありえない。VM foo1が16GiBのメモリで別のネットワークanothernet3に接続されてたら、コードはネットワークをanothernet3からmynet1に変更するだけで、VMを完全に破棄して再作成しちゃダメ。" userName="kiitos" createdAt="2025/04/23 02:06:38" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Dockerの方が簡単って言うけど違うくね？再現性の第一歩は「インターネットからの無制限ダウンロードを禁止」することだよ。Dockerは真逆のことしてるじゃん。" userName="otabdeveloper4" createdAt="2025/04/23 05:18:05" color="">}}




{{<matomeQuote body="何について話してるかによるけど、Terraformは世界に自分が作ったものしか存在しないと思い込んでる欠陥モデルだよね。他の構成管理ツールはそうじゃない。アイテムが存在することを望んでるだけで、存在すればOK、存在しなければ作成するって感じ。<br>構成管理ツールのもう一つの問題は、既存のリソースのうち、どれを実際に存在させたいか、変更したいかってこと。<br>それはもう解決済みの問題だよ。リソースを制御するコンピューターで使うものは全部、キーまたは複合キーでリソースを一意に識別できるはず。そうじゃないと、二度と見つけられないもの作っちゃうことになるからね！<br>Terraformを例にとると、プロバイダーにはリソースごとに一意の識別子を指定するコードがある。単一のキー（’id’、’ASN’、’Name’など）または複合キー（{’id’ + ’VPC’ + ’Region’}）かもしれない。<br>ダンプしたコードに一意の識別子がない場合、プロバイダーは決定を下す必要がある。提供されたものに一致する既存のリソースを検索して最も近いものを正しいものと見なすか、一意の識別子がないというエラーを出すか。通常、一意の識別子を最初から検索するのは難しくない（VM:”foo1”、Network:”mynet1”のような複合識別子がある）。でも、完全に間違いがないわけじゃない。<br>ファイルシステムを考えてみて。実際には2つの一意の識別子がある。完全修飾ファイルパスとinode番号。inode番号はファイルシステム内の実際の一意の識別子だけど、覚えにくいし、別のファイルに再利用される可能性があるし、ファイルシステム間で変わるから、参照しないことが多い。代わりにファイルパスを参照する。でも、ファイルパスは微妙に複雑だ。シンボリックリンク、ハードリンク、バインドマウントがあるから、2つの異なるパスが同じファイルにつながることもあれば、異なるファイルにつながることもある！さらに、ファイルを削除して、まったく同じ名前の新しいファイルを作成することもできる。ファイルの内容が同じでも、削除して新しく作成するのは技術的にはまったく新しいリソースであり、システムに影響を与える（アクセス許可が異なる、削除されたファイルへのファイルハンドルが開いているなど）。<br>だから、俺たちは皆、毎日、自分自身に嘘をついている。ファイルを認識できる、一意の識別子を持っていると装っている。でも実際にはそうじゃない。複合インデックスを使って推測してるんだ。「正しいファイルパスに正しいサイズ、正しい名前、正しいアクセス許可があるから、正しいファイルに見える」と言う。でも、それが期待どおりのファイルかどうかは絶対にわからない。十分に良さそうなら、それで行く。\nそれがリソースを自動管理する方法。リソースの種類ごとに、一意の（または複合の）識別子として使えるものを使って、推測して、十分に推測できない場合はユーザーに確認を求める。なぜなら、人間もそうしているから。" userName="0xbadcafebee" createdAt="2025/04/23 10:29:09" color="">}}




{{<matomeQuote body="ローカルファーストだと腐敗しやすいってどういうこと？詳しく教えて。" userName="sorrythanks" createdAt="2025/04/23 12:18:34" color="">}}




{{<matomeQuote body="それって状態のバイナリblobがあって、それがどうしてそうなってるのかの説明がないってこと？それじゃメンテできなくない？Dockerfilesは基本的にこれだけど、その状態になるまでのステップが書かれたファイルがあるだけじゃん。" userName="LinXitoW" createdAt="2025/04/23 01:25:22" color="">}}




{{<matomeQuote body="それってAnsibleのこと言ってない？パッケージのインストール、ファイルの存在、特定の内容の有無などをモジュールで確認するんだよね。宣言的で冪等性もあるし。" userName="retrochameleon" createdAt="2025/04/23 04:53:21" color="">}}




{{<matomeQuote body="再現可能なビルドが目的なら、Dockerfileの設計とイメージのビルドの過程で無制限のダウンロードはしないんじゃない？要件に対してツールの使い方が悪いのはツールの問題じゃない。" userName="taberiand" createdAt="2025/04/23 10:41:09" color="">}}




{{<matomeQuote body="Terraformが自分が作ったものしか存在しないと思い込んでるってのは違うと思うな。Terraformは状態のスナップショットに基づいて動作する。それは通常ローカルにあるけど、リモートにも置ける。現在のリソースの状態に基づいて状態を更新する仕組みがある。例えばterraform refreshとか。<br>構成管理ツールの問題は、既存のリソースのうち、どれを実際に存在させたいか、変更したいかってことじゃないってこと？それは違うな。その問題は構成管理ツールが解決するように設計された多くの類似したサブ問題の1つにすぎない。そして、その分野のすべての問題の中で、特に面白くも難しい問題でもない。<br>希望する状態Xと実際の状態Yがある場合、XのようにするためにYに適用する必要がある操作をdiffで確認すればいい。Terraformはterraform planで3方向の和解マージ/diffでこれを行う。簡単じゃん。<br>アイテムが存在するかどうかっていうほど単純じゃない。リソースを一意に識別できることが最初のステップなのは確か。でも、安定した識別子を持つ単一のリソースは、異なるプロパティを持つことができる。リソース定義全体（識別子、プロパティ、その他すべて）は、記述して保存してコミットしてプッシュして、最終的に真実にしたいこと（X）として宣言するもの。それはコードではなく、状態（定義）だ。コードは、宣言された状態（X）と実際の状態（Y）をdiffして、一連のデルタ操作を生成するために実行されるもの。または、それらのデルタ操作そのもの。<br>ダンプしたコードに一意の識別子がない場合、プロバイダーは、提供されたものに一致する既存のリソースを検索して、最も近いものを正しいものと見なすかって言うけど、まずコードじゃなくて状態をダンプする。もっと重要なことは、構成管理システムは、1つの識別子を取得して、別の識別子と照合してはいけない。\nそれか、一意の識別子がないというエラーを出す。通常、一意の識別子を最初から検索するのは難しくない（VM:”foo1”、Network:”mynet1”のような複合識別子がある）。それについても理解できないし、これらのシステムのメンタルモデルも理解できない。俺のVMの例に複合識別子vm:foo1 network:mynet1はない。識別子は直感的にはfoo1だ。識別子をオブジェクトと見なす場合でも、提案するオブジェクトにはメモリサイズがない。さらに重要なことに、foo1 VMをnetwork:mynet1からnetwork:othernet2に変更しても、既存のVMを破棄して、新しいネットワークで新しいVMを再プロビジョニングする効果はないはず。構成変更には、この種の完全な解体/スピンアップが必要な場合もあるけど、これらの条件は一般にまれであり、最新の構成管理ツールはすべて、この種の破壊的な作業を可能な限り回避する。<br>それがリソースを自動管理する方法。リソースの種類ごとに、一意の（または複合の）識別子として使えるものを使って、推測して、十分に推測できない場合はユーザーに確認を求める。なぜなら、人間もそうしているから。<br>繰り返すけど、変更を加えるときに「推測」する構成管理ツールは知らない。当然だ。" userName="kiitos" createdAt="2025/04/23 14:28:19" color="">}}




{{<matomeQuote body="ほとんどの人が「ローカル」と言うとき、それは「自分のラップトップで何かを実行している」という意味。つまり、ランダムなオペレーティングシステム、ランダムにセットアップされた環境、ランダムにインストールされたツールってこと。同じ名前でも互換性のないオプションを持つツールがあるかもしれない。バージョン3がバージョン4と互換性がないかもしれないし、コマンドの名前は同じかもしれない。そして、それは確実に時間とともに変化する。<br>これにより、記録した手順は、1) 既存の「ローカル」マシンで動作しなくなり、2) 他の人の「ローカル」マシンと互換性がなくなる。だから、手順は「腐敗」する。<br>これを避けるためには、すべてのツールをインストールして構成するためにAnsible/Puppetを書くこともできるけど、それも時間とともに壊れ、メンテナンスが面倒になる。唯一の信頼できる解決策は、コンテナを使ってすべてを実行すること。それはすべて同じバージョンであることを保証する。しかし、その時点では、それはもはや「ローカルで実行」されているのではなく、コンテナ内で実行されている。そのコンテナはそれ自体が問題になる。\nそれなら、コンテナまたは何かでクラウド環境でrunbookを実行するためのSaaSツールを使用する方がはるかに簡単だ。ansible/puppetや、みんなのマシン上のDockerよりもセットアップと管理が簡単だ（コンテナを理解していない技術「エンジニア」がまだ100万人もいる）。" userName="0xbadcafebee" createdAt="2025/04/23 14:29:35" color="">}}




{{<matomeQuote body="親コメントはDockerが再現性に役立つって言ってるけど、それは違うんだよね。Docker自体は何もしてくれない。再現性のあるDocker imageが欲しいなら自分で頑張るしかない。よくあるのは、多くのbuild scriptが何も検証せずにダウンロードすること。NPM packageのpost install scriptとかマジでヤバいことするし。そういうのを全部キャッチするのは大変だよ。Dockerfilesで`apt install foo`とか平気でやってるしね。" userName="soraminazuki" createdAt="2025/04/23 14:17:09" color="">}}




{{<matomeQuote body="build時の再現性とrun timeの再現性を混同してるよ。Docker images（filesじゃなくて）はrun timeの一貫性には役立つ。Docker (files)はbuildの再現性の表面をなぞる程度。ほとんどのアプリはdistribution package manager(apt, apkとか)とlanguage package manager(npm, cargoとか)に依存してて、どっちも依存関係の解決に課題があるんだよね。build stepの順番とか、動いてないremote serviceへのRPC callとかもあるし。" userName="manquer" createdAt="2025/04/23 02:32:23" color="">}}




{{<matomeQuote body="Dockerを注意深く使うより、再現性のあるbuildを作るのが楽なtoolって何？" userName="taberiand" createdAt="2025/04/23 23:21:05" color="">}}




{{<matomeQuote body="そうじゃなくて、全部手動で宣言するシステムが面倒だって言ってるんだよ。理想的には、変更を加えた時に変更を記録して、重複を排除して、不要なものを削除して、必要な時にreplayできるplaybookができればいいんだよね。" userName="dewey" createdAt="2025/04/23 03:19:20" color="">}}




{{<matomeQuote body="それってautoexpectのことじゃない？https://linux.die.net/man/1/autoexpect" userName="pram" createdAt="2025/04/23 01:43:34" color="">}}




{{<matomeQuote body="Ansible configurationなんて書きたくないんだよね。設定は何も書きたくない。ただstateをdumpしてrestoreしたい。（別の言い方をすると、既存のシステムに基づいてAnsible configurationを自動生成して、それを後でapplyしたい）" userName="0xbadcafebee" createdAt="2025/04/23 14:44:20" color="">}}




{{<matomeQuote body="みんなが100% buildの再現性を求めてるわけじゃなくて、Dockerfilesはだいたい”run stable”で、OSの抽象化とprocess encapsulationを提供してくれるからいいんだよね。" userName="angra_mainyu" createdAt="2025/04/23 16:48:33" color="">}}




{{<matomeQuote body="いや、それも結局は一連のstepを監視して最終的にthingにたどり着くってことじゃん。一連のstepを記録したいんじゃなくて、thingの既存のstateをdumpしたいんだよ。" userName="0xbadcafebee" createdAt="2025/04/23 14:27:41" color="">}}




{{<matomeQuote body="Ansibleで結構複雑なもの書いてるけど、ほとんどdeclarativeだけど、idempotencyについては注意した方がいいよ。特にcommunity moduleを使う場合はね。" userName="bobthecowboy" createdAt="2025/04/23 06:52:33" color="">}}




{{<matomeQuote body="Vagrantは再現可能なVMを作るんだよね。もちろん全く同じものじゃないけど。https://developer.hashicorp.com/vagrant" userName="metabagel" createdAt="2025/04/23 05:48:21" color="">}}




{{<matomeQuote body="確かにその通りだけど、ちょっと考えれば、Dockerfileを簡単に移植したりアップデートしたりできるんだよね、何年も経っても。\n「今どう動いているか」をドキュメント化するのに一番簡単でいい方法だと思うんだ。変な「自分の環境では動く」みたいなことがないし。だから、この考え方にはすごく近いと思ってる。完全に再現できるのが一番いいけど、普通は20行くらいの短いファイルにはできないし。(Nixとか言う人もいるけど、複雑すぎるから「apt-get install docker ＆＆ docker build .」みたいに簡単とは言えないよね)" userName="wink" createdAt="2025/04/23 08:45:06" color="">}}




{{<matomeQuote body="そういうプロセスは移植性が低いことが多いし、システムごとに繰り返す必要があるよね。だから、状態Xになるための手順を自動的に変換できる宣言的な記述があれば最高だよね。" userName="zelphirkalt" createdAt="2025/04/23 04:54:23" color="">}}




{{<matomeQuote body="Dockerfileって基本的に外部にアクセスできるシェルスクリプトだよね。ネットワークアクセスも自由だし、ローカルのハードウェアやファイルシステムにもアクセスできる。でも、外部から持ってきたものがビルド間で同じかどうかは確認しない。DockerfileがApache httpdをビルドしたりNginxをビルドしたりしてもDockerは気にしないんだ。これ以上再現性がないものはないよね。\nでもなぜかDockerは再現可能だって言う人がいるけど、それはDocker registryからギガバイト単位のバイナリblobをダウンロードできるからだって言うんだ。それって、何でも再現可能ってことにならない？\nDocker imageは従来のFHSディストリビューションを対象としたバイナリに比べて移植性があるかもしれないけど、再現性はないよね。" userName="soraminazuki" createdAt="2025/04/23 10:16:00" color="">}}




{{<matomeQuote body="これってAtuin CLIやsync serverみたいにオープンソースになるのかな？製品化されるのかな？" userName="freedomben" createdAt="2025/04/22 21:27:29" color="#ff5733">}}




{{<matomeQuote body="オープンソースになるみたいだよ。https://news.ycombinator.com/item?id=43766200#43766584" userName="jamietanna" createdAt="2025/04/23 07:23:21" color="#45d325">}}




{{<matomeQuote body="サーバーは違うんじゃないかな。" userName="brunoqc" createdAt="2025/04/23 16:17:04" color="">}}




{{<matomeQuote body="無料じゃない可能性が高いね。とにかく、発表されて嬉しいよ！" userName="gniting" createdAt="2025/04/22 21:44:43" color="">}}




{{<matomeQuote body="プラットフォームにrug pulledされる心配はない？" userName="iamwil" createdAt="2025/04/22 21:46:28" color="">}}




{{<matomeQuote body="わかる、最近は何でも「enshittification」される可能性を考えちゃうんだよね。特に製品を導入するときは。オープンソースならまだ安心できるけど。" userName="freedomben" createdAt="2025/04/23 14:49:29" color="">}}




{{<matomeQuote body="runbookに関する俺の経験談：うちのチームは色々管理してて、俺が詳しいものもあれば、名前くらいしか知らないものもある。で、Xっていう後者のカテゴリの何かが壊れる→詳しい人は休暇or死亡or会議中→ドキュメントがある！→でも時代遅れで間違ってる、っていうね…　だから、これはそういう問題を解決しようとしてるんだって。Jupyter NotebooksとAnsible Towerの中間みたいなものらしいよ。ドキュメント、スクリプト、メトリクスが全部まとまってて、何が悪いか、どう直すか、直ったかどうかが分かりやすい、みたいな。" userName="joh6nn" createdAt="2025/04/22 22:19:44" color="#785bff">}}




{{<matomeQuote body="そうあるべきだけど、そうじゃないことってよくあるよね…　もしかしたら、これ系のrunbookの方が、コメントが一切ない1000行のスクリプトより扱いやすいかもよ。<br>もちろん、理想の世界ではそんなことないんだろうけど、インシデントなんて起こらないんだろうけどね！" userName="soupdiver" createdAt="2025/04/23 04:38:13" color="">}}




{{<matomeQuote body="＞時代遅れで間違ってる、っていうね<br>Atuinでどう解決するの？間違った情報や古い情報が、テキスト文書とかwikiにあるのと同じくらい簡単にAtuinドキュメントにも入ると思うんだけど…　何か見落としてる？" userName="mmooss" createdAt="2025/04/22 22:29:52" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="俺はただのコミュニティmodだから、話半分に聞いてほしいんだけど…<br>ドキュメントとターミナルの間で双方向の選択的同期ができるようにする意図があると思う。だから、ドキュメントの内容が古かったり間違ってたりしたら、実際に修正するためにやったことをドキュメントに同期して、ドキュメントを更新する手間を減らすことができる、ってことじゃないかな。" userName="joh6nn" createdAt="2025/04/22 22:40:36" color="#ff33a1">}}




{{<matomeQuote body="説明ありがとう。理解できた。" userName="metabagel" createdAt="2025/04/23 05:53:54" color="">}}




{{<matomeQuote body="俺的に、修正してるものが実際に実行されてる”runbook”だからじゃないかなって思う。ドキュメントとコードを分離する代わりに、一緒にすることで、ちょっとした変更を加えたときに、別の場所にあるドキュメントを編集することを忘れずに済むようにしてるんだと思う。個人的にはまだ試してないけど、ちょっと気になる。" userName="roblh" createdAt="2025/04/22 22:44:28" color="#38d3d3">}}




{{<matomeQuote body="今はPendulumとは逆の方向に行ってて、分離はもう流行ってなくて、全部1箇所にまとめるのがトレンドって感じだよね。ターミナルがあんまり好きじゃないから、もっと見た目が良くて、履歴とかコメントが充実してるのは嬉しい。Atuinがそれを実現する最良の方法かどうかは分からんけど。" userName="npodbielski" createdAt="2025/04/23 09:18:30" color="">}}




{{<matomeQuote body="なるほどねー､言いたいことは分かった｡技術者じゃなくても､何が起きてるか分からなくても､指示通りにコード実行できるのはマジで良いかも｡全部一緒にあるし｡でも､ドキュメントが古くなったり間違ったりする問題は解決しないよね｡結局runbookが正しいか確認する必要があるし｡スクリプトを一箇所にまとめるのは良いけど､これローカルのデスクトップ版だし…" userName="account-5" createdAt="2025/04/23 06:25:21" color="">}}




{{<matomeQuote body="これってshell scriptのためのリテラシープログラミングって感じ？まさに“Runbooks That Run”じゃん｡" userName="jimbokun" createdAt="2025/04/23 00:40:04" color="">}}




{{<matomeQuote body="Rustで書かれてるからHacker Newsで話題になるんだよ｡" userName="rc00" createdAt="2025/04/22 21:56:43" color="">}}




{{<matomeQuote body="PowerShell使おうと思ってたけど､RustってことでNushellも良いな｡個人的にはこっちの方が好きかも…" userName="account-5" createdAt="2025/04/22 21:58:54" color="">}}




{{<matomeQuote body="そもそもデプロイをAnsibleとかDeployerで作る目的って何？よくあるタスクのためにPythonスクリプトをgit repoに突っ込むのもそうだけど｡\n人それぞれ好きなやり方があるってことだよね｡それで上手くいくなら市場があるかも｡俺は個人的なプロジェクトでPHPのデプロイプロセス使ってて､60%は自動化できてる｡runbookはツールに組み込まれてて､git repoにある｡別の場所に置いたり､コマンドを覚えたりする必要ない｡コードはシンプルで関数型なら､コメントなくても自己文書化されるべき｡" userName="johnQdeveloper" createdAt="2025/04/23 02:22:25" color="">}}




{{<matomeQuote body="俺の夢は､全てのツールにターミナルインターフェースがあって､頭の中にあるコンテキストを全部まとめてメガブックを作れるようにすること｡例えばJira､Datadog､Githubとか全部一つの画面で見れるように｡" userName="pm90" createdAt="2025/04/22 23:15:57" color="#ff5c5c">}}




{{<matomeQuote body="それ良いね｡個人的にはTUIも好き｡もっとユーザーフレンドリーになるし｡内部サービスごとにコンポーネントがあるTUIフレームワークを組み合わせて､自分だけのTUIダッシュボードを作れたら最高じゃん｡サイドプロジェクトで作りたいかも｡大変だけど面白そう｡" userName="rochak" createdAt="2025/04/23 07:30:47" color="#ff5733">}}




{{<matomeQuote body="それな｡TerraformがIaCの共通言語になったみたいに､TUIでも同じことが起きて欲しい｡ベンダーが独自のCLIを作るんじゃなくて､共通のTUIフレームワークのプラグインを作ってくれれば良いのに｡" userName="pm90" createdAt="2025/04/23 13:45:05" color="#785bff">}}




{{<matomeQuote body="APIがあれば十分だと思う｡ツールはAPIの上に作れば良いし｡理想は全てのサービス､ツール､アプリがAPIを持ってること｡例えば冷蔵庫が開けっ放しだったら(APIポーリングかAPI webhook)､Roombaに閉めてもらう(RoombaのAPIを使って)｡APIの世界最高｡" userName="npodbielski" createdAt="2025/04/23 09:34:25" color="">}}




{{<matomeQuote body="どういう意味？GithubとDatadogは公式のCLIツールあるじゃん｡" userName="turtlebits" createdAt="2025/04/23 01:39:13" color="">}}




{{<matomeQuote body="Jiraにも公式CLIがあるよ。それ以外にも非公式なものがたくさんあるみたい。" userName="trenchgun" createdAt="2025/04/23 05:28:53" color="">}}




{{<matomeQuote body="wtfutilみたいなものかな？（開発は1年止まってるけど、コンセプトは近いかも）" userName="tecleandor" createdAt="2025/04/23 02:35:06" color="">}}




{{<matomeQuote body="＞MCPを気に入るかもって、GPが求めてるものと全然違うじゃん。<br>＞全てのツールにターミナルインターフェースがあって、頭の中にあるコンテキストを全部まとめられるメガブックを作りたいんだよね。例えば、Jira、Datadog、GitHubとかを一つの画面に。<br>要するに、Jira/Datadog/GitHubとかをCLIにプラグインできるようにして、標準のbashコマンドやパイプを自由に使えるようにしたいんだ。（Yahoo Pipesみたいな感じで）<br>MCPはLLMがユーザーのリクエストを分析して、MCPサーバーで実行するクエリを作ることに特化してる。求めてるものは、LLM中心じゃないんだよね。" userName="x-complexity" createdAt="2025/04/23 00:49:54" color="">}}




{{<matomeQuote body="そんなに遠くないと思うよ。確かにMCPはLLMとの連携を前提に設計されてるけど、汎用的なAPIとしても使えるんだ。だから、計算処理をパッケージ化して、MCP、REST、JSON-RPC over WSからアクセスできるようにしたんだ。<br>ロジックを一度作れば、クライアントがどんな方法で使っても、標準化された方法でアクセスできる。CLIでjqとかにパイプして分析したりもしてるよ。" userName="omneity" createdAt="2025/04/23 02:00:13" color="#785bff">}}




{{<matomeQuote body="いいね！どんな技術スタックを使ってるの？オープンソースになる予定はある？" userName="nu11ptr" createdAt="2025/04/22 21:40:13" color="">}}




{{<matomeQuote body="ありがとう！クライアントはTauri(https://v2.tauri.app/)、サーバーはElixir + Phoenix（Rustler経由でRustも少し）を使ってるよ。<br>Tauriのおかげで、既存のRustコードを再利用できて、必要なシステム処理も簡単にできるし、軽くて速いものが作れるんだ。Elixirも最高で、リアルタイム同期のバックエンドを簡単に作れる。<br>今はまだ開発初期段階だからオープンソースじゃないけど、デスクトップアプリは後で公開する予定だよ。" userName="ellieh" createdAt="2025/04/22 21:45:56" color="#ff5c5c">}}




{{<matomeQuote body="Phoenix LiveBookみたいなものとの連携予定はある？" userName="paradox460" createdAt="2025/04/22 23:31:44" color="">}}




{{<matomeQuote body="＞デスクトップアプリは後で公開する予定ってことは、Functional Software Licenseみたいなのもあり得るね。" userName="benatkin" createdAt="2025/04/22 22:53:18" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
