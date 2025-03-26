+++
date = '2025-03-19T00:00:00'
months = '2025/03'
draft = false
title = 'find完全終了のお知らせ!? 超速くて使いやすい代替ツール「fd」が話題に'
tags = ["fd", "find", "コマンドラインツール", "ターミナル", "ユーティリティ"]
featureimage = 'thumbnails/color3.jpg'
+++

> find完全終了のお知らせ!? 超速くて使いやすい代替ツール「fd」が話題に

引用元：[https://news.ycombinator.com/item?id=43410692](https://news.ycombinator.com/item?id=43410692)

{{<matomeQuote body="sharkdpさんの大ファン！bat, fd, hexyl, hyperfine、毎日使ってるよ。マジ感謝！エンジニアのみんな、月10ドルずつでも良いから、sharkdpさんみたいな才能ある開発者を支援したら、インターネットはもっと良くなると思うんだ。素晴らしいツールがたくさんあるし、みんなでエコシステムをサポートしようぜ。" userName="snide" createdAt="2025-03-19T13:36:46" color="#785bff">}}

{{<matomeQuote body="え、batとfdとhyperfineって全部同じ人が作ってるの？！マジか、どれもめっちゃ愛用してるんだけど。" userName="seafoamteal" createdAt="2025-03-19T14:08:23" color="#785bff">}}

{{<matomeQuote body="David PeterはAstralで働いてるみたい。ripgrepのAndrew Gallantもいるし。RustのCLIツールにとって夢のチームじゃん。" userName="jessekv" createdAt="2025-03-19T15:29:58" color="#38d3d3">}}

{{<matomeQuote body="Andrew Gallant、別名BurntSushiのxsvにはマジで感謝しかない。長いファイルをN行ずつのチャンクに分割するのに、他にこんな便利なツールないもん。[1]標準のsed/head/tailじゃ無理だったんだよね。rust-csvライブラリのラッパーであるコマンドラインユーティリティを使ってたんだけど、RustでCSVパースが必要なら、このライブラリ超おすすめ。" userName="1-more" createdAt="2025-03-19T16:07:43" color="#ff5733">}}

{{<matomeQuote body="watch ”xsv select ... | xsv table”を何時間も見てたわ。" userName="singhrac" createdAt="2025-03-19T18:59:16" color="">}}

{{<matomeQuote body="CSV処理自体はそんなに変わらないかもしれないけど、xsvリポジトリはしばらくメンテナンスされてないみたい。" userName="0cf8612b2e1e" createdAt="2025-03-19T19:32:18" color="">}}

{{<matomeQuote body="これはアクティブなフォークだよ: https://github.com/dathere/qsv" userName="chrishill89" createdAt="2025-03-19T20:25:54" color="">}}

{{<matomeQuote body="フォークだって知らなかった。qsvはマジで最高。4Gbのファイルをたくさん解析して、マジで助かった。" userName="_blk" createdAt="2025-03-22T06:14:53" color="#ff33a1">}}

{{<matomeQuote body="DSQってのもあるよ。独自の言語じゃなくてSQLを使うんだ。<br>https://github.com/multiprocessio/dsq" userName="wooptoo" createdAt="2025-03-22T13:58:06" color="">}}

{{<matomeQuote body="ソフトウェアが機能的に完成してて、速くて、正常に動作してるなら、他に何を変える必要があるの？" userName="barotalomey" createdAt="2025-03-19T19:51:55" color="#ff5733">}}

{{<matomeQuote body="えーと、未解決の問題が131件、PRが30件以上もあるってことは、みんな何かしら変更を望んでるってことだよね。作者さんを批判するつもりはないよ。僕なんかよりずっと生産的だし。でも、xsvは後回しにされてるみたいだね。オープンソースだから、作者さんは好きなように時間を使えるし、僕らは何も要求できないけどね。" userName="0cf8612b2e1e" createdAt="2025-03-19T20:30:25" color="">}}

{{<matomeQuote body="まさに言おうと思ってたんだけど、fdとbatの作者は、burntsushi (xsv, rg)を思い出すね。*nixのコマンドラインのエコシステムに多大な貢献をしてるって意味で。" userName="danso" createdAt="2025-03-19T16:02:50" color="#785bff">}}

{{<matomeQuote body="`uv`を作ったAstralと同じ人たち？マジか、この人たちは「物事をめっちゃ速くする」ことに特化してるんだね！" userName="tandr" createdAt="2025-03-20T02:31:33" color="">}}

{{<matomeQuote body="ちょっと話題がずれるけど、Astralはどうやってお金を稼いで開発者を養ってるんだろう？" userName="kiney" createdAt="2025-03-19T18:42:45" color="">}}

{{<matomeQuote body="Astralは主にベンチャーキャピタルから資金提供を受けてるんだ。トップのCharlieは、Astralのオープンソースツールとうまく連携できるサービスを開発して販売したいって何度か言ってたよ。でも、具体的なことはまだ何も決まってないし、発表もされてないけどね。" userName="Narushia" createdAt="2025-03-19T20:33:51" color="#785bff">}}

{{<matomeQuote body="良いユーティリティソフトの書き方のチュートリアルを書くか、教えるべきだよね。" userName="agumonkey" createdAt="2025-03-19T14:23:20" color="">}}

{{<matomeQuote body="彼のウェブサイトによると、やってるみたいだよ。<br>https://shark.fish/rustlab2019" userName="seanw444" createdAt="2025-03-19T15:00:43" color="">}}

{{<matomeQuote body="https://github.com/sharkdp さんだね" userName="gjvc" createdAt="2025-03-19T18:07:44" color="">}}

{{<matomeQuote body="完全に同意だよ。fdみたいなツールがもっと広まるといいね！うちらは前にfdの開発を支援したことがあって、たまにだけどTerminal Troveでターミナルツールの作者さんたちを支援してるんだ。今はzellijを支援してるから、ぜひチェックして応援してあげて！" userName="terminaltrove" createdAt="2025-03-19T16:14:19" color="#38d3d3">}}

{{<matomeQuote body="Terminal Troveって知らなかった。めっちゃ役立つターミナルツールを集めててすごいね。これ、HNで別途投稿する価値ありそう。" userName="wanderingmind" createdAt="2025-03-19T22:28:24" color="#45d325">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="zellijにはマジで同意。オレはずっとscreen使ってて、その後tmux使ってたんだけど、zellijはなんかシックリくるんだよね。マジで最高。" userName="kstrauser" createdAt="2025-03-19T18:35:05" color="#45d325">}}

{{<matomeQuote body="Zellijとtmuxの何がそんなに違うの？ゲームチェンジャーって感じ？" userName="aaplok" createdAt="2025-03-19T20:35:33" color="">}}

{{<matomeQuote body="他のプロジェクトと似てて、Zellijは初期設定がマジで良いんだよね。初めてZellijを起動すると、やりたいことのメニューが全部出てくる。あと、マウスホイールでのスクロールがデフォルトでサポートされてて、しかもほぼ100%ちゃんと動くのがデカい。tmuxとかscreenでできることが全部できるかは分からんけど、オレがやりたいことは全部できるし、設定もいらない。" userName="kstrauser" createdAt="2025-03-20T04:18:52" color="#785bff">}}

{{<matomeQuote body="へー、面白いね。オレがZellijを試したときは、メニューが多すぎてウザく感じたんだよね。tmuxとかscreenのミニマルなデザインの方が好き。最初は良いのかもしれないけど、ずっと使ってるとclippyみたいに邪魔にならないかなって思った。まあ、この機能がtmuxより優れてるって思う人がいるのも分かる。ソフトウェアの多様性って大事だね。" userName="aaplok" createdAt="2025-03-20T10:16:23" color="#38d3d3">}}

{{<matomeQuote body="それ、めっちゃ分かるわ。オレもEmacs使うけど、ツールバーとか全部オフにしてるし。tmuxヘビーユーザーってわけじゃないんだ。リモートマシンでセッションを維持したり、タブを切り替えたりするくらいかな。tmuxでそれ以上のことをしようとすると毎回マニュアル読まなきゃいけないけど、Zellijならメニューバーで簡単に発見できる。<br>結論：その通り！両方あって良かった！" userName="kstrauser" createdAt="2025-03-20T14:26:49" color="#45d325">}}

{{<matomeQuote body="Zellijの唯一気に入らないデフォルト設定は、ctrl-qでインスタンス全体が終了すること。" userName="joshbaptiste" createdAt="2025-03-22T14:05:22" color="">}}

{{<matomeQuote body="作者を特定してくれてありがとう。fdとbatの大ファンだけど、同じ人が作ったって知らなかった。他のツールもチェックしてみよう。" userName="jhbadger" createdAt="2025-03-19T15:24:23" color="#785bff">}}

{{<matomeQuote body="numbatもチェックしてみてよ。マジでヤバいから。" userName="mgrandl" createdAt="2025-03-19T14:37:00" color="#45d325">}}

{{<matomeQuote body="興味ある人のためのリンク：https://github.com/sharkdp" userName="stared" createdAt="2025-03-19T15:16:47" color="">}}

{{<matomeQuote body="おれが使ってるリポジトリのスポンサーを簡単に見つけられる方法があればいいのになー。weztermとかatuinみたいな、プロジェクトの依存関係じゃないけど毎日使うツールとか。" userName="numbers" createdAt="2025-03-19T18:51:17" color="">}}

{{<matomeQuote body="オープンソースにお金を出すのは当然だよね（別のスレッドからframasoftをスポンサーした）。trillonaireやbillionaire企業が、自分たちが使ってるフリーソフトをどれだけスポンサーしてるかも考えようぜ。" userName="makapuf" createdAt="2025-03-19T19:29:48" color="">}}

{{<matomeQuote body="みんなterminaltrove.comを時々チェックすべきだと思う。find -> fd、time(ランタイム比較) -> hyperfine、grep->ripgrep、asciinema + .gif変換 -> t-rec[1]、手動でのconventional commits作成 -> koji[2]みたいな感じで、よく使うツールの簡単な代替品が見つかるよ。<br>[1]https://terminaltrove.com/t-rec/<br>[2]https://terminaltrove.com/koji/" userName="alkh" createdAt="2025-03-19T15:24:32" color="#38d3d3">}}

{{<matomeQuote body="ライセンスでフィルタリングできると嬉しいな。できる限り非(A)GPLツールは避けたいんだよね。" userName="tmtvl" createdAt="2025-03-20T14:05:51" color="">}}

{{<matomeQuote body="kojiは良いと思うけど、67桁の幅にこだわりたいんだよね。たぶんkojiじゃ無理？代わりにgit-cola使ってる。" userName="johnisgood" createdAt="2025-03-19T17:26:40" color="">}}

{{<matomeQuote body="わかる。おれも同じ問題がある。koji -> gitlint -> git commit --amend --editって感じで幅の問題を修正してる。" userName="alkh" createdAt="2025-03-19T18:11:26" color="">}}

{{<matomeQuote body="kojiの代わりに`aider --commit`を使ってる。" userName="imoreno" createdAt="2025-03-20T02:35:18" color="">}}

{{<matomeQuote body="fdとrgのフラグ、もうちょっとなんとかならんかなー。--typeとか、fdだとファイルの種類だけどrgだとMIMEタイプだったり。fdには--extensionがあるのにrgにはなかったりするし。どっちも使う人多いと思うから、似たような名前にしてくれたら嬉しいんだけどな。" userName="enricozb" createdAt="2025-03-19T15:33:10" color="">}}

{{<matomeQuote body="正直、POSIXツールから離れられない理由の一つがこれなんだよね。新しいツールとそのフラグを覚えるのが面倒くさくて。もう体が覚えちゃってるし。新しいツール使うより、今のツールで我慢しちゃうかな。" userName="hnlmorg" createdAt="2025-03-19T17:00:01" color="">}}

{{<matomeQuote body="ripgrep作者だけど、それには納得いかないな。sedの-iフラグ使ったことある？あれPOSIXじゃないんだよ。POSIXツールって言うけど、実際はスーパーセット使ってるでしょ。findの-Lとgrepの-Rみたいに、フラグもバラバラだし。fdとripgrepは-Lで統一してるから、よっぽどマシだよ。" userName="burntsushi" createdAt="2025-03-19T17:16:16" color="#45d325">}}

{{<matomeQuote body="＞ripgrep作者だけど、それには納得いかないな。sedの-iフラグ使ったことある？<br>あるよ。でも、そんなの例外じゃん。grepの話だし。sedは自分で作ったし。UNIXツールもめちゃくちゃだし。記憶の問題なのよ。新しいツールを覚える時間がないから。" userName="hnlmorg" createdAt="2025-03-19T18:13:51" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="まあ、そりゃそうかもね。ちょっと残念だけど、それもアリだよね。＞面倒くさい<br>って言ってたし、それもわかるよ。" userName="burntsushi" createdAt="2025-03-19T18:24:05" color="">}}

{{<matomeQuote body="うん、わかるよ。自分もオッサンでめんどくさがりだけど、新しいツール試す時間はあるかな。findって、一発で思った通りに動いたことないんだよね。何年も使ってるのに。ツールが悪いんじゃないかって疑うべきかもね。" userName="jrockway" createdAt="2025-03-20T04:17:39" color="">}}

{{<matomeQuote body="自分もオッサンでめんどくさがりだから、ezaとかbatとか新しいツール使ってるよ。なんで80年代のツールしか使えないみたいなことになってるの？" userName="alwillis" createdAt="2025-03-20T13:42:27" color="">}}

{{<matomeQuote body="残念じゃないよ。現実的なだけ。子供もいるし、オープンソースのプロジェクトもやってるし、フルタイムの仕事もしてるし。時間がないから、一番インパクトのあることに集中してるんだ。" userName="hnlmorg" createdAt="2025-03-19T18:29:13" color="">}}

{{<matomeQuote body="いやいや、めっちゃ残念だよ！新しいことを学ぶのは良いことだと思うんだよね。ローカル最適に陥りやすいし。自分も子供とか色々あるけど、時間見つけてやってるよ。tmuxとかzshとか。" userName="burntsushi" createdAt="2025-03-19T18:40:06" color="">}}

{{<matomeQuote body="君のシェルを学ぶ時間があるなら、ripgrepを学ぶ時間を作るよ！　https://murex.rocks<br>最近tmux control modeについて学んだよ。" userName="hnlmorg" createdAt="2025-03-19T18:42:04" color="#785bff">}}

{{<matomeQuote body="マジかよ、それフェアじゃなくね？ ripgrepはGNU grepと互換性のあるコマンドで、使い方も簡単だよ。でも、ちょっと時間かけてdotfilesの一部を移植してみた。<br>起動時間が結構かかるのが気になる。もしかして環境の問題かな？<br>＞ああ、新しいことを学ぶのは全然ウェルカムだよ。<br>え、さっきのコメントと矛盾してない？" userName="burntsushi" createdAt="2025-03-19T19:04:11" color="">}}

{{<matomeQuote body="起動時間の最適化はまだなんだ。インタラクティブシェルがメインだからね。PowershellとかJVMみたいな感じで、インタラクティブに使えば起動は一回だけだし。でも、改善の余地はあるかも。<br>＞え、さっきのコメントと矛盾してない？<br>そんなことないよ。新しいことを学ぶのは嫌じゃないけど、覚えちゃったツールの代わりは探したくないだけ。<br>とりあえずripgrep使ってみるよ。" userName="hnlmorg" createdAt="2025-03-19T19:17:51" color="">}}

{{<matomeQuote body="最初はシェルスクリプトから入るのが良いと思ったんだ。それからインタラクティブな使い方に移行する感じで。エラーメッセージはすごくいいね。<br>最近、標準じゃないシェルも検討してるんだよね。Bourne shellとその派生は好きじゃないけど、zshはまだマシかな。fish, nushell, oilsも候補だけど、nushellは前試したときなんか合わなかった。" userName="burntsushi" createdAt="2025-03-20T02:56:34" color="">}}

{{<matomeQuote body="シェルを変えるのは大変だよね。デフォルトのままなのも無理ないよ。ripgrepも最初は乗り気じゃなかったし。Murexとripgrepの交換はフェアじゃなかったけど、試してくれて感謝してるよ。" userName="hnlmorg" createdAt="2025-03-20T08:53:17" color="#45d325">}}

{{<matomeQuote body="ripgrepに置換機能があって助かる。sedの標準じゃないファイル内置換に悩まなくて済むし。MacにGNU sedをインストールすることもできるけど、どうせならripgrepの方が良いよね。" userName="ziml77" createdAt="2025-03-19T18:04:29" color="#ff5733">}}

{{<matomeQuote body="残念だけど、ripgrepは書き込みしないんだ。-r/--replaceオプションは出力だけを制御して、ファイルの中身は変えないよ。" userName="burntsushi" createdAt="2025-03-19T18:18:41" color="#ff5c5c">}}

{{<matomeQuote body="え、前はそれで置換できた気がしたんだけど、勘違いかな？ replaceオプションがあって嬉しかったのは覚えてる。<br>そうか、ripgrepが書き込みしないなら、ミスでファイルを壊す心配もないのか。" userName="ziml77" createdAt="2025-03-19T19:25:38" color="">}}

{{<matomeQuote body="ripgrepの出力をファイルに書き込むツール(rep-grep)と、fdの出力でファイル名を変更するツール(ren-find)を作ってるよ。" userName="robenkleene" createdAt="2025-03-19T20:11:31" color="#785bff">}}

{{<matomeQuote body="＞ripgrepが書き込みしないなら、ミスでファイルを壊す心配もないのか。<br>そう、まさにそれが理由。<br>-r/--replaceフラグはsedやawkの代わりになることもある。少なくとも俺はそう。" userName="burntsushi" createdAt="2025-03-20T01:45:34" color="#ff5733">}}

{{<matomeQuote body="sedは最悪のPOSIXツールのひとつだね。簡単そうに見えて、いつも期待通りに動かない。やりたいことに合わなかったり、そもそも対応してなかったり(特に複数行の置換とか)。sdに乗り換えたら、毎回期待通りに動くようになったよ。" userName="thiht" createdAt="2025-03-20T08:38:22" color="#785bff">}}

{{<matomeQuote body="ripgrepってマジでunixのツールボックスのめんどい問題を解決してくれてるよねー。ファイルの検索方法がいちいち違うの何なの？find -name -execとかfind -name | xargs -n 1とか？しかもファイル名にスペース入ってたらfind -name -print0 | xargsとか試さないといけないけど、-print0はPOSIXじゃないから一部のunixでは使えないし！locate vs slocate vs mlocateとかマジ勘弁！ファイル関係マジでクソ。" userName="ForTheKidz" createdAt="2025-03-20T02:20:05" color="#ff33a1">}}

{{<matomeQuote body="tab補完とtldrがあるじゃん。大体のケースはそれでカバーできるし、フラグ名見れば大体わかるし。CLIツールが優秀ならね。例えば”fd -e png -x optimize-png {}”とか簡単じゃん。fdの嫌なところは、”Downloads”の中身全部見たい時に”fd . Downloads”って書かないといけないところかな。パターン省略させてほしい。" userName="sweeter" createdAt="2025-03-19T23:57:59" color="">}}

{{<matomeQuote body="互換性維持してるからこそ問題が起きるんだよねー。fdとfind -typeは同じ意味だけど、この人は違う意味で使いたいんだもん。AI shell completion使ってるから、もっとスムーズだけどね。" userName="renewiltord" createdAt="2025-03-19T17:10:25" color="">}}

{{<matomeQuote body="fdとrg毎日使ってるけど、マジでこれイライラするんだよね。フラグが部分的に一致してたりするから、もっと混乱するんだよね。例えば、globパターンよく使うんだけど、fdとrgで-gフラグの挙動が違うし。fdの-gフラグは”full-path” globbingじゃないけど、rgの-gはそう（逆かも）。fdでrgみたいなglob使うには-pフラグも必要だし。rgも-p認識するけど、全然違う意味だし。今更互換性崩さずに直すのは無理だよね。" userName="derriz" createdAt="2025-03-19T21:41:59" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="難しいバランスだよね。--typeの例で言うと、rgとは一貫性がないけど、findとはほぼ一貫性がある。fdの--typeオプションはrgよりもfdの方が便利だし。grepするファイルをディレクトリやソケットに絞るのは意味ないけど、ファイル名検索とか特定のファイルを検索するなら便利だもん。rgの--typeオプションはfdだと、そこまで便利じゃないし。fdはファイル名に対してパターンマッチしてるから、拡張子を検索パターンに追加すればいいだけだし。--exyensionフラグもあるし。" userName="thayne" createdAt="2025-03-20T01:57:51" color="#785bff">}}

{{<matomeQuote body="フラグじゃなくてSQL使って覚えやすくしたよー。https://github.com/laktak/zfind" userName="laktak" createdAt="2025-03-19T23:26:46" color="">}}

{{<matomeQuote body="もしfd、bat、numbat、hexyl、hyperfineを試したいなら、Terminal Troveで簡単にインストールできるし、スクリーンショットも見れるよ！fdは[https://terminaltrove.com/fd/](https://terminaltrove.com/fd/)、batは[https://terminaltrove.com/bat/](https://terminaltrove.com/bat/)、numbatは[https://terminaltrove.com/numbat/](https://terminaltrove.com/numbat/)、hyperfineは[https://terminaltrove.com/hyperfine/](https://terminaltrove.com/hyperfine/)、hexylは[https://terminaltrove.com/hexyl/](https://terminaltrove.com/hexyl/)だよ。スクリーンショット付きでインストールできるように頑張ってるんだ。" userName="terminaltrove" createdAt="2025-03-19T21:42:16" color="">}}

{{<matomeQuote body="クールなサイトだね！スクリーンショットの代わりにasciicinemaを使うのってどうかな？君たちがやろうとしてることにピッタリだと思うよ。[https://asciinema.org/](https://asciinema.org/)" userName="andy_xor_andrew" createdAt="2025-03-19T23:15:56" color="#ff5733">}}

{{<matomeQuote body="このサイトのいくつかのツールをクリックしてみたけど、全部デモのGIFがあったよ。terminaltroveは、自分たちで作るんじゃなくて、プロジェクト自体から持ってきてるんじゃないかな。" userName="archon810" createdAt="2025-03-22T15:49:29" color="">}}

{{<matomeQuote body="もっといろいろツールを試してみたいなぁ。最近はmise（リストにもあるね）で全部インストールしてるんだ。miseコマンドがあると嬉しいな。「mise use -g fd」とか、レジストリにないツールなら「mise use -g cargo:xyztool」みたいなバックエンドの使い方とか。" userName="nchmy" createdAt="2025-03-20T18:27:47" color="#45d325">}}

{{<matomeQuote body="[https://github.com/xtermjs/xterm.js](https://github.com/xtermjs/xterm.js)みたいなのを使えば、TUIアプリのインタラクティブなセッションを見せられるかもね。" userName="d0mine" createdAt="2025-03-20T18:08:00" color="">}}

{{<matomeQuote body="良い提案だね！numbatとhyperfineは絶対試してみるよ（fdは毎日使ってる）。batは長いパイプ処理の最後に使うと便利かもね。xxdが好きだからhexylはパスかな。" userName="jwrallie" createdAt="2025-03-19T22:05:41" color="">}}

{{<matomeQuote body="bat、exa、fdみたいな最近のRust製のツールをなかなか使い始められない理由の一つは、オリジナルのオプションをほとんど覚えられないからなんだよね。<br>俺にとっては、オリジナルのツールのドロップイン・リプレースメントじゃないと、摩擦に見合わないんだ。VS Codeの中ではripgrepを使ってるけど、コマンドラインでは長年の筋肉記憶でvanilla grepを使ってるし。<br>とは言え、ツールが何語で書かれていようと、動けば気にしないよ。お気に入りのUnixツールの一つにGNU Stowがあるけど、Perlで書かれてるし。これらのRustツールがドロップイン・リプレースメントだとしても、手動でインストールしようとは思わないだろうな。ユーザーとしては、速度の向上やメモリ安全性は、あんまり重要じゃないんだ。<br>Goみたいにメモリ安全性が保証されてる言語もあるし、Goのパフォーマンスはツールには十分すぎるくらいだよ。しかも、コミュニティからの参加も得やすいし。だから、「Rustこそ救世主」みたいな話には、全然納得できないんだよね。<br>とは言え、macOSやUbuntuが、OGツールをRust製の代替ツールにそっくりそのまま置き換えたとしても、ワークフローが邪魔されなければ、文句は言わないと思うよ。" userName="rednafi" createdAt="2025-03-19T15:08:47" color="">}}

{{<matomeQuote body="＞One reason I haven’t picked up any of these newfangled Rust tools like bat, exa, or fd is that I can barely remember the options for the originals.”<br>まさにそれが新しいツールを使う理由だよ。特にfdはfindよりもずっと分かりやすい。UNIXを30年以上使ってるけど、findは全然ピンとこなかった。" userName="jhbadger" createdAt="2025-03-19T15:31:04" color="#45d325">}}

{{<matomeQuote body="告白すると、findを使ったことと言えば、ツリーを歩いてgrepにパイプして探してるだけだ。" userName="TylerE" createdAt="2025-03-19T23:36:32" color="">}}

{{<matomeQuote body="fdはほとんどのタスクで便利だけど、findより面倒なこともある気がする。例えば、キャッシュディレクトリの中のファイルを全部削除するのに、見つけられた一番簡単な構文はこれだった。<br>fd -t f -X rm {} \; ^ cache<br>これ、めっちゃ怖いんだよね。だからいつもfindに頼っちゃう。<br>find cache -type f -delete<br>これなら何十年も使ってるから安心できるんだ。fdでこれと同じくらい安心できる方法ってないかな？" userName="quinncom" createdAt="2025-03-20T02:09:47" color="">}}

{{<matomeQuote body="`fd -t f . cache -X rm --`って書くと、findでファイル検索して、`cache`ディレクトリの中から`.`にマッチするファイルを見つけて、見つかったファイルを引数にして`rm --`を実行するのと同じ意味になるよ。ファイル名が`-`で始まる場合でも、オプションとして解釈されないから安全だよ。絶対パスを使いたい場合は`-a`オプションも使えるけど、今の例だと相対パスでも問題ないと思うよ。" userName="orlp" createdAt="2025-03-20T07:41:15" color="#ff33a1">}}

{{<matomeQuote body="確かにその方が安全そうだね。`-X`オプションを最後に書けるって知らなかった。マニュアルには「Usage: fd [OPTIONS] [pattern] [path]...」って書いてあるから、パスは最後に書かないといけないと思ってた。" userName="quinncom" createdAt="2025-03-21T01:06:02" color="#ff5c5c">}}

{{<matomeQuote body="ツールがどの言語で書かれてるかなんてマジでどうでもいい。良いツールなら使えばいいんだよ。`fd`はほぼ全ての面で`find`より優れてる。デフォルト設定もイケてるし、めっちゃ速いし、オプションも簡単（忘れたら`cht.sh`使えばOK）。俺は`find`を使う理由がマジでない。新しいシステムに入ったら、まず`fd`をインストールする。" userName="whompyjaw" createdAt="2025-03-19T15:18:02" color="#ff5c5c">}}

{{<matomeQuote body="＞ツールがどの言語で書かれてるかなんてマジでどうでもいい。<br>いやいや、言語は結構大事だよ。`fd`や`rg`みたいなツールは、Javaで書かれた同じようなツールがJVMを起動する前に終わっちゃうことだってあるし。Java製のソフトはたくさんあるけど、CLIの世界では全然見かけないよね。<br>＞俺は`find`を使う理由がマジでない。新しいシステムに入ったら、まず`fd`をインストールする。<br>今度こそ`find $path -name '*.$ext' -exec nvim {} +`を置き換える方法を探してみるか…って、`fd -e $ext -X “nvim” “” $path`でいけるのか。" userName="syklemil" createdAt="2025-03-20T07:35:42" color="#45d325">}}

{{<matomeQuote body="ちょっと話が逸れるけど、`cargo`が優秀すぎて、最近はRust製のツールをインストールするのにパッケージマネージャーの代わりに使ってる。" userName="graynk" createdAt="2025-03-20T16:21:17" color="">}}

{{<matomeQuote body="＞オリジナルのツールのドロップインリプレースメントにならないものは、摩擦が大きくて使う価値がない。<br>”`uutils`プロジェクトは、一般的なコマンドラインユーティリティをRustで再実装するプロジェクトです。既存のユーティリティとの完全な互換性を維持しながら、モダンなユーティリティを目指しています。Linuxの必須ツールを全て置き換える予定です。” `uutils`はUbuntu 25.10で採用されるらしい。" userName="thesuperbigfrog" createdAt="2025-03-19T18:53:18" color="">}}

{{<matomeQuote body="全面的に賛成。Ubuntuがそれを採用して、互換性の問題が何も起こらないなら、みんなにとってWin-Winだね。" userName="rednafi" createdAt="2025-03-19T19:55:11" color="#45d325">}}

{{<matomeQuote body="それって、IPアドレスが“フレンドリー”とみなされない限り、基本的なコンピューターユーティリティを使えないってこと？Gnu utilsの方がアクセスしやすい（長期的には自由度が高い）気がする。" userName="d0mine" createdAt="2025-03-20T18:27:26" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
