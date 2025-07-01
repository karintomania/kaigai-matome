+++
date = '2025-06-24T00:00:00'
months = '2025/06'
draft = false
title = 'あらゆるシェルで使える超速カスタムプロンプト Starship！ミニマルも可能？'
tags = ["シェル", "プロンプト", "開発ツール", "カスタマイズ", "CLI"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> あらゆるシェルで使える超速カスタムプロンプト Starship！ミニマルも可能？

引用元：[https://news.ycombinator.com/item?id=44364874](https://news.ycombinator.com/item?id=44364874)




{{<matomeQuote body="俺は最大限に情報詰まったプロンプトが好きで、まさにStarshipはShell Bling Ubuntu [1]が新しい開発マシンに入れるやつだよ。でも、みんながそうとは限らない。<br>誰かにプロンプトに追加する最高に密度高いものを勧めるなら、それは単に現在のプロンプトが表示された時間＋直前のコマンド実行にかかった時間だね。<br>この二つの情報があると、何がいつ起きたかのログを簡単に追跡できるんだ。（君自身でも、ローカルのシステム管理者でも、デジタルな肩越しに見るLLMでもね）こういう擬似的な否認防止って、予期しないデバッグセッションでマジで貴重になる。<br>これは数年前にMichael W. LucasのNetworking for System Administratorsって本から distilled（抽出）したヒントで、ネットワークのことがちょっと分かれば実際のネットワークエンジニアと話す時に完全に迷子にならないくらいの知識を得たい開発者には、今でも俺の一番のおすすめだよ。<br>Unix epochからの秒数で時間を測ると、ボーナス級のオタクポイントだね。そうすると時間差の計算が超簡単で速い：<br>    [0 1719242840] $ echo ”foo”<br>    [0 1719242905] $ echo ”fell asleep before hitting enter” \u0026\u0026 sleep 5<br>    [5 1719242910] $<br><br>[1]: https://github.com/hiAndrewQuinn/shell-bling-ubuntu" userName="hiAndrewQuinn" createdAt="2025/06/24 12:36:02" color="#ff5c5c">}}




{{<matomeQuote body="個人ワークステーションなら、現在のディレクトリだけで十分かな。多分、最後のコマンドのステータスで色を変えるくらい。コマンド打つ前に必要な情報って、正直それくらいだね。他のことは、本当に必要になった時にアクセスすればいい。" userName="skydhash" createdAt="2025/06/24 12:45:09" color="">}}




{{<matomeQuote body="コマンド実行する前に、自分がどのブランチにいるか知らなくていいの？俺は間違ったブランチでコマンド実行しちゃったこと、何度あるか分からないよ。" userName="acedTrex" createdAt="2025/06/24 13:00:07" color="">}}




{{<matomeQuote body="問題は、タイムスタンプとコマンド実行時間は”本当に必要になった時”に手に入れられないことなんだ。他のほとんどの情報とは違うね。" userName="meesles" createdAt="2025/06/24 13:13:22" color="">}}




{{<matomeQuote body="タイムスタンプってそんなに重要？マジで聞いてる。コマンドの時間なら、いつでも”time”コマンドで測れるじゃん。" userName="bayindirh" createdAt="2025/06/24 13:23:28" color="">}}




{{<matomeQuote body="俺はマジでPS1=’$ ’だけ使ってるよ。gitの情報は`git status`で確認。現在の作業ディレクトリは`pwd`とかね。gsとか..みたいなエイリアスも使わない。<br>ミニマルな設定のいいところは、どこでも自分のホームみたいに感じられることだね。<br>昔はいつもこうだったわけじゃない。何十年もかけてたくさんのプロンプトやシェルツールを使ってきた。時間の試練に耐えた唯一のツールはtmuxだけだ。" userName="alganet" createdAt="2025/06/24 14:14:32" color="">}}




{{<matomeQuote body="デバッグしてる時、特に複雑なシステムで、障害発生中や事後検証の時なんかは、いつ自分のコマンドが実行されたかをログと突き合わせて理解するのが、めちゃくちゃ役に立つんだ。" userName="bertmuthalaly" createdAt="2025/06/24 13:29:20" color="#38d3d3">}}




{{<matomeQuote body="俺は自分がどのブランチにいるか、すごく意識してる。なぜなら、ブランチを切り替えるスクリプトや自動化を使わないから。手動でしか切り替えないから、常にその意識があるんだ。" userName="kccqzy" createdAt="2025/06/24 14:40:41" color="">}}




{{<matomeQuote body="個人的には、改造したzbell（zsh用）を使って、コマンドが30秒経っても終わらなかったら通知して、2分超えたらメールを送るようにしてる。" userName="stirfish" createdAt="2025/06/24 13:27:24" color="">}}




{{<matomeQuote body="俺は個人的には、状況判断に重要かもしれない情報を全部そのコンテキストウィンドウに詰め込むのが好きだな。プロンプト読み込みで50ms節約するより、何か問題が起きた時に（例えば間違ったNode versionが入ってるとか）疑うことすら思いつかなくて、おかしいことに気づかない（false negative）方が断然マズいんだ。" userName="hiAndrewQuinn" createdAt="2025/06/24 12:49:24" color="#ff33a1">}}




{{<matomeQuote body="俺は普段Konsoleの”プログラム終了時に通知”機能を使ってるよ。<br>時間のかかるタスクの場合は、ちょっとしたツールにパイプして、必要なら出力付きでプッシュ通知を送ってる。" userName="bayindirh" createdAt="2025/06/24 13:34:41" color="#ff5c5c">}}




{{<matomeQuote body="多分（試してないけどね）、PROMPT_COMMANDと`history -r ＜(…)`みたいなのを使って、実行時間を履歴にコメントとして追加できるんじゃないかな。プロンプトを clutter する代わりにね。開始時間はHISTTIMEFORMATを使えばもう履歴にあるし。" userName="layer8" createdAt="2025/06/24 18:29:01" color="#785bff">}}




{{<matomeQuote body="俺もパイプするツール持ってたけど、コマンドが時間かかりそうだなって気づいてから使うことが多かったな。プッシュ通知ってかっこいいね。俺はcurlでハックできるからメール使ったよ。<br>これがzbellの実装例の一つ。オリジナルかは分からないけど、これでいけるみたい: https://gist.github.com/oknowton/8346801" userName="stirfish" createdAt="2025/06/24 15:37:40" color="#ff33a1">}}




{{<matomeQuote body="俺もブランチ切り替えは手動だけだよ。でもたくさんのreposで作業するし、たまに数日経ってからまた取り掛かるんだ。" userName="fkyoureadthedoc" createdAt="2025/06/24 14:53:36" color="">}}




{{<matomeQuote body="俺も同じ。aliasは速度をもたらすけど、後で不要な複雑さや精神的オーバーヘッドを生むこともあると思うんだ。大したことないし、他の人には関係ないか、別の好みがあるだろうけど、それが俺の好みかな。それとは逆に、maximalist shellsは本当に楽しいね。コンピューターは使うのが楽しくなくっちゃ！" userName="ericmay" createdAt="2025/06/24 14:23:49" color="">}}




{{<matomeQuote body="ベルをシェアしてくれてありがとう。見てみるね。プッシュ通知を試したいなら、俺はサービスとしてhttps://pushover.netを使ってるよ。<br>ツールは自分で開発したんだ。もしチェックしたければhttps://git.sr.ht/~bayindirh/nudgeにあるよ。<br>プッシュ通知のインフラ全体をホストしたいなら、https://ntfy.shを見てみるといい。これもcURLと連携できるよ。" userName="bayindirh" createdAt="2025/06/26 13:49:06" color="#38d3d3">}}




{{<matomeQuote body="俺はaliasは使わないけど、実際のフルコマンドに展開されるabbreviationsを使ってるよ。タイプ量が減るのに、履歴は正確なままで助かるんだ。" userName="gumbojuice" createdAt="2025/06/24 17:28:29" color="#ff5733">}}




{{<matomeQuote body="そうそう。現在アクティブなvenvのpythonやnodeのバージョンとvenv名を表示してるよ。あと、正しいnerd fontをシステムにインストールしてないと文字化けするような、pythonとかのための特殊文字をなんとか入れたんだ。" userName="bredren" createdAt="2025/06/24 13:13:20" color="#ff5c5c">}}




{{<matomeQuote body="俺にとってはAWS連携が良いね。そうすれば、たくさんのウィンドウの中で今どのアカウント、どのregionにいるか分かるから。<br>例えばこんな感じ: …/.config master on AWS_Prod (use2)<br>starship.tomlの設定例はこんな感じだよ:<br>    [aws]<br>    format = ’on [($profile )(\($region\) )]($style)’<br>    style = ’bold #B23D2F’<br>    symbol = ” ”  <br>    [aws.region_aliases]<br>    us-east-1 = ’use1’<br>    us-east-2 = ’use2’" userName="zikduruqe" createdAt="2025/06/24 13:24:52" color="#45d325">}}




{{<matomeQuote body="それは履歴にタイムスタンプがある良い理由だね。それは持つべきだよ。export HISTFILESIZE=、export HISTSIZE=、export HISTTIMEFORMAT=”[%F %T] ”、shopt -s histappendみたいなのは、Bashのデフォルトであるべきだね。<br>インタラクティブプロンプトにそれが必要な理由はそこまで明確じゃないけどね。" userName="xorcist" createdAt="2025/06/24 18:06:19" color="#ff5733">}}




{{<matomeQuote body="プロンプトがないと、間違ったブランチでコマンドを連打しちゃうことがあるんだよね。<br>たとえばworktreeとかtmuxでいっぱい開いてて、タブを切り替えながら作業してると（デベロッパーからの複数のPRをレビューする時によくある）、どのworktreeがどこかごっちゃになって、別のツリーでそのツリー向けのコマンドを自動で打ちまくっちゃうんだ。直しがすごく面倒。<br>プロンプトはだいたいそれを防いでくれてるよ。" userName="acedTrex" createdAt="2025/06/24 14:27:08" color="#785bff">}}




{{<matomeQuote body="それってLinuxのaudit機能使う方がイマイチでハックな代わりだよね。<br>個人のPCなら適切な堅牢性／複雑性のトレードオフかもしれないけど、仕事だとaudit機能がオンになってることが多いし、そこから時間も取れるだろうし。" userName="kccqzy" createdAt="2025/06/24 14:45:50" color="">}}




{{<matomeQuote body="長い間作業してない複数のリポジトリで使う時、どれくらいうまく動くの？<br>あと、ブランチ表示はバージョン管理下のパスにいるっていう地味なリマインダーにもなるよね。" userName="slightwinder" createdAt="2025/06/24 15:27:36" color="">}}




{{<matomeQuote body="nushellなら最初からそれできるよ。<br>    ＞ history | get 82076<br>    ╭─────────────────┬──────────────────╮<br>    │ start_timestamp │ 2025-06-24 16:46 │<br>    │ command         │ mpc play         │<br>    │ cwd             │ /home/work       │<br>    │ duration        │ 1ms              │<br>    │ exit_status     │ 0                │<br>    ╰─────────────────┴────────────────╯<br>こんな感じでコマンドの開始時刻とか実行時間とか表示されるんだ。<br>実行完了間の時間じゃなくて、実際のコマンドの実行時間なのがすごくいいんだよね。" userName="MyOutfitIsVague" createdAt="2025/06/24 17:01:07" color="#38d3d3">}}




{{<matomeQuote body="別の方法だと、よくおすすめされてるatuin (https://atuin.sh) がコマンドの実行時間とか終了コードとか（他のデータも）ログしてくれるよ。<br>必要な時にだけ見ればいいし、先週とか去年の作業内容も確認できるんだ。" userName="mechanicum" createdAt="2025/06/24 15:26:22" color="#ff5c5c">}}




{{<matomeQuote body="そんなに頻繁に切り替えるの？常に値が見える必要ある？<br>古いバージョン使う時でも、毎回コマンド実行時にリマインダーは要らないかな。" userName="JimDabell" createdAt="2025/06/24 14:52:18" color="">}}




{{<matomeQuote body="Bashの＼`history＼`のmanページによると、<br>    int history_write_timestamps<br>       If non-zero, timestamps are written to the history file, so they can be preserved between sessions.  The default value is 0, [...]<br><br>＼`history_write_timestamps＼`を0以外にしないとタイムスタンプはデフォルトでは書き込まれないんだって。<br>多くのマシンでデフォルトではオンになってないよ。オンにすればもちろん同意するけどね。" userName="hiAndrewQuinn" createdAt="2025/06/24 19:30:16" color="#38d3d3">}}




{{<matomeQuote body="これって定期的に実行するの忘れがちだよね。tmuxのオートパイロットモードだと特に。プロンプトが最後の注意喚起になるんだけど、それでも見落として元に戻す羽目になる時があるんだ。" userName="acedTrex" createdAt="2025/06/25 14:34:54" color="">}}




{{<matomeQuote body="Starshipとか使ってる人の年齢層、すごい気になるなー。個人的にはプロンプトのカスタマイズにあんまり拘らなくなったよ。どんだけ凝っても、情報の90%は90%の時間で不要だって結論になったんだ。脳がそのうち視覚的なノイズとして無視しちゃうし、重要なことはプロンプトじゃ足りない詳細が必要だよね。Gitに変更があるって分かっても、どのファイル？とか、結局別のコマンド打つし。" userName="m000" createdAt="2025/06/24 16:10:31" color="">}}




{{<matomeQuote body="コーディング歴20年だけど、Git情報はプロンプトにあるとすごく助かるな。全部は教えてくれないけど、コミット忘れとかプッシュ忘れ、stashしたままとかの気付きになるんだよね。今朝Starshipを1時間試したけど（50人会議サイコー！）、結局アンインストールしたよ。コマンドの実行時間とか成功/エラー表示は良かったけど、ツールバージョンとかがノイズに感じた。望む形に削るための複雑な設定を維持する手間もね。" userName="Merad" createdAt="2025/06/24 21:43:42" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="表示するセグメントを選ぶのが主な設定だよ。バージョンを非表示にするプリセットの例もあるんだ。https://starship.rs/presets/no-runtimes デフォルトだとノイズが多いっていうのは同意だね。" userName="wocram" createdAt="2025/06/25 02:26:20" color="">}}




{{<matomeQuote body="業界歴25年になるベテランだけど、”おぉ、キラキラ！”みたいなのは普段避けてるんだ。キャリアのほとんどで、`export PS1=”\[\033[1;32m\][\t \u@\h \w]\\$\[\033[0m\] ”` っていうすごいシンプルなPS1を使ってたよ。過去にいくつかプロンプト試したけど大体イライラするか、役に立つ情報がなかった。でもStarshipはもう何年もハッピーユーザーだよ。自分が特に気にするものだけ表示するように設定をいじったんだ。超速いしね。" userName="Twirrim" createdAt="2025/06/24 18:34:43" color="#38d3d3">}}




{{<matomeQuote body="これはコンピューティング環境全般に言えるかもね。若い頃はGentooでOSをソースから全部ビルドしたり、CPU特有のフラグとか最適化しまくってた。ウィンドウマネージャー（fwvm2だったかな？）とか.bashrcも細かく設定してたし、もちろんカスタムプロンプトもね。こういう過剰最適化の沼は良い学びだと思うけど、木工に似てるかも。最初はツールの作成や研磨に時間を費やすけど、いつか本番の仕事をしなきゃいけなくなって、ツール作りは週末に回るんだ。今もLinuxは好きだけど、今はDebianとKDEを使ってる。もう「自由時間」なんて無いし、最適な環境より作業を進める方が大事なんだ。" userName="bityard" createdAt="2025/06/24 17:11:01" color="#38d3d3">}}




{{<matomeQuote body="僕はまだ自由時間あるけど、デフォルト設定とか安定したソフトに移行したのは、理由もなくワークフローが変わるのに耐えられなくなったからだよ。最新機能なんて滅多にいらないし。動くものがちゃんと動いて、しばらくそのまま動いてくれること。これってコンピューティングの基本だよね。" userName="skydhash" createdAt="2025/06/24 18:15:26" color="">}}




{{<matomeQuote body="反論としてだけど、僕がプロンプトに加えた中で一番役に立ったカスタマイズは、直前のコマンドの終了ステータスを表示することだよ。失敗したって分かるのは便利なサインで、特に失敗しても何も出力しない時とかね。失敗した時だけ表示するから、上手くいってる90%の時間はごちゃごちゃしないんだ。<br> » true<br> » false<br> (last command returned 1.)<br> » <br>信号も翻訳して「last command exited on SIGSEGV」とか表示できるよ。「成功」で終わるのにエラーを出すプログラムの時も助かるね。" userName="deathanatos" createdAt="2025/06/24 17:13:36" color="#ff5733">}}




{{<matomeQuote body="おお、それってどうやって自動化してるの？ 長いタスクには「＆ say done | say failed」って自分で付け足すようにしてるんだけど、忘れちゃうんだよね。" userName="tclancy" createdAt="2025/06/24 19:12:58" color="">}}




{{<matomeQuote body="これがzshで書いてた時の僕のプロンプトだよ。https://github.com/thanatos/dotfiles/blob/master/shell/zsh/p...記事みたいに、それからRustに移ったんだ。https://github.com/thanatos/dotfiles/blob/master/zsh-prompt-...記事と違って、僕はzshのmodule機能を使ってて、Rustはシェルメモリに直接ロードされる.soになってると思う。（つまり、プロンプト計算のために別のRustバイナリをfork/execする必要はないんだ。zsh自体はfork-but-not-execしてるかもしれないけどね。）後者の方がもちろん、ある意味複雑だけどね。（特に仕事で使うしかないmacOSだと、dlopen(2)がマジで狂ってるし。）" userName="deathanatos" createdAt="2025/06/25 04:17:23" color="#ff33a1">}}




{{<matomeQuote body="Bashでは、`$?`が直前のコマンドの終了コードになることと、`$((x))`が三項演算子`x?y:z`を含む整数式を評価することを覚えておけば十分だよ。<br>例えば、次の設定は終了コードがゼロなら緑、そうでなければ赤で表示するんだ。<br>`PS1=’\[\e[$(($??31:32))m\]$? \[\e[39m\]’`" userName="teo_zero" createdAt="2025/06/24 20:38:24" color="#ff5c5c">}}




{{<matomeQuote body="終了コードの機能はすごく気に入ってるよ。Starshipだと設定次第でさりげなく色の変化で教えてくれるんだ。<br>俺のシェルのカスタマイズは、ほとんどStarshipを放り込んで（仕事のUbuntuサーバー、家のmacOS、個人のNixOS/Fedoraとかで全部同じ見た目になるからね）、一度書いた`starship.toml`をそのままにしてるだけ。" userName="__float" createdAt="2025/06/24 18:33:47" color="">}}




{{<matomeQuote body="これと、コマンドが10秒以上かかった場合の実行時間表示が、追加すると一番便利な機能だと思う。" userName="wocram" createdAt="2025/06/25 02:28:13" color="">}}




{{<matomeQuote body="それ便利だね。自分でコード書いたの？それともohmyzshのプラグインとか？" userName="m000" createdAt="2025/06/24 18:40:38" color="">}}




{{<matomeQuote body="自分でコード書いたんだ。（詳細はこれ見てね：https://news.ycombinator.com/item?id=44373575）" userName="deathanatos" createdAt="2025/06/25 04:17:45" color="#38d3d3">}}




{{<matomeQuote body="個人的には、プロンプトのカスタマイズにはだんだんあまり興味がなくなってきたんだ。<br>前は色々詰め込んだクリスマスツリーみたいなプロンプトを試したけど、結局飽きて、今はこれだけ表示するように落ち着いたよ。<br>・前のコマンドの終了ステータス（ゼロ以外の場合）<br>・現在時刻（HH:MM、24時間形式）<br>・user@host（euid 0なら赤、それ以外は緑）<br>・現在のディレクトリ（パスが3階層以上の場合は短縮、ホームディレクトリは認識）<br>・現在のディレクトリのフルパス（ターミナルウィンドウのタイトルに表示）<br>・Gitリポジトリ内にいるなら現在のブランチ名<br>・プロンプト文字（ドルマーク/ハッシュマーク）<br>これらの要素は全部俺にとって意味があって、情報からすぐに状況が分かったり、何かおかしいことに気づいたりできるからね。<br>Starshipみたいな超多機能プロンプトプログラムでも多分上記はできるだろうけど、外部依存を最小限にして慣れたプロンプトが欲しいから、全部Bashで書いて、Zshや色々なKorn shellに移植したんだ。結構難しかったよ。多分Xenix 286では動かないだろうけど、それ以降なら動く可能性は高いね。" userName="inejge" createdAt="2025/06/24 19:38:09" color="#38d3d3">}}




{{<matomeQuote body="それって多分Fishシェルのデフォルトプロンプトにそっくりだと思うんだけど。" userName="eddd-ddde" createdAt="2025/06/24 22:41:40" color="">}}




{{<matomeQuote body="それ結構良さそうだね。時間は別になくてもいいけど、他の要素は好きだなあ。" userName="dajt" createdAt="2025/06/25 11:39:22" color="">}}




{{<matomeQuote body="俺は“すごくシニア”（つまりUnix使い始めて数十年レベル）だけど、Starshipのミニマルモードが好きだよ。20年くらい使ってたZshの他の機能よりずっと手間がかからないからね。JavaScriptとか、ログメッセージに絵文字使うような若い子からの返信を期待してたわけじゃないだろうけど、ごめんね :)" userName="rcarmo" createdAt="2025/06/24 17:53:01" color="">}}




{{<matomeQuote body="俺も同じ。1989年から何らかのUnixを使い続けてるけど、概してミニマリズムとシンプルさが好きだね。でも、Starshipみたいに“意見のある良いデフォルト”も好きだよ。（だからFishに乗り換えたんだ。BashやZshは、基本的な定型的なことでも設定が大量に必要なのに、Fishは設定なしでもうまくやってくれるからね。）" userName="dmd" createdAt="2025/06/24 23:50:25" color="#ff33a1">}}




{{<matomeQuote body="俺はベテランだよ。この業界で25年近く働いてて、その大半は*nixシステムを扱ってる。普段は「わーい、キラキラだー」みたいな新しいものは避ける方なんだけどさ。<br>過去にプロンプトは色々試したけど、大体イライラするか、役に立つ情報が表示されなかったりしたんだ。でもStarshipはもう数年使ってるよ。必要なものだけ表示するように設定を調整した。マジで超速いね。" userName="Twirrim" createdAt="2025/06/24 18:31:53" color="#ff5c5c">}}




{{<matomeQuote body="Linux歴26年。Starshipは使ってるけど、主な理由は複数のKubernetesクラスターを管理してて、kubeコンテキストが目の前にあるのが超重要だからなんだ。デフォルト設定は、kube関連を有効にする以外はほとんどいじってない。<br>そうは言っても、俺のvimrcは2行だけで手で設定できるし、bash configはDebianのデフォルトから変えてない。fish configもいくつか関数を追加しただけのほぼ素の状態。ssh configはかなりカスタマイズしてるけど、それは主にどのホストでどのキーやユーザー名をデフォルトにするかって辺り（これも怠惰が理由）。" userName="natebc" createdAt="2025/06/24 20:46:09" color="#ff33a1">}}




{{<matomeQuote body="これ、まさに俺だわ。必要なのは現在のディレクトリと、最後のコマンドのステータスの色だけ（失敗は赤、成功は緑）。それだけ。<br>gitがあるディレクトリでは現在のブランチも表示されるけど、それは自分が何をしてるか確認するためだけで、大体は使ってるエディタで確認できるから、なくてもいいくらいなんだ。" userName="deafpolygon" createdAt="2025/06/26 07:36:59" color="">}}




{{<matomeQuote body="仕事で40年近く、俺のPS1は’$ ’でPS2は’＞ ’だったよ。<br>数年前に、現在のディレクトリも表示するようにしたけどね。<br>入力するたびにプロンプトを表示するために子プロセスを起動するっていうのは、どうも正しくない気がするな。" userName="dajt" createdAt="2025/06/25 11:34:02" color="">}}




{{<matomeQuote body="大丈夫、そうはならないよ。この前uvを試したけど、プロンプトを描画するためだけに子プロセスを走らせるのは、もう歳かなって思うね。<br>gitブランチなんて、自分がどこにいるか分かってるべきだし、分からなくても簡単なコマンド一つで確認できるしさ。" userName="dajt" createdAt="2025/06/25 11:41:30" color="">}}




{{<matomeQuote body="Starshipは、俺がシェルプロンプトを本格的に変えた最初のツールだよ。30年近くぶりだね。" userName="NelsonMinar" createdAt="2025/06/24 21:01:36" color="#45d325">}}




{{<matomeQuote body="文句言うやつは無視しよ。俺もターミナルはごちゃごちゃしてないミニマルが好きで、余計なものはいらない派だけど、状況に応じて必要な情報を出すのが超重要。Starshipはそういう設定ができるんだ。<br>デフォルトだとプロンプトは現在のディレクトリと時間、それに’%’だけ。でもKUBECONFIGとかOS_CLOUDとか環境変数で設定したら、詳細な情報が表示される。言語も、GoとかPythonとかのバージョンを色々な要素に基づいて自動で表示してくれる。これ全部自分でコントロールできるんだよ。<br>Starshipを好きな理由は、これがすごく簡単に設定できること。面倒なZshの設定とか追加プラグインと格闘するよりずっと楽。起動時のオーバーヘッドもほとんどないし、evalcacheを使えば特にね。<br>https://github.com/mroth/evalcache" userName="yankcrime" createdAt="2025/06/24 14:46:06" color="#ff33a1">}}




{{<matomeQuote body="オレも常に表示する情報は少なくて、必要な時だけ出るようにしてるんだ。普段と違うホストにいる時にホストを表示したり、自分じゃないユーザーの時にユーザーを表示したり、そんな感じ。" userName="wocram" createdAt="2025/06/25 02:31:09" color="">}}




{{<matomeQuote body="Starshipファンだよ。いくつかコメントさせて。まずパフォーマンスがマジ速い。Rust製でコンパイルされるから、python-based powerlineやohmybash、ohmyzsh、spaceshipよりずっと速い。zsh, bash, sh, fishだけじゃなくMS Windows CMDやPowershellでも使えるのがすごい。他のプロンプトツールは同時に全部はできないと思う。しかも設定ファイルは1つで全部制御できる。デフォルトはあくまでデフォルト。情報多すぎ？変えられるよ。アイコン嫌い？消せるよ。100近くのモジュールがあって、カスタマイズ性はほぼ無限大だよ。" userName="bullman" createdAt="2025/06/24 15:03:43" color="#38d3d3">}}




{{<matomeQuote body="なんでこれ”ミニマル”って言うわけ？機能もりだくさんだし、使う人みんなデカいプロンプトにしてるじゃん。オレのシェルプロンプトは`: ▶` これだけだよ。ミニマルにするのにこんなプロンプトカスタマイズフレームワークなんていらないでしょ。" userName="JimDabell" createdAt="2025/06/24 12:15:21" color="#ff5733">}}




{{<matomeQuote body="他のシェルやプロンプトに比べて、少し複雑なことしたい時の設定は本当に分かりやすいし、むしろミニマルだよ。" userName="slightwinder" createdAt="2025/06/24 12:37:36" color="">}}




{{<matomeQuote body="そうそう、これミニマルじゃなくてマキシマリズムだよね。情報も文字も多いし。マキシマリストプロンプトだって開き直ればいいのに。" userName="Cthulhu_" createdAt="2025/06/24 12:21:19" color="">}}




{{<matomeQuote body="いくらでも小さくできるよ。全機能オフにできるんだ。オレのは今こんな感じで比較的ミニマルだよ。（設定例は省略）" userName="Twirrim" createdAt="2025/06/24 18:38:52" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="オレのはもっと細い矢印だけだよ。マジでシンプルでミニマル！`PROMPT=’%{%F{red}%}%~ %{%F{yellow}%}% › %{%F{reset_color}%}%’`" userName="Brajeshwar" createdAt="2025/06/24 12:42:55" color="">}}




{{<matomeQuote body="インストール一発で終わって、その後いじる必要ないのがマジ助かる。そんな暇ないけど、NodeのバージョンとかRustのバージョンは知りたいんだよね。手軽に情報得られるのが最高。" userName="Aeolun" createdAt="2025/06/24 12:52:38" color="#ff5733">}}




{{<matomeQuote body="なんか見落としてる？サイト見たけど、これ使いたい理由が全然分かんないんだけど。例を見逃したのかな？今日一日中ヘイゼンバグ追いかけてたからかも。オレは今のプロンプト気に入ってて、コマンド結果とかuser@host:currentDirectory、gitブランチとか見せてくれるんだよね。（色分けの説明省略）オレみたいなのがターゲットだと思うのに、使うメリットが全然見えない。" userName="PeterWhittaker" createdAt="2025/06/24 19:25:31" color="">}}




{{<matomeQuote body="数年前Starship試したけど、ごてごてしてて遅かったんだよね。今はマシになってるかもだけど、fish用の素晴らしいHydro[0]を使い続けてる。これはミニマルなのに終了コードとかgitの状態とかコマンド時間とか、必要な情報が出る。すごく速いし非同期だから入力もブロックしない。コードも132行だけ。fish使っててこの機能セットが好きなら、ぜひ試してみて。コードを自作のベースにするのも良いよ。<br>[0]: https://github.com/jorgebucaran/hydro<br>[1]: https://github.com/AlDanial/cloc" userName="Tmpod" createdAt="2025/06/24 14:54:23" color="#785bff">}}




{{<matomeQuote body="シェルがgit statusを表示するのに100msかかるのって、使わないのに無駄じゃん？流れが滞る見えない税金だよ。端末は飾りじゃなくて、反応良い記憶ツールであるべき。コード実行速度は気にするのに、タイピング遅延は気にしないのおかしくない？" userName="b0a04gl" createdAt="2025/06/24 12:32:05" color="">}}




{{<matomeQuote body="Starshipは超速いよ！データ集めるのに数ミリ秒だって（設定で収集項目も減らせるし）。他の試したやつとは全然違うね。他のやつは100msくらいの遅延があってイライラしたからさ。" userName="Twirrim" createdAt="2025/06/24 13:19:17" color="#ff33a1">}}




{{<matomeQuote body="システムにだいぶ左右されるね。WindowsでMSYS2経由で使ってみたけど、Windowsのオーバーヘッド（プロセス起動かな？）のせいでStarshipがめっちゃ遅くなったんだ。アドオンいくつか無効にしてもダメだったし、結局使うのやめちゃったよ。" userName="Night_Thastus" createdAt="2025/06/24 13:56:33" color="">}}




{{<matomeQuote body="Windowsのファイルシステム性能は、Unix前提のツールだと最悪だよ。特に会社の環境だと、セキュリティソフトがファイルアクセス全部監視するから、もっとひどくなる。個人的には、WindowsでGit対応プロンプトはおすすめできないね。" userName="pxc" createdAt="2025/06/24 20:43:06" color="">}}




{{<matomeQuote body="Windowsってどうにもならないかも。アンチウイルスかな？でも、ロード時間の半分くらいは最低でも1秒かかる気がするし、これどうしようもないよね。git showとかgit diffでGitが固まることもあって、ターミナル強制終了するしかないんだ。" userName="lukeschlather" createdAt="2025/06/24 14:42:28" color="">}}




{{<matomeQuote body="WindowsでStarship使ってるけど、すごく良いよ！StarshipとGitはWindowsネイティブ版をPowerShellで使ってるんだ（wingetで入れたりアプデしたり）。MSYS2みたいなエミュレーションはやっぱ避けるのが吉。git show/diffで固まるのは、やっぱアンチウイルスかHDDやばいか、その合わせ技っぽいね。" userName="WorldMaker" createdAt="2025/06/24 15:30:06" color="#ff5c5c">}}




{{<matomeQuote body="もしくは、単にGitリポジトリがめっちゃデカいのかも。Starshipにはタイミング測るコマンドがあってさ、Linuxで（うざいアンチウイルス付き）試したら、普通のディレクトリは数ミリ秒なのに、Linuxカーネルみたいにデカいとこだとgit statusが115msだったよ。これが普段見る中で一番遅いパターンかな。" userName="Twirrim" createdAt="2025/06/24 16:23:13" color="#38d3d3">}}




{{<matomeQuote body="Starshipは、タイミングの制限も設定できるのがマジ良いね！遅いやつは表示しないだけだから、Starshipが長時間固まるのはほぼ見たことないな。たまーに（新しいシェル起動とか、別のウィンドウでコンパイル中とか）、「Gitコマンドがタイムアウトしました」って警告出てgit statusが次のプロンプトまで出ないことはあるけど、別にそれで困らないよ。" userName="WorldMaker" createdAt="2025/06/24 18:04:05" color="#ff5c5c">}}




{{<matomeQuote body="プロンプト表示に100msなんて気にしても無意味だよ。コマンドなんて非同期でどんどんタイプして実行すれば良いんだから。前のコマンドがちょっと時間かかるときでも、次何打つか分かってるならいつもそうしてるよ。" userName="eddd-ddde" createdAt="2025/06/24 23:11:44" color="">}}




{{<matomeQuote body="コード実行速度は最適化するのに自分のタイピング遅延は気にしないって、CPUと人間の脳じゃ100msの価値全然違うんだよな。<br>毎回全部ログ出すのはやりすぎだけど、ちょっとした便利さは人間にとっての数ミリ秒くらいかける価値はあるって。Gitブランチ出すのに100msかかって「流れ」が崩れるって言うのに、自分でコマンド打って時間かかるのは崩れないって、どういうこと？<br>これは肥大化と使いやすさのバランスで、どっちかの極端は逆効果だと思うな。" userName="OptionX" createdAt="2025/06/24 14:05:52" color="#ff5c5c">}}




{{<matomeQuote body="遅延、確かにイラつくよね。俺はパッチ当てたkittyターミナル使ってるんだけど、Starshipプロンプトをvimとかemacsみたいに下の方に移動させてるんだ。モデルラインの更新が非同期だから、デカいgitリポジトリでもプロンプトが超サクサク動くよ。難点はkittyにパッチ当てなきゃいけないのと、Linux以外でテストしてないってことかな。<br>https://github.com/mbachry/kitty-modeleline" userName="gobblegobble2" createdAt="2025/06/24 15:25:54" color="#ff5733">}}




{{<matomeQuote body="Starshipみたいなプロンプトツールって、TUI機能使ってユーザーにプロンプト返した後に表示内容を編集できないのかな？そうすればkubectlとかgit、aws cliが200msかかっても、そのコマンドの出力データはプロンプトが出てから少し遅れて表示されるから、ユーザーはプロンプトが出るのを待ってる気にならないでしょ。" userName="infogulch" createdAt="2025/06/24 15:24:25" color="">}}




{{<matomeQuote body="反論ね：git statusを常に頭で覚えとかなきゃいけないとか、コマンド打って確認する必要がある方がよっぽど気が散るよ。数ミリ秒の遅延じゃなくて、文脈切り替えを避けるために最適化すべきだね。ちなみに、俺はzshのデフォルトからStarshipに変えたけど、体感できる違いは全くなかったよ。でも、git commitをミスった時は確実に気付くけどね！" userName="perrygeo" createdAt="2025/06/24 15:36:36" color="#38d3d3">}}




{{<matomeQuote body="＞ コードの実行時間は最適化するけど、自分のタイピング遅延はしない<br>フレームワークの階層があるってことは、むしろ逆じゃない？" userName="account42" createdAt="2025/06/24 15:37:30" color="">}}




{{<matomeQuote body="もしVS CodeとかGitHubオンラインエディタみたいに、キーボード押してから画面に文字が出るまでの遅延が数万ミリ秒もあるのに慣れてるなら、100msなんて超高速に感じるだろうね。" userName="bregma" createdAt="2025/06/24 13:50:47" color="">}}




{{<matomeQuote body="1秒には1000ミリ秒あるよ。もしVS Codeで1文字表示するのに10秒以上かかってるなら、Commodore 64からそろそろ買い替えた方がいいかもね。" userName="dminik" createdAt="2025/06/24 14:21:06" color="">}}




{{<matomeQuote body="俺は何年もStarshipユーザーで超満足してるよ（長い間oh-my-zsh使ってたけどね）。個人的なキラー機能はstarship.tomlファイルかな。昔のややこしいbashエスケープシーケンスでプロンプトをいじる時代は終わったね。ちゃんとドキュメント化されてて理解しやすい形なんだ。だからマキシマリストでもミニマリストでも、調整するのが簡単なんだよ。マジ最高！" userName="xavdid" createdAt="2025/06/25 06:35:10" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
