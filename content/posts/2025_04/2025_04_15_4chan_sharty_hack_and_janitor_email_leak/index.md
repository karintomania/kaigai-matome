+++
date = '2025-04-15T00:00:00'
months = '2025/04'
draft = false
title = '4chanで大規模ハッキング発生！Sharty氏のアカウントが乗っ取り被害、さらに管理者のメールまで流出の大惨事！'
tags = ["4chan", "ハッキング", "情報漏洩", "セキュリティ", "Ghostscript"]
featureimage = 'thumbnails/blue_green5.jpg'
+++

> 4chanで大規模ハッキング発生！Sharty氏のアカウントが乗っ取り被害、さらに管理者のメールまで流出の大惨事！

引用元：[https://news.ycombinator.com/item?id=43691334](https://news.ycombinator.com/item?id=43691334)

{{<matomeQuote body="ちょっと調べたら、ハッカーが使ったexploitを公開してたみたいだよ。どうやら一部の掲示板でPDFファイルのアップロードが許可されてたんだけど、サイト側でPDFファイルが本物かどうかチェックしてなかったんだって。アップロードされたPDFファイルは2012年のGhostscriptに渡されてサムネイルが生成されてたみたい。それで、攻撃者は適切なPostScriptコマンドを含むPDFをアップロードすることで、shellアクセスできるexploitを見つけたってことらしい。" userName="robotnikman" createdAt="2025-04-15T20:54:54" color="#45d325">}}

{{<matomeQuote body="それ、納得。何年も前にphotography boardで脆弱性に気づいたことがあるんだよね。写真をアップロードすると、4chanが投稿の横にEXIF情報を全部表示するんだけど、4chanのPHPコードがその処理を有名なEXIFライブラリに任せてて。そのライブラリが古くて、あんまりメンテナンスされてなかったんだ。EXIFってカメラのベンダーごとに独自の拡張機能があって、それをサポートしないといけないから、C言語で書かれたライブラリがもうめちゃくちゃで。heap overflowとかarbitrary writesとかheap sprayとか、やりたい放題。JPEGだからユーザーが入力したデータもたくさんあって、ほんと何でもできる。だからちょっとPoC書いたんだ。20kBのJPGで数GB分のheap sprayを試すやつ。投稿したら、サーバーがタイムアウトした。そこで脆弱性を報告…したかったんだけど、ASLR bypassがうまくいかなくて、興味なくなっちゃったんだよね（ライブラリについてはメールしたけど、メンテされてなかったみたい）。4chanってメンテナンスとかコードの品質が全然足りてない感じがした。昔リークしたPHPコードがそのまま使われてるみたいで（このEXIFライブラリの呼び出しも同じ）。" userName="loves_mangoes" createdAt="2025-04-15T21:17:47" color="#45d325">}}

{{<matomeQuote body="＞Just with a bunch of extra features hastily grafted and grown organically, but never dealing with the insane amount of technical debt”<br>これってソフトウェア業界全体で95%くらい当てはまるんじゃない？企業向けからSaaS、IoT、モバイル、デスクトップ、組み込みまで…ほとんどのものが、とりあえず動く機能をごちゃごちゃくっつけただけで、技術的負債は放置プレイ。よく動いてるなって思うレベル。もし車がこんな風に作られてたら、毎日何百万台も故障して路肩に止まってるよ。" userName="ryandrake" createdAt="2025-04-16T00:28:33" color="">}}

{{<matomeQuote body="＞If cars (the non-software parts) were made like this, there would be millions of them breaking down by the side of the road daily.”<br>自動車業界のCEだけど…マジでそうなってきてるよ。昔は車は工場出荷時に完成してたけど…今は顧客が触る前にコードを仕上げるのに数週間かかるし、それも考慮されてる。OTAアップデートでもっとひどくなる。クレームがたくさん来たら直せばいい、みたいな。昔の車は最高だった。アホどもがインターネットにつないだせいで。" userName="SV_BubbleTime" createdAt="2025-04-16T01:48:42" color="#45d325">}}

{{<matomeQuote body="＞Then some morons connected them to the internet for no good reasons.”<br>今の時点では、エンジニアリングがダメだよね。公平に見て、良いcar OS、良いsmartphone OSは作れたはず。でもみんな自分のpie castleを作りたがったから。もっと便利なスマホとか、修理をサポートしてくれるcar OSとか、ありえるけどメーカーがそれを望んでない。" userName="raxxorraxor" createdAt="2025-04-16T07:58:49" color="">}}

{{<matomeQuote body="ちゃんとしたRTOSカーネルとUIレイヤーを使ったら、最新のスマホスタックが使えないって開発者が文句言うんだよね。SonyはカメラでRTOS Linuxシステムを3秒で起動してるし、そのファームウェアはミッションクリティカル。インフォテイメントシステムでもできるはず。" userName="bayindirh" createdAt="2025-04-16T09:02:55" color="">}}

{{<matomeQuote body="3秒は長いな。何にそんな時間かかってるの？コールド/ウォームブートの違い？" userName="throwanem" createdAt="2025-04-16T11:04:32" color="">}}

{{<matomeQuote body="起動プロセスはSteadyShotの状態チェック（センサーをちょっと動かして、中央にロックする）がほとんど。でも、その3秒は気にならないんだよね。スイッチ入れてカメラを構えると、もう撮影できる状態になってるから。1分後にpowersaveに入るけど（設定可能）、これはS3スリープみたいなもんで、復帰はもっと早い。" userName="bayindirh" createdAt="2025-04-16T11:11:54" color="">}}

{{<matomeQuote body="なんか複雑だな。IBISはあったら嬉しいけど、レンズの手ぶれ補正で2段分くらいはなんとかなるからいいかな。" userName="throwanem" createdAt="2025-04-16T13:07:53" color="">}}

{{<matomeQuote body="いやいや、Sony A7-III以降のカメラセンサーはマジでレベル違うよ（Fuji、Canon、Nikonも）。IBISと標準レンズ（28/2とか）があれば、夕暮れや夜に信じられないような写真が撮れる。手ぶれ補正付きレンズなら、さらに良くなるし。ブレると思ってた写真が完璧に撮れること多いよ。例えば：https://www．flickr．com/photos/zerocoder/49047642802/in/photo…" userName="bayindirh" createdAt="2025-04-16T13:31:25" color="#ff5c5c">}}

{{<matomeQuote body="OTAファームウェアのアップデートってマジヤバくない？保険会社は現状を把握してんのかな？" userName="gopher_space" createdAt="2025-04-16T02:44:31" color="">}}

{{<matomeQuote body="昔、WireにCherokeeのハッキング記事があったけど、”2人のハッカー”のせいになってた。でも実際は、そいつら表面的にしか知らなかったんだよ。Sprintのネットワークの欠陥を自力で見つけたわけないじゃん。たぶん政府機関が自動車メーカーに圧力をかけて、”セキュリティを真剣に考えさせる”ためだったんだと思う。でも結局、政府にバックドアやデータへのアクセスを与えてるだけなんだよね。業界のルールに従わないと潰される。もし裏で何が起きてるか知ったら、みんな自動車業界を見る目が変わると思うよ。" userName="SV_BubbleTime" createdAt="2025-04-16T04:16:30" color="#ff33a1">}}

{{<matomeQuote body="＞そんで、アホな連中が何の理由もなくインターネットに接続しちまったんだよな。<br>Elon MuskとFranz von Holzhausenのことだよ、マジで。" userName="Shekelphile" createdAt="2025-04-16T02:24:27" color="">}}

{{<matomeQuote body="最近の車は3Gの携帯電話回線を使って、常に走行データを送信してるんだって。2012年くらいから一般的になったらしい。" userName="fwungy" createdAt="2025-04-16T06:22:00" color="">}}

{{<matomeQuote body="いや、全然違うって。Obamaとその周辺が近いね。2008年の自動車業界危機（Carpocalypse）の頃、政府機関がこぞってインターネット接続車を推進し始めたんだよ。技術がまだ追いついてないのにね。裏では色々怪しい動きがあって、2008年の危機はGMとChryslerだけの問題じゃなくて、ジャストインタイム生産方式の欠陥が原因で、世界の自動車生産が止まる可能性があったんだ。そのせいで政府が自動車業界に深く関わるようになった。今じゃ、みんなの車のABSは確実にスパイしてるし、未完成の車が平気で売られてる。Muskのことが嫌いなのはわかるけど、これはMuskのせいじゃない。Teslaも車はコンピューターじゃないって学んでる途中だけど、この機能は元々政府が始めたことなんだ。" userName="SV_BubbleTime" createdAt="2025-04-16T04:13:03" color="#ff5733">}}

{{<matomeQuote body="Obamaが大統領になったのは2009年1月だよ。" userName="tapoxi" createdAt="2025-04-16T05:20:43" color="">}}

{{<matomeQuote body="＞悪いやつらがヒドイこと言うんだよな<br>世界一の大金持ちが公然と有権者に賄賂を贈り、大統領がその男が投票機を不正操作したと主張し、その男がナチスの敬礼をして、ヨーロッパに行ってナチス党を支援し、そして彼は基本的にホワイトハウスに引っ越し、彼の会社が魔法のように政府の契約を獲得し始め、共感は悪いことだと言い、政府を監督なしに骨抜きにし始める…こんな状況を軽視したら、信用を失うよ。もちろん、このクソ野郎は酷いことも言ってるけど。" userName="KPGv2" createdAt="2025-04-16T04:27:45" color="#ff5733">}}

{{<matomeQuote body="“有権者への賄賂”だって？<br>いや、彼はスポークスマンとして雇っただけだよ。完全に合法。個人的には、人々を投票所に足を運ばせるような前向きな動機は大歓迎だ。<br>“ナチス式敬礼”だって？<br>それは意図的なデマで誇張だよ。あれは「ナチス式敬礼」じゃなかったし、彼は「ハイル・ヒトラー」ではなく「心を込めて」と言ったんだよ。いい加減にしてくれよ。<br>“魔法のように政府の契約を獲得”だって？<br>どの契約のこと？宇宙飛行士の救出のこと？Biden政権はすでにSpace Xと契約を結んでいる。<br>政府機関が詐欺、浪費、税金の不正使用を発見したことに怒ってるのかよ！もしBernie Sandersが提案したら、みんな大絶賛するんじゃないの？" userName="danielktdoranie" createdAt="2025-04-16T13:13:54" color="">}}

{{<matomeQuote body="もしナチスの敬礼じゃなかったら、明日会社に行って（Muskがやったのと同じように）上司の前でやってみて、何が起こるか教えてくれよ。" userName="ryandrake" createdAt="2025-04-16T15:06:51" color="#38d3d3">}}

{{<matomeQuote body="浪費、詐欺、不正行為と戦う方法は色々あるけど、”省庁にパラシュートで乗り込んで、職員をほとんど解雇して、浪費、詐欺、不正行為をなくしたからおめでとう”みたいなやり方は違うと思うんだよね。確かに省庁の支出は減ったかもしれないけど、詐欺や不正行為を積極的に調査する人を排除したことで、詐欺を働いても捕まらない人が増えた可能性もある。自分で自分の首を絞めたんじゃない？" userName="sleepybrett" createdAt="2025-04-16T16:23:33" color="#38d3d3">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="政府はまだ崩壊してないんだね。あと、DOGEが無駄や不正をなくす方法についてのあんたの漫画みたいな評価には賛成できないな。社会保障局の明らかな不正は、それの証拠以上だよ。140歳の人を知ってるか？" userName="danielktdoranie" createdAt="2025-04-18T14:40:19" color="">}}

{{<matomeQuote body="Bill GatesとGMの話を思い出すなー（でも、どうやら否定されてるみたいだけど）<br>https://www.snopes.com/fact-check/car-balk/" userName="vanschelven" createdAt="2025-04-16T06:44:42" color="">}}

{{<matomeQuote body="7．オイル、水温、オルタネーターの警告灯が、単一の「一般的な車のデフォルト」警告灯に置き換えられる。<br>…<br>10．時々、理由もなく、車がロックして、ドアハンドルを持ち上げ、キーを回し、ラジオのアンテナをつかむまで中に入れてくれなくなる。<br>11．GMは、すべての車の購入者に、Rand-McNally（GMの子会社）のデラックス版ロードマップを、必要も欲しくもないのに購入させる。このオプションを削除しようとすると、車の性能が50％以上低下する。さらに、GMは司法省の捜査対象となる。<br>…<br>13．「スタート」ボタンを押してエンジンを切る。" userName="axus" createdAt="2025-04-16T12:40:35" color="">}}

{{<matomeQuote body="＞よく動いてるなって思うよ。<br>＞もし車がこんな風に作られてたら、毎日何百万台も故障して道端に止まってるだろうね”<br>ソフトウェア面はそうだけど、飛行機もよく落ちないなって思う。でも、今までは有名な“最近の”出来事を除いて、空から落ちてくることはなかった。杜撰な管理を考えると驚きだよ。運が良かったんだね。" userName="fransje26" createdAt="2025-04-16T09:58:46" color="">}}

{{<matomeQuote body="車は置いといて、何百万もの人々の医療、退職金、生活、国家安全保障、秘密、存在証明がかかってる政府システムをこんな風に扱ったらどうなるか想像してみて？幸い、そういうシステムはもう少し真面目に扱ってるから、少しコストがかかるし、速く動いて壊すことはできないけどね。" userName="_DeadFred_" createdAt="2025-04-16T02:33:21" color="#785bff">}}

{{<matomeQuote body="そういう種類の政府のソフトウェアって、地球上で最悪レベルだよね。" userName="chasd00" createdAt="2025-04-16T11:26:56" color="">}}

{{<matomeQuote body="俺が知る限り、Pooleが10年前にサイトを売ってから、マジなメンテナンスは行われてないな。Hiroyukiがお金を払ったけど、ほとんど忘れてるんじゃない？" userName="bigfatkitten" createdAt="2025-04-15T21:41:58" color="">}}

{{<matomeQuote body="2019年にPHP 5.3から7.1にスタックをアップグレードしなきゃいけなかったんだけど…彼らが実行してたPHPのバージョンを知ってる？" userName="lazystar" createdAt="2025-04-16T01:57:41" color="">}}

{{<matomeQuote body="よくある脆弱性だよね。俺が昔やったハックの一つは、PFPをアップロードできるフォーラムだったんだけど、それが実際に画像かどうかチェックしてなかったんだ。ASPファイルをアップロードして、エクスプローラーみたいなインターフェースを提供するようにコーディングしたんだ。管理者パスワードをテキストファイルで見つけた。それは”internet”そのものだった。RDPが開いてた。これは4000社以上のホスティングプロバイダーだったんだぜ。メール送ってやった。感謝の言葉はなかったけどね。常に何がアップロードされてるかチェックしろよな。" userName="qingcharles" createdAt="2025-04-15T21:59:56" color="#785bff">}}

{{<matomeQuote body="ASPを画像としてアップロードして、サーバーサイドで実行させるのは一つの手口だよね。<br>でも、このケースはちょっと違うんだ。<br>この問題は、PDFとPostScriptの関係の癖に依存してる（PDFはPostScriptのサブセット上に構築されている）。<br>たとえば、C言語で書かれた画像フォーマットがあったとして、コンパイルして実行すると、幅、高さ、そしてRGB値のストリームが生成されて画像が形成されるとする。そして、これを形式化して、誰かがCコンパイラを書かなくても、この普通のCのように見えるファイルからキービットを取り出して同じ結果を生成できるようにする。<br>今、あなたのウェブサイトがそのような画像ファイルのアップロードをサポートしていて、サムネイルを生成するためにレンダリングする必要があるけど、コードをコンパイルする必要のない最小限の実装の代わりに、gccを実行して出力を実行するとする。<br>それが、今回起こったことと多かれ少なかれ同じなんだ。<br>PDFが基本的にPostScriptのサブセットであることは、あまり知られていないことに注意する価値がある。だから、こいつらがこれに引っかかったのも、C言語が誰も話さない奇妙な言語になり、GCCが汎用Cコンパイラではなく”その画像フォーマットを扱うツール”として知られるようになったのと同じくらい驚くことじゃない。" userName="Arch-TK" createdAt="2025-04-15T22:31:22" color="#38d3d3">}}

{{<matomeQuote body="＞PDFがPostScriptのサブセットってのはマジじゃないよ。仕様書のAppendix A、p985を見て。PDFの演算子とPostScriptの対応が全然違うじゃん。もし対応があるとしてもね。PDFのイメージングモデルはPostScriptから借りてる部分もあるけど、透明性とか違う部分もあるし。ファイル自体も全然違う。<br>今回の件はPDFじゃなくて、拡張子を.pdfに変えたPostScriptファイルが悪用されたんだって。GhostScriptの脆弱性を突いて、コードを実行したみたい。4chanがPDFのチェックしてなかったのが原因らしいよ。" userName="mkl" createdAt="2025-04-15T23:50:20" color="#ff5c5c">}}

{{<matomeQuote body="キーワードは「基本的に」ってこと。PDFの2.4節を読んでみて。GhostScriptはPostScriptのインタープリタで、PDFファイルを扱えるんだ。PDFにGhostScriptのエクスプロイトが埋め込まれてるかどうかは、ここでは重要じゃないんだよね。" userName="Arch-TK" createdAt="2025-04-15T23:56:36" color="">}}

{{<matomeQuote body="それって「Pythonは基本的にCのサブセット」って言ってるようなもんじゃん。Cythonみたいな変換をすればいいだけでしょ？PDFをPostScriptに変換できるのは、PythonをGCCで理解できるようにするのと同じ。それって「サブセット」の意味じゃないよね。" userName="mkl" createdAt="2025-04-16T02:00:26" color="#ff5c5c">}}

{{<matomeQuote body="PDFの該当箇所読んだ？" userName="Arch-TK" createdAt="2025-04-16T07:42:57" color="">}}

{{<matomeQuote body="昔、PSPのXMBがBMPとかTIFFファイルでクラッシュしてたのを思い出すな。俺はまだ子供だったけど、クラスメートのPSPを片っ端から「海賊版」にしてたんだ（小銭と交換で）。いい時代だった。" userName="Funes-" createdAt="2025-04-15T22:28:59" color="">}}

{{<matomeQuote body="これ昔からある有名なエクスプロイトじゃん。2012年のGhostScriptなんて使うなってこと。" userName="jrochkind1" createdAt="2025-04-15T23:00:20" color="">}}

{{<matomeQuote body="＞2012年のGhostScriptなんて使うなって？<br>Wikipediaによると、Ghostscriptは2013年2月にライセンスをGPLv3からGNU AGPLに変更したらしい。AGPLライセンスは法的クリプトナイトだから、それが理由かもね。" userName="donnachangstein" createdAt="2025-04-16T00:16:24" color="">}}

{{<matomeQuote body="＞攻撃者にシェルアクセスを与える可能性がある。<br>このエクスプロイトってどういう仕組みなの？SSHポートを開くとか、ブラウザベースのターミナルが表示されるとか？" userName="xattt" createdAt="2025-04-16T00:03:33" color="">}}

{{<matomeQuote body="攻撃者は自分のPCとかサーバーでポートを開いて、そこに接続させるんだ。エクスプロイトはそこへの接続を確立して、シェルアクセスを渡す。'reverse shell'で検索してみて。<br>FTPのアクティブモードみたいな感じ。<br>ICMP echo requestを使う方法もある。ICMP echo requestは任意のバイトをペイロードにできるから、それを使ってシェルの出力を送るんだ。ファイアウォールでUDP/TCPがブロックされてても、ICMPは通ることがあるからね。やり方は色々あるよ。" userName="nwallin" createdAt="2025-04-16T00:52:53" color="#ff5733">}}

{{<matomeQuote body="ソースある？疑ってるわけじゃなくて、ただ気になるだけ。" userName="0x303" createdAt="2025-04-15T21:17:05" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="4chanについての考察はマジ興味深い。今のSNSとかの状況って4chanより酷い部分もある気がするんだよね。iPhoneが出てきたあたりから4chanのノリが世界中に広まった感じ。昔の4chanユーザーは今より筋が通ってた気がする。「お前の個人的な軍隊じゃねーぞ」って意識があったし。今はドクシングとか当たり前だし、なんか怖いよね。インスタとか見てるとエロい画像も多いし、OFのクリエイターも増えすぎ。ミームもつまんなくなったし。" userName="shipscode" createdAt="2025-04-15T13:01:52" color="">}}

{{<matomeQuote body="4chanは今のSNSより全然マシだと思う。匿名で書き込めるし、投票とかランキングもないから。全ての投稿が平等に評価されるべきだし、誰が書いたかとか関係ない。バブルの中で評価が決まることもないし。自分の目で見て判断するしかないんだよね。" userName="Ferret7446" createdAt="2025-04-16T06:15:39" color="#ff33a1">}}

{{<matomeQuote body="若い頃は4chanの匿名性が良かったけど、今はモデレーションがなってないプラットフォームは嫌だ。過激な表現にも飽きたし、ユーザーの質も下がった気がする。最近4chan見ると、半分は嫌悪感しかないポルノみたいな画像だし、もう半分は精神病んでる人の投稿。まともな会話ができない人が多すぎる。昔は面白い意見もあったけど、今は変なやつばっかり。" userName="lurk2" createdAt="2025-04-16T12:50:58" color="">}}

{{<matomeQuote body="＞まともな会話ができない人が多すぎる<br>それはそうだけど、検閲が厳しい場所じゃ有益な意見も言えなくなるんだよ。現状を批判すると叩かれるし。 Redditのモデレーターなんて、古参ってだけで選ばれてるようなもんだし。ちょっと過激なこと言っただけでBANされることもあるし。4chanはクソだけど、まだマシな方だと思う。" userName="NoMoreNicksLeft" createdAt="2025-04-16T13:59:13" color="">}}

{{<matomeQuote body="＞ Redditのモデレーターなんて、古参ってだけで選ばれてるようなもんだし<br>Spezはそいつらを地主みたいだって言ってたけど、まさにその通り。4chanも同じようなもんだよ。/lit/とか/trv/とか/his/で、明らかにトピックに関係ある投稿をしたのに、管理人が気に入らないってだけでBANされたことあるし。気に入らないプラットフォームからは離れるのが一番。問題は、みんな同じサイトに集まっちゃって、他に選択肢がないこと。" userName="lurk2" createdAt="2025-04-16T14:40:05" color="">}}

{{<matomeQuote body="それってstackoverflowのことじゃん。他の場所でBANされるのは、まともなことが言えないからでしょ。モデレーターが優秀だからじゃないよ。 Discordに関する投稿でBANされるのも同じ理由じゃない？" userName="GoblinSlayer" createdAt="2025-04-16T18:49:23" color="">}}

{{<matomeQuote body="＞Hacker Newsはほぼ全ての点で優れている<br>一部の狭いトピックに限れば、まあそうかもね。でも政治的な話ができないのが大きい。 Redditも、トランプが大統領になる前は4chanよりマシだったけど、人が増えすぎてダメになった。連邦化されたネットワークがいいかもしれないけど、結局は変なコミュニティ同士が対立するだけだと思う。 Lemmyとか見た？ 最初のインスタンスはスターリンみたいな共産主義者が牛耳ってたよ。技術的な解決策じゃ、こういう問題は解決できない。" userName="NoMoreNicksLeft" createdAt="2025-04-16T19:03:53" color="">}}

{{<matomeQuote body="モデレーションがないのはもっと最悪。 Rage Baitみたいなコンテンツが上位に来るし、まともな人は寄り付かなくなる。特に/pol/はひどい。ヘイトスピーチばっかりで、まともな議論なんてない。2007-2010年頃は/g/とか/sci/とか/mu/とか/fa/によくいたけど、今は見る影もない。今はどこも酷い。4chanに残ってる人はいない。Redditの方が100倍マシ。" userName="tovej" createdAt="2025-04-16T14:24:56" color="">}}

{{<matomeQuote body="なんでみんな4chanはモデレーションされてないって思うの？ ゴア画像とかポルノとか違法なものはちゃんとBANされるし、通報もされるよ。ただ、現状に逆らうことを言うのが許されてるってだけ。それは良いことじゃない？" userName="throwaway652368" createdAt="2025-04-16T14:53:29" color="">}}

{{<matomeQuote body="＞思想犯罪とも言う<br>殺人教唆は思想犯罪ってこと？そんなの許されるべきじゃないでしょ。" userName="lurk2" createdAt="2025-04-16T15:04:22" color="">}}

{{<matomeQuote body="4chanで誰かを殺す陰謀を見たことないな。アメリカの法律違反だし、サイトで禁止されてる。特定の人じゃなくて、民族全体のジェノサイドを煽るヤバい投稿はあるけど、それはマジで頭おかしいけど、検閲されるべきじゃないと思う。太陽を爆破しようって提案するのと同じで、違法じゃないでしょ。" userName="throwaway652368" createdAt="2025-04-16T15:16:46" color="">}}

{{<matomeQuote body="＞民族全体のジェノサイドを煽るヤバい投稿はあるけど、それはマジで頭おかしいけど、検閲されるべきじゃない<br>なんで検閲しちゃダメなの？あいまいな感情から実際に実行に移るまで、マジであっという間だよ。ルワンダを見てみろよ。" userName="lurk2" createdAt="2025-04-16T15:38:17" color="">}}

{{<matomeQuote body="だって誰も傷つけないじゃん。検閲法がジェノサイドを防ぐ全てだってんなら、「うわー、マジであのグループをジェノサイドしたいけど、検閲法が邪魔だ。しゃーない、別のことでも探すか…」ってなるわけないじゃん。<br>お前の主張は、意図的かどうかは別として、モット・アンド・ベイリー戦略だよ。4chanが「マジで非難されるべき政治的意見」を許容してるって非難してるけど、多くの人にとってそれには「女性は男性のスポーツに参加すべきじゃない」とか「子供に性転換手術を受けさせるべきじゃない」って意見も含まれる。それが“ベイリー”。でも、それを擁護する代わりに、殺人未遂みたいな“モット”に逃げてる。人によっては、堕胎は殺人だ。堕胎を奨励する発言を検閲すべき？違うでしょ。それこそ俺がお前のモット・アンド・ベイリーに対抗するために、自分のモット・アンド・ベイリーを使ってるだけだよ。<br>結局、民間企業が何を話していいか選ぶべきじゃない。それを選べるのは議員だけ。もしお前があるウェブサイトで言われてる事が気に入らないなら、そのウェブサイトじゃなくて議員に言うべきだ。" userName="throwaway652368" createdAt="2025-04-16T16:10:30" color="#ff5c5c">}}

{{<matomeQuote body="＞だって誰も傷つけないじゃん<br>脅迫は物理的に誰も傷つけない。殺人未遂も、実際に殺人が起こるまでは殺人じゃない。ジェノサイドを呼びかけるのは、実際のジェノサイドじゃない。でも、ジェノサイドを実行するための第一歩以外の何の意味がある？言論が犯罪レベルに達する例は他にもたくさんある。誰もオーウェル的だとは思わないだろうけどね。<br>＞検閲法がジェノサイドを防ぐ全てだってんなら、「うわー、マジであのグループをジェノサイドしたいけど、検閲法が邪魔だ。しゃーない、別のことでも探すか…」ってなるわけないじゃん<br>その論理だと、法律なんていらないってことになる。だって、人はいつだって法律を回避する方法を見つけるから。<br>＞お前は4chanが「マジで非難されるべき政治的意見」を許容してると非難してる<br>それは別の人の引用だよ。俺が言いたいのは、/pol/で見かけるような内容は扇動レベルに達することが多くて、それについて訴追するのは間違ってないってこと。脅迫を犯罪とするのと同じ論理で、ヘイトスピーチを犯罪とすることも正当化できる。メタ的な議論は、新しい暴力のカテゴリーを発明したり、既存のカテゴリーを再定義したりすることに移るだろうけど、それは単なる滑りやすい坂論法で、既存の法律を悪意を持って解釈することに対する無限の寛容があると仮定してるだけ。例えば、殺人を違法にしても、死刑について議論することを禁止するほど、殺人の定義が拡大されることはない。" userName="lurk2" createdAt="2025-04-16T16:28:11" color="">}}

{{<matomeQuote body="ルワンダは、大規模なインターネットフォーラムで有名だったわけじゃない。ルワンダのジェノサイドは、閉ざされたドアの部屋での囁き声や内緒話から始まった。誰も簡単に監視できない場所で。もしお前が4chanみたいなのを検閲することに成功したら、そういう囁き声が、耳を傾けてくれる人がいない場所で聞こえるようになるのを楽しみにしてろよ。<br>人間には、聞いたり読んだりすることを禁じられている言葉を聞いたり読んだりしたいという自然な欲求がある。もしお前がジェノサイドの野望に信憑性を与えたいなら、禁止して検閲しろ。" userName="NoMoreNicksLeft" createdAt="2025-04-16T19:09:50" color="#ff5733">}}

{{<matomeQuote body="それな。今のソーシャルメディアの悪いところは、ランキング形式のプラットフォームのせいだと思う。アップボートとかダウンボート、いいね！とか。あれはエコーチェンバーになって、ニュアンスよりも気の利いた一言を優先するし、物議を醸すような意見は効果的に検閲される。<br>とは言え、HNはそれなりに機能してる。でも、ある意味では、アウトライヤーを検閲するって意味では、もっとひどい。" userName="sph" createdAt="2025-04-16T07:29:05" color="">}}

{{<matomeQuote body="“Not your personal army”はdoxxingしないってことだけじゃない。スケープゴートに対する憎しみで団結した見知らぬ人のコミュニティを想像しようとする試みを拒否することだ。" userName="amadeuspagel" createdAt="2025-04-15T13:52:49" color="">}}

{{<matomeQuote body="もし誰かが4chanでヘイトモブを組織したら、どうやって知るんだ？<br>4chanはそれを露骨に拒否してるから、すぐに別の場所に移動するだろうけど、誰かを攻撃するために別のサーバーにフォローするような仲間を見つけるには最高の場所だ。" userName="shadowgovt" createdAt="2025-04-15T18:49:42" color="">}}

{{<matomeQuote body="4chanは常にそれを拒否すると主張してきたけど、特定の方向に誘導されることに免疫があったわけじゃない。" userName="Klonoar" createdAt="2025-04-15T21:13:55" color="">}}

{{<matomeQuote body="つまり“Not your personal army” == ジャーナリストになるなってこと？" userName="bboygravity" createdAt="2025-04-15T21:25:29" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="それって、掲示板やサイトを荒らそうとするやつらに対するテンプレ返信だったんだよね。負け犬が腹いせでやるみたいな。Flash mobを無料マーケに使おうとした企業みたいなもんかな。" userName="anigbrowl" createdAt="2025-04-15T22:56:49" color="">}}

{{<matomeQuote body="4chanの一番の問題は言葉遣いかな。マジで相手の気持ちとか考えないし、共感力も低い。それが他のSNSにも広がってるのが残念。HNみたいにみんなが話せば、もっといい場所になるのにね。" userName="PixelForg" createdAt="2025-04-16T02:20:52" color="">}}

{{<matomeQuote body="「彼ら」なんていないよ。SNSから来た人みたいに、みんなが共有するコミュニティがあると思ってるんでしょ？逆だよ。ルールなんてないし、仲間意識もいらない。スラングが嫌なら使わなくていいし、つまらない投稿に敬意を払う必要もない。匿名掲示板も普通のサイトと同じだよ。クソみたいな投稿はどこにでもあるしね。「文明的な議論」ってやつに時間を使うよりマシ。" userName="ogurechny" createdAt="2025-04-16T12:16:43" color="#785bff">}}

{{<matomeQuote body="4chanの層って、他のサイトと大体同じってこと？" userName="fwip" createdAt="2025-04-16T17:26:30" color="">}}

{{<matomeQuote body="まあ、入りたい人は誰でも入れたし。メディアもずっと報道してたから、誰でも知ってたでしょ。" userName="ogurechny" createdAt="2025-04-16T18:46:09" color="">}}

{{<matomeQuote body="入りたい人は誰でも入れるけど、同じような人が集まるとは限らないじゃん。TwitterとかFacebookだって、似てるようでユーザー層は違うし。" userName="fwip" createdAt="2025-04-16T20:26:02" color="">}}

{{<matomeQuote body="昔は、普通のネットユーザーがイメージボードに来ても何が起こってるか分からなくて、普通のサイトに戻ってたんだよね。ジャーナリストが書いたガイドなんてなかったし。「荒らし」についての情報記事もなかった。イメージボードのスラングを使うと、子供扱いされてたし。今となっては4chanも普通になったよ。" userName="ogurechny" createdAt="2025-04-16T21:21:14" color="#ff5c5c">}}

{{<matomeQuote body="3/10のトロル<br>それって、ネットの基本原則に反してるし、4chanの文化にも反してるよね。<br>大事なのは、一般人の気分で何が許されるかを決めないこと。" userName="starfezzy" createdAt="2025-04-16T14:29:59" color="">}}

{{<matomeQuote body="それが嫌なんだよね。ネットがこうであるべき理由はないじゃん。リアルと同じようにすればいいだけなのに。ネットで悪口言うやつが嫌い。だから4chanには行かない。" userName="PixelForg" createdAt="2025-04-16T14:47:33" color="">}}

{{<matomeQuote body="TwitterとかRedditとかBlueskyとかFacebookでも、誰も人の気持ちなんて気にしてないよ。ただ、特定の言葉を避けてるだけ。" userName="YurgenJurgensen" createdAt="2025-04-16T09:14:28" color="">}}

{{<matomeQuote body="Blueskyにめっちゃ気の合う仲間たちがいて、お互いの気持ちを大切にしてるんだ。他の場所は知らないけど、俺がいる場所は今までで一番ネットでいい経験になってるよ。" userName="Zambyte" createdAt="2025-04-16T12:12:51" color="#ff33a1">}}

{{<matomeQuote body="それってパフォーマンスでしょ。本物じゃないって。" userName="artursapek" createdAt="2025-04-16T12:21:15" color="">}}

{{<matomeQuote body="いや、違うって。Blueskyで知り合った人に実際に会う予定もあるし。Blueskyで知り合った海外の人から手紙ももらったし。Blueskyで知り合った人を、同じ悩みを抱えてる俺の母親に紹介したんだ。俺や友達のこと何も知らないのに、そんなこと言うのはマジで変だよ。" userName="Zambyte" createdAt="2025-04-16T12:32:49" color="#ff5733">}}

{{<matomeQuote body="Blueskyでの人との繋がりを深める例が、全部Bluesky以外の場所に移動してるのが気になるな。本当に繋がりが深いなら、SNSから離れる必要なくない？" userName="YurgenJurgensen" createdAt="2025-04-16T14:31:10" color="">}}

{{<matomeQuote body="HNは色んな意味で4chanみたいなもんじゃない？頭が良くて、紳士的な人がここに来るだけで。頭はいいけど、あえてアホなフリしてるやつらが行くのが4chan。" userName="HaZeust" createdAt="2025-04-16T05:50:46" color="">}}

{{<matomeQuote body="HNは4chanのおっさん版みたいなもんかな。イメージボードだと、常に12歳と議論してる気分になるんだよね。" userName="sph" createdAt="2025-04-16T07:30:27" color="">}}

{{<matomeQuote body="プラットフォームの年齢の話じゃないんだよ。ユーザーの平均精神年齢の話だよ。" userName="sph" createdAt="2025-04-16T13:15:55" color="">}}

{{<matomeQuote body="白人至上主義の大量殺人犯の多くが4chanのユーザーで、バッファローの銃乱射事件の犯人が殺人事件をライブ更新してた時も応援してたんだ。<br>＞https://www．thetrace．org/newsletter/4chan-moderation-buffalo…<br>クライストチャーチの銃乱射事件の犯人も4chanの常連だった。<br>＞https://theconversation．com/christchurch-terrorist-discussed…<br>白人ナショナリスト／至上主義者の「boogaloo」運動全体が4chanで始まったんだ。<br>＞https://www．splcenter．org/resources/reports/mcinnes-molyneux…<br>「Not your personal army」とか言ってるけど、4chanユーザーは日常的に個人情報を暴露したり、SWATを送り込んだり、嫌がらせをしてた。<br>なんでみんな4chanを美化しようとしてるのかマジで意味不明。" userName="KennyBlanken" createdAt="2025-04-15T23:50:14" color="#38d3d3">}}

{{<matomeQuote body="Facebook、Twitter、Redditを使ったやつらは何人いたんだ？主流メディアでは人気があるから報道されないけど、4chanに一度も投稿したことなくて“良い”SNSだけ使ってるヤバい奴らもたくさんいると思うぞ。" userName="sph" createdAt="2025-04-16T07:31:46" color="#785bff">}}

{{<matomeQuote body="なんか/pol/とウェブサイト全体をごっちゃにしてる人が多すぎな気がするんだよねー。俺は/tg/（テーブルトークメディア）とか/ck/（料理）とか/fit/（フィットネス）みたいな健全な板を見てるのが好きだったし。2015年から19年にかけては/tv/でSWの続編についてめっちゃ議論したし。読者は意外と多様で、匿名性のおかげでみんなより集中して返信してたんだよね。bodybuilding.comがなくなって、あの青い板が古き良きインターネットの最後の砦みたいな感じだったんだよなー。" userName="Red_Tarsius" createdAt="2025-04-15T12:47:12" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
