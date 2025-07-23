+++
date = '2025-07-16T00:00:00'
months = '2025/07'
draft = false
title = 'Pythonに切り替えたら、予想以上に良かった！'
tags = ["Python", "プログラミング", "開発", "言語", "テック"]
featureimage = 'thumbnails/blue4.jpg'
+++

> Pythonに切り替えたら、予想以上に良かった！

引用元：[https://news.ycombinator.com/item?id=44579717](https://news.ycombinator.com/item?id=44579717)




{{<matomeQuote body="API_KEYとCHANNEL_IDのチェックについて。`if not API_KEY or not CHANNEL_ID:`だと「XかYがない」って出るから、ユーザーはイライラするよ。別々にチェックして「Xがない」「Yがない」って出す方が、ユーザー体験は圧倒的に良いし、開発時間は0.00001%遅くなるだけだよ。" userName="Mawr" createdAt="2025/07/16 10:37:52" color="#ff33a1">}}




{{<matomeQuote body="これは重箱の隅つつきだけど、`:=`演算子を使う良い例だね。`if not (API_KEY := os.getenv(”API_KEY”)):`って感じで使える。個人的なツールなら`os.environ[”API_KEY”]`でKeyErrorを発生させるだけで十分だと思うな。" userName="gvalkov" createdAt="2025/07/16 15:31:26" color="">}}




{{<matomeQuote body="俺は結構Python書くけど、walrus operatorは直感的じゃないと思うな。`if`ブロックの外でもAPI_KEYが使えるのがちょっと変だよね。多分、Go言語でwalrus operatorを見たことがあるからそう感じるのかも。Goだとスコープがブロック内に限定されてるんだ。" userName="tyrust" createdAt="2025/07/16 16:16:31" color="">}}




{{<matomeQuote body="これはwalrus operator特有ってわけじゃなくて、Pythonの一般的な癖だよ（すごくイライラするけどね）。`for i in range(5): ...`みたいなループの後だと、`i`はループ後も4に束縛されたまま残っちゃうんだ。" userName="bobbylarrybobby" createdAt="2025/07/16 16:28:20" color="">}}




{{<matomeQuote body="変わったことに、”except”の変数は束縛されたままにならないんだ！<br>`try:<br>    x = int(’cat’)<br>except Exception as e:<br>    pass<br>print(e)  # ＜- NameError: name ’e’ is not defined`<br>ってことは、Pythonにはグローバル、ローカル、そして例外ブロックの3つの変数スコープがあるってこと？" userName="nomel" createdAt="2025/07/16 18:36:27" color="#45d325">}}




{{<matomeQuote body="初心者は注目だね。こういう細部への注意が、本当に素晴らしいプログラマーとただの良いプログラマーを分けるんだよ。でもさ、他の人が再利用するスクリプトならコマンドライン引数を使うべきだよ。コマンドライン引数の代わりに環境変数を使うのは、コードの「匂い」がひどいね。" userName="bjourne" createdAt="2025/07/16 20:40:50" color="#785bff">}}




{{<matomeQuote body="＞Oddly enough<br>そんなに変じゃないよ。例外が起きるかどうかに応じて、変数が定義されるかどうかわからない（ハイゼンベルク変数？）って状況は、変数束縛できない唯一のケースだからね。`if`文と比べてみてよ。テストされる式の変数は必ず定義されてるでしょ。" userName="suspended_state" createdAt="2025/07/16 20:40:47" color="#45d325">}}




{{<matomeQuote body="APIキーが誰かのbashの履歴に誤って記録されちゃうのは、普通は避けたいよね。" userName="shakna" createdAt="2025/07/16 21:09:10" color="">}}




{{<matomeQuote body="攻撃者が ~/.bash_history は読めるのに、/usr/bin/env を実行できない、っていう脅威モデルって一体何？って疑問なんだけど。" userName="zahlman" createdAt="2025/07/17 00:47:35" color="#ff5733">}}




{{<matomeQuote body="この例だと、コマンドライン引数にAPIキーをそのまま使うのはやめよう。APIキーがコマンドラインで見えちゃうのはまずいよ。" userName="RadiozRadioz" createdAt="2025/07/16 21:12:21" color="#45d325">}}




{{<matomeQuote body="この構文があるって、いつも忘れちゃうんだよなー。これ、いつ導入されたの？" userName="arthurcolle" createdAt="2025/07/16 16:05:10" color="">}}




{{<matomeQuote body="じゃあ、そもそもAPIキーってどうやって設定するの？（笑）<br>その議論、全然意味が分からないんだけど。" userName="bjourne" createdAt="2025/07/16 21:56:46" color="">}}




{{<matomeQuote body="例外ブロックって別スコープを作らないんだよ。そうじゃなくて、try/except ブロックが終わったら、名前は明示的に（まあ暗黙的にだけど意図的にね）スコープから削除されるんだ。これ、参照サイクルができちゃってガベージコレクションを遅らせるのを防ぐためなんだって。<br>https://stackoverflow.com/questions/24271752<br>https://docs.python.org/3/reference/compound_stmts.html#exce..." userName="zahlman" createdAt="2025/07/17 00:43:19" color="#38d3d3">}}




{{<matomeQuote body="それか、os.environ.get で API_KEY と CHANNEL_ID を環境変数から取得して、無いなら assert でエラー出すとかね。" userName="stana" createdAt="2025/07/17 01:43:59" color="#38d3d3">}}




{{<matomeQuote body="JavaScript の「は？何これ」みたいな投稿を見ると、イライラするんだよね。型変換とか色々あるけど、JavaScript は低レベルでは理にかなってる。それに比べて Python は、アドホックな例外とルールが無限に積み重なってるみたいで、一見シンプルだけど、どこを見ても無限の深さの複雑さが見えてくるんだ。例えば dunder メソッドなんて、オブジェクトの実際の振る舞いを「同期的に見せる」ものでしかないとかね。" userName="afiori" createdAt="2025/07/17 09:28:06" color="#38d3d3">}}




{{<matomeQuote body="Typer には、環境変数名を提供するだけで引数やフラグの値を環境変数からオプションで受け取れる、っていう素晴らしい機能があるよ。<br>これ、特に秘密情報を扱う時にすごく良いんだ。まさに「両方の良いとこ取り」だね！<br>https://typer.tiangolo.com/tutorial/arguments/envvar/" userName="connorbrinton" createdAt="2025/07/17 13:00:16" color="#ff5c5c">}}




{{<matomeQuote body="それってすごく直感的で便利だと思うんだよな。内包表記だとそうならないのはイライラするけど、理由はわかる。<br>REPL や Jupyter でループ中に何か失敗しても、変数はもうアクセスできるし、ループの最後にデータ項目にもアクセスできる。ループを途中で抜け出すのも余計な代入がいらないし、正直、デメリットが全然見当たらないよ。" userName="dec0dedab0de" createdAt="2025/07/16 21:03:45" color="#ff33a1">}}




{{<matomeQuote body="for i in range(5): ... のループ後、iが4に束縛されたままになることについて。<br>この”機能”が俺のキャリアで最悪のセキュリティ問題を引き起こしたんだ。<br>Pythonは好きだけど、スコープの漏洩はひどいね。(他の言語でもあるのは知ってるけど、言い訳にはならないよ。)" userName="Alex3917" createdAt="2025/07/17 03:14:51" color="">}}




{{<matomeQuote body="あんたはこれ、名前エラーになるべきだって言ってるの？<br>if ＜true comparison here＞:<br>       x = 5<br>   print(x) # ＜- 名前エラーになるべき？" userName="nomel" createdAt="2025/07/17 04:56:16" color="">}}




{{<matomeQuote body="たぶん、.profileとか.envrcとか、そういうファイルで使うんだろうね。" userName="medstrom" createdAt="2025/07/16 22:32:28" color="">}}




{{<matomeQuote body="python -OでAssertionは無効になるから、たぶんこんな風には使わない方がいいよ。" userName="IshKebab" createdAt="2025/07/17 06:05:35" color="">}}




{{<matomeQuote body="タイプ変換や特異な挙動がたくさんあるって意見について、”ランダムなこと”があるせいで、山ほどルールを学ばないと何が起こるかほとんど分からないよね。(jsdate.wtfを見てみて)。NaNsの存在について単純に文句を言ってるわけじゃないよ。JavaScriptのWTFテストは組み込みの型コンストラクタにユーザーデータを渡すだけでできるけど、PythonのWTFはもっと高度な機能に頼ることが多いね。(例: https://discuss.python.org/t/quiz-how-well-do-you-know-pytho/)。<br>Pythonのスコープはシンプルで理にかなってるよ。慣れてないだけだね。JavaScriptとは違って、デフォルトでスコープを制限してるし。変数は参照セマンティクスを持つオブジェクトの名前で、値渡しされる。C#のclass型やJavaの非プリミティブと同じだ。ほとんどの場所でバインディングは遅延評価されるけど、関数のデフォルト引数は別だね。__add__について何が言いたいのか全く分からないよ。特に、メソッドを”検査”するのが何を意味するのか推測できないな。C APIを使う時とPythonコードを書く時では、もちろん挙動が違うよね。Pythonから直接見えないCデータ構造を扱ってるんだし。<br>Pythonレベルで作業する時、__add__／__iadd__／__radd__は定義されたプロトコルに従って加算を実装するんだ。”作成時”に何も起こるわけじゃない。メソッドは実行時に検索される属性だよ。加算の実装がオブジェクトに直接付加された__add__属性を見落とし、クラスを直接チェックするのは事実だね。でも、そんなことをする必要はないんだ。逆に、クラスの__add__属性を置き換えれば自動的に使われるし、クラス作成時に固定されるわけじゃないよ。match構文は、俺のお気に入りの言語設計ではないけどね。" userName="zahlman" createdAt="2025/07/19 03:23:54" color="#ff33a1">}}




{{<matomeQuote body="Python 2だと、リスト内包表記の変数が周囲のスコープに漏れてたんだ。Python 3で変更されたのは、既存の変数を上書きするのが驚きだったからだろうね。" userName="bobbylarrybobby" createdAt="2025/07/16 21:07:01" color="#45d325">}}




{{<matomeQuote body="まぁ、多少はそうなんだけど、これは何に束縛されるんだろう？<br>for i in range(0):<br>        pass" userName="NekkoDroid" createdAt="2025/07/16 20:46:15" color="">}}




{{<matomeQuote body="いや、それってアンチパターンでしょ。コマンドライン引数と環境変数のセキュリティは変わらないよ。シークレットはファイルに保存すべきで、環境変数に入れるな。`--secret-file`で別のファイルを指定すれば、簡単に変えられるし。`BLABLA_API_KEY`みたいな変数は、Herokuとかが昔やった悪習をみんな無批判に真似してるだけだよ。環境変数はマジで使い勝手も悪いから、疫病みたいに避けるべきだね。" userName="bjourne" createdAt="2025/07/17 17:19:18" color="#ff5c5c">}}




{{<matomeQuote body="スタックトレースなしで「エラーが発生しました」ってデバッグに永遠に苦しめばいいのにね。「x、y、またはz」がずっと見つからなければいいのに。" userName="wiseowise" createdAt="2025/07/16 13:45:38" color="">}}




{{<matomeQuote body="「プロジェクト構造を生成してくれるツールが欲しいけど、まだ見つからない」ってあったけど、Cookiecutterがいいよ。俺がよく使ってるテンプレートはこれらね：<br>python-lib: https://github.com/simonw/python-lib<br>click-app: https://github.com/simonw/click-app<br>datasette-plugin: https://github.com/simonw/datasette-plugin<br>llm-plugin: https://github.com/simonw/llm-plugin<br>`uvx cookiecutter gh:simonw/python-lib`みたいに実行できるよ。" userName="simonw" createdAt="2025/07/16 18:07:36" color="#ff5733">}}




{{<matomeQuote body="俺はRubyで`baker`（https://github.com/coezbek/baker）ってツールを使ってるよ。テンプレートリポジトリをコピーするんじゃなくて、実行すべき手順のリストを作るんだ。APIキー取得みたいな手動ステップもあれば、`uv init`みたいな自動ステップもある。Markdown構文、Rubyの文字列補間、Bashも使えるしね。YAMLベースの設定が嫌いすぎて作ったんだ。" userName="oezi" createdAt="2025/07/16 19:11:16" color="#ff5c5c">}}




{{<matomeQuote body="Copierが今一番イケてるらしいよ。<br>https://copier.readthedocs.io/en/stable/" userName="timkpaine" createdAt="2025/07/16 18:16:28" color="#38d3d3">}}




{{<matomeQuote body="俺はCookiecutterのラッパー`cookiebaker`（https://github.com/zahlman/cookiebaker）を作ったんだ。Git連携とか俺のワークフローに合わせたものさ。でも、Cookiecutter自体には美的な原則から言ってあんまり好きじゃないんだよね。シンプルなタスクなのに無駄に重い依存関係を選んでるし。PyYAMLはコンパイル済みのCが入ってるし、RichもPygmentsに依存してて重いし。それに、「統合クライアントで他人のテンプレートをダウンロードする」ってモデルもRequestsとかの依存関係が結構重いから好きじゃないな。" userName="zahlman" createdAt="2025/07/17 01:34:15" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺だけなのかな？新しいプロジェクトのセットアップって実は好きなんだよね。自動化なんてしたくないよ。" userName="mmcnl" createdAt="2025/07/16 20:20:27" color="">}}




{{<matomeQuote body="それは仕事によるよね…。エージェンシーやフリーランスで似たアプリをたくさん作るなら、すぐに設定できるのは重要だよ。OSSパッケージを多く作る場合も、ツールが同じでREADMEも統一されてると、スクリプトやツールで基本構造を作るのは便利。でも、何年も一つの大規模アプリやOSSパッケージだけに取り組むなら、個別にプロジェクトを設定するのが合理的だと思うよ。" userName="serial_dev" createdAt="2025/07/16 20:51:30" color="#45d325">}}




{{<matomeQuote body="なんで楽しいのか、理由を知りたいな。定型的なコードを書き直したり、あまりやらないプロセスで全部ちゃんとやるように気をつけたりするのは、俺にとってまさに「苦労」って感じなんだけど。" userName="bshacklett" createdAt="2025/07/19 12:40:32" color="">}}




{{<matomeQuote body="それでコードベースの基礎を理解できるようになるんだよ。" userName="mmcnl" createdAt="2025/07/20 09:05:43" color="">}}




{{<matomeQuote body="I looked at the click-app repo. If you were creating that today, would you switch from uv to pip?And to run cookiecutter do you still use pipx, or have you switched to `uv tool install`" userName="rahimnathwani" createdAt="2025/07/17 07:05:16" color="#ff5733">}}




{{<matomeQuote body="I’m getting close to switching to uv for my templates.I use ”uvx cookiecutter” myself three days." userName="simonw" createdAt="2025/07/17 10:33:12" color="">}}




{{<matomeQuote body="This type of thing seems ripe for building into agentic LLM dev workflows, doesn’t it?" userName="consumer451" createdAt="2025/07/16 20:37:02" color="#ff33a1">}}




{{<matomeQuote body="Hmm never heard of this. Thanks for the recommendation." userName="mrbonner" createdAt="2025/07/16 23:23:56" color="">}}




{{<matomeQuote body="Honestly, these days, just tell AI to generate one for you." userName="didip" createdAt="2025/07/16 21:31:26" color="">}}




{{<matomeQuote body="＞ Not only because the syntax is more human-friendly, but also because the Python interpreter is natively integrated in all Unix distrosThat’s kind of very optimistic evaluation - literally anything beyond ”import json” will likely lead you into the abyss of virtual envs. Running something created with say Python 3.13.x on Ubuntu 22.04 or even 24.04 (LTSs) / Rocky 9 and the whole can of worms opened.things like virtual envs + containers (docker like)/version managers become a must quickly." userName="CoolCold" createdAt="2025/07/16 09:35:45" color="#785bff">}}




{{<matomeQuote body="“import json” is the kind of thing which requires picking and installing libraries in batteries-not-included languages, and it’s just one of many modules which are in the standard library. That’s not a compelling basis for large projects but over the years I’ve shipped a ton of useful production code which never needed more than the stdlib and thus spent no time at all thinking about deployment or security patching.Also, it’s not the 2000s any more. Using venv to isolate application installs is not very hard anymore and there have been decent package managers for a long time." userName="acdha" createdAt="2025/07/16 10:25:25" color="#45d325">}}




{{<matomeQuote body="The official package manager is pip, it’s broken, and there has been a new ”permanent solution” replacement for it each year." userName="frollogaston" createdAt="2025/07/16 20:43:14" color="#45d325">}}




{{<matomeQuote body="I have a silly theory that I only half joke about that docker/containers wouldn’t’ve ever taken off as fast as it did if it didn’t solve the horrible python dependency hell so well. You know something is bad when fancy chrooting is the only ergonomic way of shipping something that works.My first taste of Python was as a sysadmin, back in 2012 or so, installing a service written in Python on a server. The dependency hell, the stupid venv commands, all this absolute pain just to get a goddamn webserver running, good lord. It turned me off of Python for over a decade. Almost any time I saw it I just turned and walked away, not interested, no thanks. The times I didn’t, I walked right back into that pile of bullshit and remembered why I normally avoided it. The way `brew` handles it on macOS is also immensely frustrating, breaking basic pip install commands, installing libraries as commands but in ways that make them not available to other python scripts, what a goddamn disaster.And no, I really have no clue what I’m talking about, because as someone starting out this has been so utterly stupid and bewildering that I just move on to more productive, pleasant work with a mental note of ”maybe when Python gets their shit together I’ll revisit it”.However, uv has, at least for my beginner and cynical eyes, swept away most of the bullshit for me. At least superficially, in the little toy projects I am starting to do in Python (precisely because its such a nicer experience), it sweeps away most of the horrid bullshit. `uv init`, `uv add`, `uv run`. And it just works*." userName="wpm" createdAt="2025/07/16 15:37:31" color="#45d325">}}




{{<matomeQuote body="“broken” is hyperbole. It works fine for millions of people every day. If you have some specific scenarios where you want it be better, it’s better to say those rather than just complain about an open source project." userName="acdha" createdAt="2025/07/16 20:51:53" color="#ff5c5c">}}




{{<matomeQuote body="多くの人がPythonをDockerに入れたり、そのまま使ったりしてるけど、Stack Overflowに質問が山ほどあるのが結果として出ちゃってるよ。" userName="frollogaston" createdAt="2025/07/16 20:54:07" color="">}}




{{<matomeQuote body="大間違いだよ。俺は20年近くPythonを書いてきたけど、virtualenvが必要になったのは2024年が初めてだ。それまではpipで好きなだけインストールして、バージョン衝突で困ったことなんて一度もなかったよ。<br>ジュニア開発者はvirtualenvを使うべきだと思い込まされてるけど、実際は必要ないのにね。とにかく、最近はみんなuvを使うべきだよ。" userName="BeetleB" createdAt="2025/07/16 21:37:01" color="#ff5c5c">}}




{{<matomeQuote body="virtualenvは常に使うべきだよ。たった1つのディレクトリだし、全然難しくない。pipだって、システム全体にパッケージをインストールしようとすると今は警告を出すもんね。" userName="turtlebits" createdAt="2025/07/16 16:12:09" color="">}}




{{<matomeQuote body="いやいや。どうやったらそんな“自ら難しくしてる”状態になるのか不思議だね。Ubuntuにない特定のPythonバージョンを使いたいなら、こうするんだ。<br>1. ビルド依存関係をインストール: https://devguide.python.org/getting-started/setup-building/#...<br>2. 好きなPythonソースをダウンロードしてtarで展開: https://www.python.org/downloads/source/<br>3. ./configure --enable-optimizations --with-lto を実行<br>4. make -s -j [コア数] を実行<br>5. sudo make altinstall<br>これでデフォルトのシステムPythonを上書きせずに、特定のバージョンがインストールされるよ。あとはbashでpipを python3.xx -m pip にエイリアスすれば、正しいのが実行される。ライブラリやpipでインストールした実行ファイルは、全部~/.localフォルダの特定のPythonバージョンの下に入るよ。<br>もしNodeとか他のツールも使うなら、asdfを使うのも手だよ。フォルダごとにバージョンを選べるからね。<br>virtualenvは本番コードで、特定のバージョンをテストして固定したい場合にだけ本当に役立つんだ。" userName="ActorNightly" createdAt="2025/07/16 18:27:10" color="#785bff">}}




{{<matomeQuote body="俺はpipの話をしてたんだよ、venvじゃない。venvも使わないけど、別に悪いアイデアだとは思わない。ただ面倒なだけ。Docker（笑）かuvを使わないと、やっぱり衝突しちゃうんだよね。" userName="frollogaston" createdAt="2025/07/16 23:14:55" color="">}}




{{<matomeQuote body="uvは、少なくとも僕の初心者で皮肉屋の目から見ても、ほとんどのくだらない問題を解決してくれたよ。uvはこれまでよりもずっと良いね。キャリアを通じてPythonにはチラッとしか触れてこなかった（condaとpipでの仕事はひどい経験だった）けど、uvはPythonが本当に21世紀のパッケージ管理に加わろうとしている感じがする。Rust製でCargoからインスピレーションを受けているっていうのがそれを物語ってるし、Cargo自体もRubyとBundlerからインスピレーションを受けてるんだよね。" userName="asa400" createdAt="2025/07/16 16:34:05" color="#ff5c5c">}}




{{<matomeQuote body="Poetryは長年まともだったよ。uvは新しいけど素晴らしいし、これからもそうあり続けるだろうね。" userName="underdeserver" createdAt="2025/07/16 21:26:06" color="">}}




{{<matomeQuote body="JSとかGolangとか他の言語だとこんなことないよね。package.jsonに全てのバージョンを書いて渡せば、npm installで常に依存関係がローカルに設定されるし、Node.jsのランタイム全体をコピーする必要もないんだ。" userName="frollogaston" createdAt="2025/07/16 20:43:34" color="">}}




{{<matomeQuote body="一番面白いのは、uvをmiseで使うとPythonのCLIプログラムを驚くほどエレガントにインストールできることだね。" userName="paradox460" createdAt="2025/07/16 17:47:05" color="">}}




{{<matomeQuote body="uvはPoetryよりはるかに速いよ、特に依存関係の解決はね。" userName="icedchai" createdAt="2025/07/16 22:01:31" color="">}}




{{<matomeQuote body="Node.jsのnode_modulesってvenvみたいなもんだろ。<br>記事で言ってるuv使うとnpm installがuv syncに、npm install fooがuv add fooみたいに、コマンドがほぼ同じなんだよ。<br>ローカルにNode.jsのコピーを保存しなくてもいいしな…Node開発者もnvmってbashで書かれたツール好きだし。" userName="deathanatos" createdAt="2025/07/16 20:53:49" color="#ff33a1">}}




{{<matomeQuote body="俺もPythonは絶対触らんね。だって大規模なPythonプログラムのデバッグで本当に痛い目見てるんだもん。<br>静的型付け言語なら1分で終わることが、dictの中身を理解するのに何時間もデータ追跡する羽目になったんだ。<br>簡潔で静的型付けで、早く書けて大規模コードベースでも保守できる代替言語があるのに、今Pythonで新しいプロジェクトを始める理由なんてないだろ。" userName="762236" createdAt="2025/07/16 21:42:19" color="">}}




{{<matomeQuote body="＞自分で難しくしてる<br>最初のリンクだけ見ても、venvよりずっと複雑に見えるんだけど。<br>俺はC++開発者だけどさ、経験が浅い人とか、Cツールチェーンに慣れてない人なんて、もっと大変だろうね。" userName="MintPaw" createdAt="2025/07/16 19:26:58" color="">}}




{{<matomeQuote body="違いはさ、それがデフォルトってこと。どこでもいつも同じように動くし、実際に依存関係も書き出してくれるんだ。<br>それに、venvみたいに手動で切り替えたり（変なbashrcのトリガー設定したり）する必要もないんだよ。" userName="frollogaston" createdAt="2025/07/16 20:56:31" color="#45d325">}}




{{<matomeQuote body="＞デフォルトである<br>これは本当だね。エコシステムは一朝一夕には変わらない。<br>uvはそこに向かってるって信じてるよ。<br>＞どこでも同じように動く<br>uvってどこでも同じように動くっけ？<br>＞実際に依存関係も書き出す<br>uv addもそうするよね？<br>＞手動で切り替える必要がない<br>uvでもそうする必要はないんじゃないの？" userName="deathanatos" createdAt="2025/07/16 21:06:16" color="#38d3d3">}}




{{<matomeQuote body="これはuvで解決済みだよ。" userName="nikisweeting" createdAt="2025/07/16 09:51:06" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="シャドーITだとさ、”インストール”が必要なものって、ベースシステムにあったりファイルとしてプロジェクトに追加できたりするのに比べて、すげー不便なんだよ。<br>だから、小さいPythonフロントエンドにはBottleを使うのが好きなんだよね。ファイルをダウンロードしてインポートするだけだから。<br>（これは昔のITでの個人的な経験からの不満なんだけどね。あー、でも一般的にvirtualenvが基準なのは分かってるよ）" userName="unethical_ban" createdAt="2025/07/16 17:55:39" color="">}}




{{<matomeQuote body="じゃあ、uvをデフォルトにしてくれると嬉しいんだけどな。<br>uvはいいけど、プロジェクトを別に作成しないといけないし、通常のPythonコマンドがuvで動かないんだ。<br>これらは全部、uvがデフォルトじゃないのが原因だよね。<br>でも、それだけじゃ古いプロジェクト全部が解決するわけじゃないけどさ。" userName="frollogaston" createdAt="2025/07/16 23:12:52" color="#ff33a1">}}




{{<matomeQuote body="uv試したいけどPoetryの依存解決時間はそんなに気にならないな。週1回2分待つくらいなら平気だよ。常に色々インストールする人には問題かもね。" userName="robertlagrant" createdAt="2025/07/17 08:43:23" color="">}}




{{<matomeQuote body="uvを使うってことは、virtual environmentを使ってるのと同じだよ。ただ、仕組みをちょっと学ぶ手間を省いてるだけさ。<br>参考になる記事もあるよ：https://chriswarrick.com/blog/2018/09/04/python-virtual-envi..." userName="zahlman" createdAt="2025/07/17 01:09:58" color="#38d3d3">}}




{{<matomeQuote body="virtual environmentはプロジェクトの依存関係を分離するのに役立つよ。インタープリター自体を分離するだけじゃないんだ。<br>（Windowsではシンボリックリンクだからインタープリターは隔離されないけど、依存関係はちゃんと隔離されるよ。）" userName="dragonwriter" createdAt="2025/07/16 18:48:18" color="#38d3d3">}}




{{<matomeQuote body="最初のリンクの`sudo apt install`コマンドって、virtual environmentより複雑じゃないかな？<br>見てよ、こんなに長いんだから：<br>sudo apt-get install build-essential gdb lcov pkg-config \<br>      libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev \<br>      libncurses5-dev libreadline6-dev libsqlite3-dev libssl-dev \<br>      lzma lzma-dev tk-dev uuid-dev zlib1g-dev libmpdec-dev libzstd-dev" userName="ActorNightly" createdAt="2025/07/16 21:29:47" color="">}}




{{<matomeQuote body="なんかPythonを嫌うコメント多いけど、Pipは別に問題ないと思うな。ここ5～10年ずっと使えてるし。" userName="bb88" createdAt="2025/07/17 02:47:36" color="">}}




{{<matomeQuote body="Pythonをexeファイルにコンパイルするのも、常に選択肢としてあるよね。" userName="ActorNightly" createdAt="2025/07/16 18:58:32" color="">}}




{{<matomeQuote body="俺だけかな、Pythonって冗長なのに物足りないって感じるの。簡単なことするにも500個も依存関係必要だったり、どうでもいいことでも何十行もコード書かされたりさ。余計なこと多すぎてもうPythonは書きたくないね。Perlの方がサッと終わらせられる。Pythonってプログラミングのためのプログラミングって感じだもん。" userName="0xbadcafebee" createdAt="2025/07/16 19:20:36" color="">}}




{{<matomeQuote body="依存関係ゼロのプロジェクトもいっぱいあるよ。Pythonの標準ライブラリだけでかなりできるし、単一ファイルならcurlして実行するだけでOK。<br>例えば、この金融トラッカープロジェクトは2000行くらいだけど、https://github.com/nickjj/plutus/blob/main/src/plutus<br>標準ライブラリを少し使ってるだけだよ。コードの25%はArgparseだけど、俺はコードの明確さのために行数が増えるのは好きだな。" userName="nickjj" createdAt="2025/07/16 20:11:30" color="#785bff">}}




{{<matomeQuote body="Argparseこそ、俺がPythonを嫌いな理由の一つだよ！属性とか機能とか、覚えられなくていつもマニュアル見たりググったりしてるし。<br>既存のArgparseコードも、どうしたいか分からなくなるんだ。できることは多いけど、使うのがマジで面倒だよ。<br>シンプルな`usage()`関数と`Getopt`を使う方がずっと簡単で、ドキュメント見なくても誰でも編集できるじゃん。" userName="0xbadcafebee" createdAt="2025/07/17 14:35:56" color="#45d325">}}




{{<matomeQuote body="引数って結構複雑になることもあるよね。<br>Argparseの良いところは、オプションや必須で相互排他グループを作れるヘルパー関数があることだよ。例えば、「--hello」か「--world」のどちらか片方だけ、って設定できるんだ。" userName="nickjj" createdAt="2025/07/17 17:32:38" color="#38d3d3">}}




{{<matomeQuote body="PerlよりPythonの方が、データ構造のネストが簡単で作業が早い。参照の複雑さもなくて、5年後も理解しやすいんだ。Pythonは地味だけど、Perlは賢すぎてもうね、脳が疲れちゃうよ。" userName="dndurbah" createdAt="2025/07/16 20:58:54" color="#ff5733">}}




{{<matomeQuote body="PerlからPythonに乗り換えたのは、データ構造の扱いが決め手だった。Pythonだと辞書やリストをネストしたものを関数に渡すのが、Sigilも参照デコレータもなしで一発でできたんだ。それ以来、Perlは新しいプロジェクトでは使ってないよ。もう戻りたくないね。" userName="kstrauser" createdAt="2025/07/17 00:36:22" color="#ff5c5c">}}




{{<matomeQuote body="意外と的確な意見だね。Perlが廃れた理由の一つは、Breaking Changesだけじゃなくて、これかもね。PowershellもBashも配列のネストで苦労するから、そういう部分も影響してるのかも。" userName="dapperdrake" createdAt="2025/07/17 03:58:35" color="#ff5c5c">}}




{{<matomeQuote body="Perlだってデータ構造をネストできるし、脳をひねる必要なんてないよ。Tupleもモジュールで追加できるし、複雑なデータ構造にオブジェクトをネストすることも可能だ。TMTOWTDI（これをやる方法はたくさんある）だけど、リンターやフォーマッターを使えばスタイルも強制できるんだぜ。" userName="0xbadcafebee" createdAt="2025/07/17 14:50:54" color="">}}




{{<matomeQuote body="Pythonで辞書が便利すぎるのは、みんな使いすぎちゃうっていう大きな欠点にもなるよね。俺はdataclassesやattrがあって本当に良かったと思ってるよ。じゃないと文字列キーのチェックが面倒でたまらないからさ。" userName="fireflash38" createdAt="2025/07/17 00:00:59" color="">}}




{{<matomeQuote body="個人的な経験だと、Pythonの主要なユースケースは依存関係が少ない傾向にあるよ。多くの些細なタスクは言語に組み込まれてるしね。Pythonが完璧とは言わないけど、その点ではよくできてる。PythonとPerlの比較は、最終的には自分が一番快適に感じるものを使うってことに尽きるんじゃないかな。人それぞれでいいんだよ。" userName="wslh" createdAt="2025/07/16 19:58:39" color="">}}




{{<matomeQuote body="PerlがPythonより早く使えて、もっと強力な例を共有してくれない？" userName="mystifyingpoi" createdAt="2025/07/16 19:56:23" color="">}}




{{<matomeQuote body="Bashの代替としてPerlを使うと便利だよ。どこにでも入ってるし、文字列処理は速くてRegexも簡単。短いスクリプトなら、Bashより安全でポータブル、摩擦が少ないから神だね。ただ、構造が必要なプロジェクトだとPerlは厳しいけどね。" userName="const_cast" createdAt="2025/07/17 00:53:12" color="#38d3d3">}}




{{<matomeQuote body="Perlだって構造化できるし、OOなんだよ。Pythonよりも構造化されてるくらいさ。（PyPIよりCPANの方が階層パッケージとして優れてるだろ？）意見を強制しないだけで、リンターやフォーマッターを使えばPythonのプログラマーがやってるみたいにできるんだぜ。" userName="0xbadcafebee" createdAt="2025/07/17 03:09:28" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
