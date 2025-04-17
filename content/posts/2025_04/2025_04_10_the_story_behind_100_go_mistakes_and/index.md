+++
date = '2025-04-10T00:00:00'
months = '2025/04'
draft = false
title = 'Goプログラマーなら絶対ハマる100の落とし穴とその回避術、全部教えます！'
tags = ["Go", "プログラミング", "エラー", "開発", "書籍"]
featureimage = 'thumbnails/orange3.jpg'
+++

> Goプログラマーなら絶対ハマる100の落とし穴とその回避術、全部教えます！

引用元：[https://news.ycombinator.com/item?id=43647880](https://news.ycombinator.com/item?id=43647880)

{{<matomeQuote body="レビューのやり方を説明したんだけど、PRベースでのやり方を試してくれなかったんだよねー。もっとスムーズなコラボがしたかったのにさ。Manningのコピーエディターが、Goのことも知らないのにgit使えてるのが謎すぎる。しかも、Googleドキュメント以外にAsciiDocも受け付けてるみたいだし。<br>＞私がレビューのやり方を説明したんだけど、PRベースでのやり方を試してくれなかったんだよねー。“もっとスムーズなコラボがしたかったのにさ”" userName="mtlynch" createdAt="2025-04-10T23:25:16" color="">}}

{{<matomeQuote body="めっちゃ引き込まれる文章だね！ついついサイト見に行っちゃったよ。ところで、E-Readerでの表示は試した？サンプル見た感じ、画像とか色分けが多いからKindleだとちょっと厳しいかもねー。" userName="thi2" createdAt="2025-04-11T11:06:26" color="">}}

{{<matomeQuote body="ありがとー！最初はWebに特化してて、E-Readerは考えてなかったんだよね。でも、正式に本が出ることになったから、PDF版を優先して、rm2でテストするよ。" userName="mtlynch" createdAt="2025-04-11T12:53:41" color="#ff5c5c">}}

{{<matomeQuote body="それ、マジでびっくり。オンラインレビューツールじゃなくて、直接asciidoc編集させられるとか古すぎじゃない？コードレビューみたいなソフトがもっと前からあると思ってたわ。Wordとかのコメント機能みたいなのが普通じゃない？" userName="Cthulhu_" createdAt="2025-04-11T07:35:22" color="">}}

{{<matomeQuote body="もし見てたらだけど、sync.Poolで固定サイズじゃないオブジェクト使うのはマジで問題の元だよ！Goのstdlibのsync.Poolの使い方見ると、固定サイズの tiered poolがいっぱいあるし、大きいサイズは捨ててるし。<br>＞sync.Poolで固定サイズじゃないオブジェクト使うのはマジで問題の元だよ！“Goのstdlibのsync.Poolの使い方見ると、固定サイズの tiered poolがいっぱいあるし、大きいサイズは捨ててるし”" userName="Groxx" createdAt="2025-04-11T02:24:00" color="#ff33a1">}}

{{<matomeQuote body="Goにメモリアリーナがあればよかったのにね。poolのユースケースはアリーナで綺麗に解決できたのに。" userName="lenkite" createdAt="2025-04-11T04:19:53" color="">}}

{{<matomeQuote body="Goは1.22から実験的なアリーナAPIがあったよ。" userName="dilyevsky" createdAt="2025-04-11T04:54:08" color="">}}

{{<matomeQuote body="でも、その実験は失敗したんだよね。もう終わった。" userName="9rx" createdAt="2025-04-11T05:30:41" color="">}}

{{<matomeQuote body="アリーナ、また削除されたみたい。" userName="jensneuse" createdAt="2025-04-11T05:31:04" color="">}}

{{<matomeQuote body="多分だけど、この記事ってGoのGCが generationalじゃないから、ほとんど(全部じゃないけど)存在してるんじゃないかな。" userName="a-french-anon" createdAt="2025-04-11T08:37:56" color="">}}

{{<matomeQuote body="まあ、そうかもね。でも、世代別GCでも病的なくらいGCの挙動が悪くなることはよくあるよ。Poolとか手動でのメモリ管理は、常にそれなりに使い道があると思うな。" userName="Groxx" createdAt="2025-04-11T16:16:53" color="">}}

{{<matomeQuote body="コピー編集の話だけど、2010年にManningのためにDocBookで本を書いたんだ。DocBookはXMLだから、開始/終了タグを別々の行にして、コンテンツを真ん中に書いたんだよね。HTMLドキュメントみたいにさ。コピー編集後、全部一行にされて返ってきた時はマジでブチ切れてプロジェクト放棄しかけたわ。全然変わってないみたいだね。今はセルフパブリッシングにしてる。詳しくはここ→https://ryanbigg.com/2015/08/my-self-publishing-success-stor…" userName="ryanbigg" createdAt="2025-04-10T23:44:58" color="#785bff">}}

{{<matomeQuote body="もしかして勘違いしてる？XMLを手でフォーマットしたってこと？誰かがツールにロードして変更して保存しただけで、XMLなんて見てないんじゃない？XMLの見栄えなんて気にする人いる？" userName="ahtihn" createdAt="2025-04-11T07:32:58" color="">}}

{{<matomeQuote body="気にしなくていいってのが、そういう構文の大きな利点の一つだと思うけどね。もし何か理由があって気にするなら、フォーマットツールがあるじゃん。" userName="fc417fc802" createdAt="2025-04-11T09:16:17" color="">}}

{{<matomeQuote body="だってこのケースでは、人間と機械の両方にとって読みやすいことが重要だったのに、レビュー担当者は前者を無視したんだもん。それならWordで書けばいいじゃん。" userName="Cthulhu_" createdAt="2025-04-11T11:39:33" color="">}}

{{<matomeQuote body="この本の形式は、ブッククラブにすごく向いてるね。経験者も初心者も交じってやってるけど、この本の間違いは良い議論のきっかけになるんだ。ベテランは自分が同じ間違いをした時の話とか、どうやって避けてきたかを話してくれるし、初心者は他の言語との比較をしてるよ。“fuzzingを使ってない”とか“errgroupを使ってない”とか、Goの紹介になってるミスもあるよね。" userName="onionisafruit" createdAt="2025-04-10T21:55:10" color="#ff33a1">}}

{{<matomeQuote body="O’Reillyの著者だけど、著者は本の売り込みでつまずいたみたいだね。メールから始めるのが確実だと思うよ。私達も最初はメールだけだったし。後で詳細な提案書を提出したけど、そんなに大変じゃなかったよ。O’Reillyのツールも素晴らしいよ。git commitから本のフルバージョンを生成できるし。本の執筆は全部vimでやったよ。" userName="relistan" createdAt="2025-04-11T07:56:40" color="#ff5733">}}

{{<matomeQuote body="良い例となるリポジトリはありますか？" userName="alp1n3_eth" createdAt="2025-04-11T18:12:01" color="">}}

{{<matomeQuote body="彼らは自分たちのリポジトリをホストしていて、ビルドは彼らのシステムで行われるけど、レイアウトはすごくシンプルだよ。番号が振られたファイルがasciidocとかmarkdownとか、好きな形式で置かれてるだけ。" userName="relistan" createdAt="2025-04-12T08:51:12" color="">}}

{{<matomeQuote body="Manningの著者さん、こんにちは！この本はマジで最高だよ。数年前に読んだけど、すごく役に立ったし、良い情報を少しずつ得られるから、また読み返せるよね。今度またGoのプロジェクトを始めるから、また見直すつもりだよ。この本の良いところは、全部“実世界”の話って感じがするところ。著者がGoでたくさん開発してきて、どこに落とし穴があるか教えてくれるから、時間を節約できるんだよね！" userName="JeremyMorgan" createdAt="2025-04-10T21:48:13" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="この記事の著者はGoでたくさん開発してるんだなってわかるね！<br>＞著者は当時Goであんまり開発してなかったんだって。でも、それって別にその分野に詳しくなったり、本を書いたりするのに必須じゃないってことの証明だよね。" userName="Cthulhu_" createdAt="2025-04-11T12:03:48" color="">}}

{{<matomeQuote body="そういうプログラミング本って結構あるよね。しかも、だいたいバレる。" userName="Suppafly" createdAt="2025-04-11T16:54:29" color="">}}

{{<matomeQuote body="例のgoroutineのやつ（#63）について質問！コピペできないけど画像なんだよね。<br>なんでよくある間違いがgoroutine限定なの？もしgoroutineを使わずにfunction closuresを作ったら、全部同じ'i'変数を参照するのかな？（たぶん、この間違いがgoroutineとセットになりやすいからだよね）。<br>著者が真剣に本に向き合ってるのが伝わるから、マジ尊敬する。Goを学ぶためじゃなくて、良い本を作るってどういうことかを知るために興味が出てきた。" userName="adeon" createdAt="2025-04-10T22:06:02" color="#ff33a1">}}

{{<matomeQuote body="詳細はこちら：https://100go.co/#not-being-careful-with-goroutines-and-loop...だよ。<br>僕の例はたぶんひどいと思う。Goの最近のアップデートのおかげで、もう当てはまらない3つの間違いのうちの1つだから。<br>コメントありがとう！めっちゃ嬉しい。" userName="teivah" createdAt="2025-04-10T22:09:10" color="#ff5c5c">}}

{{<matomeQuote body="本を書くだけじゃなくて、読者が新しい情報で混乱しないように、オンラインコンテンツも最新に保ってるの？しかも「もう当てはまらない間違いの一つ」って即答できるの？マジすごい。<br>技術的な文章の例としてブックマークしたよ。教育とか教えるのってマジで難しいよね。何度も書き直して短くしたり、わかりやすくしたり…それって作品への愛だよね。完璧主義はほどほどにしないとね！" userName="adeon" createdAt="2025-04-10T23:09:27" color="#ff33a1">}}

{{<matomeQuote body="もし続編を書くとしたら、単純に「間違い」を削除して「86個のGoの間違いとその回避方法」にする？それとも、もっと見つける？" userName="Cthulhu_" createdAt="2025-04-11T12:05:17" color="">}}

{{<matomeQuote body="#633はタイプミスか説明が下手なだけだと思うよ。<br>「このコードは順番に関係なく123を出力すると予想されるかもしれない」じゃなくて「正確に」か「順番に」と言うべき。<br>非同期実行でFIFOを想定するのって、初めて並行処理に出会う人が最初にやるミスだよね。" userName="ljm" createdAt="2025-04-10T22:15:27" color="#ff33a1">}}

{{<matomeQuote body="問題は順番がバラバラになる“かもしれない”ことじゃなくて、共有メモリアクセスのタイミングで値が欠落したり重複したりすること。<br>Go 1.22で挙動が変わったんだよね。<br>[1]: https://go.dev/blog/loopvar-preview" userName="amarshall" createdAt="2025-04-10T22:28:40" color="#ff5733">}}

{{<matomeQuote body="質問の核心はそこ！リンク先（https://go.dev/blog/loopvar-preview）にも書いてあるけど。<br>つまり、Goではforループの'i'変数は毎回同じ'i'を参照するってこと？closureが全部同じ'i'を参照するって気づかないミスだよね。<br>それとも、goroutine自体に変なルールがあるの？Goをほとんど書かないから気になったんだ。Go 1.22の変更は良いと思う。自分も同じミスをしそう。" userName="adeon" createdAt="2025-04-10T22:47:17" color="#45d325">}}

{{<matomeQuote body="それってJSのclosureとscopeの問題と同じじゃん。<br>値そのものじゃなくて、値への参照を扱ってるってこと。" userName="ljm" createdAt="2025-04-10T23:36:59" color="#ff5733">}}

{{<matomeQuote body="100個のGoのミス、間違いなく1つ目だね。goroutineを使わなくても問題を示す方法はあったよ。ループ内でクロージャのリストを作って、ループが終わった後に同期的に呼び出すとかさ。そうすれば、全部同じ（この場合は最後の）iの値になるんだ。" userName="kbolino" createdAt="2025-04-11T13:04:25" color="#ff33a1">}}

{{<matomeQuote body="#63は、適切な同期なしに複数のgoroutineを実行したときの実行保証の欠如についての話じゃないんだ。ループ変数とgoroutineに関するものなんだよね。" userName="teivah" createdAt="2025-04-10T22:26:10" color="">}}

{{<matomeQuote body="素敵な記事だね。特に付け加えることはないんだけど、ただupvoteボタンをクリックするだけじゃ足りない気がして。" userName="goostavos" createdAt="2025-04-10T21:30:26" color="">}}

{{<matomeQuote body="自分の投稿がHNに載ってることに気づいた！どうもありがとう😊" userName="teivah" createdAt="2025-04-10T21:46:28" color="">}}

{{<matomeQuote body="全く同じことを書こうと思ってここに来た！" userName="4ndrewl" createdAt="2025-04-10T21:31:11" color="">}}

{{<matomeQuote body="ありがとうございます！" userName="teivah" createdAt="2025-04-10T21:46:41" color="">}}

{{<matomeQuote body="＞スイスで仕事をしてて、C++のレガシーコードベースをリファクタリングしてたんだ…<br>すごく良い職場だよね。“Aを完全に新しいスタックで実装しよう”って決めて、しばらくしてから“あ…これは難しすぎる、まずい決断だった。別のを試そう”って言えるんだから。" userName="re-lre-l" createdAt="2025-04-11T10:15:24" color="">}}

{{<matomeQuote body="Sensei’s Libraryに、Goで作られたミスのコレクションがあるよ：＜https://senseis.xmp.net/?Mistakes＞" userName="tmtvl" createdAt="2025-04-11T08:31:21" color="#38d3d3">}}

{{<matomeQuote body="これって、言語じゃなくてボードゲームの話？" userName="leeuw01" createdAt="2025-04-11T13:22:33" color="">}}

{{<matomeQuote body="著者に言わせると、この本が「100 _ Mistakes and How to Avoid Them」シリーズの始まりなんだって。それがプログラミング言語をベースにした本の新しい道を開いたんだね。" userName="turtleyacht" createdAt="2025-04-10T21:43:21" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="DEからマジで色々学んだわー。ブログで10年くらい書いてたけど、ネットの記事って直接的じゃないと読んでもらえないじゃん？でも本は違う。読者はわざわざ買ってくれてるんだから、価値のある場所に連れて行くのがこっちの仕事。時間がかかってもいいわけ。<br><br>でも、本って無駄なpaddingが多い気がするんだよねー。28語を120語にする例とかマジそれ。最初の段落とか意味なくね？「100 Go Mistakes」って本読んでる時点で、そのミスがよくあるってわかるじゃん。価値上がった？<br><br>コードの説明も不要だと思う。コードtrivialだし。コードの横にも説明あるし。やっと本題って感じ。<br><br>出版社はページ数稼がないと本の値段に見合わないって思ってるんだろうけど、マジ勘弁。" userName="m1keil" createdAt="2025-04-11T03:34:40" color="">}}

{{<matomeQuote body="それはあなたの意見だよね、別にいいんだけどさー。ちょっと考え変わるか試させて。<br><br>＞最初の段落とか意味なくね？「100 Go Mistakes」って本読んでる時点で、そのミスがよくあるってわかるじゃん。価値上がった？<br>頻出ミスのレベルも色々あるからねー。これは多くの開発者が一度はやるミスだと思うよ。だから頻出だって強調するのはアリだと思うな。”<br><br>＞コードの説明も不要だと思う。コードtrivialだし。<br>コードの意図は常に説明するって決めてるんだよね。5行でも、何を伝えたいか理解しやすくなるじゃん？”<br><br>＞コードの横にも説明あるし。<br>横の説明は本のサイズに関係ないから、そのargumentは成り立たないね。読者がどこに注目すべきかhighlightするためにやってるんだ。”<br><br>本の値段を正当化するためじゃないよー。読者を導いて、期待値を明確にして、説明についてきてもらうため。そう捉えるのは自由だけど、それが理由じゃないよ。少なくとも俺の本はね。" userName="teivah" createdAt="2025-04-11T08:17:26" color="">}}

{{<matomeQuote body="＞これは読者を導いて、期待値を明確にして、説明についてきてもらうため。<br>それってブログでも同じじゃない？<br><br>誤解しないでね、The Little Schemerみたいなのが良いって言ってるわけじゃないし、ブログ版が最高だとも思ってないよ。でも、本のpaddingって存在するよね？<br><br>ちなみに、O'Reilly Learningであなたの本読んだけど、良い本だと思うよ。だからdisってるわけじゃないんだ。出版社disだよ。" userName="m1keil" createdAt="2025-04-11T10:28:57" color="">}}

{{<matomeQuote body="気にしないで。あなたの意見は理解してるよ。契約で最低ページ数があるんだよね。でも個人的には、ページ数増やせってプレッシャーは感じなかったな。<br><br>むしろDEに、「just-in-case teachingよりjust-in-time teachingを優先しろ」って何度も言われたよ。章に役立たないセクションは削られた。「役立つかもしれない」程度じゃダメなんだって。<br><br>誰と仕事するか、どの出版社かってのもあると思う。Manningはフェアだったよ。" userName="teivah" createdAt="2025-04-11T11:02:54" color="#45d325">}}

{{<matomeQuote body="ソースコードにコメント追加するの、編集チームと仕事するなら、バージョン管理のないPDFとかWordファイルより全然マシ。" userName="pier25" createdAt="2025-04-11T01:09:45" color="">}}

{{<matomeQuote body="「でも、Timのレビューは他のレビュー全部合わせたのと同じくらい価値があったかも」…なのに、レビューについて何も教えてくれないのは残念。他のinputのscreenshotとか詳細さからするとね。<br><br>あと、copyeditorの件はマジで共感。" userName="methods21" createdAt="2025-04-11T22:00:58" color="">}}

{{<matomeQuote body="彼のレビューは300ページ以上の本にannotatedされたコメントなんだよ。彼のレビューをdeep divingしても、このセクションが良くなるとは思えない。" userName="teivah" createdAt="2025-04-11T22:54:34" color="">}}

{{<matomeQuote body="Goのミスで一番気になるのは、gc pausesとか、first-class named and default argumentsがないとか、exceptionsがないとか、subrange typesがないとか。<br><br>だからGo使わないようにしてる。もしくは、missing features（generics）が追加されるまで待つ。" userName="musicale" createdAt="2025-04-12T01:57:34" color="">}}

{{<matomeQuote body="Genericsもうあるよ。" userName="teivah" createdAt="2025-04-12T13:31:19" color="#ff5733">}}

{{<matomeQuote body="マジで。Go 1.0から1.18まで、10年も待ったけどね。" userName="musicale" createdAt="2025-04-12T23:42:23" color="#785bff">}}

{{<matomeQuote body="2年くらい前に読んだけど、マジでおすすめだよ。Josh BlochのEffective Javaみたいな雰囲気があるんだよね。" userName="meling" createdAt="2025-04-10T21:54:38" color="#45d325">}}

{{<matomeQuote body="ここで挙げられてる例は間違ってるよ。Go 1.22からループ変数はイテレーションごとにスコープを持つから、この”壊れた”コードは決定的で正しいんだ。<br>>https://go.dev/blog/loopvar-preview" userName="tyho" createdAt="2025-04-11T12:22:33" color="#38d3d3">}}

{{<matomeQuote body="時代遅れって言いたいんだよね。ここに書いたんだけど。<br>>https://100go.co/#not-being-careful-with-goroutines-and-loop...<br>でも、君の言う通り修正されたんだよね(100個の間違いのうち2つと一緒に)。" userName="teivah" createdAt="2025-04-11T12:36:55" color="">}}

{{<matomeQuote body="まだWindows 7をサポートしなきゃいけない業界にいるんだよね。最後にサポートされたバージョンは1.20だよ。時代遅れかどうかは相対的なんだよね。" userName="yndoendo" createdAt="2025-04-11T13:27:56" color="">}}

{{<matomeQuote body="今日コード書いたんだけど、新しい挙動に頼っちゃった。ちょっと後ろめたい気持ちになった。" userName="tyho" createdAt="2025-04-11T12:50:20" color="">}}

{{<matomeQuote body="それって2023年の問題なの？C#は2012年に似たようなの直した気がするけど。Goはまだ車輪の再発明を誇らしげにしてるの？しかも木製でシロアリだらけの？" userName="josefx" createdAt="2025-04-11T17:37:10" color="">}}

{{<matomeQuote body="audibleでこの本を買ったんだけど(PDF版もあるって書いてあったから)、PDF版にはコードが少ししかなくて、本全体が入ってなかった。audibleの仕様だったらごめん。本のせいじゃないかもだし。聴くの楽しみにしてるよ。" userName="lexoj" createdAt="2025-04-11T09:29:22" color="">}}

{{<matomeQuote body="もし本を出版することに興味があったら、連絡して何が障害になってるか教えてほしいな。メールアドレスはプロフィールにあるよ。何も売るつもりはないから、君が直面してる問題を理解したいんだ。" userName="codazoda" createdAt="2025-04-11T00:55:16" color="#ff5733">}}

{{<matomeQuote body="Goを学ぶことに興味がある身としては、これは素晴らしいね、ありがとう！" userName="kickbribe" createdAt="2025-04-11T02:13:45" color="#785bff">}}

{{<matomeQuote body="良い言語は、間違いの余地を残すべきじゃない。" userName="revskill" createdAt="2025-04-11T05:15:09" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="でもさー、良い言語って実用的じゃなきゃダメじゃん？で、実用的なものって絶対ミスする余地があるんだよね。なんか矛盾してない？" userName="9rx" createdAt="2025-04-11T05:37:23" color="">}}

{{<matomeQuote body="最高のアプリケーションってバグがないことだよね。で、バグをなくすにはコードを一切書かないことしかない、マジレス。" userName="adamors" createdAt="2025-04-11T06:47:42" color="">}}

{{<matomeQuote body="ミスする余地がない言語なんて、人間には使えないっしょ。" userName="stpedgwdgfhgdd" createdAt="2025-04-11T07:53:52" color="">}}

{{<matomeQuote body="それ、LLM agentに必要じゃん。" userName="revskill" createdAt="2025-04-11T12:24:39" color="">}}

{{<matomeQuote body="それって“良い”のほんの一面じゃん？どの言語にも落とし穴はあるし、多い少ないはあるよね。Goにも落とし穴はあるけど、元々置き換えるはずだった(C/C++)よりは少ないでしょ。ミスする余地がない言語には、読みやすさとか生産性とかの問題が出てくるし。Rustはそういう意味でより“ガチガチ”な気がする。" userName="Cthulhu_" createdAt="2025-04-11T13:19:14" color="#785bff">}}

{{<matomeQuote body="マジそれな。存在する言語ってクソなのばっかで悲しいわ。" userName="pessimizer" createdAt="2025-04-11T18:10:46" color="">}}

{{<matomeQuote body="＞正直言うと、俺も結構インスピレーションの源だったんだよね！<br>自分で自分を褒めるのは正直じゃないよね。誰か他の人に「彼はインスピレーションの源だ」って言うのが正直ってもんでしょ。" userName="begueradj" createdAt="2025-04-11T05:31:09" color="">}}

{{<matomeQuote body="この場合は適切だと思うよ。だって彼はミスのインスピレーションの源だったんだから、自分を褒めてるわけじゃないじゃん。" userName="esrch" createdAt="2025-04-11T07:58:47" color="#38d3d3">}}

{{<matomeQuote body="本の中のミスのインスピレーションの源は自分だって言ったんだよ。言い換えると、俺自身がたくさんミスをして、それが本のセクションになったってこと。" userName="teivah" createdAt="2025-04-11T10:55:51" color="#45d325">}}

{{<matomeQuote body="ぶっちゃけ、彼が言いたいことわかってるか怪しいわ。" userName="stpedgwdgfhgdd" createdAt="2025-04-11T07:49:38" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
