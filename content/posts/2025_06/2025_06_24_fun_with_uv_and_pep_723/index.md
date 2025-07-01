+++
date = '2025-06-24T00:00:00'
months = '2025/06'
draft = false
title = 'uvとPEP 723の衝撃 virtualenvはもういらない？'
tags = ["Python", "パッケージ管理", "依存関係", "環境構築", "uv"]
featureimage = 'thumbnails/cyan2.jpg'
+++

> uvとPEP 723の衝撃 virtualenvはもういらない？

引用元：[https://news.ycombinator.com/item?id=44369388](https://news.ycombinator.com/item?id=44369388)




{{<matomeQuote body="uvのおかげでPythonスクリプトが仮想環境探し回らなくても「そのまま動く」感じになってきたの、マジ助かる！<br>あとは誰かシェルスクリプトでも同じことやってくんないかな。シェルの依存管理とか再現性とか、いまだに石器時代だよ。curl|bashで祈るか、README見て12ステップ手動でやって3つくらい依存が足りないか…なんてザラ。<br>まあNixとかあるけど、時間の概念とかNixマニュアルを超越してないと無理だし。Docker？ sed動かすためにLinuxディストロ丸ごとダウンロードとか冗談でしょ。<br>シンプルで宣言的、そして人間向けな中間点、絶対あるはずなんだよ。" userName="ACAVJW4H" createdAt="2025/06/24 20:14:50" color="">}}




{{<matomeQuote body="＞パッケージング、依存管理、再現性がシェルの世界では石器時代<br>個人的にはそれで良いと思うんだよね。そういうのが必要なスクリプトは、もうシェルを使うべき範囲を超えてるから。シェルスクリプトは小さく、20行くらいで十分。言語自体がクソすぎて、それ以上大きくする価値ないよ。" userName="bigstrat2003" createdAt="2025/06/24 20:27:47" color="">}}




{{<matomeQuote body="Nixはこのユースケースならそんな難しくないと思うな。他のディストロにインストールも簡単だし、入っちゃえばこんな感じに書けるよ。<br>#! /usr/bin/env nix-shell<br>#! nix-shell -i bash -p imagemagick cowsay<br># scale image by 50%<br>convert “$1” -scale 50% “$1.s50.jpg” &&<br>cowsay “done $1.q50.jpg”<br>NixOS全体とかパッケージングは確かに大変だけど、シェルスクリプトに使うだけなら悪くない。" userName="traverseda" createdAt="2025/06/24 21:07:48" color="">}}




{{<matomeQuote body="俺の経験則だけど、`if`文を書き始めたらそれはもうbashからPythonとかNodeに乗り換える時期なんだよ。`if`文の細かいニュアンスを毎回調べるなんて御免だね。" userName="xavdid" createdAt="2025/06/25 06:37:30" color="">}}




{{<matomeQuote body="シェルスクリプトの依存管理問題を解決できれば、新しい言語機能とかも使えるようになるし、POSIXとかの制約からも自由になれるんだよね。例えば、うちのチームが使うシェルスクリプトは、プラットフォームに関係なく全部GNU coreutilsを使ってる。sedの挙動の違いとか気にせず、GNU sed向けに書けば「そのまま動く」んだ。別にそれが絶対必要かって言うと違うけど、そういう制約なしで書けるのは気持ちいいよね！<br>もっとインターフェースがきれいなコマンドとか、統一されたシンタックスのコマンドを選べるようになる。<br>＞言語自体がクソすぎる<br>外部プログラム呼び出すなら、シェル以外にマシなのないんだよな。他の言語だとクソ面倒。まあそれはそれで良いのかもしれないけど、大きめのシェルスクリプトを他の言語で書き直すと、元の20行が400行になっちゃったりしてイライラするんだ。<br>君の言うこと、まあ同意するよ。POSIX系のシェルはシンタックス多すぎなのにパワー不足。でも俺が本当に欲しいのは「より良いシェル言語」なんだ。他のインタープリタ言語に置き換えるんじゃなくて。" userName="pxc" createdAt="2025/06/25 00:56:08" color="#ff5c5c">}}




{{<matomeQuote body="心を込めて言わせてもらうよ。俺のArch Linuxが壊れてNixを試したんだ。一番衝撃だったのはnix-shell（他のディストロでも使えるのは知ってるけど聞いて！）。一度きりのためにプロジェクトをインストールするのがマジクールなんだ。<br>デスクトップ録画したい？ 俺にとってはそんなに頻繁にやるタスクじゃないし、Archだとobsを依存としてシステムアップデートしなきゃいけないか、毎回アンインストールしなきゃいけないのが嫌だったんだ。ephemerality（一時性）って概念をNixで求めてたんだよ。新しいソフト試したり、ホームシステムをミニマルに保ちたいタイプだからね。最高！<br>nix-shell -p obs-studio & obs ってやるだけで完了だよ。正直Nixには惹かれるところがたくさんある。まだflake周りは全然だけど、サンドボックスとしてコード実行に使うアイデアをRedditで見つけて、これで何か面白いことやろうと思ってる。（Codapiみたいなの作りたい。Codapiの作者さん、もし読んでたら話したいです！）<br>まるでプラグアンドプレイみたいにできるソフトがある気がするんだ（HetznerがNixOSマシン提供するの想像してみて！ 今はまだ不安定らしいけど）。HetznerでNixOSマシンを使える方法ができれば、Dockerみたいな分離なしでDigital OceanのDroplets/プラグアンドプレイにめっちゃ近いのができる気がするんだ。DockerにはDockerのユースケースがあるだろうけど、Docker管理するよりNixの方が簡単だと個人的には感じてる。俺がNix使ってて感じてること言ってるだけだから、遠慮なく訂正してね。<br>あと機能的なLua（fxn Luaとかあるの？）からNixへのトランスパイラとかあったら良いな。システム管理をNixじゃなくてLuaで書きたいんだ。でもNixもまあ良いんだけどね！" userName="Imustaskforhelp" createdAt="2025/06/25 13:16:05" color="#ff5c5c">}}




{{<matomeQuote body="＞uvのおかげでPythonスクリプトが仮想環境探し回らなくても「そのまま動く」感じになってきた<br>うーん、最後にチェックした時、uvは`~/.local/share/uv/python/cpython-3.xx`にインストールされるんだけど、ミニマルなDockerみたいに他のPythonがない環境にグローバルにはインストールできないんだよね。<br>だから基本的に、結局venvの中で動いてるってこと。" userName="est" createdAt="2025/06/25 05:05:22" color="">}}




{{<matomeQuote body="`if`文にどんなニュアンスがあるっていうんだ？<br>例えばbashの`if`文は、単にコマンドを実行して、その終了ステータスに基づいて2つのコードブロックのどちらかを実行するだけだろ。終了ステータスが真なら`then`以降を実行、偽なら`else`以降を実行する。（`elsif`は確かに余計なシンタックスだけど—`else`の中に`if`が入ってるだけならもっと良かった。）これは他のプログラミング言語とかなり似てるし、そんなに覚えることないように見えるけどな。<br>確かに俺もシェルスクリプトで「偽のシンタックス」は避けてる—`[`とか`[[`は絶対に使わない。これらは単なるコマンドなんだって構造を分かりにくくしてるだけだから。代わりに`test`って書くんだ。これは単なるコマンドだって明確にするし、何してるか分からなくても、同じシェルで`man test`, `help test`, `info test`とか実行すれば分かるってことを示唆してる。<br>`if`文や`if`式は少なくシンプルに保つべきってのは同意だ。でもこれは実は他の多くの言語よりシェル言語の方が簡単にできる場合がある！ `&&`や`||`をチェーン接続するだけで、ネストされた`if`文どころか、どんな`if`文も使わずに結構なスクリプトを書けたりするんだ。" userName="pxc" createdAt="2025/06/25 18:05:23" color="">}}




{{<matomeQuote body="いいね、でもそれをフリートにインストールできる保証があって、そのフリートが100% Linuxで、AIXもHPUXもSOLARISもIBM Power上のSUSEもない、なんて状況ならね…。<br>そういう経験あるよ、試したけど、盛大にコケた。" userName="m2f2" createdAt="2025/06/25 03:34:04" color="">}}




{{<matomeQuote body="uvのシステムサイトパッケージについての設定はこれ見てね。<br>https://docs.astral.sh/uv/reference/settings/#pip_system" userName="ndr" createdAt="2025/06/25 09:13:33" color="#38d3d3">}}




{{<matomeQuote body="やっほー、Hetznerに言及してたからここで返信しようと思ってさ。NixOSはクラウド製品の標準イメージにはないけど、ISOライブラリにはあるよ。お客さん側で手動インストールできるんだ。やり方は、クラウドサーバー作って、クリックして、メニューの”ISO”を選んで、リストをアルファベット順に見てみてね。--Katie" userName="Hetzner_OL" createdAt="2025/06/25 13:29:38" color="#ff5733">}}




{{<matomeQuote body="あー、それやったわ。もうあんなキチガイじみた状況に対処しなくていいなんて最高。担当してたビルドファームでは、LinuxやBSDの箱で作業する時はいつも楽しかったな。AIXとHPUXは物投げたくなるレベル。Itaniumのクソみたいなやつも遅いだけで、普通のサーバーっぽかったし。もう二度とLinux＼BSD以外のサーバーなんて自ら扱わないわ。" userName="kstrauser" createdAt="2025/06/25 06:15:53" color="">}}




{{<matomeQuote body="それは残念。俺はまるで修行僧レベルのPython柔術マスターだったのに。どんな問題も解決できたんだぜ、HTTPSの悪夢とか、brewとpyenvのバージョン問題とか、virtualenvのやらかしとか。でも今じゃ、この知識全部時間の無駄だわ。" userName="yard2010" createdAt="2025/06/25 07:07:42" color="">}}




{{<matomeQuote body="てかさ、`uv python install`をシステムワイドに入れるにはどうすればいいの？何やっても`~/.local`へのシンボリックリンクにしかなんねーんだけど。" userName="est" createdAt="2025/06/25 10:38:26" color="">}}




{{<matomeQuote body="違いは、俺が知る限り`[[`が本当の構文ってこと。確かこれで特定の問題を避けられたり、エラーメッセージが分かりやすかったり、bashのビルトインだって確実だったりするんだよな。もっと心配なのは、これを使うと`sh`との互換性がなくなることかな。" userName="passwd" createdAt="2025/06/27 12:13:22" color="#ff5733">}}




{{<matomeQuote body="＞uvでPythonをインストールしても、グローバルでは使えません（pythonコマンド経由とか）。この機能はプレビュー中です。詳細はInstalling Python executablesを見てください。<br>＞uv runを使うか、仮想環境作って有効化すれば直接pythonを使えます。<br>だそうだ。" userName="bjornasm" createdAt="2025/06/26 21:08:32" color="#785bff">}}




{{<matomeQuote body="絶対なんて言うなよ。Pythonのエコシステムって色々変わるから、uvだって別の何かに取って代わられる可能性は十分ある。今回はなんか違う感じもするけど、しばらくは分からないだろうね。" userName="arcanemachiner" createdAt="2025/06/25 15:04:26" color="">}}




{{<matomeQuote body="だって、if文の書き方だけでも`test`、`[`、`[[`って3つも同じくらい有効な方法があるんだぜ。後ろ2つについては、ファイルや条件をテストするためのシングルレターのフラグがいっぱいあってごちゃごちゃしてるしな[0]。何をもって”偽の構文”って言うのか俺には分かんないけど、bashのことはそんなに知らないし。<br>調べるなら全部それなりに理解できるけど、スクリプトはすぐに分かりにくくなる。条件分岐ってこんなに難しくあるべきじゃないだろ。<br>[0]: https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.ht..." userName="xavdid" createdAt="2025/06/25 23:57:20" color="#785bff">}}




{{<matomeQuote body="Homebrewでいけるんじゃね？" userName="SmellTheGlove" createdAt="2025/06/24 20:20:28" color="">}}




{{<matomeQuote body="miseってのチェックしてみてよ。https://mise.jdx.dev/<br>俺たちの$workでは開発環境管理にこれ使ってるんだけど、DockerとかNixよりずっと楽なんだ。しかも並列でインストールできるから、普通のDockerfileより断然ボーナス高いぜ。" userName="wazzaps" createdAt="2025/06/24 23:44:47" color="#ff5733">}}




{{<matomeQuote body="ターゲットOSにプリインストールされてないバイナリやライブラリを使うshellスクリプトなんて、俺は絶対に書かないんだよね（それが正しいターゲットってもんだし、移植性のあるshellスクリプト書くなんてバカげてるよ）。<br>macOSでしか存在しないコマンドを使うスクリプトを、Linuxで動くようにしてくれるパッケージマネージャーなんてないんだから。" userName="wpm" createdAt="2025/06/25 00:19:40" color="">}}




{{<matomeQuote body="前にチェックした時、これは凄くうまくいくんだよね。ただし、imagemagickとかcowsayの特定のバージョンにこだわらない限りだけどね。<br>もしこだわるなら、nivとかflakesとかについて学ぶハメになるよ。<br>［0］：正直言うと、3年くらい前の話だけど。" userName="caspar" createdAt="2025/06/25 11:11:38" color="#785bff">}}




{{<matomeQuote body="Nixは、できること全部に対して、やりすぎなんだよね。シンプルでポータブルなスクリプトを書くのも例外じゃない。<br>でも：何をするにも同じスキルセットで済むんだ。だから、投資する価値はあると思う。もし一つのことだけに使うなら、価値はないかもね。でも一度学べば、どこでも活用できるんだ。<br>依存関係があってもなくてもPythonスクリプト、uvがあってもなくても（めっちゃ推せるuv2nixを使えば。俺は関係ないけど）、好きな依存関係を持つbashスクリプトとか、突然それが自分で選べるようになって、実際に適切なツールを選べるようになるんだ。<br>話脱線させたくないけど、この文脈では関係ある気がするんだよね。これら全部のちょっとしたパッケージングの問題がNixで消えて、たった一つの巨大な問題に置き換わるんだよ XD" userName="nothrabannosir" createdAt="2025/06/25 01:43:00" color="#ff5c5c">}}




{{<matomeQuote body="当時（10年前）は、ありとあらゆる種類のデプロイ先を持つ巨大な顧客がいる会社で働いてたよ。今ではそのリストはだいぶ短くなってると思うな。<br>彼らのためにも、そう願ってるよ。ぞっとするね。" userName="kstrauser" createdAt="2025/06/25 22:07:35" color="">}}




{{<matomeQuote body="思わず言いたくなっちゃうんだけど、明らかに解決策は、依存管理、依存関係、再現性が理論上マックスになるように、Dockerの中でNixをshellとして実行することだよね。" userName="password4321" createdAt="2025/06/24 21:44:43" color="">}}




{{<matomeQuote body="残念ながら、たとえ最もシンプルなスクリプトでさえ動く保証はまったくないんだ。<br>#!/bin/bash<br>make ＄1<br>これには複数の問題が考えられるね。" userName="maccard" createdAt="2025/06/25 08:55:13" color="">}}




{{<matomeQuote body="俺、1000行以上のBashプロジェクトをいくつか持ってるんだ :) サイズを大きくしたわけじゃないんだけど、めっちゃ読みやすくてメンテナンスしやすいよ。機能も全部揃ってるし、ちゃんと動く（tm）。他の言語だったら、たぶん1000行より長くなるか、メンテがもっと大変だったかもね。外部プログラムをいっぱい呼び出すから、shellスクリプトにこだわったんだ。" userName="johnisgood" createdAt="2025/06/25 07:06:40" color="">}}




{{<matomeQuote body="歴史的に見て、俺の経験則は、スクロールしないとスクリプト全体が見えなくなった瞬間に、Pythonとかansibleで書き直すってことだな。書き直しは考えるけど、実際やるまでにはたいてい時間がかかるんだ（もしやるとしてもね）。" userName="w0m" createdAt="2025/06/25 16:54:39" color="">}}




{{<matomeQuote body="これめっちゃいいね！最近流行ってるみたいだ。simonwのブログhttps://simonwillison.net/2024/Dec/19/one-shot-python-tools/で初めて見たよ。3月には別の記事でもHacker Newsで議論されてたんだ（https://news.ycombinator.com/item?id=43500124）。このトピックがもっと広まるように、フロントページに長く載ってるといいな。" userName="epistasis" createdAt="2025/06/24 19:25:39" color="#ff33a1">}}




{{<matomeQuote body="わかる！このテクニックいいよね。記事の最後でYouTubeのチャンネル登録者数を取得する例が出てたけど、simonwのLLMを一部使って似たの作ったんだ。よかったら使ってみて。<br>llm -f youtube:＜id＞<br>llm -f yt:＜lang＞:＜id＞<br>ここにコードあるよ → https://github.com/redraw/llm-fragments-youtube" userName="soundblaster" createdAt="2025/06/27 21:18:49" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="記事の作者さんと同じで、俺も仕事でも家でもGoじゃなくてPythonでクロスプラットフォームの使い捨てスクリプトとか個人のツール作るようになったよ。Pythonの型チェックがクソなのが残念だけどね。tyとかpyreflyとかが出てきて状況が改善されるのが楽しみだ。" userName="puika" createdAt="2025/06/24 22:24:01" color="">}}




{{<matomeQuote body="スピードもそうだけど、型システム自体も別問題だよ。Pythonの変な型システムを理解し始める前に、だいたい5〜10個くらいの問題にぶつかるのは確実だね。" userName="SavioMak" createdAt="2025/06/25 01:29:21" color="">}}




{{<matomeQuote body="Pythonの型チェックが”クソ”だとは思わないな。pyrightはほぼ完璧だよ。Django用とかの非標準の型には対応してないけど、それはメンテナーの意図的な決定だし、それが標準の型をもっと表現豊かにする努力を促したんだと思うからよかったと思ってる。<br>Rustベースの型チェッカーが成熟するのも楽しみだけど、それは型チェックの速度が桁違いに改善される可能性があるからであって、Pythonの型チェックが”クソ”だからじゃないんだ。<br>確かに、Python本体が出してる型チェッカーが（Djangoとか使わない限り）二流で、Djangoとか使うと一流になるってのは、外部の人にはわかりにくいだろうけどね。" userName="davidatbu" createdAt="2025/06/25 18:36:09" color="#38d3d3">}}




{{<matomeQuote body="俺は正直Goをクロスプラットフォーム開発で好きになったことないんだよね。いつもUnixにがっちりくっついてる感じがしてた。PythonもWindowsだと結構問題あるけどね。俺の人生、長い間ライブラリの変な.DLL問題のデバッグで詰まってたよ。<br>変な話だけど、それが理由で、個人的なクロスプラットフォームアプリはゲームエンジンで作るようになったんだ。" userName="ViscountPenguin" createdAt="2025/06/25 06:17:53" color="">}}




{{<matomeQuote body="コミュニティがtyみたいに一つの型チェッカーに収束してくれるといいな。複数の型チェッカーがあるって事実が、言語全体にとって本当に邪魔になってると思うよ。" userName="silverwind" createdAt="2025/06/25 08:57:02" color="">}}




{{<matomeQuote body="uvはちょっとしたサイドプロジェクトに使うのに最高だね。uv runと『uv tool run』、つまりuvxを組み合わせると、GitHubからPythonスクリプトをめちゃくちゃ簡単に持ってきて、VM内でインストールして実行できるんだ。git cloneもvenv作成＋activate＋pip installもいらない。<br>それにuvは速い—マジで速い。あまりに速すぎて、何か失敗してサイレントエラーしたんじゃないかと思うくらいだよ。実際には求めてたこと全部やってくれてるのに、pipの10倍速いんだ。<br>ちょっと（特にドキュメントが）洗練されてない部分はあるけど、大胆だし十分良いから、それでも使う価値あるね。" userName="jkingsman" createdAt="2025/06/24 19:19:06" color="#785bff">}}




{{<matomeQuote body="本当にね。uvはどういうわけか、pyenvが--helpを出力するより速く依存関係を解決してインストールするんだ。" userName="lxgr" createdAt="2025/06/24 19:31:36" color="">}}




{{<matomeQuote body="Pythonの起動が遅いのは、importのたびにfilesystemの広い範囲をスキャンして解決しなきゃいけないとか、ちゃんとした理由があるのは知ってるよ。でもGoとかRustで実装されたツールみたいに、ミリ秒以下の起動時間で作業できると、本当に新鮮な気分になるんだよね。" userName="mikepurvis" createdAt="2025/06/24 20:03:13" color="">}}




{{<matomeQuote body="ヘルプ表示のためだけに全部importする必要はないんだよ。CLI引数をパースした後までトップレベルのimportは避けるようにしてるから、それまでは`argparse`か`click`だけがimportされる感じ。こうすれば、Pythonでも起動が瞬時に見えるよ。<br>例：<br>    if __name__ == ”__main__”:<br>        from myapp.cli import parse_args<br><br>        args = parse_args()<br><br>        # -hが指定されてたらここでプログラムは終了するよ<br><br>        # ここで重いimportをする<br><br>        from myapp.lib import run_app<br><br>        run_app(args)" userName="mr_mitm" createdAt="2025/06/25 07:24:24" color="#45d325">}}




{{<matomeQuote body="でも別のパターンとして、トップレベルのツールがpkg_resourcesとentry_pointsを使って、そのコア機能を動詞プラグインに切り出してる場合がある。そのケースだとヘルプ表示が実は最悪のシナリオなんだ。利用可能なプラグインを探すためにfilesystemをスキャンしなきゃいけないだけでなく、それぞれのヘルプ文字列を聞くために全部importする必要があるからね。<br>この極端な例がROS 2ワークスペース用のcolconビルドツールだよ：<br>https://github.com/colcon/colcon-core/blob/master/setup.cfg#...<br>驚くことじゃないけど、これの起動時間は良くないんだ。" userName="mikepurvis" createdAt="2025/06/25 19:39:13" color="#ff5c5c">}}




{{<matomeQuote body="Pythonのスピード批判の流れを脱線させるつもりはないんだけど、pyenvはbashで書かれてるよ。色々なバージョンのPythonをインストールするためのツールなんだから、既にPythonがある前提だとおかしいでしょ。" userName="Spivak" createdAt="2025/06/24 20:46:33" color="">}}




{{<matomeQuote body="おお、それが実は遅い行出力スピードの理由を説明してるのかも。ありがとう、長年のちょっとした謎が解けてスッキリしたよ :)" userName="lxgr" createdAt="2025/06/24 22:10:03" color="">}}




{{<matomeQuote body="Pythonの起動遅延の話は理解できるんだけど、pyenvが”usage”出力（--helpで表示されるやつ）の各行を出力するのに時間がかかるのが本当にわからないんだ。もう明らかにそれだけをするコード分岐に入ってるのに。まるで各行が出力される間に重い作業をしてるみたい！そんなCLIツール、他に知らないな。" userName="lxgr" createdAt="2025/06/24 20:16:55" color="">}}




{{<matomeQuote body="pyenvの起動が遅いのは、ラッパーシェルスクリプトとPythonの起動時間が影響してるんだよ。" userName="heavyset_go" createdAt="2025/06/24 21:51:14" color="#ff5733">}}




{{<matomeQuote body="その”遅さ”と、「俺のコンピューターでは動く」Pythonプログラムを別のコンピューターで動かそうとする完全な”狂気”にうんざりして、自分のPythonツールは全部Goで書き直したわ。ユーティリティの約95%は、実行環境に合わせてクロスコンパイルされたGoのバイナリになったよ。残り数個はGoにまだ利用できない、または十分に成熟してない（API）ライブラリを使ってるから。" userName="theshrike79" createdAt="2025/06/24 20:38:02" color="#38d3d3">}}




{{<matomeQuote body="最後に見た時、pyenvの開発者たちはその理由（遅さ）でコンパイルされたラウンチャーの実装を検討してたらしいよ。でも俺にとってはもう終わった話で、uvに乗り換えたけどね。" userName="heavyset_go" createdAt="2025/06/24 21:49:28" color="#785bff">}}




{{<matomeQuote body="uvがすごいのは同意！でもあれはvirtual machineじゃなくてvirtual environmentだよ。ハードウェア仮想化なしでOS上でスクリプトを動かすんだ。virtual environmentはPythonの依存関係だけを隔離するんだよ。" userName="mmcnl" createdAt="2025/06/25 09:26:20" color="#ff5c5c">}}




{{<matomeQuote body="＞uv（特にdocs）はlittle rough around the edgesだけど、bold enough and good enoughだから使う気になったよ。自分だけかと思ってた。more examples showcasing different use casesがあればniceだと思うからissue openしようと思うんだ。" userName="bjornasm" createdAt="2025/06/26 21:15:24" color="">}}




{{<matomeQuote body="No more dependency problems with mkdocs！uvx --with mkdocs-material --with mkdocs-material-extensions --with mkdocs-nav-weight mkdocs serve -a localhost:1337 ってやったら、毎月困ってたdependency問題がなくなったんだ。<br><br>Funnily enough、なんかfasterになった気もするよ。" userName="TZVdosOWs3kZHus" createdAt="2025/06/25 07:32:31" color="#ff5733">}}




{{<matomeQuote body="Is there a reason you didn’t explicitly pull in mkdocs as a dependency in that invocation？ I guess uv will expose it/let you run it anyways due to the fact that it’s required by everything else you did specify." userName="winterqt" createdAt="2025/06/25 12:04:46" color="">}}




{{<matomeQuote body="its a uvx callだよ。the tool being invokedはmkdocsで、all the other dependenciesはadditionsなんだ。" userName="tfitz237" createdAt="2025/06/25 14:09:32" color="">}}




{{<matomeQuote body="Very nice！ Rustもdoing something similar tooで、single-file shell-type scriptsでdependency management includedするideaをそこで知ったんだ。Hopefully more languages follow suitするとusefulで、passing gists aroundとかsmall programs書くのにいいよ。[0] https://rust-lang.github.io/rfcs/3424-cargo-script.html" userName="satvikpendem" createdAt="2025/06/24 20:49:56" color="#ff5733">}}




{{<matomeQuote body="C# tooだよ: https://devblogs.microsoft.com/dotnet/announcing-dotnet-run-..." userName="deepakjois" createdAt="2025/06/24 21:09:22" color="">}}




{{<matomeQuote body="＞Before this、one-off scriptsにはGoがpreferだったよ。single binaryでstatically linked、third-party libsほぼ不要、network callsにstdlibがbetter、tooling（formatter, pytestいらない, go vet）もbetter、Easy concurrencyだから。uvはgreat improvementだけど、Python scriptsを書かないのはtooling以外のreasonsもある。standard toolじゃないし、JS ecosystemでscarred and tiredだから、stable, reliable, boring toolsが好き。Right now, Goでenoughだよ。" userName="rednafi" createdAt="2025/06/25 07:26:34" color="#ff33a1">}}




{{<matomeQuote body="I needed to process a 2 GB xml file the other day. My Python scriptがchugging awayしてる間に、Claudeにtranslate it to Goしてもらったんだ。The vibe-coded Go programは、original Python scriptがterminateする前にprocessed the fileしたよ。That was the first time I ever touched Goだったけど、certainly won’t be the last。" userName="istjohn" createdAt="2025/06/25 17:50:12" color="#ff5c5c">}}




{{<matomeQuote body="Go is pretty awesome. scriptにsome timeかけたら、at least 50 times faster than Pythonになっただろうね。" userName="rednafi" createdAt="2025/06/25 19:04:57" color="">}}




{{<matomeQuote body="（author of post here）I still use both Go and Python. But Python gives me access to a lot more libraries that do useful stuff. For example the YouTube transcript exampleは、Goにはdecent libraryがないからPythonでonly possibleだったんだ。" userName="deepakjois" createdAt="2025/06/25 08:12:34" color="#ff5c5c">}}




{{<matomeQuote body="ああ、それは確かにそうだね。仕事でPythonはいっぱい使ってるよ。言語は別にいいんだけどさ、ツールの使い勝手がまだ30年前みたいなんだよな。" userName="rednafi" createdAt="2025/06/25 09:01:01" color="">}}




{{<matomeQuote body="＞前は使い捨てスクリプトにGoをよく使ってたんだ、自己完結型のバイナリが簡単に作れたからね。<br>ほら、こうやって関連してるんだよ:)" userName="rednafi" createdAt="2025/06/25 08:59:19" color="">}}




{{<matomeQuote body="もう10年近くPython開発してるけど、依存管理が問題なんて思ったこと一度もないよ。どんなデプロイ環境でも”スクリプト”動かすときは、その環境のPythonシェルでやってたしね。だから、何そんな騒いでるのかまだよく分かんないな？すごくでかいPythonコードベースで仕事してるけど、uvに移行して唯一メリットあったのは依存インストールが速くなったことで、ローカルとCIのセットアップ時間が改善したくらいだよ。" userName="4dregress" createdAt="2025/06/25 05:53:39" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="他の人とか初心者には、どうやってあなたのPythonコードを実行させてたの？（それか、5年以上前の古いプロジェクトを自分で動かすときはどうしてた？）" userName="bboygravity" createdAt="2025/06/25 06:47:05" color="">}}




{{<matomeQuote body="スクリプト実行＼”missing x...”＼pip install x<br>スクリプト実行＼”missing y...”＼pip install y<br>＞ y not found<br>yをググってパッケージ名を探す<br>pip install ypackage<br>＞ conflict with other package<br>venv忘れてシステムPythonを汚染したことに気づく<br>pip helpを見てアンインストール方法を思い出す<br>システムPythonをクリーンアップ<br>カレントディレクトリでvenv作成<br>最初からやり直し...<br><br>＼end of time＼" userName="x187463" createdAt="2025/06/25 11:33:34" color="#38d3d3">}}




{{<matomeQuote body="＞realize I forgot a venv and have contaminated my system python<br>＞check pip help output to remember how to uninstall a package<br>＞clean up system python<br>＞create venv at cwd<br>＞start over<br>これ、怖いくらい身に覚えあるわー。" userName="psunavy03" createdAt="2025/06/25 20:26:33" color="#ff5c5c">}}




{{<matomeQuote body="なんかさ、仕事するためにコンピュータの電源をつけなきゃいけないって文句言ってる人を見てるみたいだよ。" userName="whattheheckheck" createdAt="2025/06/26 01:56:16" color="">}}




{{<matomeQuote body="ありがたいことに、最近のいくつかのシステムは、pipでシステムをいじろうとするとデフォルトでエラーになるんだ（システムのパッケージマネージャーを使うべきだってこと）。上書きするのは簡単だけど、うっかりミスでやらかすのを直す手間が省けるから助かるよ。" userName="SAI_Peregrinus" createdAt="2025/06/25 15:30:42" color="#785bff">}}




{{<matomeQuote body="Pythonの依存管理は、他のほとんどの主要な言語と比べると、ごく最近までひどかったんだよな。" userName="jshen" createdAt="2025/06/25 06:44:21" color="">}}




{{<matomeQuote body="みんな「Python dev」とか「JS dev」って考え方やめて、他の言語も試してみようよ。GoとかRust、JS見ればPythonの依存管理がどれだけ混乱してるかわかるから。多くの言語で体験がもっとシンプルなんだ。このツールのカオスと仮想環境の複雑さは、初心者には大きな壁だね。初心者だけじゃなく、Armin Ronacherみたいなベテランも文句言ってるしね。<br>uvは正しい方向への大きな一歩だけど、GoのツールやRustのCargoみたいに、基本的なツールが言語バイナリに組み込まれてない限り、新しいツールがどんどん出てきて、さらにバラバラになっちゃうのが問題だよ。" userName="rednafi" createdAt="2025/06/25 07:37:55" color="#ff5733">}}




{{<matomeQuote body="混乱してるって言うのは控えめすぎだよ。それはPythonの依存管理がちゃんと動いてるけど複雑なだけ、って意味になっちゃうじゃん。でも実際はうまく動いてないんだ。ロックファイルみたいなものがなくて、再現性のあるインストールが運任せになってる。小さなスクリプトならまだしも、チームで作業したりサーバーにデプロイしたりするなら、決定的なビルドが必要なのに、まともなパッケージマネージャーがないとそれは絶対不可能だよ。<br>uvみたいなツールは、「手元の環境では動く」問題を解決してくれる。それに信じられないくらい速い。" userName="mmcnl" createdAt="2025/06/25 09:29:59" color="#45d325">}}




{{<matomeQuote body="ロックファイルはもう存在するよ。<br>https://packaging.python.org/en/latest/specifications/pylock...<br>問題は、標準化されたビルドツールがないこと（pipやuvはどっちもサードパーティ）。だから、Goのgo.modとかRustのcargo.tomlと違って、このロックファイルを生成する方法が山ほどあるんだ。だから多くの場面で機能しないし、めちゃくちゃ混乱するんだよね。" userName="rednafi" createdAt="2025/06/25 09:47:32" color="#ff5733">}}




{{<matomeQuote body="私の考えだけど、私は何よりもまずエンジニアなんだ。だから目の前のタスクにとって一番良いツールを使うようにしてる。それは他の人がプロジェクトで作業する上でのビジネスにとっても一番良いものって意味ね。これがPythonと何かしらのフレームワークを使うってことになってる。<br>もっと速いかもしれない他の言語を使うべきだって言う人もいるけど、ビジネスが常にみんなで一緒に作業するのに一番良いものを選択するんだ。" userName="4dregress" createdAt="2025/06/25 10:23:42" color="">}}




{{<matomeQuote body="そうだね、ビジネスの種類や成熟度、それに現地の才能の有無にもよるよね。PythonとDjangoで始めて、ビジネスが拡大するにつれて他のテクノロジーに移行した会社を3社知ってるよ。そういう環境では、「Python dev」でいたい人と、すぐに新しい言語に適応できる人の二種類がいた。後者のグループの方がうまくやってたね。<br>「Python + Framework + Postgres」っていう主張で嫌なのは、文脈が欠けてることが多いこと。これはビジネスを始めてPMFを見つけるにはすごい組み合わせだよ。でも、PythonとPostgresが100k RPSとかペタバイト規模のデータの下で完全に壊れるのを見たことがないと、言葉だけじゃその限界を理解するのは難しいんだ。Pythonは素晴らしいけど、限界はあるし、全然機能しないケースもある。この「どこでも単一言語」っていう考え方が、JavaScriptがバックエンドやデスクトップに使われるようになった原因だよ。<br>誰でもPythonは書けるし、LLMがあれば、単一言語を知ってるだけじゃ大した強みにならない。他の言語にも親しんで、視野を広げるのはいいことだと思うよ。もちろん、PythonやJavaScriptでうまくスケールするビジネスもある。でも私が言いたいのは、Pythonを捨てろってことじゃない。他の言語で経験を積んで、Pythonのビルドツールが批判された時に、その懸念に心から共感できるようになることなんだ。そうじゃないと、ほとんどPythonしか使ったことない人からの「Pythonのツールは大丈夫」みたいなコメントは、真面目に受け取れないね。" userName="rednafi" createdAt="2025/06/25 10:56:07" color="#45d325">}}




{{<matomeQuote body="＞いつもそのENVのpython shellでやってる<br>環境がセットアップされてない時はどうするの？私は正直、全然Pythonの専門家じゃないんだけど、そこがいつも面倒だったんだ。uvxがあるとそれがすごく楽になるよ。" userName="petersellers" createdAt="2025/06/25 06:36:04" color="#38d3d3">}}




{{<matomeQuote body="Pythonの前にPHP/JS/Javaを書いてたよ。Pythonももう10年近くやってるけど、4dregressさんと同じで、依存管理であまり困ったことはないな。JSとPHPはいろいろ問題があったけど、MavenとGradleはまだマシだった。Pythonでは、必要なものが実装されてるPEPを見つけたり、シンプルなワークフローやパッケージング戦略を考えたりすることで、ほとんどの問題は解決できたと思う。<br>最近は普通に`python venv/bin/＜some-executable＞`とか、`conda run -n ＜some-env＞ ＜some-executable＞`を使ってるか、Singularityコンテナにパッケージしてる。uvについては色々良い話を聞くけど、私の仕事は研究で公的資金を使ってるから、できるだけオープンソースと標準を使おうとしてるんだ。私の理解では、uvはまだ企業に支えられてるし、前に確認した時（PEPの議論とかGH issuesで）は、私が必要なPEPを実装してなかった — たとえ実装してたとしても、もしその会社がビジネスモデルを変えたら（例えばAnacondaが数ヶ月前／年前にやったみたいに）、ビルドを更新するために研究予算を使わなきゃいけなくなるのを避けるために、たぶんシンプルなpip/setuptoolsを使うだろうね。<br>余談だけど、Singularityコンテナは研究やHPCにも便利なんだ。単一のアーカイブになるから、ネットワーク経由でたくさんの小さなファイルをロードするより、私が作業してるGPFSやLustreFSみたいな分散ファイルシステムでロードするのが速いんだよ。" userName="kinow" createdAt="2025/06/25 07:25:48" color="#ff5733">}}




{{<matomeQuote body="仮想環境を作る：<br>python3 -m venv venv<br>仮想環境を有効にする：<br>source venv/bin/activate<br>仮想環境を解除する：<br>deactivate" userName="arcanemachiner" createdAt="2025/06/25 15:09:05" color="">}}




{{<matomeQuote body="それとも、`uvx ruff`<br>毎日Pythonを使わない人にとって、どっちの方が実行しやすいかな？" userName="petersellers" createdAt="2025/06/25 16:24:23" color="">}}




{{<matomeQuote body="数年後に覚え直さなくていい方だろうね。" userName="arcanemachiner" createdAt="2025/06/25 17:04:18" color="">}}




{{<matomeQuote body="virtual environmentsをそんなに頻繁に使わないなら、毎回やり方を調べる方がまだ楽だよね。" userName="petersellers" createdAt="2025/06/25 18:34:51" color="">}}




{{<matomeQuote body="Python devとして30年近くやってるけど、uvはdependency managementの多くの面倒な部分を取り除いてくれてると感じるよ。だから“問題”って言葉は違うかもね。troubleなくdependency managementの問題を解決できたことも多いけど、かなりの時間も費やしたんだ。10年近くは他の人のPython環境をproduction systemsで管理してたけど、それは大変な混乱だったよ、特に更新とセキュリティを確保しようとするとね。uvのすごさがわからないなら、それはおめでとう。かなり孤立した環境にいるみたいだね。でも断言するけど、uvはすごく騒ぐ価値あるよ、俺たちの人生をすごく楽にしてくれてるから。" userName="linsomniac" createdAt="2025/06/25 14:57:40" color="#ff5c5c">}}




{{<matomeQuote body="Virtual environmentsだけでは不十分だよ。決定的なbuildは保証されない。production environmentがlocal dev environmentと同じcodeを実行することをどうやって確保する？uvやpoetryのようなdependency managersなしで、その問題をどう解決してるの？" userName="mmcnl" createdAt="2025/06/25 09:31:39" color="#ff5c5c">}}




{{<matomeQuote body="じゃあ、4年経つ大きなprojectがあって、それを新しい.venvで動かすとしたらどうする？" userName="bjornasm" createdAt="2025/06/26 21:21:30" color="">}}




{{<matomeQuote body="今のところ、`uv run --script`でembedded metadataを使う時に、ちょっとだけ使いにくいと思ったことが一つだけあるんだ。スクリプトの変更をPython REPLでテストしたい時なんだけど、これをするのがちょっと大変で、こういうのを実行しないといけない:`$ uv run --python=3.13 --with-requirements ＜(uv export --script script.py) -- python<br>＞＞ from script import X`<br>もっと`$ uv run --with-script script.py python`みたいに使いやすいのがあったらいいな。<br>追記: こっちの方が良かった:`$ ”$(uv python find --script script.py)”`<br>`＞＞ from script import X`<br>これでスクリプトの正しいpythonとvenvが立ち上がるよ。多分、スクリプトを一度実行してこれを作る必要があるかもね。" userName="js2" createdAt="2025/06/24 21:14:00" color="#ff5c5c">}}




{{<matomeQuote body="君が探してるのは多分これみたいなやつだと思う（重要なのは最後にREPL呼び出しを埋め込むこと）: https://gist.github.com/lostmygithubaccount/77d12d03894953bc...<br>`--interactive`とか好きなCLI flagをscriptから作れるよ。俺はよく小さいTyper CLIsでこんな感じの（または別のdev scriptで`--sql`を使ってDuckDB SQL replに入る）ものを作るんだ。" userName="dkdcio" createdAt="2025/06/24 22:32:31" color="#785bff">}}




{{<matomeQuote body="どういたしまして。<br>`cat ~/.local/bin/uve`<br>`#!/bin/bash`<br>`temp=$(mktemp)`<br>`uv export --script $1 --no-hashes ＞ $temp`<br>`uv run --with-requirements $temp vim $1`<br>`unlink $temp`" userName="mayli" createdAt="2025/06/24 21:55:45" color="#ff5c5c">}}




{{<matomeQuote body="もし聞いてもいいなら、なぜ`unlink`じゃなくて`rm`なの？" userName="jcotton42" createdAt="2025/06/25 17:53:09" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
