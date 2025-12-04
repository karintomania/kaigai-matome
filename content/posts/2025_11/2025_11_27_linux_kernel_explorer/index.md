+++
date = '2025-11-27T00:00:00'
months = '2025/11'
draft = false
title = 'Linuxカーネルを徹底探索！多層解説で理解を深めるExplorer'
tags = ["Linux", "カーネル", "コード分析", "可視化", "開発ツール"]
featureimage = 'thumbnails/light-orange4.jpg'
+++

> Linuxカーネルを徹底探索！多層解説で理解を深めるExplorer

引用元：[https://news.ycombinator.com/item?id=46066280](https://news.ycombinator.com/item?id=46066280)




{{<matomeQuote body="すごくいいね。タルムードのページの配置を思い出したよ。異邦人として、何百年、いや何千年ものコメントが同じページに収められてるのを見るのはとても興味深かったね。<br>https://www.reddit.com/r/interestingasfuck/comments/1acgks3/...<br>https://triberuth.wordpress.com/2016/09/23/my-talmud-layout-...<br>コードは同じように線形じゃないし、ページもそこまで意味をなさないけど、このLinux Kernel Explorerでもコメントの層っていうアイデアが響いてるね。サイドのメモがすごく気に入ったよ！" userName="knuckleheads" createdAt="2025/11/27 09:24:00" color="#45d325">}}




{{<matomeQuote body="タルムードって、オリジナルのハイパーテキスト（TM）かもね（たぶん、100％確信はないけど）。" userName="guy4261" createdAt="2025/11/27 10:19:58" color="">}}




{{<matomeQuote body="映画Piも見てみて。数字とカバラの話だけどね。 :)<br>https://en.wikipedia.org/wiki/Pi_(film)" userName="ofrzeta" createdAt="2025/11/27 10:37:02" color="">}}




{{<matomeQuote body="HNの長年のROM専だよ！タルムード、カバラ、技術っていう僕の主な関心事に関する議論が見られてワクワクしたよ。タルムードには誤解や神秘的なイメージが多いから、ここでいくつか基本的な点を明確にしたいね。<br>有名な「タルムードのページ」（親コメントのリンクで議論されてる）は16世紀にキリスト教の印刷業者が作ったものなんだ。中世キリスト教の写本におけるキリスト教の主要テキストと解説の一般的なレイアウトを真似たものなんだよ[0]。<br>僕の意見だけど、タルムードをハイパーテキストに例えるのは特に適切じゃないんだ。タルムードは確かに聖書やミシュナーを広く引用してるし、専門用語もたくさん使うから、より良い類推は法文献（実際タルムードは法文献だからね）だね。およそ400年間（紀元100年〜500年）生きたラビたちの（架空の）”会話”や対話として表現されてるけどさ。実際、別のコメントでも言ってたけど、カバラの方が「ハイパーテキスト」のより良い例だよ。いろんなセフィロトとか他の核となる概念を指す反復的なシンボルでいっぱいだからね。<br>（資格として：僕は学術タルムードとカバラでMAを持ってて、いくつかの場所でこれらの主題について執筆し、学術ワークショップでも発表してるんだ。過去2年間、この仕事に関連するデジタル人文科学プロジェクトも開発してきたよ。）<br>参照:[0] https://seforimblog.com/2023/06/from-print-to-pixel-digital-...<br>[1] https://www.ezrabrand.com/p/beyond-the-mystique-correcting-c..." userName="ezrabrand" createdAt="2025/11/27 12:21:42" color="#ff33a1">}}




{{<matomeQuote body="僕のコメントは場違いで、ルール違反かもしれないけど…これ、すごく好きだよ。Hacker Newsのユーザーがどんなトピックに対しても深くて本物の洞察を提供してくれるのが最高だね。ありがとう！" userName="elygre" createdAt="2025/11/27 16:17:09" color="">}}




{{<matomeQuote body="それはすごいね！！本当にありがとう！次にタルムードを学ぶためのアプリ、https://www.sefaria.org/app などについてどう思うか聞こうと思ってたんだけど、もうそのリンクで触れてくれてるんだね。読むのが楽しみだよ、ありがとう！" userName="knuckleheads" createdAt="2025/11/27 13:44:25" color="">}}




{{<matomeQuote body="もちろん！Sefariaは素晴らしいよ。古典的なテキストへのアクセスを革新したね。彼らのAPIは完全なアクセスを提供してるんだ。僕が直感でコーディングしたタルムードリーダーのウェブサイトは、Sefariaからタルムード、聖書、翻訳を取得してるから、チェックしてみたら面白いかもね :)<br>https://chavrutAI.com/<br>ソースコードはこちら:<br>https://github.com/EzraBrand/replit-chavrutai-2<br>ここ数ヶ月Replitを使って直感でコーディングしてきたんだけど、すごくクールな経験だったよ。" userName="ezrabrand" createdAt="2025/11/27 14:37:53" color="#38d3d3">}}




{{<matomeQuote body="おお、すごいね。ありがとう。" userName="kosolam" createdAt="2025/11/27 16:02:51" color="">}}




{{<matomeQuote body="タルムードをハイパーテキストに例えるのは適切じゃないって意見、ほんと？タルムードの各ページには余白に注釈（Masoret HaShas、Ein Mishpat、Torah Or）があって、TorahやTalmud、他の法典への相互参照があるんだよ。ウェブ版ならhypertextで表現するのが自然だと思うけどな。" userName="bradrn" createdAt="2025/11/27 14:28:20" color="">}}




{{<matomeQuote body="うん、その通りだね。「Al Hatorah」っていうサイトはまさにそれをやってるよ。例を見て：https://shas.alhatorah.org/Gemara/Berakhot/2a。でも、僕の言いたいのは、あの余白の注釈は16世紀の印刷版の産物で、Talmudの本文に元々備わってたものじゃないってことなんだ。聖書のMikraot Gedolot版も同じように注釈が豊富で、相互参照のすごいネットワークになってる。Mesorahは中世の作品で、当時の相互参照システムとしては最も精巧だったかもね。Talmudの相互参照は印刷版より前には存在しないから、そこが違うんだ。" userName="ezrabrand" createdAt="2025/11/27 14:57:12" color="#45d325">}}




{{<matomeQuote body="うん、余白の注釈が16世紀の印刷版のものだって点、わかるよ。「Talmudのテキスト」をMishnaとGemaraだけと考えるなら、それで納得だね。僕はTalmudって聞くと、解説が全部載ってる印刷版を思い浮かべるんだけどさ。追記：ブログを読んだら、この点についてもうすでに言及してたんだね：https://www.ezrabrand.com/i/162112983/myth-the-talmud-is-div..." userName="bradrn" createdAt="2025/11/27 17:10:18" color="#785bff">}}




{{<matomeQuote body="なんか見落としてるのかな。kernelのソースコードブラウジングって何年も前からオンラインであるじゃん、例えばこれ：https://elixir.bootlin.com/linux/v6.17.9/source/fs。これもそれの一つだとして、どんな追加機能があるの？bootlinのやつは検索機能もあるけど、ここでは見当たらなかったな。AI時代なんだから、コードのLLM解説とか、依存関係グラフとか、新しいkernel navigatorにはそういうのを期待してたんだけど…" userName="synergy20" createdAt="2025/11/27 18:22:20" color="#45d325">}}




{{<matomeQuote body="どうやらページ右側に統合ガイドがあるみたいだよ。「The Kernel in The Mind」っていうMoon Hee Leeさんの本を基にしてるって書いてあるね。" userName="vagab0nd" createdAt="2025/11/29 16:12:30" color="#785bff">}}




{{<matomeQuote body="それって、選んだコードに対して静的でコンテキストを考慮しないガイドなの？" userName="synergy20" createdAt="2025/11/30 14:24:56" color="">}}




{{<matomeQuote body="君：「うわー、AIの黄金時代に突入だね！コードのLLM解説とか、AI搭載の新しいkernel依存関係ナビゲーターが待ちきれないな…」<br>AI時代：「まあ、せいぜい違うweb frameworkで昔ながらの機能をAIでやり直すくらいしかできないけどね。」" userName="xeonmc" createdAt="2025/11/27 18:42:56" color="">}}




{{<matomeQuote body="「API rate limit exceeded for 106.51.68.199.（でも良いニュース：認証済みリクエストはレート制限が上がるよ。詳細はドキュメントを見てね。）」<br>僕の場合、使ってるGitHub APIがレート制限されてるみたい。もし他の人も同じ問題に直面してたら、VPNとかCloudflare Wrapを使ってIPを変えれば直るはずだよ。追伸：もしあなたがメインの開発者なら、GitHubでログインするオプションを提供したり、キャッシュ層を使ったりすれば、新規ユーザーがもっとアクセスしやすくなると思うな。" userName="stacktrace" createdAt="2025/11/27 08:13:50" color="#785bff">}}




{{<matomeQuote body="やっほー！この問題を見つけてくれてありがとう、そして僕が使ってたすごく素朴な実装を思い出させてくれて感謝！これ、改善するね！" userName="reverserdev" createdAt="2025/11/27 08:51:07" color="#ff5c5c">}}




{{<matomeQuote body="実装を複雑にするよりも、素朴な実装の上にキャッシュとか他のトリックを重ねる方が、良い結果になることが多いよね。" userName="rbanffy" createdAt="2025/11/27 10:41:49" color="#785bff">}}




{{<matomeQuote body="こういうツール大好き！2002年にRed Hat製の似たツールでブラジルの投票機のソースコードを見たのを覚えてるよ。重複ファイルをマッピングしてコードベースを簡素化する依頼だったんだ。Motifインターフェースのデスクトップアプリだったね。" userName="rbanffy" createdAt="2025/11/27 10:42:40" color="">}}




{{<matomeQuote body="このアイデア最高！興味深いプロジェクトのコード探索は楽しいけど、複雑なソフトウェアでは重要な部分を見つけるのが難しいよね。これはカーネルの仕組みを簡単に見るのに役立つな。<br>バグ見つけたよ: Chapter 2で「mm/」とかディレクトリの隣の「open」をクリックすると、「Failed to load file - Invalid file response from GitHub API - File: mm/」ってエラーが出るんだ。ディレクトリをファイルとして開こうとしてるみたいだね。" userName="oskarkk" createdAt="2025/11/27 09:36:21" color="#38d3d3">}}




{{<matomeQuote body="いいアイデアだし、うまく実行されてるね。Linuxカーネルへの参入障壁を下げるために、自分もいくつかプロジェクトを作ったよ。<br>・LinuxカーネルソースコードでUDPパケットの流れを追うアプリ: https://dmkskd.github.io/linux-kernel-network-stack-visualiz...<br>・MacでLinuxカーネルソースコードをいじるシンプルな方法: https://github.com/dmkskd/linux-kernel-debugging-on-mac<br>FlorentRevestさんのこの分野での全ての仕事に感謝！" userName="xxdd2ea" createdAt="2025/11/27 10:22:33" color="#785bff">}}




{{<matomeQuote body="君のUDPパケットフローツール、すごく気に入ったよ、作った人に拍手！OSでパケットがどう動くのか、ずっと知りたかったんだ。「gotoは悪魔だ」って言われるけど、そこら中にたくさんあるのは面白いね。このコードは、その「格言」が生まれるずっと前に書かれたのかもね。" userName="glenneroo" createdAt="2025/11/27 13:37:27" color="#ff5733">}}




{{<matomeQuote body="それか好きだって言ってたから、Jan EngelhardtさんのNetfilterパケットフローチャートを紹介するね。<br>https://en.wikipedia.org/wiki/File%3ANetfilter-packet-flow.s..." userName="Fnoord" createdAt="2025/11/27 15:50:56" color="#ff33a1">}}




{{<matomeQuote body="ありがとう！君の興味があるなら、ここの「live」デバッガセッションのビデオを見てみて。<br>https://github.com/dmkskd/linux-kernel-debugging-on-mac?tab=...<br>もしARM64 Macを持ってるなら、簡単にセットアップできるはずだよ（今のところこのOSしかサポートしてなくてごめんね）。" userName="xxdd2ea" createdAt="2025/11/27 18:22:50" color="#38d3d3">}}




{{<matomeQuote body="カーネルの仕組みを理解する最高の入門の一つは、マイクロコントローラ上でタイマーベースのコンテキストスイッチングRTOSを実装することだったよ。少ないコードでLinuxカーネルに飛び込むための基礎を築けるからね。" userName="itopaloglu83" createdAt="2025/11/28 18:03:41" color="">}}




{{<matomeQuote body="あと、これね: https://elixir.bootlin.com/linux/v6.17.9/source<br>Elixirは長年あるけど、モバイルでもっとうまく動くよ。" userName="nolist_policy" createdAt="2025/11/27 09:04:08" color="#45d325">}}




{{<matomeQuote body="Elixirは、ファイルを一つずつ見るだけじゃなくて、タグ機能もちゃんと動くから、実際のコード探索にはもっと優れてるんだ。" userName="formerly_proven" createdAt="2025/11/27 15:49:14" color="#38d3d3">}}




{{<matomeQuote body="モバイル対応の件、指摘ありがとう！改善するね。" userName="reverserdev" createdAt="2025/11/27 09:10:36" color="">}}




{{<matomeQuote body="このExplorerは、まさに多くの人が求めてたツールだと思うよ。Linuxカーネルのソースって、ファイルが多くて構造も複雑だから読むのが大変だったけど、これは「地図」みたいに全体像を掴むのに役立つね。VFSやモジュールの繋がりも分かりやすい。たまに不具合もあるけど、カーネルのアーキテクチャを理解する第一歩として最高！開発チームに感謝だよ。" userName="Gormanu" createdAt="2025/11/27 12:12:21" color="#785bff">}}




{{<matomeQuote body="AIが書いてるかは気にしないけど、最近「プロジェクトの一般的な褒め言葉、ツールの使い道、良い点悪い点、感謝」みたいなテンプレ投稿が新しいアカウントから多いよね。AIっぽい書き方で。ボットがカルマ稼ぎしてるんじゃないかと。君がそうだとは言わないけど、似たようなスタイルだとコメントが苦戦する原因かもね。" userName="zamadatix" createdAt="2025/11/28 12:37:52" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="大丈夫だよ！今日のHacker NewsコメントがAI狩りみたいに見えるのはわかる。でも、Hacker Newsに不慣れなポジティブな人かもしれないよ。これからはAIっぽく見られないように、もっと気をつけるね！" userName="Gormanu" createdAt="2025/12/01 11:58:42" color="">}}




{{<matomeQuote body="AIかどうかは気にしないけど、最近「良いこと言って、使い道説明して、良い点と悪い点言って、感謝」みたいなテンプレ投稿が新しいアカウントで流行ってるよね。AIっぽい書き方で、ボットのカルマ稼ぎかなって。君がそうだとは言ってないけど、似たようなコメントスタイルだと、あなたの投稿が伸び悩む原因かもね。" userName="zamadatix" createdAt="2025/11/28 12:37:01" color="">}}




{{<matomeQuote body="これ、LXRを思い出すね。https://lxr.linux.no/<br>https://en.wikipedia.org/wiki/LXR_Cross_Referencer<br>Linux触り始めた頃はすごく助けられたよ。Pythonでelixirとして再実装されたみたいだね。<br>https://elixir.bootlin.com/<br>https://github.com/bootlin/elixir" userName="opello" createdAt="2025/11/27 23:25:46" color="#785bff">}}




{{<matomeQuote body="これ何に使うの？masterプルできないし、grepもできない。編集もgmakeもできないじゃん。意味なくない？" userName="tosti" createdAt="2025/11/27 13:23:27" color="">}}




{{<matomeQuote body="これは、コードの重要な部分を指し示すナビゲーションツールだと思うな。コードを学びたいけど、どこから手をつけていいか分からない人には便利だよ。" userName="kinow" createdAt="2025/11/27 13:36:50" color="#ff5733">}}




{{<matomeQuote body="変な質問だけど…カーネルのコードで、一番すごいとか感動する部分ってどこ？" userName="joshlk" createdAt="2025/11/27 09:38:21" color="">}}




{{<matomeQuote body="fs/select.cかポーリングの仕組みが関係してるんじゃないかな。" userName="throwaway29303" createdAt="2025/11/27 10:16:27" color="">}}




{{<matomeQuote body="わかる！VFSって読んでて楽しいんだよね。関数ポインタで汎用APIを作るっていうLinuxカーネルのパターンを知るのに最高だよ。ファイルシステムドライバーがVFSオペレーションをどう実装してるか、具体例がわかるのがいいんだ。" userName="suprjami" createdAt="2025/11/27 11:05:13" color="#38d3d3">}}




{{<matomeQuote body="これの価値はインデックスじゃなくて、物語なんだよ。Linuxカーネルは30年分の歴史が詰まってて、線形に読むのは無理。Elixirはシンボル定義を教えるけど、これは「なんでこうなってるの？」って問いに答えるんだ。人間には複雑すぎるから、テキストだけじゃなく状態を可視化する考古学的なツールがもっと必要だよね。" userName="leo_e" createdAt="2025/12/01 11:43:51" color="#ff33a1">}}




{{<matomeQuote body="これすごいね！著者(https://fabiomaia.eu)を見つけるのに時間かかったけど、Python版も作れないか連絡してみるよ。新しいエンジニアにcpythonリポジトリのソースコードの探し方とか、PythonかCかの判別、コード内容の理解を教えるのに役立つと思うんだ。ドキュメントが不十分な時もあるからね。" userName="kinow" createdAt="2025/11/27 13:41:36" color="#ff5c5c">}}




{{<matomeQuote body="「Python版が欲しい」って？なんで自分で作らないのさ。オープンソースに素早い実装や迅速なバグ修正を期待するのって、ちょっと無茶だよ。みんなもっともっとって欲しがりすぎなんだよな。" userName="rapfaria" createdAt="2025/11/27 14:10:09" color="">}}




{{<matomeQuote body="これ、https://elixir.bootlin.com/linux と何が違うの？" userName="qweqwe14" createdAt="2025/11/27 08:43:54" color="">}}




{{<matomeQuote body="Elixirには学習を助ける特別な機能はないんだよ。" userName="reverserdev" createdAt="2025/11/27 08:49:51" color="#ff33a1">}}




{{<matomeQuote body="うーん、全然違うものだよ。名前が似てるだけ。僕がLinuxカーネルと触れるならElixirの方が使えるかな。こっちは教科書みたいな位置づけだね。Elixirは関数定義へのリンクがあって便利だけど、これにはそれが無いんだ。" userName="loeg" createdAt="2025/11/27 17:16:51" color="#ff5733">}}




{{<matomeQuote body="ElixirはLinuxコードの探索に良いけど、新人にはLinuxって難解だよね。<br>このExplorerはコード探索をすごく面白くしてくれるんだ。全てのトピックがコード参照されてて、Linux内部のインタラクティブな本って感じだよ。" userName="stacktrace" createdAt="2025/11/27 09:17:46" color="#785bff">}}




{{<matomeQuote body="右側のサイドバーのコンテンツを見てみてよ。これ、Linuxカーネルのインタラクティブなガイドブックみたいなんだ。" userName="oskarkk" createdAt="2025/11/27 09:17:19" color="#ff5733">}}




{{<matomeQuote body="あのいろんなバージョンが見つからないし、なぜかElixirのリンクを開いたらファンが回りだしたよ笑" userName="proc0" createdAt="2025/11/27 09:20:18" color="">}}




{{<matomeQuote body="これだとナビゲーションも良くなるし、コードを読むのが全体的に速くなるね" userName="udev4096" createdAt="2025/11/27 14:10:20" color="">}}




{{<matomeQuote body="これめちゃくちゃクールじゃん！左にある小さいアイコンがすごく気に入ったよ。クリックできたらもっといいのにね" userName="jtwaleson" createdAt="2025/11/27 08:41:33" color="">}}




{{<matomeQuote body="チャプター1のこのファイル『arch/x86/kernel/entry_64.S』が開けないんだ（『Failed to load file』ってエラーが出る）。左のディレクトリツリーにも表示されてないよ。<br>変な話だけど、これ別のコメントでも指摘されてて、『dead（役に立たない）』にされてたんだけど、なんで？" userName="w23j" createdAt="2025/11/27 14:29:22" color="#ff5c5c">}}




{{<matomeQuote body="これ、たぶん誤字だね。正しいパスは『arch/x86/entry/entry_64.S』のはずだよ" userName="rumdz" createdAt="2025/11/27 16:10:18" color="#785bff">}}




{{<matomeQuote body="クイズの問題って、人間が作ったの？それともAI？" userName="notachatbot123" createdAt="2025/11/27 12:36:19" color="">}}




{{<matomeQuote body="このガイドの最初の文が『XじゃなくてYだ。Zをする』って感じだろ？全部AIが作ったって考えても間違いないよ" userName="bakugo" createdAt="2025/11/27 14:05:48" color="">}}




{{<matomeQuote body="最初の文の何が具体的に問題なのか、詳しく教えてくれる？『カーネルはプロセスじゃない—システムだ。ユーザープロセスにサービスを提供し、コンテキストに反応し、分離と制御を強制する。』この部分は実はMoon Hee Leeさんの『The Kernel in The Mind』に基づいているんだ。ぜひフィードバックをちょうだい" userName="reverserdev" createdAt="2025/11/27 18:10:42" color="#ff5c5c">}}




{{<matomeQuote body="Moon Hee Leeさんの『The Kernel in The Mind』に基づいているって言うけど、これすごく面白そうなリソースだね。誰かこれの正確性とか有用性について保証してくれる人いる？オンラインで全然情報が見つからないんだ。<br>LinkedInの投稿シリーズか、LinkedIn投稿に添付されたPDFとしてしか公開されてないって事実が、あまり信用できないんだけど—まあ、カーネル開発者にウェブサイトの作り方を期待するのは無理なのかな？" userName="crabmusket" createdAt="2025/11/27 23:38:48" color="#ff5733">}}




{{<matomeQuote body="AI生成かどうかって聞いただけで、否定しなかったね。" userName="bakugo" createdAt="2025/11/27 19:51:26" color="">}}




{{<matomeQuote body="集中して！AI生成かどうかは人身攻撃だよ。内容を批判すべきで、どうやって作られたかは関係ない。" userName="reverserdev" createdAt="2025/11/28 13:16:22" color="">}}




{{<matomeQuote body="落ち着いて。答えは目の前にあったよ。「The Kernel in the Mind」から引用するけど、<br>「カーネルはプロセスじゃない。システムそのものなんだ。」<br>https://www.linkedin.com/pulse/kernel-mind-moon-hee-lee-miwz...<br>XだけどYは別のところから来たって感じだね。" userName="soraminazuki" createdAt="2025/11/27 22:57:08" color="#38d3d3">}}




{{<matomeQuote body="記事の内容が「カーネルはプロセスじゃない、システムだ」とか、「メモリは場所じゃない、システムだ」みたいな表現ばかりで、正直読むのがツラい。これを読み続けると頭がおかしくなりそうだよ。" userName="bakugo" createdAt="2025/11/27 23:32:16" color="#ff5733">}}




{{<matomeQuote body="記事をどう修正できるか、何か建設的なフィードバックある？" userName="reverserdev" createdAt="2025/11/28 13:14:21" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ChatGPTじゃなくて、人間が書けばいいよ。" userName="bakugo" createdAt="2025/11/28 15:56:33" color="">}}




{{<matomeQuote body="最初の質問の一つが「カーネルとプロセスの根本的な違いは何？」なんだけど、「カーネルは特権のある特別なプロセスだ」っていう（基本的に正しい）答えを否定して、「カーネルはプロセスじゃなく、プロセスにサービスを提供するシステムそのものだ」っていうのが採用されてるのが、なんか間違ってない？カーネルは（プロセス0として）自身をプロセスとして表現してるんだよ。カーネルスレッドもスケジューリングが必要だし、明らかに特権も持ってるしね。" userName="loeg" createdAt="2025/11/27 17:19:17" color="#38d3d3">}}




{{<matomeQuote body="「カーネルは自身をプロセス（プロセス0）として表現する」ってのは、どんなモダンなOSでも本当じゃないよ。カーネルコードは単一のプロセスや限られた数のプロセスに限定されないし、カーネルモードへの移行は専用プロセスへの切り替えを必要としない。CPUの投機的実行脆弱性が出る前は、ユーザー空間プロセスの仮想アドレス空間にカーネルコードが直接マッピングされるのが一般的だった。PID 0は多くのUNIX系システムで共有されるスケジューラの単なる実装詳細で、普通のプロセスみたいに機能しないし、カーネルの大部分の動作を正確に表してるわけでもないんだ。" userName="soraminazuki" createdAt="2025/11/27 22:36:30" color="#ff5733">}}




{{<matomeQuote body="この記事（とあなたが返信してるコメント）はLinuxについてのものだけど、Linuxは確かに自分のスレッドをPID 0として表現してるよ。もちろん、スレッドじゃない概念もあるけど、実際のところカーネルは特別なプロセス0なんだ。" userName="loeg" createdAt="2025/11/27 23:56:10" color="#ff5733">}}




{{<matomeQuote body="また違うよ。ほとんどのカーネルコードはPID 0として実行されないんだ。あなたが言ってるのはアイドルタスクのことで、カーネルのほんの一部にすぎない。僕もコメントを書くときはLinuxを念頭に置いてたけど、これはどんな主要な汎用OSでも基本となる動作だよ。「どんなモダンなOS」って言うとき、Linuxを除外するなんてできないでしょ。" userName="soraminazuki" createdAt="2025/11/28 00:04:59" color="#38d3d3">}}




{{<matomeQuote body="カーネルにはアイドルタスク以外にも、いーっぱいスレッドがあるんだよね。Linuxがスレッドを実装する方法だと、PIDはゼロじゃないけど、他のプロセスのスレッドみたいにアドレス空間を共有してるよ。うちのLinuxシステムだと、ざっと265個のカーネルスレッドがあるのを見たよ。" userName="loeg" createdAt="2025/11/28 18:07:15" color="#ff33a1">}}




{{<matomeQuote body="アイドルタスク以外のカーネルスレッドでPIDが0じゃないのって、全部だろ？もっと大事なのは、kthreadsはLinuxカーネルの補助的な部分で、非同期タスクを実行する一つの方法にすぎず、カーネル全体を表すわけじゃないんだ。これじゃ、客観的に間違ってる発言を技術論で正当化しようとしてるだけだろ。カーネルは”特別なプロセスゼロ”じゃないし、プロセスでもないんだ。プロセスを動かすための仕組みをプロセスに頼れるわけないじゃん。それに、PIDを持ってる部分だってアイドルタスク以外はPID 0じゃないし。信じないなら、カーネルに聞いてみれば？/proc/0なんてないんだから。" userName="soraminazuki" createdAt="2025/11/28 22:40:02" color="#45d325">}}




{{<matomeQuote body="あと第6章の「CPU状態とカーネル状態の関係」だけど、「CPUはステートレスで、カーネルが状態を管理する」ってあるのは、「均等に状態を共有する」っていうのとは違うと思うな。カーネルの方がはるかに多くの状態を管理してるだろうけど、CPUにもレジスタやキャッシュラインがあるから、ステートレスとは言えないはずだよ。" userName="stevenhuang" createdAt="2025/11/27 22:53:02" color="#ff5733">}}




{{<matomeQuote body="OP、シェアしてくれてありがとう！結構みんな気に入ってくれたみたいだから、フィードバックを聞いて次にどうするか考えるね！" userName="reverserdev" createdAt="2025/11/27 08:52:17" color="">}}




{{<matomeQuote body="このリアクティブガイドスタイルインターフェース、すごく好き！mdBook[1]みたいに、静的なノートと一緒にクイズや例を挿入できるプロジェクトアイデアとしてかなり良いかもね！<br>[1]: https://github.com/rust-lang/mdBook" userName="maartin0" createdAt="2025/11/27 12:32:34" color="#785bff">}}




{{<matomeQuote body="@reverserdev これいいね。どんなユースケースを考えてるの？最初は、知識チェックのための質問付きでカーネルコードを巡るガイドツアーだと思ったよ。" userName="iamcreasy" createdAt="2025/11/28 20:53:05" color="">}}




{{<matomeQuote body="すごくいいね、掘り下げるのが楽しみ。俺も昔（B.A.、エージェント以前）似たようなアイデアがあったんだけど、デカすぎて無理だって思ってたんだ。これってエージェントコーディングのおかげで実現できたの？" userName="wasteofelectron" createdAt="2025/11/27 18:23:16" color="#ff5c5c">}}




{{<matomeQuote body="めっちゃ面白い！LLMやコーディングエージェントを使って、コードをステップ実行しながらカーネルを解説してくれるのかと思ってたけど、これはこれで良いアプリだね。" userName="dmezzetti" createdAt="2025/11/27 14:22:12" color="">}}




{{<matomeQuote body="この簡単なバージョンがこんなに注目されたから、もっとダイナミックな「家庭教師」を検討中だよ！コードを「ステップ実行する」って言うとき、ソースコードのスクロールを追うような感じかな？" userName="reverserdev" createdAt="2025/11/27 18:16:58" color="#ff5c5c">}}




{{<matomeQuote body="ファイルが何をするか説明してくれるLLMプロンプトみたいな簡単なものでも、かなり役立つと思うな。" userName="dmezzetti" createdAt="2025/11/27 18:45:03" color="#ff5c5c">}}




{{<matomeQuote body="arch/x86/kernel/entry_64.Sを開こうとすると「ファイルを読み込めませんでした」って表示されるんだけど、バグかな？" userName="reimuwu" createdAt="2025/11/27 09:13:04" color="#785bff">}}




{{<matomeQuote body="パスはarch/x86/entry/entry_64.Sだよ。" userName="rumdz" createdAt="2025/11/27 16:10:58" color="#45d325">}}




{{<matomeQuote body="これいいね！ちょっとしたバグだけど、ファイルを変更してもファイル内の位置が0に戻らないんだ（少なくともWin11のFirefoxだと）。" userName="glenneroo" createdAt="2025/11/27 13:40:39" color="#ff5733">}}




{{<matomeQuote body="Webアプリ全体がMonaco（VSCode）のモッドだと思うんだけど、すごいハックだね！" userName="low_tech_punk" createdAt="2025/11/28 04:43:14" color="#38d3d3">}}




{{<matomeQuote body="これすごくいいね。EmacsやVimみたいな他のコードベースでも同じのが見られたら面白いな。" userName="bobowzki" createdAt="2025/11/27 10:06:39" color="">}}




{{<matomeQuote body="Emacsは自己文書化されてて分かりやすいよ。何か調べるにはdescribe-*コマンドが便利だ。例えば”save-buffer”コマンドなら、describe-keybindingから入り、”describe-command save-buffer”でfiles.elのLisp定義へ。変数なら”describe-variable buffer-file-name”でC言語の領域へ。Emacsのインタラクティブな自己文書化機能は素晴らしいね、もっと広まってほしい。" userName="mickael-kerjean" createdAt="2025/11/27 16:18:10" color="#45d325">}}




{{<matomeQuote body="なんで低評価されてるか分からないな。他の大規模オープンソースプロジェクトでもこんなサイトがあれば素晴らしいのに。" userName="udev4096" createdAt="2025/11/27 14:11:36" color="">}}




{{<matomeQuote body="「次のトピックはスケジューラ」って言ってsched.hを指すだけのガイドって、一体どんなガイドなんだ？" userName="stackedinserter" createdAt="2025/11/27 16:22:55" color="">}}




{{<matomeQuote body="学習ガイド、ありがたいね。" userName="__bjoernd" createdAt="2025/11/27 09:05:29" color="">}}




{{<matomeQuote body="これ、なんとかローカルでデプロイできるかな？" userName="cepera" createdAt="2025/11/27 12:18:27" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
