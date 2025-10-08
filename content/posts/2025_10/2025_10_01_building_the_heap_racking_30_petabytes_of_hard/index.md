+++
date = '2025-10-01T00:00:00'
months = '2025/10'
draft = false
title = 'AI事前学習用！30PBのHDDをラックに積み上げる巨大ストレージ構築の舞台裏！'
tags = ["AI", "ストレージ", "ハードウェア", "インフラ", "データ"]
featureimage = 'thumbnails/color3.jpg'
+++

> AI事前学習用！30PBのHDDをラックに積み上げる巨大ストレージ構築の舞台裏！

引用元：[https://news.ycombinator.com/item?id=45438496](https://news.ycombinator.com/item?id=45438496)




{{<matomeQuote body="Discordのブログ記事も面白かったよ。特に、ワールドカップのゴールが監視グラフに表示されて、それを口実に会議中にサッカーを見てたって話は最高だね！「システムパフォーマンスを積極的に監視してたんだ！」って言い訳してたんだって。Discordのメッセージ保存量が1PB未満っていう話も、ノードサイズから計算すると708TBとか648TBになるみたいだよ。<br>https://discord.com/blog/how-discord-stores-trillions-of-mes..." userName="lucb1e" createdAt="2025/10/01 22:22:35" color="#38d3d3">}}




{{<matomeQuote body="うん、その数字（Discordのストレージ量）には画像添付も含まれてるか確信はなかったんだよね。でも、大規模なテキストデータ処理の参考値としては、少なくともだいたい合ってると思うよ。" userName="g413n" createdAt="2025/10/02 15:11:18" color="">}}




{{<matomeQuote body="素晴らしい記事だね！技術的な詳細も全部最高だよ。コロケーションスペースをどうやって確保したのか気になるんだけど、ブローカーを使ったの？それと、価格交渉はした？もししたなら、最初の見積もりと最終的に支払った金額でどれくらいの差があったか教えてほしいな。" userName="jonas21" createdAt="2025/10/01 16:20:59" color="#ff33a1">}}




{{<matomeQuote body="SFとFremontにあるコロケーションスペースのほぼ全てに見積もりを依頼したよ。見積もり価格と実際に支払った金額には違いはなかったけど、契約条件や一回限りの費用については交渉したんだ。" userName="nee1r" createdAt="2025/10/01 16:25:20" color="#45d325">}}




{{<matomeQuote body="見積もりを公開するのを検討してほしいな。コロケーションの名前を伏せてもいいからさ。" userName="toomuchtodo" createdAt="2025/10/02 17:17:21" color="">}}




{{<matomeQuote body="楽しい記事だったよ、作者さんありがとう！でも、こういうワクワクするような記事には、いつももっと写真があると嬉しいな！" userName="Scramblejams" createdAt="2025/10/01 21:47:59" color="">}}




{{<matomeQuote body="もし作者さんたちがコメントしてくれるなら、「Standard Intelligence PBC」が何をしているのか聞きたいな。公益法人なの？一体何を開発してるの？" userName="echelon" createdAt="2025/10/01 21:53:13" color="#785bff">}}




{{<matomeQuote body="うん、もっと写真を入れたかったんだよ！！だから最近、Sony A7IIIを買って、こういう楽しい瞬間をもっと撮れるようにしたんだ。僕たちは、コンピュータの動作モデルをゼロから事前学習させてるんだ。だから事前学習用データクラスターが必要なんだよね。AGIは公共の利益のために作るのが重要だと考えてるから、うちの会社は公益法人なんだ。コンピュータで行われる多くの作業を自動化する計画もあるよ！" userName="nee1r" createdAt="2025/10/01 23:04:16" color="#785bff">}}




{{<matomeQuote body="「最高のカメラは、いつもあなたが持ってるカメラだ。」っていう名言があるよね！次の構築記事も楽しみにしてるよ！" userName="Scramblejams" createdAt="2025/10/01 23:08:35" color="">}}




{{<matomeQuote body="多くのコロケーション施設は写真撮影を禁止してるんだ。" userName="kid64" createdAt="2025/10/02 16:09:16" color="">}}




{{<matomeQuote body="Hetznerのsx135を使えば、1TBあたり月1ドルくらいでいけるよ。8個の22TBでRAIDZ1構成の140TBが240ユーロだね。200台借りればもっと安くなるかも。リスクは誰かが引き受けてくれるから、夜も安心して眠れるよ。" userName="yread" createdAt="2025/10/01 18:37:54" color="#ff5733">}}




{{<matomeQuote body="将来的にはHetznerみたいなサービスを使う可能性は十分あるね。融資や構築、あるいはその両方を切り離して、ソフトだけ担当するって契約も検討中だよ。HetznerはCPUクオータで苦労したし、ヨーロッパは避けたいけど、自分たちでやれることを示したら、地元で似たような条件で良い見積もりをもらえたんだ。" userName="g413n" createdAt="2025/10/01 19:03:09" color="#ff5733">}}




{{<matomeQuote body="Hetznerはちゃんとした用途には使えないよ。大抵、濫用だって言って、何の通知もなくデータを全部消されちゃう可能性が高いからね。" userName="mx7zysuj4xew" createdAt="2025/10/01 21:52:07" color="">}}




{{<matomeQuote body="全くその通り！Hetznerはどんな理由であっても、動いてるものを問答無用で消しちゃうからね。サポートも信じられないくらいひどいよ。" userName="fapjacks" createdAt="2025/10/02 14:39:31" color="">}}




{{<matomeQuote body="HetznerはSFに拠点がないと思うんだ。他の機器がある都市の外に接続する必要があるなら、100ギガビットの接続はあまり意味ないんじゃないかな。でも、ピアリングが改善されて、俺の考えが古いだけかもしれないけどね。" userName="nodja" createdAt="2025/10/01 18:52:53" color="">}}




{{<matomeQuote body="大丈夫だよ。光ファイバーの中を伝わる光の速度は、昔も今も変わらず遅いんだ。" userName="fuzzylightbulb" createdAt="2025/10/01 21:09:34" color="">}}




{{<matomeQuote body="君の計算は合ってないよ。最小限の冗長性を持たせても、だいたい1TBあたり月2ドルくらいになるはずだ。" userName="lostmsu" createdAt="2025/10/03 18:21:20" color="">}}




{{<matomeQuote body="データを保管するだけならかなり安いけど、トレーニングやネットワークのセットアップがよく分からないな。GPUを同じ場所に置かないってコメントを見たんだけど、それじゃあサイト間で100Gbps回線を使って全トレーニングをやるの？プレトレーニング中に完全にボトルネックにならない？" userName="boulos" createdAt="2025/10/01 16:15:41" color="#38d3d3">}}




{{<matomeQuote body="30PBを100Gbpsで送ると1ヶ月くらいかかるけど、4回線なら1週間だね。最初のトレーニングとアレイの初期ロードを重ねて、データが利用可能になり次第トレーニングできるから、トレーニング実行としては許容範囲だと思うよ。データの前処理は、書き込む前にストレージサイトかトレーニングGPU上でやるのは当然だよね。" userName="cornholio" createdAt="2025/10/02 11:04:54" color="#45d325">}}




{{<matomeQuote body="うちのGPUクラスターは現状100ギガリンクしか使ってないけど、スケールするにつれて帯域幅とストレージは拡張するつもりだよ。コロケーションに4090をいっぱい置いてて、データ分割のための埋め込み計算とかにめっちゃ役立ってるのは特筆すべき点かな。" userName="g413n" createdAt="2025/10/01 16:49:07" color="#38d3d3">}}




{{<matomeQuote body="GPUマシンをコロケーションに置かないって決めたのはどういう経緯だったの？電力コストが高すぎたとか？それともストレージ用よりGPUマシンの方が物理的にアクセスする必要があるって考えたの？" userName="mwambua" createdAt="2025/10/01 19:06:19" color="">}}




{{<matomeQuote body="この仕事の前にsfcomputeで働いてた時、H100の電力密度に業界が慣れてなくて、データセンターが文字通り火事になるのを何度も見たよ。うちのトレーニングチップはJBODみたいに標準的なパッケージじゃないんだ。" userName="g413n" createdAt="2025/10/01 20:29:25" color="#45d325">}}




{{<matomeQuote body="コンピューターを分散させる、つまりラックを全部埋めずに半分だけ使うって簡単な選択肢じゃないのかな？うちの隣のGPUクラスターは、1つのラックに64A入れられないから、2つのラックに32Aずつ入れてるよ。（230V 3相）" userName="Symbiote" createdAt="2025/10/01 21:57:56" color="#38d3d3">}}




{{<matomeQuote body="ほとんどのデータセンターでは、ラックのスペースは通常高値で取引されてるんだよね。" userName="pixl97" createdAt="2025/10/01 22:29:12" color="">}}




{{<matomeQuote body="僕の情報は古いかもしれないけど、電力密度ってめちゃくちゃ上がってる。多くのデータセンターはスペースは十分あっても、電力があんまりないんじゃないかな。昔の低電力密度向けに設計された建物に、そんなにたくさんの電力供給や冷却を後付けできるわけないしね。" userName="toast0" createdAt="2025/10/02 07:21:50" color="#45d325">}}




{{<matomeQuote body="これは僕の経験と同じだね。うちは42Uラックに8台のマシンしか入れられないよ。だって、ラックにもっと電力回路を供給できないんだから。" userName="tempest_" createdAt="2025/10/02 13:40:01" color="#ff33a1">}}




{{<matomeQuote body="うん、うちの場合もそうだったよ。" userName="g413n" createdAt="2025/10/02 15:14:38" color="">}}




{{<matomeQuote body="データセンターがラックに、安全に使える以上の電力を供給してるらしいことに、むしろ驚きだね。" userName="Symbiote" createdAt="2025/10/01 22:39:21" color="">}}




{{<matomeQuote body="計算に関する話も続編として聞きたいな。どこでやってるの？そのデータを処理するのにどれくらいのGPUが必要なの？とか。すごく面白くて新鮮な記事だったよ。いつものtf applyしてニヤニヤしながら電話するだけって感じより、シリコンバレーってこういうことなんだって感じがする。" userName="lemonlearnings" createdAt="2025/10/01 22:49:20" color="#ff5733">}}




{{<matomeQuote body="この規模ならAWSとかCloudFlareに限らず、どのクラウドプロバイダとも個別価格交渉できるよ。S3でも0.5PBくらいから交渉可能。DIYよりクラウドが絶対安いとは言わないけど、クラウドの定価とeBayの機材＋無料労働（ピザ代除く）を比べるのは公平じゃないよね。" userName="coleca" createdAt="2025/10/01 19:05:48" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="AWSではegress費用がネックで、交渉しても譲らなかったから、AIトレーニングには全然使えないんだよね。CloudFlareのプライベート価格は、マネージドのオブジェクトストレージとしてはかなり安い方だと思う。自分たちでホストする能力があるから交渉力もつくしね。マネージドのバケット製品は、シンプルな事前学習データ保存にはオーバースペック。Glacierはアーカイブには良いけど、ML用には現状、似たようなものが無いんだ。" userName="g413n" createdAt="2025/10/01 19:15:54" color="#ff33a1">}}




{{<matomeQuote body="どんなディールの話？50%以上の割引とか？" userName="epistasis" createdAt="2025/10/02 01:02:11" color="">}}




{{<matomeQuote body="AWSとかクラウドサービスでは、購入規模によっては50%以上の割引も全然いけるよ。" userName="master_crab" createdAt="2025/10/02 11:21:49" color="#785bff">}}




{{<matomeQuote body="最低0.5PBのボリュームじゃ無理だよ。10PBでも、ストレージのコミット割引が50%に近くなんてならない。せいぜい10～20%くらいじゃないかな。" userName="oasisbob" createdAt="2025/10/02 18:10:55" color="#785bff">}}




{{<matomeQuote body="ドライブのラック設置を手伝えて楽しかったよ！大量のデータって最高だね :P" userName="archmaster" createdAt="2025/10/01 16:29:04" color="">}}




{{<matomeQuote body="手伝ってくれてありがとう！！！" userName="nee1r" createdAt="2025/10/01 16:38:02" color="">}}




{{<matomeQuote body="ディスクの故障率の話がないね？数ヶ月経ってどうなってるか気になるな。" userName="g413n" createdAt="2025/10/01 15:08:18" color="">}}




{{<matomeQuote body="以前も話したけど、複数ディスクアレイを立ち上げた時、大量のドライブ故障があったんだ。金曜の午後にラックに設置して、週末にRAIDアレイのストライプが終わった後で読み書きするシェルスクリプトをサッと書いた。ログもなくて、ただの.shファイルだったんだけどね。月曜に出社したら、全てのアレイで大規模な故障が！ストライプ中かストレステスト中か分からず、故障率は50%近く。工場出荷時の不良品で、うちのベンダーの他の顧客も文句言ってたよ。全部メーカーが交換してくれた。生産投入が遅れただけ。その後、次の職場に移るまでの12ヶ月間は一つも壊れなかったな。" userName="dylan604" createdAt="2025/10/01 17:37:21" color="#45d325">}}




{{<matomeQuote body="へえ、10年間のディスクライフサイクルを通してストレージを管理する問題に対する、うまい解決策だね。" userName="jeffrallen" createdAt="2025/10/01 18:13:01" color="">}}




{{<matomeQuote body="ディスク故障率は昔と比べてすごく減ったね。10年前は毎週何十枚も交換してたけど、今はめったに見ないから驚きだよ。BackblazeのHDD統計を見れば十分って感じだね。" userName="bayindirh" createdAt="2025/10/01 15:29:13" color="#785bff">}}




{{<matomeQuote body="Backblazeの年間故障率は1.36%で、2,400台のドライブなら年間約32台が故障する計算だね。追加の設備投資も年間で約4,000ドルだから、ほとんど気にならないレベルだよ。参照元：https://www.backblaze.com/cloud-storage/resources/hard-drive..." userName="gordonhart" createdAt="2025/10/01 16:13:45" color="#ff5733">}}




{{<matomeQuote body="彼らが使ってるのは中古ドライブだから、Backblazeの報告よりも故障率は高くなるんじゃないかな。仕様には2,400台のドライブで、ほとんどが12TBの中古エンタープライズドライブって書いてあったよ。" userName="joering2" createdAt="2025/10/01 17:45:01" color="#38d3d3">}}




{{<matomeQuote body="ディスクの故障はU字曲線になることが多いから、一概には言えないよ。中古ドライブを買うことで、初期の故障率が高い部分を回避できるメリットもあるんだ。大抵のドライブは、寿命による高い故障率が出る前に型落ちになるだろうしね。" userName="antisthenes" createdAt="2025/10/01 22:02:28" color="#ff5c5c">}}




{{<matomeQuote body="輸送によるストレスで、初期の故障率はやっぱり高くなるんじゃないかな。それに、中古のエンタープライズドライブはSMARTデータが消去されてたり、故障寸前で引退させられたものもあるだろうから、注意が必要だね。" userName="toast0" createdAt="2025/10/02 07:28:17" color="#38d3d3">}}




{{<matomeQuote body="ドライブを物理的に動かすと、故障のU字曲線がリセットされがちだよ。その過程で一部は損傷する可能性もあるね。" userName="dist-epoch" createdAt="2025/10/02 09:38:25" color="">}}




{{<matomeQuote body="彼らが中古のエンタープライズドライブを使ってるって言ってたけど、コストを抑えたい気持ちはわかるけど、将来的に高くつくミスになるんじゃないかな。個人的にホームクラスターで中古ドライブを使ってみて、パフォーマンスのばらつきが大きすぎてすぐに諦めた経験があるよ。" userName="cjaackie" createdAt="2025/10/01 15:38:48" color="#ff5733">}}




{{<matomeQuote body="たしか、ドライブって「最初のうちに故障するか」、「寿命の終わりに故障するか」のどっちかが多いんだよね。だから中古ドライブを買うのは、初期故障するであろうものを選別済みってことで、そこまで悪いアイデアじゃない気がするんだ。もちろん、俺が何言ってるか全然わかってないけどね。" userName="jms55" createdAt="2025/10/01 15:54:30" color="">}}




{{<matomeQuote body="ハードウェア業界では、この現象を「バスタブ曲線」って呼んでるんだよ。" userName="dboreham" createdAt="2025/10/01 18:16:16" color="#ff33a1">}}




{{<matomeQuote body="完璧なデータがあるわけじゃないけど、俺たちの経験と今回の話は一致してるね。多くの故障は、インストール直後、まだ大量のデータが書き込まれる前に起きたから、実際のデータ損失はハードウェアの故障率よりは低かったよ。" userName="g413n" createdAt="2025/10/01 17:23:31" color="#ff33a1">}}




{{<matomeQuote body="HDDはどこで調達したの？serverpartdeals.comとかで中古HDD買うの考えたけど、信頼性が心配なんだよね。" userName="frakkingcylons" createdAt="2025/10/01 22:52:26" color="#ff5733">}}




{{<matomeQuote body="ホームサーバーの趣味なら中古ドライブいいよね。問題解決は楽しいし、ドライブ故障はサーバーをいじる良い理由になるんだ。半分冗談だけど、結構面白いよ。" userName="guywithahat" createdAt="2025/10/01 15:50:38" color="">}}




{{<matomeQuote body="データセンターだと故障率はリモートハンズの継続コストだから、フロントローダーなら問題ないよ。数ヶ月ごとに誰かが新しいドライブのリストとカート持ってデータセンターに来る感じだね。" userName="g413n" createdAt="2025/10/01 15:48:46" color="#45d325">}}




{{<matomeQuote body="彼らが将来Backblazeストレージポッドみたいなトップローダー選ぶか気になるな。そっちの方が密度高いし、ネジ止め不要でセットアップ速いし。彼らは中古ドライブ使ったけどテストしたのかな？僕は中古ドライブで初期不良に当たった経験あるから、SMARTテストや容量検証とかのテストは重要だと思うよ。" userName="pronoiac" createdAt="2025/10/01 17:10:25" color="#38d3d3">}}




{{<matomeQuote body="うん、トップローダーすごく興味あるよ。次回拡張時にテストラック作って、良ければ切り替えるつもり。中古ドライブのテストだけど、事前に各サプライヤーから少量ずつ買って試したんだ。おかげで怪しいロットを見つけて、大量注文から外せたよ。サプライヤーを複数にするのはリスク分散にすごく有効だね。" userName="g413n" createdAt="2025/10/01 17:14:59" color="#38d3d3">}}




{{<matomeQuote body="”ネジ止め不要”って言っても、古いトップローダーだとツールレスじゃないのも多いよ。RMAするならいいけど、現場で交換したりリファービッシュドライブだけ使うと、結局ネジ止めしまくりだね。結構壊れやすいし、プラスチックが折れたりして、地味に大変なんだ。" userName="joshvm" createdAt="2025/10/01 20:56:45" color="#45d325">}}




{{<matomeQuote body="この世代のSupermicroの中古マシンは、全部ひっくるめてもすごく安いよ。https://www.theserverstore.com/supermicro-superstorage-ssg-6..." userName="tempest_" createdAt="2025/10/01 18:43:37" color="#38d3d3">}}




{{<matomeQuote body="「HDD積み上げパーティーで30PBのハードウェアを36時間で構築」ってあったけど、2400台のドライブに実際かかったマンアワーはどれくらいだったの？" userName="htrp" createdAt="2025/10/01 19:52:19" color="#ff5c5c">}}




{{<matomeQuote body="約250マンアワーだよ。" userName="g413n" createdAt="2025/10/01 19:58:51" color="#45d325">}}




{{<matomeQuote body="よくやったね！正直な記事と”can do”精神が大好きだよ。きっと楽しかっただろうね。興味あるんだけど、言ってた高密度ストレージじゃなくて、必要な量の”20x”もドライブを買っちゃったミス、なんでだと思う？これを選んだ理由があったの？" userName="urbandw311er" createdAt="2025/10/02 07:41:33" color="#ff5c5c">}}




{{<matomeQuote body="20xじゃなくて、必要な量の＜2x弱くらいのドライブだと思うよ（24TBと14TBの比較ね）。でも、ドライブを格納してるラックはもっと高密度にできたかもしれないね。どっちにしろ費用はだいたい同じだし、コロケーションがスペース料金を請求しないから大したことないし、慣れてるやり方でやっただけだよ。でも、試してみる価値はあるね。" userName="g413n" createdAt="2025/10/02 15:13:58" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="彼は初期費用が高くなると言ってたよ。" userName="Tepix" createdAt="2025/10/02 13:49:40" color="">}}




{{<matomeQuote body="この話大好きだよ。これこそが本当のハッキングとスタートアップのコスト意識だね。" userName="RagnarD" createdAt="2025/10/01 16:09:37" color="">}}




{{<matomeQuote body="それで、このデータを今どうやってGPUに持っていくの…？ただ公開インターネット経由でデータセンターに送るの？" userName="nharada" createdAt="2025/10/01 15:27:44" color="#ff5c5c">}}




{{<matomeQuote body="うん、その通り！100Gのアップリンクがあって、nginxのセキュアリンクを使って、HTTPでマシンからcurlしてるよ。（面白いことにHTTPSだとオーバーヘッドがあるから、URLを事前に署名してるんだ）" userName="nee1r" createdAt="2025/10/01 15:33:21" color="#ff5733">}}




{{<matomeQuote body="Zayoの100ギガで7.5Kドルってことね。それはMRCの半分くらいだ。" userName="g413n" createdAt="2025/10/01 15:31:02" color="">}}




{{<matomeQuote body="彼らはその距離ならダークファイバーを自分で借りても安く済むはずだよ。でも、彼らが言ってたように、ISPから100Gbpsの容量を使ってるね。" userName="bayindirh" createdAt="2025/10/01 15:30:12" color="#ff33a1">}}




{{<matomeQuote body="データセンターからオフィスまでダークファイバーを引きたいんだ。100Gbpsって最高だよね！" userName="nee1r" createdAt="2025/10/01 15:34:40" color="">}}




{{<matomeQuote body="今、光ファイバーがアビエーターを着て、目からレーザービームを出すポスターを想像してるよ。「Dark Fiber」ってImpactフォントでデカく書かれてるやつ。" userName="dylan604" createdAt="2025/10/01 17:40:57" color="">}}




{{<matomeQuote body="サンフランシスコってまだダークファイバーが残ってるの？90年代のバブルは需要を見誤ってたもんな。" userName="geor9e" createdAt="2025/10/01 17:02:04" color="">}}




{{<matomeQuote body="DWDM技術の進歩は他のテクノロジーの成長を圧倒してるよ。昔10Mbpsだった1本のファイバーが今じゃ20Tbpsも運べるんだ、200万倍だよ！供給が限られてるファイバーも、今ならすごく長く使えるから、アクセス料金のプレッシャーは思ったより小さいかもね。" userName="madsushi" createdAt="2025/10/01 17:26:47" color="#ff5c5c">}}




{{<matomeQuote body="最近はどんな接続でも「ダークファイバー」って言う人がいるよね。俺もそれが気になるんだ。" userName="dpe82" createdAt="2025/10/01 18:34:57" color="">}}




{{<matomeQuote body="俺が言いたかったのは「ポイント・ツー・ポイントのシングルモード、無終端の光ファイバーケーブル」ってこと。つまり、他のトラフィックがない自分だけのケーブルだね。共有されてるやつは俺の言葉ではMetro Ethernetだよ。" userName="bayindirh" createdAt="2025/10/01 18:48:06" color="#ff33a1">}}




{{<matomeQuote body="初歩的な質問なんだけど、L2まで行かずに、共有ファイバーでスペクトル帯域を売る中間サービスってあるの？それとも、既製のEthernetを使って共有する方が簡単すぎて、それは複雑すぎるかな？" userName="woooooo" createdAt="2025/10/02 09:51:05" color="">}}




{{<matomeQuote body="うん、もちろんあるよ！よく「wave/wavelength」とか「lambda」サービス、あるいは「lit fiber」って呼ばれてるね。" userName="madsushi" createdAt="2025/10/02 17:20:09" color="#ff33a1">}}




{{<matomeQuote body="でも、9000万時間分のビデオデータってどこで手に入れるの？" userName="not--felix" createdAt="2025/10/01 15:37:09" color="#ff5733">}}




{{<matomeQuote body="しかも普通のビデオデータじゃなくて、Agentic Computer uses向けのスクリーン録画って明言してたよね。すごく特殊な種類のビデオだ。多分Rewind.aiみたいな会社と提携してるんじゃないかな。" userName="_1tem" createdAt="2025/10/01 15:43:11" color="#ff5c5c">}}




{{<matomeQuote body="“プライバシーのために、画面と音声の記録はローカルに保存され、Macから出ることはない。”ってRewindみたいなサービスが言ってるけど、まさか本当にRewindじゃないよね？彼らがヘッダーでリンクしてるプライバシーページからの引用だよ。" userName="Barbing" createdAt="2025/10/02 09:37:48" color="">}}




{{<matomeQuote body="＞多分、ヨーロッパにはそれを置きたくないだろうね。って、それが何かっていう最高のヒントだよね。" userName="hengheng" createdAt="2025/10/02 10:30:21" color="">}}




{{<matomeQuote body="俺の計算が合ってるなら、9000万時間の動画を30PBで賄うと平均ビットレートは760kくらいになるね。（プロビジョンしたスペースを初日から全部使うとは思えないけどね）だから、俺の推測だとCCTVみたいな動きの少ない映像か、デスクトップ録画みたいな低ビットレートの動画じゃないかな。このビットレートじゃYouTube動画みたいなもんじゃないと思う。（ビットレートとは関係なく、古いパブリックドメインの動画かもしれないけど）。どんな種類の動画を使ってるのか、めちゃくちゃ気になるよ。" userName="bobbob1921" createdAt="2025/10/02 18:46:33" color="#ff5c5c">}}




{{<matomeQuote body="オンプレミスがいかに安上がりになるかを示してるね。脱帽だよ。" userName="mschuster91" createdAt="2025/10/01 15:46:35" color="">}}




{{<matomeQuote body="メンテナンスのオーバーヘッドが含まれてないね。S3／R2は通常、運用担当者（OPS）を配置する必要がないけど、この手のセットアップだと週に5時間は誰かが対応に追われることになるだろうね。" userName="stackskipton" createdAt="2025/10/01 15:56:49" color="#38d3d3">}}




{{<matomeQuote body="その通りだね。だから、うちはオフィスから数ブロック離れた場所にデータセンターを置くことを選んだんだよ。" userName="nee1r" createdAt="2025/10/01 16:04:39" color="">}}




{{<matomeQuote body="昔、サーバー3ラック分くらい管理してたんだけど、そんなにディスクは多くなかったけど、ハードウェアのメンテナンスは数年間はほとんど必要なかったな（全部クラウドに移行するまでは）。サーバー管理の主な仕事はOSアップデートと、一番面倒なOpenStackだったけど、これはクラウドを使っても逃れられないことなんだよね…。" userName="mschuster91" createdAt="2025/10/01 15:59:59" color="#ff5733">}}




{{<matomeQuote body="S3／R2を使えば、そういう問題から解放されるんだよ。ファイルをどさっと置いて、必要な時に取り出すだけ。OSアップデート、ディスク障害、OpenStack、追加ハードウェア？そんなのS3会社の担当で、君の仕事じゃないって。前の会社でAzure Web App Containersを大量に使ってたんだけど、OS関連の作業はほとんどなくなって、クラウドで多くのOSの苦労が減らせるってことだよ。" userName="stackskipton" createdAt="2025/10/01 16:15:54" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
