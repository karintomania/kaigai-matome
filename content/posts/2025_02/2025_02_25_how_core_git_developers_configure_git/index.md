+++
date = '2025-02-25T00:00:00'
draft = false
title = 'コアGit開発者が実践するGitの設定法とは'
tags = ["Git", "プログラミング", "開発者", "設定", "ツール"]
featureimage = 'thumbnails/purple2.jpg'
+++

> コアGit開発者が実践するGitの設定法とは

引用元：[https://news.ycombinator.com/item?id=43169435](https://news.ycombinator.com/item?id=43169435)

{{<matomeQuote body="自分のお気に入りのエイリアスは、`git out`で、未プッシュのコミットをリストするだけなんだ。いつも使ってるよ。<br>自分の中では、いつも「The Terminator」の声で聞いてる。" userName="jelder" createdAt="2025-02-25T13:26:18" color="">}}

{{<matomeQuote body="いいエイリアスがあったから、最適なエイリアスについての記事をまた書くべきだな。アーノルドの声で言いたいからやりたいんだ。今は`git to-da-choppa`がやりたい。" userName="schacon" createdAt="2025-02-25T13:51:24" color="#ff33a1">}}

{{<matomeQuote body="それは単にこうできるかもね。<br>git add . && git commit -a -m ”git to da choppa” && git push --force<br>急いで『ダ・チョッパ』に行く必要がある時はこれに限る。" userName="theshrike79" createdAt="2025-02-25T14:47:40" color="">}}

{{<matomeQuote body="自分は`qp`を使って`quick-push`にしてる。関数を使ってコメントを付けるんだ。<br># git alias<br>qp = ”!f() { git add . && git commit -m \”$1\” && git push; }; f”<br># 使用法<br>git qp ”好きなコメント”" userName="sandreas" createdAt="2025-02-25T21:37:54" color="#ff5733">}}

{{<matomeQuote body="自分はほとんど`git add .`はやらない。`git add -u`の方が良いと思う。知られているファイルだけをステージするから。" userName="JohnKemeny" createdAt="2025-02-25T22:40:32" color="">}}

{{<matomeQuote body="それはMercurialに標準で付いてくるやつだよ。(`hg out`や`hg outgoing`)" userName="sedatk" createdAt="2025-02-25T21:27:10" color="">}}

{{<matomeQuote body="みんなが自分の選択を考えてる間に（少なくとも~/.gitconfigのことについて）、deltaをGit CLIの仲間として強くおすすめするよ。<br>[1]: https://dandavison.github.io/delta/" userName="_kb" createdAt="2025-02-25T10:20:32" color="#ff33a1">}}

{{<matomeQuote body="deltaを使ってたけど、普通の差分表示に戻ってきたよ。決して悪いわけじゃないんだけど、ずっと差分をコピーしてるから、そのビジュアルが自分のワークフローに合わないんだ。端末が小さいとちょっと見づらいし。でも、本当に良いソフトだから、読むみんなにも試してみてほしい。" userName="leonheld" createdAt="2025-02-25T11:28:41" color="#38d3d3">}}

{{<matomeQuote body="確か、出力をxclipにパイプしたり、ファイルにリダイレクトすると、元の差分フォーマットに戻るんだよね。便利ではないけど、そこに関してはまだ使える。" userName="JadedBlueEyes" createdAt="2025-02-25T11:39:31" color="">}}

{{<matomeQuote body="それは知らなかった！それさえあれば大丈夫そうだ。ありがとう、本当に！" userName="leonheld" createdAt="2025-02-25T11:59:16" color="">}}

{{<matomeQuote body="ちゃんとしたツールなら、出力がパイプかどうかを検出してフォーマットを無効にするべきだよね。’git’だけじゃなくて、’ripgrep’や’jq’もちゃんとやってると思う。" userName="mplanchard" createdAt="2025-02-25T12:35:47" color="#ff5733">}}

{{<matomeQuote body="むしろ出力がターミナルかどうかを検出して、色を有効にすべきだよね。" userName="knome" createdAt="2025-02-25T13:26:56" color="">}}

{{<matomeQuote body="これ知らなかった！いつも出力をパイプするときは’--no-ext-diff’ってタイプしてたんだ。サンキュー！" userName="pca006132" createdAt="2025-02-25T12:26:56" color="#785bff">}}

{{<matomeQuote body="’… | cat’はたまに便利だし、どの環境でも使えるよね。" userName="ramses0" createdAt="2025-02-25T12:29:38" color="">}}

{{<matomeQuote body="’git -c core.pager=less’を使ってるけど、パイプの方が簡潔かも…ちょっと試してみる。" userName="lucasoshiro" createdAt="2025-02-25T13:44:02" color="">}}

{{<matomeQuote body="catを通すのはうまくいくはずだよ。" userName="rusk" createdAt="2025-02-25T13:16:54" color="">}}

{{<matomeQuote body="フォーマットなしでコピーするのはただの’<your diff command> | pbcopy’でできるんじゃない？" userName="PhilippGille" createdAt="2025-02-25T11:40:33" color="">}}

{{<matomeQuote body="GeminiにHNコメントを解読してもらってるけど、’pbcopy’ってmacOSだけ？ちなみに、Geminiはウェブサイトの青い色についての質問はしたくないらしい。" userName="genewitch" createdAt="2025-02-25T14:11:43" color="">}}

{{<matomeQuote body="そうだよ、’pbcopy’はmacのやつ。Linuxでは環境によって色々なコマンドがある。’xsel’、’xclip’、’wl-clipboard’や’wlclip’とかね。WindowsではPowerShellの’Get-Clipboard’と’Set-Clipboard’、cmd.exeは’ws’で問題解決できるよ。" userName="chuckadams" createdAt="2025-02-25T15:26:40" color="">}}

{{<matomeQuote body="最近のWindowsにはclip(.exe)ってのがどれにもあるみたいだね。" userName="jeeva" createdAt="2025-02-27T10:32:55" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="Linuxでは、~/bin/pbcopyという自作のコマンド作ったんだけど、Linuxのコマンドは覚えにくいから”pbcopy”って名前にしたよ。" userName="ramses0" createdAt="2025-02-26T01:34:28" color="">}}

{{<matomeQuote body="Emacs使いなら、同じ作者のmagit-deltaパッケージでdeltaをmagitと一緒に使えるよ。<br>さらに、vscodeとの使い方もドキュメントに載ってるみたい。" userName="mplanchard" createdAt="2025-02-25T12:34:04" color="#ff5733">}}

{{<matomeQuote body="これ追加したかったんだけど、バニラgitで使えるグローバルな推奨が欲しかったんだ。deltaはいいけどね。" userName="schacon" createdAt="2025-02-25T10:41:14" color="">}}

{{<matomeQuote body="自分の~/.gitconfigはこんな感じだよ。<br>[alias]のエイリアスや設定が色々書いてあるんだ。" userName="chungy" createdAt="2025-02-25T09:56:43" color="#ff33a1">}}

{{<matomeQuote body="エイリアスでキーストローク減るの？多くのシェルには補完機能があるのに、結局”git”って打たなきゃいけないじゃん。<br>完全にシェルに埋め込むようなエイリアスが欲しいな。" userName="gosub100" createdAt="2025-02-25T22:34:38" color="">}}

{{<matomeQuote body="gitに関しては多くのシェルエイリアス作ってるよ。<br>`g`は`git status`、`d`は`git diff`、`gad`は`git add`みたいな感じ。" userName="cillian64" createdAt="2025-02-27T13:34:42" color="">}}

{{<matomeQuote body="短縮エイリアスはcvsやsvnから来たんだ。<br>常にローカルタイムゾーンでgit logを表示したり、非ffマージをしないように設定してるんだ。" userName="chungy" createdAt="2025-02-25T09:58:39" color="#ff33a1">}}

{{<matomeQuote body="エイリアスは意図的に作ってないんだ。<br>でも、個々の設定としてエイリアスはいいよね。" userName="schacon" createdAt="2025-02-25T10:04:55" color="">}}

{{<matomeQuote body="俺はもっと楽な方法が欲しいな。<br>gitを何回も打たなくてよくなるようなgitシェルがあればいいのに。" userName="feelamee" createdAt="2025-02-25T13:33:24" color="">}}

{{<matomeQuote body="GitのTUIクライアント（tigやlazygitなど）はそういう風にキー操作で動くんじゃないの？" userName="desperatecuban" createdAt="2025-02-25T14:25:12" color="">}}

{{<matomeQuote body="うん、でも俺はstatusやstash、checkout、commitは手書きの方が好きかな。考えれば考えるほど、そういう機能に意味を感じなくなってきたな。" userName="feelamee" createdAt="2025-02-25T21:17:10" color="">}}

{{<matomeQuote body="(z)diff3の使用を勧める意見には賛成。この記事ではその重要性が過小評価されている気がする。3-way diffがなきゃ解決できない衝突があるからさ。標準のスタイルでは、衝突を同じ場所に追加するのと削除するのが区別つかないから、基準が見えないと判断が難しいんだ。詳しくはこっちに書いたよ：<br>https://stackoverflow.com/a/63739655/997606<br>rebaseやmergeの衝突解決をメカニカルにするやり方も書いた：<br>https://h2.jaguarpaw.co.uk/posts/git-rebase-conflicts/" userName="tome" createdAt="2025-02-25T11:19:51" color="#ff33a1">}}

{{<matomeQuote body="関連情報: Julia Evansによる人気のGit設定オプション[0]<br>https://news.ycombinator.com/item?id=39400352" userName="qbonnard" createdAt="2025-02-25T10:32:23" color="">}}

{{<matomeQuote body="俺が好きな追加オプション：<br>  [apply]<br>    # 末尾の空白を削除<br>    whitespace = fix<br>  [color ”diff”]<br>    whitespace = red reverse<br>  [diff]<br>    colorMovedWS = allow-indentation-change<br>  [format]<br>    pretty = fuller<br>  [log]<br>    date = iso<br>  [pull]<br>    ff = only" userName="conaclos" createdAt="2025-02-25T09:31:19" color="#38d3d3">}}

{{<matomeQuote body="俺も`log.date iso`を入れようかと思ってた、これいいよね。" userName="schacon" createdAt="2025-02-25T09:38:15" color="">}}

{{<matomeQuote body="俺もcolor.diff.whitespace ”red reverse”を使ってる。diff.wsErrorHighlight allも必要に感じたことがあったけど、今はどうなのかよくわからん。" userName="opello" createdAt="2025-02-25T12:53:26" color="">}}

{{<matomeQuote body="俺の設定はここにあるよ[1]。基本的にはすでにここに書かれてる設定は大体入ってるけど、column uiは俺は好みじゃないだけかな。お互いにエイリアスのコツをやり取りするのは良いかもと思ったから、リンクをシェアしてみるよ。<br>[1]:<br>https://github.com/Julian/dotfiles/blob/main/.config/git/con..." userName="JulianWasTaken" createdAt="2025-02-25T12:22:46" color="">}}

{{<matomeQuote body="なんでコミット署名がここに入ってないのか不思議だな。今のSSH鍵で簡単にできるのに。<br>  [user]<br>    name = xyz<br>    email = xyz@domain.com<br>    signingkey = ~/.ssh/id_algorithm.pub<br>  [commit]<br>    gpgsign = true<br>  [tag]<br>    gpgsign = true<br>  [gpg]<br>    format = ssh<br>  # 許可される署名者を制限する<br>  # echo ”$(git config --get user.email) namespaces=\”git\” $(cat ~/.ssh/id_*.pub)” >> ~/.git_allowed_signers<br>  [gpg ”ssh”]<br>    allowedSignersFile = ~/git_allowed_signers<br>GitHubではSSH鍵を認証だけでなく署名にも使えるよ。残念ながら鍵を2回追加する必要があるけど、一度やっとくとコミット内の『unverified』ラベルが消える。" userName="sandreas" createdAt="2025-02-25T22:04:01" color="#ff5c5c">}}

{{<matomeQuote body="個人的にはGitのデフォルトの動作はリモートのリファレンスをリモートにできるだけ近づけるべきだと思うんだ。消えていったものはプルーンするべき。ただ、それはダメだね。リモートの不要なデータは結構消えてることが多いし、いつ必要になるかわからないからね。特に古いGitHubのプルリクエストはすぐにバックエンドでガーベジコレクションされることが多いから、リフログを掘り返して昔の作業を見つけることがよくある。データを消すときは、必要ないかわからないものは消さない方が賢明だし、手動で行うべきだよ。" userName="ajross" createdAt="2025-02-25T14:48:29" color="#38d3d3">}}

{{<matomeQuote body="gitが好きなpagerを使えるってのが分かったから、batに設定したぜ。 core.pagerをbatにしてる。" userName="cassepipe" createdAt="2025-02-25T13:21:18" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="deltaっていうのでも同じことができるんだけど、.gitconfigに追加オプションを入れられるよ。" userName="lucasoshiro" createdAt="2025-02-25T13:41:57" color="">}}

{{<matomeQuote body="＞「これをGIT_PAGER環境変数で設定することに比べてメリットはあるの？」」環境変数のPAGERがgitで効かないのは変だね。" userName="oneeyedpigeon" createdAt="2025-02-25T13:53:43" color="">}}

{{<matomeQuote body="＞「その環境変数は使ったことないけど、gitの設定を一つのファイルにまとめて、他のマシンでも再利用できるのが利点だよ。」」ローカルに設定すれば、特定のリポジトリだけの設定もできて便利。" userName="lucasoshiro" createdAt="2025-02-25T13:58:40" color="#ff5c5c">}}

{{<matomeQuote body="＞「最適な設定が合意されてからデフォルトを更新してほしい。」」未来に変わっても気づかず古い設定のままだと不安になるね。" userName="rowanseymour" createdAt="2025-02-25T14:16:17" color="">}}

{{<matomeQuote body="vscode使いの私にはどれくらい役立つのかな？ コマンドライン見るのもあまりないし、あったとしてもトラブルだらけで..." userName="neals" createdAt="2025-02-25T09:23:40" color="">}}

{{<matomeQuote body="VSCodeのgitインターフェースは結構パワフルで、99.9%のアクションはカバーされてるよ。マージやスタッシングもできるし。ただ、diffアルゴリズムを変えるのは役立つこともあるかも。" userName="juancroldan" createdAt="2025-02-25T12:15:55" color="#38d3d3">}}

{{<matomeQuote body="＞「gitを使うなら、少しずつCLIに慣れるのがいい。」」初心者向けではないけど、GUIツールじゃ隠れた部分も見えるから、より複雑なことに対応できるようになるよ。" userName="lucasoshiro" createdAt="2025-02-25T13:53:09" color="">}}

{{<matomeQuote body="GUIに何の問題があるの？Gitでは特にいいと思うよ。プロセスは素早くやる必要はなくて、しっかり見直して選ぶことが大事。グラフィカルな差分ビューアはすごくいいしね。" userName="jbverschoor" createdAt="2025-02-25T09:32:46" color="#ff33a1">}}

{{<matomeQuote body="マージの時にconflictstyleをdiff3かzdiff3に設定すると、体験がすごく良くなるよ。" userName="pfg_" createdAt="2025-02-25T11:20:17" color="">}}

{{<matomeQuote body="kdiff3を使ってるよ。ほとんどのマージコンフリクトを自動で解決してくれるし、間違ったこともほぼないよ。解決できないときも行の整列がいいから、BeyondCompareとかのごちゃごちゃしたやつより好き。" userName="vlovich123" createdAt="2025-02-25T14:07:03" color="#ff33a1">}}

{{<matomeQuote body="もちろん、あれに対してxkcdがあるってことだよね：<br>https://xkcd.com/1597/" userName="jeffwass" createdAt="2025-02-25T09:29:02" color="">}}

{{<matomeQuote body="XKCDを作るべきだね。“GitクライアントGUIは常にn+1ある”って。新しい社員が来ると毎回新しいGit UIを提案してくるんだよね。" userName="eastbound" createdAt="2025-02-25T09:58:13" color="">}}

{{<matomeQuote body="多分、Gitは普通のユーザーには難しすぎるんだと思う（自分も含めて）。" userName="tex0" createdAt="2025-02-25T12:52:07" color="">}}

{{<matomeQuote body="＞多分、Gitは普通のユーザーには難しすぎるんだと思う（自分も含めて）。<br>ならvscodeのラッパーを使うか、好きなやつを使えばいいさ。人は“Git”が難しいって言うけど、本当はそのプロジェクトの膨大な変更を分割・リファクタリングする問題とかが難しいんだよね。" userName="ajross" createdAt="2025-02-25T14:54:31" color="">}}

{{<matomeQuote body="もちろん、GitButler（https://gitbutler.com）を試してみるのもいいよ。結構いいGUIだし。" userName="schacon" createdAt="2025-02-25T09:44:02" color="">}}

{{<matomeQuote body="自分はこのエイリアスを設定してるよ。<br>[alias]<br>　　lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches<br>色付きのコンパクトなコミットとブランチのグラフが見れます。" userName="musikele" createdAt="2025-02-25T13:08:14" color="#ff5c5c">}}

{{<matomeQuote body="自分はほぼ同じだけど、’—-graph’だけ外したバージョン。そうすることで、リニアビューかグラフビューのどちらかをそのフラグひとつで得られるのがいいね。" userName="alex_smart" createdAt="2025-02-25T13:21:58" color="">}}

{{<matomeQuote body="デフォルトはこれにすべきだと思う：＞”git push --force-with-lease”<br>forceを使うのは危険だし、なぜGitがそれを実行する前に状態を確認させないのか謎。デフォルト設定は無理だから代わりにエイリアスを使ってる。記事については、設定にはあまりこだわりがなくて、特に良いと言われてる設定も特に気にならない。" userName="rstuart4133" createdAt="2025-02-26T05:10:25" color="#ff33a1">}}

{{<matomeQuote body="残念なことに、--force-with-leaseは名前が長すぎる。危険な--forceに比べて。--forceを--force-with-leaseのように設定できたらいいのに。元の--forceの動作は人間には望ましくないし。" userName="account42" createdAt="2025-02-26T11:47:50" color="#45d325">}}

{{<matomeQuote body="役立つ記事だった。`merge.conflictstyle = diff3`に困ってたから`zdiff3`を知れてよかった。他にも`fetch.prune`や`pull.autoSetupRemote`を学んで、作業が少し楽になる。差分のプレフィックスは、パスを一つだけ`.`で表示させたいから、コンテキストのプレフィックスは要らない。" userName="idoubtit" createdAt="2025-02-25T09:45:35" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="＞”# clearly makes git better”<br>に強く反対。新しいブランチをリモートに公開するのは、明示的な操作であるべき。git pushは必要なコマンドを教えてくれるから、別のランダムなコマンドを覚える必要はない。" userName="account42" createdAt="2025-02-26T11:40:15" color="">}}

{{<matomeQuote body="Nitpickだけど、schaconさんの「ブランチのリスト」セクションで、branch.sortとcolumn.uiを初期オプションとして紹介してるけど、コマンドの順番が逆だからちょっと分かりにくい。" userName="rmccue" createdAt="2025-02-25T13:35:25" color="">}}

{{<matomeQuote body="「Clearly better」とか他のいくつかは活用したけど、pruneオプションは使用してない。勝手に削除されるのが嫌だから。" userName="trebligdivad" createdAt="2025-02-25T14:46:35" color="">}}

{{<matomeQuote body="`defaultBranch = master`を使ってる。明らかに文脈を誤解している言葉を禁止する流行の方が、有害で役に立たないと思う。" userName="Galanwe" createdAt="2025-02-25T14:26:54" color="">}}

{{<matomeQuote body="これすごいね。今まで自分のgit設定を深く調べなかったけど、いくつかは本当にクール。diffの変更は素晴らしいし、グローバルな.gitignoreファイルがない理由もずっと不思議だった。" userName="dark-star" createdAt="2025-02-25T08:53:15" color="">}}

{{<matomeQuote body="投稿で言ったけど、Gitは`.config/git/ignore`も見るから、新しいパスを設定するよりこっちを使った方がいいかも。ただし、自分には隠れてても他人には見えるかもしれないから、その点は考慮した方がいいよ。自分はそのファイルにはあまり入れてないけどね。" userName="schacon" createdAt="2025-02-25T09:10:23" color="">}}

{{<matomeQuote body="Mac使ってるから、.DS_storeは入れてるよ。他の人に広める必要はないし。" userName="fragmede" createdAt="2025-02-25T09:30:05" color="">}}

{{<matomeQuote body="“.vscode”フォルダーも要らないと思う。VSCodeすら使ってない人もいるかもしれないし、皆が必要なわけじゃないのに入れてると日々の作業がうんざりする。このファイルをチェックインする理由がわからん。" userName="zelphirkalt" createdAt="2025-02-25T10:01:11" color="">}}

{{<matomeQuote body="“.vscode”のプロジェクト特有の設定ファイルは、全開発者が使うからよくある話だよ。VSCodeの設定は階層的で、合成される感じのものだからね。" userName="tomnipotent" createdAt="2025-02-25T10:29:27" color="#38d3d3">}}

{{<matomeQuote body="“.editorconfig”を使えば、複数のエディターやIDEで動作するよ。詳しくはeditorconfig.orgを見てね。" userName="mvanbaak" createdAt="2025-02-25T11:50:33" color="">}}

{{<matomeQuote body="他の人はあまりやってないよね。ツールを片っ端から変える予定だったら、特定のIDEやエディターのファイルを入れるのはどうなんだろう？Gitレポにどれだけのものを蓄積するつもりなのか、疑問に思うよ。" userName="zelphirkalt" createdAt="2025-02-25T15:13:51" color="">}}

{{<matomeQuote body="＞全員が同じツールを使うなら、それらのファイルは絶対にチェックインすべきだよ。何が問題なの？チームが共有することで得られるメリットを知らないんじゃないかな。" userName="tomnipotent" createdAt="2025-02-25T22:15:25" color="">}}

{{<matomeQuote body="皆がVS Codeだけではないから、特定のツールのものを入れるのはどうかと思うよ。異なるIDEやエディターの余分なものを持ってたら、レポも煩雑になっちゃうし。" userName="zelphirkalt" createdAt="2025-02-26T23:11:00" color="">}}

{{<matomeQuote body="クリエイターたちの間で、ホームディレクトリを汚さないようにしようという動きもあるよ。投稿で言われたように、`.config/git/ignore`が長期的にはスケーラブルなアプローチだと思う。" userName="whirlwin" createdAt="2025-02-25T09:31:24" color="">}}

{{<matomeQuote body="俺はdifftasticが好きだね。「最も読みやすく、理解しやすい差分ツール」だと思う。" userName="marcyb5st" createdAt="2025-02-25T09:17:01" color="#38d3d3">}}

{{<matomeQuote body="記事の終わりでさりげなく紹介したんだけど、<br>＞「https://github.com/so-fancy/diff-so-fancy」<br>＞「https://github.com/dandavison/delta」<br>も素晴らしいTUIの差分ツールなんだよね。" userName="schacon" createdAt="2025-02-25T09:42:59" color="#ff5733">}}

{{<matomeQuote body="最近知った中で一番クールなのが.git/info/exclude。<br>ローカルリポにファイルを無視させるのに便利で、.gitignoreを改造する必要がないんだ。<br>自分の.envrcやshell.nixを追加したいときに役立つよ。" userName="wh33zle" createdAt="2025-02-25T10:44:00" color="#38d3d3">}}

{{<matomeQuote body="俺は.envrcとshell.nixをグローバルのgitignoreに追加してるよ。<br>docker-compose.override.ymlも同様にね。<br>無視されてるファイルでも強制的に追加すれば、今後はトラッキングされるから便利。" userName="chuckadams" createdAt="2025-02-25T16:58:47" color="">}}

{{<matomeQuote body="俺は$XDG_CONFIG_HOME/git/ignoreも使ってるよ。" userName="n_plus_1_acc" createdAt="2025-02-25T09:42:23" color="">}}

{{<matomeQuote body="こんな便利な機能があったなんて知らなかった！<br>いくつかはデフォルト設定になってほしいな。" userName="leslielurker" createdAt="2025-02-25T09:53:58" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
