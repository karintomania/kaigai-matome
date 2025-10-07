+++
date = '2025-09-30T00:00:00'
months = '2025/09'
draft = false
title = 'Kagi Newsの正体判明！AIがニュースを要約生成、その信頼性は？'
tags = ["AI", "ニュース", "Kagi", "LLM", "情報信頼性"]
featureimage = 'thumbnails/red2.jpg'
+++

> Kagi Newsの正体判明！AIがニュースを要約生成、その信頼性は？

引用元：[https://news.ycombinator.com/item?id=45426490](https://news.ycombinator.com/item?id=45426490)




{{<matomeQuote body="KagiのニュースがRSSフィードをLLMに入れて要約生成してるか確認したいんだけど。ブログではAIとかLLMって明記してないよね。LLMのソース引用の信頼性には懐疑的だし、時々ソースなしで純粋なLLM出力に見えるんだけど。" userName="__jonas" createdAt="2025/09/30 16:04:33" color="#ff5733">}}




{{<matomeQuote body="LLMが使われてる具体的な証拠なんだけど、GitHubに「LLMの幻覚問題」ってKagiの人が言ってるIssueがあるよ。あと、Kagiのaboutページにも「要約は間違いあるかも。大事な情報は確認してね。」って書いてある。URLはhttps://github.com/kagisearch/kite-public/issues/97とhttps://kite.kagi.com/about。" userName="Harmon758" createdAt="2025/09/30 18:23:26" color="#785bff">}}




{{<matomeQuote body="うん、その通りだよ。KagiはLLMに肯定的だから、そこは意見が合わないかもね。でも、各項目のソースはちゃんと引用されてるから、ちょっと良いリンクアグリゲーターって思ったらどうかな？" userName="mvieira38" createdAt="2025/09/30 16:20:10" color="">}}




{{<matomeQuote body="AIを使うのは全然いいんだけど、記事の中でAI/LLM生成って全く言ってないのがめっちゃ嫌だね。これは絶対ダメだと思うし、めちゃくちゃガッカリしたよ。" userName="jama211" createdAt="2025/09/30 17:11:29" color="">}}




{{<matomeQuote body="「フェイクニュース！」から「ニュースはフェイクかも」にたった8年で変わったってのが面白いね。" userName="jazzyjackson" createdAt="2025/09/30 18:45:18" color="">}}




{{<matomeQuote body="なんで要約生成に使われた技術を気にするんだ？もし昔のNLPサマライザーを使ってたとしても、どう思う？" userName="stavros" createdAt="2025/09/30 17:44:03" color="">}}




{{<matomeQuote body="正直に聞くけど、もう試した？ https://kite.kagi.com<br>あれはアグリゲーター（ground.newsとかみたいに）に近い感じがするよ。ほとんどの文で元の記事を引用してるしね。記事の中に良い要約があるのはもちろんだけど、複数の記事を組み合わせてメタ記事を作ってるってことだと思う。別に新しいことじゃないけど、メタ記事の提示方法と毎日発行されるのはすごく良い特徴だね。" userName="atonse" createdAt="2025/09/30 16:26:14" color="#ff5733">}}




{{<matomeQuote body="記事の中で「要約を生成してる」なんて全然言ってないよ。俺もこれただのちょっといいRSSアグリゲーターだと思って読んでたし。「毎日のブリーフィング」の書き方がめちゃくちゃ曖昧なんだよね。" userName="lukeschlather" createdAt="2025/09/30 18:14:00" color="">}}




{{<matomeQuote body="フェイクニュースの需要が多すぎるし、補助金もいっぱいあって、作るのも超簡単じゃん。マジなニュースって、Bloombergターミナルみたいな有料サービスだけになっちゃいそうだな。" userName="pjc50" createdAt="2025/09/30 19:30:48" color="">}}




{{<matomeQuote body="LLMに情報源を求めると、正しい保証がないのはもちろん、壊れたリンクが出てくることが多いんだ。LLMがリンクを幻覚しているのか、昔は存在したのか分からないけど、CDNライブラリとか法律のソースとかね。" userName="whatamidoingyo" createdAt="2025/09/30 17:15:46" color="#ff33a1">}}




{{<matomeQuote body="まあいいけど、もう一度聞きたいんだけどさ、要約がどうやって作られたか、なんでそんなに気にするの？" userName="stavros" createdAt="2025/09/30 18:16:48" color="">}}




{{<matomeQuote body="質問された人じゃないけどさ、要約が不正確になりやすい方法で作られたかどうかって、知る価値はあると思うよ。" userName="edaemon" createdAt="2025/09/30 18:35:31" color="">}}




{{<matomeQuote body="それってどんな方法でも同じじゃない？人間だって見てきたでしょ？" userName="stavros" createdAt="2025/09/30 18:45:51" color="">}}




{{<matomeQuote body="フェイクは作りやすくなるし、完全に信頼できる機関は減る一方だよね。悲しいけど、君の言う通りだと思う。怖いけど、これからは検証済みの情報を得るにはお金を払う必要があって、それも欲しい情報ごとにサブスクが分かれる未来になりそうだね。" userName="byearthithatius" createdAt="2025/09/30 19:40:24" color="#ff5c5c">}}




{{<matomeQuote body="僕はAI懐疑派だけど、これはすごく良い技術の使い方だと認めざるを得ないな。LLMはテキスト要約が得意だし、Kagi Newsは基本的にそれだよね。情報源はどこから引っ張るか知ってるから、事前に静的に定義できるはずで、LLMがそこを生成してるとは思わない。だから、静的なニュースサイトリストからトップニュースを持ってきて、特定構造で要約するのを自動化するなら、間違いは少ないはず。比較的短いテキストを要約する時にLLMが幻覚を起こす可能性はかなり低いよ。" userName="imiric" createdAt="2025/09/30 16:29:39" color="#ff5c5c">}}




{{<matomeQuote body="LLMに情報源を求めると、何でもやろうとするから、もしテキストが実際に何らかのソース（ツール呼び出しやコンテキストへの内容注入など）から来ていない場合、そう指示されない限り、何もしないよりはソースをでっち上げるだろうね。" userName="CaptainOfCoit" createdAt="2025/09/30 17:40:41" color="#38d3d3">}}




{{<matomeQuote body="うん、僕には上のコメントで書いたように、やっぱりLLMが生成したテキストに見えるよ。’ほぼ全ての文が元記事を引用してる’って言うけど、僕が間違ってたら教えて欲しいけど、LLMにソースや引用を求めたからって、一緒に生成されたテキストが正確である保証はないと思うんだ。それに、全然引用がないテキストもたくさんあるよ。ここにある3つのセクション（Historical background, Technical details, Scientific significance）は、ソースが何も引用されてないよ: https://kite.kagi.com/s/5e6qq2" userName="__jonas" createdAt="2025/09/30 16:37:43" color="#ff5c5c">}}




{{<matomeQuote body="僕はかなりのAI悲観論者だけど、KagiのLLMの使い方はこれまで見た中で一番上品で実用的だと思うよ。常にオプトイン形式だし（例えば、AI要約が欲しいなら検索クエリに’?’を付ける、Googleみたいに要約がいらないなら’罵り言葉’を付ける、ってのとは違う）、押し付けがましくないし、内容を作り出すんじゃなくて要約や集約に焦点を当ててるからね。" userName="NobodyNada" createdAt="2025/09/30 17:15:53" color="#785bff">}}




{{<matomeQuote body="参考までに、Google検索に`&udm=14`を追加すると、AIの結果やその他諸々の余計なものを削除できるよ。" userName="arrosenberg" createdAt="2025/09/30 17:42:08" color="#ff5c5c">}}




{{<matomeQuote body="俺、LLMにはめっちゃ期待してるんだけど、毎日配信されるニュースまとめだとやっぱ人間の目を通してほしいって思うんだよね。LLMは人間のバイアスが少ないかもしれないけど、結局違う種類のバイアスと交換してるだけって気がする。" userName="meowface" createdAt="2025/09/30 16:59:08" color="#ff33a1">}}




{{<matomeQuote body="「ニュース記事は生成されます」って言葉を聞くと、もうあちこちに赤信号が点滅するよ。それってニュースじゃないでしょ。ニュース風味の適当なガラクタだよ。" userName="devmor" createdAt="2025/09/30 16:12:21" color="#ff5c5c">}}




{{<matomeQuote body="これは白黒はっきりする話じゃなくて、連続してるんだよ。Google Newsだって記事のグルーピングはAI（LLM以前の技術）を使ってるし、Kagiはそれを一歩進めただけ。君の懸念はわかる。これは便利なまとめ方で、もし気になる記事があればLLMの要約は飛ばして、提供されてるソースをクリックすればいいだけだよ（Google Newsと一緒）。" userName="BeetleB" createdAt="2025/09/30 16:22:35" color="#ff33a1">}}




{{<matomeQuote body="＞フェイクを作るのがどんどん簡単になってる<br>だからこそ、60年代の月面着陸捏造説は革命的だったんだよ。あのプロジェクトの規模はとてつもなかった。" userName="andrewinardeer" createdAt="2025/09/30 20:55:21" color="">}}




{{<matomeQuote body="「スロットマシンみたいなドーパミンヒット」をなくすために、一日一回配信ってだけで価値があるよ。Google Newsの代わりをずーっと探してたんだ。Ground Newsのサブスクを申し込もうかと思ってたけど、もう2〜3ヶ月待ってみるかな。Google Newsの代替サービスって、特にモバイルファーストの再デザインで製品が弱体化してから10年以上もずっと不足してたんだよ。これでGoogleから離れる製品が一つ増えるね。でもGmailは相当手強いだろうな。" userName="hadlock" createdAt="2025/09/30 17:52:25" color="#45d325">}}




{{<matomeQuote body="LLM生成の要約だよね、もちろん。君のコメントが何を言いたいのか理解しようとしてるんだけど、LLM要約とLLM生成テキストの違いを指摘してるの？それとも、LLMが要約を生成してるってことを透明にしてないって言いたいの？（人間エディターと対比して？）<br>だって、俺がアプリを起動した時、要約は不正確な場合があるって書いてあったもん。どうやら君は要約の出典が適切に示されてない例を見つけたみたいだね。俺の推測だけど、Kagiはこれをちゃんと修正すると思うよ。だって最初の数ページを見た限り、ほとんどの記事には要約に引用元がついてたからね。<br>多くの人と同じように、俺も潜在的なハルシネーションに備えて、どこにでも引用元が欲しいと思う。もちろん、引用元があるからってハルシネーションがないって保証はないけど、「ん？」って思った時に、すぐに詳しく読める機会を与えてくれるからね。<br>でも、別のコメントでphys.orgとGoogleが同じものを指してるって話があったね。俺も同意するよ。これはGround Newsみたいな他のアグリゲーターにもある問題なんだ。重複をまとめるグラフみたいなのを構築する必要があるよ。AP／Reutersの通信記事の再掲載が26件もあるのに、「30ソース」って言われても意味ないもんね。それは30ソースとは数えないべきだよ。" userName="atonse" createdAt="2025/09/30 16:59:52" color="#38d3d3">}}




{{<matomeQuote body="ユーザーには便利だけど、ジャーナリズムに関わる人にとっては悲劇的に悪いことだね。AMP、インスタントアンサー、AI概要とか、今となっては検索エンジンにやられるのは慣れてるだろうけどさ。現状、5万人のユーザーベースじゃ大した影響はないだろうけど、それでもね…。" userName="input_sh" createdAt="2025/09/30 16:49:19" color="#ff5733">}}




{{<matomeQuote body="＞KagiはLLM楽観主義ブランドである<br>Kagiの創設者だけど、個人的にはLLM楽観主義者じゃないよ。LLMは根本的に自己回帰的な性質が壊れてるから、「Star Trek」レベルの便利なコンピューター（いつか人間は到達すると思うけど）には連れて行ってくれないと思ってる。別の方法が必要になるだろうね。ちょっとしたニュアンスだけど、これは大事なことだよ。Kagiっていうブランドは、ユーザーに役立つツールを作ってるだけで、特定の技術に特別な愛着があるわけじゃないんだ。" userName="freediver" createdAt="2025/09/30 20:06:30" color="#ff5733">}}




{{<matomeQuote body="アメリカ人として言うと、月面着陸がでっち上げだったって確認されたら、今それが本当だって信じてるよりもっと誇りに思うだろうな。" userName="fgalhwrg" createdAt="2025/09/30 21:39:01" color="">}}




{{<matomeQuote body="それやったら、ボット認定され始めたんだ。だからもうKagiをフルタイムで使うしかなかったんだよ、じゃないと「自転車を見つけろ」みたいなくだらないのに endlessly 悩まされちゃうからね。Googleは広告やしょぼいサジェストが減るのが嫌なんだと思う。" userName="bbarnett" createdAt="2025/09/30 18:00:46" color="">}}




{{<matomeQuote body="ChatGPTってさ、うちのサイトにないページとか、間違ったURLにアクセスさせまくって困るんだよね。例えば”/glossary/love-parade”とか、”/guides/blue-card-germany”じゃなくて昔から”/guides/blue-card”なのに変なURLを参照したりさ。一体何なのって感じ。”/guides/cost-of-beer-distribution”なんて全く意味不明だし。AIの信頼性マジでどうなの？" userName="nicbou" createdAt="2025/09/30 17:55:09" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Gmailは一番置き換えにくいって意見あるけど、俺は逆だと思うな。GoogleのカレンダーとかDocsとかYouTubeに比べたら、Gmailはただ別のプロバイダに変えてアドレス更新すればいいだけじゃん？ストレージだって15GBで普通だし。旧メールもインポートできるしね。アカウントの更新が大変なだけ？それともGmail特有の機能ってそんなに重要？正直、メールプロバイダの機能ってほとんど気にしないけどね。" userName="jacobgkau" createdAt="2025/09/30 18:16:18" color="">}}




{{<matomeQuote body="Kagi Newsの『1日1回更新、正午（UTC）頃』ってデザイン、マジで最高だね。ニュースをエンドレスな習慣じゃなくて、ちゃんと区切られた『儀式』にするってのが良い。無限スクロールって、結局ユーザーが顧客じゃなくて消費者にされてる証拠だもん。Kagiの決定には全部賛成できないけど、この方針は金メダル級だよ。" userName="ivanjermakov" createdAt="2025/09/30 15:53:50" color="#ff33a1">}}




{{<matomeQuote body="『無限スクロールは消費者である指標』って意見、マジで納得。ソーシャルネットワークからソーシャルメディアへの移行って、微妙でたちが悪いよね。友達と話す場が、アルゴリズムが選んだコンテンツを消費する場に変わっちゃったんだから。これって、住宅ローン担保証券（CDO）の供給不足が「合成CDO」を生んだみたいに、ソーシャルメディアと24/7ニュースはコンテンツの合成CDOだよ。本当の有用性って限りがあるんだから。CDOについて詳しく知りたければこれ見てね！https://m.youtube.com/watch?v=A25EUhZGBws" userName="ethbr1" createdAt="2025/09/30 16:04:49" color="#38d3d3">}}




{{<matomeQuote body="『ソーシャルメディアと24/7ニュースがコンテンツの合成CDO』って表現、すごく良いね。ソーシャルメディアのコンテンツって、実際の交流の派生的で合成されたものなんだよ。コンテンツクリエイターとかインフルエンサーは、俺たちに”つながってる”って思わせるけど、それって本物の人との交流やコミュニケーションとは全く別物だから。" userName="captainkrtek" createdAt="2025/09/30 16:10:33" color="#785bff">}}




{{<matomeQuote body="パラソーシャル関係って昔からあったけど、今じゃマジでどこにでもあるし、完全に社会的に受け入れられちゃってるよね。昔はセレブとか別世界の人向けだったのが、今じゃ”私たちと同じような人”に焦点が当たってるのが、めっちゃ不健康だと思う。これは研究対象にするべきじゃないかな。" userName="Loughla" createdAt="2025/10/01 16:56:58" color="#38d3d3">}}




{{<matomeQuote body="CDO = collateralized debt obligation。 obscureな専門用語は展開してくれよな。みんながみんなお前のニッチに住んでるわけじゃないんだから。" userName="sph" createdAt="2025/10/01 07:58:54" color="">}}




{{<matomeQuote body="ちゃんと説明へのリンク、あるじゃんか。" userName="ethbr1" createdAt="2025/10/02 21:37:31" color="">}}




{{<matomeQuote body="Kagiのやり方には賛成だけど、昨日のニュースも見たいんだよね。12記事ってちょっと少ないな。数日おきにまとめて何があったか確認できると嬉しいんだけど。" userName="oezi" createdAt="2025/09/30 18:39:43" color="#ff5c5c">}}




{{<matomeQuote body="俺、過去から現在へ流れる逆時系列のフィードにハマってるんだ。Reederってフィードリーダー使えば、RSSとかMastodon、BlueSky、redditなんかもまとめて見れるし、自然な終わりがあるから全部読まなきゃ！って焦りもないしね。これ最高だよ。https://reederapp.com" userName="ascagnel_" createdAt="2025/09/30 20:38:02" color="#ff33a1">}}




{{<matomeQuote body="このアプリ、久々に見たわ。いつからサブスクになったの？昔は買い切りだったよね？Reeder ClassicとしてMac App Storeにもあるみたい。あと、オープンソースの代替として、https://netnewswire.com - https://github.com/Ranchero-Software/NetNewsWire もあるよ。Macネイティブだし。" userName="crossroadsguy" createdAt="2025/10/01 03:01:58" color="">}}




{{<matomeQuote body="買い切りアプリとNetNewsWire（どっちも最高のRSSリーダー！）は、サブスク版のReederとはアプローチが違うね。RSSをメールみたいに扱って、全部読むか、最低でも既読にするって考え方だよ。" userName="ascagnel_" createdAt="2025/10/01 13:59:22" color="">}}




{{<matomeQuote body="1年前からニュースを読む習慣を変えたよ。今は日曜日だけまとめて読むんだ。週中は全く読まない。僕のじいちゃんが農家だった頃と同じやり方だよ。<br>この方法、すごく便利だって気づいたんだ。情報に追いつけるし、ニュースが展開・成熟する時間も取れる。憶測や噂が減って、ストレスが減ったよ。みんなが1日に10回以上もニュースを見てるのが信じられない。僕らの脳はそんな風にはできてないんだ。" userName="sjw987" createdAt="2025/10/01 12:27:32" color="#785bff">}}




{{<matomeQuote body="ちょっと疑問だな。ミュンヘンの記事がハイライトされてるけど、いくつか事実誤認もあるし、情報が古すぎるんだ。新しい情報がたくさん出てるのにね。<br>情報源の選び方もおかしいよ。Aljazeera、rt.com、South China Morning Post？ドイツからの一次情報源だって十分あるのに。1日のニュースまとめは便利だけど、トピック選びや報道の仕方にも気を配るべきだよ。" userName="tethys" createdAt="2025/10/02 07:13:05" color="">}}




{{<matomeQuote body="このサービスは間違った方向だと思う。必要なのは良いジャーナリズムで、優れた要約アグリゲーターじゃないよ。<br>要約は元の記事の代わりにはならない。文脈や詳細、分析を削ぎ落とすし、内容への責任もない。元の記事へのリンクがあるって言っても、ほとんどの人は読まないでしょ？<br>情報通になる’ライフハック’なんてないんだ。正直言って、このサービスは情報リテラシーのない人が’情報通’になることを勘違いしてるように見えるよ。" userName="fresh_broccoli" createdAt="2025/09/30 17:31:01" color="#ff5c5c">}}




{{<matomeQuote body="彼らが言う’エコーチェンバー’や’多様なグローバル視点’ってのは理論上は良いけど、どこまでやるべきなの？<br>政治家の発言をコメントやファクトチェックなしでそのまま載せる？太平洋横断の記事に’地球は平面だから不可能’なんて含める？<br>メディアの過度な偏見は問題だけど、完全に偏見のないメディアが役に立つとは思えない。そういうのを求める人は、深く考えてないか、自分の都合の良い情報だけが欲しいんだと思うよ。" userName="fresh_broccoli" createdAt="2025/09/30 17:44:34" color="#ff5c5c">}}




{{<matomeQuote body="’全ての視点を表現するのは理論上は良いこと’だね。それよりもはるかに大きな偏見の問題は、’省略による偏見’だよ。だから、プレゼンターの政治的意図に合うかどうかに関わらず、全ての記事を含めることが素晴らしいスタートになるだろうね。" userName="UberFly" createdAt="2025/09/30 19:52:23" color="#785bff">}}




{{<matomeQuote body="ある視点がオーバートン・ウィンドウ内にあるかどうか、誰が決めるの？" userName="hatthew" createdAt="2025/09/30 21:26:05" color="">}}




{{<matomeQuote body="’政治家の発言をコメントやファクトチェック、文脈なしでそのまま再現すべきか？’に対しては、イエスだよ。それはインタビューであって、要約や短い発言、一文の引用なんかよりずっと良いね。" userName="carlosjobim" createdAt="2025/09/30 18:17:28" color="">}}




{{<matomeQuote body="これは、すでに事実や文脈を知っている、情報に通じた人々がいることを前提としているよね。" userName="mac-attack" createdAt="2025/09/30 19:01:09" color="">}}




{{<matomeQuote body="政治家やCEOのウソを文脈なしで垂れ流すのは役に立つニュースじゃないよ。そういうのが好きなら、SNSでフォローすればいいじゃん。" userName="skywhopper" createdAt="2025/10/01 11:58:16" color="#45d325">}}




{{<matomeQuote body="インタビューは昔からジャーナリズムの重要な要素だよ。深い情報を知りたければインタビューを読むか聞くべきだね。世界のリーダーは代表として嘘をつくこともあるけど、聞き手としてはそれを理解しつつ必要な情報を得るのが成熟した態度だよ。それに、インタビューは対立する意見を持つ人々の報道で補完されるべきだね。" userName="carlosjobim" createdAt="2025/10/01 13:02:28" color="#ff5c5c">}}




{{<matomeQuote body="”より良いジャーナリズムが必要で、優れた要約アグリゲーターじゃない”って意見には賛成だけど、どうすれば実現できるの？ジャーナリズムはとっくに死んでるよ。ニッチなテック企業は情報の消費方法を改善するだけで、社会問題を解決できない。このサービスは、注意力やデータを奪うサイトでの延々と続くDoomscrollingをやめて、短時間で世界の出来事を把握するためのものだよ。興味があればリンク先のソースを見たり、別の場所で調べればいい。全体像を素早く把握するには素晴らしいと思うよ。" userName="imiric" createdAt="2025/09/30 18:01:01" color="#45d325">}}




{{<matomeQuote body="ジャーナリストにより良いツールを提供することで、魅力的なジャーナリズムが成功している事例があるよ（HNは嫌うけどね）。多くのメディアは今、自分たちの価値を改めて証明する必要があるって気づいてるみたい。NordicsやFranceには素晴らしい購読制メディアもいくつかあるよ。" userName="danielskogly" createdAt="2025/09/30 18:45:03" color="">}}




{{<matomeQuote body="それってまさにAxiosがやってることだね。彼らはそれで儲けてるし（情報源は書いてないけど）。だからKagiもこの路線を追及するんだろうな。僕は以前ニュース中毒だったけど、 casualなニュース読者は、ニュースを全く読まない人よりも誤った情報を持ってる可能性が高い、って学んだよ。ニュースを読むなら徹底的にやるか、全く読まないか、どっちかだね。見出しだけ見る人はもっと誤解してるかも。記事の内容が見出しと全然違うことなんてよくあったしね！" userName="BeetleB" createdAt="2025/09/30 19:07:54" color="#ff33a1">}}




{{<matomeQuote body="Kagiは、本当に良い意図で物事を改善しようとサービスを出してる数少ない企業の一つみたいだね。このままでいてほしいな。（Kagi Assistantにはすごく懐疑的だったけど、今では満足してるKagi Ultimateの購読者だよ）。" userName="buster" createdAt="2025/09/30 15:48:02" color="">}}




{{<matomeQuote body="Assistantは好きだけど、主にClaudeを直接使ってるよ。でも、すごく素早い作業には便利だね。Kagiがサービスに対して料金を取ってるのが良いと思う。そうすれば、広告じゃなくて、その費用に見合ったサービスを提供することが彼らの動機になるからね。" userName="jjice" createdAt="2025/09/30 15:51:21" color="">}}




{{<matomeQuote body="無料サービスを使って自分のデータがどれくらい悪用されるのか不安に思うより、サービスにわずかな料金を払う方がはるかに良心的に感じるよね。" userName="captainkrtek" createdAt="2025/09/30 16:11:31" color="">}}




{{<matomeQuote body="全く同感だよ。無料サービスにも役割はあるけど、”無料”としてしか存在しないサービスにもっと有料版の選択肢が欲しいな。でも、僕が検索にお金を払ってるって言ったら友達みんなから変人扱いされて笑われるから、僕らは少数派だろうね。僕の経験では、みんな特にサブスクリプションのソフトウェアにはお金を払いたがらないよ。何人か友達は、毎月99セントで50GBのiCloudストレージを契約してスマホのバックアップを取るのを拒否して、大切な思い出を一台のデバイスにしか置いてないんだ。" userName="jjice" createdAt="2025/09/30 18:51:16" color="#ff33a1">}}




{{<matomeQuote body="人は一般的に無料のものに対して非合理だってことは、かなり確立されてる事実だよね。だから、無料提供を伴うビジネスモデルは、それが目玉商品であれ、広告支援であれ、根本的に反競争的だと思う。認知バイアスが、商品やサービスに料金を請求する競合他社を不利にするんだ。もしNPOなら無料で提供していいけど、ビジネスなら料金を請求すべきだよ。" userName="thfuran" createdAt="2025/09/30 19:00:46" color="#ff5c5c">}}




{{<matomeQuote body="「無料だと自分が商品」って情報、あんまり理解されてないか、みんなデータとか気にしないのかなって思う。正直、もう個人情報なんて大体どこかに漏れてるし、社会保障番号も電話番号くらいオープンな時代だよね。" userName="captainkrtek" createdAt="2025/09/30 18:57:27" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="みんな、集められてるデータのどこまで侵略的なのか、マジでわかってないと思うよ。エンジニアとか管理者が何を見れるか知ったら、きっと腰抜かすだろうね。" userName="freedomben" createdAt="2025/09/30 23:50:26" color="#ff5733">}}




{{<matomeQuote body="マジでそう。みんな「いいね」とか「コメント」、あと「写真」とか、自分がシステムに入れたデータだけだと思ってるでしょ？<br>でも、いろんなサイトでの活動を関連付けられたり、興味を分析されたり、プロフィール作られたり、履歴を売られたりするっていうダークな側面は知らないんだよね。" userName="captainkrtek" createdAt="2025/10/01 17:59:24" color="#38d3d3">}}




{{<matomeQuote body="これって考えれば考えるほど厄介になるよね。<br>どれだけ注目集めるかで報酬が決まるような仕組みだと、クリックベイトとかレイジベイトがめちゃくちゃ増えるんだよ。" userName="Nurw" createdAt="2025/10/01 11:26:34" color="">}}




{{<matomeQuote body="価格は置いといてさ、単体のLLMに直接課金するのと比べて、Kagi Assistantを使うメリットって何があるの？<br>ちょっと気になるな。" userName="bobbylarrybobby" createdAt="2025/09/30 16:38:51" color="">}}




{{<matomeQuote body="Kagi AssistantはKagi Searchを使えるし、レンズみたいな高度な検索機能も使えるんだよ。これはKagi独自の機能じゃないけど、AnthropicやOpenAIが使ってる検索よりKagi Searchが良いって思うならプラスだよね。<br>あと、KagiとLLMプロバイダーとの契約は、企業がプライバシー保護を受けられるやつだから安心だよ。" userName="Spivak" createdAt="2025/09/30 16:43:59" color="#38d3d3">}}




{{<matomeQuote body="実際、アシスタントへのリンク付きニュース検索ができて、単一じゃなくほぼ全てのLLMがKagiの１つのインターフェースで使えるし、チャットも共有できるんだ。インターフェースはシンプルで良いし、KagiはSonnet 4.5みたいに新しいLLMにもすぐ対応するよ。<br>これ、仕事でもプライベートでもすごく便利。最近、単一のLLMだけを追いかけるのは無駄だってわかったしね。" userName="buster" createdAt="2025/09/30 16:41:33" color="#ff33a1">}}




{{<matomeQuote body="「単一のLLMに直接課金」って話だけど、Kagiなら１つのインターフェースで複数のLLMを使えるんだよ。<br>ログインもサブスクも１つで済むし、チャット履歴も全部まとめて保存される。あと、スレッド内でモデルを切り替えたり、カスタムモデルも使えたりするんだ。" userName="wiether" createdAt="2025/09/30 19:56:13" color="#ff5733">}}




{{<matomeQuote body="KIのマルチステップアシスタントだね。一つのサブスクでいろんなLLMを試せるし、Kagi Searchとの連携で、AIが俺が見たいページだけを検索してくれるんだ。俺の検索設定も反映されるしね。" userName="flyer23" createdAt="2025/09/30 16:47:41" color="#ff33a1">}}




{{<matomeQuote body="Kagi Search、一時期使ってたけど位置情報検索が全然ダメだったから結局Googleに戻ったんだ。今は良くなってるかもしれないけどね。<br>でも、彼らのブラウザOrionはここ数週間使ってるけど、めちゃくちゃ良いよ！大手ブラウザと違ってテストも十分じゃないのに、90%はちゃんと動くってすごいわ。" userName="SOLAR_FIELDS" createdAt="2025/09/30 16:15:10" color="">}}




{{<matomeQuote body="90%って何のこと？OrionってWebKitがベースなんだから、不具合があるなんてびっくりだよ。" userName="viraptor" createdAt="2025/09/30 19:29:39" color="">}}




{{<matomeQuote body="Orionには明らかに問題があるよ。信用組合のログインで無限リダイレクトしたり、モバイル版Perplexityが動かなかったり。ChromeやSafariでは問題ないのにね。他にもログイン認証や1Passwordの自動入力が頻繁に壊れるんだ。" userName="SOLAR_FIELDS" createdAt="2025/09/30 22:53:09" color="#ff5c5c">}}




{{<matomeQuote body="Orionの不具合って、WebKitやSafariの基本機能じゃなくてカスタム機能の方が多い気がする。ブラウザとしては良いけど、1Passwordのログイン、特にPasskeyでいつも困るんだ。結局使えないならSafariでいいやって思っちゃうね。" userName="mitchell209" createdAt="2025/10/01 05:21:16" color="#ff5c5c">}}




{{<matomeQuote body="彼らはたくさんの機能を追加したWebKitのカスタムフォークを使ってるんだよ。" userName="flexagoon" createdAt="2025/10/01 02:32:10" color="">}}




{{<matomeQuote body="ニュースキュレーションってみんなが同じニュースを求めてるわけじゃない。俺は自分の状況に役立つ情報をキュレーションしてほしいんだよ。資産、収入、住んでる場所、仕事とか、個人情報を提供しないと無理だけど、ローカルAIなら解決できるかもね。" userName="alphazard" createdAt="2025/09/30 18:05:40" color="#38d3d3">}}




{{<matomeQuote body="ChatGPT Pulseは、個人的なニュースキュレーションをすごくうまくやってくれてるよ。旅行計画を知ってて、閉鎖情報やイベントのニュース、予約すべきアクティビティまで推薦してくれたんだ。" userName="pants2" createdAt="2025/09/30 18:19:26" color="#ff33a1">}}




{{<matomeQuote body="Kagiには成功してほしいけど、26人の従業員で検索、LLMアシスタント、ブラウザ、ニュースまで開発してるのは、ちょっと心配だな。Protonみたいに手を広げすぎないでほしいよ。" userName="tower-shield" createdAt="2025/09/30 17:07:38" color="#38d3d3">}}




{{<matomeQuote body="昔はProtonが大好きだったけど、機能開発ばかりで安定性やバグ修正がおろそかになってるね。iOS版ProtonMailではズームが何年も壊れてるし、メールが表示されないこともあってがっかりだよ。" userName="hn111" createdAt="2025/09/30 17:50:22" color="#38d3d3">}}




{{<matomeQuote body="うん、俺も同じ理由でProton Mailをやめたよ。たくさんのバグや不満があるのに、新機能ばかりで古いバグが直されないのは本当にイライラする。<br>普通のメールクライアントに戻ってすごく楽になったけど、Proton VPNは課金してるし、彼らの成功を願ってるよ。" userName="DavideNL" createdAt="2025/09/30 19:18:00" color="">}}




{{<matomeQuote body="ちなみに、俺はiOSアプリでメールの表示やズームの問題は全くなかったよ。人によるかもね。" userName="thoughtpalette" createdAt="2025/09/30 18:15:43" color="">}}




{{<matomeQuote body="Protonって手を広げすぎ？俺は彼らのサービスに満足してるよ。Bitcoinウォレットとかは使わないけど、顧客が求めてるなら作ってもいいんじゃない？きっと顧客ベースをよく理解してるだろうから、的外れじゃないはずだ。" userName="bl4ckneon" createdAt="2025/09/30 17:53:21" color="">}}




{{<matomeQuote body="Proton Driveのモバイルアプリって、フォルダダウンロードすらできないんだよ。1年近くも問題が上がってるのに、その間に新しいサービスを2つも立ち上げて、機能もたくさん追加してる。金を払ってるんだから、基本的な機能はちゃんと動かしてほしい。そこがProtonにイライラするんだよな。" userName="AuthAuth" createdAt="2025/10/01 00:15:03" color="#45d325">}}




{{<matomeQuote body="Kagiもそうなんだけどさ、他の人気検索エンジンって、IT管理者や親がDNSレベルでセーフサーチをオフにできないように強制する代替URLがあるんだよね（例: forcesafesearch.google.com, strict.bing.com）。Kagiは3年半も前から要望されてるのに、最近になって「計画中」から外されちゃったんだ。URLはhttps://kagifeedback.org/d/3285-safe-search-dns-locking-for-..." userName="Nition" createdAt="2025/10/01 01:42:45" color="#45d325">}}




{{<matomeQuote body="マジでバグだらけだよ。Proton Driveのせいで週末が台無しになった。もう二度と使わない。" userName="mkbelieve" createdAt="2025/10/01 02:27:23" color="">}}




{{<matomeQuote body="…Protonはメールサービスも作ってるんだよね。" userName="tomcatfish" createdAt="2025/10/01 01:19:42" color="">}}




{{<matomeQuote body="ProtonがGoogleの二番煎じをしているって認められるのは、彼らが独自のスマートフォンOSを発表してからだな。検索エンジンのロゴが「g」なのも、Googleにできるだけ近づけようとしてるみたいで、どうも気になるんだよな。" userName="sph" createdAt="2025/10/01 08:01:19" color="">}}




{{<matomeQuote body="これはすごく良いから試してみるよ！でも、LLMがコンテンツをスクレイピングしてる現状で、著者への報酬についてもっと議論すべきだと思うんだ。発表ページにはスクレイピングしないって書いてあるけど、個人的にこの製品の価値は、広告だらけで散らかっててひどい作者のページに行かなくて済むってことだからさ。そうなると、実際のコンテンツ提供者にはすごく不公平に思えるんだよね。Kagiのサブスクに月3～5ドルくらい上乗せして、俺が読む記事の作者に還元するような、ニュース版音楽ストリーミングモデルみたいなサービスがあったらいいな。" userName="unshavedyak" createdAt="2025/09/30 16:41:46" color="#ff33a1">}}




{{<matomeQuote body="＞毎日1回の更新: 正午（UTC）頃に毎日公開し、ニュース消費に自然な終点を作り出します。これは意図的なデザイン選択であり、ニュースを終わりのない習慣から、収められた儀式へと変えます。<br>これさ、紙に印刷して物理的な郵便受けに送ってくれたら、朝食と一緒にこの儀式ができるんだけどな？（笑）" userName="medstrom" createdAt="2025/09/30 15:29:55" color="">}}




{{<matomeQuote body="関連しそうな情報だよ。<br>Guten: A Tiny Newspaper Printer - https://news.ycombinator.com/item?id=42599599 - January 2025 (106 comments)<br>Getting my daily news from a dot matrix printer - https://news.ycombinator.com/item?id=41742210 - October 2024 (253 comments)" userName="toomuchtodo" createdAt="2025/09/30 15:50:30" color="#38d3d3">}}




{{<matomeQuote body="俺のは円筒形にして玄関先に置いておいてほしいな。" userName="0xdeadbeefbabe" createdAt="2025/09/30 15:45:59" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
