+++
date = '2025-05-04T00:00:00'
months = '2025/05'
draft = false
title = 'Oberon Pi ラズパイで動く？ その正体とは'
tags = ["Oberon", "Raspberry Pi", "OS", "エミュレータ", "プログラミング"]
featureimage = 'thumbnails/purple4.jpg'
+++

> Oberon Pi ラズパイで動く？ その正体とは

引用元：[https://news.ycombinator.com/item?id=43885478](https://news.ycombinator.com/item?id=43885478)




{{<matomeQuote body="これ多分、いつものRaspberry Pi LinuxにProject Oberon 2013のエミュレータが入ってるんだと思うよ。Oberonの歴史は複雑で、Project Oberon 2013はWirthが1992年の本で紹介した初期のやつ。新版でハードウェア部分がNS32000からFPGAに変わったけど、システム自体は同じ。もしこれ使ってみて”原始的だな”と感じたら、それは正しい。後のバージョンはもっと進化してるからね。" userName="pdw" createdAt="2025/05/04 12:05:53" color="#ff5733">}}




{{<matomeQuote body="OberonとかBluebottleとかA2みたいな後継バージョンのユニークなUI/UXをデモしてくれる”ガイド付きウォークスルー”ってある？ Russ CoxのTour of the Acme Editorみたいな感じでさ。Oberon面白そうだからエミュレータでいじってみたいんだけど、Wirthの本みたいな設計の説明じゃなくて、実際にどう使われてるか見せてくれる資料があると嬉しいな。" userName="skoodge" createdAt="2025/05/04 12:45:01" color="#45d325">}}




{{<matomeQuote body="Wirthの４ページのガイド”How to use the Oberon System”があるよ。あと、プロジェクトページに”The Oberon Pi Quick Reference and System User Guide”もあるよ。" userName="jonjacky" createdAt="2025/05/04 21:37:35" color="#ff5733">}}




{{<matomeQuote body="WikibooksにOberonのドキュメントがいっぱいあるみたいだよ。" userName="lproven" createdAt="2025/05/06 08:37:08" color="">}}




{{<matomeQuote body="これに興味あるなら、Luca BoassoさんのJVM向けoberoncプロジェクト［1］をめっちゃおすすめするよ。" userName="owlstuffing" createdAt="2025/05/04 12:50:51" color="#ff5733">}}




{{<matomeQuote body="oberoncの作者だけど、使ってみてくれてありがとうね:)" userName="lboasso" createdAt="2025/05/04 12:58:44" color="">}}




{{<matomeQuote body="OberonとかModulaみたいな古い技術が話題になってるのすごいね。OberonとGoの構造って結構似てるんだ。GoはOberonをC/Unixっぽくした感じで、Go channelsが付いてるって感じかな。Rob PikeはWirthの仕事を知ってて、彼のACMEエディタも影響受けてるみたい。だから、Goに影響があってもなくても、Wirthの考え方がすごいってことだね。" userName="wirrbel" createdAt="2025/05/04 14:31:51" color="#785bff">}}




{{<matomeQuote body="俺はGoはCをOberonに半分寄せたって言うかな。C作った中心メンバーが、Wirthの仕事の方が良かったって認めてるってことだよ。" userName="timbit42" createdAt="2025/05/04 14:54:18" color="#785bff">}}




{{<matomeQuote body="ACMEの仕組みで既に影響受けてるし、Go作った人たちのひとりはETHZの元学生でOberonの研究でPhD取ってるんだよ。" userName="pjmlp" createdAt="2025/05/04 16:02:36" color="#ff5c5c">}}




{{<matomeQuote body="いや、似てないってば。Oberonは現実では全然使えない半端な汎用言語だよ。超汎用的だから何にでも似て見えるだけ（古いJavaとか）。Goはもっとずっと使えるいくつかの大きな違いがあるんだ。1。エラー処理用の複数の戻り値（Oberonにはなく、エラーはコンソールに出すだけ）。2。複数return（最新Oberonは早期returnなし）。3。構造的ポリモーフィズム（interface）。4。Generics。5。パッケージパスの最後の部分で名前参照する便利な機能。" userName="cyberax" createdAt="2025/05/04 18:58:31" color="#ff33a1">}}




{{<matomeQuote body="Oberonが気に入らないのはいいけど、それを”ありふれた中途半端な言語”って呼ぶのは、せいぜい設計に費やされた努力を知らないだけだね。Wirthは自分の言語に対してすごく明確な哲学を持ってて、それを徹底的に貫いたんだ。その哲学が気に入らないならOberonも気に入らないだろうけど、中途半端なところなんてないよ。<br>君のいくつかの点についてだけど、早期リターンがサポートされてないのは、他の”欠けてる”機能の多くと同じで、哲学的な決断の一つなんだ。学生たちが多態性に関する研究もしてたよ。<br>君の5番目の点についてだけど、僕にとってはそれを使う言語で考えられる中で最もひどい欠点の一つだけど、これも哲学の問題だし、間違いなくGoの嫌いな側面の一つだね。<br>でもOberonに戻ると、実装者としてはそのシンプルさときれいさでデザインは美しいよ。もっと多くの言語実装者がWirthの仕事を出発点として、彼の体系的な言語設計アプローチに注目してくれたらいいのにって思うよ。" userName="vidarh" createdAt="2025/05/04 21:43:38" color="#785bff">}}




{{<matomeQuote body="いや、やっぱOberonは中途半端だって意見は変えないね。早期リターンがないとかも、それが中途半端だってこと。ミニマルな言語を作るのは簡単なんだ。大事なのは実用的で使いやすいか。そこがOberonとGoの違いだよ。学生が機能実装したって、それはETHの外にOberonコードがない理由でもある。Oberon-2の多態性は普通の継承だけだったろ？Goのパッケージ名のプレフィックスは名前衝突を避けるのに役立つんだ。" userName="cyberax" createdAt="2025/05/04 23:19:33" color="">}}




{{<matomeQuote body="OS書けるくらい実用的なミニマル言語設計は簡単じゃないんだ。Oberonは何年もの仕事の結集だよ。Goはミニマルじゃないし、使いにくいと思うね。学生による実装は意識的な設計選択で”中途半端”じゃない。俺が言った多態性はETHZの実験的なプロジェクトの話で、Michael Franzの論文のことだ。それを標準に入れなかったのも意識的な選択だよ。これを”中途半端”と呼ぶのは無知だ。" userName="vidarh" createdAt="2025/05/05 07:14:17" color="#ff33a1">}}




{{<matomeQuote body="OS書けるコンパイラ設計？CSの授業でやったけど、全然難しくないよ。Oberonのことは知らなかった。Oberonは触れた全てで完全な失敗だよ。学界でも産業界でもね。Goって実質Oberonじゃなかったの？！Oberonは何を成し遂げた？傑作はどこ？ETH以外の大規模な採用はない。Bluebottle/A2のコードとか、見たOberonコードは全部ひどいよ。まとまりないし構造も悪い。なんでパッケージ名プレフィックスに言及したかって？" userName="cyberax" createdAt="2025/05/07 08:39:41" color="">}}




{{<matomeQuote body="ミニマルっていう制約を外せば言語設計は簡単さ。君は俺の主張を理解できてないか、意図的に外してるね。Oberonが失敗だったとしても、”中途半端”だという主張とは関係ないストローマンだ。Goが実質Oberonだなんて俺は言ってない。Oberonが”結集”だって言ったんだよ。商業的成功と設計の質を混同しないでくれ。Bluebottle/A2はWirth以降で、これも”中途半端”かどうかの論点とは違う。俺はパッケージ名のプレフィックスじゃなく、パッケージパスの最後の要素をデフォルトで使うことに反対したんだ。" userName="vidarh" createdAt="2025/05/07 09:55:09" color="#ff5733">}}




{{<matomeQuote body="Goを今メインに使ってる者からすると、Goの複数戻り値は、クソだね。詳細はこちらを見てくれ。" userName="lelanthran" createdAt="2025/05/04 22:35:28" color="">}}




{{<matomeQuote body="分かってないね。Oberonは複数戻り_値_じゃなくて、複数_returns_を許さないんだよ。<br>つまり、関数の途中で”return val；”って書けないってこと。ところで、Goの明示的なエラーハンドリングは好きじゃないけど、それは確かにミニマルで実用的だね。" userName="cyberax" createdAt="2025/05/04 23:00:47" color="">}}




{{<matomeQuote body="Oberon-07は複数returnsを許さない。Wirthはシングルreturnを好んでた。WirthのOberon-07紹介でも、最後の一回だけreturnが許される例を示してるんだ。これは俺が同意できない決定だけど、複雑さを減らすための明確な設計選択だよ。俺には地味すぎるけど、Wirthの言語設計への配慮は尊敬できるね。" userName="vidarh" createdAt="2025/05/05 07:37:36" color="#45d325">}}




{{<matomeQuote body="＞それは僕が同意できない決定だけど、これもまた非常に明確な動機に基づいた設計選択だよ<br>さっきも言ったけど、彼はイデオロギーをもっと気にしてたんだ。早期returnsは命令型コードをかなり改善するよ。完全に機能的な言語なら、ロジックのブロックを簡単にやりくりできるから必要ないけど、Oberonはそういう言語じゃないし。<br>＞僕には禁欲的すぎるけど、Wirthが言語設計に取り組んだ配慮はやっぱり尊敬できるね。<br>それは基本的に：”俺に従うか、さもなきゃ追放だ。だって俺が名誉教授だから”って感じだったよ。" userName="cyberax" createdAt="2025/05/05 23:27:30" color="">}}




{{<matomeQuote body="Wirth はイデオロギー重視だったって言うけど、それは君の意見も同じ。デザインの考え方が違うんだね、それでいいじゃん。<br>早期リターンについては俺も彼には反対だけど、嫌がった理由はわかるんだよ。コードの推論が難しくなるからね。Wirth は利便性より推論を重視した。<br>君の「俺様ルールか、さもなくば追放」ってのは極端すぎ。ETHZ の研究論文読んだことないんでしょ？Wirth が望まないことしてる論文いっぱいあるよ。彼がアドバイザーのでもね。<br>それに Oberon-07 は彼が引退して10年近く経ってから出たんだから、その話は筋違い。" userName="vidarh" createdAt="2025/05/06 09:49:51" color="#ff5c5c">}}




{{<matomeQuote body="「君の意見も同じイデオロギー」って？違うね。コード書いてる経験からして早期リターンはコード構造を良くするってのはもう議論の余地ないくらい明らかだよ。<br>「推論可能性」を気にするなら関数型言語を見ればよかったのに、完全に的外れだね。<br>ETHZ の研究成果には Wirth が嫌がったことも含まれるって言うけどさ、じゃあ「めっちゃ有名な Oberon プロジェクト」って何かある？俺は全然知らないんだよね。Oberon とその信者については結構知ってるけどさ。<br>ETH の研究も知ってるし、教授も雇ってるけど、最近の評価高い研究で Oberon なんて見たことないな。" userName="cyberax" createdAt="2025/05/07 08:46:59" color="">}}




{{<matomeQuote body="早期リターンでコード構造が良くなるって意見には賛成だけど、それはあくまで「意見」でしょ。<br>「議論の余地がない」って言うなら、ピアレビューされた厳密な研究で山ほど証拠を見せないとダメだよ。確か、早期リターンがコードを良くするって論文、2つくらいしかなかった気がする。しかも弱い証拠で再現もされてない。" userName="lelanthran" createdAt="2025/05/07 19:54:11" color="#785bff">}}




{{<matomeQuote body="早期リターンでコード構造が良くなるってのは単なる意見。主観的な話だし、議論の余地はめっちゃあるよ。<br>Wirth が関数型言語を避けたのは、コンパイルが複雑だから。彼のシンプルさ哲学を理解してないね。Oberon はシンプルさと効率性を重視したんだ。<br>君が「追放」なんて言ってるけど、ETHZ の研究には Wirth の意向と違うものも多いよ。スタープロジェクトの話は的外れな Strawman だし、君は議論のポイントを理解してない。<br>最初から君の「半端」って主張は間違ってる。" userName="vidarh" createdAt="2025/05/07 09:32:44" color="#ff5733">}}




{{<matomeQuote body="もちろん Pike は Wirth からインスピレーション受けたけど、Golang は Pike だけじゃないよ。Thompson と Griesemer も一緒に作ったんだ。Griesemer は Wirth の博士課程の指導学生で、論文は並列版 Oberon、Oberon-V についてだったんだって。リンク貼っとくね。<br>https://eulercenter.ru/pdf/eth10277.pdf<br>https://www.research-collection.ethz.ch/handle/20.500.11850/...<br>でもさ、Golang は Oberon より Pike が Griesemer と組む前に作った Newsqueak にずっと似てると思うな。" userName="kragen" createdAt="2025/05/05 01:44:37" color="#38d3d3">}}




{{<matomeQuote body="Oberon と Go の構造的な類似性についてだけどさ、マイナーな類似点はいくつかあるかな。たぶん、ゴミ収集（GC）を使ってるってのと、Go が Oberon-2 から受け継いだメソッドのレシーバー構文（これは Wirth じゃなくて Mössenböck が提案したやつ）くらいだね。<br>Go は全然違うところにフォーカスしてて、Newsqueak をさらに発展させた感じだよ。Newsqueak は Pascal と C の影響が強いんだ。" userName="Rochus" createdAt="2025/05/04 15:00:03" color="#ff5733">}}




{{<matomeQuote body="なんていうかさ、Plan 9 のデザイン全体が、基本的には Oberon をモデルにしてるんだよね。で、もちろん Go はほぼ同じグループから生まれたわけだし。" userName="cenamus" createdAt="2025/05/04 18:12:27" color="">}}




{{<matomeQuote body="あのページにリンクされてる PDF、すごいね。Wirth の「リーンソフトウェアへの嘆願（Plea for Lean Software）」を読み返したんだけど、今でもめちゃくちゃ通用するね。<br>Alan Kay の VPRI と STEPS ってプロジェクトを思い出したよ。残念ながら 2012年に終わっちゃったんだよね。<br>Oberon も見る限り、もう活発には開発されてないみたいだし。他に似たプロジェクトで、今もアクティブに動いてるのって何かあるかな？" userName="skoodge" createdAt="2025/05/04 12:50:54" color="">}}




{{<matomeQuote body="「Oberon も見る限り、もう活発には開発されてないみたい」ってことだけど、これ見てみてよ。https://github.com/rochus-keller/Oberon<br>あと、そこから派生した Luon とか Micron って言語もあるよ。これらは「Oberon の精神」を受け継ぎつつ、元のとは違う用途に特化してるんだ。" userName="Rochus" createdAt="2025/05/04 15:03:28" color="#ff5733">}}




{{<matomeQuote body="「Oberon も見る限り、もう活発には開発されてないみたい」って？うん、そうだよ。10年以上前かな。<br>後継の BlueBottle（後の A2）があったけど、XML/Java の流行に乗ろうとして失敗した感じ。一貫性なくて使いにくかったんだ。<br>ブラウザが使えないとか、主要メンバーが抜けたとかも原因。今は趣味とかニッチなビジネスで使われるだけだよ。https://en.wikipedia.org/wiki/A2_(operating_system)" userName="vrotaru" createdAt="2025/05/04 18:15:12" color="#785bff">}}




{{<matomeQuote body="STEPSの事後検証ってされたことある？<br>デモとかアイデアとかめっちゃすごそうだったから、何が起きたのか知りたいな。" userName="m_mueller" createdAt="2025/05/04 13:02:04" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="報告書のアーカイブはまだ見れるよ。<br>STEPSについては色々途中報告があったらしい。最終報告書もあったと思うんだけど、俺は読んでないんだよね。<br>Vpri.orgもまだ大丈夫だよ。" userName="drob518" createdAt="2025/05/04 13:21:49" color="">}}




{{<matomeQuote body="最終報告書ここにあるよ：https://tinlizzie.org/VPRIPapers/tr2012001_steps.pdf" userName="mpweiher" createdAt="2025/05/04 14:41:28" color="#ff33a1">}}




{{<matomeQuote body="Ultiboベースのbare metal Oberon版もあるよ：https://github.com/MGreim/ultiboberon" userName="xkriva11" createdAt="2025/05/04 11:44:05" color="#38d3d3">}}




{{<matomeQuote body="昔Appleのapp storeにOberonのアプリがあったんだよ。Intel Macsで面白がって動かしてたな。もうないの悲しいね。<br>全然関係ない話だけど、AT&T Blitのターミナルエミュレーターもあったんだけど、それも消えちゃったんだよね。" userName="rbanffy" createdAt="2025/05/04 17:06:03" color="">}}




{{<matomeQuote body="DuskOSがOberonも統合してるみたいだよ。<br>https://git.sr.ht/~vdupras/duskos" userName="anthk" createdAt="2025/05/04 16:24:58" color="#ff33a1">}}




{{<matomeQuote body="ここ見てみて：https://news.ycombinator.com/item?id=43883747" userName="Rochus" createdAt="2025/05/04 12:56:22" color="#ff33a1">}}




{{<matomeQuote body="面白い名前だよね。”Raspberry Pi”の”Pi”は元々”Py”だったんだ。<br>Pythonで直接起動する目的だったからね。" userName="teddyh" createdAt="2025/05/04 20:55:37" color="">}}




{{<matomeQuote body="9frontとOberon、学習経験として何が違うんだろうね？" userName="rbanffy" createdAt="2025/05/04 17:06:54" color="">}}




{{<matomeQuote body="小説にちょっとしたイースターエッグ隠すの好きなんだよね。最後の小説にWirth教授とOberonのこと忍ばせておいたら、俺が知ってる中だと一人だけそれに気づいてくれた人がいたな。" userName="boznz" createdAt="2025/05/06 05:08:06" color="">}}




{{<matomeQuote body="これめっちゃいいね！でも、もっとマジなbare-metal対応を見てみたいな。A2ってStrongARMのbare-metalをサポートしてたんだよ。ツールはちゃんとあるよ。" userName="lproven" createdAt="2025/05/05 11:41:48" color="">}}




{{<matomeQuote body="誰かPiでOSを自分で書くための無料オンライン大学講座とか知らない？" userName="wsc981" createdAt="2025/05/06 06:40:04" color="">}}




{{<matomeQuote body="これとか？<br>https://github.com/bztsrc/raspi3-tutorial/<br>それか、これを元にしたこっちは？<br>https://www.rpi4os.com/" userName="lproven" createdAt="2025/05/06 08:41:02" color="#38d3d3">}}




{{<matomeQuote body="ありがとう！Githubのリポジトリは前にも見たことあって、あれ便利だよね。2番目のリンクは自分で見つけられなかったから、それはナイス！このトピックについて、何か講座とかもあるのかなって思ってる。" userName="wsc981" createdAt="2025/05/07 01:50:39" color="">}}




{{<matomeQuote body="Oberonって何に使えるの？どうやら機能があまり多くないみたいだけど：限られたUnicodeサポート、限られたグラフィックサポート、XMLもJSONもHTTPもないんだって。それとも私の勘違い？" userName="qwerty456127" createdAt="2025/05/04 21:57:28" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
