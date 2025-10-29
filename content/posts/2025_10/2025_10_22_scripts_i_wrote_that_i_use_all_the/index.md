+++
date = '2025-10-22T00:00:00'
months = '2025/10'
draft = false
title = '開発効率爆上げ！僕が毎日使う自作シェルスクリプトの驚きの効果'
tags = ["シェルスクリプト", "開発ツール", "キャッシュ", "CLI", "効率化"]
featureimage = 'thumbnails/red1.jpg'
+++

> 開発効率爆上げ！僕が毎日使う自作シェルスクリプトの驚きの効果

引用元：[https://news.ycombinator.com/item?id=45670052](https://news.ycombinator.com/item?id=45670052)




{{<matomeQuote body="memo(1) (https://github.com/aktau/dotfiles/blob/master/bin/memo) ってツールを知ってるかい？<br>これはコマンドの出力をメモ化して、シェルパイプラインの反復開発を爆速にしてくれるんだ。<br>一時ファイル使うよりずっと楽だし、冗長なRPCコールも防げるから、開発効率がマジで上がるぞ！<br>環境変数はハッシュ化されないから注意してね。" userName="aktau" createdAt="2025/10/23 09:12:00" color="#ff5733">}}




{{<matomeQuote body="up (https://github.com/akavel/up) ってツールはきっと気に入るはず！<br>curlの出力をupにパイプすると、ライブなプレイグラウンドでパイプラインの残りの部分を微調整できるんだ。<br>これは本当にすごいぞ！" userName="aabdelhafez" createdAt="2025/10/23 14:29:56" color="#ff33a1">}}




{{<matomeQuote body="up(1)はめちゃくちゃクールだね、俺のツールボックスに追加しようと思うよ。<br>up(1)とmemo(1)は似たような使い方だけど、俺はmemo(1)を使い続けると思うな。<br>パイプラインの途中のコマンドを編集することが多いんだけど、memo(1)の方がやりやすいんだ。<br>それに、upは余分なファイルを作るみたいだけど、memo(1)はそれを避けるのが目標だからね。" userName="aktau" createdAt="2025/10/23 14:45:05" color="#38d3d3">}}




{{<matomeQuote body="memo(1)にはね、自動圧縮機能も組み込んであるんだ！<br>zstdとかlz4とかを使って、保存する内容を自動で圧縮・解凍してくれるんだよ。<br>これでディスク容量もIOPSもすごく節約できるんだ。冗長性が高いから、約10倍も圧縮できることもあるんだぜ！" userName="aktau" createdAt="2025/10/23 12:24:06" color="#785bff">}}




{{<matomeQuote body="これ最高じゃん！俺もいつもcurlの結果をファイルに保存して、それをパイプしてたんだ。<br>これはマジで助かるよ。<br>ところで、LLMにbash履歴を食わせて、ワークフローの改善を提案してくれるような時代になったんじゃないかな？" userName="dotancohen" createdAt="2025/10/23 11:26:19" color="#ff33a1">}}




{{<matomeQuote body="そのアイデア、面白いね！簡単に試せそうだし、結果が聞きたいな。<br>LLMが俺たちのPC操作を20分くらい見て、ワークフロー改善やツールの提案をしてくれるってとこまで来てないかな？<br>何かを知りたいと思って聞くと、すごく役立つ答えが返ってくるから、きっとできると思うよ。" userName="edanm" createdAt="2025/10/24 12:28:41" color="#38d3d3">}}




{{<matomeQuote body="memo(1)じゃなくて、sedとかmkfifoを使っても似たようなことできるぜ。<br>例えば、`x=$(mktemp -u); test -p $x||mkfifo $x; zstd -19 ＜ $x ＞ tmpfile.zst & ＜long running command＞|sed w$x|＜rest of pipeline＞;`みたいな感じで出力を保存できる。<br>grepの代わりにsedで結果をstderrに送ったり、複数のファイルに保存したりもできるよ。" userName="1vuio0pswjnm7" createdAt="2025/10/23 23:30:09" color="">}}




{{<matomeQuote body="そのコマンドは、(1)ちょっと分かりにくいし、(2)実際にはメモ化した結果（tmpfile.zst）を使ってその後の実行を高速化してないんじゃない？<br>パイプラインの開発を高速化するために、どうやって使うのか、もっと具体的な例を教えてくれないかな？" userName="aktau" createdAt="2025/10/24 13:01:46" color="">}}




{{<matomeQuote body="もしテキストの入力形式と、どんな出力形式が欲しいか教えてくれたら、テキスト処理の方法を具体的に教えてあげられるよ。" userName="1vuio0pswjnm7" createdAt="2025/10/24 13:53:23" color="">}}




{{<matomeQuote body="Linuxを15年も使ってるけど、いつも新しいことを学んでるよ…" userName="gavinray" createdAt="2025/10/23 10:19:54" color="">}}




{{<matomeQuote body="だからまたここに戻ってきちゃうんだよね。これをどうやって覚えといて、tmpfilesに戻らないようにすればいいかな :)" userName="mlrtime" createdAt="2025/10/23 11:39:38" color="">}}




{{<matomeQuote body="Warp terminalを数年使ってるんだけど、最近AIが組み込まれたんだ。最初はイライラして無効にしたけど、AI Agentはオプションモード（Cmd-Iで切り替え）で、結局よく使うようになったよ。コマンドを覚えたりmanページを掘り下げたりする気力がないときに（「wifiインターフェースのIPアドレスを調べる」とか「ffmpegでこれあれする」とか）すごく便利。速いしエラーも自分で修正できるから、もう手放せないね。「コマンドを記憶するツール」が全く必要なくなったよ。" userName="divan" createdAt="2025/10/23 12:26:03" color="#ff5733">}}




{{<matomeQuote body="サブプロセスキャッシングにはbkt (https://github.com/dimo414/bkt) を使ってるよ。キャッシュの有効期限（TTL）を設定できるとか、いい機能があるんだ。記事のインパイプラインのmemoizationは良さそうだけど、bktがそれをサポートしてるかは分からないな。" userName="news_hacker" createdAt="2025/10/24 03:53:15" color="#38d3d3">}}




{{<matomeQuote body="bktは知らなかったよ。リンクありがとう！memoにすごく似てるけど、より機能が豊富だね。明示的なTTLとか、作業ディレクトリをキャッシュキーのコンテキストに含められるとか。でも僕の視点からすると欠点もあるみたい。Rust製だからコンパイルが必要だし（memoはbash/zshスクリプトでそのまま動く）、READMEやソースコードには透過的な圧縮については言及がないね。https://github.com/dimo414/bkt/issues/62でスワップ可能なバックエンドに触れてるけど、ファイルシステムじゃなくてデータベースを使うのは僕にはプラスじゃないな。僕は一般的なツールで状態を簡単に調査できる方が好きだから。ギガバイト級のデータを出力するコマンドをmemoにすることがよくあるんだけど、それは通常、非常に圧縮可能だし、透過的な圧縮があれば解決する。ZFSみたいなファイルシステムレベルの機能で避けられるという意見もあるけど、クロスFSでそれを検出する方法は分からないな。bktの作者も参加できるようにhttps://github.com/dimo414/bkt/discussions/63を開いたよ。" userName="aktau" createdAt="2025/10/24 13:10:21" color="#38d3d3">}}




{{<matomeQuote body="コストが高いからAPIコールをキャッシュして、何ヶ月も後にbashのサジェストでそのキャッシュデータを使っちゃったよ :(" userName="Perepiska" createdAt="2025/10/23 12:27:42" color="">}}




{{<matomeQuote body="memo(1)のデフォルトの保存場所は/tmp/memo/${USER}だよ。ほとんどのディストリビューションでは、自動で定期的にクリーンアップされるか、再起動時に削除される。それとは別に、呼び出しには*memo*って入ってるから、ユーザーはそれがmemoizeする可能性があるってわかるはず。memo(1)は一般的に遅いコマンドに使うものだよ。遅い部分があるコマンドを再実行して、予期せずミリ秒で返ってきたら、なんかおかしいって気づくべきだよね。実際、これで困ったことは一度もないし、このハックされたコマンドを何年も使ってるよ。" userName="aktau" createdAt="2025/10/23 14:14:52" color="#ff5c5c">}}




{{<matomeQuote body="例を見てもmemoに名前を付ける方法がないみたいなんだけど、後でどうやって参照するの？あと、これってパイプでやり取りできるシェルスクリプトを自動で書く方法みたいだよね。だから、みんなを驚かせないシェルスクリプトを使うんじゃなくて、なぜこれを使うの？これは予期せぬ動作をするかもしれないのに。" userName="naikrovek" createdAt="2025/10/23 16:21:44" color="#785bff">}}




{{<matomeQuote body="memoの名前はその後ろに来るコマンドそのものだよ！<br>$ memo my-complex-command --some-flag my-positional-arg-1<br>この呼び出しでは、「my-complex-command --some-flag my-positional-arg-1」のハッシュ（sha512）が取られて、それが/tmp/memo/${USER}/{sha512hash}.zstに保存されるんだ（zstdがインストールされていればね。なければ他の圧縮拡張子だよ）。" userName="aktau" createdAt="2025/10/23 21:02:50" color="#ff5733">}}




{{<matomeQuote body="マジこれ最高じゃん！シェアしてくれてありがとう！" userName="sgarland" createdAt="2025/10/23 13:17:01" color="">}}




{{<matomeQuote body="＞`curl ... | jq . | awk ’...’`ってあるけどさ、`jq`って`awk`と同じくらい（それ以上）パワフルだよ。直接`jq`を使えば`awk`は飛ばせるって知ってた？まあ、昔からの習慣ってなかなか変えられないし、関数型プログラミング言語の学習も簡単じゃないのはわかるけどね。" userName="cryptonector" createdAt="2025/10/23 15:46:24" color="#ff5733">}}




{{<matomeQuote body="うん、知ってる。違う例出すべきだったね。でも現実的でもあるんだ。単発の作業ではこんなショートカット使うこともあるし。awkはよく知ってるし、`jq .`でJSONが整形されるのは知ってる。ちゃんとした`jq`の式も作れるけど、この組み合わせの方が早く終わるんだよね。同じく`awk ’...’ | grep | ...`ってやることも。`awk`の最初に条件追加しに戻るのが面倒だからさ。スクリプトに保存するなら整理するけど。正直、`jq`に関しては最近はLLMに聞いて、その答えを叩き台にするだろうな。`jq`の言語を覚えるほど使ってないんだ。" userName="aktau" createdAt="2025/10/23 21:09:22" color="">}}




{{<matomeQuote body="＞`trash a.txt b.png`ってやつ、ファイル順にゴミ箱に入れるから、ファイルごとに音が鳴るしFinderで`⌘Z`しても最後のしか戻せないよ。macOS標準の`trash`コマンド使うといい。Finder使わないから音なし`⌘Z`なしだけど、速いし“元に戻す”はできる。＞`jsonformat`で`jq`じゃなくて`node`を優先する理由は何？`jq`の方がコード少ないしmacOSにはプリインストールされてるし。＞`uuid`でv4 UUID作るなら、macOSとかLinuxにある`uuidgen`を使わないのはなぜ？<br>https://www.man7.org/linux/man-pages/man1/uuidgen.1.html" userName="latexr" createdAt="2025/10/22 19:05:55" color="#ff33a1">}}




{{<matomeQuote body="俺は著者じゃないけど、たぶん彼はその存在を知らなかったんじゃないかな。自分の設定とか知識を共有する最高の点は、誰かが必ず自分の盲点に光を当ててくれるってことだよね。" userName="tester457" createdAt="2025/10/22 20:28:42" color="">}}




{{<matomeQuote body="もっと抽象的に言えば、何かインターネットに投稿したら、人はいつも君がどう間違ってるかを詳しく説明するだろうね。時にはそれが役に立つこともあるけど。" userName="_kb" createdAt="2025/10/22 23:25:17" color="">}}




{{<matomeQuote body="それは特にHNで顕著だよね。他のフォーラムでもそういうのはあるけど、HNだとほぼ全てのコメント欄が、75%（適当な数字だけど）くらい投稿記事の欠点を指摘してるように見えるよ。" userName="byryan" createdAt="2025/10/23 00:34:46" color="">}}




{{<matomeQuote body="普段、理屈っぽい奴は嫌いなんだけど、HNの奴らはまだマシだと気づいたんだ。なぜなら、自分の主張を事実（できれば引用）で裏付ける必要があるってわかってるからね。HNの理屈っぽい会話からは、他のフォーラムやSNSより何かを学べる可能性が高いと感じるよ。他のプラットフォームではスルーしちゃうけど、HNではオタクの戦いの勝敗だけでなく、途中で何か一つでも学べるかもって好奇心が湧くんだ。コメント欄への関わり方に影響があったのが気に入ってる。" userName="gaudystead" createdAt="2025/10/23 01:29:11" color="#45d325">}}




{{<matomeQuote body="そして最悪なコメントはフラグが立てられたり、消されたりするから、ほとんどの人は少し経てばスキップするよね。最近もそうなると思ったよ。<br>https://news.ycombinator.com/item?id=45649771" userName="password4321" createdAt="2025/10/23 01:53:42" color="">}}




{{<matomeQuote body="`trash`の代わりに、`rm`を再実装（ある程度の時間が経つかリソース使用量に応じて初めて本当に削除するとか、本当に削除したいならシュレッドするとか）するか、`zfs`を使う方がずっと理にかなってるよ。" userName="YouAreWRONGtoo" createdAt="2025/10/22 22:14:33" color="">}}




{{<matomeQuote body="こんなことのために`rm`を再実装したい状況なんて、ちょっと思いつかないな。" userName="orhmeh09" createdAt="2025/10/22 23:17:08" color="">}}




{{<matomeQuote body="HNのフラグ機能って荒っぽいけど、投稿にはかなり役立つよ。俺が読む「dead」な投稿は、ほとんどガイドライン違反してるのばっかりだし。でも、いい記事が埋もれるからストーリーにフラグを立てるのは好きじゃないな。とはいえ、HNは平和で繊細な議論には向いてないし、結局炎上して埋もれるから、どっちでもいいか。全体的にはまあまあ良いと思うけど、繊細さに欠けるのは確かだね。" userName="kergonath" createdAt="2025/10/23 11:47:26" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="自作スクリプトより、ネイティブ機能の方が良い例を挙げるね。`vim`で範囲選択してから`:’＜,’＞!markdownquote`ってやるより、`ctrl-v`で最初の列を選んで`”i＞ ”`、それから`escape`。選択後4キーだよ、20キーじゃなくて。<br>`u+ 2025`で`ñ`が出るってあるけど、`unicode`は広く使えて、良いデフォルト検索もオプションも多いんだ。<br>ちなみに、なんで`”2025”`が`”ñ”`にマッチしたんだろ？<br>`catbin foo`ってのは基本的に`cat ”$(which foo)”`だよね。作者が`zsh`を使ってるなら、`cat =foo`の方が短くて強力だよ。長いコマンドでも`zsh`が`=`の後に賢く補完してくれるから、エラーも少ないしね。俺も`file =firefox`とか`vim =myscript.sh`みたいによく使うよ。" userName="idoubtit" createdAt="2025/10/23 00:29:07" color="#ff5733">}}




{{<matomeQuote body="俺は、批評が愛おしいと思うよ。理由は2つ。<br>1. 批判が的を得てて、何か学べる。<br>2. コメントしてる人が何も分かってなくて、それが面白い。<br>その中間ってのは、ほとんどないね。" userName="bdangubic" createdAt="2025/10/23 00:43:11" color="">}}




{{<matomeQuote body="https://news.ycombinator.com/newsguidelines.html<br>優しくして、皮肉を言わないで。好奇心を持って話して、尋問しないで。攻撃的な言葉は編集で削除して。<br>無害な発言をした相手に失礼な態度をとる代わりに、優しく、君が主張する状況を説明するのに言葉を使えたはずだ。もしかしたら、彼らはChatGPTに聞いたけど、その答えに納得できなかったのかもしれないしね。ちなみに、君の攻撃がどう意味をなすのか、俺には理解できない。むしろ、ChatGPTが必要なことこそ想像力の欠如を示すものだよ。" userName="latexr" createdAt="2025/10/23 08:58:39" color="#ff5733">}}




{{<matomeQuote body="俺は`showdead`をオンにしてるけど、俺が見たフラグ付きの投稿は、ほぼ全部がそれに値すると思うよ。`”値しない”`って時でも、その人は何の理由もなく過度に攻撃的なトーンだったしね。要するに、間違った意見を持ってるだけでフラグが立った人なんて見たことない。物議を醸す意見でさえ、よっぽど危険だったり常軌を逸してない限り、フラグは付かないものだよ。" userName="MyOutfitIsVague" createdAt="2025/10/23 14:29:17" color="">}}




{{<matomeQuote body="うん、特に気にしてないけど、他のフォーラムと比べるとHNの面白いところだよね。" userName="byryan" createdAt="2025/10/23 00:58:25" color="">}}




{{<matomeQuote body="`applescript`を実行して、Finderに一括でファイルを削除させることはできると思うよ。理論的には、`applescript`をシェルスクリプト内で直接構築・実行することも可能だろうね。シェルから呼び出す際に、ファイルリストを引数として受け取って削除する`applescript`ファイルを書く方が簡単（でもまだ楽じゃないけど）だろうな。" userName="gcanyon" createdAt="2025/10/23 05:20:11" color="#ff5733">}}




{{<matomeQuote body="macOSでゴミ箱使うなら、https://github.com/ali-rantakari/trash がオススメだぜ。ちゃんと動くし、超使える！LinuxやBSDでも似たようなツールを長年使ってるんだけど、今FreeBSDデスクトップがないから確認できないんだよな。" userName="frumplestlatz" createdAt="2025/10/22 22:02:19" color="#ff33a1">}}




{{<matomeQuote body="`trash`ってツール、知れてよかった、サンキュー！今までFinderアプリに”{%s}をゴミ箱へ移動”って命令してたんだよな。この%sは”POSIX file ＜path-to-file＞”のコンマ区切りリストだぜ。" userName="mmmm2" createdAt="2025/10/22 21:17:49" color="">}}




{{<matomeQuote body="＞`unicode`は広く利用可能<br>俺のmacOSやUbuntuには、デフォルトでインストールされてないぜ。" userName="oneeyedpigeon" createdAt="2025/10/23 09:40:20" color="">}}




{{<matomeQuote body="想像してみてよ、お前のコメントがフラグ付けされたらさ。すごく価値あるもんだったとして、議論に何か重要なものが欠けるのか？まさかな！でもどう感じる？そこまで穏やかじゃない、”不快”じゃない意見持ってるからって、なんでフラグ付けするんだよ？みんなに低評価させればいいじゃんか！" userName="imcritic" createdAt="2025/10/24 10:12:03" color="">}}




{{<matomeQuote body="Pythonもデフォルトでキレイに整形出力してくれるぜ:<br>    $ echo ’{ ”hello”: ”world” }’ | python3 -m json.tool<br>    {<br>        ”hello”: ”world”<br>    }" userName="rbonvall" createdAt="2025/10/22 20:27:58" color="#45d325">}}




{{<matomeQuote body="その通り！macOSにJQやuuidgenツールが搭載されてるなんて知らなかったぜ。超クール！" userName="gigatexal" createdAt="2025/10/22 22:08:16" color="">}}




{{<matomeQuote body="これは偶然にもCunningham’s Lawとして成文化されてるぜ。https://meta.wikimedia.org/wiki/Cunningham%27s_Law<br>…そして直接的ではないけど（Wikipedia記事でも参照されてるが）…https://xkcd.com/386/" userName="inanutshellus" createdAt="2025/10/23 01:05:41" color="#ff5733">}}




{{<matomeQuote body="君は正しいけど、<br>  $ unicode<br>  Command ’unicode’ not found, but can be installed with:<br>  sudo apt install unicode<br>って出て、実際インストールできたんだ。だから本当に利用可能だったんだよ。これはDebian 11の話ね。" userName="pmontra" createdAt="2025/10/23 13:49:17" color="#785bff">}}




{{<matomeQuote body="`rm`や`trash`の代替として`rip`を推しておくぜ:https://github.com/nivekuil/rip" userName="Grimburger" createdAt="2025/10/22 21:35:42" color="#45d325">}}




{{<matomeQuote body="jqじゃなくてnodeを優先する意味ある？PowerShellなら`echo ’{”foo”: ”bar”}’ | ConvertFrom-Json | ConvertTo-Json`ってやればJSON処理できるのに。関数としてならもっと使えるよ。" userName="shortrounddev2" createdAt="2025/10/22 20:51:44" color="">}}




{{<matomeQuote body="あるあるだよね。DIYや「ハック」のショート動画を見てると、必ず「それは違う」「もっと良い方法がある」っていうコメントがいっぱいあるのが面白いんだ。動画と同じくらい楽しめるよ。" userName="mlrtime" createdAt="2025/10/23 11:45:46" color="">}}




{{<matomeQuote body="それはサンプリングバイアスだよ。記事を読んだ全員の意見じゃなくて、わざわざコメントした人の意見しか見てないからね。同意する人はだいたい高評価だけ押すし、褒めるためにコメントする人はほとんどいないから、批判的なコメントが多くなるんだ。" userName="Mawr" createdAt="2025/10/23 23:29:28" color="">}}




{{<matomeQuote body="HNで他開発者の働き方を知りたいし、そこから自分の仕事を改善したいんだ。最初は不要だと思っても「珍しいタスクが安価になると、新しいワークフローの基礎になる」効果（誘発需要に似てるね）があるから、ほとんど試してみるよ！記事のスタイルもすごく良いね。著者が各スクリプトの使用頻度を書いてくれてるのが超助かる。これで、どのスクリプトが効果的か事前にわかるからね。ちなみに、俺はブラウザのdev toolsでJavaScriptを使って文字列を小文字にしたりしてるよ :)" userName="soiltype" createdAt="2025/10/22 17:59:56" color="#45d325">}}




{{<matomeQuote body="著者のやり方と俺のやり方で、費用対効果の分析を見てみたいな。著者がスクリプトを作るのにかかった時間、使い方を覚えたり、構文を忘れた時に調べたりする時間、それにシステムを変えるたびに移行にかかる時間なんかも含めてさ。" userName="chipsrafferty" createdAt="2025/10/22 18:42:05" color="#785bff">}}




{{<matomeQuote body="なんでそんなことが気になるの？これ全部やる目的は、長い目で見ればもっと効率的になるためでしょ。もちろん初期設定のコストや学習曲線はあるけど、それが終われば開発環境にかなり効率的だと感じるはずだよ。学習に時間かかるからって、努力する価値がないみたいに言ってるように聞こえるけど？俺は学習にそんなに時間はかからないと思うんだ。もちろん人それぞれだけどね。君の意見は問題じゃないように思えるな。" userName="te_cima" createdAt="2025/10/22 19:00:13" color="">}}




{{<matomeQuote body="自作スクリプトをいじるのに、結局、節約できる時間より多くの時間を無駄にする可能性が高いから面白いんだよ。<br>https://xkcd.com/1205/<br>例えば、ブログ記事にあった「月に一回やる5秒のタスク」のスクリプト。著者がそのスクリプトを書いたりメンテしたりするのに5分以上かけてないことを願うね。そうじゃなきゃ、長い目で見たら時間を無駄にしてるだけだからさ。" userName="akersten" createdAt="2025/10/22 19:04:07" color="#ff5c5c">}}




{{<matomeQuote body="このbashショートカット、俺はすごく重宝してるよ。<br>https://raw.githubusercontent.com/fliptheweb/bash-shortcuts-..." userName="fragmede" createdAt="2025/10/22 21:20:33" color="">}}




{{<matomeQuote body="＞ 構文を忘れた時に参照する<br>もしそうする必要があるなら、そのスクリプトは改善が必要だよ。常に`--help`オプションを追加して、何をするスクリプトで、どんな引数を取るのか説明するべきだね。" userName="latexr" createdAt="2025/10/23 08:26:20" color="#ff5c5c">}}




{{<matomeQuote body="Python使うならargparseがめっちゃ便利だから試してみて。コマンドライン処理を分離できるし、--helpページも自動で出してくれるんだぜ。https://docs.python.org/3/library/argparse.html" userName="tom_" createdAt="2025/10/23 12:14:27" color="#ff5c5c">}}




{{<matomeQuote body="そのxkcdには同意できないな。時間って全部が平等じゃないだろ？緊急時には後で効率化するために今時間を使う価値があるんだよ。それに、どれくらい頻繁に使うかなんてわかんないじゃん。" userName="janalsncm" createdAt="2025/10/23 03:47:29" color="">}}




{{<matomeQuote body="xkcdはアジェンダを押し付けてるわけじゃなくて、時間と効率の関係をただ事実として提示してるだけだろ。" userName="normie3000" createdAt="2025/10/23 08:09:14" color="">}}




{{<matomeQuote body="たとえ時間がかかっても、イライラが減るならそれもメリットだろ。それに、スクリプトを公開すれば他の人も使えるし、初期コストなしで時間を節約できる。共有することで、さらにみんなが自分のスクリプトを共有するきっかけにもなるんだぜ。" userName="duskdozer" createdAt="2025/10/23 01:11:08" color="#ff5733">}}




{{<matomeQuote body="ハッカーカンファレンスでツールやスクリプト、裏技を共有するのって最高だったよな。トレーディングカード交換みたいで、今でもそれが一番恋しいんだ。" userName="klaussilveira" createdAt="2025/10/23 12:19:21" color="">}}




{{<matomeQuote body="Pythonは好きじゃないけど、argparseは確かにすごく良いツールだよ。RubyのOptionParser¹はイマイチだと思ってた。SwiftにはApple公式のArgument Parser²っていうかなり高機能なやつがあるし。シェルスクリプトには、俺が長年使い回してるパターンがあるんだ。<br>¹ https://github.com/ruby/optparse<br>² https://github.com/apple/swift-argument-parser" userName="latexr" createdAt="2025/10/23 12:55:25" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="こういう議論でよく忘れられがちなのが、経験の獲得だよね。「無駄にした」と思った時間も、実は将来もっと複雑なタスクを速く書けるようになるための経験として蓄積されて、後々時間節約につながるんだよ。" userName="latexr" createdAt="2025/10/23 08:32:22" color="#ff5733">}}




{{<matomeQuote body="俺もこの手の話は大好きなんだけど、これまで色んな環境で、こういう高レベルなニッチツール（自分のdot filesも含めて）が使えなかったり、ツール自体が廃れてしまったりして、結局基本的なコマンドやビルトインを思い出すのに苦労することが多かったんだ。だから、最近はそういうツールの採用にはかなり慎重になってるよ。" userName="freedomben" createdAt="2025/10/23 18:18:57" color="">}}




{{<matomeQuote body="`set editing-mode vi`とか`info readline`について教えてやるなよ。彼がせっかく頑張ってシェルスクリプト作ってるのに、既存機能でできるって言ったらやる気なくすだろ？ま、でも知ってた方が便利なのは間違いないけどね。" userName="kevinrineer" createdAt="2025/10/23 20:17:07" color="">}}




{{<matomeQuote body="俺の経験だと、自作スクリプトは“多分”じゃなくて“ほぼ確実に”問題が起きるからやめたんだ。<br>新しいシステムへの設定、クロスプラットフォームじゃない、他人のPCじゃ使えない、突然壊れる、存在を忘れる...<br>これらのイライラがメリットを上回るんだよ。最初は良いんだけど、結局使わなくなるんだ。" userName="chipsrafferty" createdAt="2025/10/24 03:24:25" color="#785bff">}}




{{<matomeQuote body="XKCDの漫画“Is It Worth the Time?”の話だけどさ。<br>例えば、半年ごとに30分かかるタスクを5年間やると5時間分の“労働”時間になる。だから、自動化に5時間以上かかるならやらない方が良いって解釈されがちだよね。<br>でも、それがアプリのダウンタイム5時間だったら、もっと時間かけてでも自動化する価値はあるだろ？" userName="janalsncm" createdAt="2025/10/23 20:32:22" color="#45d325">}}




{{<matomeQuote body="アイデアを得るために色々試すことってあるじゃん。<br>今回みたいなちょっとした問題を解決する中で、別の状況でも役立つような技術を学べるんだよ。時間短縮だけが全てじゃないってこと。" userName="skydhash" createdAt="2025/10/22 23:01:11" color="">}}




{{<matomeQuote body="“新しいシステムに毎回全部設定し直さないといけない”って言うけどさ。<br>それって、まさにスクリプトで自動化できることなんじゃね？（笑）<br>自分で言ってることとやってることが矛盾してない？" userName="yellowapple" createdAt="2025/10/24 19:09:11" color="">}}




{{<matomeQuote body="時間節約だけが自動化の唯一の要素じゃないんだよ。<br>俺は時間を大幅に節約するためじゃなくて、エラーが起きやすいプロセスをコード化して、ヒューマンエラーのリスクを減らすために自動化することもあるね。<br>その方が、節約できる時間以上に価値があるんだ。" userName="yellowapple" createdAt="2025/10/24 19:42:31" color="#38d3d3">}}




{{<matomeQuote body="最近はAIのおかげで、スクリプトをめっちゃ早く作れるようになったよね。<br>作成にかかる時間をかなり減らせるんだ。<br>プロンプトを考えたりテストしたりする時間はまだ必要だけど、それでも効率は全然違うよ。AIってすごい！" userName="kelvinjps10" createdAt="2025/10/22 19:38:01" color="#ff33a1">}}




{{<matomeQuote body="自動化って時間管理より、むしろ「正気を保つ」ためのものだったりするんだよね。<br>俺、会社のWebページからファイルダウンロードするsystemdサービス作ったことあるんだけど、手動でクリックするよりスクリプト書く方が時間かかったかも。<br>でも、クリック作業がマジでウザかったから、作った甲斐はあったよ。" userName="karczex" createdAt="2025/10/22 21:21:22" color="#ff5733">}}




{{<matomeQuote body="自動化のメリットを本当に理解するには、新しいことを試すオープンな心が必要なんだよ。<br>でも、多くの人がそれに抵抗してるみたいだね。<br>まあ、俺にとっては、試すたびに脳の新しいつながりができるってことで、いいんだけどさ。" userName="dbalatero" createdAt="2025/10/23 15:34:27" color="">}}




{{<matomeQuote body="“お前らにはわかんねぇんだよ！<br>俺は常に自分のアップタイムを最適化しなきゃいけないんだ！<br>科学がそうしろと叫んでる！TIMEMAXXINGだ！<br>自由に探求したりブレインストーミングなんてできない。XKCD 1205に従わないとだめなんだ。俺は全ての活動を時間最適化ピボットテーブルで評価しなきゃいけないんだ！”" userName="r4tionalistmind" createdAt="2025/10/23 09:46:17" color="#ff5c5c">}}




{{<matomeQuote body="自作スクリプトを年に数回しか使わないなら、生涯で150回くらいしか使わないかもな。1回1分節約できても、作成に5時間、維持に5時間かかったら、それって本当に得なの？割に合わないこともあるんじゃない？" userName="chipsrafferty" createdAt="2025/10/24 03:22:10" color="#38d3d3">}}




{{<matomeQuote body="時間の質って色々なんだよね。後で忙しい時に集中力を途切れさせたくないから、スクリプトやvim configの調整には、かけた時間以上のリターンがなくても喜んで時間を使うよ。邪魔されないって大事じゃん？" userName="taejavu" createdAt="2025/10/22 21:55:04" color="#45d325">}}




{{<matomeQuote body="他のargparseポートについてだけど、Typescriptで動くhttps://github.com/nodeca/argparseも良いよ。更新止まってるけど問題ないしね。Modern C++向けのhttps://github.com/p-ranav/argparseは分かりやすいけどデバッグがちょっと面倒かな。argparseのポートは、コマンドラインのUXが一貫するし、`--help`ページがちゃんと作れるのが良いところだね。" userName="tom_" createdAt="2025/10/24 21:46:07" color="">}}




{{<matomeQuote body="開発者のライフサイクルって変だよな。新人の頃は普通のシェル環境。数年経つとOPみたいにスクリプトやエイリアスをたくさん書いて.bashrcも長くなる。でも15年のベテランになると、今は普通のシェルで余計なものはいらないな。もっと複雑ならPythonかGoで書くよ。" userName="oceanplexian" createdAt="2025/10/22 18:11:33" color="#38d3d3">}}




{{<matomeQuote body="これは悟りの境地ってより、怠惰から来てる可能性の方が高いと思うな（僕もそう、怠惰だから）。カスタマイズにハマる同僚を見てると、Atuinとかfzfとか、いつも面白いツールを教えてもらえるけどね。" userName="chis" createdAt="2025/10/22 19:37:05" color="#45d325">}}




{{<matomeQuote body="僕も似たようなサイクルだった。シンプルに戻ったのは怠惰じゃなくて、いろんなシステムで作業するようになって、全部にカスタム設定をするのが面倒だったからだよ。一時的なコンテナとかね。だから、凝った設定とデフォルトを使い分けるより、デフォルトで効率的にやることに慣れたんだ。" userName="heyitsguay" createdAt="2025/10/22 20:07:55" color="#ff5c5c">}}




{{<matomeQuote body="SSH接続したサーバーにdotfilesは結構簡単に適用できるよ。どんなワークフローかわからないけど、zsh4humansみたいなフレームワークにはそれがあるし、sshrcみたいなツールも使える。SSH接続時に同期を自動化すればOK。コンテナにSSHする時も同じだよ。" userName="nijaru" createdAt="2025/10/22 20:31:31" color="">}}




{{<matomeQuote body="他人の環境で働いたことないの？クライアントマシンやプロダクションサーバーに「dotfilesを適用する」なんてしたら、マジでやばいことになるよ。コンテナも同じ、変なdotfilesなんか入れるな。コンテナの肝は予測可能であることだろ。" userName="theshrike79" createdAt="2025/10/22 20:44:12" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
