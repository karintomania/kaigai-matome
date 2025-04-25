+++
date = '2025-04-18T00:00:00'
months = '2025/04'
draft = false
title = 'Pythonに超安全な暗号技術がやってきた！1万5千行のコードが3.14で利用可能に'
tags = ["Python", "暗号", "セキュリティ", "SHA3", "プログラミング"]
featureimage = 'thumbnails/red1.jpg'
+++

> Pythonに超安全な暗号技術がやってきた！1万5千行のコードが3.14で利用可能に

引用元：[https://news.ycombinator.com/item?id=43731165](https://news.ycombinator.com/item?id=43731165)

{{<matomeQuote body="Pythonのどのバージョンに入ってるか書いてないじゃん。調べたら3.14っぽいね。でも10月までお預けかー。これってセキュリティ修正って言えるよね？（ブログの冒頭にも書いてあるし）だったら、今サポートされてるバージョン（3.9以上）全部に入れるべきじゃない？" userName="chrisrodrigue" createdAt="2025-04-18T22:17:00" color="">}}

{{<matomeQuote body="Spacyみたいな有名なライブラリってPython 3.13に対応してなくて3.12で止まってるんだよね（2023年10月時点）。だから、3.14で出たとしても、まともなプロジェクトで使えるようになるのは2026年10月か2027年10月まで待たないといけないんだよ。" userName="ashishb" createdAt="2025-04-18T23:37:59" color="">}}

{{<matomeQuote body="マジかよ、あのissueはクソの塊だな。GitHubに入社試験があればいいのに。「使ってるライブラリにバグがあって、3ヶ月前に同じ問題のバグ報告を見つけた。どうする？1）「私も」ってコメントする、2）まだ直ってないことにイライラする、3）すぐに修正しろと要求する、4）何もしない」。半分マジ。" userName="arp242" createdAt="2025-04-19T00:15:58" color="">}}

{{<matomeQuote body="Refined GitHubって拡張機能を使うと、議論に何も貢献しないコメントを自動で隠してくれるらしいよ。" userName="Hasnep" createdAt="2025-04-19T06:02:57" color="">}}

{{<matomeQuote body="あの拡張機能は、マジで必要なGitHub機能の宝庫だね。" userName="bityard" createdAt="2025-04-19T16:49:08" color="">}}

{{<matomeQuote body="「私も困ってます」って人がたくさんいるのは、すごく助かるんだよね。自分が作ったものが、実際どんな問題を引き起こしてるのかを知るのは難しいから。「私も」ってコメントが付くのは、すごく貴重なシグナルになる。" userName="rowanG077" createdAt="2025-04-19T01:03:47" color="#45d325">}}

{{<matomeQuote body="だからGitHubは何年も前にemojiリアクションを追加したんだよ。「私も」って気持ちを、通知システムをスパムせずに表現できるようにね。" userName="barotalomey" createdAt="2025-04-19T07:37:58" color="">}}

{{<matomeQuote body="GitHubでemojiを使うことはほとんどないな。議論やissueに何も追加できないなら、何も投稿しない。だから、私みたいな人がたくさんいたら、issueは放置される可能性がある。でも、多くのissue報告のハードルはすごく高いんだよね。全部3部作で文書化しないといけないとか。サポートに電話して「30秒間プラグを抜いてください」って言われるような人たちへの過剰反応だよ。<br>それに、そもそもissueが許可されてない場合もあるし。昔はよくissueに投稿してたけど、恥ずかしい投稿もあったと思うよ。" userName="genewitch" createdAt="2025-04-19T12:29:57" color="">}}

{{<matomeQuote body="「Python 3.13で動かない」ことが多くの人に影響を与えるって、メンテナーが理解してないと思う？<br>>「何か進展は？別のライブラリの要件でダウングレードできない」って聞いてるボケがいるけど、メンテナーがPython 3.13で動作させるのがどれだけ難しいかを説明した2日後のことだよ。こんなの誰の役にも立たないし、ただのノイズだ。役に立つ情報（回避策とか、手助けする方法とか）に関心がある人は、役に立たないくだらない情報の山をかき分けなきゃいけない。メンテナーが議論したいと思っても、常に“fix？ fix？ fix？ fix？ fix？”ってカモメに邪魔されるんだよ。<br>要求的な人もいるし。ただupvoteしろよ。そのために追加された機能なんだから。" userName="arp242" createdAt="2025-04-19T01:19:56" color="#785bff">}}

{{<matomeQuote body="xzのメーリングリストで“Jigar Kumar”の認知的な悪用を見た後だと、メンテナーがプレッシャー戦術を無視しても許されると思う（むしろ推奨される）。オープンソースプロジェクトなんだから、動けばラッキー、壊れたら、両方の破片を手に入れるだけ。" userName="madars" createdAt="2025-04-19T05:01:58" color="">}}

{{<matomeQuote body="技術知識のない創業者にとっては、これで何かやってる気になるんだよね。ワイヤーフレームのスケッチとかには絶対に移らないよ。" userName="throwaway519" createdAt="2025-04-19T07:19:16" color="">}}

{{<matomeQuote body="Pythonのエコシステムはアップデートに乗り気じゃないから、メンテナーが新しいPythonバージョンが動かないことを重要だと気づかないのも不思議じゃないよね。" userName="rowanG077" createdAt="2025-04-20T01:15:11" color="">}}

{{<matomeQuote body="問題はそれだけじゃなくて、「これは受け入れられない」「このライブラリ嫌い」みたいなコメントが価値をほとんど生み出してないことだよね。Issueに投票したり、コメントなしでリアクションしたりもできるし。その方が議論のノイズが減るよ。" userName="stingraycharles" createdAt="2025-04-19T01:14:15" color="#38d3d3">}}

{{<matomeQuote body="足りないのは、5) 1, 2, 3を実行する<br>6) テスト済みの修正プルリクエストを送信するってとこだね。" userName="bagels" createdAt="2025-04-19T02:35:21" color="">}}

{{<matomeQuote body="プルリクエストをありがたがるべきじゃないよ。コードベースの担当者は全部知ってるし、場当たり的な変更を加えるだけの素人より良い仕事ができるはず。バグとか機能不足の文句を言う方が楽だしね。時間も手間もかからないし。結局、開発者は他人のコードをメンテナンスしたくないんだよ。「パッチ歓迎」って言うのを見るたびにうんざりする。歓迎されてないことの方が多いから。「コードを見せて」って言うけど、出しても無視される。プルリクエストは受け入れられる保証はないし、相手にされないことだってある。頑張っても拒否されたり、無視されたりするんだ。それが改善だってわかっててもね。担当者は”not implemented”を返すコードをmasterにコミットしてユーザーに配布することすらあるんだから！プルリクは当然もっと高い基準で判断されるよ。しかも、相手にされればの話だけどね。無視して自分でやり直すかもしれない。 complainersが望んでるのはそれなんだろうけど！親切ならコミットメッセージに名前を載せてくれるかもね！誰かのプロジェクトに協力するなら、forkして自分のプロジェクトにした方がいい。上流に期待するな。許可を待つな。自分のために改善しろ。送り返す必要もない。必要なら勝手に引っ張るだろ。<br>自分のためにね。" userName="matheusmoreira" createdAt="2025-04-19T04:03:56" color="#ff5733">}}

{{<matomeQuote body="ブーイング！ scipyとか他のPythonパッケージにパッチを送ったことあるけど、質の高いバグレポートと優れた修正がセットになってれば、断られたことはないよ。毎回そうとは限らないけど、不安ならどれくらい受け入れてくれるか聞いてみたら？" userName="bagels" createdAt="2025-04-19T06:44:30" color="#ff5733">}}

{{<matomeQuote body="良いプルリクエストをもっと評価するべきだよね。テストスイートで100%失敗するようなゴミみたいなのは避けるべきだけど。" userName="LtWorf" createdAt="2025-04-19T07:22:03" color="">}}

{{<matomeQuote body="ベストプラクティスを守って、ルールに従って、ベストを尽くしても、相手が乗り気じゃないってだけで、全部無駄になることだってあるんだよ。<br>常にforkして、自分のためにカスタマイズするべき。他人と議論するな、説得しようとするな、自分のために改善しろ。相手が欲しがるかどうかはどうでもいい。公開する必要すらないんだから。" userName="matheusmoreira" createdAt="2025-04-19T08:08:24" color="#ff33a1">}}

{{<matomeQuote body="ほとんどの場合は公開する必要があるんだよね。MIT/BSD/Apacheなら公開しなくてもいいけど、ほとんどの大規模プロジェクトはLGPLとかのコピーレフトライセンスを使ってるから。それらを使って公開するプロジェクト（例えば、ライブラリとか言語とかを使った商用製品）を作る場合は、変更したソースコードを共有する必要があるんだ。自分のためにスクリプトを書く場合は違うけど、それらを使って何かを公開した時点で、ライブラリとかの変更版も公開する必要がある。<br>forkして改善するのは賛成だけど、遭遇したバグとか機能不足についてissueとかプルリクエストを出すのは礼儀だと思う。「プロトタイプ」とか「応急処置」として、他の人が自分のforkに取り込めるようにね。拒否されたり、閉じられたりするかもしれないけど、自分のバージョンがあるから議論する必要もない。ちょっとカント的な視点から見ると、自分のバージョンは動いてるし、問題に対する解決策を提供することで社会的義務を果たしたことになる。拒否されても、解決策を主張する必要はない。良い行いだし、githubの炎上騒ぎを無視できる。5分だけ親切にして解決策を提示する以外にデメリットはない。LGPLとかの相互的な法的義務も満たせるし。" userName="kamray23" createdAt="2025-04-19T09:01:20" color="#ff5733">}}

{{<matomeQuote body="＞修正したソースコードは法的に共有する必要があるってことだよね。<br>俺はライセンスを意図通りに使ってるだけだし。上流の開発者なんてマジでどうでもいいんだよね。Free softwareは開発者のためのものじゃなくて、ユーザーのためのものなんだから。<br>Free softwareライセンスは、ユーザーがソースコードを入手できるって言ってる。ユーザーに、ソフトウェアを好きなように使用・変更する能力を与えるためのものなんだよ。もし個人的な使用のために何かをカスタマイズしたら、フォークの唯一のユーザーは俺だし、ライセンス条項は満たされる。コンパイルされた実行ファイルを他のユーザーに配布し始めたら、人々は俺にソースコードを要求できるようになるんだよ。<br>＞拒否されたとしても、解決策を提唱する必要はないんじゃない？<br>昔はそう感じてたけど、今はもういいや。パッチをupstreamに送るのが正しいことだと思ってたんだよね。でも、その考えは捨てた。<br>＞５分くらい時間をかけて、せめて解決策を提示するくらいしてもいいんじゃない？<br>それは全然あり。ただ、upstreamに関わるのは割に合わないことが多いってこと。彼らにやらせておけばいいんだよ。彼らからpullして、自分の変更をrebaseするだけ。人生を楽しもうぜ。<br>人々は、他の人の喉にコードを無理やり押し込もうとする前に、よく考えるべきだよ。たとえコードを求めてきたとしても、心の奥底では対応したくないと思ってる可能性が高いんだから。" userName="matheusmoreira" createdAt="2025-04-19T17:41:33" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="最初はtypo修正とかドキュメント改善から始めるのが良いよね。それが良いcanaryになる。もし１日くらいでacceptされたら、学ぶ価値のあるprojectだってこと。自分の価値観に合ったprojectを選べば、貢献できると思うよ。そうすれば、いつかみんなが君を信頼するようになるさ。" userName="kant2002" createdAt="2025-04-20T12:13:40" color="#ff5c5c">}}

{{<matomeQuote body="君の言いたいことはわかるし、良いアドバイスだと思う。でもtypoとかドキュメントとか退屈じゃん… 面白いことがしたいんだよ。プログラムが何かできないのはなぜだろうって思ったことない？もっと賢い誰かが思いついたはずだよね？それを自分でコーディングして、実際に動いたら最高じゃん？そういうのが好きなんだよね。<br>昔、GNU bashにライブラリシステムを導入しようとしたことがあるんだけど… まあ、うまくいかなかったね。" userName="matheusmoreira" createdAt="2025-04-20T18:32:06" color="">}}

{{<matomeQuote body="＞それって、何か意味のあることを達成しないための素晴らしいガイドラインだよね。<br>誰にとって意味があるかって？俺にとっては全てすごく意味のあることだよ。自分が気にしないことはやらないし。<br>＞あと、同じ考え方をdatingに応用すると、いわゆる”incels/redpillers”になるから<br>MGTOW(Men Going Their Own Way)に近いんじゃないかな。" userName="matheusmoreira" createdAt="2025-04-19T17:05:36" color="">}}

{{<matomeQuote body="MGTOWも”incels/redpillers”でしょ。" userName="AlexeyBelov" createdAt="2025-04-20T07:00:27" color="">}}

{{<matomeQuote body="関係はあるけど、同じじゃないよ。この文脈では、”incel”はプロジェクトに貢献したいのにできない人のこと。俺は違うよ。" userName="matheusmoreira" createdAt="2025-04-20T18:12:56" color="">}}

{{<matomeQuote body="もし君の貢献が全部rejectされてるなら、君が思ってるほど良くないんじゃない？<br>俺もbugだらけの”改善”をrejectして、人を怒らせたことがあるよ。" userName="LtWorf" createdAt="2025-04-20T22:35:37" color="">}}

{{<matomeQuote body="90年代後半からPythonで金もらってるけど、相変わらず無駄な自爆行為が多いのに驚くよ。それでも進み続けてるんだからすごいよね！<br>spaCyはCythonをoptionalにするべき<br>Cythonをhard forkしてstringitized annotationsを使わないようにする<br>Python 3.12にとどまって、3.15にskipする<br>まるで、誰が一番自傷行為できるか競ってるみたいだね。" userName="sitkack" createdAt="2025-04-19T13:40:31" color="">}}

{{<matomeQuote body="まるでみんなで、どれだけ自傷できるか競ってるみたいじゃん。マジでレミングみたい。[0][0] https://en.wikipedia.org/wiki/Lemmings_(National_Lampoon)" userName="ChrisMarshallNY" createdAt="2025-04-19T13:44:31" color="">}}

{{<matomeQuote body="何がオウンゴールなの…？次のリリースで言語が良くなってるじゃん。普通のソフトウェア開発でしょ。どこがオウンゴールなのよ。将来のために大きなタスクに取り組むのは良いことじゃん。" userName="martinky24" createdAt="2025-04-19T13:51:18" color="#45d325">}}

{{<matomeQuote body="Ubuntu 25.04にアップグレードしたらPython 3.13になっちゃって、これにハマったんだよね。venvでPythonプロジェクトを動かしてるんだけど、3.12で動かしたいやつは、ソースからビルドしてローカルディレクトリにインストールしたよ(互換性のためにプレフィックス付きのリンクを削除)。Python portsのppaは最新のUbuntuをサポートしてないんだよね(してなかった？)。dockerとかcondaは使いたくないんだよね。違うバージョンのPythonを使うためだけに、別のディストリビューションをインストール/使用したくないから。今のところ、このセットアップはうまくいってるよ。" userName="rhdunn" createdAt="2025-04-19T10:16:28" color="">}}

{{<matomeQuote body="人それぞれ好みがあるけど、もし俺だったらuvを検討するかな。Pythonのバージョンを指定できるし、スクリプトならshebangの一部としてPythonのバージョンを指定することもできるよ。" userName="turbocon" createdAt="2025-04-19T10:22:19" color="#ff5733">}}

{{<matomeQuote body="え、Pythonのポイントリリースで破壊的な変更が入るってこと？マジありえないんだけど。" userName="bsoles" createdAt="2025-04-19T15:33:50" color="">}}

{{<matomeQuote body="Great Expectationsで同じような問題に遭遇したわ。Python 3.12が最新でしか動かせない。" userName="pbronez" createdAt="2025-04-18T23:50:49" color="">}}

{{<matomeQuote body="その通り。JavaとかGoみたいなコンパイル言語は、この問題に悩まされない。" userName="ashishb" createdAt="2025-04-19T05:04:05" color="">}}

{{<matomeQuote body="コンパイルされるかどうかじゃないんだよね。Pythonは、Python 4を作る代わりに、リリースごとに破壊的な変更を加えてるんだよ。だから、Python2/3みたいな状況が、リリースごとに起こってる。" userName="LtWorf" createdAt="2025-04-19T07:23:45" color="#785bff">}}

{{<matomeQuote body="SpringとかHibernateの古いバージョンでJava 8に縛られてる会社に言ってみてよ。主要なライブラリが破壊的な変更を加えるエコシステムのコストだよ。" userName="fiddlerwoaroof" createdAt="2025-04-19T06:16:20" color="#45d325">}}

{{<matomeQuote body="＞One could argue<br>どうやって？" userName="devrandoom" createdAt="2025-04-19T00:58:58" color="">}}

{{<matomeQuote body="シームレスで、全てのPythonユーザーにとって差し替え可能なのは、マジですごいことだと思うよ。" userName="quantumgarbage" createdAt="2025-04-18T22:35:24" color="">}}

{{<matomeQuote body="一般的に、ソースに関係なく、利用可能な最高のコンポーネントを使うのは良いことだよね。特に暗号コンポーネントはDIYすべきじゃない。<br>Rubyがstdlib/opensslで同じようなことをしたらクールだけど、gemでもできるよね。" userName="anon6362" createdAt="2025-04-18T22:19:07" color="#ff5733">}}

{{<matomeQuote body="＞ただのCライブラリのラッパー。<br>それって“Pythonエコシステムで利用できる最高のライブラリ”って意味だよね？　：）" userName="nine_k" createdAt="2025-04-18T22:50:01" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="具体的にどこに同意できないの？これは言語戦争じゃないよ。" userName="bolognafairy" createdAt="2025-04-18T23:10:18" color="">}}

{{<matomeQuote body="見出しはPythonで書かれたように聞こえるけど、実際は15,000行のCよりずっと読みやすいよね。" userName="neuroelectron" createdAt="2025-04-19T00:09:06" color="">}}

{{<matomeQuote body="Cの15k行は生成されたものだよ。実装はF*で書かれて（そして形式的に検証されて）いて、その後、KaRaMeLを使ってCが生成されるんだ。<br>正しさの証明を信頼して、生成されたCを直接見たり保守したりする必要はないはずだよ。<br>" userName="frumplestlatz" createdAt="2025-04-19T01:07:34" color="#ff33a1">}}

{{<matomeQuote body="検証の専門家じゃないんだけど、F*からCへのコンパイラが検証済みのコードを完全に保持しているのか、問題を発生させないのか、わかるのかな？それともそう仮定してる？" userName="wepple" createdAt="2025-04-19T10:44:50" color="#38d3d3">}}

{{<matomeQuote body="KaRaMeLリポジトリにリンクされているこの論文[0]が、あなたが探している証明を提供すると主張しているよ：<br>＞Verified Low-Level Programming Embedded in F*<br>＞Low*はCのサブセットをF*に埋め込んだもの。メモリ安全で、効率的な低レベルコードを書くための制御を提供する。F*の検証能力を利用して高レベルの仕様を書き、SMT自動化と手動証明を組み合わせてLow*コードの機能的正確性を検証できる。抽出時に仕様と証明は消去され、残りのコードはCへの予測可能な変換を享受する。この変換が意味論とサイドチャネル耐性を保持することを証明する。<br>[0]: https://arxiv.org/pdf/1703.00053" userName="aw1621107" createdAt="2025-04-19T13:51:09" color="#ff5c5c">}}

{{<matomeQuote body="ありがとう！大変そうだけど、挑戦してみるよ。" userName="wepple" createdAt="2025-04-20T10:44:24" color="">}}

{{<matomeQuote body="これマジ最高じゃん。うちの大学のCSの先生もニヤニヤしてるだろうな。" userName="myko" createdAt="2025-04-19T03:05:58" color="#ff5733">}}

{{<matomeQuote body="これのどこが悪いんだ？" userName="nxpnsv" createdAt="2025-04-19T09:39:06" color="">}}

{{<matomeQuote body="これでSHAKEからの“streaming”出力がサポートされるようになるのかな？<br>pyca/cryptographyの関連issue（最近close済！）はここにあるよ。stdlibのpythonだと見つからなかったけど。<br>https://github.com/pyca/cryptography/issues/9185<br>編集：関連issue見つけた。“計画なしとしてclose”されてる。<br>https://github.com/python/cpython/issues/82198" userName="Retr0id" createdAt="2025-04-18T21:36:07" color="#38d3d3">}}

{{<matomeQuote body="現代のユビキタスな暗号は、実質的に解読不可能（NSAでさえも）で、広く使われてる。90年代の暗号戦争が時代遅れに見えるね。これが社会に与える影響について何か考えある？" userName="IlikeKitties" createdAt="2025-04-18T21:31:45" color="#ff5733">}}

{{<matomeQuote body="リンクレベルでの盗聴を脅威モデルからほぼ“排除”できるのは良いことだけど、攻撃者はエンドポイントに移行するだけ。google、銀行、仮想通貨取引所へのリンクはプライベートだけど、全部筒抜け。" userName="xyzzy123" createdAt="2025-04-18T21:41:14" color="">}}

{{<matomeQuote body="＞…攻撃者はエンドポイントに移行するだけ。<br>＞そうなると、攻撃者にとってスケールしなくなるよね。" userName="TacticalCoder" createdAt="2025-04-18T22:00:24" color="">}}

{{<matomeQuote body="クライアントがN個、サーバーがM個ある場合、エンドポイントはN+M個だけど、リンクはN*M個になるから、全然違う。" userName="FabHK" createdAt="2025-04-19T04:23:14" color="">}}

{{<matomeQuote body="リンクは一番弱い…リンクと同じくらいの強さしかない？インターネットの構造を考えると、O(N*M)じゃなくて、O(主要ISPの数)って感じじゃない？" userName="PhilipRoman" createdAt="2025-04-19T12:44:37" color="">}}

{{<matomeQuote body="エンドポイントは全部違うかもしれないけど、リンクは全く同じアルゴリズムに依存してる可能性があるから、区別する必要があるね。" userName="Ey7NFZ3P0nzAe" createdAt="2025-04-20T08:23:27" color="">}}

{{<matomeQuote body="ほとんどのインターネットトラフィックは、CloudflareやAWSのような少数のプロバイダーに集中してる。" userName="artursapek" createdAt="2025-04-19T00:34:39" color="">}}

{{<matomeQuote body="Cloudflareは、DNSを握ってるしWAFとしても活動してるから、マジになれば最強のMITMになれるってことじゃん。もはや回線レベルの監視なんて意味ないね。" userName="hkt" createdAt="2025-04-19T01:14:12" color="">}}

{{<matomeQuote body="エンドポイント全部握ってる会社を抱えてる国は別だけどね。" userName="pyfon" createdAt="2025-04-19T00:18:32" color="">}}

{{<matomeQuote body="最近の暗号技術は、正しく使えば基本的に解読不可能だと思うよ。ただ、開発者の使いやすさとか、実装時のミスを防ぐ余地はまだまだあるね。libsodiumとかのおかげで昔よりはマシになったけど、RSAからの脱却とか、暗号化方式のネゴシエーションを減らす新しいプロトコルとか、やるべきことはまだ多いと思うな。AESも完璧に使えば解読不可能だと思うけど、AES-GCMには落とし穴があるし。" userName="Analemma_" createdAt="2025-04-18T23:05:13" color="#ff5c5c">}}

{{<matomeQuote body="デバイス認証でハマったわ。Aurora Store経由で最新のebayアプリをGrapheneOSにインストールしようとしたら、ebayのログインじゃなくて、GoogleアカウントでのPlayストアログインを要求された。前のバージョンにダウングレードできたけど、どんどん締め付けが厳しくなってる。7か月かかったね。<br>https://news.ycombinator.com/item?id=41517159<br>（ebayに電話して問題報告したよ）" userName="jakeogh" createdAt="2025-04-18T22:32:47" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="＞これって社会にどんな影響があると思う？<br>俺が思うに2つある。<br>一つは、一般人が暗号技術を使うのを違法にしようと常に企んでること。暗号技術は反体制的なんだ。裁判官も軍隊も国家も打ち負かす力があるからね。当局は一般人にこんなの持って欲しくないんだよ。これからは企業と政府の道具になるだろうね。<br>もう一つは、当局が暗号をバイパスしてエンドポイントを攻撃してること。暗号を解読するより、システムをハッキングして復号化されたデータを盗む方が簡単だから。スマホをハッキングしてメッセージを盗む方が、エンドツーエンドで暗号化されたテキストを傍受して解読するより簡単。" userName="matheusmoreira" createdAt="2025-04-19T04:37:19" color="#ff5733">}}

{{<matomeQuote body="今のところはね。もし誰かが実用的な量子コンピュータを作ったら、対称暗号化のための共通鍵を作るために暗号化プロトコルの最初で使ってる非対称暗号はほぼ全部解読されちゃう。" userName="gpcz" createdAt="2025-04-18T22:18:53" color="">}}

{{<matomeQuote body="ポスト量子暗号への移行はもう始まってるよー。SignalとかChromeとかiMessageとか。" userName="dist-epoch" createdAt="2025-04-18T22:31:56" color="">}}

{{<matomeQuote body="抽象的すぎて意味不明。攻撃方法とか、ハードウェアアクセラレーションの実装とか、詳細とか、実装とか、用途とか、敵の予算とか、そういうのが重要。それに、”速い”暗号アルゴリズム/実装にこだわるのは、CPUバウンドのブルートフォースアタックのコストがどんどん安くなっていくことを考えると、本末転倒。" userName="anon6362" createdAt="2025-04-18T22:15:34" color="">}}

{{<matomeQuote body="なんでそんなに自信満々なの？NSAには暗号システムにバックドアを仕込もうとした長い歴史があるじゃん。最近だと、RSAを買収して、脆弱なPRNGをデフォルトにさせたよね。それ、2014年まで出荷されてたんだよ。もっと後かも。知られてるだけでこれだけあるんだから、成功しててもおかしくないんじゃない？" userName="imiric" createdAt="2025-04-18T22:13:10" color="#ff5c5c">}}

{{<matomeQuote body="Snowden Leaksから、当時はPGPを解読できなかったことが分かってる。輸出グレードの暗号をどう解読するかみたいな話もあったけど。最近の堅牢な暗号ライブラリはかなり安全だと思うし、NSAでさえSignalの暗号化を推奨してるくらいだからね。アメリカのインフラには穴だらけで中国がモバイルインターネットインフラ全体に侵入してるから、少なくとも中国にとってはSignalを解読するのは非常に難しいはず。仮に未知の方法で暗号を攻撃できたとしても、鍵を解読するのに必要な時間を短縮できる程度だと思う。だから、めっちゃ長い鍵を選んで頻繁に変えれば、ほとんどの攻撃から身を守れる。" userName="IlikeKitties" createdAt="2025-04-18T22:48:27" color="#ff5c5c">}}

{{<matomeQuote body="暗号を攻撃できたとしても、キーを解読する時間を短縮できる程度だと思うって言ってるけど、なんでそう思うの？脆弱性は数学的な問題じゃなくて実装の問題にあることが多いじゃん。Signalが最近のスキャンダルで指摘されたように、通信中のメッセージしか保護しないんだよね。スマホのアプリはセキュリティが万全じゃないし、スマホにアクセスできる人はSignalのメッセージにアクセスできるし、やり取りしてる相手のメッセージにもアクセスできるってこと。<br>＞それってSignalを解読するのはほぼ不可能だってことの有力な根拠じゃない？少なくとも中国にとっては。<br>NSAは機密通信にSignalを推奨してないよ。NSAはSignalを使うことがアメリカ政府にとって最善の利益になると考えてるんだってさ（どの組織もバイアスがあるよね）。Signalが一番安全な選択肢なのか、それともNSAだけがSignalを解読できると思ってるのかも。" userName="mmooss" createdAt="2025-04-18T23:02:19" color="">}}

{{<matomeQuote body="Signalが通信中のメッセージしか保護しないってのは、デバイスが侵害されたら意味ないってことだよね。それってSignalに限らず、どのソフトウェアにも言えることじゃん。<br>＞なんでそう思うの？脆弱性は数学的な問題じゃなくて実装の問題にあることが多いじゃん。<br>だから、よく理解されてて、実装が簡単なプリミティブを使うんだよ。Salsa20とかCurve25519の設計を見てみればわかると思うけど、あれは実装が簡単になるように設計されてるんだよね。Go crypto、libsodiumみたいな使いやすい暗号ライブラリもあるし、最近は暗号でミスしにくくなってると思うよ。NSAの強みは、予算が無限にあることじゃなくて、複数ユーザーに対する攻撃を実行できることだと思うな。FAANGとかFastlyとかCloudflareもそうだけど。" userName="commandersaki" createdAt="2025-04-19T00:22:29" color="#ff5733">}}

{{<matomeQuote body="Signalの脅威モデルにデバイスの侵害は含まれてないってのは同意。他のソフトウェアは考慮してるものもあるけどね。ここで言いたいのは、セキュリティは暗号の数学だけじゃなくて、もっと多くのことに依存してるってこと。Signalはその一例。" userName="mmooss" createdAt="2025-04-19T00:44:40" color="">}}

{{<matomeQuote body="＞なんでそう思うの？脆弱性は数学的な問題じゃなくて実装の問題にあることが多いじゃん。<br>この動画おすすめだよ。https://www.youtube.com/watch?v=v8Pma5Bdvoo　攻撃がどう行われるかとか、意図的に暗号が弱体化されるかって例がわかるよ。特にAESとかRASみたいな一般的な暗号だと、実装の違いによる出力結果を比較しやすいしね。もし違ってたら怪しいってこと。OPみたいなオープンソースの暗号なら、実装は簡単に検証できるし。" userName="IlikeKitties" createdAt="2025-04-18T23:28:15" color="#ff33a1">}}

{{<matomeQuote body="実装が簡単って言うけど、実際には見つけるのが難しい専門知識と多くのリソースが必要なんだよね。今回のPythonの例を見てよ。安全な実装を手に入れるのに、2025年までかかってるんだから。" userName="mmooss" createdAt="2025-04-18T23:31:05" color="">}}

{{<matomeQuote body="Signalgateの件は、ほとんどが使いやすさの問題だったと思うんだよね。それって実装の問題とも言えるけど、明示的に対処すべきことだと思う。NSAが裏で使いやすさを損なうように工作してるっていう陰謀論もありえるかも。暗号ライブラリってドキュメントがちゃんと書かれてないこともあるし。Pythonの場合、ライブラリのドキュメントをPythonに落とし込むのが難しいこともあるよね。<br>[1] https://articles.59.ca/doku.php?id=em:sg" userName="upofadown" createdAt="2025-04-19T12:09:32" color="">}}

{{<matomeQuote body="＞成功してないってどうして言えるの？私たちが知らないだけじゃない？<br>NSAは発見した脆弱性を公開しない歴史があるからね。数兆円の予算と数万人の従業員がいれば、かなり多くのことを発見できると思うよ。" userName="mmooss" createdAt="2025-04-18T22:55:29" color="">}}

{{<matomeQuote body="PythonのSHA3のコードを見た人がみんなおかしいって思ってたし、信用できないって思ってたと思うよ。賢い人はみんなblake2bに移行したし。ハッシュ関数をどうやってframeworkifyして、標準化させたのか、マジで謎。" userName="jart" createdAt="2025-04-19T10:35:05" color="">}}

{{<matomeQuote body="最初に思ったのは、Python言語ってこと？でもC拡張なんだね。メモリ管理された言語で暗号コードを書くのって可能なのかな？全部一定時間で実行する必要があるから。" userName="andai" createdAt="2025-04-19T13:36:59" color="">}}

{{<matomeQuote body="GoにはGoで実装された結構いい感じの暗号があるよ。https://pkg.go.dev/crypto" userName="martinky24" createdAt="2025-04-19T13:52:29" color="">}}

{{<matomeQuote body="JavaとかC#とかGoにも暗号はあるじゃん。" userName="wolf550e" createdAt="2025-04-19T18:46:10" color="">}}

{{<matomeQuote body="rustはメモリ管理されてる言語だし、crypto書くのに問題ないと思うけど？" userName="EasyMark" createdAt="2025-04-19T13:44:43" color="">}}

{{<matomeQuote body="c++も(微妙に)メモリ管理されてる言語じゃん(std::unique_ptrとかあるし)。" userName="dymk" createdAt="2025-04-19T15:41:23" color="">}}

{{<matomeQuote body="暗号全然わからん。<br>これってpythonにとってどういう意味があるの？" userName="hall0ween" createdAt="2025-04-18T20:35:05" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
