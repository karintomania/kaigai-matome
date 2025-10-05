+++
date = '2025-09-28T00:00:00'
months = '2025/09'
draft = false
title = '「アルファベット順」って、そういう意味じゃないんだけど？PCのソートが一般常識とズレてる問題'
tags = ["ファイルソート", "プログラミング", "UI/UX", "文字列処理", "OS"]
featureimage = 'thumbnails/cyan3.jpg'
+++

> 「アルファベット順」って、そういう意味じゃないんだけど？PCのソートが一般常識とズレてる問題

引用元：[https://news.ycombinator.com/item?id=45404022](https://news.ycombinator.com/item?id=45404022)




{{<matomeQuote body="Microsoft/Google/KDEのソート順でいいと思うな。筆者の状況ってすごく稀で，”10”が”9”より先にくる方が一般的だよ。デスクトップはこれを”アルファベット順”じゃなくて”by name”って呼ぶから、嘘はついてない。<br>「PCが心を読もうとするな」って言うけど、オートセーブみたいに”マインドリーディング”はすごく助かることが多いんだ。真のアルファベット順オプションがあっても、一般的なケースがデフォルトであるべきだよね。それが”直感的”ってことだから。https://news.ycombinator.com/item?id=45404022#45405279" userName="armchairhacker" createdAt="2025/09/28 15:57:25" color="#ff5733">}}




{{<matomeQuote body="同意できないな。もし数値の表現が文字で唯一無二なら納得できるけど、そうじゃないから”マインドリーディング”はごく一部しか機能しないと思う。<br>小数点や、桁区切り、科学表記とかはどうなるの？例えば、”a.12345”と”a.345”はどっちが先？<br>もしこれらの疑問に一つでも”No”なら、混乱を招くのは確実だよ。これって、最初は良さそうに聞こえる機能リクエストだけど、詳細を詰めていくとエッジケースが多すぎて脆くない実装は不可能ってやつだね。" userName="derriz" createdAt="2025/09/28 17:07:00" color="#45d325">}}




{{<matomeQuote body="厳密なアルファベット順だと”10”が”9”より先に来るのは十分理解できるけど、それでもファイルマネージャーでは”9”が”10”より先に来てほしいんだ。<br>ファイル名にいちいちゼロ埋めしたくないし、後で桁が増えるたびにさらにゼロを追加するのも嫌だ。<br>オーディオブックをチャプター分けする時も、MP3プレーヤーが数字を正しくソートできないから、”Chapter 01.mp3”みたいにゼロ埋めしてる。これって見た目も悪いし、余計な手間がかかるんだよね。全部のデバイスが数字を理解してくれると本当に助かるんだけどな。" userName="Wowfunhappy" createdAt="2025/09/28 22:25:31" color="#ff5c5c">}}




{{<matomeQuote body="「ゼロ埋めしたくない、デバイスが数字を理解してほしい」って言うけど、文字列は数字じゃないんだよ。たとえ数字に見えてもね。<br>「アルファベット順で”10”が”9”より先に来るのはわかるけど、”9”が先にきてほしい」っていうのは、あくまで特定の状況での君の好みだよね。他の人の好みとは違うかもしれないし、君自身の別の状況での好みとも違うかもしれない。<br>じゃあプログラムはどうすべきかって？一貫性があって文書化された方法で文字列を表示するべきだよ。つまり、メタデータがない限りは全て辞書順に並べるべきなんだ。" userName="AdieuToLogic" createdAt="2025/09/29 02:06:17" color="#785bff">}}




{{<matomeQuote body="「一貫性があり文書化された方法で表示する」って言うけど、”数字の並びはソート時に数字として扱う”ってのは十分一貫性があると思うよ。文書化されてないなら、開発者が直せばいい。<br>「特定の状況での好み」って言うけど、一般的には一番多い状況に基づいて判断するもんじゃない？フォルダに”Thing 1”〜”Thing 10”みたいに10個以上のものがあるのはすごくよくあるし、”Thing 10”が”9”より先にくるのは本当にイライラする！<br>32個の番号付きファイルがあるディレクトリを想像してみてよ。今のソートだとこんなめちゃくちゃな順になるんだ:<br>1, 10-19, 2, 20-29, 3, 31, 32, 4-9<br>こんなフォルダをダウンロードしたら、意味を理解するためにゼロ埋めするまで作業を止めなきゃいけないじゃん。" userName="Wowfunhappy" createdAt="2025/09/29 02:26:07" color="#ff5733">}}




{{<matomeQuote body="あー、ファイル名に小数点とか科学表記が入ってるやつね、よくあるよくある… (皮肉)" userName="coldtea" createdAt="2025/09/28 17:43:24" color="">}}




{{<matomeQuote body="別のシナリオだけど、ファイル名に日付が入る場合を考えてみてよ。”September Budget”と”October Budget”ね。自然ソートだとどっちが先に来る？9月と10月は数字の9と10に相当するけど、ファイルの更新日も役に立たないかもしれないし。<br>問題はね、”自然な”ものなんて存在しないってことなんだ。何がより一般的かって判断するのもすごく難しいし、文化とか文脈に依存することが多いんだよ。" userName="II2II" createdAt="2025/09/28 18:01:29" color="#ff5c5c">}}




{{<matomeQuote body="ソートのルールは単純だよ。連続した数字の羅列は、ソート時に数字として扱うんだ。例えばバージョン番号（ファイル名に小数点よりはるかに多いはず）は正しく機能して、5.9は5.10より小さいし、5.1とは違う。<br>このアイデアは20年以上前からあって、主要OSのデフォルト動作だけど、大きな不満は出てないから、経験的に見ても普段から驚きや混乱を招くことはほとんどないって確信できるよ。<br>https://en.m.wikipedia.org/wiki/Natural_sort_order" userName="Certhas" createdAt="2025/09/28 18:29:35" color="#ff5c5c">}}




{{<matomeQuote body="君がソートしたいのは、1, 2, 9, 10, 11ってこと？<br>じゃあさ、1.1, 1.2, 2, 9, 9.9とか、1, 1.1, 1.10, 1.2, 1.10.1みたいにもソートしたいってことかな？<br>キミがどんなクレイジーなルールを考えたとしても、それが決まった後で、どうやってファイルを一時停止して編集し、辞書順に戻すんだい？<br>辞書順なら自分のニーズに合わせて調整できるけど、君の恣意的なルールを僕のニーズに合わせることはできないんだよ。" userName="freeopinion" createdAt="2025/09/29 06:43:54" color="#785bff">}}




{{<matomeQuote body="あんたの例は特別ルールなしで正しくソートできるよ。数字の羅列を一つの文字として扱うのが基本なんだ。俺のiPhoneじゃ、あんたの例は期待通りにソートされてるし。" userName="foldr" createdAt="2025/09/29 07:00:23" color="#ff33a1">}}




{{<matomeQuote body="1.10と1.2、どっちが先に来るのが正しいソートだと思う？<br>OSがどう扱うかなんて、心を読むかちゃんとした辞書順ソートを前提としないと分からないよね。適切な命名さえすれば十分なものなのに、なんで曖昧なソートに置き換える必要があるのさ？" userName="freehorse" createdAt="2025/09/29 07:45:29" color="#ff5c5c">}}




{{<matomeQuote body="＞連続する数字の並びはソート時に数値として扱う<br>って説明だと、<br>・photo.jpg<br>・photo1.jpg<br>・photo01.jpg<br>・photos.jpg<br>がどうソートされるのか全然想像つかないんだけど？" userName="xigoi" createdAt="2025/09/28 19:31:06" color="#ff5c5c">}}




{{<matomeQuote body="ああ、ごめん、1.10は1.2の後に来るよ。10が2より大きいからね（あんたの例とは違うってこと）。でも元のリストがバージョンリストなら（小数点が複数あるケースを考えると妥当）、それが望む順番でしょ。ファイル名に整数じゃない数字が入ってたら、望む順番にはならないけど、どんなケースでもうまくいくルールなんてないんだからさ。" userName="foldr" createdAt="2025/09/29 08:00:05" color="#ff33a1">}}




{{<matomeQuote body="唯一の正しいやり方はこれだね: budget_09.csv, budget_10.csv" userName="arccy" createdAt="2025/09/28 18:09:49" color="">}}




{{<matomeQuote body="問題は、昔からあった”おバカな”アルファベット順ソートのせいで、これが驚きで謎だらけなことだと思うんだ。99%の一般ユーザー向けに”修正”したなら、”厳密なアルファベット順ソート”とは別に”スマートな自然ソート”オプションとして提供すべきだったよ（日付やサイズと並んでね）。何十年も経験のある非技術系ユーザーにとっても、驚くほど違うなんてことにならない、シンプルで分かりやすい方法が良かったんじゃないかな。" userName="ploxiln" createdAt="2025/09/28 18:28:58" color="#785bff">}}




{{<matomeQuote body="＞9月は9、10月は10と見なすとして、自然ソートではどっちが先に来るの？<br>って話だけど、ファイル修正日も役に立たない時があるよね。9月の予算を10月1日に締めて、10月の予算を9月20日に編集してるなんてこともあり得るし。結局、”自然”なソートなんてものはないんだよな。いや、でも”どこでも望み通りにソートされるような、予測可能で一貫したファイル命名法”ってのはある。それは（もしOSが”スマート”になろうとしなければだけど）日付をゼロ埋めしてプレフィックスにするって方法だったはずだ。" userName="coldtea" createdAt="2025/09/28 20:06:40" color="#ff33a1">}}




{{<matomeQuote body="そしたら`budget_100.csv`が出てきて、99個のファイルをリネームしなきゃいけなくなるぞ。" userName="NekkoDroid" createdAt="2025/09/28 18:50:08" color="">}}




{{<matomeQuote body="これはたった一つの決定じゃないんだよ。ほとんどのソフトウェアには、文字通り何千、何万もの決定事項があるんだ。その一つ一つにオプションが欲しいと？あらゆる組み合わせに対応しろと？ある時点で、それは馬鹿げてるよ。時として、ソフトウェアがどう動くかを決める必要があって、全ての決定をユーザーに任せるわけにはいかないんだ。" userName="wvenable" createdAt="2025/09/28 18:42:56" color="#ff33a1">}}




{{<matomeQuote body="＞ソートルールはシンプル<br>って言うけど、それって開発者目線だよね。僕らなら数字を自動的に分類して、値と表現の区別を明確にできるから。でも、size_5、size_10、size_15は正しい順番なのに、size_0.25、size_0.5、size_0.75がバラバラになる理由を非技術系ユーザーに説明するのがどれだけ簡単か、僕には分からないな。<br>＞大きな異論はない<br>って話だけど、非開発者や非技術系ユーザーが奇妙で混乱する挙動についてほとんど文句を言わないことに、僕はいつも驚かされるよ。" userName="derriz" createdAt="2025/09/28 19:47:11" color="#45d325">}}




{{<matomeQuote body="それって重要？photo3.jpgの後にphoto20.jpgが来るってのはユーザーの期待だけど、photo1.jpgとphoto01.jpgのどっちが先かは気にしないんじゃない？photo1.jpgとPhoto1.jpgのソート順も同じだよ。ユーザーは記号がどんな順序でソートされるかも全然知らないからさ。だから、ユーザーが期待する（自然なソート順）で重要なものをソートして、残りはそこそこ一貫性のある方法で決めればいいんじゃないかな。" userName="crazygringo" createdAt="2025/09/28 19:36:39" color="#ff33a1">}}




{{<matomeQuote body="日付はもうメタデータに入ってるんだから、ファイル名に入れる必要なくない？" userName="SAI_Peregrinus" createdAt="2025/09/28 20:37:02" color="">}}




{{<matomeQuote body="同意だね。それに、ゼロ埋めを覚えるなんて、事前に必要な桁数がわからないと無理だし非実用的だよ。バージョンが5.9.17から5.10.0になったら、既存のフォルダを全部5.09.17に直したりしないだろ？今の標準的なソート方法は明確で、曖昧さもなく、自然だよ。辞書式ソートには用途があるけど、ユーザー向けのインターフェースには向いてないね。" userName="Certhas" createdAt="2025/09/28 18:21:44" color="#45d325">}}




{{<matomeQuote body="＞「ソート目的で数字列を数値として扱う」ってのは一貫してるって？<br>本当にそう？じゃあ16進数や8進数、2進数はどう扱うの？<br>日付や時刻の一部が入ったファイル名は？<br>プログラムはどうやってそれらを判別するんだよ？<br><br>＞「32個の番号付きファイル」って言うけど、<br>俺が知ってるファイルシステムでは、それらの名前は1文字か2文字の文字列であって、「番号付きファイル」じゃないんだよね。" userName="AdieuToLogic" createdAt="2025/09/29 03:18:31" color="#ff5733">}}




{{<matomeQuote body="1年の月数が増えてから約2000年も経ってるんだぜ。すぐに88個も新しい月が増えるなんて思えないな。" userName="xigoi" createdAt="2025/09/28 19:34:13" color="">}}




{{<matomeQuote body="＞「リストがバージョンだと仮定するなら（いくつかのケースで複数の小数点があるから合理的だよね）、それが望ましい順序だ」って言うけど、ソートシステムにそこまで仮定を求めるの？リストの全エントリを処理して複数の小数点を見つけて、それが全部バージョンだと判断するの？小数点と桁区切りが逆のロケールではどうするんだ？日付も複数のフォーマット（yyyy-mm-dd, dd-mm-yyyy, dd-MMM-yyyy,...)があったらどうソートするんだ？この問題は、この狭い例よりずっと複雑だよ。システムがデータ形式の解釈に基づいてソートを変えると、誤解釈のリスクがあってリスト全体が使えなくなるかもね。" userName="rickdeckard" createdAt="2025/09/29 09:44:14" color="#ff5c5c">}}




{{<matomeQuote body="file9がfile10より前ってこと？Microsoftに文句があるんだけど、これってComputerレベルでしか変えられないんだよね。ユーザーごとに設定できないのはおかしいよ。ユーザー向けには「natural sorting」って呼んでるのに、内部的には「logical sorting」って呼んでるのも、用語を統一しろって感じだね！<br>[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer]”NoStrCmpLogical”=dword:00000001" userName="zweifuss" createdAt="2025/09/28 16:04:30" color="#45d325">}}




{{<matomeQuote body="小数点とは関係ないよ。連続する数字の並びをソート目的で単一の文字として扱ってるだけなんだ。小数点じゃなくて他の文字でも動作は同じだよ。" userName="foldr" createdAt="2025/09/29 11:53:07" color="">}}




{{<matomeQuote body="ユーザーごとに変えたいなら、HKEY_LOCAL_MACHINEじゃなくて、ユーザーのハイブ（例えばHKEY_CURRENT_USER）で設定すればいいんだよ。" userName="nerdile" createdAt="2025/09/28 16:07:44" color="#ff33a1">}}




{{<matomeQuote body="今日知ったんだけど、Windows Registryのあれ”hives”って言うんだね。Windows Registryって面白いよね。普通のユーザーでも、よく分かんないまま一度や二度は触ることになるし。<br>https://learn.microsoft.com/en-us/windows/win32/sysinfo/regi..." userName="yegle" createdAt="2025/09/28 16:23:32" color="">}}




{{<matomeQuote body="ファイル名にそんな記号含めることなんてある？Windowsのファイル名にカンマって使えるんだっけ？<br>記事の主旨に戻るけど、日付でソートしたいなら日付でソートすればいいじゃん。だいたい、普通の人は「CHAR1234_5678」みたいな長いファイル名なんて見てないで、サムネイルとか日付を見てると思うよ。" userName="queenkjuul" createdAt="2025/09/28 17:23:23" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これ読んで「Worse is better」の議論を思い出したよ。https://news.ycombinator.com/item?id=27916370<br>筆者は、GUIユーザーの99%が望むような数字のインテリジェンスがない、ASCII/Unicodeコードポイントに基づいた”Worse”なソートを求めてるんだね。彼らの目的からすると、実装について何か前提があるから、便利な機能が彼らにとっては誤った機能になってるんだ。でも、筆者は多分開発者だから、一般的なPCユーザーのニーズを代表してないよ。<br>製品のターゲットユーザーを理解することが、デザインの意思決定に大きく影響する。「Better is better」は製品には良いかもしれないけど、成長・進化するシステムには「Worse is better」の方が良いだろうね。" userName="epistasis" createdAt="2025/09/28 16:13:41" color="#ff33a1">}}




{{<matomeQuote body="これはメンタルモデルの問題だね。開発者としての彼のメンタルモデルは、数字が混じった項目を素朴なソフトウェアがどうソートするか、ってものなんだ。<br>もちろん、ほとんどの人は自然に9の次に10をソートするよね。彼らのメンタルモデルには、ソフトウェア開発者のような前提は含まれてないんだ。" userName="wvenable" createdAt="2025/09/28 18:46:03" color="#38d3d3">}}




{{<matomeQuote body="＞筆者は、GUIユーザーの99%が望むような数字のインテリジェンスがない、ASCII/Unicodeコードポイントに基づいた”Worse”なソートを求めてるって話だけど、大文字と小文字のソートについてはどう思ってるか聞いてみたいな。<br>厳密にASCII/Unicodeコードポイントに従うべきなのか、それとも実際のアルファベット順に正規化して、各文字内で大文字小文字をソートすべきなのか？" userName="BeFlatXIII" createdAt="2025/09/28 17:30:11" color="#45d325">}}




{{<matomeQuote body="じゃあ、文字のäはどこにソートする？（ドイツ語だとaの後が正しいけど、スウェーデン語だと違うと思うんだよね。）" userName="GLdRH" createdAt="2025/09/28 17:59:55" color="">}}




{{<matomeQuote body="ここでチェコ語の”ch”に触れておくべきだね。正書法では文字とされてて、”h”と”i”の間にソートされるんだ。問題は、”ch”が文字なのか、単に”c”と”h”が組み合わさったものなのかを確実に区別できないこと。これは借用語にもあるし、チェコ語の複合語にもあるんだ。<br>だから”正しく”ソートするなら、チェコ語の文字列ソートには、すべての単語の語源を理解する必要があるってこと。" userName="dvdkon" createdAt="2025/09/28 18:15:58" color="#45d325">}}




{{<matomeQuote body="頭が痛くなる話だね！関係する標準のČSN 97 6030が、複合語の分析や語源の知識を要求してなくて良かったよ。" userName="bmn__" createdAt="2025/09/29 11:34:01" color="">}}




{{<matomeQuote body="だからLinuxには、ニーズに合わせて設定できるLC_*の類があるんだよ。例えばこんな感じ：<br>export LC_MEASUREMENT=”de_DE”<br>export LC_MONETARY=”de_DE”<br>export LC_PAPER=”de_DE”<br>export LC_CTYPE=de_DE.UTF-8<br>export LC_MESSAGES=”en_US.UTF-8”<br>export LC_RESPONSE=”en_US.UTF-8”<br>export LC_TIME=en_US.UTF-8<br>スウェーデン語やスワヒリ語、もしかしたらバチカン市国だって混ぜられるよ。（保証はしないけどね ;-）。" userName="jcynix" createdAt="2025/09/28 18:32:30" color="#ff33a1">}}




{{<matomeQuote body="＞export LC_TIME=en_US.UTF-8<br>なんでわざわざそんなことするのさ？" userName="ongy" createdAt="2025/09/29 08:15:00" color="">}}




{{<matomeQuote body="Why? For example to not have diacritics in month names? Take them as examples as you can easily add them to a shell script to make in work the way you want.<br>→なんでダイアクリティクスをなくすのかって？ 例えば月名とかで使わないようにするためだよ。自分でシェルスクリプトで簡単に実装できるんだから、やりたきゃやればいいじゃん。" userName="jcynix" createdAt="2025/09/29 12:58:31" color="">}}




{{<matomeQuote body="How does this work if you’re a multi-lingual person and you have files with names in different languages?<br>→もし君が多言語ユーザーで、いろんな言語の名前のファイルを持ってたら、このソートってどうなるの？" userName="chongli" createdAt="2025/09/29 03:22:12" color="">}}




{{<matomeQuote body="I’m multi-lingual but try to separate business stuff for example (multi-lingual) from private stuff (mostly one language), so clashes between languages rarely happen.But if it gets complicated I’ll usually resort to Perl scripts to take care of pesky details. Sorting an associative array where the key is a string in unified form and the value is the multi-lingual target is rather easy in a script language which one is fluent in.<br>→俺は多言語だけど、例えば仕事のものは多言語、プライベートのものはほぼ単一言語って分けてるから、言語の衝突はめったにないな。でも複雑になったら、だいたいPerlスクリプトに頼って細かいところを処理するよ。統一形式のキーと多言語の値をソートするのは、慣れたスクリプト言語ならかなり簡単だしね。" userName="jcynix" createdAt="2025/09/29 13:27:45" color="">}}




{{<matomeQuote body="The sorting order is only defined between strings of the same locale, not between strings of different locales.You can specify the sorting order per command likeLC_COLLATE=”tr_TR.utf8” lsif it differs from your system or user locale.An alternative is to first transliterate the strings to ASCII and then sort them (but this does not preserve the sorting order of non-latin scripts).<br>→ソート順は同じロケールの文字列間でしか定義されないんだ。別のロケールの文字列間では定義されないよ。`LC_COLLATE=”tr_TR.utf8” ls`みたいに、システムやユーザーのロケールと違う場合はコマンドごとにソート順を指定できる。あとは、まず文字列をASCIIに文字変換してからソートするって方法もあるよ（ただし、非ラテン文字のソート順は保持されないけどね）。" userName="chithanh" createdAt="2025/09/29 06:46:21" color="#ff5c5c">}}




{{<matomeQuote body="You could alias cd to a shell script that sets the env based on the location.<br>→`cd`コマンドをシェルスクリプトにエイリアスして、場所に応じて環境変数を設定すればいいんじゃない？" userName="1718627440" createdAt="2025/10/01 20:40:03" color="">}}




{{<matomeQuote body="＞ I want the author’s opinion on how caplital and lowercase letters should be sorted. Do they follow strict ASCII/Unicode codepoints, or do they normalize into actual alphabetical order and sort upper/lower within each letter?I prefer the strict ASCII / Unicode sorting (all capitals first, then all lowercase).<br>→大文字と小文字ってどうソートされるべきかって？俺は厳密なASCII＼Unicodeコードポイント順（大文字全部が先で、次に小文字全部）がいいね。" userName="sebtron" createdAt="2025/09/28 20:58:21" color="">}}




{{<matomeQuote body="Asciibetical sorting<br>→Asciibeticalソートだね。" userName="jowea" createdAt="2025/09/28 17:50:52" color="">}}




{{<matomeQuote body="＞ most people using computers＞ the target audienceWhich is it? Those should be different groups.”Most people” have incoherent ideas that can’t even be used. So instead a designer cherry-picks some ideas - setting the agenda - and declares that they’re popular. That doesn’t make them good ideas. Also, ”most people” are easily influenced and will like the terrible things that they’ve been told to like.<br>→「ほとんどの人」とか「ターゲットオーディエンス」って、どっちなの？それらは違うグループであるべきだろ。「ほとんどの人」は支離滅裂な考えしか持ってないし、デザイナーが都合よくアイデアを選んで「人気だ」って宣言してるだけ。それは良いアイデアじゃないし、「ほとんどの人」は簡単に影響されて、ひどいものでも好きになるんだよ。" userName="card_zero" createdAt="2025/09/29 03:01:05" color="#785bff">}}




{{<matomeQuote body="＞ Understanding the target audience for your product results in very different design decisionsThis is an excuse. Just add an option to sort both ways. It isn’t hard.There is no target audience in this planet that benefits from less options or less features. Even if you had the features under an ”advanced mode” UI that’s still a better software than not having the feature in first place.Have people forgotten the 80/20 rule? Most features will be used by only a small slice of users, that doesn’t mean they’re out of scope.Sorry, I’m just kind of exhausted of software not being able to do the most obvious things because it didn’t align to some perfect vision of how the user should be.<br>→「ターゲットオーディエンスを理解すればデザインが変わる」なんて言い訳だよ。両方のソート方法をオプションで追加するなんて簡単だろ。オプションや機能が少ない方が良いって恩恵を受けるターゲット層なんて、この地球上にいないんだよ。たとえ「詳細モード」UIの下に機能があったとしても、その機能がないよりは良いソフトだ。みんな80＼20ルール忘れたの？ほとんどの機能は一部のユーザーしか使わないけど、それが対象外って意味じゃない。ユーザーがどうあるべきかっていう完璧なビジョンに合わないからって、一番明白なこともできないソフトにはもううんざりなんだよ。" userName="AlienRobot" createdAt="2025/09/28 19:23:14" color="#785bff">}}




{{<matomeQuote body="＞ There is no target audience in this planet that benefits from less options or less features.I’m currently involved in UI design and, to my frustration, adding more options or features seems to send a vocal minority of the user base into a foaming-at-the-mouth violent rage. It’s like any change resets the entire contents of their brain, and it’s our fault we’re making things so confusing for everyone...And let’s not get started on how we’re wasting time adding things that they don’t personally need, and therefore no one could possibly need, ever. No, clearly by adding this sorting method, we must have directly stolen development time from the feature they want, which is a personal attack directed at them and every member of their family going three generations back.<br>→「オプションや機能が少ない方が良いターゲット層なんていない」って意見に対してだけど、俺はUIデザインに携わってるんだが、イライラすることに、オプションや機能を追加すると一部のユーザー層が泡を吹いて激怒するんだよ。まるでどんな変更でも彼らの脳みそ全部をリセットするみたいで、「みんなを混乱させてるのは俺たちのせいだ！」ってなるんだ…。彼らが個人的に必要ないと思ってるものは誰も必要ないって思ってるし、「このソート方法を追加したことで、彼らが望む機能の開発時間を直接盗んだ、これは彼らとその家族に対する個人的な攻撃だ」ってなるんだよ。" userName="pteraspidomorph" createdAt="2025/09/29 01:15:11" color="#ff5733">}}




{{<matomeQuote body="「UI変更でユーザーの頭がリセットされる」ってマジそれ。一貫性って超大事じゃん？<br>問題は機能追加じゃなくて、その追加の仕方が押しつけがましいことだよ。<br>機能はいくらでも増やしていいけど、日々のUIはできるだけ変えないでほしい。<br>新機能のボタンはまずメニューに入れて、たくさん使われるようになったらツールバーに移動を検討すべき。<br>本当に問題がある場合を除いて、機能は消さないでUIも変えないでくれ。" userName="efreak" createdAt="2025/10/01 04:51:53" color="#785bff">}}




{{<matomeQuote body="こういう“悪魔”たちとは関わらないのが一番だよ。<br>KDEは設定できる複雑さを歓迎するけど、Gnomeはそうじゃない。<br>ユーザーに幅広い選択肢があるのは良いことだね。" userName="bmn__" createdAt="2025/09/29 11:38:30" color="">}}




{{<matomeQuote body="このソート順で一番イラつくのは、ハッシュ値みたいなファイル名を探す時だよ。<br>「3ea4f...」とか「97dce...」、「126b9...」みたいにバラバラになっちゃうんだ。<br>Windowsではこの設定をレジストリですぐオフにするよ。<br>コンピューターが言われた通りに動いて、心を読もうとしなかった頃が懐かしいな。<br>今は「ユーザーが間違ってる」っていう権威主義的な考えがオープンソースのソフトにも蔓延してて、本当に嫌だ。" userName="userbinator" createdAt="2025/09/28 20:41:14" color="#38d3d3">}}




{{<matomeQuote body="まさにこれ！ハッシュじゃなくても、ユーザーIDとかUnixタイムみたいな数字部分がある適当なファイル名だと、さらにイラつくんだよ。<br>例えば「abcd89764237」を「abcd683426834」の後に探そうとしても、なぜ見つからないのか分かんなくて、<br>実は後者のID部分の方が桁数が多いことに気づくまで混乱しちゃうんだよね。" userName="krick" createdAt="2025/09/28 21:29:13" color="#45d325">}}




{{<matomeQuote body="GTKとKDE両方でこの問題に悩まされてるみたいだね。<br>ThunarでもDolphinでも同じ挙動になるし、マジで寝れないレベルだよ。<br>最新のMacOSでも同じなんだ。" userName="antonyh" createdAt="2025/09/29 11:15:29" color="#ff33a1">}}




{{<matomeQuote body="「OSはユーザーが馬鹿だからアルファベット順を理解できないと決めて、数字部分を数値としてソートする」ってのは違うよ。<br>君らが求めてるのは「名前でソート」であって、その解釈はOSに任されてるんだ。<br>OSは（データに基づいて）ユーザーが一番望むであろう解釈を選んでるだけ。<br>将来は先行ゼロがあればアルファベット順に戻したり、設定オプションが追加されるかもね。" userName="zahlman" createdAt="2025/09/28 16:05:52" color="#45d325">}}




{{<matomeQuote body="先行ゼロは明らかに8進数を意味するんだよ（ただし、続く数字が全部0～7の場合だけね）。<br>これが一番直感的な結果になると思うな。" userName="jameshart" createdAt="2025/09/28 17:20:16" color="">}}




{{<matomeQuote body="「OSはユーザーが一番望む解釈を選んでいる」ってのは理解できるけど、問題はその解釈がここ10年〜20年で変わっちゃったことだよ。<br>昔は「名前でソート」って言ったら、どのファイルマネージャーでも「アルファベット順／辞書順」って意味だったんだから。" userName="sebtron" createdAt="2025/09/28 16:38:43" color="#ff33a1">}}




{{<matomeQuote body="MicrosoftとAppleは、2001年に自然順ソートに切り替えたんだよ。" userName="pseudalopex" createdAt="2025/09/29 01:27:17" color="#785bff">}}




{{<matomeQuote body="元々「アルファベット順」だったんじゃなくて、使ってるエンコーディングテーブルの数値インデックスで決まる順序だったんだよ。" userName="janc_" createdAt="2025/09/29 04:01:03" color="">}}




{{<matomeQuote body="この記事を見て、https://xkcd.com/1172/の漫画を思い出したよ。" userName="KuSpa" createdAt="2025/09/28 21:51:39" color="">}}




{{<matomeQuote body="記事で言ってるバージョンソートはすごく便利だから、普通のアルファベット順よりいつも使いたいな。でも、それを「アルファベット順」って表示するのはやっぱりバグだよね。「アルファベット／数字順」とかにすべきで、ソート自体じゃなくてラベルの問題だよ。" userName="JoshTriplett" createdAt="2025/09/28 15:27:18" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="でもさ、これは「アルファベット順」として表示されてないんじゃない？作者が「名前でソート」を「アルファベット順」だと勝手に思い込んでるだけで、実際はそうラベルされてないよ。" userName="plorkyeran" createdAt="2025/09/28 16:01:58" color="#ff33a1">}}




{{<matomeQuote body="公平に見て、長年「名前でソート」はアルファベット順だったのは確かだよ。アルファベットと数字を混ぜてソートする機能は、比較的新しいものなんだ。" userName="lsaferite" createdAt="2025/09/28 20:45:05" color="#ff5c5c">}}




{{<matomeQuote body="自然なソートはKDEだと比較的新しいけど、Windowsでは2001年から導入されてるよ。" userName="pseudalopex" createdAt="2025/09/29 01:21:07" color="#ff33a1">}}




{{<matomeQuote body="そうそう、まさにその通り！記事で書かれてるソートは確かにすごく便利だよ。でも、警告もオプションもなくユーザーにそれを強制するのが問題だよね。" userName="lisper" createdAt="2025/09/28 15:51:43" color="#ff5c5c">}}




{{<matomeQuote body="作者だよー。君の意見も親コメントの意見も両方わかるわ。「ソート順」メニューに「名前（自然な順）」と「名前（厳密な順）」みたいに2つのオプションがあれば、全部解決したのにね。" userName="sebtron" createdAt="2025/09/28 15:56:32" color="#ff33a1">}}




{{<matomeQuote body="＞ユーザーに警告やオフにするオプションなく強制するのが問題だ。<br>そんなの、あらゆる製品のあらゆるデザイン決定に言えることじゃない？この機能への不満は的外れだと思うよ。ほとんどのユーザーは今のソートが欲しいだろうし、厳密なアルファベット順は上級ユーザー向けで、レジストリ編集とかCLIオプションとかで代替ソートの選択肢もちゃんとあるでしょ。これは賢明なデフォルト設定だよ。" userName="parineum" createdAt="2025/09/28 17:49:10" color="#38d3d3">}}




{{<matomeQuote body="＞あらゆる製品のあらゆるデザイン決定に言えることだ。<br>いや、それは違うよ。俺のPCのUIの多くの部分は、ユーザーが設定できるんだから。" userName="lisper" createdAt="2025/09/28 17:51:37" color="#ff33a1">}}




{{<matomeQuote body="当然だろ。結局、ユーザーが自分でソート順を決められるべきって話だよ。ちゃんとしたアルファベット順を望むのはおかしくない。" userName="lisper" createdAt="2025/09/28 20:08:50" color="">}}




{{<matomeQuote body="“本当のアルファベット順”ってめっちゃ曖昧だろ。Unicode扱う2025年の俺たちには、大文字小文字、数字、異体字、ダイアクリティカルマークとか、どうソートするかって問題が山積みなんだ。どれも正解ってないし、バイト順ソートも直感的じゃないしな。" userName="hchdifnfbgbf" createdAt="2025/09/28 21:58:37" color="#ff5c5c">}}




{{<matomeQuote body="「本質的に無意味」って言うのは論点ずれてるよ。ソートは文字ごとってのが重要なんだ。Unicodeでもこれは明確な基準だろ。文字はGrapheme Clusterで定義して、正規化やエンコーディングで安定させるべき。大文字小文字やダイアクリティカルマークの扱いに明確な答えはないけど、それは問題の解決に必須じゃない。" userName="Dylan16807" createdAt="2025/09/29 00:15:03" color="#ff33a1">}}




{{<matomeQuote body="大文字が小文字より先に来るって、よく知られてると思ってたけどな。たぶん、記号、数字、大文字、小文字の順だろ。教科書の索引もそうだったはず。" userName="prewett" createdAt="2025/09/29 01:27:21" color="">}}




{{<matomeQuote body="今の問題は数字のソートであって、Unicodeとは関係ないだろ。" userName="lisper" createdAt="2025/09/28 22:02:41" color="">}}




{{<matomeQuote body="Unicodeには数字の表現方法がいっぱいあるし、「アルファベット順」って言葉を数字の並べ方に使うこと自体に異議があるね。" userName="hchdifnfbgbf" createdAt="2025/09/28 22:04:52" color="">}}




{{<matomeQuote body="お前、ちょっとTrollみたいになってきてるぞ。Unicodeに数字の表現がいっぱいあるのはそうだけど、それが2.jpgと10.jpgのどっちが先に来るかって問題と関係ないだろ。" userName="lisper" createdAt="2025/09/29 00:39:12" color="">}}




{{<matomeQuote body="ユーザーがコントロールすべきだって言うのに、そのコントロールはたった10個の数字の扱いに限定されるってこと？話は筋が通ってるけど、めっちゃくだらないな。" userName="hchdifnfbgbf" createdAt="2025/09/29 20:29:29" color="">}}




{{<matomeQuote body="その10文字（数字）って、控えめに言っても、とてつもなく重要なんだよ。" userName="lisper" createdAt="2025/09/29 22:40:35" color="">}}




{{<matomeQuote body="それ、間違ってるよ。UTS #10 § 1.4を見てみて。（低評価はしてないけどね）" userName="bmn__" createdAt="2025/09/29 11:45:48" color="">}}




{{<matomeQuote body="“数字。数字を数値順にソートしたい場合はカスタマイズが必要になることがあるね。数字を含む文字列を単にアルファベット順にソートすると、“A-10”が“A-2”より先に来ちゃって、これは普通望ましくないんだ。この挙動はカスタマイズできるけど、文字列内の数字を認識する曖昧さ（異なる言語規則でフォーマットされるから）で複雑になるんだ。数字が認識されたら、IEEE numeric formatのようなテキストバージョンに変換して、正しい数値ソートができるように前処理できるよ。”" userName="lisper" createdAt="2025/09/29 13:33:28" color="#ff5c5c">}}




{{<matomeQuote body="特に、最近のLinuxの“sort”コマンドにはバージョンソートがあるんだね。`sort -V`が内部でどう動いているかは正確には知らないし、ちょっと魔法みたいだけど、ファイルを見るときはいつもこれを使ってるよ。ほとんどの場合、うまくいくからね。もちろん、オンオフが簡単にできるのもいいところだね。" userName="bee_rider" createdAt="2025/09/28 17:20:20" color="#785bff">}}




{{<matomeQuote body="記事にあるソートの用語は「辞書順」って言うんだけど、問題はみんながバカだってこと。平均的なユーザーは、辞書順ソートとアルファベット順ソートの違いを知らないんだよ。" userName="xerox13ster" createdAt="2025/09/28 16:02:54" color="">}}




{{<matomeQuote body="https://www.unicode.org/reports/tr10/#Contextual_Sensitivity:“特定の言語では、比較が文脈依存で、直接文字を比較するだけでは済まない追加の複雑さがあるんだね。数字については、数値順にソートしたい場合にカスタマイズが必要になることがあるよ。もし数字を含む文字列が単にアルファベット順にソートされると、“A-10”が“A-2”の前に来てしまって、これは普通は望ましくないんだ。この挙動はカスタマイズできるけど、文字列内の数字を認識する曖昧さ（異なる言語規則でフォーマットされるため）で複雑になるんだ。各数字が認識されたら、IEEE numeric formatのようなテキストバージョンに変換して、正しい数値ソートができるように前処理できるよ。”<br>たとえ（この例のように）いつも完璧じゃなくても、ファイルブラウザは正しい選択をしたと思うな。" userName="Someone" createdAt="2025/09/28 13:35:26" color="#ff5c5c">}}




{{<matomeQuote body="でも、-10は-2より小さいでしょ？" userName="afrisch" createdAt="2025/09/28 15:39:17" color="">}}




{{<matomeQuote body="ファイル名に負の数が入ることはめったにないし、それが負の数なのか、ハイフンで区切られた正の数なのかは、たいてい曖昧になっちゃうよね。" userName="JoshTriplett" createdAt="2025/09/28 15:46:37" color="#ff5c5c">}}




{{<matomeQuote body="冗談だってわかってるんだけど、これはNatural Sortingがなぜ複雑で、デフォルトの選択肢として最適じゃないかもしれないかをさらに示しているね。<br>my_photos_at_-3c<br>my_photos_at_-10c<br>ユーザーは小さい数字を最初にしたいの？それともゼロから離れていく順序で数えたいのかな？" userName="ZoomZoomZoom" createdAt="2025/09/29 08:32:44" color="#38d3d3">}}




{{<matomeQuote body="あれはハイフンだよ、マイナス記号じゃないってば、もう。" userName="pwdisswordfishz" createdAt="2025/09/29 06:37:56" color="">}}




{{<matomeQuote body="これ、けっこう知られてると思ったんだけどな。例えば、macOSのFoundation libraryには、Finderで使われるソートアルゴリズムを実装したNSString.localizedStandardCompare()があるし、ちゃんとしたmacOSアプリならこれを使うべきだよ。WindowsはStrCompareLogicalを使ってるね。<br>〔1〕https://developer.apple.com/documentation/foundation/nsstrin...:)<br>〔2〕https://learn.microsoft.com/en-us/windows/win32/api/shlwapi/..." userName="meindnoch" createdAt="2025/09/28 15:51:56" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
