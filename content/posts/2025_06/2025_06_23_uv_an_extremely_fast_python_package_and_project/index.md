+++
date = '2025-06-23T00:00:00'
months = '2025/06'
draft = false
title = 'Rust製の爆速Pythonパッケージ管理ツール uv'
tags = ["Python", "Rust", "パッケージ管理", "高速化", "開発ツール"]
featureimage = 'thumbnails/light_colour2.jpg'
+++

> Rust製の爆速Pythonパッケージ管理ツール uv

引用元：[https://news.ycombinator.com/item?id=44357411](https://news.ycombinator.com/item?id=44357411)




{{<matomeQuote body="以前はvenvとpipで十分って思ってたけど、共有サーバーでpipが遅いしキャッシュで容量食うしで困ってuvにしたら全部うまくいったんだ。<br>まだ使ってないなら、たった5分試してみて損はないよ。" userName="acheong08" createdAt="2025/06/23 18:56:33" color="#45d325">}}




{{<matomeQuote body="uvはmiseみたいなもっといろんな言語に対応してるツールと比べてどうなんだろう？<br>俺はmiseにASDFから乗り換えたんだけどさ。" userName="psychoslave" createdAt="2025/06/23 20:00:29" color="">}}




{{<matomeQuote body="req.txtなんてマジ最悪。<br>uvとかPoetry, PDMみたいな新しいツールを使ったら、もうpipとreq.txtには戻れないよ、マジでめちゃくちゃだから。<br>uvは超速くて最高だけど、まだちょっと荒削りなとこやバグもあるね。" userName="espdev" createdAt="2025/06/23 19:27:30" color="#ff5733">}}




{{<matomeQuote body="pipのキャッシュが容量食ってたって話だけど、uvはストレージの使い方うまい？<br>もしそうなら、具体的にどうやって？（共有したりとか？）" userName="yjftsjthsd-h" createdAt="2025/06/23 20:06:53" color="#ff33a1">}}




{{<matomeQuote body="俺たちはpyproject.tomlからreq.txtを作るのにuvを使ってるよ。<br>ロックされたバージョンを得るためにね。<br>Makefileでの例はこんな感じ。<br>＜code＞uv pip compile pyproject.toml -o requirements.txt＜/code＞<br>＜code＞uv pip compile --extra=dev pyproject.toml -o requirements.dev.txt＜/code＞" userName="kortex" createdAt="2025/06/23 20:47:07" color="#ff5733">}}




{{<matomeQuote body="2009年頃にpipとvenvを使ってたの覚えてるな。<br>5〜10年前に確認した時は、コミュニティではDocker使うのが主流って話だったけど、今はそうじゃないの？" userName="_vya7" createdAt="2025/06/23 20:51:35" color="">}}




{{<matomeQuote body="コメント5のreq.txtを作るのって何のため？<br>古いCI/CDパイプラインをサポートするためとか？<br>uv.lockでロックされたバージョンとか全部含まれてるんだから、それで十分じゃない？" userName="espdev" createdAt="2025/06/23 22:33:04" color="#ff5733">}}




{{<matomeQuote body="uvのマジで最高な機能は、これまでのvenvを使ったやり方とそのまま使えること。<br>ただ＜code＞uv venv＜/code＞って打てばいいんだぜ。" userName="tomjakubowski" createdAt="2025/06/23 21:21:56" color="#45d325">}}




{{<matomeQuote body="uvは大好きだけど、一つだけ注意点がある。<br>uvxだけは触るな。<br>あれで何時間も無駄にしたんだ。<br>なんであれがあるのかは分かるけど、組み込みのフットガン（危険な機能）だと思うよ。<br>uvxを避けていれば、問題なく使えるさ。" userName="oofbey" createdAt="2025/06/23 21:52:03" color="#38d3d3">}}




{{<matomeQuote body="残念だけど、uWSGIみたいにすごく大事なライブラリがuvと根本的に互換性がないんだ。<br>そのせいで、カスタムuWSGIを使ってる俺のアプリは全部ロールバックしなきゃいけなかったよ。" userName="level09" createdAt="2025/06/24 13:26:40" color="">}}




{{<matomeQuote body="俺がuvに乗り換えてないのはRuffでの経験があるからなんだよね。<br>Ruffは「Flake8、isort、Blackとドロップインパリティ」って言うけど、あれ全然本当じゃない。<br>少なくともisortに関しては、Ruffは自分たちがやりたいことだけ再実装して、もし機能とか設定が足りないなら、Ruffから昔のisortツールを呼び出せって言うんだよ。それ何の意味があるの？<br>Ruffはただ既存のいろんなツールを部分的に再実装して、新しいのをちょっと追加しただけじゃん。<br>だからRuffを使うと、結局使うツールの数はまた増えることになるし、Pylintがやってること全部はやってくれない。<br>uvへの移行については、Poetryより「速い」ってこと以外に、どんなメリットがあるのか良い話を聞かないんだよね。<br>今唯一知ってるユニークな点は、uvがPython自体をインストールできることで、Pyenvみたいなツールがいらなくなることくらいかな。<br>それは興味あるけど、「速い」だけじゃ十分な理由にならないんだよ。" userName="bmitc" createdAt="2025/06/23 22:52:40" color="">}}




{{<matomeQuote body="興味本位なんだけど、何が上手くいかなかったの？<br>俺はmiseの中で(そして外でも)Justをよく使ってるよ、ほとんど埋め込みシェルとかPythonスクリプトでね。<br>miseのタスクもちょっと使ったけど、俺にはそんなに便利さを感じなかったかな。<br>それともShebang付きのJustfileのこと？<br>どっちにしても、どんな問題に当たったか知りたいな（手伝えるかもだし）。" userName="pentaphobe" createdAt="2025/06/24 19:28:20" color="">}}




{{<matomeQuote body="uvは同じパッケージをハードリンクするから、仮想環境を追加しても容量がすごく少なくて済むんだよ。" userName="fsh" createdAt="2025/06/23 20:12:05" color="">}}




{{<matomeQuote body="pipもuvもパッケージは~/.cacheにキャッシュするんだけど、uvはそれを/tmpに変えたり、コピーじゃなくてシンボリックリンクにしたりできるんだ。" userName="acheong08" createdAt="2025/06/23 21:58:05" color="">}}




{{<matomeQuote body="ただし、マウントポイントを跨いじゃう場合は別だけどね、uvがちゃんと警告してくれるから大丈夫。" userName="snerbles" createdAt="2025/06/23 20:32:22" color="">}}




{{<matomeQuote body="俺は両方使ってるよ！<br>uvはmiseでグローバルに入れた。<br>それでuvのツールは“mise use -g pipx:foo”みたいに管理できるんだ。" userName="wrboyce" createdAt="2025/06/23 20:06:48" color="">}}




{{<matomeQuote body="パッケージ管理ツールの「これが正解」みたいなアドバイスって毎年変わるよね。<br>ちょっと前はvenvだったのに、pipenv、poetry、docker、そして今はuv。<br>これでエコシステムが落ち着いてくれるといいけど、どうなるかな。" userName="unclad5968" createdAt="2025/06/23 21:08:21" color="">}}




{{<matomeQuote body="俺にとって一番大きかったのはね、uvが説明するのがめちゃくちゃ簡単で、特にPythonを毎日書くわけじゃない人にとって、使うのが本当に楽ってこと。<br>pipとかだと、コンフィグファイルとvenvで、まず適切なvenvを用意するのに2ステップくらい覚えなきゃいけない — 作って、そこにインストールする — し、テスト実行とかスクリプト実行するたびに、変なShebang形式か、venvをactivateすることを覚えなきゃいけない。<br>エラーメッセージも全然助けにならないし。まぁ、あのセットアップは標準化されてないし公式にお墨付きがあるわけじゃないから仕方ないのかもだけど。<br>とにかく、「Import Errors」とvenvを脳内で繋げる作業を叩き込まないといけないんだよね。<br>できなくはないけど、慣れてない人にこれを教える時に、ツール全体がどれだけ…「ややこしい」って言葉が良いかな…かを思い知らされたよ。<br>それが今、チームメンバーは「uv run」、「uv add」、「uv sync」だけ覚えればいいんだ。<br>これで全体がすごく楽になったし、彼らにとっても全然抵抗がなくなったね。" userName="tetha" createdAt="2025/06/23 20:45:12" color="#ff33a1">}}




{{<matomeQuote body="uvはnpmとかああいう感じだと思っていいよ。<br>新しいPythonのpyproject.tomlはpackage.jsonに似てて、プロジェクトの説明とか依存関係を定義するんだ。<br>uvはこれを使うツールで、依存関係管理、ビルド、PyPi公開、テストとかのフック追加がすっごく簡単。<br>package.jsonとかなり似てるね。<br>仮想環境も自動で面倒見てくれるけど、自分でやってもOKだよ。" userName="varikin" createdAt="2025/06/24 01:45:45" color="#38d3d3">}}




{{<matomeQuote body="君はuvがどれだけ“速い”か、多分甘く見てるね。<br>マジで全然違うんだよ。<br>僕が切り替えた理由であり、今も言ってるのが、「uvは速すぎて、何かやってるか分からないくらい」って言葉。<br>最初に使った時、ちゃんと動いてるか確認したもん。<br>使わない理由（別のマネージャー不要とかpipで十分とか）も聞いたけど、正直あんまり納得できないかな。<br>でもpoetry使ってるなら、絶対乗り換えるべき！<br>uvは待ち時間がないpoetryだよ。<br>一番複雑なやつでも一日でいけるはず。<br>僕が時間かかったのはdockerをuv用に組み直したからだけど、それはdockerのせいであってuvのせいじゃないよ。" userName="projectdelphai" createdAt="2025/06/25 06:54:24" color="#38d3d3">}}




{{<matomeQuote body="あー、なるほどね、ありがとう！<br>もしかしたらもう直ってるかもだけど、<br>もっと色々移す前に、今すぐ試してぶっ壊してみるつもりだよ。" userName="pentaphobe" createdAt="2025/06/26 16:47:44" color="">}}




{{<matomeQuote body="ユーザーのホームのキャッシュフォルダに、インストールした全パッケージのグローバルキャッシュがあるんだ。" userName="kissgyorgy" createdAt="2025/06/23 21:03:57" color="">}}




{{<matomeQuote body="最近、実験的なリポジトリで似た話あったね。「ちょー簡単、$uv a b cだけ」ってやつ。<br>裏側は結構無駄があるっぽい？<br>でもね、標準のGNU-Debian-Ubuntu環境で問題なくスムーズに動いたんだ。" userName="mistrial9" createdAt="2025/06/23 22:23:40" color="">}}




{{<matomeQuote body="俺も自分で切り替えてみたんだ。<br>思ってたよりずっと簡単でスムーズだったね。" userName="PeterStuer" createdAt="2025/06/24 08:12:17" color="">}}




{{<matomeQuote body="俺は「別に試す必要ないな」ってコメントしに来たんだけど、<br>そのコメント読んで、今すぐ試してみようって気になったよ！" userName="ed_elliott_asc" createdAt="2025/06/23 20:57:22" color="">}}




{{<matomeQuote body="マジそれ！<br>最近miseで開発環境いくつか作ったんだけど、古いのはpoetryで新しいのはuvなんだ。<br>uvはマジでサクサク動くね。<br>夜と昼くらい違うよ！" userName="icedchai" createdAt="2025/06/23 22:50:43" color="#ff5733">}}




{{<matomeQuote body="Pip-toolsとrequirements.txtで乗り切ってきたけどさ、uv試したらマジでもう戻れないね！超速くて便利なんだわ。" userName="aequitas" createdAt="2025/06/23 19:48:13" color="#38d3d3">}}




{{<matomeQuote body="uv初めて使った時、あまりに速すぎて絶対なんか間違えたと思ったよ！pipとは全然違う速さだったね。" userName="polivier" createdAt="2025/06/23 18:17:27" color="#785bff">}}




{{<matomeQuote body="uvでも200msかかることあるし、エンター押してからプロンプト出るまで微妙に遅延感じるんだよね。Poetryならコーヒー淹れて待てば終わってるのに。" userName="tux3" createdAt="2025/06/23 19:14:55" color="#785bff">}}




{{<matomeQuote body="pipenvやPoetryが出てきた時も、きっと同じこと言われてたんだろうね。なんか面白いわ。" userName="Numerlor" createdAt="2025/06/23 20:09:25" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="前の会社でPoetryが依存関係の解決に何分もかかったことがあったよ。絶対壊れてると思ったけど、まぁ最後には終わったかな。" userName="icedchai" createdAt="2025/06/23 22:51:59" color="#45d325">}}




{{<matomeQuote body="Poetryが遅すぎて待ってられなくてさ、キャッシュとリスト全部消してパッケージ再インストールした方が早いと思ったことあるわ。uv試したら即乗り換えたね。" userName="projectdelphai" createdAt="2025/06/25 06:56:24" color="#ff5c5c">}}




{{<matomeQuote body="lol。うんうん、俺もやったやった。haha。前の会社はpoetry.lockの大量更新にめちゃ厳しかったから、あの時はできなかったけどね。" userName="icedchai" createdAt="2025/06/25 14:04:19" color="#ff33a1">}}




{{<matomeQuote body="俺も同じくlol！マジでスムーズすぎてPythonじゃないみたいだよ。" userName="baby" createdAt="2025/06/23 18:18:07" color="#ff5733">}}




{{<matomeQuote body="そりゃそうだ、Rust製だからね。😊" userName="johnfn" createdAt="2025/06/23 19:38:39" color="">}}




{{<matomeQuote body="俺もつい先週同じ経験したとこでさ、絶対おかしいだろって思ったよ。もう完全に乗り換え組だね。" userName="augustflanagan" createdAt="2025/06/23 18:37:11" color="#38d3d3">}}




{{<matomeQuote body="俺もそうだよ！<br>最初は疑ってたけど、使ってみたら手放せなくなったわ。<br>まじ爆速！" userName="nialse" createdAt="2025/06/23 18:28:04" color="">}}




{{<matomeQuote body="uvとruffは”車輪の再発明はするな”って意見への反例だね。<br>ただやるんじゃなくて、目的があれば桁違いに良いものを作れるんだ。" userName="theLiminator" createdAt="2025/06/23 17:43:25" color="#ff5c5c">}}




{{<matomeQuote body="Pythonのパッケージ管理の歴史を見ると、みんな今のやり方より良いものが作れるって思ってるのがよく分かるね。" userName="0cf8612b2e1e" createdAt="2025/06/23 18:09:01" color="">}}




{{<matomeQuote body="車輪を再発明したんじゃなくて、”ただ”木をもっと丈夫な素材に変えて、10倍速く回れるようにしたってことだね！" userName="eviks" createdAt="2025/06/23 17:58:07" color="#ff5733">}}




{{<matomeQuote body="正直、「車輪の再発明はするな」って言葉、全く意味分かんないんだよね。<br>いつまでも木製の円盤を車輪にしてるわけじゃないだろ？<br>もっと良い車輪はずっと発明してきたんだから、ソフトウェアでも同じことやろうぜ！" userName="mort96" createdAt="2025/06/23 18:27:58" color="#ff33a1">}}




{{<matomeQuote body="具体的に何が変わって速くなったのか気になるな。<br>PythonからRustに変えただけでネットワークやファイルI/Oは速くならないでしょ？<br>多分、良いアルゴリズムを選んだり、並列化したりしたおかげだと思うんだ。<br>PythonかRustかっていうよりね。（Pythonで並列化しにくくてRustで簡単なら話は別だけど）" userName="socalgal2" createdAt="2025/06/23 18:48:57" color="#ff33a1">}}




{{<matomeQuote body="uvは純粋にパフォーマンスを良くしただけなんだ。<br>Pythonの環境管理とかパッケージングの仕組み自体は何も変えてないよ。<br>改善はPythonビルドシステムエコシステム全体の頑張りと合意形成のおかげなんだ。" userName="nickelpro" createdAt="2025/06/23 19:16:24" color="#38d3d3">}}




{{<matomeQuote body="”桁違いに良い”って言葉について。<br>関係ないけど、”10倍”っていう短い言い方があるのに、なんでそのフレーズ使うんだろうね？不思議。" userName="jjtheblunt" createdAt="2025/06/23 18:25:36" color="">}}




{{<matomeQuote body="いや、実は違うんだ。<br>uvの主な違いの一つは、もうvenvのこと考えなくていいってことだよ。<br>最近のPyConで作者の一人が話してる動画がこれだよ:<br>https://www.youtube.com/watch?v=CV8KRvWKYDw<br>（他の場所で貼ったのとは別の動画ね）" userName="globular-toast" createdAt="2025/06/23 20:20:07" color="#45d325">}}




{{<matomeQuote body="XMLがあるのにJSONを発明した理由を聞かれた時、Douglas Crockfordは言ったんだ。<br>「車輪を再発明することの良い点は、丸いものが手に入ることだ」ってね。<br>https://scripting.wordpress.com/2006/12/20/scripting-news-fo..." userName="simonw" createdAt="2025/06/23 19:04:51" color="#785bff">}}




{{<matomeQuote body="uvってどうやって動くの？venvを作るんだよ。ここで言うのはPEP 405の概念で、Pythonの”venv”モジュールじゃないからね。" userName="nickelpro" createdAt="2025/06/23 21:10:54" color="">}}




{{<matomeQuote body="プログラムはいつも外部リソース待ちだからスクリプト言語の遅さは関係ないって言うけど、それウソだよ。計算が多い場合や、抽象化を重ねるとマジで遅くなる。プロファイルしたことないなら絶対やるべき！<br>あと、動的言語はマルチスレッドが苦手。コンパイル言語にすると100倍速くなることもザラにあるんだ。<br>動的言語がダメってわけじゃなくて、パフォーマンスの現実を知ってほしいんだよね。" userName="jerf" createdAt="2025/06/23 21:05:15" color="#785bff">}}




{{<matomeQuote body="実装の細かいことはどうでもいいんだよ。uvはPEP 405に従ってるかもだけど、そうじゃなくてもうまくいく。<br>大事なのは、他のPythonパッケージ管理ツールにあるような余計な面倒なことがないってこと。" userName="lmm" createdAt="2025/06/24 01:27:38" color="">}}




{{<matomeQuote body="uvがインタープリターの切り替えをすごく簡単にするところには同意しないな。3.11から3.12へ簡単に変えられるのはpybiの考え方だ。<br>他のツールでもできるけど、uvに組み込まれてると違う設定をブートストラップしやすいんだよね。" userName="0cf8612b2e1e" createdAt="2025/06/23 19:36:22" color="">}}




{{<matomeQuote body="uvがPEP 405に従ってるってのは超大事なんだよ。それがuvを単なる実装の一部にしてるんだ。<br>uvを他のツールと入れ替えても開発環境を変えなくていい。<br>これこそが標準の目的なんだから。" userName="nickelpro" createdAt="2025/06/24 02:34:51" color="#ff5c5c">}}




{{<matomeQuote body="＞ 動的スクリプト言語はマルチスレッドとか複数コア使うのが苦手...<br>この制限がない動的スクリプト言語ってどんなのがあるの？例を教えてほしいな。<br>私、その辺詳しくないんだよね。" userName="RhysU" createdAt="2025/06/23 22:08:34" color="">}}




{{<matomeQuote body="低レベル言語が速いのは分かるけど、パッケージマネージャーって計算そんなにしないんだよ。<br>主な仕事はダウンロード、解凍、ファイル書き込み。<br>依存関係の制約解消もボトルネックじゃない。<br>JavaScriptなら1000件並列ダウンロードとか超簡単だよ。解凍や書き込みも並列でいけるはず（Pythonは知らないけど）。" userName="socalgal2" createdAt="2025/06/23 21:24:34" color="#785bff">}}




{{<matomeQuote body="確かにpyenvより速くて良いけど、仮想環境っていう仕組み自体はuvが発明したわけじゃないんだ。<br>uvは他のツールよりPythonエコシステムを上手くやってるけど、やってることは関連するPEPで決まってる標準的なことだよ。" userName="nickelpro" createdAt="2025/06/23 19:37:45" color="#ff33a1">}}




{{<matomeQuote body="JSONのどこが変なの？<br>個人的にはバイナリデータに対応してないのが残念なくらいかな。<br>base64にするのがちょっと面倒だよね。" userName="simonw" createdAt="2025/06/23 21:12:27" color="">}}




{{<matomeQuote body="「order of magnitude」って言葉、対数スケールでしょ。3.16倍から31.6倍くらいの間ってことだと思うよ。" userName="bxparks" createdAt="2025/06/23 18:42:44" color="">}}




{{<matomeQuote body="標準に従うってことは、昔のPythonの失敗を永遠に残すってことじゃない？標準があるから進歩できないんでしょ。uvがすごいのは標準に従ってない部分でしょ、きっと。" userName="lmm" createdAt="2025/06/24 03:16:22" color="#ff5c5c">}}




{{<matomeQuote body="ロックファイルって標準で決まってるの？それともuv独自の仕様なの？" userName="pityJuke" createdAt="2025/06/23 20:26:30" color="">}}




{{<matomeQuote body="uvが他のより全然速くないって言ってるけど、それは間違いだよ。実際は速いんだ。Pythonはみんなが思ってるよりずっと遅いんだよ。エンジニアはそれに気づいてない人が多いんじゃないかな。" userName="jerf" createdAt="2025/06/24 13:44:59" color="#785bff">}}




{{<matomeQuote body="標準がいっぱいあってカオス、みたいなxkcdの漫画あるよね、それだ。" userName="psunavy03" createdAt="2025/06/23 22:12:00" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="車輪の再発明って言うけどさ、車のタイヤだって昔と今じゃ全然違うでしょ？技術が進歩すれば見た目は同じでも性能は全然違うものになるんだよ。uvもタイヤみたいなもんじゃない？" userName="haiku2077" createdAt="2025/06/23 18:52:51" color="#45d325">}}




{{<matomeQuote body="「車輪の再発明」って、車輪っていう概念そのものを再発明するって意味だと思ってた。Boring companyとかTeslaが考えてる地下トンネルのやつみたいにね。速いパッケージマネージャーはただの速いパッケージマネージャーで、概念は変わらないんじゃない？" userName="aalimov_" createdAt="2025/06/23 18:51:57" color="">}}




{{<matomeQuote body="Pythonのパッケージ管理、マジでひどかったよね。みんな同じ失敗繰り返してただけ。でもuvは初めてその悪い流れを断ち切ったんだ。PythonじゃなくてRustで作られてるからかな。" userName="lmm" createdAt="2025/06/24 01:29:38" color="#785bff">}}




{{<matomeQuote body="Rustだから速いんじゃなくて、アルゴリズムと設計のおかげで速いんだよって話だよ。<br>uvの動画でもRustじゃなくて設計での最適化が主な高速化要因だって言ってた。<br>あと、人を馬鹿にするのはやめな。<br>C/C++とかassemblyでAAAゲーム作ったことあるから、最適化や動的言語のことも知ってるんだ。<br>「Rustだから速い！」って嘘に騙されないで。<br>速い理由はそこじゃないんだよ。" userName="socalgal2" createdAt="2025/06/24 17:42:09" color="#45d325">}}




{{<matomeQuote body="ちょっとした注意点なんだけど、すごく低スペックな環境（例えばAWS T2.microでWindowsとか）だと、uvが同時にダウンロードしすぎてタイムアウトすることがあるよ。<br>そんな時は、環境変数UV_CONCURRENT_DOWNLOADSを使ってダウンロード数を1とか2に制限すると良いよ。<br>これは極端な例だけど、uvはモジュールごとにスレッド作るのが積極的すぎると思うんだ。<br>サーバーごとの通信速度を見て自動調整するべきじゃないかな。" userName="larkost" createdAt="2025/06/23 20:19:23" color="#ff5733">}}




{{<matomeQuote body="全然極端じゃないよ。<br>みんな趣味の開発とかで一番安くて小さいVPSよく使うもん。<br>私も使ってるよ（AWSじゃないけど）。<br>情報共有ありがとう！<br>uvが自動で検知してくれるようになると良いね。" userName="ehsankia" createdAt="2025/06/23 20:38:30" color="">}}




{{<matomeQuote body="uvは大規模プロジェクトだとファイルディスクリプタが足りなくなったりすることもあるし、インストールが毎回同じ結果になるわけじゃない（再現性がない）んだ。<br>まだ成熟が必要だね。" userName="choppaface" createdAt="2025/06/24 06:47:16" color="#ff5c5c">}}




{{<matomeQuote body="uvのuv add ＜mydependencies＞ --script mycoolscript.pyって書き方と、#!/usr/bin/env -S uv runをスクリプトの先頭につけるのがすごく気に入ってるよ。<br>これでPythonスクリプトを簡単に実行できるのが最高！" userName="leonheld" createdAt="2025/06/23 17:39:58" color="">}}




{{<matomeQuote body="uvのinline dependency機能を使って、AI（Claude）に指示書なしでPythonスクリプト作らせてみたんだ。<br>URLを指定したら、httpxとbeautifulsoupを使ってスクレイピングして、ページのリンク（URLとテキスト）をCSVで返すスクリプトだよ。<br>ちゃんとdependenciesも指定してくれた。<br>ここでその結果が見れるよ: https://claude.ai/share/57d5c886-d5d3-4a9b-901f-27a3667a8581" userName="simonw" createdAt="2025/06/23 18:12:43" color="#ff5c5c">}}




{{<matomeQuote body="去年Simon Willisonさんの投稿見てから、彼のuvシステム指示をLLMでいつも使わせてもらってます、ありがとう！<br>「XYZのPythonスクリプトちょうだい」ってAIに頼んで、uv runで実行できるのがめちゃくちゃ便利だよ。<br>AIがdependenciesがインストールされてないって困ったり、起動方法を知らなかったりすることが多いから、「実行する時はuv run script-name.pyを使ってね。<br>dependenciesは自動でインストールされるから。Stdlibsはdependencies配列に書かなくていいよ」って指示も追加したんだ。<br>AIがStdlib（例えばjson）をdependenciesに入れようとして混乱するのを防ぐためだよ。" userName="sunaookami" createdAt="2025/06/23 19:09:32" color="#38d3d3">}}




{{<matomeQuote body="私の経験だと、Claude Sonnetはuv scriptの書き方を忘れちゃうことが多いんだよね。<br>だいたいuv projectの書き方を使いたがるから、毎回ドキュメントをコピペして教えてあげてる感じ。" userName="varunneal" createdAt="2025/06/23 18:17:21" color="">}}




{{<matomeQuote body="俺が見つけてきてやったぜ。<br>これ見てくれよ → https://github.com/shakefu/cursor-rules/blob/f4dffbbf04ce99f..." userName="bilbo-b-baggins" createdAt="2025/06/24 09:59:37" color="">}}




{{<matomeQuote body="Marimo.ioとuvの組み合わせ最高！uv入れるだけで再現性高いアプリすぐ作れるんだって。めっちゃホットな組み合わせだね！" userName="jsilence" createdAt="2025/06/23 18:06:31" color="#45d325">}}




{{<matomeQuote body="uvのおかげで、環境管理とか気にせず気軽にスクリプト書けるようになったんだ。超便利だよ！<br>詳しくはこれ見てね！<br>https://everything.intellectronica.net/p/the-little-scripter<br>https://www.youtube.com/watch?v=8LB7e2tKWoI<br>https://github.com/intellectronica/ez-mcp" userName="intellectronica" createdAt="2025/06/23 17:49:58" color="#45d325">}}




{{<matomeQuote body="ごめん！前のコメントの例を勘違いしてたわ。指摘は無視してね。プロジェクトで`uv add --script`を使う話を`uv add`と間違えてただけ。彼らはドキュメントいっぱい載せてるけど、`run --with`かPEP723サポートがもっと気に入ると思うよ。ドキュメントのリンクこれね！<br>https://docs.astral.sh/uv/guides/scripts/" userName="kristjansson" createdAt="2025/06/23 18:03:46" color="">}}




{{<matomeQuote body="あれ？そのPEP723サポートって、最初のコメントの人がまさに使ってることじゃないの？" userName="misnome" createdAt="2025/06/23 18:13:38" color="">}}




{{<matomeQuote body="「mydependencies」って何？設定ファイルのこと？" userName="oblio" createdAt="2025/06/23 22:55:12" color="">}}




{{<matomeQuote body="ごめんね、「mydependencies」はPyPIから取ってくるパッケージのことだよ。<br>`pip install ...`みたいな感じで使うやつね。" userName="leonheld" createdAt="2025/06/24 09:27:33" color="">}}




{{<matomeQuote body="最近使い始めたんだけど、pipに慣れてると速すぎてマジで混乱する！終わったのか分かんないくらいあっという間だったんだよね…" userName="mh-" createdAt="2025/06/23 17:25:00" color="#ff5c5c">}}




{{<matomeQuote body="ちょっと前にuv試したんだけど、速さと使いやすさにマジで衝撃受けたよ。もうpip使う理由ないし、Pythonだけならcondaもいらないんじゃない？" userName="pu_pe" createdAt="2025/06/23 17:35:21" color="#ff33a1">}}




{{<matomeQuote body="pyenvとかpoetryもいらなくなりそう！" userName="oceansky" createdAt="2025/06/23 17:52:30" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
