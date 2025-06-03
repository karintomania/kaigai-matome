+++
date = '2025-05-27T00:00:00'
months = '2025/05'
draft = false
title = 'インターネットが不安定に BGPの処理バグが広範囲に影響'
tags = ["BGP", "ネットワーク", "インターネット", "経路制御", "障害"]
featureimage = 'thumbnails/orange_pink2.jpg'
+++

> インターネットが不安定に BGPの処理バグが広範囲に影響

引用元：[https://news.ycombinator.com/item?id=44105796](https://news.ycombinator.com/item?id=44105796)




{{<matomeQuote body="標準的なやり方は、受け取るものは大らかに、送るものは厳密に、ってやつだね。やり方としては、1) 壊れたメッセージをフィルター、2) 壊れたメッセージをドロップ、3) 壊れた属性は無視して通す、4) 壊れた属性で止める。俺に言わせれば、4 (Arista) だけはマジでダメな挙動。3 (Juniper) は望ましくないけど、壊滅的じゃない。<br>追記：読み直したら、Aristaは4じゃなくて2だったわ。無効な接続として閉じただけで、完全に落ちたわけじゃないみたい。それはまあ、許容できるかもしんないけど、ユーザーには優しくないね。" userName="ta1243" createdAt="2025/05/27 12:54:35" color="#ff5c5c">}}




{{<matomeQuote body="＞The standard approach is be liberal in what you accept and be specific in what you emit.<br>ここで言い換えてるのは、いわゆる「robustness principle」のことだろ、別名「Poestel’s law」。あれは1980年代とかインターネットの黎明期の考え方だよ。今はさ、あれは見当違いな考え方で、プロトコルのossificationとか数え切れないセキュリティ問題を引き起こしたって広く理解されてるんだぜ。" userName="hannob" createdAt="2025/05/27 17:52:38" color="#38d3d3">}}




{{<matomeQuote body="俺はこのやり方に反対だね。受け取るものもすごく厳密に、送るものもすごく厳密にする方が、俺には良いと思えるな。" userName="klysm" createdAt="2025/05/27 12:58:40" color="">}}




{{<matomeQuote body="Postel’s Lawは確かに多くの問題を引き起こしたけど、それが本当にプロトコルのossificationの原因なの？問題は逆じゃない？例えば、middleboxesが受け付けるもの（HTTPだけとかTCPとUDPだけとか）に厳しすぎるのが原因なんじゃないの？" userName="senderista" createdAt="2025/05/27 18:13:30" color="#38d3d3">}}




{{<matomeQuote body="それってインターネットの哲学とぶつかる考え方だよ。もしちょっと理解できない部分があるからって何でもドロップしたら、すごく柔軟性を失うことになるぜ。インターネットの一部には20年前のハードウェアで動いてるものもあるけど、別の部分はプロトコルをちょっと変えるだけでずっとうまくいくかもしんないってことを忘れないで。ウェブブラウザみたいにさ、全部がちょっと柔軟に受け入れてくれるなら、スムーズな体験になるし、成長やイノベーションの余地も生まれるんだよ。" userName="tinco" createdAt="2025/05/27 13:03:31" color="#785bff">}}




{{<matomeQuote body="Aristaは2をやったけど、コネクション全体をドロップしたのがたぶんまずかったね。個人的には、メッセージの中の壊れた属性だけをドロップしてログに残すのが一番だと思うな。有効なデータが残ってるならそれは通す。何も残ってないなら、その特定のピアからはUPDATE messageを受け取らなかったふりをする。モニタリングで問題のある発信元は特定できるし、みんなネットワークの不安定さに悩まされずに対応できるはずだぜ。" userName="ExoticPearTree" createdAt="2025/05/27 13:30:11" color="#ff5733">}}




{{<matomeQuote body="厳格すぎても、大らかすぎても、両方ossificationにつながるんだよ。それは単に、どっちの方向のバグった挙動も頼られるようになったり（あるいはmiddleboxesがお前のトラフィックをフィルタリングする場合みたいに、予測不能に強制されたり）する可能性があるっていう観察にすぎない。俺ならセキュリティ問題は大らかすぎる場合にしか起こらないだろうって予想するけど、1. そんなによくあるとは思わないし、2. それが実装のrobustnessを下げる説得力のある議論だとは全く思わないね。" userName="fc417fc802" createdAt="2025/05/27 18:52:55" color="">}}




{{<matomeQuote body="おいおい、 armchair-ness（素人意見）は調整した方がいいぞ。壊れた属性だけドロップするとルートの意味が大きく変わって、DFZでは世界中に影響する。安全なのはルート全体をドロップすることだけだ。7606 RFCの前にも賢い人たちが議論したんだ。（お前のコメントを低評価はしてないけど、なんで他の人がそうしたかはわかる。複雑な問題に対してシンプルすぎるからな。）" userName="eqvinox" createdAt="2025/05/27 16:36:45" color="#ff5733">}}




{{<matomeQuote body="面白いな、DFZルーター持ってるからBGPは少しわかるぜ。俺のポイントは：接続ドロップは下流に不安定さを引き起こす。壊れた属性だけ削除ならルートは通す。DFZ構成で単一ルートをドロップすると、唯一の上流ならブラックホールになる可能性があるんだ。" userName="ExoticPearTree" createdAt="2025/05/27 19:04:17" color="#45d325">}}




{{<matomeQuote body="わかったよ。XHTMLインターネットで会おうぜ。あ、無理か。" userName="bolognafairy" createdAt="2025/05/27 13:21:51" color="">}}




{{<matomeQuote body="BGPが未知の属性をスルーする仕様が、新機能導入には良かったけど問題も招いたんだね。元々の RFC はエラーで切断推奨だけど、今は Treat As Withdraw が良いってされてるよ。実装のテスト不足とか、頑丈な機能がデフォルトじゃないのも問題だね。" userName="erincandescent" createdAt="2025/05/27 14:22:27" color="#785bff">}}




{{<matomeQuote body="みんな、BGPが分かんない属性でも転送する振る舞いをうまく利用して、ネットワークで色んなことやってたんだよ。それに頼っちゃってるんだね。んで、今、その”機能”の悪い面が出てきてるわけ。" userName="sc68cal" createdAt="2025/05/27 13:04:05" color="#ff33a1">}}




{{<matomeQuote body="Postel’s Law って大事だけど、脆いシステムができちゃうんだよね。理想から外れても動くようにできるけど、壊れる時は突然、壊滅的にダメになるの。 metallurgy で言うところの Robustness Principle じゃなくて、 Hardness Principle って呼びたい気分。" userName="SAI_Peregrinus" createdAt="2025/05/27 13:59:24" color="#38d3d3">}}




{{<matomeQuote body="”今日、広く理解されている…”って書いてるけど、一部の人がそう主張してるだけで、絶対”広く理解されてる”なんて言えないね。だってそういう言い方だと、その後の主張に全然議論がないみたいに聞こえるもん。" userName="fc417fc802" createdAt="2025/05/27 18:49:44" color="">}}




{{<matomeQuote body="壊れた属性に関しては blackhole にするのは良いんだけど、その blackhole が広がっちゃうのはダメだよね。" userName="wbl" createdAt="2025/05/27 23:38:36" color="">}}




{{<matomeQuote body="問題は、何に大らかでいるべきか、ハッキリしてないことだよね。規格違反（長さがおかしいとか）のメッセージは捨てるべき。でも、規格で未定義だけど許されてるタイプ（古い DNS に SRV record 要求とか）は受け入れて転送すべきだよ。それを拒否したら、お前が悪者だ。" userName="AnthonyMouse" createdAt="2025/05/27 23:36:19" color="#ff5c5c">}}




{{<matomeQuote body="絶対逆だろ？全部がめちゃくちゃ細かくて厳格だったら、ネットは脆すぎて使い物にならないよ。君は全部が完全に正しく仕様化されて実装される世界を想像してるんだろうけど、そんな世界、存在しないし、たぶん不可能だね！" userName="emmelaich" createdAt="2025/05/28 04:47:55" color="">}}




{{<matomeQuote body="まあ常識っちゃ常識だよね。 HTML 見てごらんよ。定義がひどすぎて、20年近くテストすらできなかったんだぜ。賢明なやり方は、厳格にして、分かりやすいエラーメッセージを出すことだよ。" userName="oblio" createdAt="2025/05/27 19:33:37" color="">}}




{{<matomeQuote body="この”賢明な”やり方、 HTML に負けたけどな。" userName="fuddy" createdAt="2025/05/27 20:14:33" color="">}}




{{<matomeQuote body="PNGはBGPがまだ若かった頃にこの問題を解決してたんだ。画像ドキュメントの各セクションは、処理に必須かどうかがマークされてるんだよね。だから画像変換とかパレットデータは本来必要なものだけど、メタデータは違う。EXIFを追加するのもこれで簡単になったんだ。ブラウザが理解する必要がないから、配布の仕組みを壊さずに加えられるんだよ。" userName="hinkley" createdAt="2025/05/27 18:15:30" color="#785bff">}}




{{<matomeQuote body="Postelの法則は標準の合理的な解釈に適用するのが正しいやり方だと思うな。インターネットの標準って人間が書いたテキストで、あいまいだったり解釈が複数できたりするんだ。IETFに裁判所はないし（まあ、改訂はできるけど何年もかかる）、バラバラで相互運用できない実装になるより、もっと柔軟に受け入れるべきだね。" userName="zajio1am" createdAt="2025/05/28 00:27:41" color="#45d325">}}




{{<matomeQuote body="それはPostelがそう思ってたってだけで、彼は間違ってたんだよ。何でも許可すると、他の壊れたシステムが出す変な動きまで受け入れなきゃいけなくなるから、システムがもろくなるんだ。もし壊れたファイルがすぐに拒否されてたら、誰もそんなの作らなくなる。既知の形式に従ってる未知の拡張と、単に壊れてるデータ（例えば、データの終端を越えたポインター）は違うんだから。" userName="immibis" createdAt="2025/05/28 11:12:35" color="#ff5c5c">}}




{{<matomeQuote body="おかしな属性をただ捨てれば、ブラックホールが広がるなんてことはないよ。" userName="ExoticPearTree" createdAt="2025/05/28 05:26:45" color="">}}




{{<matomeQuote body="BGPにはフォワードする属性のクラスがあるんだ。知らない属性をフォワードするのは確かだけど、これは知ってる属性で、フォワードしちゃいけないって分かってるやつだったんだよ。実際、Juniperのソフトがここでどれだけ緩かったかちょっと変なくらいだね。セッションの一方がIBGPで、もう一方がEBGPに設定されてたら、最初のメッセージすら通っちゃいけないはずなのに。Juniperは接続確立を通しただけじゃなく、明らかに間違ったルートをフォワードしちゃったんだ。" userName="spwa4" createdAt="2025/05/27 14:29:31" color="#ff5c5c">}}




{{<matomeQuote body="属性が”これをカプセル化して”って言ってる場合、属性だけ捨てちゃうとブラックホールができちゃうよ。カプセル化されるべきトラフィックを引き付けちゃうけど、このルートを通るパケットはカプセル化されてないからドロップされちゃうんだ。" userName="vbernat" createdAt="2025/05/28 05:43:28" color="#785bff">}}




{{<matomeQuote body="ブラウザが寛容なのは技術的に優れてるからじゃなくて、質の悪いウェブサイトでも使いたいってエンドユーザーへの譲歩だし、 crappy (質の悪い) サイトをなんとか表示して自分のブラウザをよく見せようと必死な他のブラウザと競争してるからなんだ。本当に必要じゃない限り、そんな譲歩はしたくないもんだね。" userName="hombre_fatal" createdAt="2025/05/27 20:41:43" color="#ff5733">}}




{{<matomeQuote body="あなたは間違って拒否されるファイルやプロトコル、それに不完全なプロトコル仕様のことを考慮してないんじゃないかな。そして一般的に、Postelの批判者たちは彼が言った文脈を理解してないと思うよ。あなたや他の人たちもおそらく、多くの特定の課題についてはPostelと同じような決断をすると思うね。" userName="emmelaich" createdAt="2025/05/29 01:27:55" color="#ff5c5c">}}




{{<matomeQuote body="どっちにも場所があるんだよ。何でも受け入れるモデルはいくつかの拡張を良くしたけど、ジャンクが受け入れられた時には様々なマルウェアも入り込むことを許しちゃった。" userName="bluGill" createdAt="2025/05/27 13:58:12" color="">}}




{{<matomeQuote body="Postelの法則は”何でも受け入れろ”って意味じゃなくて、”みんなが作ったデファクトのルールを受け入れろ”って意味だよ。もしみんなが”こうやるんだ”って言ってるなら、RFCは無視してでも他の人がやってることをコピーしろってことだね。" userName="colejohnson66" createdAt="2025/05/27 14:44:07" color="#785bff">}}




{{<matomeQuote body="Postel’s Lawがヤバい攻撃（Bleichenbacher attacks）を長く放置させた一因だから、俺は同じ判断はしないな。セキュリティ担当者としては、おかしい入力は絶対拒否する。https://en.wikipedia.org/wiki/Adaptive_chosen-ciphertext_att..." userName="SAI_Peregrinus" createdAt="2025/05/29 13:07:18" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="CVE-2023-4481をネットワーク全体で直すの大変だったの覚えてるわ。この手のバグはマジで悪夢だし、BGPってああいう設計だから、直すのにめちゃ時間かかるだろうね。" userName="sc68cal" createdAt="2025/05/27 13:01:50" color="#45d325">}}




{{<matomeQuote body="昔、通信機器メーカーでBGP機能開発してたけど、ホント複雑すぎると思う。みんな新しい機能どんどん足すし、メーカーはRFCとかドラフトに基づいて実装し続ける。BGPはたぶん廃止されないだろうから、こういうバグは今後も出るんだろうな…。" userName="mintflow" createdAt="2025/05/27 14:40:23" color="">}}




{{<matomeQuote body="AT&TとかJuniper、Ciscoみたいなとこが、MPLSとかVPN絡みの機能でBGPをマジで”クレイジー”にした時期は確かにあったね。めちゃくちゃ複雑だけど、一部には儲かっただろうな。" userName="transitorykris" createdAt="2025/05/28 02:11:32" color="">}}




{{<matomeQuote body="HGC Global Communications Limited、前はHutchison Global Communications Limitedって名前で、HGCって略されてるけど、香港のISPだよ。https://en.wikipedia.org/wiki/HGC_Global_Communications" userName="alecco" createdAt="2025/05/27 13:26:02" color="">}}




{{<matomeQuote body="うちのIOS XRシャーシにもこういうパケット来てるわ。BGP経路広告が多いのと一致してる。上流の機器が何使ってるかはマジでわからんけどね。これ見て、BGPプロトコルってちゃんとファジングされてんのかな？って思った。重要すぎて誰も壊そうとしないのかもね。BGPのファザー書くのは簡単だろうけど、クラッシュの診断はめちゃ大変なんだろうな？" userName="incomingpain" createdAt="2025/05/27 14:54:53" color="#45d325">}}




{{<matomeQuote body="(記事の著者です) うん、記事で書いたのはまさにこれだよ。こっちのリンク見てみてね：https://blog.benjojo.co.uk/post/bgp-path-attributes-grave-er..." userName="benjojo12" createdAt="2025/05/27 15:03:07" color="#ff5c5c">}}




{{<matomeQuote body="ブラボー！<br>素晴らしい研究だね！" userName="incomingpain" createdAt="2025/05/27 15:37:41" color="">}}




{{<matomeQuote body="俺だけかな、BGPって問題起こすまで全然知らなかったんだけど。TCP/IPみたいにインターネットに必須なのに、大学でも仕事でもTCP/IPの本は色々読んだのに、BGPについては全然学ばなかった（大学でも仕事でも本でも何も）。TCP/IPなら家で適当なプロジェクトで”遊んで”学べるけど、BGPでどう”遊ぶ”か全然わかんない。家でどうやって勉強すればいいの？" userName="dakiol" createdAt="2025/05/27 12:56:19" color="">}}




{{<matomeQuote body="BGPを”遊ぶ”には、実際の（しかも大規模な）ネットワークを管理して、グローバルなインターネットトラフィックに繋がってる必要あると思うな。まあ、家でもいじれるけど、それはネットワークシミュレーター使うしかないね。" userName="altilunium" createdAt="2025/05/27 13:00:54" color="">}}




{{<matomeQuote body="会社の内部で10年間BGP使ってるよ、AS65xxxの範囲でね。家でも家、ガレージ、物置の間でBGP使ってて、OSPFより断然好きだな。" userName="ta1243" createdAt="2025/05/27 13:07:05" color="">}}




{{<matomeQuote body="BGP触るならMikrotikとか安いルーターか、birdやFRRみたいなOSS使うといいよ。dockerでコンテナ立ててBGP試すのも簡単。具体的なチュートリアルならhttps：／／blog.ipspace.net／2023／08／bgp-labs-basic-setup／ がおすすめ。全部無料ソフトで試せるよ。" userName="bc569a80a344f9c" createdAt="2025/05/27 13:01:49" color="#785bff">}}




{{<matomeQuote body="ネットワークがどう動くか、どれくらい知りたいかによるね。最近のソフト開発者が根っこの技術知らなすぎて驚かされるわ。たぶん俺が”Information Technology”がもっと広い分野だった2010年以前の人間だからだろうけど。" userName="ta1243" createdAt="2025/05/27 13:36:58" color="">}}




{{<matomeQuote body="少なくとも俺にとって、BGPが解決する問題にピンと来ないのが難しい点の一つかな。BGPとかOSPFとかが役に立つレベルになるまで、ネットワークって結構複雑にできるし。”homelab”環境でBGPが役立つ良いシナリオってどんなのあるの？" userName="zokier" createdAt="2025/05/27 21:27:19" color="">}}




{{<matomeQuote body="そんなに大規模じゃなくてもいいんだよ。多くの人が”個人的な”ASNsを持ってるし。このブログ見てみて（俺のじゃないけど、昔見たの思い出した）：https：／／blog.thelifeofkenneth.com／2017／11／creating-autonomou..." userName="icedchai" createdAt="2025/05/27 13:26:50" color="">}}




{{<matomeQuote body="実際のBGP経験積むのって難しいよね。ラボ環境じゃキャリアの複雑さは再現できないし。そうは言っても、触ってみたいならMikrotiksいくつか繋いで遊んでみるのもいいよ。" userName="protocolture" createdAt="2025/05/27 22:59:00" color="">}}




{{<matomeQuote body="俺は2000年代にcomp-sciをちょっとやって、”IT”専攻だった。下位のCSではルーティングプロトコルはやらなかったし、IT側ではコンパイルとかリンク、ステートマシン、ポインターとかは全然触れなかったな。" userName="unethical_ban" createdAt="2025/05/27 13:48:14" color="">}}




{{<matomeQuote body="BGPってよく問題起こすイメージあるよね。小さいネットワークで弄るのは難しくて、トラフィックエンジニアリングが面白そうだけど、大量のトラフィックと接続が必要。悲しいけど、そういう環境で遊ばせてくれる人いないし。色んな場所にホスティング持ってtracerouteとかすると、ルーティングの多様性が見えて面白いよ。あるISPは近く経由なのに、別のISPは遠回りしてレイテンシが全然違うとかね。[１] https：／／en.m.wikipedia.org／wiki／AS_7007_incident" userName="toast0" createdAt="2025/05/27 16:26:31" color="#ff5c5c">}}




{{<matomeQuote body="Helsinki CSだとBGP、TCP、ipv4、ipv6を結構しっかりやってた記憶があるな。全員が完璧に理解したかは分かんないけど、教える内容は間違いなくあったよ。" userName="nikanj" createdAt="2025/05/27 20:24:21" color="">}}




{{<matomeQuote body="BGPに参加するのに大きいネットワークは必要ないよ。必要なのは /24 (IPv4) か /48 (IPv6) の割り当てと、AS number、あとBGPができるビジネス用インターネット接続だけ。ほとんどのホビイストにはちょっと手が届かないかもしれないけど、不可能じゃないよ。" userName="Bluecobra" createdAt="2025/05/27 13:37:40" color="#ff5c5c">}}




{{<matomeQuote body="ローカルでBGPルーターを立てて遊べるし、公開されてる looking glass サーバーにログインするのも面白いよ。ほとんどの ISP は BGP ルーティングテーブルのフルビューを持ってるルーターを運用してて、Web か ssh/telnet で見れるようになってるんだ。" userName="bc569a80a344f9c" createdAt="2025/05/27 13:06:58" color="#785bff">}}




{{<matomeQuote body="Cisco Packet Tracer みたいなシミュレーターで BGP を学べるよ。資格勉強で使ったな。地域 ISP で働いてた時の上司は BGP の達人で、外部ルーティングを”黒魔術”って言ってた。一度光ファイバーが切れた時、上司が BGP でルート調整して、ひどいパケットロスでもお客さんを繋げた経験があるよ！" userName="AStonesThrow" createdAt="2025/05/27 23:02:54" color="#ff33a1">}}




{{<matomeQuote body="インターンで大企業のネットワーク機器設定をした経験があるよ。 AT&T の入れ替えとか。ほとんどのオフィスに独自の ASN があって、vRouter をダミー AS とピアリングさせるのが面白かった。ネットワーク無知だったけど良い経験だった。卒業後オファーもらったけど断っちゃった。今思えばネットワークエンジニア続けてたらもっと稼げたかもな。" userName="wildzzz" createdAt="2025/05/27 19:21:57" color="">}}




{{<matomeQuote body="OpenBSD には bgpd(8) が最初から入ってるよ。これは BGP デーモンで、ネットワークルーティングテーブルを管理して、他の BGP システムと”ネットワーク到達可能性”の情報を交換するんだ。RFC 4271 に基づく BGP v4 を使ってるよ。" userName="SoftTalker" createdAt="2025/05/27 19:57:56" color="#ff33a1">}}




{{<matomeQuote body="2000年代はチームが幅広く何でもやってて、専門外のことも自然と学べたんだよね。DBAもネットワーク担当者と一緒のチームにいるだけで OSPF のこととか学べた。今はチームが細分化されて、そういう専門分野を跨いだ学習が減ってるみたいだね。" userName="ta1243" createdAt="2025/05/27 16:54:06" color="">}}




{{<matomeQuote body="ビジネス用の接続ですらいらないよ。VPS か colo へのトンネル越しに BGP ができるんだ。" userName="icedchai" createdAt="2025/05/27 13:46:17" color="#ff33a1">}}




{{<matomeQuote body="インターネットの研究者はよく RIPE と RouteViews を使ってるよ。<br>https://www.routeviews.org/routeviews/about/<br>https://stat.ripe.net/docs/02.data-api/" userName="_gmax0" createdAt="2025/05/27 20:05:03" color="#ff5733">}}




{{<matomeQuote body="著者がお気に入りのpodcast「On The Metal」でこの話をしてたよ！<br>https：／／onthemetal.transistor.fm／episodes／kenneth-finnegan" userName="Orochikaku" createdAt="2025/05/27 15:47:14" color="">}}




{{<matomeQuote body="そうそう！15年くらい前、前の会社で内部も外部も全部BGPでルーティングしてたんだ。IGPとしてBGP使うなんてありえないって言われてたけどね。経路再配布もいらないし、セッション監視もコマンド一つで済んで良かったよ。" userName="Bluecobra" createdAt="2025/05/27 13:30:36" color="#45d325">}}




{{<matomeQuote body="BGPは落ち着いてて頑丈だね。OSPFは正確で速い。それぞれネットワークの中で居場所があるんだよ。" userName="l_vorenus" createdAt="2025/05/27 15:21:12" color="">}}




{{<matomeQuote body="OSPF（Open Shortest Path First）は「内部」ルーティングプロトコルだよ。基本的には、全部同じ組織が管理してるルーター同士で経路を共有するためのもの。<br>BGP（Border Gateway Protocol）の主な目的は、違う組織が管理してるルーター間で経路を共有すること。組織内で使うこともできるよ。どんな経路を送受信するか、すごい細かく制御できるんだ。" userName="unethical_ban" createdAt="2025/05/27 13:31:11" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="大学でBGPちょっとやったけど実践はなし。試すならネットワークシミュレーターがいいよ。僕はginiを使ったけど、著者はgns3を使ってるね。gns3はcisco向けで覚えるのが大変みたい。giniはシンプルだけど機能は劣るかな。<br>［1］ https：／／citelab.github.io／gini5／<br>［2］ https：／／docs.gns3.com／docs／" userName="acc_297" createdAt="2025/05/27 13:24:11" color="#ff5c5c">}}




{{<matomeQuote body="学部のネットワークの授業ではBGPやらなかったけど、大学院の授業では触れたよ。色々なASのシミュレーターになるpythonパッケージを使ったんだけど、どれだったか思い出せないな。" userName="ecshafer" createdAt="2025/05/27 13:11:12" color="">}}




{{<matomeQuote body="BGPは国際配送みたいで、世界には必要だけど一般人は関わらないもの。試すならhttps：／／www.eve-ng.net／みたいなシミュレーターか、VM立ててbirdやquaggaみたいなBGPデーモンを使うといいよ。<br>eg：https：／／bird.network.cz／https：／／www.nongnu.org／quagga／etc." userName="ajsnigrutin" createdAt="2025/05/27 14:09:46" color="#45d325">}}




{{<matomeQuote body="BGPってさ、色々なハードウェアベンダーがこういう処理の標準に合意したら、もっと安定するんじゃないかと思うんだよね。もしかして、本当の問題は各ベンダーが囲い込みたいから標準化しないってこと？<br>免責事項：俺のBGPの理解は薄っぺらいし浅いから、専門家じゃないよ。" userName="Perenti" createdAt="2025/05/28 02:53:08" color="">}}




{{<matomeQuote body="こんなバグの影響ってマジでかいのにさ、相互運用性のテストとかやる団体とかないの？<br>もしあって、このバグがテストされてないんなら、ファジーテストとか自動テストとかで、もっとテストケース作ったりしないのかな？テストに時間かかっても全然OKでしょ。<br>多分この記事の作者は、ある程度カバーしてるファジーテストツールとか作ってて、前に似たような問題にぶち当たったんだろうな。ベンダーがこの成果に飛びつかないのが信じられないわ。" userName="jiveturkey" createdAt="2025/05/27 23:38:29" color="#ff5c5c">}}




{{<matomeQuote body="このバグ、前にいくつかのベンダーでも起きてたんだよ。<br>https://www.kb.cert.org/vuls/id/347067<br>CVE-2023-4481 (Juniper)<br>CVE-2023-38802 (FRR)<br>CVE-2023-38283 (OpenBGPd)<br>CVE-2023-40457 (EXOS)<br>Aristaはその時は影響なかったみたい。" userName="CSN3RD" createdAt="2025/05/27 21:27:16" color="#ff5c5c">}}




{{<matomeQuote body="インターネットの配管みたいにさ、規模も複雑さも偶然性も、こんなにごちゃごちゃしたものって、今まで他に何かあったっけ？" userName="hoseja" createdAt="2025/05/28 09:58:53" color="">}}




{{<matomeQuote body="＞ At 7AM (UTC) on Wednesday May 20th 2025<br>May 20thってTuesdayだったよ、念のため言っとくけど’" userName="bhaney" createdAt="2025/05/27 15:27:05" color="">}}




{{<matomeQuote body="ナイス指摘！<br>今週3つくらいミニインシデント追っかけてたから、ごっちゃになっちゃったわ。<br>すぐ記事の方を直すね。" userName="benjojo12" createdAt="2025/05/27 15:36:18" color="">}}




{{<matomeQuote body="BGPはインターネットのルーティングプロトコルそのものだよ。自律システム間はほぼこれ一択。「インターネット」は「グローバルBGPルーティングテーブル」って言っても過言じゃないくらい。<br>BGPはマルチキャストじゃなくて、TCPポート179で通信相手とユニキャスト通信するんだ。<br>ただ、マルチキャスト自体はインターネットでもちゃんと動くよ。今はあんまり使われてないけど、Internet2では2021年までに廃止されたけど、原理的には問題ない。" userName="bc569a80a344f9c" createdAt="2025/05/27 12:42:23" color="#ff33a1">}}




{{<matomeQuote body="＞ That said, multicast works just fine over the Internet. It’s not commonly used, certainly not by home users and not very often by enterprise users, and was phased out on Internet2 by 2021 (I think?), but there’s absolutely nothing in principle that would make it not work.<br>原理的にはね、動かないことはない。<br>実際問題としては、多くのISPはマルチキャスト転送するように機器を設定してないと思うよ。テレビに使ってる一部を除いてね。しかもそういうところは多分他のISPとは相互接続してないだろうし。" userName="toast0" createdAt="2025/05/27 15:12:14" color="#ff33a1">}}




{{<matomeQuote body="大昔、UK ISPsはBBCとかITVと一緒にMBoneに参加してたんだよね。BBCのサイトに詳しい情報があるよ。なんでそうしてたかっていうBrandon Butterworthsのメモもある。バックボーンとCDNsの成長ぶりも示してる。2007年頃は「オリンピックの視聴者5万人、10Gbit+の配信はユニキャストじゃキツイ」って感じだったのが、2020年にはBBCの社内CDNがその100倍を25万人に配信、5年後の今（2025年）はもう桁違いになってるはず。だってiplayerは500万人が同時に見てるんだから。2035年のTV放送終了までには、インフラはさらに100倍にスケールして5億人が同時視聴できるようになるだろうね。色んなフォーマットの動画を、Wi-Fiで繋がったスマホやタブレットやTV見てる人たちにマルチキャストで送るなんて意味ないもん。2007年にPCがISPに直結してた頃とは消費者の体験が全然違うんだ。" userName="ta1243" createdAt="2025/05/27 17:29:42" color="#785bff">}}




{{<matomeQuote body="multicastをインターネット越しにルーティングするのは、stunnelとかVPN、GREみたいなトンネルを使えば間違いなくできるよ。ICE exchangeなんかは開発とか認証用のmulticastにstunnel使ってるしね。" userName="Bluecobra" createdAt="2025/05/28 16:06:15" color="#38d3d3">}}




{{<matomeQuote body="FWIW、BGP自体はmulticastを“使わない”のは100％正しいけど、“multicastのルーティング情報”を広めることはできるんだ。技術的にはインターネットでmulticastをサポートすることは確かに可能で（だからMBGPなんてのが発明された）、実際には色々な理由で普及しなかったけどね。" userName="rnxrx" createdAt="2025/05/27 14:27:37" color="#785bff">}}




{{<matomeQuote body="実際、IPv4もIPv6もmulticastアドレスの予約済み範囲（昔は”Class D”って言われてた）を持ってるんだ。mboneの実験の後、この範囲が全然使われてないのに気づいて、IPv4アドレスが枯渇してきた時にこの範囲を再利用したらって提案する人が結構いたんだよね。興味深いのは、OSPFだけじゃなくて、他の多くのInterior routing protocols、mDNS、LLMNR、NTPにも予約済みmulticastアドレス（そう、アドレスであってポートじゃないよ）があること。BGPには予約がないのは目立つね。" userName="AStonesThrow" createdAt="2025/05/28 16:16:07" color="#ff5c5c">}}




{{<matomeQuote body="BGPだけがAutonomous Systems間の唯一のルーティングプロトコルだって言うのは、ある意味正しくてある意味間違ってるかな。多くのAS間接続は事実上オーダーメイドだから、別のプロトコルを使うこともできるけど、グローバルなBGPメッシュに参加するには、BGPと十分似たセマンティクスを持ってなきゃいけないね。特にAS-pathの概念をサポートする必要がある。でも、それ以外の普遍的な要件はないと思うな。BGPはOSPFみたいに単一の分散アルゴリズムじゃなくて、接続されたASペアごとに完全に独立したBGPインスタンスが動いてて、それが間接的に一部のデータを共有してグローバルなシステムを形成してるんだ。" userName="immibis" createdAt="2025/05/27 17:22:10" color="#38d3d3">}}




{{<matomeQuote body="Anycastはインターネットですごく便利だよね！" userName="ai-christianson" createdAt="2025/05/27 13:19:03" color="">}}




{{<matomeQuote body="でもAnycastは全く別の代物だよ。Anycastはただのunicastなんだけど、同じIP空間を複数の宛先からアナウンスして、ネットワークが一番近い宛先へのパケットの送り方を判断するんだ。もしその宛先の一つがダメになったら、ただ次の近いところに行くだけ。Unicasts、multicasts、broadcastsは全部、根本的に動作が違って、ネットワーク機器による特別な扱いが必要なんだ。Anycastはunicastの特殊なケースに過ぎなくて、一般的にネットワーク機器は全くそれを意識してないよ。" userName="bc569a80a344f9c" createdAt="2025/05/27 13:43:18" color="#38d3d3">}}




{{<matomeQuote body="BGPがprivate networksだけのためだなんて、全くそんなことないよ。インターネットはBGPの上に成り立ってるんだから。君が考えてるのはiBGPかOSPFみたいなものかな？" userName="FL410" createdAt="2025/05/27 12:39:17" color="#38d3d3">}}




{{<matomeQuote body="“インターネット”っていうのは、異なる主体が運営するたくさんの独立したネットワークの集まりのこと。BGPは、それらのネットワークがルーティング情報を交換することで互いに接続できるようにするものなんだ。昔mboneっていうのがあったね。最近はランダムなmulticastはほとんど送れないけど、ISPsではIPTVで盛んに使われてるよ。" userName="Hikikomori" createdAt="2025/05/27 15:51:08" color="#38d3d3">}}




{{<matomeQuote body="インターネット上のすべてのトラフィックは、BGPを通じて伝播された経路によってルーティングされてるんだ。隣接するネットワークが、自分がどんなIPを始点にしてるか、どんなネットワークに接続してるかを互いに教え合う方法がこれなんだよ。" userName="patmorgan23" createdAt="2025/05/27 13:20:37" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
