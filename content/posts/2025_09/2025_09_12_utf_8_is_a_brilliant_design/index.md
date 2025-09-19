+++
date = '2025-09-12T00:00:00'
months = '2025/09'
draft = false
title = 'UTF-8の設計が天才的と言われるワケ'
tags = ["UTF-8", "文字コード", "プログラミング", "Unicode", "情報セキュリティ"]
featureimage = 'thumbnails/orange1.jpg'
+++

> UTF-8の設計が天才的と言われるワケ

引用元：[https://news.ycombinator.com/item?id=45225098](https://news.ycombinator.com/item?id=45225098)




{{<matomeQuote body="UTF-8の継続バイトが’10’で始まるおかげで、文字列のどこに飛んでも文字の始まりかすぐ分かるから、前後の文字を探しやすいんだ。EBMLの可変長整数とは違って便利だね。<br>https://www.rfc-editor.org/rfc/rfc8794#section-4.4" userName="quectophoton" createdAt="2025/09/12 19:06:38" color="#45d325">}}




{{<matomeQuote body="結局、大変なスキャンを別の大変なスキャンに替えてるだけで、nバイト飛ばすより良いとは思えないな。毎回ほぼ全部スキャンする中で、何を探してるか分かる最低限のことだろ。" userName="1oooqooq" createdAt="2025/09/12 19:28:15" color="">}}




{{<matomeQuote body="何言ってるの？ じゃあ代わりに何が良いんだよ？ 固定長エンコーディングとか？ それだと文字の種類が多すぎて、とんでもなく容量食うだろ。" userName="hk__2" createdAt="2025/09/12 19:41:21" color="#ff33a1">}}




{{<matomeQuote body="UTF-16はUTF-8よりパースが簡単だし、英語以外の文字ならよりコンパクトだよ。UTF-8が勝ったのは技術的な理由じゃなくて、ASCIIとの後方互換性があったからさ。<br>英語圏を出ると、UTF-8が大きすぎるせいで他のエンコーディングがデフォルトになってる言語もあるんだ（中国語や日本語とかね）。" userName="gertop" createdAt="2025/09/12 19:57:39" color="#45d325">}}




{{<matomeQuote body="UTF-8は文字列の途中からでも前後に動けるのが素晴らしいね。Pythonはこれで苦労してる。CPythonはワイド文字だから、絵文字一つで文字列サイズが4倍にもなる。<br>俺はUTF-8を内部で使いたかったな。インデックスは不透明な型にして、通常操作はそれでやる。" userName="Animats" createdAt="2025/09/12 19:35:23" color="#ff5c5c">}}




{{<matomeQuote body="Python 3.3からPyCompactUnicodeObjectが導入され、内部ではUTF-8を使ってるんだよ。Djangoアプリのメモリを2/3削減したらしいね。<br>俺が新しい文字列型を作るなら、O(1)の文字列インデックスは諦めてUTF-8にすると思う。大規模なインデックスってあんま使わないし、大抵のケースは線形検索で十分さ。" userName="nostrademons" createdAt="2025/09/12 19:54:43" color="#45d325">}}




{{<matomeQuote body="O(1)インデックスってのは、何MBもある巨大なテキストファイルのビューとかを扱う時に必要になるんだよ。コピーを避けてスライスで作業したい時とかね。<br>確かにイテレーションだけで事足りることも多いけど、文字列APIは論理・物理インデックス両方を持つトークンを返すべきで、それらで計算できるようにすべきだと思うよ。" userName="barrkel" createdAt="2025/09/12 23:22:29" color="#ff5733">}}




{{<matomeQuote body="それはテキストが壊れてたり悪意のある改変がないって前提での話だろ？ 無効なUTF-8シーケンスのパースとかエスケープが原因で、たくさんの脆弱性があったんだぜ。<br>https://www.rapid7.com/blog/post/2025/02/13/cve-2025-1094-po...<br>https://www.cve.org/CVERecord/SearchResults?query=utf-8" userName="deepsun" createdAt="2025/09/12 19:43:22" color="#ff5c5c">}}




{{<matomeQuote body="UTF-16が後から出たおかげで、UTF-8には2048個も無駄な3バイトシーケンスがあるんだぜ。<br>最初にUnicode作った奴らは65,536文字で世界中の文字が収まると思ってたけど、UTF-8の作者たちは20億個もの値をエンコードできるようにしたんだから、そっちの方がすごいよな。" userName="kbolino" createdAt="2025/09/12 21:35:37" color="#45d325">}}




{{<matomeQuote body="VLQ/LEB128はEBMLの可変長整数より少し優れてるよ。MSBでシーケンスの終わりをテストするんだ。UTF-8みたいに自己同期はしないけど、もっとコンパクトだね。ユニコードのコードポイントはどれも3バイトに収まるし、ASCII文字は1バイトのまま。日本語のカタカナやひらがなもU+3FFF未満だから、3バイトじゃなくて2バイトでエンコードできるんだ。" userName="sparkie" createdAt="2025/09/12 23:56:30" color="#38d3d3">}}




{{<matomeQuote body="最大4バイトのマルチバイト文字なら、継続バイトかどうか確認するために、せいぜい3バイトしか遡って読む必要ないんじゃない？<br>あとは、UTF-8非対応のライブラリで作業する際のエラーリカバリも似たような理由なのかなって。もしUTF-8バイト配列を単純にスライスしても、UTF-8対応ライブラリなら破損した先頭や末尾のバイトを無視して、そこそこちゃんとした文字列を取り出せるよね。" userName="spankalee" createdAt="2025/09/12 21:23:38" color="#ff33a1">}}




{{<matomeQuote body="「Unicode」、別名「ワイド文字」は、今世紀最悪のエンジニアリングの大失敗だよ。<br>「ASCIIとコードページエンコーディングはレガシーだから、5年で時代遅れになるであろう、互換性のない別の標準にしようぜ」って言っといて、結局「この時代遅れの設計の標準のために、インフラ全部アップグレードしなきゃいけないんだよな、だって永続的に使っていくんだから」ってなるんだから。" userName="otabdeveloper4" createdAt="2025/09/13 07:11:41" color="">}}




{{<matomeQuote body="UTF-16もUTF-8と同じくらい複雑で、Unicode全体をカバーするにはマルチバイト文字が必要だよ。だから、新しい言語を追加する際の君が不満を言ってる問題は避けられないんだ。それに、BOMが必要で、バイトペアが正しい順序であるか確認しなきゃいけないから、データが途中で切れたときにUTF-8よりもリカバリできないリスクが高いんだよね。UTF-32なら公平な比較になるけど、1文字4バイトだし、使ってるものを俺は知らないな。" userName="ISV_Damocles" createdAt="2025/09/12 20:13:31" color="#ff5c5c">}}




{{<matomeQuote body="俺も似たようなこと考えてたんだけどさ：<br>10が文字の始まりってことは、その10が文字の他のビットの中には絶対出てこないってことなのかな？" userName="s1mplicissimus" createdAt="2025/09/12 21:09:11" color="">}}




{{<matomeQuote body="UTF-8のおかげで、UTF-8には無駄な1バイトシーケンスが13個もあるんだぜ :P" userName="xigoi" createdAt="2025/09/13 10:14:06" color="">}}




{{<matomeQuote body="UTF-8やUTF-16みたいな可変幅エンコーディングはO(1)でインデックスできないけど、これは実際には大した問題じゃないんだ！文字列をインデックスする代わりにスライスすればいいんだよ。普通は順方向に読むから、スライスが安ければテキストデータを問題なくパースできる。基本的にインデックスを小さく保てば大丈夫さ。" userName="cryptonector" createdAt="2025/09/13 05:08:33" color="#ff33a1">}}




{{<matomeQuote body="残念ながら、VLQ/LEB128は処理が遅いんだ。バイトごとに意思決定が必要で、分岐予測が信頼できないからね。だから俺は自分のBONJSONで右から左への単項コードを使ったんだ。これはVLQ/LEB128と同じくらいのコンパクトさで、BONJSONはJSONと比べてデコード/エンコードが35倍も速いんだぜ。現代のチップにはこのフィールドを一発でデコードする命令もあるし、もし56ビット以下の数値に限定すれば、アルゴリズムは完全にブランチレスになるんだ。詳細はここを見てくれよな！<br>https://github.com/kstenerud/bonjson/blob/main/bonjson.md#le...<br>https://github.com/kstenerud/ksbonjson/blob/main/library/src...<br>https://github.com/kstenerud/ksbonjson/blob/main/library/src...<br>https://github.com/kstenerud/bonjson" userName="kstenerud" createdAt="2025/09/13 01:21:25" color="#45d325">}}




{{<matomeQuote body="UTF-16でサロゲートペア文字に当たって、「すべての文字が2バイトじゃない」って理解してないライブラリ設計者がいると、もう大変なことになるんだぜ。" userName="airza" createdAt="2025/09/13 11:34:01" color="#ff5733">}}




{{<matomeQuote body="バイトごとに分岐するより、8バイトごとに処理する方が良くね？`vpmovb2m`で64バイトをまとめてマスクレジスタに入れ、それを256エントリのジャンプテーブルのインデックスに使うんだ。分岐なしで高速処理できるぜ。詳しくは[1]を見てね。<br>[1]:https://www.intel.com/content/www/us/en/docs/intrinsics-guid..." userName="sparkie" createdAt="2025/09/13 02:39:41" color="#ff33a1">}}




{{<matomeQuote body="これ、ちょっと違うな。無効なUTF-8では、継続バイトがシーケンスの先頭だと代替文字が出ることあるんだよ。例えば「a 0b10000000 a」は「a�a」って3文字になる。出力文字の開始は直前1～3バイトに影響されるんだ。" userName="jridgewell" createdAt="2025/09/12 23:18:25" color="#ff5733">}}




{{<matomeQuote body="だから、3バイト戻るか、ランダムにチャンクを失うなら余計に3バイト失うのを許容するかって話？EMBLだと数バイトシークじゃ無理だよ。継続バイトが8ペイロードビットを持つ場合、全バイトがマルチバイト開始文字に見えちゃって、収束しない複数のメッセージが出ちゃうんだ。" userName="Dylan16807" createdAt="2025/09/13 05:02:25" color="">}}




{{<matomeQuote body="Unicodeの何が前方互換性がないって？UCS-2はエンコーディングの失敗だったけど、それでもかなり前方互換性があったじゃん。" userName="Dylan16807" createdAt="2025/09/13 18:28:12" color="">}}




{{<matomeQuote body="大半の問題はUTF-16のせいだよ。UTF-8の初期設計で不可能だったのは2バイトだけ。UTF-8は元々6バイトまで対応してたし。UTF-16を悪く言うつもりはないけど、Unicodeの初期の16ビット神話が多くのソフトに影響したのが問題なんだ。UTF-16は妥協策。基本はUTF-8を使って、UTF-16は既存ソフトのため、UTF-32は内部処理で使おうぜ。" userName="kbolino" createdAt="2025/09/13 13:05:46" color="#ff5733">}}




{{<matomeQuote body="UTF-16はエンディアンやサロゲートの問題があるんだよな。UTF-8もUTF-16も欠点はあるけど、UTF-16が優れてるとは思わないね。" userName="syncsynchalt" createdAt="2025/09/12 21:05:13" color="">}}




{{<matomeQuote body="「UTF-16の方が非英語文字でシンプル・コンパクト」ってのは間違い。多くの欧州言語やアラビア語はUTF-8の方がコンパクトだぞ。CJKのようなアジア言語はUTF-16の方がコンパクトだけど、HTMLみたいにASCIIが多いとUTF-8が勝つね。中国はUTF-8が主流になりつつあるし、今や日本がアンチUnicodeの最後の砦って感じ。" userName="jcranmer" createdAt="2025/09/12 22:19:28" color="#45d325">}}




{{<matomeQuote body="Pythonでは、直接インデックスを付ける新しい方法を見つけるのが好きって話は置いといてさ。エンコーディングに依存しない定数時間での部分文字列抽出は、特にNLPの研究者が「5文字のスライス」とかの抽象化を気にせずプロトタイプ作れるって点で、すごく意味があったんだよ。メモリはトレードオフだけど、予測可能だしね。" userName="btown" createdAt="2025/09/12 19:48:12" color="#ff5c5c">}}




{{<matomeQuote body="UTF-8デコーダが対応すべきことって、かなり複雑だよな。まず無効なバイト、それから条件付きで無効になる継続バイト。サロゲートもUTF-8ではエラーだし、不完全なシーケンスとか開始バイトなしの継続バイトとか、形式の問題もある。UTF-16はサロゲートだけだから、それと比べると断然複雑だよ。" userName="Mikhail_Edoshin" createdAt="2025/09/13 04:12:45" color="#38d3d3">}}




{{<matomeQuote body="でもさ、上のアルゴリズム（68454のコメントのことかな？）を使えば、分岐ゼロで、しかも並列処理もできるんだぜ。" userName="kstenerud" createdAt="2025/09/13 03:01:19" color="">}}




{{<matomeQuote body="ソフトウェアテストでは絵文字、特にBMP外の新しい絵文字を使うのがおすすめだよ。U+1F4A9（うんちの絵文字）を使うと、ライブラリがちゃんと対応してるかバレちゃうから面白いんだ。追記：僕がコメントに含めたU+1F4A9の絵文字が消されちゃった。これがU+1F4A9 PILE OF POOだよ。" userName="rmunn" createdAt="2025/09/13 16:22:16" color="#45d325">}}




{{<matomeQuote body="UTF-16は使いやすくないよ。サロゲートペア関連のエンコーディングバグがよくあったし、UTF-8はそれがないから避けるべき。バイト順序の問題もないしね。CJK文字ではUTF-16より33%コンパクトだけど、英語テキストが多いフォーマットではUTF-8の方がもっと小さいと思う。日本でUTF-8の採用が遅れたのはサイズ問題とUniHan周りの議論が原因だけど、今はUTF-8がWebページの99%を占めてるよ。" userName="cyphar" createdAt="2025/09/12 21:15:52" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="UTF-8は天才的な設計だけど、ASCIIが7ビットしか使わなかったことに大きく依存してるよね。1963年当時としては変な選択だった気もするな。これは偶然の産物？それとも、ASCIIの設計者たちは最初からコードページとか拡張性を考えてたのかな？誰か知ってる人がいたら教えてほしい。" userName="twoodfin" createdAt="2025/09/12 19:37:38" color="#45d325">}}




{{<matomeQuote body="専門家じゃないけど、ASCIIの歴史を読んだことがあるよ。ASCIIのルーツはモールス信号のような電信コードで、固定長の5ビットBaudotコードが生まれたんだ。その後、パンチテープでコードポイントを作るようになり、Carriage ReturnやLine Feedが生まれた。そしてIBMの誰かがパンチカードで速い新しい仕組みを考案して、それがASCIIになった。ASCIIは古いテレタイプコードと新しい8ビットバイトの妥協点なんだ。" userName="jasonwatkinspdx" createdAt="2025/09/12 20:13:20" color="#ff5c5c">}}




{{<matomeQuote body="理由がどうあれ、昔は常に8ビットが汎用ビットではなかったってのは重要だね。7ビット＋パリティビットなどが一般的で、今でもメールはquoted-printable [1]を使って7ビットバイトでエンコードしてる。通信チャネルが8ビットをそのまま送れるのを8-bit clean [2]と呼ぶけど、昔はそれが当たり前じゃなかったんだ。UTF-8は、ASCIIバイトの余った8ビットの良い使い道の一つと言えるね。<br>[1] https://en.wikipedia.org/wiki/Quoted-printable<br>[2] https://en.wikipedia.org/wiki/8-bit_clean" userName="mort96" createdAt="2025/09/12 19:43:55" color="#ff5733">}}




{{<matomeQuote body="＞「IBMの誰かがパンチカードで速い新しい仕組みを考案して、それがASCIIになった」<br>厳密に言うと、パンチカード技術は1884年にHerman Hollerithが特許を取ったけど、その会社がIBMになるのは40年後だよ。Hollerithの死後32年経った1961年にIBMのエンジニアが提案したASCIIが、パンチカード仕分け機とどう繋がるのかよくわからないな。このあたりの経緯についてもっと読める場所を知ってる？" userName="pcthrowaway" createdAt="2025/09/12 21:23:01" color="#ff33a1">}}




{{<matomeQuote body="バイト以前のアーキテクチャでは、「36ビットワードに5文字」っていうのがよくあるテクニックだったんだ。" userName="ajross" createdAt="2025/09/12 20:42:05" color="">}}




{{<matomeQuote body="IBMは、ほとんどのシステムでASCIIの代わりにEBCDICを使っていたことでも有名だね。" userName="zokier" createdAt="2025/09/12 21:28:45" color="">}}




{{<matomeQuote body="5文字？普通は6ビット文字が6個じゃなかったっけ？" userName="bear8642" createdAt="2025/09/12 21:18:02" color="">}}




{{<matomeQuote body="余ったビットは、パリティビットとして再利用されるっていう考え方だったんだよ。" userName="colejohnson66" createdAt="2025/09/12 19:42:28" color="">}}




{{<matomeQuote body="Wikipediaの「5x7 ASCII」って記述に疑問なんだよね。PDP-10で5x7が使われたのはRFC 114で確認できるけど、「five-seven ASCII」って言葉はWikipedia以外で見つからないんだ。Wikipediaが個人の造語を事実みたいに書いてるんじゃないかなって思う。<br>https://en.wikipedia.org/wiki/36-bit_computing" userName="mort96" createdAt="2025/09/12 21:40:27" color="#45d325">}}




{{<matomeQuote body="7ビットってそんなに変じゃないよ。Baudotの5ビットじゃ足りなくて6ビット、それも足りなくて7ビットASCIIになったんだ。IBMはSystem/360で8ビットEBCDICを使ってたけど、他の会社はバイト長がバラバラだったからね。" userName="toast0" createdAt="2025/09/12 20:13:55" color="#45d325">}}




{{<matomeQuote body="ISO 8859-xみたいな8ビットASCII拡張はWindowsでもまだ使われてるよね。もしASCIIが最初から8ビットで主要文字が最初の128に収まってたら、UTF-8も多分うまくいったと思う。ASCIIが7ビットなのは偶然じゃなくて、開発が英語圏で進んだことと、英語が7ビットで表現しやすいってのが大きいね。" userName="layer8" createdAt="2025/09/12 20:39:50" color="#38d3d3">}}




{{<matomeQuote body="「不十分と判明した」って言い方には違和感あるな。5ビットや6ビットコードが足りないのは最初から分かってたけど、ビットのコストが高すぎて妥協しただけだよ。タイプライターの文字は7ビットで表現できるから、それが文字コードの当たり前の基準だったんだ。" userName="Dylan16807" createdAt="2025/09/13 05:28:04" color="">}}




{{<matomeQuote body="おまけだけど、UTF-EBCDICっていう一番変なエンコードシステムもあるんだって。マジでヤバい。<br>https://www.ibm.com/docs/en/i/7.5.0?topic=unicode-utf-ebcdic" userName="timsneath" createdAt="2025/09/13 00:38:59" color="">}}




{{<matomeQuote body="これは間違いだよ。ASCII（US-ASCII）は7ビット固定幅エンコーディングで、8ビット目は予約されてなかったんだ。原典を読めば分かるけど、8ビット目を使うのは磁気テープに保存する時のためで、将来の拡張のためじゃない。<br>https://ia600401.us.archive.org/23/items/enf-ascii-1968-1970..." userName="KPGv2" createdAt="2025/09/12 20:16:31" color="#ff5c5c">}}




{{<matomeQuote body="「five-seven ASCII」の記述、Wikipediaの編集履歴を追ってみたよ。2010年にPete142って人が追加したんだけど、彼のサイトはもうないんだ。archive.orgで見れるけど、信頼できる情報とは言えないかもね。個人的な専門用語がWikipediaに載っちゃったのかもしれないな。<br>https://en.wikipedia.org/w/index.php?title=36-bit_computing&..." userName="Agraillo" createdAt="2025/09/13 10:15:35" color="#ff5c5c">}}




{{<matomeQuote body="それ、内容警告つけてくれない？UTF-EBCDICって、基本EBCDIC文字は1バイトだけど、それ以外の文字は複数バイトなんだ。しかも、古いアプリは知らないコードポイントをただ無視しちゃうんだって。マジかよ。" userName="kstrauser" createdAt="2025/09/13 00:50:54" color="">}}




{{<matomeQuote body="古いシリアルプロトコルで5-7エンコーディングにぶち当たったことがあるよ。いろんなものが積もり積もってる感じだよね。" userName="bobmcnamara" createdAt="2025/09/13 04:30:29" color="">}}




{{<matomeQuote body="Baudotコードはステートフルで、フィギュアとレターのモード切り替えに2つのコードを使ってるんだ。タイプライターの”シフトロック”みたいにね。Baudotは出力じゃなくて、タイプライターの動作を制御するためにエンコードする必要があったんだよ。" userName="gugagore" createdAt="2025/09/13 11:02:50" color="#38d3d3">}}




{{<matomeQuote body="ITSでの6ビットコードはファイルやコマンド名に使われてたけど、小文字みたいな重要なコードポイントにはスペースが足りなかったんだ。PDP-6/10や360以前のIBMでは、他の工夫をしてたみたいだよ。" userName="ajross" createdAt="2025/09/13 03:40:26" color="">}}




{{<matomeQuote body="ほとんどの言語は、英語文字を含めなければ128文字（7ビット）で十分表現できるんだ。ISO-8859-*やWindows、IBM CP-*エンコーディング、各種*SCIIの成功を見れば明らかだね。CJKのような大規模言語は、全体を128文字に収めるのは難しいけどさ。" userName="necovek" createdAt="2025/09/13 02:18:35" color="#ff5733">}}




{{<matomeQuote body="ISO 8859-*の拡張文字の多くは、純粋なASCIIで重ね打ち（オーバーレイ）を使えば表現できたんだよ。ASCIIは元々この目的で重ね打ちをサポートするように設計されてたんだ。タイプライターでもアクセント記号なんかはそうやって入力してたんだって。" userName="cryptonector" createdAt="2025/09/13 05:20:53" color="#ff5733">}}




{{<matomeQuote body="ASCIIが登場する前は、ISO 646に基づいた7ビットASCIIのバリアントが広く使われてたんだよ。" userName="ezequiel-garzon" createdAt="2025/09/13 11:11:43" color="">}}




{{<matomeQuote body="歴史的な偶然というか、自然な結果なんだ。ASCIIの前にはBCDICっていう6ビットの非標準コードがあったんだよ。これは大文字英字、数字、一般的な記号で、合計約50文字だった。小文字サポートのために1ビット追加して7ビットになったけど、当時のプリンターは128文字未満しか印字できなかったんだ。その後8ビットエンコーディングも出てきたけど、UTF-8は7ビットASCIIとだけ互換性があるんだよね。8ビットASCIIは8ビット目を使うからUTF-8とは非互換なんだ。" userName="KPGv2" createdAt="2025/09/12 20:08:52" color="#ff5733">}}




{{<matomeQuote body="WikipediaのASCIIの歴史セクションに書いてあるよ。これ見るといいよ: https://en.wikipedia.org/wiki/ASCII#History<br>ASCII標準は1961年5月にIBMのBob Bemerが提案して始まったんだ。最初の版は1963年に出たんだけど、Baudotみたいな古い電信コードと違って、ASCIIはもっと便利な照合（特にアルファベット順のソート）と、テレプリンター以外のデバイス制御が考慮されてたんだって。それ以上は古い技術レポートを掘り起こすしかないかもね。" userName="jasonwatkinspdx" createdAt="2025/09/13 14:03:22" color="#ff33a1">}}




{{<matomeQuote body="“PDP-10 packed ascii”で検索するともっと詳しくわかるよ。実際、PDP-10には7ビットASCII文字の文字列を管理するための明確な命令があったんだ。" userName="ajross" createdAt="2025/09/13 14:43:44" color="">}}




{{<matomeQuote body="面白い事実だけど、ASCIIは可変長エンコーディングだったんだ。重ね打ち（オーバーレイ）を使ってアクセントやウムラウト、下線なんかも表現できたんだよ。これはタイプライターから続くやり方なんだ。スペイン語が大文字にアクセントを使わなかった（今も許容されてる）のも、昔のタイプライターに小さい大文字がなかったかららしいね。" userName="cryptonector" createdAt="2025/09/13 05:17:53" color="#ff5733">}}




{{<matomeQuote body="実はBaudotコードは元々6ビットで、後に5ビットに短縮されたんだよ。" userName="chuckadams" createdAt="2025/09/13 15:33:38" color="">}}




{{<matomeQuote body="UTF-8ってASCII文字や制御文字はISO-8859-1と同じ1バイトコードポイントなんだよね。他の文字は全部複数バイトで、その各バイトはASCII文字じゃない。だから昔のアプリでも、認識できないコードポイントは無視できたってことだね。EBCDICは知らないけど、UTF-8の設計に似てる気がする。" userName="necovek" createdAt="2025/09/13 02:08:21" color="#45d325">}}




{{<matomeQuote body="7ビットコードがISOからの要請を”予測して”開発されたって話は注目だね。ISOがすぐに8ビットコードの開発を始めたって追記もあるし。ASCIIが7ビットに抑えられたのは、拡張ASCIIセットを作って、他の言語や数学記号とかの追加文字に対応するためだったみたいだね。" userName="kbolino" createdAt="2025/09/12 20:29:35" color="#45d325">}}




{{<matomeQuote body="UTF-8は最高の設計だと思うけど、Unicodeはスコープクリープの問題があるよね。結合文字や同じように見えるのに別のコードポイントとか。コントロール文字もあるし。アニメーションのコードポイントはまだないけど、いつまで続くかな。<br>あと、著者が触れてなかったUTF-7っていうエンコードもあるよ。80年代のネットワークだと最後のビットを使うのが安全じゃないって考えから生まれたらしい。ボスがUTF-7のメールを送ってきたことがあって、それで知ったんだ。どうやって送ったのかは謎だけどね。" userName="vintermann" createdAt="2025/09/12 20:54:34" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="確かに、Unicodeの課題の一つはCJK unificationだよね。詳しくはこちら：https://heistak.github.io/your-code-displays-japanese-wrong/" userName="Cloudef" createdAt="2025/09/13 01:06:10" color="#ff5c5c">}}




{{<matomeQuote body="CJK unificationの問題、全然解決する気がないみたいで、一つのドキュメントに中国語と日本語を混ぜると永遠にダメってのはマジで頭おかしいと思う。各バリアントに個別のコードポイントを追加して、せめて新しいドキュメントではこの問題を回避できるようにすべきだよ。反対意見も聞いたことはあるけど、待てば待つほど問題は悪化するだけだ。" userName="asddubs" createdAt="2025/09/13 09:20:20" color="">}}




{{<matomeQuote body="今はlanguage hintsみたいなのが多少あるらしいけど、正直ハックみたいな感じだよね。" userName="Cloudef" createdAt="2025/09/13 16:05:09" color="">}}




{{<matomeQuote body="もし同じドキュメントでsingle-storeyの“a”とdouble-storeyの“a”を使いたいなら？違うフォントを使うしかないよね。" userName="meindnoch" createdAt="2025/09/13 17:19:57" color="">}}




{{<matomeQuote body="フォントで解決できるって意見は、言語の違いじゃなくて単なるスタイルの違いだって話は置いておくね。視覚的には全く同じに見えるキリル文字の“А”とラテン文字の“A”は、それぞれ別のUTF-8コードポイントを持ってるよね。でも、見た目が違う中国語と日本語の文字を同じドキュメントで使いたいなら、フォントを変えるしかないの？フォント指定をサポートしないエンコーディングを使ってる場合はどうするの？その回答じゃ何も解決しないし、誰の役にも立たないよ。" userName="asddubs" createdAt="2025/09/13 20:17:55" color="#ff33a1">}}




{{<matomeQuote body="フォントによっては両方のバリアントを内蔵してるものもあるよ。" userName="eviks" createdAt="2025/09/13 17:32:47" color="">}}




{{<matomeQuote body="なんで言語タグでバリアントを指定しないんだ？" userName="eviks" createdAt="2025/09/13 17:34:08" color="">}}




{{<matomeQuote body="中国語と日本語が混ざってる文書じゃそれじゃダメじゃん。" userName="jabedude" createdAt="2025/09/14 14:40:12" color="">}}




{{<matomeQuote body="なんでダメなの？文書全体に１つしかタグつけちゃダメってルールはないでしょ？混ざってる部分ごとに適切な言語タグを使えばいいじゃん。" userName="eviks" createdAt="2025/09/14 14:42:23" color="">}}




{{<matomeQuote body="混在するテキストの粒度はそれだけじゃないよ。日本語についての中国語の教科書だと、１つの文の中で言語が混ざることも普通にあるんだ。" userName="jabedude" createdAt="2025/09/15 15:30:12" color="#38d3d3">}}




{{<matomeQuote body="何が問題なのかまだ説明できてないよ。中国語の教科書：＜ch＞中国語＜jp＞混ざった日本語＜／jp＞中国語が続く。＜／ch＞って感じでタグ付けできるじゃん。" userName="eviks" createdAt="2025/09/15 15:35:35" color="#785bff">}}




{{<matomeQuote body="UTF-7は主にメール用で8ビットクリーンじゃない。もう古いし、補助プレーンもエンコードできないんだ（UTF-16のサロゲートペア経由なら別だけど）。あと、エイプリルフールRFCのUTF-9なんてのもあったよ。PDP-10みたいな36ビットワードのホスト向けだってさ。" userName="syncsynchalt" createdAt="2025/09/12 22:34:23" color="">}}




{{<matomeQuote body="言いたかったのはね、UTF-7の目的は`Content-Transfer-Encoding: quoted-printable`とUTF-8を使えばもっと上手く実現できるってことだよ。" userName="syncsynchalt" createdAt="2025/09/13 01:10:21" color="">}}




{{<matomeQuote body="問題はね、解決策にあるんだ。標準に複雑なものを追加しても、全部がちゃんとサポートするわけじゃないでしょ。結局、いろんな言語の文字がほとんどのコンピュータでうまく表示されるようなまともなものができたのは良かったね。Appleの多様な絵文字みたいなのは例外だけど。" userName="frollogaston" createdAt="2025/09/13 19:50:46" color="">}}




{{<matomeQuote body="Unicodeはね、他のエンコーディングとロスなく相互変換できるようにしたかったんだって。そうすれば、他のエンコーディングがまだ使われてた時代でも、部分的に導入しやすくなるからね。だから、いろんな不完全なエンコーディングをごちゃ混ぜにした結果、同じ文字でも複数のエンコード方法があったり、一貫性がなかったりするんだ。これが間違いだったとは言い切れない。XKCDの風刺漫画みたいにならないためにも、このレベルの相互運用性がUnicodeの勝利には必要だったのかもね。https://xkcd.com/927" userName="pornel" createdAt="2025/09/13 02:28:15" color="#ff5c5c">}}




{{<matomeQuote body="なんでUnicodeはコードポイント単位の可逆変換にこだわったんだろうね？古いエンコーディングの１つのコードポイントがUnicodeで２つになっても問題ない気がするけど。つまり、なんでUnicodeに合成済み文字を入れたの？" userName="panpog" createdAt="2025/09/13 17:20:40" color="#ff33a1">}}




{{<matomeQuote body="UTF-8は連続的じゃないんだ。結合文字とかもあって、これは「スコープクリープ」じゃなくて現実を反映してるだけ。実際にみんなが使ってた表現だし、正規化の問題は避けられなかったんだよね。" userName="cryptonector" createdAt="2025/09/13 13:53:15" color="#ff33a1">}}




{{<matomeQuote body="UTF-8の設計についてもっと知りたければ、Russ Coxのこのページを見てみて。https://research.swtch.com/utf8<br>Rob Pikeが書いた設計の歴史はこちら。https://www.cl.cam.ac.uk/~mgk25/ucs/utf-8-history.txt" userName="nostrademons" createdAt="2025/09/12 19:34:06" color="#38d3d3">}}




{{<matomeQuote body="これら投稿してくれてありがとう！Bell Labsのメンバーは本当にすごいや。もちろんPikeやThompsonたちのことだよね。彼らがコンピューティングの世界に残した功績は計り知れないよ。" userName="jjice" createdAt="2025/09/13 01:07:52" color="">}}




{{<matomeQuote body="「プレースマットで設計された」って話は、長持ちする高品質な標準にとって、むしろセールスポイントだと思うな。" userName="extraduder_ire" createdAt="2025/09/13 21:49:33" color="">}}




{{<matomeQuote body="このスレッドでまだ誰も触れてなかったらだけど、Ken ThompsonとRob Pikeがディナー中にUTF-8を発明した話だよ。https://www.cl.cam.ac.uk/~mgk25/ucs/utf-8-history.txthttps://doc.cat-v.org/bell_labs/utf-8_history" userName="kunley" createdAt="2025/09/13 08:44:50" color="#785bff">}}




{{<matomeQuote body="いつも不思議なんだけど、Unicodeコードポイントって過剰なバイト数でエンコードできちゃうじゃん？UTF-8では最短エンコードだけが有効で、例えば`00000001`と`11000000 10000001`は同じ扱い。だったらなんで、代替案を最初から不可能にしなかったんだろう？そうすれば不正コードも無くなるし、エッジケースでは文字列が少し短くなる。設計者は考えたはずだけど、当時のハードウェアコストとかが問題だったのかな？<br>UPDATE: 最後のビットシーケンスは`10000001`の間違いだった、ごめんね。" userName="hyperman1" createdAt="2025/09/12 19:16:56" color="#ff5c5c">}}




{{<matomeQuote body="これまでのコメントは同期の話だけど、君の疑問はU+0080が`c0 80`じゃなくて`c2 80`になる理由だよね？たぶんa) 過剰な長さのエンコードのセキュリティが考慮されてなかったのと、b) UTF-8はビット操作だけでいけるけど、君の提案だと加減算が必要になるからじゃないかな。1992年のこのメール[1]の最後に、現在の設計の方が「マジックな加算定数」より良いって書いてあるよ。https://www.cl.cam.ac.uk/~mgk25/ucs/utf-8-history.txt" userName="toast0" createdAt="2025/09/12 19:50:31" color="#45d325">}}




{{<matomeQuote body="あー、うん。ビットシーケンス間違えてたね、ごめん。議論を脱線させちゃったかも。君の解釈で合ってるよ。そのメールは最初の方しか見てなかったけど、君がくれたのはずっと長いやつだね。b)の理由が説得力あるのは確かだ。それに当時って今ほどセキュリティが重要視されてなかったから、君の言う通りかもね。" userName="hyperman1" createdAt="2025/09/12 20:29:34" color="#ff33a1">}}




{{<matomeQuote body="コメント7のa)の別バージョンだけど、過剰な長さのエンコードが許容される場合、UTF-8バイトシーケンスとして文字列を比較すると、バイト列は違うのにコードポイントとしては同じ文字列って状況になるよね。" userName="layer8" createdAt="2025/09/12 20:59:42" color="#ff5733">}}




{{<matomeQuote body="うーん、俺はちょっと違う見方かな。過剰な長さのエンコードはそれ自体が不正だから、たとえ単純なアルゴリズムがそう解釈しても、コードポイントをエンコードするとは言えないよ。Postel’s Law（受け入れるものには寛容に、送るものには厳密に）の観点から、バイト列が違ってもコードポイントが同じなら同等とみなすってのはわかるけど、UTF-8のコードユニットにPostel’s Lawを適用すべきじゃないと思うな。" userName="torstenvl" createdAt="2025/09/12 21:47:32" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
