+++
date = '2025-06-23T00:00:00'
months = '2025/06'
draft = false
title = '私のターミナル活用法'
tags = ["ターミナル", "Vim", "設定", "効率化", "CLI"]
featureimage = 'thumbnails/light-orange2.jpg'
+++

> 私のターミナル活用法

引用元：[https://news.ycombinator.com/item?id=44356646](https://news.ycombinator.com/item?id=44356646)




{{<matomeQuote body="これ最高だね！俺もこういうワークフローを10年くらいかけて改良してるんだ。カスタムレイヤーはメンテが大変だから、できるだけ減らそうとしてるよ。Stock Vimなら（`tmux`なしでも）、`rg --vimgrep restore_tool | vim -c cb -`みたいに、この記事のほとんどができるんだ。`vim -c cb -`は俺のお気に入りの機能なんだけど、全然使われてないし話されてないのが不思議だね。( `rg`検索を再実行したくない時とか、結果をVimで開く前にターミナルで分析したい時があるんだ。その時は、前のコマンドの出力をコピーするカスタム`tmux`コマンド（この技だよ: https://ianthehenry.com/posts/tmux-copy-last-command/）を使って、それを`tmux saveb - | vim -c cb -`みたいにVimに送ってる。) URLがあるから200字超えてるけど、許してね！" userName="robenkleene" createdAt="2025/06/23 17:51:44" color="#38d3d3">}}




{{<matomeQuote body="10年前に massive なVim設定を全部捨てて、毎年1〜2行ずつ超シンプルな`vimrc`を組み立て直してるんだ。古いソフトのデフォルトにはたいてい理由があって、変える前に理解しようとするべきって意見に、完全に同意だよ。" userName="msgodel" createdAt="2025/06/23 18:42:12" color="">}}




{{<matomeQuote body="それは、当時のデザイナーがuniversally great だったらの話でしょ？そうじゃないから、デフォルトはuniversally badなんだよ。だから、固執して理解しようとするのは時間の無駄だし、bad heuristicだね。例えばVimのhjklがデフォルトなのは、デザイナーの物理キーボードに矢印が描いてあっただけ。深い思考なんてなくて、理解してもuseless triviaだよ。" userName="eviks" createdAt="2025/06/24 05:35:53" color="">}}




{{<matomeQuote body="誰かVimを俺に売り込んでくれないかな？どう見てもtiling window managerみたいなテキストエディタにしか見えないんだ。プラグイン入れてもKateとかJetbrains IDEsより機能少ないし、前に試した時はターミナルエディタなのに遅かったし。ターミナルでテキスト編集するならmicroの方がマウス使えるし、普通のOSのキーバインドだし良いじゃん。Vim使いをinsaneとは思いたくないけど、niche nerd thingとしか思えないんだよ。" userName="heavyset_go" createdAt="2025/06/24 10:04:53" color="">}}




{{<matomeQuote body="それはかなりharshだね。デザイナーがperfectじゃなくても、デザインがuniversally badってわけじゃないでしょ。あなたの例で言うとさ、hjklがなんでそのキーなの？って言うけど、ホームポジションにあって、touch typistsの右手のresting fingersの下に来るんだよ。それって急にconvenientじゃない？" userName="sakjur" createdAt="2025/06/24 06:11:40" color="">}}




{{<matomeQuote body="＞ defaults in old software are almost always there for a reason<br>ホームポジションに指を置くのは、keyboard-first navigationにとってgreat designだよ。ソフトウェアデザインは歴史的な経緯があるから一理あるけど、古いデザイン＝bad designって決めつけるのは間違ってるね。変わってない良いものもあるんだから。" userName="notarobot123" createdAt="2025/06/24 08:50:00" color="">}}




{{<matomeQuote body="＞ Keeping your fingers on the home row is great design for keyboard-first navigation.<br>指摘されてるけど、これは間違い。Vimのデフォルトはこのロジックに従ってないんだ。例えば、単語単位で戻る 進むみたいな一番よく使うコマンドはhome rowにないし、name-based mnemonics っていう違う原則に従ってる。厳密に言えばhjklだってそうだよ。矢印が描いてあったからで、デザイナーが良いデザイン原則に従ったわけじゃない（物理的な矢印自体はその原則かもしれないけど、resting keysから外れるのはまだ謎、ASCII H codeがbackspaceと関係あるかも URL: https://news.ycombinator.com/item?id=3684763 ）。変わらない普遍的なことって、適当な奴らが盲目的にデザインしてもuniversally greatな世界は作れないってことだよ！URLがあるから200字超えてるけど、許してね！" userName="eviks" createdAt="2025/06/24 09:19:52" color="#ff5c5c">}}




{{<matomeQuote body="指摘されてる通り、これは間違いだよ。touch-typistsが本当に欲しいのはjkl;だね。だってhome keyはjだから。これはvanilla vimだと絶対に必要な設定変更なんだけど、残念ながらね。" userName="bluebarbet" createdAt="2025/06/24 08:23:26" color="">}}




{{<matomeQuote body="なんで `memory commit` なんてするの？ `git commit` して`git clone`すればいいじゃん。（俺はdotfilesをリポジトリに入れてるよ）。vimrcをミニマルにしたい気持ちはわかるけど、実用性も必要でしょ？lang-serversみたいなプラグインは絶対に必要だよ。Vim自体の開発が進んで、俺のvimrcからいくつか設定が不要になることがあるんだけど、それはいつも嬉しいね。" userName="deathanatos" createdAt="2025/06/23 23:39:10" color="#785bff">}}




{{<matomeQuote body="”rg --vimgrep restore_tool | vim -c cb -” ってコマンド、使ってみたいと思ったんだ。<br>でもね、僕の環境じゃ動かないんだよ。<br>Vimは処理中にエラーがあったって言うし、バッファを保存してないって出るんだ。<br>rgの結果は表示されるんだけど、そこからどうやって該当箇所にジャンプすればいいの？" userName="lynx97" createdAt="2025/06/24 08:08:55" color="#45d325">}}




{{<matomeQuote body="そうだね、ホームポジションの休憩位置にはないけど、よく実行するコマンドなら十分近いよね。<br>キーマップを作るのは、覚えやすさと使いやすさの最適化問題だよ。<br>Vimのコマンド配置は完璧じゃないし、個人的には$（行末移動）が一番ひどいと思う。よく使うのにちょっと遠いんだ。<br>でもね、今でも使われてる古いソフトを使い始めるときは、ちょっと謙虚になった方がいいよ。<br>昔のソフトやデザイナーが必ずしも良かったわけじゃなくて、今も使われてるってことは、きっと何か利点があるからなんだ。<br>だから、まずはデフォルトを学んで、理解してから変更するのがいいよ。" userName="SirHumphrey" createdAt="2025/06/24 11:45:33" color="">}}




{{<matomeQuote body="コメント31865さんへ。<br>コマンドの `cb` を `cb!` に変えてみて。<br>`rg --vimgrep restore_tool | vim -c cb! -`<br>あと、デフォルトでクイックフィックスリストを開くならこっち。<br>`rg --vimgrep restore_tool | vim -c cb! -c copen -`<br>クイックフィックスの使い方について詳しくは `:h quickfix` を見るといいよ。" userName="covoeus" createdAt="2025/06/24 08:22:43" color="#45d325">}}




{{<matomeQuote body="コメント31866へ。<br>＞よく使うなら十分近い<br>そうだね、wとかbもホームポジションから完全に離れてるけど「十分近い」よね。<br>＞今使われてるってことは、それなりに理由がある<br>この原則と、まずデフォルトを学べって結論がどう繋がるの？<br>その結論を支持するのに、どうやってこの原則を使うの？<br>あなたの結論間違ってない？" userName="eviks" createdAt="2025/06/24 11:54:30" color="">}}




{{<matomeQuote body="昔、賢い先輩に言われたんだけどね、「アプリのデフォルトを素早く快適に使えるようになれば、どんなシステムでも同じようにサクッと快適に作業できるようになるよ」って。<br>なんか Zen って感じだよね。すごくいいアドバイスだと思うよ。" userName="jmbwell" createdAt="2025/06/23 23:08:47" color="">}}




{{<matomeQuote body="＞そして前回本気で試した時、遅かった。ターミナルテキストエディタとしては意外だね。<br>それ、たぶん設定がおかしかったんじゃないかな。<br>素の Vim より速いエディタってなかなかないし、外部プラグインのせいで変なパフォーマンス問題が出ることはたまにあるんだよね。" userName="maleldil" createdAt="2025/06/24 15:50:40" color="">}}




{{<matomeQuote body="コメント31872さん、多分僕もそう思う。<br>VimでIDEプラグインいくつか使ってたから、それが原因だったんだろうね。<br>IDEみたいな機能がないと、ぶっちゃけテキストエディタって必要ないんだよね。<br>MicroならデフォルトでLSPサーバーも使えるし、これでかなりいける。<br>そこから Kate とかちゃんとした IDE に行く感じかな。" userName="heavyset_go" createdAt="2025/06/24 21:37:08" color="">}}




{{<matomeQuote body="これってさ、’vim -q ＜（ripgrep --vimgrep restore_tool）’と一緒か似てる？" userName="magarnicle" createdAt="2025/06/23 22:39:55" color="">}}




{{<matomeQuote body="個人的にはJとKの向きが逆な感じがして、いつもどっちだっけって思い出しちゃうんだよね。タッチタイピストでもKは下、Jは上であってほしい。左上から右下に書く僕たちの感覚だと、↑と←、↓と→がセットになる方が理にかなってると思うんだ（←↓↑→）。←↑↓→の方がずっといいな。一番使う下方向（↓）がニュートラルな指の位置に近いし、何より’戻る’と’進む’のキーがまとまってるからね。<br>U I J Kとか（↑ ↓<br>← →）みたいに二列に分かれててもいいくらいだよ。（個人的には、カーソルキーが遠くて不便な時があるから、AutoHotkeyでCaps LockとのコンボでIJKLにWASDみたいなグローバルな矢印マッピングを設定してるけどね。）" userName="myfonj" createdAt="2025/06/24 09:55:19" color="#ff33a1">}}




{{<matomeQuote body="それは客観的に見たら全然間違った結論じゃないよ！ただ、それを’間違ってる’って言ってもいいけど、ちょっと考えればその言葉にはたいして重みがないってわかる。<br>せっかく面白い議論なのに、不必要な威圧感をちょっと薄めたかっただけなんだ。<br>正直、僕はいつも全体的な設定やメンテナンスの負担を減らすために、価値の高いアイデアのデフォルトを学ぶことにしてる！<br>それに、他の人に作業内容を伝える時も、デフォルトが定着してて使いやすいから、そんなに説明しなくて済むんだ。<br>最近はどこでも可能な限りデフォルトを使ってるよ。こうすると、新しい環境をセットアップする時に大量の設定をしなくて済むんだ。<br>あと、デフォルトってすごく理にかなってることも多いって気づいたんだよね。完璧ではないかもしれないけど、十分すぎるくらい。<br>その結果、かなり合理的に素早く作業できるようになるんだ。<br>それに、スキルを頻繁に再学習する必要もなくなったよ。<br>とにかく、ここでは同意しない余地はたくさんあるけど、誰かの結論が’間違ってる’っていう考え方以外ではね。" userName="ddingus" createdAt="2025/06/24 15:35:06" color="#785bff">}}




{{<matomeQuote body="＞（’vim -c cb -’はVimで一番好きな機能なんだ。あんまり使われたり話されたりしないのが不思議。）<br>それ何するの？’ls ｜ vim -’と’ls ｜ vim -c cb -’を試してみたけど、すぐには違いがわからなかったな。" userName="johnmaguire" createdAt="2025/06/23 18:33:22" color="">}}




{{<matomeQuote body="そうなの？わざわざ自分を縛るべきなのかな？ツールを最大限に活用してもっと仕事をこなす方が良いアドバイスに思えるけどね。<br>＞どんなシステムでも同じくらい素早く快適に使えるようになる。<br>他のシステムってどれくらいの頻度で遭遇する？それに、たまにしかSSH接続しないような場所でさえ…（本番環境でライブでコードを編集する…？）そんなにたくさん編集するの？（僕は自分のVimをかなりカスタマイズしてるけど、ストックのVimとかnanoが入ってるリモートシステムで困ることはないよ。edは別の話だけど。）<br>でも、もし大量に編集する必要があるなら…sshfsとローカルのVim/ターミナルでいいんじゃない？でもこれって本当に稀なケースだから、’一般的なケースに最適化すべき’っていう話の一つに思えるんだよね。これは一般的じゃない。" userName="deathanatos" createdAt="2025/06/24 02:02:57" color="#ff33a1">}}




{{<matomeQuote body="僕はあのキーバインディング（HJKLのことかな？）が好きだよ。垂直移動の方がよくするから、そっちに一番強い指（親指以外で）を使いたいんだ。それに、右移動の方が左移動より多いから、左移動するために指を動かすのは気にならないな。" userName="skydhash" createdAt="2025/06/24 11:08:13" color="">}}




{{<matomeQuote body="’cb［uffer］’は現在のバッファをコンパイルバッファとして処理する機能だよ。grep形式にマッチする行（つまり、最低でも＜path＞：＜line-number＞：＜column-number＞で始まる形式）を見つけて、quickfixリストに入れて、最初のマッチした場所にジャンプするんだ。<br>例えば、君の例だとlsはgrep形式の行を出力しないから何も起きないんだよ。だから、grepの出力をパイプで渡してみて（grepでその形式にマッチさせるには行番号と列番号のフラグが必要だよ。だから上の例では--vimgrepフラグを使ってる）、あるいは’ls ｜ sed ’s/$/：0：0/’ ｜ vim -c cb -’を試してもいいよ。これはlsの出力をハックしてgrep形式にするもので、たまに便利だよ。<br>（上の説明はもう一つの便利なヒントを示唆してるんだ。grepの解析は’cb［uffer］’ができることの一部で、コンパイル出力も解析できるんだ。例えば、’gcc foo.c ｜ vim -c cb -’とすると、プログラムの最初のコンパイルエラーにジャンプして、残りのエラーはquickfixリストに入れてくれるよ。）" userName="robenkleene" createdAt="2025/06/23 18:43:39" color="#38d3d3">}}




{{<matomeQuote body="コマンド履歴（かそれに類するもの）を見て、毎日新しいzsh設定（か他のドットファイル）を追加してくれる生成系LLMスクリプトがあったら最高だな。しかも、一日の最初のセッション中に画面にパッと表示される信頼できるmotdみたいな画面で、何が追加されたか説明してくれて、一日かけてそれを試して残すか決められるようにしてくれるの！<br>要は、大量に新しいことを一度に’学ぶ’ようなセッションじゃなくて、毎日新しいことを試させてくれることで、僕の環境をゆっくり’進化’させてくれる感じ！" userName="patcon" createdAt="2025/06/24 02:05:45" color="#ff33a1">}}




{{<matomeQuote body="quickfixウィンドウを垂直分割で開く方法を探したんだけど、何も見つからなかったよ。何かアイデアある？" userName="sam_lowry_" createdAt="2025/06/25 09:05:14" color="">}}




{{<matomeQuote body="記事のgrepの使い方は、自分と似てるけど、`-q`オプションの挙動とか細かいとこが違うね。" userName="robenkleene" createdAt="2025/06/23 22:45:43" color="">}}




{{<matomeQuote body="いいターミナル環境だね！tmux、fzf、rg、zoxide、nvimとか使ってるんだね。atuin、starship、bat、glowとかもおすすめだよ。特にatuinは超便利。昔はツール使いこなせるのがプログラマーって感じだったけど、VSCodeとかLLMも大事になったよね。でも、ツールは今も最低限のスキルだよ。LLMもミスるから、magitとかも必須。ストックのCursorより速いって思うなら、LLM使いこなす動画作って見せてよ。" userName="benreesman" createdAt="2025/06/23 18:51:51" color="#38d3d3">}}




{{<matomeQuote body="プログラマーって開発環境の設定だけが全てじゃないよ。Unixのexエディタ使う熟練者もいれば、すごいIDEでもダメな初心者もいる。ツールも大事だけど、決定的な差にはなりにくい。LLMで変わるかもだけどね。スタートアップの失敗は、使ってるツールじゃなくて、共同創業者の問題とかPMFが見つからないとか、もっとデカい理由からだよ。" userName="kragen" createdAt="2025/06/23 19:29:08" color="#ff33a1">}}




{{<matomeQuote body="”プログラマーは開発環境の設定が全てじゃない”って？プログラミングは創造だよ。良いクリエイターはツールや技術を磨くのを楽しむものだ。プログラマーもツールに投資するけど、それはただ楽しむから。ツールに興味ない人は、プログラミングそのものへの情熱が足りないから、たぶん強いプログラマーじゃないね。" userName="iLemming" createdAt="2025/06/23 21:46:12" color="#ff5c5c">}}




{{<matomeQuote body="良いプログラマーがツールに投資するってのが絶対って変じゃない？逆に、ツール設定に時間かけない方がプログラミングに集中できて良いって見方もできるし。完璧なセットアップ作りを楽しむのはいいけど、それが強いプログラマーの条件だとは思わないな。他のコメントみたいに、生産性のベースラインは低いのかもね。" userName="cole-k" createdAt="2025/06/23 22:44:29" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="この議論、ホント変！熟練した職人がツールを極めるのは当然でしょ。GitHubのリストにあるツールを少し設定するだけで数週間で5%も効率上がるなら、ヤバくない？vimとかemacsを極めた人はVSCodeユーザーを余裕で”スモーク”できると思うよ。VSCodeが勝ってるのは使い始めやすさだけ。ツールの習熟って複利で効くんだよ。BrooksのMythical Man Monthでも、技術力あるマネージャーと少人数のチームが良いって言ってる。ハッカーはチームとマネージャーと上手くやるのが大事。" userName="benreesman" createdAt="2025/06/23 21:05:44" color="#ff5c5c">}}




{{<matomeQuote body="まあね。開発環境に時間かけてちょっと差をつけるのもいいけど、ソフトスキル学んで他のエンジニアをごぼう抜きする方が良くない？みんな技術ばっか見てて、ボトルネックがそこじゃないって気づいてないんだよ。" userName="williamdclt" createdAt="2025/06/23 21:59:04" color="">}}




{{<matomeQuote body="”良いプログラマーがツールに投資するのが絶対じゃない”って？俺はそんなこと言ってないけどね。でも、有名プログラマーのリスト見てみ？Donald Knuth、Rob Pike、Ken Thompsonとか、みんなヤバイツールビルダーでもあるんだよ。最高のプログラマーには、そういう人が多いってパターンは明らかだろ。" userName="iLemming" createdAt="2025/06/23 23:05:26" color="#ff5c5c">}}




{{<matomeQuote body="ツール使いこなすのが生産性に与える影響、買いかぶりすぎだよ。良いツールは便利だけど、それで”より良いプログラマー”にはなれないし、他の人を”スモーク”とか無理。コード書く時間より、考えて、設計して、話して、協力する時間の方が圧倒的に長いんだから。コードの読み書きはボトルネックじゃないよ。システム理解して、それをコードにする方法を考えるのが大事。機械的な部分は今やLLMがやってくれるしね。" userName="imiric" createdAt="2025/06/23 21:32:59" color="#38d3d3">}}




{{<matomeQuote body="”tmuxとかfzfとか使ってるんだね。atuin、starship、bat、glowとかもおすすめだよ”って言ってるけど、君がリストアップした名前のほとんどを知らない人からすると、これ全部 absurd に聞こえるだろうね。" userName="zahlman" createdAt="2025/06/23 23:07:53" color="">}}




{{<matomeQuote body="プログラミングの本質はツールの設定じゃなくて、創造することだよ。画家とか陶芸家と同じで、大事なのはツールじゃなくて作品を作ること。ツールに詳しくなるのはいいけど、それが全てじゃないんだ。マリア・ポベカ・モントーヤ・マルティネスみたいに、シンプルなツールでも素晴らしいものは作れるって話。" userName="kragen" createdAt="2025/06/23 22:47:27" color="">}}




{{<matomeQuote body="OPの言うことは分かるよ。昔のプログラマーは自分のスクリプトとか設定とか、道具箱みたいに持ってあちこち移動してたんだ。職人が自分の道具を持って仕事に行くのと同じ感じだね。" userName="macspoofing" createdAt="2025/06/23 21:57:33" color="">}}




{{<matomeQuote body="ソフトスキルとツールは対立しないし、両方大事だよ。ツールを突き詰めることで問題解決能力も上がるんだ。クヌースとかリーナスみたいな伝説的なプログラマーも、ツールの開発にめちゃくちゃ力を入れてた。ソフトスキルだけでずば抜けたプログラマーなんていないんじゃないかな。俺は彼らみたいになりたいし、ツールいじりはそれ自体が楽しいんだ。ツール磨きを“卒業”する気はないよ。" userName="iLemming" createdAt="2025/06/23 22:46:08" color="#ff33a1">}}




{{<matomeQuote body="俺もずっと自作ツールとか設定を使ってるから、慣れない環境は最初は大変だよ。自動化で時間が浮くこともある（grepの出力クリック化とか）。でも、ツール磨きに時間をかけるのは、使う時間や学ぶ時間を減らすことにもなる。最高のツールも使う人が未熟だと意味ないし、何時間もかけて自動化しても少ししか得しないこともある。昔のカスタマイズは今使わないけど、やったスキルは残ってるね。" userName="kragen" createdAt="2025/06/23 22:54:09" color="">}}




{{<matomeQuote body="ツールにこだわりすぎだよ。マジでデキる開発者は、何もない“naked”な環境でも速く結果出せる。いいツールは助けになるけど、ちょっとした改善でしかないし、個人的な楽しみの面が大きいんじゃない？どのIDE使うかで仕事の成果が大きく変わるなら、まだまだこれからだね。“knowing your tools”がプログラマーであることじゃなかった。俺が見た最高の開発者は、more／grep／viと思考だけで凄い仕事してたよ。価値を生むのは考えることだって。それはLLM使っても同じさ。" userName="groby_b" createdAt="2025/06/23 22:10:07" color="#ff5c5c">}}




{{<matomeQuote body="前のコメントには全く同意しないね。あの有名人たちは“devs for devs”（開発者向けにツールを作る開発者）だから、ツールに時間かけたのは製品のためなんだ。個人のツール改善は自分にしか影響ない。ソフトスキルだけでずば抜けたエンジニアはいるか？最高のエンジニアはツールは当たり前に使うけど、細かい改善よりお客さんとか他のチームと話したり、ドメイン知識つけたりするのに時間使うよ。ゲームチェンジャーになるようなツールには投資するけど、vim設定とかはしない。結局、ドメイン理解してコミュニケーションできる人が、最高の技術スキルだけの人より良いもの作るんだ。これは“プログラミングからの成長”だと思うな。でも、自分が幸せならそれが一番だよね！" userName="williamdclt" createdAt="2025/06/24 13:15:57" color="#ff5c5c">}}




{{<matomeQuote body="コマンドのリストいいね！fdとatuinもおすすめだよ。fdはfindの代わりに使いやすいし、atuinは昔のコマンドを探すのにめちゃくちゃ便利なんだ。CLI作業がすごく快適になるよ。" userName="tmountain" createdAt="2025/06/23 19:32:23" color="">}}




{{<matomeQuote body="なんと！このコメントに書かれたツールが数時間後にはHacker Newsのトップページに載ったんだって。コメント欄で触れたものがこうして話題になるなんて面白いね。この場所、最高だよ！" userName="yard2010" createdAt="2025/06/25 06:43:23" color="">}}




{{<matomeQuote body="ツールの最適化より創造が大事って話、分かるよ。芸術とか工芸もやるのが本質だもんね。でも、ツールをいじること自体がクラフトな場合も結構あるんだ。プログラミングツールを作ったり設定したり直したりするのは、まさにプログラミングそのものだよ。コード書いて、問題解決して、設計して…本業と同じスキルを使うんだ。ツールを理解して自分で作ることで、もっとシステムのことが分かるようになるしね。ツールの作業は、君をもっと良いプログラマーにしてくれると思うよ。偉大なプログラマーもツールをすごく大事にしてるからね。" userName="iLemming" createdAt="2025/06/23 22:58:16" color="#45d325">}}




{{<matomeQuote body="言いたいこと、全然分からないんだけど。プログラミングの本質はツール作りだよ。最高のプログラマーも最悪のプログラマーもツールは作る。ターミナルの設定アプリ作るのと、TeXみたいの作るのを本気で比べてるの？レベルが違うでしょ。" userName="norir" createdAt="2025/06/24 02:48:35" color="">}}




{{<matomeQuote body="ターミナルでのナビや検索を改善したり、結果にコマンドを実行するのが一番効率的だったよ。考えたことすぐできるようになった。" userName="skydhash" createdAt="2025/06/23 22:39:50" color="#ff33a1">}}




{{<matomeQuote body="シェル自慢してる奴らばっかの中で、まともな意見見れてよかったわ。" userName="deafpolygon" createdAt="2025/06/23 20:17:42" color="">}}




{{<matomeQuote body="プログラマーがコード書くより人と話す方が多いなら、それはソフトウェア自体を最適化してないってこと。今の世の中は実力じゃなく別の基準で評価されがちだけど、俺は毎日最高の自分を目指してるよ。実力主義はまた来ると思う。" userName="benreesman" createdAt="2025/06/23 23:07:32" color="">}}




{{<matomeQuote body="プロの世界は絶対競争でしょ。でも環境設定を過剰に評価するエンジニアが多いのには同意だわ。" userName="abletonlive" createdAt="2025/06/23 21:49:49" color="">}}




{{<matomeQuote body="エンタープライズの仕事じゃ、ソフトウェア工場みたいで創造性なんてほぼないよ。社交スキルが命で、予算内で動くもの作るのが全て。職人技は小さい会社とかFAANGでやるもんだね。" userName="pjmlp" createdAt="2025/06/24 09:18:14" color="">}}




{{<matomeQuote body="プログラマーってのは、開発環境の設定方法を知ってることも絶対そうだろ。" userName="smlavine" createdAt="2025/06/23 20:40:44" color="">}}




{{<matomeQuote body="プログラマーは環境設定じゃないって言ってるけど違うよ。ツール作りが本質なら、設定や機能拡張もツール作りと同じでしょ？どっちもプログラマーの仕事じゃん。優劣なんてないだろ？" userName="iLemming" createdAt="2025/06/24 05:44:45" color="#785bff">}}




{{<matomeQuote body="そんなことは言ってないよ。コメントを誤解してたみたい。たぶん、読んでる時のイメージが違ったんだね。" userName="cole-k" createdAt="2025/06/24 01:07:07" color="">}}




{{<matomeQuote body="基本ツールに慣れてるのは超大事。GNUのfindとかawkとか、昔から変わらずめっちゃ役立つし、自分もLinuxに移行して本当に良かった。VSCodeとか既成のツールしか使わない奴は、自分でハンデ背負ってるようなもんだよ。”shell bro”って言われたけど、マジな相手に挑んだらコテンパンにされるだけだろ。" userName="benreesman" createdAt="2025/06/23 23:02:30" color="#ff33a1">}}




{{<matomeQuote body="昔のウィンドウマネージャー設定とかPerlの開発経験は、今使ってないけどスキルは残ったよ。その過程を楽しんだなら、費やした時間はムダじゃなかったんだ。" userName="pantulis" createdAt="2025/06/24 07:05:05" color="">}}




{{<matomeQuote body="vimとかtmux使う人ってさ、Emacsの機能の半分くらいを、非公式でバグだらけだけど多分速い実装で自分で作り直してるようなもんだよね。" userName="thom" createdAt="2025/06/23 18:22:04" color="">}}




{{<matomeQuote body="vim/tmuxもEmacsも両方使うけどさ、私のEmacs設定の方がvim+tmux設定よりよっぽど場当たり的で非公式、バグだらけだよ ;)" userName="grep_name" createdAt="2025/06/23 19:22:53" color="">}}




{{<matomeQuote body="「半分」ってとこ見落としてない？Elispのコード量はマジで多いし、Emacsには専門アプリにすらない機能（月や太陽カレンダーとか！）もあるんだぜ。機能が少ないvim+tmuxがシンプルに感じるのは当たり前だよ。" userName="iLemming" createdAt="2025/06/23 21:10:52" color="#ff5733">}}




{{<matomeQuote body="知ってるよ！何年もEmacsをプロで使ってたし、今もEmacsじゃなきゃダメなこともある。でもね、シンプルで小さいものを組み合わせるのも良いんだ。<br>vim+tmuxは設定を何年も触ってないし安定してる。機能は少ないけど、Emacsで同じ機能を実現しようとしても色々苦労したんだ。<br>特に困ったのは、tmuxの＜c-b z＞みたいな機能、Evil modeのバグや統合の難しさ、Emacs内のターミナルの挙動やパフォーマンス、プロセス管理の面倒さ。<br>tmux+vimはEmacsのほんの少ししか実装してないけど、それが良いこともあるんだよ。俺はどっちも好きで使い分けてるよ。" userName="grep_name" createdAt="2025/06/24 16:15:03" color="#45d325">}}




{{<matomeQuote body="は？tmuxの＜c-b z＞って何言ってんの？Emacsには少なくとも1987年から(delete-other-windows)コマンドがあるぞ。ズームトグルがないって文句言ってるのはわかるけど。<br>てかさ、自転車とBugatti Veyron比べてるって気づいてる？tmuxはシンプルなペイングリッドだけど、Emacsのウィンドウはもっと状態を持ってるんだ。<br>Evil modeがダメ？俺は生粋のvimmerだけど笑えるね。vim/neovim以外でEvil modeだけが唯一のACTUALなvimエミュレーションだ。他の全部ダメダメ。EmacsではEvil modeは拡張って感じじゃなくて、最初から組み込まれてる主要機能みたいなんだよ。<br>結局、機能少ないものが安定してるって言うのは当たり前だろ。全然違うものを比べるのは無意味だよ。" userName="iLemming" createdAt="2025/06/24 18:09:35" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="その返信めっちゃ高圧的だね。(delete-other-windows)は存在するけど、俺が話してるズームトグルとは全然違うよ。<br>「文句言ってるだけ」って言うけど、ちゃんと具体例出したし！HNのフォーマットで見にくかったかもだけど。<br>自転車とBugatti Veyronの比較？うんうん、それこそが俺が言ってることで、Emacsは維持が大変なんだよ。俺は両方好きで使い分けてるって何度も言ってるでしょ。<br>自転車と車の例えもズレてるよ。俺は両方持ってるし、今回だって両方使ってる経験を話してるだけなのにさ。（gasp！）" userName="grep_name" createdAt="2025/06/24 18:55:11" color="">}}




{{<matomeQuote body="Emacsに足りないのは、OSみたいに他のアプリと張り合えるブラウザのcanvasみたいな2D描画APIくらいだね。" userName="skydhash" createdAt="2025/06/23 22:43:30" color="">}}




{{<matomeQuote body="Emacsに本格的なグラフィックエンジンが入るのは良い考えだけど、個人的にはEmacs内にブラウザがなくても困ってないよ。<br>ブラウジング履歴を辿ったり（¹ https://github.com/agzam/browser-hist.el）、Emacsからブラウザを操作したりできるんだ。<br>HNやRedditはOrg-modeで見てるし、最近HNを検索するパッケージも作ったよ（² https://news.ycombinator.com/item?id=44264368）。<br>エディタとブラウザを常に行ったり来たりする必要はそんなにないんだ。" userName="iLemming" createdAt="2025/06/23 23:25:22" color="#ff5c5c">}}




{{<matomeQuote body="vim+tmuxってさ、システム本来の機能、つまりパイプとかファイル、シグナルとかスクロールバックに依存してるんだよね。だから、ツールが環境を選ばずに透明に動くんだ。<br>これが移植性とかデバッグですごく強みになるの、特にssh越しとか制約されたシェルだとね。<br>こういうワークフローに慣れると、自分のvim configを作るのが自然な流れになるよ。" userName="b0a04gl" createdAt="2025/06/23 18:29:33" color="#45d325">}}




{{<matomeQuote body="ssh越しって話だけどEmacsにはTRAMPモードがあるんだよ<br>「Transparent Remote file Access Multiple Protocol」の略でね<br>これを使うとローカルみたいにファイル編集できるんだ<br>/ssh:user@host:/path/to/fileみたいにね<br>踏み台経由で接続したり/ssh:jumphost|ssh:target:/fileとか<br>DockerコンテナやKubernetes Podsの中身も/docker:container:/etc/config<br>/kubectl:pod:/app/settingsみたいにアクセスできるしSudoもシームレス/sudo::/etc/hostsとかね<br>もちろん組み合わせもOK/ssh:server|docker:container|sudo::/etc/nginx/nginx.conf<br>何が良いかって言うと透明な連携DiredとかMagitがそのまま使えるんだ<br>環境切り替えなしで自分のEmacs環境に居続けられるよ<br>キーバインディングやパッケージカスタマイズもそのまま<br>SSH FTP SMB ADB Androidとかマルチプロトコル対応だよ" userName="iLemming" createdAt="2025/06/23 19:20:56" color="#38d3d3">}}




{{<matomeQuote body="うんTRAMP経由のMagitね遅いけど一応動くんだ<br>https://news.ycombinator.com/item?id=44356346<br>まあTRAMPのせいじゃないんだけどさ<br>macOSのリモートだと上手く動かないことも多いんだよね<br>これもTRAMPだけじゃなくてデフォルト設定とか~/.zshrcと~/.zprofileの違いとか/etc/sshd/configの設定とか習慣の問題だと思うまだ完全には把握できてないけどね<br>こういう「全画面ターミナル画面共有」みたいなやり方の方が予測しやすいんだ<br>だって転送されるデータ量は通常キーストロークごとに1画面分ぐらいの文字と色だけだからね<br>それがメリットでもありデメリットでもあるんだ<br>ネットワーク接続に依存した入力遅延が発生するし出力も同じデータが何度も再送信されて再描画されることが多いんだよね" userName="onetom" createdAt="2025/06/25 06:27:45" color="">}}




{{<matomeQuote body="shellとかeshellについてもちゃんと触れるべきだったね<br>ansi-termは標準だとTRAMP経由では動かないけどワークアラウンドはあるみたいだよ<br>https://github.com/cuspymd/tramp-term.el<br>まだ試してないけどね" userName="onetom" createdAt="2025/06/25 06:37:38" color="">}}




{{<matomeQuote body="俺も小さなターミナルエミュレーター書いたことあるよ<br>2キーのtmuxプレフィックスをあらゆるコマンドでシングルキーCtrlに改造するためにね<br>他のターミナルエミュレーターでは通常無理なコマンドも対象だよ<br>https://github.com/ouillie/terminalle" userName="bloppe" createdAt="2025/06/24 00:13:13" color="">}}




{{<matomeQuote body="Jynさんこんにちは<br>「Nixを使わないのは友達のNixユーザーが元々変なバグ抱えてるのにさらに変なバグ抱えてるからってのとランタイムでインストールできない哲学が気に入らないから」って言ってたね<br>最初の理由はまあそう<br>Nixはreadonlyなストア(/nix/store)にインストールするから普通の動的リンクされたバイナリは動かないんだ<br>パッケージングのアプローチが違うから何か壊れた時に回避が難しいことはある<br>でも1年以上NixOS使ってるけどメリットの方がデメリットより断然良いと感じてるよ<br>バグに遭遇することもめったにないしましてや致命的なのはね<br>腹立つのはソースコードなしで配布されるツールが多いことでそれにはpatchelf当てたりnix-ldみたいなの使う必要がある<br>後半のランタイムでインストールできないってやつはNixを使えば考え方が変わると思うよ<br>もちろん`nix-env -iA $pkg`ってやることもできるけど推奨されてないんだ<br>ほらRustみたいなのもグローバルレベルでインストールしないようになったよ<br>`nix-shell -p $pkg`ってやれば一時的なシェルで使えるしプロジェクトのflake.nixに直接依存関係を記述することもできるんだ<br>もしよく使うプログラムなら頑張ってNixOSの設定に追加するかな" userName="huimang" createdAt="2025/06/24 12:21:49" color="#38d3d3">}}




{{<matomeQuote body="あー誤解してたみたい<br>「ランタイムで」は「グローバルに」と同じじゃないんだ<br>ランタイムでローカルにインストールしたいんだよ<br>でもNixのエバリュエーターはNix derivationでパッケージングされてないものは管理できないし<br>ネット上の適当なツールを動かすためだけにパッケージング方法を調べたくないんだ" userName="jynelson" createdAt="2025/06/24 14:26:00" color="">}}




{{<matomeQuote body="ああそれはもう少し複雑だね<br>選択肢としてはa) pkgs.autoPatchelfHookを使う[0] b) Nixを少し学んで自分でderivationを書く c) nix-ldを使う[1]って感じかな<br>pkgs.steam-runってのもあってゲームで想定される典型的な環境を提供してくれるよ<br>かなりのものが既にパッケージ化されてるけど大抵のものはパッケージ化するのがかなり早いと思うんだ<br>derivation[2]を1つか2つ書けばそんなに難しくないよ<br>他のディストリビューション向けにパッケージ作ったことないけどどれもかなり面倒そうだったんだよね<br>でもnixpkgs reference[3]にほとんどのものが載ってるしnixpkgsの似たようなパッケージのソースコードを見ることもできるよ<br>学ぶのには時間がかかるから魅力的じゃないのは理解できるけどね<br>[0]: https://github.com/svanderburg/nix-patchtools<br>[1]: https://blog.thalheim.io/2022/12/31/nix-ld-a-clean-solution-...<br>[2]: https://ayats.org/blog/nix-tuto-2<br>[3]: https://nixos.org/manual/nixpkgs/stable/" userName="huimang" createdAt="2025/06/24 15:13:33" color="#45d325">}}




{{<matomeQuote body="俺はNixを「ランタイムでインストールできない」からこそ使ってるんだよ<br>そうすることでランタイム環境が勝手に変わるってサプライズに遭遇しなくて済むんだ<br>コンテナでも部分的にこの問題は解決できるけどそれ自体にも使い勝手の問題があるしね<br>最近はどんなプロジェクトも`nix flake init --template templates#utils-generic`から始めてプロジェクト関連のものは全部そこに入れてるんだ<br>スクリプトでsshを使ったプロジェクトではmacOSとLinuxのデフォルトバージョンで受け付けるフラグが違ったから`ssh`をピン留めしたパッケージとして入れなきゃいけないこともあったよ<br>どのマシンでも`nix run nixpkgs#nmap`って実行すれば心配なくプログラムを即座に実行できるのも大好きだよ<br>この機能はうちのプロジェクトの一部でも使ってて管理webインターフェースのリンクをクリックするとiTerm2[0]の「コマンドURL」みたいになってるんだ<br>`nix run gitlab.com/example/example/v1.0 -- test http://example.com`<br>これはターミナルで特定のバージョンのコマンドを実行するかプロンプトが出るんだけどソースリポジトリをチェックアウトする必要もないんだ<br>この場合はデバッグ目的で特定タスクをローカルで再実行するためだよ<br>[0] https://iterm2.com/documentation-command-selection.html" userName="aequitas" createdAt="2025/06/24 14:13:03" color="#ff5c5c">}}




{{<matomeQuote body="俺も似たような技使ってるよ！tmuxのスクロールバック機能とfzfをパイプで繋げて、tmuxの画面にあるものなら何でもzshで簡単に補完できるようにしてるんだ。これマジで便利だよ。<br>詳細はこちらのGistとThreadsの投稿を見てね。<br>https://www.threads.com/@kunalb_/post/C6ZQIOVpwMd<br>https://gist.github.com/kunalb/abfe5757e89ffba1cf3959c9543d9..." userName="knlb" createdAt="2025/06/24 00:05:45" color="#45d325">}}




{{<matomeQuote body="俺はXTermのデフォルト機能 dabbrev-expand を Alt-/ で使って同じことやってたんだ（設定はここ）。https://github.com/ttsiodras/dotfiles/blob/master/.Xresource...<br>これはどのShellでも動くんだよ。<br>でも、君の方法に興味あったから、Claudeに頼んでbash版に変換してもらったよ。https://claude.ai/public/artifacts/01a49347-1617-4afe-8476-0...<br>これがバッチリ動いてね、空いてた Ctrl-k に割り当てたら XTerm に依存しなくて済むようになった！<br>ありがとう！" userName="ttsiodras" createdAt="2025/06/24 21:00:50" color="#785bff">}}




{{<matomeQuote body="こういうワークフローの共有方法、マジで感謝してるわ。読者によく合ってる。<br>動画に音があったらもっと良かったけど、後でアクションリストを読むのもアリだね。自分のやり方に取り入れたいこととか、考え方を変えたいこととか、いくつか学べたよ。<br>tmuxの難しいショートカットって言ってたけど、君や他の人は byobu って使ったことある？あれtmuxのラッパーだと思うんだけど、Fキー中心だから使いやすいと思うんだ。俺は10年くらい前に教えてもらってからずっと使ってるよ。" userName="gertlex" createdAt="2025/06/23 18:03:56" color="">}}




{{<matomeQuote body="楽しんでもらえて嬉しいよ :) 記事は分かりやすくて、さっと読めるようにしたかったんだ。<br>＞tmuxの難しいショートカット<br>あー、俺はtmuxのショートカットほとんど全部変えてるんだ。`ctrl-k`はデフォルトのPrefixじゃないし、`h`も左のPaneを選択するデフォルトキーじゃないんだよ。<br>byobuは試してないけど、Readmeを軽く見た感じだと、デフォルトのキーバインドが良い以外は大差なさそうだし、ターミナルにこれ以上レイヤー増やしたくないかな。" userName="jynelson" createdAt="2025/06/23 18:11:13" color="">}}




{{<matomeQuote body="あー、なるほどね！俺が byobu を推す主な理由は、初心者やデフォルト設定で使いやすいことなんだ。俺自身はカスタマイズしたことないし、Hotkeysも全部は覚えてないんだ。<br>俺たちの開発環境には byobu がインストールされてる Robot があって、非SWエンジニア（ハードウェア担当者とか技術者、QA）に使い方を教えるのがずっと楽なんだ（主にリモートセッションを維持するためにね）。<br>（だから俺も最近はあまり重いカスタマイズはしないんだ。ローカルと Robot のマシンで設定を統一したいからね…）" userName="gertlex" createdAt="2025/06/23 23:55:40" color="">}}




{{<matomeQuote body="＞馬〜<br>ただ、ターミナルを本当に使いこなせる人を見たことあるなら、他のGUIベースのワークフローと比べて彼がどれだけ何倍も速く作業できるかに驚くだろうね。<br>これはAIで変わるかもしれないけど、今のところ俺はあまり期待してないな。" userName="ur-whale" createdAt="2025/06/24 07:24:39" color="">}}




{{<matomeQuote body="ポイントはグラフィックの欠如じゃなくて、キーボードとテキストがユニバーサルなデータ形式として使えることなんだよ。<br>GUIのプログラムは見た目はいいけど、相互運用性については悪夢だね。<br>とは言え、Emacsユーザーとしては、Emacsを使わないでこれほど努力する人がいることに驚きだよ。これはまさに Emacs が作られた理由だし、ハッカーが使いやすいように全部組み込まれてるのに。" userName="globular-toast" createdAt="2025/06/24 06:21:02" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
