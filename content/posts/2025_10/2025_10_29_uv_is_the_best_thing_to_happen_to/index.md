+++
date = '2025-10-29T00:00:00'
months = '2025/10'
draft = false
title = 'Pythonエコシステムに激震 uvは10年で最高の出来事か？'
tags = ["Python", "uv", "パッケージ管理", "Rust", "開発効率化"]
featureimage = 'thumbnails/light-orange4.jpg'
+++

> Pythonエコシステムに激震 uvは10年で最高の出来事か？

引用元：[https://news.ycombinator.com/item?id=45751400](https://news.ycombinator.com/item?id=45751400)




{{<matomeQuote body="uvを使うまでRustに興味なかったけど、使い始めたら性能重視のコード開発をRustに切り替えたんだ（Pythonとの連携でね）。こういう改善ってマジでQoL上がるわ。condaは完全に消えてほしい。MLクラスターで何ギガもあるcondaディレクトリがあるせいで、ちょっと環境に触るだけで全部壊れて再現性ゼロなんだよ。" userName="dekhn" createdAt="2025/10/29 19:35:15" color="#38d3d3">}}




{{<matomeQuote body="pixiってのが面白いかもね。uvとpipの関係みたいに、pixiはcondaにとってのuvって感じなんだ。これもRust製で、PyPIパッケージにはuvのソルバーを再利用してるらしいよ。" userName="embe42" createdAt="2025/10/29 19:42:17" color="#ff33a1">}}




{{<matomeQuote body="Pythonのエコシステム全体がRustに移行してくれればいいのに。Rustは最高だよ…みんな自分のパッケージをcratesに移植してよ。" userName="adastra22" createdAt="2025/10/29 22:26:55" color="">}}




{{<matomeQuote body="Rustほど扱いにくい言語は使ったことないぜ。Pythonを嫌いな人がいるのは理解できないけど、人それぞれだよな。" userName="t43562" createdAt="2025/10/30 07:30:00" color="">}}




{{<matomeQuote body="俺が思うに、condaがまだあるのは、uvがPythonに特化してるのに対して、condaは他の言語で書かれたものも扱えるからだよな。uvが予想以上に汎用的にならない限り、condaはなくならないだろうな。" userName="gostsamo" createdAt="2025/10/29 19:38:55" color="#ff33a1">}}




{{<matomeQuote body="uvでCUDAの依存関係をうまく管理する方法、何か見つけた？" userName="warbaker" createdAt="2025/10/29 22:33:40" color="">}}




{{<matomeQuote body="conda（やその派生も）やconda-forgeは、OS、アーキテクチャ、言語をまたいで動くものを、全部コンパイルする手間なくインストールするのに最高の手段だよ。MPI+CUDA+MKLのCray、macOS、ARM LinuxでC++とPythonライブラリを含むソフトウェアスタックをちゃんと動かしたい？conda-forgeならそれができるぜ。" userName="prpl" createdAt="2025/10/30 00:06:24" color="#ff5733">}}




{{<matomeQuote body="https://docs.astral.sh/uv/guides/integration/pytorch/#using-... これで（前のコメントの質問に）合うかな？" userName="persedes" createdAt="2025/10/29 23:23:35" color="#ff33a1">}}




{{<matomeQuote body="uvはPythonの最悪な不満点を解決してくれて最高だぜ。Pythonが「真面目じゃない」と感じる理由はいくつかあるんだ。インストールと依存関係が複雑すぎたり、エラーメッセージが役に立たなかったり、ライブラリのI/Oが無規律だったり、C言語連携で型変換が問題になったりね。Pythonはスクリプト言語やCへの薄い抽象化レイヤーとして使うのが一番光るんだよ。" userName="arw0n" createdAt="2025/10/30 14:13:32" color="#785bff">}}




{{<matomeQuote body="RustはPythonより速いし、Cargoで開発が楽だぜ。uvみたいなパフォーマンスはGoやC、C++でも出せるはずだ。昔から高速で軽いソフトは作れたけど、パッケージマネージャーのおかげで今はもっと簡単になったってことさ。" userName="jvanderbot" createdAt="2025/10/29 20:13:53" color="#ff5c5c">}}




{{<matomeQuote body="uvってCUDAとか全部パッケージするの？PyTorch以外でもいける？CondaはABIとかバイナリ互換性もバッチリで、Python以外も対応できるスグレモノ。俺はRustプログラムでPixiを使ってOS非依存のlibprotobufを配ってるぜ。PyPIとかPythonのツールはバイナリの複雑さに弱いから、Condaの代わりにはなれないと思う。複雑な依存関係で困る時、Condaはマジで救世主だぜ。" userName="okanat" createdAt="2025/10/29 23:48:54" color="#ff5c5c">}}




{{<matomeQuote body="1. Pythonのインストール問題はそうだけど、残りはぜーんぶサードパーティライブラリのせいだろ。Windowsが悪いアプリのせいじゃないのと同じ。2. Pythonのトレースバックは最高だよ、比較にならないね。ライブラリが変なエラー出すのはPythonのせいじゃない。3. I/Oでライブラリがやらかすのは、言語設計のせいって言うのか？4. FFIは難しいけど、これはドキュメントを読めばわかること。Pythonは”Cの薄い抽象化レイヤー”ってことさ。" userName="kortex" createdAt="2025/10/30 14:56:04" color="#45d325">}}




{{<matomeQuote body="言語、ツール、ライブラリ、コミュニティは全部繋がってるんだよ。2. Pythonでやたらスタックトレースを見るのはエラーが深く伝播しすぎだから。Rustはエラー処理を強制するから堅牢だけど、Pythonはプロトタイピング向きでプロダクションには厳しい。3. 言語設計じゃないけど、Pythonで感じる痛みはRustやJavaにはない。動的型付けのせいでライブラリの副作用が分かりにくいんだ。根本はスキル不足。4. Pythonの整数処理は”うまくいく”と思わせるけど、FFIでその期待が裏切られる。型追跡の認知負荷が嫌だね。俺のスキル不足ってのは認めるけど、型付けされた言語ならこんな問題はなかったはずだ。" userName="arw0n" createdAt="2025/10/30 18:54:22" color="#ff5c5c">}}




{{<matomeQuote body="俺、MLのプロだけど7年間Conda触ってないぜ。MLクラスタではコンテナ化されてるから、Condaなんていらないんじゃないか？" userName="whimsicalism" createdAt="2025/10/29 19:44:28" color="">}}




{{<matomeQuote body="CとかC++、Go、Rust、全部使ったことあるぜ。Cは大好きだけど、C++は今や大嫌いだね。Goもピンとこなかった。RustはCを良くしようとして、C++みたいな変な方向に行かずに、標準ライブラリを増やした感じがするよ。" userName="dekhn" createdAt="2025/10/29 21:40:20" color="">}}




{{<matomeQuote body="RustモジュールをPythonインターフェースで書くのって簡単だった？おすすめのツールとかある？" userName="oofbey" createdAt="2025/10/29 22:17:11" color="">}}




{{<matomeQuote body="動的機能に興奮しすぎなモジュール開発者もいるけど、動的言語ってメタクラスやモンキーパッチで結構なんとかできるんだぜ。CやC++で変なライブラリがあったら再ビルドしかないけど、Pythonならモンキーパッチで乗り切れることもある。ソースコードがないとか、パッチが通らないサードパーティの時にマジで助かるよ。" userName="t43562" createdAt="2025/10/30 20:59:01" color="">}}




{{<matomeQuote body="Condaの数ギガにもなるディレクトリ、どうにかしてほしいよね。でも、CondaはYAMLで依存関係を固定すれば再現性はあったぜ。ビルドは遅いけど、そこは信頼できる。" userName="kardos" createdAt="2025/10/29 19:42:33" color="">}}




{{<matomeQuote body="俺、MLでuvをうまく使ってるんだけどさ、なんでまだConda使ってんのか知りてーな。" userName="miki123211" createdAt="2025/10/30 06:15:00" color="">}}




{{<matomeQuote body="ABIやバイナリ互換性を扱う必要が出てきたら、そこで立ち止まって考えるんだ。「俺のワークロードって、世界半分を再コンパイルするほど大事なの？」ってね。で、俺の答えはいつも「ノー」だよ。" userName="dekhn" createdAt="2025/10/29 23:55:57" color="">}}




{{<matomeQuote body="Pythonは嫌いじゃないけど、大規模コードベースのメイン言語には絶対使わないな。みんなが嫌うのは、大規模なチームとコードベースでPythonみたいなスクリプト言語を使おうとする人たちだよ。スクリプト言語はコンパイル時の保証がほぼないから、そういう用途には最悪。でも、プログラミングが本業じゃない人や数千行程度のスクリプトならPythonは良い選択だと思う。Lispが歴史的にPython並みの支持とエコシステムを得てたら、もっと良かったかもね。" userName="brabel" createdAt="2025/10/30 12:54:10" color="#785bff">}}




{{<matomeQuote body="Condaは複数OSのプロジェクトには地獄だよ。ロックファイルがOS依存だから、コミットしてもどこでも動くなんて期待できない。バイナリ依存をたくさんインストールするには一番簡単かもしれないけど、ソフトウェア開発の経験がなくて再現性を気にしない人には良いのかもね。" userName="neves" createdAt="2025/10/30 18:27:17" color="#ff33a1">}}




{{<matomeQuote body="静的型付けじゃないし、めちゃくちゃ遅いし、ひどい本番環境だし、変な癖がいっぱいあるから？「ソフトは書きたいけど、設計原則とかめんどくせー」って言う人以外、なんでPythonで開発するのか理解できないな。その結果起きる混乱も全部込みでさ。" userName="moi2388" createdAt="2025/10/30 15:54:52" color="">}}




{{<matomeQuote body="Pythonがスクリプト言語って見なされてきたのは、Perlの代わりとして捉えられてたからだよ。Perlは「ごちゃごちゃハック」の言語で、抽象化やOOがほとんどなかった。だから、きちんとしたコードを書く必要がないって許されてたし、みんなPerlでひどくてテストできないコードをたくさん書いて、それをPythonでも続けてたんだ。Pythonで良いコードを書くには、単体テストと結合テストが絶対に必要。俺は5万行くらいのPythonプログラムを開発したことあるけど、型ヒントがなかった当時でも悪くなかった。たまに静的型付け言語なら許されなかっただろう恥ずかしいバグは見つかったけど、テストを書いてその扉は閉じたよ。" userName="t43562" createdAt="2025/10/30 18:26:49" color="#ff5c5c">}}




{{<matomeQuote body="Condaにとってbzip圧縮は間違いだったと思うよ。CUDAライブラリ用にCondaパッケージを作って、プロジェクトごとに適切なCUDAバージョンをローカルにインストールできるようにしてた時期があったんだけど、100MB超のパッケージの展開にCondaがめちゃくちゃ時間かかってたんだよね。" userName="PaulHoule" createdAt="2025/10/29 19:55:47" color="#ff33a1">}}




{{<matomeQuote body="あと、pixiっていうのもあるよ（Pythonの側面でuvを使ってる）。Condaにとってのuvみたいな感じだね。" userName="tempay" createdAt="2025/10/29 19:40:38" color="">}}




{{<matomeQuote body="理由を見つけたんだね、おめでとう！Pythonの方が簡単だからだよ。" userName="daedrdev" createdAt="2025/10/30 16:56:02" color="">}}




{{<matomeQuote body="“Pythonで本番環境で絶対やっちゃいけない恐ろしいことまでできる”って自慢してるけど、それって全然イケてるわけじゃないからな。" userName="adastra22" createdAt="2025/10/31 01:43:01" color="">}}




{{<matomeQuote body="CUDAはクラスターのインストールスクリプトの一部で、uvやCondaでは管理してないんだ。個人的には、あれは一度だけインストールされるべきシステムソフトウェアだと思う。" userName="dekhn" createdAt="2025/10/29 23:54:02" color="">}}




{{<matomeQuote body="環境をアクティベートする代わりに、コマンドの頭に”uv”って付ける方がずっと良いね。Pythonのバージョン管理もすごく簡単だし。全部が”batteries-included”なのに、ちゃんとプロジェクトに閉じてる感じがするよ。二年ごとの”Python環境デバッグの日”が避けられるかはまだわからないけど、新しいプロジェクトでは標準として採用するくらい期待してる。" userName="aerhardt" createdAt="2025/10/29 19:25:01" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これはPythonだけの話じゃないけど、普通に動くべきだよな。環境を動かすために、いつも決まった面倒な手順を踏む必要なんてないはずだ。" userName="j45" createdAt="2025/10/29 19:49:40" color="">}}




{{<matomeQuote body="Python以外で”ディレクトリ/シェル統合アクティベート型仮想環境”を使ってるプログラミング言語はほぼゼロだぞ。他の世界がvenvなしでどうやって生きてるかって？ ディレクトリ内の設定ファイルだよ。マジで衝撃だろ:-)))" userName="oblio" createdAt="2025/10/29 20:11:38" color="#ff5733">}}




{{<matomeQuote body="`source .venv/bin/activate`コマンドの中の”bin”以外、全部がレッドフラグだ。なぜOSレベルのコマンドを使ってプログラミング言語の環境をアクティベートするんだ？ なぜ”.venv”は隠されてるんだ？ なぜ”activate”なんて一番一般的な名前なんだ？ 毎回打つたびに嫌な気分になるし、Pythonが良い入門言語だって推されてるのに、シニアレベルのプログラマーですらこのコマンドを理解してないのを見るとマジでイライラする。" userName="whywhywhywhy" createdAt="2025/10/29 20:47:40" color="#ff33a1">}}




{{<matomeQuote body="＞ ディレクトリ内の設定ファイルって言うけど、それにはPythonランタイム自体のサポートが必要だし、`sys.path`が起動時にちゃんと設定されるようにしなきゃいけないんだ。しかも、”プロジェクト”設定を使ってない人たちの体験を悪くしないようにね。Pythonの大きな魅力は、どこにでも`.py`ファイルを作って、BashスクリプトみたいにPythonインタープリタで実行できることなんだよ。そこからプログラミングを学び始めて、ファイルをインポートしたり、意味のある”プロジェクト”を作ったり、パッケージングや配布を考えたりと、徐々にステップアップできるのが良いんだ。" userName="zahlman" createdAt="2025/10/29 20:51:57" color="#38d3d3">}}




{{<matomeQuote body="＞ コマンドの頭に”uv”を付けるのが好きって言うけど、それって結局、仮想環境の`bin/`（Windowsなら`Scripts/`）へのパスを前置するのと一緒のことだよ。環境を”アクティベート”するってのは、いくつかの環境変数を操作してるだけだからな。個人的にはvenvの自動検出とか、プロジェクトルートに対して特定の場所に置くってプレッシャーは好きじゃないな。＞ Pythonバージョン管理がすごく簡単にできるって言うけど、なんでみんなそんなにこれを高く評価するのかまだ理解できないな。＞ 二年ごとの”Python環境デバッグの日”って言うけど、もしシステムPythonをアップグレードしてvenvが壊れてるなら、uvでもそれは解決できない。venvは元々、場所を移動したり、その下のPythonを変更したりするようには設計されてないんだ。でも、uvがあれば環境の再作成はめちゃくちゃ速くなるだろうし、それが現実的な解決策になるだろうね。" userName="zahlman" createdAt="2025/10/29 19:43:37" color="">}}




{{<matomeQuote body="それって他のインタプリタ言語と何が違うんだ？ NodeやPHPはちゃんと動いてるし、相対ディレクトリやシステムのライブラリパスから依存関係を読み込むのに、あんなルーブ・ゴールドバーグ装置みたいな仕掛けは必要ないぞ。Python民がなんであんなに大騒ぎしてるのか、マジで理解できないね。" userName="9dev" createdAt="2025/10/29 22:18:26" color="#45d325">}}




{{<matomeQuote body="Pythonはただ普通のUnixプログラムみたいに動いてるだけだよ。スクリプト言語として作られたから、他のユーティリティと同じように扱えるのが好きな人もいるんだ。AI/ML/ASGIみたいな特定のアプリケーションで発生する問題は、それを扱うユーザーにとってはすごく重要に見えるだけなんだよ。" userName="t43562" createdAt="2025/10/30 07:58:02" color="">}}




{{<matomeQuote body="これってAIが作ったコメント？NodeとかPHPも普通のUnixプログラムみたいに動くじゃん…" userName="oblio" createdAt="2025/10/30 08:10:26" color="">}}




{{<matomeQuote body="俺だけかな、Pythonスクリプト動かすのにvenvとか色々管理しなきゃいけないのが嫌なんだよね。uvのおかげで、Pythonを本番環境で使う機会が増えたよ。大勢で管理しやすいし、初心者もすぐ使いこなせるようになるからさ。" userName="j45" createdAt="2025/10/29 21:39:00" color="#785bff">}}




{{<matomeQuote body="ねぇ、なんでみんなシェルとか環境設定のやり方とか、activateを実行するシェル関数とか、全部やってくれるMakefileの作り方とかを学ばないの？実際のコードを書く労力の方がはるかに大きいんだから、ツールを立ち上げるなんて些細な問題でしょ？" userName="t43562" createdAt="2025/10/30 07:48:56" color="">}}




{{<matomeQuote body="PHPやNodeは、コマンドラインで使う汎用スクリプト言語として開発されたわけじゃないし、特定の目的で使われることが多いから、Pythonみたいである必要はないんだ。それに、侮辱して何になるって言うんだ？例えば俺がお前の英語の使い方を侮辱したところで、それで俺の主張が良くなると思う？" userName="t43562" createdAt="2025/10/30 08:39:58" color="#ff33a1">}}




{{<matomeQuote body="Nodeとかで、2つのプロジェクトが違うバージョンを使ってたらどうなるの？それってすごく大変じゃない？最初から最高ってわけじゃないけど、そういうことってよくあるでしょ？" userName="roflyear" createdAt="2025/10/29 20:44:41" color="">}}




{{<matomeQuote body="俺の英語の使い方を侮辱してくれよ、それは学びになるし、他の読者にとってもそうかもね。<br>PHPやNodeがコマンドラインで使う汎用スクリプト言語じゃないって？Perl、Ruby、Luaとか他にもあるじゃん。ただ揚げ足取ってるだけだろ。俺が使ってきた中で、venvみたいなやり方してるのはPythonくらいだぞ。手動でのactivateが必要で、プロジェクトごとに依存関係がバラバラでポータブルじゃない。venvは”悪い設計のフラクタル”って言わせてもらうわ。" userName="oblio" createdAt="2025/10/30 09:20:52" color="#ff33a1">}}




{{<matomeQuote body="プログラミング言語の環境をactivateするのにOSレベルのコマンドを使う理由ね。それは親プロセスで環境変数を設定するってことで、Linuxではそれ以外不可能だからだよ (参考: https://stackoverflow.com/questions/6943208)。<br>なんで隠されてるかって？隠す必要はないんだ。好きな名前で好きな場所に置ける。多くの人がこの慣習を選んだのは、venvをそこに隠すのが好きだったから。uvはそういうvenvを特別扱いするんだ。<br>なんで’activate’なんて一般的な名前かって？環境をactivateする時、そのフォルダはPATHに入ってないからだよ。仮想環境のactivateが/usr/bin/activateとかを隠しちゃうなら、絶対パスでアクセスすればいいし、activateせずに`.venv/bin/python -m foo`みたいに直接実行もできる。<br>俺はいつもエイリアス使ってるし、`.venv`以外の`.local`フォルダに置いたりもするよ。<br>もし誰か採用する人を知ってたら教えてくれ。" userName="zahlman" createdAt="2025/10/29 21:04:34" color="#ff33a1">}}




{{<matomeQuote body="ま、納得できる返事だね。でも、根本言語の設計ミスをOSの一部だと仮定して、こんな変なハックの寄せ集めみたいになってるのが嫌なんだ。<br>Linuxで不可能って言うけど、NodeとかRustは全部できてるじゃん。<br>Pythonが’activate’とか’easy-install’とか、やたらと一般的な名前を使う歴史があるよね。こんなに具体的なものにそういう名前をつけるのが変だし、PythonがOSの深い部分にあるって考え方の表れだと思うんだ。もし10年前に`activate`コマンドにエイリアスを設定してたら、こんな風に感じなかったかもね。" userName="whywhywhywhy" createdAt="2025/10/29 23:09:25" color="#ff5c5c">}}




{{<matomeQuote body="俺の`/usr/bin`のプログラムは現在の環境設定を使うんだ。賢すぎるツールは挙動を推測しなきゃいけないから嫌い。<br>venvは複数プロジェクトで共有できるし、システムを壊さずにアカウント単位でも使える。自動activateのbash関数も簡単なのに、なんでこんなに議論になるんだ？<br>非ポータブル性なんて情けない議論だよ。全ディストロにポータブルにするなんて無理だし、そのためにコンテナがあるんだ。最新版が必要ならコンパイルも覚悟するべきだろ。" userName="t43562" createdAt="2025/10/30 12:40:51" color="#45d325">}}




{{<matomeQuote body="そうだよ、Pythonは何年も前から実質的にそれを解決してきたんだ。" userName="1718627440" createdAt="2025/10/29 22:00:29" color="">}}




{{<matomeQuote body="Node、Rustなんかは環境変数をどう管理してるんだろ？<br>bashで`export foo=bar && echo $foo`ってやっても`bar`って出るけど、そのシェルを閉じたら`echo $foo`は空っぽになっちゃうじゃん。<br>みんな、これをどうやって回避してるの？" userName="zahlman" createdAt="2025/10/30 00:18:16" color="">}}




{{<matomeQuote body="みんなはPATHとかPATHに相当するもので対処してるんだよ。<br>パッケージマネージャーを、必要なNodeやJavaのバージョンが他のどのバージョンよりも優先されるPATHで起動するとかね。<br>あるいはパッケージマネージャー自体が設定ファイルでそれを解決する方法があるか、pyenvみたいなパッケージマネージャー起動ツールを使うんだ。<br>Mavenだって21年前からあるツールだけど、実際は大した問題じゃない。数週間使えば慣れるし、あとはオートパイロットさ。<br>JavaのCLASSPATHとか、システムに単一の統合されたパッケージ依存リポジトリを持つっていう考え方を聞いたらびっくりするだろ？<br>node_modulesみたいなプロジェクトごとの依存リポジトリも、シンボリックリンクも、そのくだらないもの全部が不要になるんだよ。<br>CLASSPATHはJavaで1996年に導入されて、2004年にはJavaの依存関係管理で普及したんだ。" userName="oblio" createdAt="2025/10/29 21:19:21" color="#785bff">}}




{{<matomeQuote body="uvの重要な原則の一つは、仮想環境は使い捨てであるべきってことなんだ。<br>だから、uvにバグがない限り、デバッグ環境は不要なはずさ。<br>最悪の場合でも、`.venv`を削除して通常通り続ければいいだけだよ。" userName="globular-toast" createdAt="2025/10/29 20:41:11" color="#45d325">}}




{{<matomeQuote body="実際のコードをプログラミングする労力より、使い方が説明できないほど違うたくさんのツールをなんとか繋ぎ合わせる労力の方が大きいことが多いんだ。<br>KISS（Keep It Simple, Stupid）原則は常に重要で、UVはそれをすごくシンプルにしてくれる。<br>小さいことが必ずしもシンプルとは限らないからね。" userName="SAI_Peregrinus" createdAt="2025/10/30 13:47:08" color="#ff33a1">}}




{{<matomeQuote body="なんで`bin/`と`Scripts/`っていう名前を使い分けてるのか、その理由をめちゃくちゃ知りたいんだよね。スッキリしたいからさ。" userName="scotty79" createdAt="2025/10/29 23:20:23" color="">}}




{{<matomeQuote body="多分、MLの世界が特にプレッシャーのかかる状況にあるからだと思うよ。<br>なんでみんなシステムPythonを使わないのかって？<br>多分、古すぎたり新しすぎたりして、使わなきゃいけないライブラリと合わないからだろうね。<br>これは、今すごい変化が起きてて、全部が同期されてないってことを示唆してる。<br>それに、みんな互換性のない変更がしょっちゅうあるような、とんでもない数のモジュールを使ってて、その上、構築がすごく難しくてPython自身ではインストールできないような、いろんな種類のバイナリライブラリも必要なんだ。<br>Rustは、世界をRustだけでより完全に構築できるから、システムに何があるかなんてあまり心配しなくていいっていう利点がある。<br>uvがみんなの役に立ってるのは嬉しいね。" userName="t43562" createdAt="2025/10/30 18:47:18" color="#ff5733">}}




{{<matomeQuote body="まさか！そんなことないだろ。<br>そうでなきゃ、なんでこの議論に何百ものコメントがついてるんだ？<br>適当なPythonツールだと、俺は60%くらいの確率でしか動かなかったんだけど、uvはPythonエコシステムで初めて、その数字をほぼ100%にしてくれたツールだよ。<br>皮肉なことに、Pythonはエンドユーザーに信頼性の高い高速なツールを配布するのに向いてないから、Rustで書かれてるんだけどね。" userName="bschwindHN" createdAt="2025/10/30 02:38:43" color="#38d3d3">}}




{{<matomeQuote body="これはvenvの主要な原則であって、uvが何かを発明したわけじゃないよ。<br>単にそれらを一つにまとめて、パフォーマンスを向上させただけなんだ。" userName="nickelpro" createdAt="2025/10/30 16:06:36" color="">}}




{{<matomeQuote body="「ポータブル」ってのは、「仮想環境を同等のマシンにコピーしてデプロイできない」って意味だよ。<br>ドキュメントを見てみてくれ、ハードコードされた絶対パスとかのせいで推奨されてないんだからさ:-|<br>Pythonのvenvは、地球上で最もシンプルなデプロイ方法であるscpを文字通りぶっ壊したんだよ。<br>そう、Dockerみたいなもっと複雑な解決策はあるけど、これもまた忌まわしい代物だ（ソフトウェア自体がね）。<br>DockerはPythonのせいで（だけじゃないけど、大きな要因で）生まれたんだ。<br>もちろん、俺はvenvを使ってるよ。悪くはない。でも、あれは愚かな半抽象化なんだ。<br>https://xkcd.com/1987/" userName="oblio" createdAt="2025/10/30 13:22:55" color="#ff33a1">}}




{{<matomeQuote body="そうそう。俺はactivateなんて一度も使わないんだ。ドキュメントにはどこにでも載ってるけどさ。<br>自分の環境をいじるのはなんか嫌なんだよね。<br>`./venv/bin/python driver.py`って直接叩くだけだよ（スクリプトとしてインストールするなら`./venv/bin/driver`だけどね）。<br>これはすごくわかりやすいし、環境を汚さないし、必要なだけいくつでも仮想環境を独立して呼び出せるんだ。<br>`uv`も同じことを達成してくれるけど、これはまた別の依存関係をインストールする必要があるんだよね。<br>環境によっては、Pythonの組み込みツールだけで全部できる方が嬉しい場合もあるんだけどな。" userName="biimugan" createdAt="2025/10/29 20:29:59" color="#ff33a1">}}




{{<matomeQuote body="本来そうなるはずだったのに、みんなvenvをまるでペットみたいに大事にしたり、もっとひどい場合はグローバルenvを使っちゃったりしてるんだよね。" userName="globular-toast" createdAt="2025/10/30 16:46:17" color="">}}




{{<matomeQuote body="なんでみんなシステムPythonを使わないかって？安定版ディストロ（DebianとかUbuntu LTS）だとPythonが古すぎたり、使いたいライブラリの新機能に対応してなかったりするからだよ。システムがPythonに依存してるから、システムを壊さずに最新のライブラリを使うのは難しいんだ。Ubuntu 22.04 LTSでPython 3.10に縛られてると、新しいPython機能やライブラリはシステムパッケージマネージャー経由じゃ使えないんだよね。" userName="SAI_Peregrinus" createdAt="2025/10/31 00:35:58" color="#38d3d3">}}




{{<matomeQuote body="venvはシンボリックリンクで容量節約するけど、完全コピーも可能。`python -m venv --copies .myvenvdir`でね。`scp`で移すなら、移動先も同じPythonバージョンとモジュールが要るよ。DockerはC/C++ライブラリのバイナリ互換性問題も解決する。これはPythonだけでなく、C/C++界隈もlibffmpegなどで長年苦しんできた。ディストロ開発者が調整する一方、Python、特にML分野では深い依存関係に悩まされてる。全部がうまく動く新しいディストリビューションが必要だね。" userName="t43562" createdAt="2025/10/30 19:08:48" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="僕は、uvは最初は最高だけど、後で”最悪”になるんじゃないかと思ってる。彼らはきっと収益化に力を入れるだろうからね。この投稿を見てごらんよ、1839ポイントと1048コメントだって！こんなにPython開発者の心をつかんだんだから、彼らも自覚してるはず。プロジェクトが収益を上げるのは反対じゃないけど、Astralのエコシステムにもっと投資したら、後できっと代償を払うことになる。今は一時的に無料なだけだよ。" userName="hexbin010" createdAt="2025/10/30 12:18:24" color="#45d325">}}




{{<matomeQuote body="uvはオープンソースなんだから、もし収益化でひどいことになったら、フォークされるだけだよ。" userName="limagnolia" createdAt="2025/10/30 13:17:41" color="">}}




{{<matomeQuote body="ほとんどのフォークは結局は消えちゃうんだよね。" userName="pjmlp" createdAt="2025/10/30 14:27:26" color="">}}




{{<matomeQuote body="フォークに永遠の命を求めるのはどうかと思うな。だって、元のプロジェクトだって永遠に続くわけじゃないんだから。" userName="passivegains" createdAt="2025/10/30 15:18:00" color="">}}




{{<matomeQuote body="フォークより先に死んだプロジェクトなんて、まだ一つも存在しないんだよ。" userName="pjmlp" createdAt="2025/10/30 15:21:08" color="">}}




{{<matomeQuote body="彼らは収益化戦略についてすごく透明性があるし、それはuvのFOSSモデルには影響しないって言ってるよ。" userName="lijok" createdAt="2025/10/30 12:37:23" color="#ff33a1">}}




{{<matomeQuote body="LibreOfficeはOpenOfficeを追い抜いたし、BlinkはWebKitを追い抜いた。KHTMLもNetscapeももうないんだ。" userName="NewJazz" createdAt="2025/10/30 17:56:12" color="#ff5c5c">}}




{{<matomeQuote body="HudsonはJenkinsにフォークされるずっと前に消えたよ。" userName="Boxxed" createdAt="2025/10/30 15:31:40" color="">}}




{{<matomeQuote body="Python界隈では昔からそうだよ。名声と金を得るには新しいパッケージマネージャーかパッケージリポジトリ、あるいは両方を作るしかないんだ。Active State、Enthought、Anaconda、そして今度はAstralだろ。Pythonを使うSaaS企業は除くけどね。" userName="bgwalter" createdAt="2025/10/30 13:03:53" color="#ff5733">}}




{{<matomeQuote body="それは悪い例だね。そのフォークはHudsonの作者たちがOracleを辞めて作ったもので、作者に怒った人たちが作ったものじゃないからさ。" userName="pjmlp" createdAt="2025/10/30 16:14:45" color="">}}




{{<matomeQuote body="それはただのマーケティングだよ。結局は時間が教えてくれるさ。俺が間違ってたら嬉しいけどね。" userName="hexbin010" createdAt="2025/10/30 12:45:33" color="">}}




{{<matomeQuote body="FirefoxとNetscapeの件と似てる？" userName="jake_maxwell" createdAt="2025/10/30 17:43:34" color="">}}




{{<matomeQuote body="そうだね、でも残念ながらエコシステムがさらに細分化された後だけどさ。" userName="zo1" createdAt="2025/10/30 14:05:59" color="">}}




{{<matomeQuote body="その時が来たね。彼らは最初の有料プロダクトであるpyxのクローズドベータ版を公開しているよ。" userName="lijok" createdAt="2025/10/30 13:11:42" color="#38d3d3">}}




{{<matomeQuote body="ああ、そうだったね。もちろん、フォーク元のプロジェクトより長生きした「真の」フォークなんてないもんね、俺も馬鹿だったよ。" userName="Boxxed" createdAt="2025/10/30 16:28:15" color="">}}




{{<matomeQuote body="それって、pyx（あるいは彼らが出す他のもの）が会社を維持するのに十分だってことを前提にしてるんだよね。" userName="maleldil" createdAt="2025/10/30 14:55:15" color="">}}




{{<matomeQuote body="Python Software Foundationには優秀な貢献者がいるし、uvを採用したのはプラットフォームの乗っ取りを防ぐためっていうPythonコミュニティのエンジニアリング判断を信頼してるからだよ。PEP 751でロックファイルの標準化も進んでて、ツール固有のロックインが減るはず。uvはオープンソースだし、フォークもできるから必要なら他のツールへの変換もできるけど、ロックインのリスクには常に警戒しないとね。https://peps.python.org/pep-0751/" userName="neves" createdAt="2025/10/30 15:03:33" color="#785bff">}}




{{<matomeQuote body="彼らが考えを変えるまではね。もし本気なら、それはPyCQAの一部であるべきだろうな。" userName="motbus3" createdAt="2025/10/30 14:31:11" color="">}}




{{<matomeQuote body="SBCLはCMUCLよりもずっと人気だよ。EGCSのフォークがGCCを終わらせちゃったんだ。" userName="Boxxed" createdAt="2025/10/30 19:56:43" color="">}}




{{<matomeQuote body="その分断がどれくらい深い亀裂になるか、ってことだよね？例えばMacとWindowsはUbuntuとFedoraよりずっと離れてるけど、どちらもOSエコシステムの分断だよ。でも、Ubuntu/Fedora間のクロスプラットフォームはMac/Windows間よりずっと簡単なんだ。" userName="Qwertious" createdAt="2025/10/30 15:36:05" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
