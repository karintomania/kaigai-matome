+++
date = '2025-06-10T00:00:00'
months = '2025/06'
draft = false
title = 'Metaの密かなスマホ追跡手口 ローカルホストトラッキングとは 320億ユーロの損失か'
tags = ["Meta", "プライバシー", "トラッキング", "Android", "データ"]
featureimage = 'thumbnails/cyan_orange2.jpg'
+++

> Metaの密かなスマホ追跡手口 ローカルホストトラッキングとは 320億ユーロの損失か

引用元：[https://news.ycombinator.com/item?id=44235467](https://news.ycombinator.com/item?id=44235467)




{{<matomeQuote body="前の議論はここだよ：News Y Combinatorでの「Androidでlocalhost経由の隠密的なweb-to-app追跡」スレッド(コメント341件) https://news.ycombinator.com/item?id=44169115" userName="JimDabell" createdAt="2025/06/10 12:05:32" color="">}}




{{<matomeQuote body="追記：コメントはまだ増えてるかも。ワシントンポストのプライバシーに関するヒント：Chrome使うのやめて、Metaのアプリ（とYandex）を削除しよう(コメント328件) https://news.ycombinator.com/item?id=44210689<br>MetaがInstagramとFacebook経由でAndroidユーザーを”隠密追跡”していると判明(コメント95件) https://news.ycombinator.com/item?id=44182204<br>Metaが研究者の指摘を受けてAndroidでのモバイルポート追跡技術を一時停止(コメント28件) https://news.ycombinator.com/item?id=44175940<br>Androidでのlocalhost経由の隠密的なweb-to-app追跡(コメント6件) https://news.ycombinator.com/item?id=44169314<br>Androidでの隠密的なWeb-to-App追跡(コメント6件) https://news.ycombinator.com/item?id=44169314<br>MetaとYandexがAndroidのウェブ閲覧アクティビティをスパイ<br>https://news.ycombinator.com/item?id=44177637<br>新しい研究がMetaとYandexに関わるプライバシー侵害を強調<br>https://news.ycombinator.com/item?id=44171535<br>MetaとYandexがWebRTC経由でAndroidの追跡データを持ち出し(コメント3件) https://news.ycombinator.com/item?id=44176697" userName="1vuio0pswjnm7" createdAt="2025/06/10 19:54:41" color="#ff5733">}}




{{<matomeQuote body="2014年にAndroid版Twitterアプリがインストールしてる全アプリのリストをTwitterに送り始めたの覚えてる？ https://news.bloomberglaw.com/privacy-and-data-security/twit...<br>それ以来、ブラウザで使えるアプリのネイティブ版は入れないことにしてるんだ。FacebookやInstagramは使わないから今もそうかは知らないけど、Facebook Messengerはブラウザ版が意図的に使いづらくされてたのを試した記憶があるな。<br>ここ10年、ネイティブアプリが大量の権限を要求してきて、ユーザーはただ同意をクリックするだけ。Facebookがなんで俺のWi-FiネットワークやBluetoothを読める必要があるんだ？そりゃ何か怪しいことやってるに決まってるよ。<br>実店舗を歩き回る人をトラッキングするBeaconとかね。 https://en.wikipedia.org/wiki/Facebook_Bluetooth_Beacon<br>ネイティブアプリってウェブアプリよりずっと快適で動作もいいから、残念だよね。" userName="aorth" createdAt="2025/06/10 18:38:50" color="">}}




{{<matomeQuote body="＞ Facebook Messengerが意図的に使いづらくされてた<br>そうそう、そうだったんだよ。Messenger Liteをしばらく使ってたけど、それもやめさせられて、モバイルブラウザ版もダメになった。<br>イベントとか連絡でFacebookはまだ必要だけど、あのデカいMessengerアプリは絶対入れたくないから、今はあのデスクトップモードで使う羽目になってて…ほんと辛いよ。<br>最近フィードで見かけるのは「おすすめ」ばっかりで、昔よりずっと中毒性がないな。なんでユーザーを追い払うのに必死なのか分からないけど、それが計画みたいだね。" userName="dcminter" createdAt="2025/06/10 20:35:05" color="">}}




{{<matomeQuote body="ウェブアプリは何年もひどく妨害されてきてて、ほんとムカつくんだよ。<br>UIの半分は「アプリを使って！！１」ってポップアップで埋め尽くされてるし、もう半分はただ動かないだけ。<br>一番ひどいのは、最近のネイティブアプリの多くがただのウェブビューだってことだ。ネイティブUIツールキットを使う気すらないのに、俺にアプリをダウンロードしろと？これがただのSafariに余計な手順を加えただけなら、Safariを使わせろよ！" userName="const_cast" createdAt="2025/06/10 21:19:07" color="">}}




{{<matomeQuote body="eBayがアプリを使わせようと必死で、サイトにたどり着いて検索ワードを入力し始めた人、つまり何かを買う明確な意思を持ってるであろう人を、代わりにアプリをインストールさせるアイデアを売り込むために誘導するなんて、ほんと信じられないよ！<br>ただ…邪魔せずに俺に金を使わせろよ…頼むから？" userName="dcminter" createdAt="2025/06/11 19:40:30" color="">}}




{{<matomeQuote body="そうだね、ログインに関しても同じことを見てるよ。ユーザーアカウントを必須にしなかったら、あとどれだけ多くの売上があっただろう？かなりの数だと思うんだ。ほとんどの人はサイトを5分見て、必要なものを買って、確認メールを受け取るだけだろう。そのプロセスこそ最適化すべきなのに、どうやら美味しいデータの約束の方が実際の売上より重要らしい。そのユーザーアカウントが数セント以上の価値があることを願うよ！<br>例A：駐車場アプリ。なんでアプリが必要なんだ？そしてなんでアカウントが必要なんだ？もし…支払わなかったらどうなる？そうしてる人、どれくらいいる？たぶんたくさんいるよ。<br>だから、地元のレッカー会社と契約して、対応しない顧客のためにこの金を全部燃やすんじゃなくて、現実を見てプロセスを効率化しようよ。もしタップ一つで支払えるメーターを置いたら、99％の不対応はただ…消えると思うね。" userName="const_cast" createdAt="2025/06/11 20:33:48" color="#38d3d3">}}




{{<matomeQuote body="ublock originを使ってるのが好きだよ、あのポップアップのためにフィルターを作れるからね。" userName="Saris" createdAt="2025/06/10 22:30:01" color="">}}




{{<matomeQuote body="当時は堅物だって思われたかもしれないけど、ネイティブアプリじゃなくてブラウザ版を選んで、後悔したことはないよ。通知の邪魔から得することもなかったしね。AppleもGoogleも真面目に取り組んでないから、真剣に受け止められなかったんだ。<br>F-Droidにないなら、待つね。" userName="gausswho" createdAt="2025/06/10 20:43:28" color="">}}




{{<matomeQuote body="ここに隠された別の問題がある気がするんだ。<br>記事から引用：<br>影響を受けないのは、（そしてその場合にのみ）<br>アプリを携帯にインストールせずに、ウェブ経由でFacebookやInstagramにアクセスする場合<br><br>これは、特定のアプリをFridaで直結したり、他の詳細な分析をしたりすることで観察できる真実でしかないんだ。<br>Meta/Google/他のアナリティクス企業/他の巨大企業が、既に大規模にアプリ開発者と共謀して［買収して］、別の触手としてセッションデータを帯域外で単純に共有している可能性はどうだろう？<br>むしろ、彼らがこれまでずっとこれをやってこなかったと考えるのが合理的だろうか？（もしかしたら、これもGDPR, DSA, DMAが軽減するはずだった範囲に squarely 含まれる？俺は専門家じゃない…ただの皮肉が発動してるだけだけどね。）<br>俺も、デバイス上の不要なアプリを最小限に抑えるために、かなり苦労してるよ。" userName="boneitis" createdAt="2025/06/11 01:26:21" color="#ff5c5c">}}




{{<matomeQuote body="マジそれな。他のとこで読んだけどさ、Androidメーカーによってはアプリ一覧に出なくて消せないFacebook関連のやつが最初から入ってるらしいよ。スマホには、使えるオープンハードウェア＼オープンソースOSのライバルが必要なんだよ。" userName="gausswho" createdAt="2025/06/12 22:30:59" color="#38d3d3">}}




{{<matomeQuote body="＼オープンハードウェア＼オープンソースOSのライバルがマジ必要＞って言ってたけど、もうあるよ。Librem 5から送ってる。" userName="fsflover" createdAt="2025/06/16 07:20:09" color="">}}




{{<matomeQuote body="＼ブラウザで使えるアプリのネイティブ版は入れない＞私もそう。AT＆Tが2022年2月に使えてたスマホを使えなくした後さ、それをアプリ専用にしてる。ウェブ閲覧とかはしないアプリのサンドボックスとしてね。ウェブじゃなくてアプリを使わせる会社には下痢光線を送ってやるよ。Chipotle、お前のことだ。" userName="Lu2025" createdAt="2025/06/11 14:39:32" color="">}}




{{<matomeQuote body="これ、まだ全然合法で許可されてるんだよ。どんなアプリでも「セキュリティ」のために自分のアプリとか最近開いたやつをスキャンできるの。「連絡先」も同じ。WhatsApp（チームで使う唯一のMeta製品）はこれをすごい速さでやって、変更あったら連絡先リストの差分をアップロードするんだって。この記事の本当の問題はMetaがGoogleの「cookie matching」料金を払わずにウェブでのユーザーマッチングをバイパスしたことだよ。" userName="1oooqooq" createdAt="2025/06/10 22:50:52" color="#45d325">}}




{{<matomeQuote body="WhatsAppが連絡先スキャンさせないと動かないってマジでウザいよね。これ、本気で違法にすべきだと思うわ。" userName="BobaFloutist" createdAt="2025/06/11 17:08:22" color="">}}




{{<matomeQuote body="私はiOSで連絡先を共有せずに使ってるよ。" userName="Tepix" createdAt="2025/06/11 18:31:10" color="">}}




{{<matomeQuote body="それは完全にiOSの連絡先APIの仕様なんだよ。連絡先へのフルアクセスを拒否したり一部だけ渡したりしても、アプリにはそれが分からないようになってる。AndroidのAPIもそうならいいのにってマジで思う。だから、今は連絡先APIから公開しないアプリに全部の連絡先を入れてるんだ。" userName="extraduder_ire" createdAt="2025/06/12 02:08:56" color="#785bff">}}




{{<matomeQuote body="最近改善されたのかな。連絡先全部見せるのを断ったのに、WhatsAppのグループチャット作らせないことで、Facebookを何年も罵ってきたんだけどさ、今見たら「Skip」ボタンがあって電話番号UIに進めるようになってたよ。" userName="aendruk" createdAt="2025/06/11 18:41:46" color="">}}




{{<matomeQuote body="「Legal」はマジで論点ズレてるし、関係ない。" userName="raxxorraxor" createdAt="2025/06/11 07:05:55" color="">}}




{{<matomeQuote body="OK、一つのことにマジギレする気持ちはわかるけど、同じことしてる表向き問題ない他の４つのことを無視してるよね。" userName="1oooqooq" createdAt="2025/06/11 11:52:53" color="">}}




{{<matomeQuote body="アプリはちゃんとしてほしいものだね。<br>モバイルOSのセキュリティはイマイチだと思う。<br>だって悪いアプリ対策に変なインセンティブが働くからさ。<br>もしアプリが“合法的に”できること全部やったら、ずっと前にマルウェアになってるよ。<br>同意なしで追跡はどこの法律でも違法だろうね。<br>記事にもある通り、Twitterだけが悪いわけじゃないよ。" userName="raxxorraxor" createdAt="2025/06/11 15:35:20" color="">}}




{{<matomeQuote body="この追跡システム作ったエンジニアやプロダクトマネージャーは、<br>Facebookが収益の何パーセントか責任取るみたいに、<br>年収の同じ割合で個人が責任取るべきだね。" userName="globalise83" createdAt="2025/06/10 19:56:28" color="">}}




{{<matomeQuote body="その考えはいいけど、下の人間だけじゃなくて<br>指示した経営陣も責任を逃れちゃダメだと思うな。<br>責任は一番上までいくべきだよ。" userName="taormina" createdAt="2025/06/10 20:08:50" color="">}}




{{<matomeQuote body="そうだね、トップから下まで全員が関わるべきだよ。<br>エンジニアが個人責任を恐れてああいうデータ泥棒機能を作るのを拒否すれば、<br>そもそもそんなこと起こらないんじゃないか。" userName="kstrauser" createdAt="2025/06/10 20:46:13" color="">}}




{{<matomeQuote body="昔、何十億ドルの金融システムで子供100万人の個人情報扱うのに、<br>HTTPだけでデプロイしろって言われてキレて拒否したことあるよ。<br>PMには”命令拒否か！”って怒鳴られたけど、運良く上の人が守ってくれた。<br>個人の反発は難しいんだよね。”言われた通りにしろ、さもないと報いがある”が普通。<br>だから腐敗が進むし、アプリのデータ収集がやばいことになる。<br>責任は上の人間が取るべきだよ。彼らが怖がるべきなんだ。" userName="jiggawatts" createdAt="2025/06/11 06:24:40" color="#ff5733">}}




{{<matomeQuote body="EUがアメリカに住んでるアメリカのエンジニアに、<br>どうやって罰金かけられるんだろうね？" userName="ribosometronome" createdAt="2025/06/10 20:01:17" color="">}}




{{<matomeQuote body="依頼される頻度は、その行為の倫理や違法性とは関係ないだろ。<br>ヒットマンだって”でも人を殺すように雇われ続けてるんだ”なんて言えないだろ？" userName="jayd16" createdAt="2025/06/10 20:41:49" color="">}}




{{<matomeQuote body="非倫理的だよね、エンジニアも給料のために何でもするみたいだけど、<br>やらなきゃ他の誰かがやるし、技術的には面白い挑戦だしね。<br>でもやっぱりマネジメントとか上の人、ズッカーバーグを直接責めるべきだよ。<br>資金出して儲けてる人を責めろ。<br>コード書いただけの人じゃなくてね。お金を追え。" userName="hoppp" createdAt="2025/06/10 21:15:24" color="">}}




{{<matomeQuote body="エンジニアが追跡コード書くのを殺し屋が人を殺すのと比べるなんて、<br>めちゃくちゃ不誠実で感情操作だろ。<br>全然カテゴリー違うじゃん、わかってるくせに。" userName="throw10920" createdAt="2025/06/11 03:51:05" color="">}}




{{<matomeQuote body="ソフトウェア開発者って、食べるのにも困ってる人がどれくらいいると思う？" userName="account42" createdAt="2025/06/11 10:20:57" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="アメリカって、Metaに罰金科せないの？あそこでも絶対違法でしょ？" userName="acatnamedjoe" createdAt="2025/06/10 20:14:42" color="">}}




{{<matomeQuote body="今の政治状況じゃ、それはまずあり得ないだろうね。" userName="pesus" createdAt="2025/06/10 20:19:53" color="">}}




{{<matomeQuote body="これってC.S.ルイスの格言の現代版みたいだね。悪事は汚い場所じゃなく、きれいなオフィスで静かな男たちが決めるって話さ。" userName="hoherd" createdAt="2025/06/11 00:12:36" color="#ff5733">}}




{{<matomeQuote body="正直言って、本当に責任があるのは、そもそもこれを作っていいって許可した連中だよ。" userName="FuckButtons" createdAt="2025/06/11 00:37:07" color="">}}




{{<matomeQuote body="そうだね、ヒットマンはごく少人数だけど、ソフトウェア開発者は簡単に何千、何百万人の人生を悪くできるんだから。" userName="account42" createdAt="2025/06/11 10:26:45" color="">}}




{{<matomeQuote body="これに関わった人に罰金はいいかな。責任取るために金もらってる決定権者が責任負うべき。でも、違法って知っててコード書くエンジニアは？共謀して通報しない奴は罰則必要でしょ。<br>VWが試験で違う動きした時みたいにさ。" userName="juliangmp" createdAt="2025/06/11 13:35:16" color="#ff5733">}}




{{<matomeQuote body="＞ それは確かに非倫理的で、給料のために何でもするエンジニアもいるけど、自分がやらなくても誰か別の人がやるし、技術的には面白い挑戦だ。<br>俺が新人エンジニアだった頃、会社の製品を良く見せるためベンチマークでズルするコードを頼まれた。すごく嫌だったけど、新人だから言い出せなかった。結局マネージャーに倫理的に嫌だって言ったら、彼は冷静だった。「大丈夫だよ、ジムにやらせるから」って。ジムは喜んで書いたよ。<br>結局、いつもやる奴はいるんだ。" userName="ryandrake" createdAt="2025/06/10 22:17:58" color="#45d325">}}




{{<matomeQuote body="それか全員責めようぜ。「俺がやらなくても誰かやる」なんて言い訳、昔から通用しないだろ。今更変える理由ないね。（てか、技術的に面白いって？localhostへのPOSTリクエストだろ！）" userName="afavour" createdAt="2025/06/10 23:27:28" color="#ff5733">}}




{{<matomeQuote body="これ、ビルマでジェノサイド煽った会社だぜ。プログラマーはEUの管轄外だし。罰金払って、ハイ終わり、って世界をめちゃくちゃにし続ける以外に何かすると思う？無理無理。" userName="sevensor" createdAt="2025/06/11 12:48:02" color="">}}




{{<matomeQuote body="カリフォルニアとかテキサスのAGがまたMetaを訴えるかもね、初めてじゃないし。" userName="markus92" createdAt="2025/06/11 12:19:48" color="">}}




{{<matomeQuote body="裁判でMetaを有罪にして罰金払わせるだろうけど、取り立ては難しいかもね。でも会社への罰金はあり得ると思うな。やらないだろうけど、やってくれたらいいね。" userName="joelfried" createdAt="2025/06/10 20:05:34" color="">}}




{{<matomeQuote body="もっと規制が厳しい業界では、内部告発者は守られてるんだ。テクノロジー業界も、ああいう政府機関やルールができるまでどこまで行くのか気になるね。" userName="bormaj" createdAt="2025/06/10 23:21:41" color="#785bff">}}




{{<matomeQuote body="それで”エンジニア”って名乗ってるんだからね。" userName="nightshift1" createdAt="2025/06/11 01:40:25" color="">}}




{{<matomeQuote body="＞ 激怒してたってあるけど、プロの場で「ノー」って言われただけでああいう反応なら、プライベートではどうなるか想像つくよね。" userName="Lu2025" createdAt="2025/06/11 14:45:24" color="#38d3d3">}}




{{<matomeQuote body="もしSVにいなかったり、年齢差別や移民としてのプレッシャーがあったりしたら、彼らは食べていくのに自信持てたかな？全てのソフトウェアエンジニアに特権があるわけじゃないんだよ。" userName="noisy_boy" createdAt="2025/06/11 15:03:49" color="#ff5c5c">}}




{{<matomeQuote body="＞ ほとんどの人はああいうリスクを取れないって言うけど、俺はたくさんの人ができると思うし、やる人が増えればどんどん簡単になると思うな。" userName="gizzlon" createdAt="2025/06/11 07:57:27" color="">}}




{{<matomeQuote body="その通りだね。「コンスピラシー」って映画も見てみてよ。" userName="sometimes_all" createdAt="2025/06/11 07:03:07" color="">}}




{{<matomeQuote body="Metaがやるのはすごいけど、驚きはないね。こういうのは前科があるし。<br>2010年代前半には、iOS App StoreのHTTPSトラフィックを盗み見て、どんなアプリが人気か監視してたんだ。それでWhatsAppとInstagramが良い買収先だって分かったんだよ。<br>たぶんZuckerbergの目標は、次のプラットフォームシフト（ARかVR）までMetaを生き残らせて、主要プラットフォームの1つを所有すること。そうすれば、「インターネットの触手」が切られる前に、どんなルールにも縛られずに済む。たぶん成功するだろうね。" userName="frenchmajesty" createdAt="2025/06/10 11:54:27" color="#ff5c5c">}}




{{<matomeQuote body="企業はAR／VRを次のプラットフォームにしようと頑張ってるけど、一部のニッチなゲーム以外でみんなが本当に欲しいのか、あんまりピンと来ないな。映画の3Dメガネみたいに、一過性のものに感じるんだ。" userName="bobthepanda" createdAt="2025/06/10 18:06:50" color="">}}




{{<matomeQuote body="AR／VRのチャンスはもう終わった。AIが致命傷を与えたんだ。" userName="MrDarcy" createdAt="2025/06/10 18:31:37" color="">}}




{{<matomeQuote body="もっと簡単に言うと、AIが世間の注目とバズワードに乗って、投資家のお金を全部持ってったんだよ。" userName="Miraste" createdAt="2025/06/10 19:01:03" color="">}}




{{<matomeQuote body="そうそう、だからARにはすごくポテンシャルがあるのに残念なんだ。うちの会社では品質管理でAR製品を使い始めたよ。CADモデルを実際の完成品に重ねられるのは信じられないくらいすごいし、時間の節約にもなる。<br>でも、一番進んだARデバイスがもう5年以上前ので、ハードウェアの限界をすごく感じるんだ。" userName="isk517" createdAt="2025/06/10 20:48:44" color="#ff33a1">}}




{{<matomeQuote body="VRは見た目、ARが実質だね。<br>VRを新しいエンタメチャンネルにするってのは、幅広い消費者市場の85％にヘッドセットを売って、そのコンテンツショップを永久に独占しようとする話だ。投資家たちが欲しがる兆円規模の新しい市場ってわけ。<br>ARを機能させるのはもっと簡単。吐き気とか、大きな動きのトラッキングや部屋の管理、高い没入感とかの問題は普通ない。<br>でも、ARはほとんどカスタマイズされたターンキーシステムとして売られるだろうね。顧客はそれぞれ数百～数千台のヘッドセットと特注ソフトを買うことになる。" userName="hakfoo" createdAt="2025/06/16 05:50:40" color="#ff5733">}}




{{<matomeQuote body="そうだね、でもあのメガネを長時間つけて作業するのはマジで頭おかしくなるよ。方向感覚がなくなるんだ。" userName="Lu2025" createdAt="2025/06/11 14:52:24" color="">}}




{{<matomeQuote body="どうかな、ハンズフリー操作（スマートウォッチ経由とか）できて見た目も悪くないARグラスが出たら絶対買うね。AIがそれを可能にするかもだけど、様子見かな。" userName="packetlost" createdAt="2025/06/10 19:28:37" color="">}}




{{<matomeQuote body="だからAppleは”glass”インターフェースを出してるんだろ。AR/VRは大失敗したから、移行期間として見た目を普通にしてるんだ。" userName="Lu2025" createdAt="2025/06/11 14:51:10" color="">}}




{{<matomeQuote body="ゲームやメディアを楽しむ用途ではVRは定着するよ。MetaのRay-Ban（スマートグラス）も成功してるしね。<br>ARグラスがスマホに取って代わるかはまだ分からないけど。" userName="dvngnt_" createdAt="2025/06/10 19:41:49" color="">}}




{{<matomeQuote body="”定着する”って言っても、VRは今んとこ超ニッチだよ。その理由は場所が必要だったり、単純にデバイスを装着するのが嫌だったりってとこ。これは技術が進んでも変わらない本質的な問題だろ。" userName="account42" createdAt="2025/06/11 10:32:11" color="">}}




{{<matomeQuote body="”定着する”がニッチだって言うけど、映画の3Dメガネと比べたら全然違うでしょ。Samsungも今になってAndroidヘッドセット出すし、今のVRは3D-TVより長く続いてる（6年）。場所は必要って言うけど、座ってでも寝てでも何時間もできるし、広い部屋が必須じゃない。最新のヘッドセットは自己トラッキングだから、技術で解決済みだよ。Bigscreen Beyond 2は107gで何時間も着けられるし、技術で携帯性や汎用性が向上しないわけないじゃん。" userName="dvngnt_" createdAt="2025/06/13 00:28:13" color="#785bff">}}




{{<matomeQuote body="俺は世界はヘッドセットとかスクリーンから離れていくと思うな。全部AIがやってくれるようになるよ。頼むだけで、「飛行機予約して、ピザ頼んで、メール返信しといて」って言えば、はい、終わり。" userName="hoppp" createdAt="2025/06/10 21:24:18" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="そうかもね、でもチャットインタフェースの問題は、どんな選択肢があるか分からなかったり、情報をブラウジングする必要があることだよ。だから、何かしらスクリーンはまだ必要になると思うな。" userName="dvngnt_" createdAt="2025/06/13 00:32:11" color="">}}




{{<matomeQuote body="2010年代初頭、彼らはiOS App StoreのHTTPSトラフィックを覗き見して、どのアプリが人気か監視する方法を見つけたんだよ。エンタープライズ証明書を使ってVPNアプリをインストールさせて、App Storeにはないアプリで全てのトラフィックを監視した。今回の件と違って、これはユーザーが色んなハードルや怖いiOSの警告を乗り越える必要があった。それでも、ギフトカードとかのために多くの人がやったけどね。" userName="joshstrange" createdAt="2025/06/10 12:22:58" color="#ff5c5c">}}




{{<matomeQuote body="昔のMetaの監視手口に関する元のコメントが不正確だよ。WhatsAppやInstagram買収の件は、Onavoっていうイスラエルの会社がVPNから得たデータを使って人気を統計的に推定した結果だ。Enterprise Certificateを使ったVPNアプリの話は、全く別のスキャンダルだよ。俺は普段Metaやターゲティング広告を擁護するけど、この記事のこの部分はデタラメすぎて擁護できないね。2013年にFacebookに入った時、多くの社員が広告や収益に興味なかったのに驚いたけど、今は変わったね。" userName="disgruntledphd2" createdAt="2025/06/10 13:15:38" color="#ff5733">}}




{{<matomeQuote body="ああ、Onavoの買収話は知ってたんだけど、 info を crunched してしまって、 App Store にあった時期をスキップしちゃってたな。その後社内で Project Atlas 、外部向けに Facebook Research って rebranding して enterprise distribution してたんだね。説明ありがとう。" userName="joshstrange" createdAt="2025/06/10 14:43:26" color="#785bff">}}




{{<matomeQuote body="そうそう、Onavoと enterprise cert の件は別で、時期も違ったね。Onavoは（個人的には買収されなければモバイル界の Neilsen になれたかもと思うから）まあ許せるかな、って感じだけど、 enterprise cert の件は超 super shady だったね。" userName="disgruntledphd2" createdAt="2025/06/10 15:48:13" color="">}}




{{<matomeQuote body="こういうMetaの話を聞くと、広告自体が不道徳で禁止すべきだと思うようになったよ。知りたい時に自分で情報を取りに行きたいのであって、常に everywhere で広告を見せつけられるのは違うね。<br>この先は3つのパターンしか考えられない。1) ますます不気味に関連性の高い広告が増えて、違法行為があるから広告は禁止すべきだという人が増える。2) 広告は変わらず、誰もがすぐに無視するようになる。3) 広告がなくなって、自分で情報を取りに行ける簡単なマーケティングシステムに。Metaは1を選んでる、なぜなら2と3は終わりだから。「広告がないと生き残れないビジネスは？」って言うけど、もう十分生きてきたよ。広告があるからMetaはこういうことをしてるんだ。他に Discover してない similar things があるのでは？" userName="naikrovek" createdAt="2025/06/10 19:14:14" color="#ff5c5c">}}




{{<matomeQuote body="広告を ban ってのは（個人的には）やりすぎだと思うよ。ターゲティング広告は small businesses に本当に役立ってるし、 local newspapers がほぼ死んで TV/radio が高い今、 Meta/Google とかを使うしかないんだ。それはそれでいいと思う。問題は public companies や markets からの飽くなき growth への drive と、会社の equity ownership の広がりが、 numbers を増やすために OP みたいに mental なことをさせることだ。<br>これは EU の massive な fines で fix できる部分も多い。もっといい解決策は、 US が GDPR/DMA みたいな regulation を導入することだけど、それはすぐには起こらないだろうね。 structural problems は解決が難しい。 vesting schedules を lengthen するとか、 dividends に戻るとかして longer-term thinking を促すのがいいかも。" userName="disgruntledphd2" createdAt="2025/06/11 09:46:22" color="#ff5c5c">}}




{{<matomeQuote body="ターゲティング広告が small business に良いってのは、ヤクザが金払う business に優しいのと同じさ。 business が広告に頼らないと人に reach できない主な理由は、みんな既に競合からの bombard を受けてるからだよ。" userName="account42" createdAt="2025/06/11 10:37:50" color="#785bff">}}




{{<matomeQuote body="え、何だって？ つまり、 basically 全ての business は広告する必要があるし、 unknown なやつ（つまり small と new business）はもっと広告する必要があるんだ。Coke は TV spots やめても大丈夫だろうけど（しばらくはね）、 Linear/Datadog なんかは広告なしで今の size にはならなかったと思うよ。<br>business が広告に頼らないと人に reach できない主な理由は、みんな既に競合からの bombard を受けてるからだよ。<br>fundamental に広告は potential customers に「自分たちは存在するよ」って伝える方法だろ。ほとんどの人は新しい products を探さない。 advertising がない world で small businesses はどうやって grow すると思う？" userName="disgruntledphd2" createdAt="2025/06/11 14:36:02" color="#ff5733">}}




{{<matomeQuote body="これは valuable thread だね、ありがとう：targeted で sticky な advertising と context based な advertising を区別するのはどうかな。 local paper website で local なものを見せられるのは（ small business の point で）ありがたい。 security websites なら security products を見せてほしい。 HN なら tech と science を見せてほしい。<br>大人で ADD の incidence rate が 2005 年以降 10 倍になってる（子供は言うまでもない）んだから、みんな web 中で track されてるからって out of context なものを nagging される genuine nuisance より、自分が exploring/thinking about/learning してるものに関連性のある relevance を appreciate すると思うよ。" userName="Emiledel" createdAt="2025/06/12 04:11:49" color="#ff33a1">}}




{{<matomeQuote body="public ads は illegal にして、 customers は ads を見たい時に catalog に行くべき。" userName="apitman" createdAt="2025/06/15 03:31:56" color="">}}




{{<matomeQuote body="彼らがこの手のことを繰り返す history があるのは、 punishment が repeat offender を dissuaded したことがないからだよ。" userName="jgalt212" createdAt="2025/06/10 19:49:13" color="">}}




{{<matomeQuote body="MetaのQuest VRは2000万台くらい売れてるけど、Facebookにしちゃ全然足りないんだって。どの会社でも大喜びするレベルだけど、Metaにはもっとユーザーが必要で、爆発的な成長がないとダメ。<br>じゃあ成長早いの？いや。一番売れてたQuest 2は2000万台のうち1400万台も占めてたのに、9ヶ月も前に製造中止になってる。一番売れてる製品が今の製品じゃないって、爆発的な成長とは言えないよね。" userName="philistine" createdAt="2025/06/10 13:31:31" color="">}}




{{<matomeQuote body="Quest 2はかなり安かったし、最初はおそらく赤字で売ってたと思う。それに、売れた時期のほとんどがパンデミック中だったから、Quest 3と直接比べるのは難しいよ。" userName="extraduder_ire" createdAt="2025/06/10 20:18:53" color="">}}




{{<matomeQuote body="ここで問題点が2つあるね。<br>1. Androidが権限なしにアプリにポートを開かせたり、アプリ同士で通信させたりしてること。<br>2. ブラウザがユーザーに知らせずに、ランダムなドメインからlocalhost上のサービスにアクセスさせてること。過去にもlocalhostで動く開発サービスにアクセスする脆弱性が見つかってるし、これについては何か対策すべき。" userName="throwawayffffas" createdAt="2025/06/10 11:54:06" color="#ff5733">}}




{{<matomeQuote body="最初のリストは2つに分けたいな。<br>1a. どんなアプリでも権限なしにポートをリッスンできること。<br>1b. どんなアプリでも権限なしにローカルポートにアクセスできること。<br>俺は最近、これらの理由からデスクトップでブラウザをネットワークネームスペースで動かす実験をしてるんだ。変なウェブサイトがlocalhost上のサービスにアクセスできるべきじゃないからね。" userName="WhyNotHugo" createdAt="2025/06/10 13:47:46" color="#38d3d3">}}




{{<matomeQuote body="＞ 私は最近、これらの理由からデスクトップでブラウザをネットワークネームスペースで動かす実験をしています。<br>それなら、https://www.qubes-os.org/ を紹介するよ。" userName="throwawayffffas" createdAt="2025/06/10 15:06:08" color="">}}




{{<matomeQuote body="超心配性な人向けに、スマホでも何か対策できることってあるの？" userName="alchemist1e9" createdAt="2025/06/10 19:23:09" color="">}}




{{<matomeQuote body="GrapheneOSには本物のサンドボックス機能があると思うよ。" userName="const_cast" createdAt="2025/06/10 21:22:31" color="">}}




{{<matomeQuote body="そのままでは無理だけど、VMを動かすとか似たようなことはできるよ（例えばqemuとか）。" userName="WhyNotHugo" createdAt="2025/06/11 10:12:02" color="">}}




{{<matomeQuote body="uBlock Originには”Block Outsider Intrusion into LAN”っていうフィルタが付いてるんだ。デフォルトで有効になってると思うよ。Chromeの無効化されたバージョンで動くかは知らないけど、Firefoxではすごく効果があって、LANやlocalhostにアクセスしたい場合にいくつか許可リストに追加しないといけないくらい。" userName="mzajc" createdAt="2025/06/10 23:43:51" color="#ff33a1">}}




{{<matomeQuote body="あれはデフォルトでは無効になってるんだ。許可リストに明示的に追加されてないものを壊しちゃう可能性があるからね。" userName="penguinjanitor" createdAt="2025/06/11 10:05:28" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
