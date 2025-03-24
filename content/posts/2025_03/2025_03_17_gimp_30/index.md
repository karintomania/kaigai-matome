+++
date = '2025-03-17T00:00:00'
months = '2025/03'
draft = false
title = 'GIMP 3.0ついに来た！神アップデートでYouTubeサムネも楽勝！？神UI/UXはまだ課題あり？'
tags = ["GIMP", "画像編集", "デザイン", "アップデート", "UI/UX"]
featureimage = 'thumbnails/green4.jpg'
+++

> GIMP 3.0ついに来た！神アップデートでYouTubeサムネも楽勝！？神UI/UXはまだ課題あり？

引用元：[https://news.ycombinator.com/item?id=43393822](https://news.ycombinator.com/item?id=43393822)

{{<matomeQuote body="GIMP 3.0はマジでデカいアップデートだね。簡単なDTPとかYouTubeのサムネ作るのに使える機能がたくさん増えてるじゃん！作ったポスターはこれ→https://i.imgur.com/pPgy255.png<br>改善してほしいのはUI/UXだね。「ツール→GEGL Operation...」ってのが面倒くさすぎ。レイヤーウィンドウのFXボタン押したらすぐ出てきてほしいわ。ドロップシャドウとかグローが”GEGL Styles”の中に隠れてて見つけにくいのも問題。Move Toolはドラッグしてない時は他のツールへの入り口になればいいのに。画像レイヤーをシングルクリックしたらTransform Tool、テキストレイヤーならText Toolに切り替わってくれ！レイヤースタイルのコピー/ペーストもできるようにしてほしい。BUG：レイヤーがGEGLグローをクリップすることがある。レイヤースタイルを簡単にコピー/ペーストできれば回避できるんだけどね。" userName="geenat" createdAt="2025-03-18T00:06:48" color="#ff5733">}}

{{<matomeQuote body="前から思ってたんだけど、一部の機能が分かりにくい場所にあるのってマジ勘弁って感じ。特にGEGL operationとか実装の詳細がそのまま出ちゃってるのがね。GEGL operationってこと自体はどうでもいいんだよね。" userName="glandium" createdAt="2025-03-18T01:32:45" color="">}}

{{<matomeQuote body="それってまさに、ソフトのエンジニアがUXも担当しちゃうってよくあるパターンじゃん？UXって専門分野として確立されてるのには理由があるんだよね。" userName="nerdponx" createdAt="2025-03-18T02:14:48" color="#ff5733">}}

{{<matomeQuote body="UXが一番盛り上がってたのは1990年代だよね。今でもデザイナーはいるけど、ほとんどのソフトウェア会社はUI/UXの研究機関を閉鎖して、見た目が魅力的なものを作る人を雇うだけになっちゃった。コンピュータに詳しくない人に何か教えようとしたら、マジで意味不明だよ。一貫性も内部ロジックもルールもなくて、ただ”知ってる”必要があるだけのキレイなモノって感じ。" userName="Someone1234" createdAt="2025-03-18T03:19:03" color="">}}

{{<matomeQuote body="Windows 95は、ちゃんとリサーチしてUIを作ってた良い例だと思うよ。ちなみに、UXって言葉マジ嫌い。UIの”interface”って言葉だけで、キレイなグラフィックだけじゃなくて、ユーザーとプログラム全体の_interface_を意味するべきじゃん？" userName="eru" createdAt="2025-03-18T03:56:55" color="">}}

{{<matomeQuote body="勉強してた時に、interactionだけじゃなくて、ユーザーへの全体的な影響が大事だって習った記憶があるな。MacOS Finderの空間的なファイルの配置が分かりやすい例だよね。あれってウィンドウの位置とかファイルの位置を覚えててくれるから、好きなようにファイルを配置できるんだよね（今はなくなっちゃったけど）。UIは同じでも、認知的な負荷が減るんだよね。UXはUI以外の要素にも影響されるんだよ。ロード時間とか、レスポンスとか、信頼性とかね。MacOSのアップデートバーはマジで嫌い。朝起きてPC開けたらアップデートしてるとかありえない。しかも、プログレスバーが20%、80%、50%、30%、90%ってめちゃくちゃ動くし。" userName="xlii" createdAt="2025-03-18T06:42:19" color="#785bff">}}

{{<matomeQuote body="OSXには昔から、予測が難しい処理のためにストライプのプログレスバーがあったと思うけど、なくなっちゃったの？どれくらい進んでるかより、少なくともフリーズしてないってことが分かればいいって場合もあるよね。FedoraのdnfがSELinuxの自動リラベルを2時間もやってて、何の進捗も表示しないのはマジで嫌い。" userName="anilakar" createdAt="2025-03-18T08:13:39" color="">}}

{{<matomeQuote body="空間的なファイルの配置って、デスクトップでは良くないと思う。ファイルマネージャーでは絶対にアンチパターンだよね。" userName="rat87" createdAt="2025-03-18T07:41:56" color="">}}

{{<matomeQuote body="昔のWindows（95とか？）では、フォルダを開くと必ず新しいエクスプローラーウィンドウが開いて、ウィンドウが実際に開いてるフォルダだって印象があったよね。今はブラウジングのメタファーが一般的で、ウィンドウの”chrome”はコンテンツとは別物って感じだけど。今では空間的なメタファーは役に立たないと思うけど、昔はもっと意味があったのかもしれないね。" userName="dsego" createdAt="2025-03-18T10:39:08" color="">}}

{{<matomeQuote body="“Experience”はただの”interface”以上のものだよね。例えば、どのアクションが爆速で、どれが遅いかっていうのは、UIが全く同じでも、UXの重要な要素じゃん。パフォーマンスとか、容量制限とか、undoの制限とか、他のソフトとの連携とか、対応してるデータ形式とかも、UIじゃなくてUXの重要な要素だよね。" userName="nine_k" createdAt="2025-03-18T05:23:42" color="#38d3d3">}}

{{<matomeQuote body="UXはUIより重要だよ。良いUXは、ユーザーがUIを全く見なくても済むように、ユースケースをシンプルにできるかもね。" userName="VilleSalonen" createdAt="2025-03-18T05:15:53" color="">}}

{{<matomeQuote body="1990年代にはUXって言葉、マジで存在しなかったんだよね。UI/UXの衰退の始まりは、UXって言葉が生まれてUIが美的感覚だけを指すようになったからだと思う。それまでUI分野でやってた美的感覚以外の仕事が無視されたってこと。" userName="eurleif" createdAt="2025-03-18T04:11:58" color="#38d3d3">}}

{{<matomeQuote body="まさにこのスレのことだよね。Adobeのソフト使ってるけど、GEGLが何なのかマジで知らんし、知る必要もないと思う。フィルターは機能で整理してくれよ。ブラーなら放射状とかGaussianとかさ。UIをコードの構造で決めるんじゃなくて、ユーザー視点で考えてほしいわ。" userName="dylan604" createdAt="2025-03-18T02:31:34" color="#ff33a1">}}

{{<matomeQuote body="ほとんどのフィルターはちゃんとグループ分けされてるよ。GEGLのせいで実装の詳細がユーザーに漏れてるのは直すべきだけど、Adobeの製品でも同じようなの見つけられると思うよ。MSのオンラインツールとかマジで酷いし（GNOMEにいた時より酷い）。" userName="necovek" createdAt="2025-03-18T05:59:35" color="">}}

{{<matomeQuote body="Adobe使ってる人は、GIMPの主要なターゲット層じゃないってことだね。" userName="brudgers" createdAt="2025-03-18T04:10:32" color="">}}

{{<matomeQuote body="それ、マジでありがちなステレオタイプだよね。オープンソースのメディアアプリでよくあるのは、わざと難解にしてること。「エンジニア」がエンドユーザーと同じ言葉を使って、意味不明な専門用語を選んでるのがマジでウザい。" userName="DidYaWipe" createdAt="2025-03-18T03:42:19" color="">}}

{{<matomeQuote body="いやいや、そうじゃないんだって。画像編集ソフト作る人はみんなGaussian blurを知ってるけど、普通の人は知らないんだよ。自分が知ってることを忘れて、初めて見る人に共感する努力が必要なんだ。でもGIMPのボランティアの人たちは、別にそんな義務ないと思う。" userName="ChadNauseam" createdAt="2025-03-18T05:41:48" color="#785bff">}}

{{<matomeQuote body="GIMPチームは、ユーザーのワークフローを改善するためにソフトを積極的に変更してるよ。例えば、「名前を付けて保存」から「エクスポート」に変えた時とか。ユーザーテストについては言及されてなかったけどね。" userName="onli" createdAt="2025-03-18T07:35:35" color="#ff5733">}}

{{<matomeQuote body="正直、あれは一番ユーザーに優しくないワークフローだったと思うわ。マジでウザい。ネイティブのXCF形式で保存したいと思ったことは一度もないけど、標準的な画像形式で保存したい時はいつも思う。それをエクスポートとは考えないんだよね。<br>＞彼らがそれを望んだ理由は理解できるけど、実際のユーザーの多くはそう思ってないと思う。" userName="rleigh" createdAt="2025-03-18T08:27:09" color="">}}

{{<matomeQuote body="GIMPは素晴らしいソフトだけど、UXがイマイチな時があるよね。GIMPの”外側”を別のUXに置き換えるプロジェクトって実現可能かな？メニューとかショートカットとかダイアログシステムを全部作り直して、コアはそのまま使うみたいな。EmacsみたいにUIとUXをライブで調整できたら最高じゃん？" userName="nine_k" createdAt="2025-03-18T05:15:46" color="#ff5733">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="ちょっと間抜けな質問しても良いかな…YouTubeの動画のサムネイルってそんなに重要なの？いつもサムネイルが動画やチャンネルの成否を左右するみたいに言われてるけど。" userName="chirau" createdAt="2025-03-18T00:52:34" color="">}}

{{<matomeQuote body="YouTubeのコンテンツって子供とか、動物的な表現や派手な色にすぐ食いつく箱入り娘みたいな人たちに大きく左右されてるんだよね。冗談抜きで。" userName="bloqs" createdAt="2025-03-18T01:40:20" color="">}}

{{<matomeQuote body="YouTubeのエンジニアってすごいコンテンツ作ったり、作ることが許されてるのかな？GoogleとかMeta、Amazon、Twitchのエンジニアとは交流したことあるんだけど、YouTubeのエンジニアとはまだないんだよね。" userName="typeofhuman" createdAt="2025-03-18T02:14:37" color="">}}

{{<matomeQuote body="大体、屋上でチャイラテ飲んだり、4つ星レストランの3コースランチ食べたり、マネージャーとの軽いミーティングの後、午後の早い時間にヨガしたりする動画だよね。まあ、”YouTubeエンジニアの平均的な一日”って感じ。" userName="KetoManx64" createdAt="2025-03-18T02:22:24" color="">}}

{{<matomeQuote body="なんでそんなに意地悪なの？<br>昔ながらの出版社の人は、本や雑誌の表紙を魅力的にして、中身がどんなものか分かるように一生懸命努力してたじゃん。<br>表紙で本を判断できるんだよ。出版社がちゃんと仕事してればね。<br>ネット動画が違う理由なんてある？" userName="eru" createdAt="2025-03-18T03:58:30" color="#ff33a1">}}

{{<matomeQuote body="『最近の若者は…』みたいな文句は、有史以前から言われてるんだよ。" userName="eru" createdAt="2025-03-18T04:53:46" color="">}}

{{<matomeQuote body="で、みんな間違ってたのかな？私たちの社会は少しも変わってないって？長引く衰退はありえないって？" userName="BoingBoomTschak" createdAt="2025-03-18T07:31:47" color="">}}

{{<matomeQuote body="そんな文句が何千年も前から言われてて、私たちがそんなにひどい状態になってないってことは、大抵は間違ってるってことだよ。いつもじゃないけどね。" userName="rat87" createdAt="2025-03-18T07:58:05" color="">}}

{{<matomeQuote body="マジで、今の子供たちは違うんだって。本人に聞いてみればわかるよ。こんな風に育った世代は歴史上いないから。" userName="bloomingkales" createdAt="2025-03-18T04:57:24" color="">}}

{{<matomeQuote body="裏付けとなる統計を見たわけじゃないけど、著者のバカみたいな顔を大げさに表現したサムネイルはクリック率が高いっていろんなところで聞くんだよね。たとえアルゴリズムのためだとしても、そういうのはできるだけ避けるようにしてるよ。あと、次のような動画を優先してるんだ。<br>・「TOP X」とか「BEST OF Y」みたいな最上級の言葉を使わない<br>・再生回数が5千回以上25万回未満<br>しばらくしたら、おすすめがかなり良い感じになったよ。" userName="vunderba" createdAt="2025-03-18T01:10:35" color="">}}

{{<matomeQuote body="サムネイルに矢印が描いてある動画は大体スルーするかな。" userName="gblargg" createdAt="2025-03-18T01:38:31" color="">}}

{{<matomeQuote body="DeArrow extensionをチェックしてみて。クラウドソースのサムネイルとタイトルだよ。マジでおすすめ。" userName="eco" createdAt="2025-03-18T04:50:35" color="#ff5c5c">}}

{{<matomeQuote body="YouTuberがよく「アルゴリズム」がこの動画を気に入らなかったとか、あの動画を気に入ったとか言うじゃん？あるいは「アルゴリズム」は誰も仕組みを知らない巨大なブラックボックスだとか。<br>Youtubeの「アルゴリズム」は動画とチャンネルの命運を左右するんだ。<br>でも、「アルゴリズム」って実はそんなに謎じゃないんだよね。基本的には、視聴者におすすめの動画をたくさん表示して、クリックするかどうかを測ってるだけ（視聴時間、コメント、いいねもアルゴリズムに影響するけど、クリックしないと意味がない）。クリック率が高ければ高いほど、動画はおすすめに表示されやすくなる。<br>視聴者が見るのはサムネイル、チャンネル名、動画タイトルだけ。それだけを見て、どの動画を見るか決める必要があるんだ。<br>だから、「アルゴリズム」の大部分は、サムネイルがどれだけ視聴者にとって魅力的かってことなんだよね。" userName="phire" createdAt="2025-03-18T01:37:02" color="#785bff">}}

{{<matomeQuote body="本のカバーみたいなものだと思えばいいんじゃない？本のタイトルや概要に関係なく、魅力的なカバーはより多くの人の目に留まるし、クリックされる。あと、サムネイルが表示される場所によっては、動画のタイトル全体が見えない場合もあるよね、動画が終わった後のグリッド表示とか。" userName="xingped" createdAt="2025-03-18T00:56:18" color="#38d3d3">}}

{{<matomeQuote body="GEGLはGIMPの画像操作パイプラインを最新化するために作られたライブラリだよ。画像操作のDAGを形成するんだ。非破壊編集を可能にしたし、すべてをGEGLに移行するのはかなり大規模な作業だった（20年もかかる必要はなかったと思うけど…）。<br>エンドユーザーはGEGLについて知る必要はまったくないよ。UIに表示されるのは、GEGLでできることの多くが従来のGIMP UIではまだ利用できないからだろうね。" userName="eco" createdAt="2025-03-18T04:25:57" color="#38d3d3">}}

{{<matomeQuote body="YouTubeのサムネイルを作ったことはないけど、もし作るとしたらpaint.netを100個、GIMPを0個使うかな。YouTubeのサムネイルに必要なものは全部paint.netで数分で簡単にできる。グラフィックの標準的なツールボックスみたいなものだよ。<br>https://www.getpaint.net/download.html<br>https://www.google.com/search?q=paint.net&tbm=isch<br>GIMPはユーザーに対して意地悪で、時に敵意すら抱いているように感じる。去年、LinuxでGIMPを使って画像を定期的に処理する必要があったんだけど（トリミング、構成、その他の基本的な操作）、Samba、QEMU、Windowsをインストールして、paint.netとPNGを共有することを真剣に検討したよ。GIMPでサムネイルを作るなんて考えられない。" userName="wruza" createdAt="2025-03-18T06:58:11" color="">}}

{{<matomeQuote body="このハンマーはネジを扱うのには向いてないね。<br>もしPintaみたいなのが必要ならそれを使うべき。<br>＞https://en.m.wikipedia.org/wiki/Pinta_(software)<br>Kritaみたいなのが欲しいならそれを使うべき。そしてGIMPみたいなのが必要なら、paint.netはそもそも検討の対象にならない。なぜならそれは明らかに違うものだから。" userName="diffeomorphism" createdAt="2025-03-18T07:24:25" color="">}}

{{<matomeQuote body="マジでOSS好きなんだけど、GIMPのUXがマジでクソすぎて、Adobe使う方がマシだわ（吐）。サブスク解約するのにクマと戦うハメになるけど。でもFigmaがあるから大丈夫。OSSじゃないけど無料だし、UXも許容範囲。俺みたいな初心者でも、たまに画像の修正とか、複数の画像を組み合わせるくらいならFigmaで30分で終わるのに、GIMPだと3時間もかかるしイライラする。GIMPだとボタンとかパネルが見つからないんだよね。もうGIMPに慣れてるなら使えばいいけど、そうじゃないなら時間の無駄だよ。OSS使う満足感よりもUXの悪さで失う時間の方が大きい。" userName="nomilk" createdAt="2025-03-18T04:25:48" color="#785bff">}}

{{<matomeQuote body="GIMPの代わりにKritaとPhotopea試してみて！マジでおすすめ。UIが全然分かりやすいよ。" userName="m-schuetz" createdAt="2025-03-18T05:30:16" color="#785bff">}}

{{<matomeQuote body="＞“GIMPはPhotoshopのライバルじゃない。Photoshopは画像編集ソフトで、GIMPはパズルみたいな画像変更ソフトだ”ってYouTubeのコメントで見た。" userName="curiouser3" createdAt="2025-03-18T15:51:29" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="これが上位に来てて嬉しいわ。なんでUXがクソなOSSを褒めるんだ？まず⌘にキーバインド設定すらされてないし、⌘sに保存も設定されてない[0]。終了する時に保存のオプションもないし。ブラシサイズで＋押すと40から40．01になるし（笑）。ホイールでサイズ変更もできないし…。マジで使えば使うほど不満が出てくる。まるで古代のUNIXマシンに繋がれたX windowみたい。[0]⌘sが新規画像には使えないけど、JPGとかの”上書き”には使えるのはマジで進歩だわ！" userName="singularity2001" createdAt="2025-03-18T10:41:57" color="">}}

{{<matomeQuote body="ユーザーを知ることが大事だと思うな。写真編集者とかマルチメディア系の人ってMac使う人多いし、最初からMacのキーバインドとか、Adobe Photoshopのキーバインドを真似すればGIMPのためになると思う。" userName="tdubey" createdAt="2025-03-18T12:23:12" color="">}}

{{<matomeQuote body="Krita試してみて！オープンソースだし使いやすいし機能もたくさんあるよ。" userName="nbittich" createdAt="2025-03-18T05:25:41" color="#38d3d3">}}

{{<matomeQuote body="GIMPでアート作ったよ。p5．jsで画像レイヤー作って、前のバージョンで5つの画像を合成した。レイヤーシステムは分かりやすかったし、不透明度とか合成も簡単だった。昔はPhotoshopも結構使ってたんだけどね…サブスクになる前は。エクスポートと別名保存がちょっと分かりにくかったけど、全体的には難しくなかったよ。その画像が展覧会に出展されたからマジで嬉しい。<br>Photoshopはトレーニング企業とかカンファレンスがあるくらいなんだぜ？Photoshop world conferenceに行ったことあるし。Mac使ってた時はPixelmatorで簡単にトリミングとかしてたな（プレビューでもできたけど）。そっちの方が簡単だけど、GIMPはパワフルだからちょっと勉強する必要がある。" userName="acomjean" createdAt="2025-03-18T04:53:41" color="#ff5c5c">}}

{{<matomeQuote body="マジそれな。簡単さだけが全てじゃないんだよねー、特にこういうコミュニティだとさ。こういうツールって、必ずしも楽な解決策を求めてる人向けじゃないんだよ。結局は、何にお金払うかとか、何に慣れ親しんで育ったかって話。Microsoftも昔似たようなやり方して大成功したじゃん。でもWindowsだって、俺らみたいに小さい頃から使ってる人間からしたら、実はそんな簡単じゃないんだよね。例えば、[https://www.insidehighered.com/news/tech-innovation/teaching...]" userName="johnnyanmac" createdAt="2025-03-18T08:50:46" color="">}}

{{<matomeQuote body="世の中の大勢の意見はそっち寄りなんだから、もうちょっと真剣に受け止めるべきじゃない？ダメなUXはマジで存在するし、ちゃんとした問題なんだよ。" userName="skeaker" createdAt="2025-03-19T22:36:58" color="">}}

{{<matomeQuote body="＞プロ品質のテキストが簡単に作れるようになったのもデカいよね。テキストのスタイル、アウトライン、影、ベベルとか色々適用できるし、しかもテキスト編集、フォントやサイズの変更、スタイルの微調整も全部できるんだって。マジで革命的じゃん。昔GIMPでコミックの翻訳組版やろうとしたら、ワークフローがクソすぎて、他のツールも使わざるを得なくてマジ面倒だったんだよね。今度こそ試してみるけど、これなら有料の編集ソフト並みになってるかもね。" userName="idle_zealot" createdAt="2025-03-18T00:01:46" color="#785bff">}}

{{<matomeQuote body="わかる。GIMP 3.0、KritaやInkscapeより意外と優秀だよね。Krita 5.3もテキスト機能が大幅に改善されるらしいけど（リアルタイムプレビューとかオンキャンバス編集とか）。" userName="geenat" createdAt="2025-03-18T00:51:16" color="#38d3d3">}}

{{<matomeQuote body="GIMPがそもそもペイントソフトだってことは理解してるけど、Kritaのテキストツールはマジでひどいからね。改善されたって聞いてマジ嬉しい。" userName="specproc" createdAt="2025-03-18T04:23:44" color="">}}

{{<matomeQuote body="72dpiより高い解像度でテキストレンダリングできるようになった？数年前にチェックした時は無理だったんだけど、こういう修正こそメジャーリリースに入れるべきだと思うんだよね。GIMPは昔からプロ、プライベート問わず、俺のワークフローには全く役に立たなかったんだよね。Photoshopの方がクオリティも使いやすさも段違いだし。でもそれが修正されたなら、GIMPを良心的に勧められるようになるかも。でもUIがクソだからPhotopeaの方がマシかなー。少なくとも知識は流用できるし。GIMPに時間費やすのは時間の無駄。" userName="throwanem" createdAt="2025-03-18T02:25:12" color="">}}

{{<matomeQuote body="マジで試すの楽しみ。全く同じ経験したわ。" userName="Carrok" createdAt="2025-03-18T00:40:55" color="#ff33a1">}}

{{<matomeQuote body="GIMPは物心ついた時から使ってるんだよね。UI/UXについては色々言いたいこともあるけど、最高のフリーソフトであることは間違いない。マジ嬉しい。" userName="Carrok" createdAt="2025-03-17T23:45:53" color="#785bff">}}

{{<matomeQuote body="UXがマジでうざくて、使う気が失せるんだよね。使いにくいせいで作業の邪魔にしかならないなら、もっと楽にストレスなくできる別のソフトを探すわ。GIMPの機能とかマジ意味ないし。でも、フリーソフトだし文句言う筋合いもないんだけどね。せっかく作ったのに、UXのせいで日の目を見ないのは悲しいかも。少なくとも俺みたいなUXにイライラしてる人はそう思ってるんじゃないかな。でも、作者たちがそれでいいなら、それはそれでいいと思うよ。" userName="dxdm" createdAt="2025-03-18T02:50:03" color="">}}

{{<matomeQuote body="めっちゃ同意。一時期、普通の画像編集ソフトの代わりに使ってみたけど、イライラすることが多すぎた。例えば、今回のアップデートでテキストを配置した後に編集できるようになったとか、マジありえない。商用エディタでは15年以上前から当たり前の機能じゃん。" userName="spicybright" createdAt="2025-03-18T03:00:13" color="">}}

{{<matomeQuote body="＞Ex、this update introducing editing text after you place it in is pretty ridiculous。<br>え、何のこと言ってるかわかんないけど、GIMPも前からテキスト編集できたよ。新しいのは、非破壊フィルターとテキストの非破壊アウトライン機能だよ（GIMP3より前でもテキストをベクターパスに変換してアウトラインを描画できたって主張する人もいるけど）。" userName="ponorin" createdAt="2025-03-18T03:09:33" color="#ff5c5c">}}

{{<matomeQuote body="他のソフトを知らなかったから、最初にGIMPを覚えたんだよね。だから先入観はないよ。GIMPは写真の明るさ調整とか、切り抜き、背景削除みたいな簡単なことに使ってる。一番複雑だったのは、resinthesizerプラグインで写真の中のオブジェクトを消したことかな。少数意見かもしれないけど、UI/UXは別に悪くないと思うんだよね。やりたいことの邪魔になったことはないし、どこに何があるか全部知ってるし。" userName="jwrallie" createdAt="2025-03-18T03:49:44" color="#ff33a1">}}

{{<matomeQuote body="マジでそれな。特に、あまり有能じゃないと思われてるソフトほどそうだと思う。有名なフリーソフトってことは、5年後も確実に存在してて、5年後もライセンス持ってて、全部のパソコンで使えるし、コマンド一発でインストールできる可能性が高いってことだもんね。この前、同僚がMS Excelで.csvファイルを開こうとしたんだけど、ライセンスがないから開けなくて困ってたんだよね。だからLibreOffice使えばって言ったら、マジで頭おかしい人を見るみたいな目で見られて、Excelより機能が多いの？って聞かれたわ。ライセンスなしのExcelより機能が多いし、.csvインポーターは区切り文字を選べたり、プレビューできたり、カラム幅を自動で調整してくれる機能があるんだよね。" userName="jwrallie" createdAt="2025-03-19T22:30:43" color="#ff33a1">}}

{{<matomeQuote body="マジでそんな悪くないって" userName="wizzledonker" createdAt="2025-03-18T10:30:09" color="">}}

{{<matomeQuote body="ほんとそれ" userName="djmips" createdAt="2025-03-18T08:03:58" color="">}}

{{<matomeQuote body="この分野での勝者はKritaだと思う。" userName="Diti" createdAt="2025-03-17T23:56:56" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Paint Shop Pro育ちだからかもだけど、Kritaの方がGIMPより直感的でマジ使いやすいんだよね。GIMPのほうが向いてる作業でもKrita使っちゃうレベル。" userName="hatthew" createdAt="2025-03-18T00:48:42" color="#45d325">}}

{{<matomeQuote body="KritaとGIMPは別カテゴリっしょ。Kritaはデジタルペイント用で、GIMPは名前の通り画像加工ソフトじゃん。" userName="Gualdrapo" createdAt="2025-03-18T00:24:16" color="">}}

{{<matomeQuote body="GIMPのタグラインはそうかもだけど、両方やるならKritaの方が良くね？" userName="lmm" createdAt="2025-03-18T02:02:19" color="">}}

{{<matomeQuote body="＞KritaとGIMPは別カテゴリっしょ。<br>＞”マジそれな。Kritaの開発者は使いやすさとかUIに力入れてるし。”" userName="throwanem" createdAt="2025-03-18T02:26:25" color="#785bff">}}

{{<matomeQuote body="Kritaで画像加工のニーズは全部満たせるから、GIMPなんて使わなくて済むのまじ助かる。" userName="m-schuetz" createdAt="2025-03-18T05:32:28" color="#ff5c5c">}}

{{<matomeQuote body="また競争の話してる(笑)。もし誰かにフリーソフト一個だけおすすめするなら、Krita勧めるかな。GIMPも素晴らしいソフトだけどね！画像編集はGIMPの方が慣れてるから使うけど、絵を描くならKritaのブラシエンジンが良い感じ。GMICがある方を使うけど、最近はKritaに入ってる事が多いかな？Rebelle Mixboxみたいなカラーミキシング機能ってどっちかにある？" userName="balamatom" createdAt="2025-03-18T00:16:18" color="#ff5c5c">}}

{{<matomeQuote body="Kritaも試したけど、GIMPも使いにくいけど、俺にはGIMPの方がまだ使いやすいし、必要なツールは全部揃ってる。" userName="lollollollollol" createdAt="2025-03-18T00:41:05" color="">}}

{{<matomeQuote body="写真編集ならGIMPが圧倒的に上。プラグインも多いし。お絵かきとかペイントならKritaの方が良いね。" userName="BeetleB" createdAt="2025-03-18T00:25:25" color="#ff33a1">}}

{{<matomeQuote body="マジで聞きたいんだけど、写真編集においてGIMPがKritaより優れてる点って具体的に何？" userName="nvllsvm" createdAt="2025-03-18T00:41:28" color="">}}

{{<matomeQuote body="Photoshopから来たならKritaの方が圧倒的に使いやすいと思うよ。どっちでも大抵の事は出来ると思うし、UIに慣れるまでの時間とか、個人的な好みじゃないかな。" userName="borgdefenser" createdAt="2025-03-18T01:22:20" color="#ff33a1">}}

{{<matomeQuote body="GIMPと同じ機能があるのかな？KritaはGIMPよりもアート向けで写真編集は弱いって聞いたんだけど、マジ？" userName="flykespice" createdAt="2025-03-18T00:21:07" color="">}}

{{<matomeQuote body="Kritaってまだ使いやすいテキストツールがないし、カラーモードも変えられないんだよね。" userName="vekatimest" createdAt="2025-03-18T01:13:01" color="">}}

{{<matomeQuote body="え？Kritaは何年も前からカラーモードの扱いや変換がちゃんとできてるよ。たぶん10年くらい前から。<br>GIMPこそCMYKとかのカラーモードがまだ弱いんじゃない？<br>それにKritaは結構前からベクターレイヤーでテキストも使えるし。" userName="kuschku" createdAt="2025-03-18T01:28:22" color="#ff5c5c">}}

{{<matomeQuote body="CMYKって3.0で対応したんじゃなかったっけ？" userName="asddubs" createdAt="2025-03-18T01:43:20" color="">}}

{{<matomeQuote body="ペーストするときに、新しいレイヤーが勝手にできちゃうのをどうにかしたいんだけど。毎回アンカーするか、別のレイヤーにするか決めなきゃいけないの？" userName="shadowgovt" createdAt="2025-03-17T23:47:13" color="#785bff">}}

{{<matomeQuote body="どういう挙動がいいの？新しいレイヤーを作るのは、クリップボードの中身を新しいレイヤーとしてペーストしたいのか、今のレイヤーに結合（アンカー）したいのか聞いてるんだよ。<br>一時的なフローティングレイヤーについてはここを見てね: <br>https://docs.gimp.org/en/gimp-selection-float.html" userName="idle_zealot" createdAt="2025-03-17T23:58:12" color="#38d3d3">}}

{{<matomeQuote body="C-v C-h" userName="balamatom" createdAt="2025-03-17T23:57:03" color="">}}

{{<matomeQuote body="よくやった！<br>ソフトを頻繁に使うなら、便利なホットキーを覚えるのがマジおすすめ。めちゃくちゃ時間短縮になるから。" userName="blooalien" createdAt="2025-03-18T00:11:15" color="#45d325">}}

{{<matomeQuote body="メニューからホットキーとアイコンを削除したのはマジありえない。メニューにマウスカーソルを合わせるだけでホットキーとかが分かったのに。" userName="stuaxo" createdAt="2025-03-18T09:57:49" color="">}}

{{<matomeQuote body="すごい！どうやってそのキーコンボ見つけたの？" userName="shadowgovt" createdAt="2025-03-18T11:45:20" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
