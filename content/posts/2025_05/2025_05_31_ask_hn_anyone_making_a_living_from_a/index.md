+++
date = '2025-05-31T00:00:00'
months = '2025/05'
draft = false
title = '有料APIで生活できてる人いる？'
tags = ["API", "ビジネス", "マネタイズ", "開発", "起業"]
featureimage = 'thumbnails/green4.jpg'
+++

> 有料APIで生活できてる人いる？

引用元：[https://news.ycombinator.com/item?id=44144473](https://news.ycombinator.com/item?id=44144473)




{{<matomeQuote body="最初は開発会社として始めて、ユーザーの要望を基に2つのAPI製品を作ったよ。1つはOCRとドキュメント抽出サービス（formx.ai）。最初は3社から同じサービスを頼まれて、当時市場に使えるのがなかった（中国語に対応してるのがなかった）から始めたんだ。最近はLLMやVLMを使って、LLMだけじゃできない機能（顧客データでのファインチューニング、チェックボックスみたいな特定の要素のプロンプト調整、何百ページもあるPDFを数ページのドキュメントに分けるとか）を追加してるよ。今は月額55k MRRくらいで、ページごとに課金。クライアントのほとんどと年間契約してる（割引付きで）。<br>2つ目はオープンソースのCIAM（authgear.com）で、月額35k MRRくらいかな。<br>始めた時はマーケティングのこと全然知らなかったから、最初の有料顧客獲得のために地元のGCPとかAzureのISVとパートナーシップ組んだんだ。それで「コーポレート」向けの市場に行くことになったね。<br>一番の課題はやっぱりどうやって製品を売るかだけど、開発者向けのカスタマーサポートも大変だよ。相手も開発者だから、サポートするには自分も開発者じゃないといけないし、別の開発チームのためにトラブルシューティングしてるみたいに感じることさえあるんだ。<br>例えば、ある時クライアントからいきなりAPIが間違った結果を返すってメールが来たんだ。何回もメールやり取りした後、やっとビデオ通話で画面共有しながらトラブルシューティングさせてって聞いたら、なんとクライアントがキャッシュ付きのプロキシ経由で俺たちのAPIを叩いてたって分かったんだ（笑）。" userName="Bencheng" createdAt="2025/06/01 08:00:10" color="#38d3d3">}}




{{<matomeQuote body="GCPとかAzureの担当者と組もうってアイデア、どうやって思いついたのか気になるな。それ賢い動きだよね。彼らが協力してくれるなんて知らなかったよ。カスタムソリューションを提供することで、彼らが契約取るのを助けるって感じで提案したの？" userName="its_down_again" createdAt="2025/06/01 15:49:01" color="">}}




{{<matomeQuote body="他の製品がクラウドベンダーと組んでマーケティングしてるのを見て、俺たちも調べてみたんだ。<br>結局、彼らの営業担当者がクライアントに製品を売り込む一番効果的で簡単な方法は、何か補完的な製品がある場合だって分かったよ。俺たちの場合、似た製品があるから、ネイティブ製品が嫌いなクライアントに提案できるんだ。" userName="Bencheng" createdAt="2025/06/02 07:41:14" color="">}}




{{<matomeQuote body="クラウドの営業担当者は、マーケットプレイス経由で売ったサービスのコミッションがもらえるんだよね。GCPとかAzureのネイティブ製品より、サードパーティ製品を売る方が金銭的なインセンティブが高いことさえ結構あるんだ。" userName="nopcode" createdAt="2025/06/01 18:32:07" color="#ff5733">}}




{{<matomeQuote body="そうだね、でも数年経つと、インセンティブがズレてくることが多いって学んだよ。例えば、Account Managerはクライアントのアカウントで全部使ってもらいたいから、専用のCloudデプロイをクライアントに勧めるんだ。一方で他の営業担当者は別のリセラーアカウントで使ってもらいたい、とかね。<br>俺たちのインセンティブと衝突することもあるんだよ。" userName="Bencheng" createdAt="2025/06/02 07:44:53" color="">}}




{{<matomeQuote body="そういう人知ってるよ。でも彼のシナリオはかなり特殊だったな。あるエネルギー会社で働いてたんだけど、そこの社内ITは外部コンサルタントが何百万ドルも巻き上げてて、役に立たないかサービスが行き届いてない正社員は、また金儲けしてるコンサルタントの変更管理委員会を通さないとデータベースのクエリすら実行できなかったんだ。<br>とにかく、この人はガス顧客担当の頼れる存在で、データベースの中身を隅々まで知ってた。それで自分の会社を作って、正社員辞めて、パニックがちゃんと広がるのを待ったんだ。<br>それから彼はエネルギー会社にコンサルティングサービスを提供し直して、ガス顧客のデータに関わるデータベース処理費用とかクラウド移行費用とか全部引き受けるって言って、ガス顧客のデータを自分のシステムに移したんだ。その後APIを作って、もうしばらく待ってから、また離れるって言ったんだ…。いや、エネルギー会社が月額料金とAPI使用料に同意するなら、このセットアップのサポートを続けるって言ったらしい。<br>それで、俺が知ってる限り、彼は座って金が流れ込んでくるのを見てるだけで、他の仕事は全部自動化したんだ。" userName="Simon_O_Rourke" createdAt="2025/05/31 15:35:47" color="#45d325">}}




{{<matomeQuote body="＼＞顧客データを自分のシステムに移した<br>それ、かなり違法に聞こえるけど。" userName="franky47" createdAt="2025/05/31 15:44:59" color="">}}




{{<matomeQuote body="ITサービス会社とかMSPは違法じゃないよ。きっとこれは全部弁護士がチェックした契約書に詳しく書かれてたはずだよ。" userName="cootsnuck" createdAt="2025/05/31 15:55:46" color="">}}




{{<matomeQuote body="たぶん「顧客」ってのは内部顧客のことだと思うよ、つまりエネルギー会社の中のビジネスユニットで、あのメチャクチャなI.T.を乗り越えて実際に物事を進めてくれる彼の能力に頼ってた人たちのことじゃないかな。" userName="jt2190" createdAt="2025/05/31 18:52:29" color="">}}




{{<matomeQuote body="つまり彼はコンサルタントの一員になったようなもんだね。ただ、もっと良くて自動化されたプロセスを持ってただけ。" userName="Havoc" createdAt="2025/06/01 01:33:15" color="">}}




{{<matomeQuote body="回りくどい恐喝みたい？<br>もっと穏便な言い方があるんじゃないかな。" userName="ambicapter" createdAt="2025/05/31 16:01:01" color="">}}




{{<matomeQuote body="従業員は正当な対価を得てるみたいだね。<br>大組織ほど特定のキーマンが必要だけど、その人がちゃんと報われてないことが多いんだ。<br>会社は強気に出てコンサルティングサービスを断ることもできたのにね。" userName="__turbobrew__" createdAt="2025/05/31 17:03:56" color="#ff5733">}}




{{<matomeQuote body="恐喝？ それとも適正価格の発見かな？<br>管理職が彼に昇給させなかったから辞めたんだよ。頼みに来た時に断れる立場になったんだ。<br>問題があるとすれば、管理職が「もし彼にもっと払ったら」とは考えても「もし払わなかったら」を考えなかったことだね。" userName="baq" createdAt="2025/06/01 06:20:52" color="#785bff">}}




{{<matomeQuote body="倫理は置いといて、恐喝には聞こえないな。<br>組織の機能不全な意思決定を利用してるだけみたいだね。" userName="nkrisc" createdAt="2025/05/31 16:43:22" color="">}}




{{<matomeQuote body="彼は自分のシステムを作って、そのクライアントとして会社を onboarding したんだと思う。<br>問題は権利関係かもね。辞める前にシステムに関わってたか、概念を再利用してたら、会社は彼を訴えてシステムをタダで手に入れるはずだよ。<br>俺も以前の会社で似たこと考えたことあるな。ある会社が obscure な hybrid cloud を使ってて、 cloud provider が corps のニーズ（governance, devex, monitoring）を理解してなくて、 administrator の手動作業なしには何もできなかったんだ。<br>数個の API と dashboard でかなり解決できるのにね。" userName="user32489318" createdAt="2025/06/01 06:29:26" color="#ff5733">}}




{{<matomeQuote body="フルタイム従業員を辞めて、会社がパニックになるのを待ったんだね。<br>その人がいないと会社は機能しなかったんだよ。<br>それを恐喝と呼ぶのは飛躍しすぎてるよ。" userName="justsomehnguy" createdAt="2025/05/31 17:25:17" color="">}}




{{<matomeQuote body="回りくどい恐喝みたい？ もっと穏便な言い方があるんじゃないかなって？<br>どうしてそう思うの？ 元の会社は別の従業員を雇って彼を replacement することもできたのに、彼の会社と b2b 関係を結んだんだよ。<br>俺も似たようなことよく考えたことあるな。昔、たくさんの app を support してて、「これらのほとんどを scratch から作り直せば、 support してるものより良くなるだろう」って思ったんだ。<br>たとえ雇い主がそれらに価値を見出さなくても、古い junk を support するために別の誰かを雇ったとしても、他の会社は新しいものを買うだろうってね。" userName="Suppafly" createdAt="2025/06/01 06:38:50" color="#38d3d3">}}




{{<matomeQuote body="会社に対して「もう働かないよ」って脅してるなら、それがどうして恐喝になるの？<br>もし従業員が意図的に IT infrastructure を悪化させたなら fraud かもしれないけど、彼はそれを改善してた中心人物みたいだね。" userName="strken" createdAt="2025/06/01 05:16:44" color="">}}




{{<matomeQuote body="よくあることだよ。会社も大概は渋々OK出すかな、競合より元従業員に専門知識を売ってもらう方がマシだって思うからね。雇用契約とかは確認した方がいいけど、会社を辞めてそこで得た専門知識でコンサルとかフリーランスを始めるのはごく一般的だよ。元雇用主が最初のクライアントになったり、元雇用主関連のコネから仕事を得たりするのも珍しくない。もちろん、円満退社で対人スキルや需要のある専門知識、運とタイミング、それに小規模なサービス業をやる気力があればの話だけどね。" userName="cootsnuck" createdAt="2025/05/31 15:53:43" color="#ff5c5c">}}




{{<matomeQuote body="外部コンサルに払ってた数百万ドルを彼一人で代替できてるなら、ビジネスのプロが言う「ウィンウィン」ってやつかもね…" userName="alwa" createdAt="2025/05/31 16:07:58" color="">}}




{{<matomeQuote body="ウィン/ウィン/ルーズだね。コンサルタントは収入を失うわけだから。" userName="ipaddr" createdAt="2025/06/01 05:09:56" color="">}}




{{<matomeQuote body="合法性について疑問ってどういう意味？会社で知識を得る（良い仕事をした結果だよね？）ことが、どうして法的に一生そこで働き続ける義務になるの？何を言ってるのか全然分からないんだけど、あなたが何を示唆してるのか、具体的な境界線を説明してくれる？すごく見当違いしてるみたいだから。" userName="collingreen" createdAt="2025/06/01 21:30:10" color="">}}




{{<matomeQuote body="生活できるほどじゃないけど、レシピ材料（「刻み玉ねぎ2カップ」みたいなの）を構造化されたJSONにパースするAPIで月に200ドルくらい稼いでるよ。［0］<br>2019年にメンテナンスモードにして以来、年間1〜2時間しかメンテに使ってないから、99％くらいが受動的な収入かな。なんでクライアントがLLMに乗り換えないのか不思議だけど、このニッチ分野ではまだ価格や精度でLLMに勝ってるのかもね。誰か買い取ってくれる人がいたら売りたいんだけど、全部パッケージ化して引き渡すのに30〜40時間かかりそうだから、その機会費用を考えると5〜10kドルくらいになっちゃう。月200ドルのAPIに10kドル払う人はいないだろうな。知っておいてほしいのは、RapidAPIは使うなってこと！手数料20%取られるし、インターフェース最悪だし、顧客に高額請求させといて踏み倒されることもある。Paddleで自分でシンプルな仕組みを作ればよかったよ。［0］ https://zestfuldata.com/" userName="mtlynch" createdAt="2025/05/31 17:01:03" color="#ff5c5c">}}




{{<matomeQuote body="これと全く同じサイトを、数ヶ月前に面接対策でChatGPTのAPIを使って作ったんだ！一番苦労したのは、ChatGPTにChatGPT APIの使い方を聞いても全然役に立たなかったこと。APIの古いバージョンで学習されてるから、サンプルコードとかも全く動かなかったんだよね。" userName="soared" createdAt="2025/05/31 17:32:47" color="#ff5733">}}




{{<matomeQuote body="私の国だと、フリーランスでいるだけで月に200ユーロくらいかかるんだ（多分ほとんどが健康保険）。だから月200ドルじゃ全然無理だね。マージンがこんなに低いのに、みんなどうやって合法的に稼いでるんだろう？" userName="tkiolp4" createdAt="2025/05/31 22:45:34" color="">}}




{{<matomeQuote body="アメリカでは、個人事業主としてビジネスを運営するのにほとんど費用がかからないんだよ。だからZestfulだけじゃ生活できないけど、事業をやらないよりは確実に儲かるね。" userName="mtlynch" createdAt="2025/06/01 00:46:12" color="">}}




{{<matomeQuote body="俺の国じゃ、フリーランスだと月200ユーロくらいかかるよ（多分ほとんど健康保険代）。健康保険のためには普通の仕事に就くんだな。" userName="Suppafly" createdAt="2025/06/01 06:44:11" color="">}}




{{<matomeQuote body="年に1～2時間メンテするくらいで、ほぼ99%パッシブインカムみたいだね。その200ドルは本業じゃなくて、副収入って感じじゃない？" userName="selcuka" createdAt="2025/06/01 03:39:07" color="">}}




{{<matomeQuote body="このAPI、どんな客層が使ってるの？俺も似たようなこと考えたけど、マーケ的に”開発者”が顧客ってとこで引っかかったんだよね。だって開発者は何かを作ってて、その作ってるものの方が、Cursorみたいな汎用ツールより遥かに役に立つことって多いだろうし。" userName="philipodonnell" createdAt="2025/05/31 18:26:44" color="">}}




{{<matomeQuote body="だいたいユーザーがレシピをインポートしたり入力したりするアプリかな。そういうアプリが、買い物リスト作ったり栄養情報を提供したり、レシピで色々やりたいときに使ってるよ。" userName="mtlynch" createdAt="2025/06/01 00:47:34" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="最初の客はどうやって見つけたの？" userName="elwebmaster" createdAt="2025/06/01 11:56:23" color="">}}




{{<matomeQuote body="サービスの作り方についてブログ記事書いたり[0]、材料解析に関するStack Overflowの質問に答えたり[1]したんだ。<br>[0] https://mtlynch.io/resurrecting-1/<br>[1] https://stackoverflow.com/a/52304008/90388" userName="mtlynch" createdAt="2025/06/01 14:38:08" color="#ff5c5c">}}




{{<matomeQuote body="友達のDmytro[0]がScreenshotOne[1]っていうスクショAPIをやってるよ。一人で作ってて、最近$20K MRR達成したらしい。<br>[0]: https://x.com/DmytroKrasun<br>[1]: https://screenshotone.com" userName="longnguyen" createdAt="2025/05/31 15:28:07" color="#785bff">}}




{{<matomeQuote body="マジかよ！うちの会社、PMが思いついたヤバい機能にまさにこれが必要なんだ。自分たちで作ろうと思ってたけど、これならめちゃくちゃ時間節約になるわ！" userName="throwaway106382" createdAt="2025/05/31 16:10:36" color="#ff5733">}}




{{<matomeQuote body="Browserlessならタダでできるよ。<br>docker run -p 3000:3000 browserless/chrome:latest" userName="Lord_Zero" createdAt="2025/05/31 16:33:16" color="">}}




{{<matomeQuote body="俺も似たようなAPIやってるよ。<br>Screenshot apiとかweb scraping api。<br>https://capturekit.dev" userName="geiger01" createdAt="2025/05/31 15:35:25" color="">}}




{{<matomeQuote body="これって単にスクリーンショット撮るだけじゃなくて、クッキーバナーとか広告とかを消す機能も色々やってるみたいだね。それは常にターゲットが変わるから大変そう。もしすごくニッチな特定の用途なら悪くないかもだけど、どんなサイトでもそれが必要となるとかなりキツそうだね。" userName="nkrisc" createdAt="2025/05/31 16:46:37" color="">}}




{{<matomeQuote body="運営コストが分からないから、MRRだけ聞いても正直ピンとこないんだよね。もしプライベートなことじゃなければ、毎月の利益がどれくらいなのか知りたいな。" userName="yapyap" createdAt="2025/05/31 15:56:03" color="">}}




{{<matomeQuote body="自動化されたブラウザは自分で管理してるのかな？ScrapflyとかScraping Bee、Zen Rowsみたいなサービスのラッパーに、バナー削除用のカスタムJSを注入してるだけって可能性もあるよね。" userName="merek" createdAt="2025/06/01 02:21:15" color="">}}




{{<matomeQuote body="上の投稿は編集できないんだけど、そのコマンドに続けてスクリーンショットのリクエストをするならこれだよ：<br>curl -X POST http://localhost:3000/screenshot ＼<br>  -H ”Content-Type: application/json” ＼<br>  -d ’{”url”: ”https://example.com”}’ ＼<br>  --output screenshot.png" userName="Lord_Zero" createdAt="2025/05/31 16:37:24" color="#45d325">}}




{{<matomeQuote body="もし秒間100枚のスクリーンショットを撮りたいとしたら、どういうコマンドを実行すればいいの？" userName="mike-cardwell" createdAt="2025/06/01 08:26:36" color="">}}




{{<matomeQuote body="これめっちゃすごいね。こういう会社ってどうやってユーザーを増やしていくんだろう？何かアイデアや推測があればぜひ聞きたいな！" userName="gervwyk" createdAt="2025/05/31 16:49:29" color="">}}




{{<matomeQuote body="僕は自分でクラスタを管理してるよ。他のサービスをラップすることは検討しなかったんだ。スクレイピングに必要なことと、ウェブサイトのスクリーンショットに必要なことはちょっと違うからね。最高の品質を保証するには、クラスタを完全にコントロールする必要があるんだよ。" userName="krasun" createdAt="2025/06/01 05:04:43" color="#ff33a1">}}




{{<matomeQuote body="これって、ヘッドレスFirefoxにAdblockerの拡張機能を入れたら同じようにできないのかな？" userName="la_fayette" createdAt="2025/06/01 08:36:11" color="">}}




{{<matomeQuote body="本当に素晴らしいプロダクトだよ！長年使ってるけど、すごく満足してる顧客です！" userName="mnewme" createdAt="2025/05/31 21:49:31" color="#38d3d3">}}




{{<matomeQuote body="MRRって何？" userName="thatguyagain" createdAt="2025/05/31 15:52:30" color="">}}




{{<matomeQuote body="＞WebサイトをシンプルなAPIでスクリーンショットに<br>OPみたいに”WebサイトをAPIにする”のをちゃんと作りたい人いたら、気軽に連絡ちょうだい。<br>スタートアップやG、Google Xでの経験がある、すごく経験豊富なフルスタック＆Rust開発者だよ。" userName="leoh" createdAt="2025/06/01 04:28:25" color="">}}




{{<matomeQuote body="このスレッドの議論とはちょっと関係ないけど、<br>Chromeって秒間100枚もスクリーンショット撮れるのかな？最大どのくらいなんだろう？面白いよね。" userName="porridgeraisin" createdAt="2025/06/01 14:10:07" color="">}}




{{<matomeQuote body="＞ブラウザクラスターの管理や、全ての細かいケースを処理する代わりに<br>Dockerコンテナを動かすコストは、そのコンテナを管理しなきゃいけないことだね。お金じゃなくて開発時間で払ってるってこと。" userName="sjducb" createdAt="2025/05/31 16:47:13" color="">}}




{{<matomeQuote body="想像できないくらい大変だったよ。もしやり直せるなら、絶対やらない。もっと簡単なニッチを選ぶかな。SEOとかソーシャルメディアとか、そういうチャネルにすごく時間かけたんだ。" userName="krasun" createdAt="2025/06/01 05:05:54" color="#785bff">}}




{{<matomeQuote body="これすごいね！スマホで登録してプレイグラウンドで試したよ。僕のワークフローにぴったりハマる。今ハイパーローカルなディレクトリサイト作ってて、お店の良い画像を集めるのが大変だから、代わりにサイトの画像をこれで取得してプレースホルダーに使うつもり。<br>あと、OpenAI AssistantにサイトURL渡してデータ抽出するAIワークフローにも追加できる。OpenAIって画像とかPDFには強いけど、URLだとイマイチで訪問してくれないことが多いんだ。<br>これを使って画像かPDFにしてからOpenAIに渡してデータ抽出頼むと良さそう。ファイルの方がURLよりOpenAIは得意だって経験上思う。<br>良い仕事したね！お見事！" userName="osullip" createdAt="2025/06/01 07:56:32" color="#ff33a1">}}




{{<matomeQuote body="あなたの意見だと、もっと簡単なニッチって何かな？" userName="vsupalov" createdAt="2025/06/01 07:54:51" color="">}}




{{<matomeQuote body="それは確かに可能かもね。例えるなら、小麦を蒔いてりんごの木を植えるところからアップルパイを焼くみたいな感じかな。" userName="nkrisc" createdAt="2025/06/01 23:38:16" color="">}}




{{<matomeQuote body="Browserlessってサービス、商用で使うと無料じゃないらしいよ。気を付けてね。" userName="fastball" createdAt="2025/05/31 16:39:11" color="">}}




{{<matomeQuote body="まさにそれな。何かを立ち上げたり管理したりするのに、開発者に払う時間とお金のことを忘れがちだよね。" userName="throwaway7783" createdAt="2025/05/31 19:22:44" color="">}}




{{<matomeQuote body="Cloudflareにブラウザをブロックされる問題って起きないの？気になるな。" userName="dpacmittal" createdAt="2025/06/01 10:15:08" color="">}}




{{<matomeQuote body="スクリーンショットだけじゃなく、クッキーバナーとか広告消したり、もっと色々できるみたい。それは常に変わるターゲットだよね。あー、つまりこういうコマンドでできるってことかな？<br>chrome --load-extension=path/to/ublock --headless --screenshot https://website.com" userName="tredre3" createdAt="2025/06/01 02:41:09" color="#785bff">}}




{{<matomeQuote body="彼らのTwitterをちょっと調べたら、$14KのMRR（月間経常収益）と$4Kの経費があったって言ってたよ。参考になるかも。" userName="financetechbro" createdAt="2025/05/31 16:06:45" color="#45d325">}}




{{<matomeQuote body="小さい会社にいて、収益のほとんどが有料APIなんだ。具体的なことは言えないけど、APIは特定分野のすごい機械学習モデルだよ。価格表もあるし、割引交渉もある。一番の課題は、Google Lens（うちよりは全然ダメだけど）が普通の人には十分になってきてること。ML APIだけでエンドユーザーアプリを作らなかったのが後悔。結局、フロントエンド作る人が一番儲けてるっぽいんだよね。" userName="tasuki" createdAt="2025/05/31 19:44:04" color="#45d325">}}




{{<matomeQuote body="＞ 結局、フロントエンド作る人が一番儲けてるっぽいんだよね。<br>まあ、そうだよ。彼らは直接お客さんの困り事を解決してるからね。君たちは、お客さんの困り事を解決してる人の困り事を解決してるわけでしょ？<br>稼ぎの元から一歩（かそれ以上）離れてるってことさ。" userName="lelanthran" createdAt="2025/06/01 06:00:44" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="君も驚いてないし、僕も驚いてないよ。でもさ、パートタイムで数人って会社だったら、得意なことに集中するっていう選択はアリだったと思うんだ。" userName="tasuki" createdAt="2025/06/01 06:41:21" color="">}}




{{<matomeQuote body="よくあるアドバイスは”シャベルを売る”だよね？でもこの場合は”金を掘りに行く”のが正しい戦略ってのは、なんか非自明な気がするんだけど。" userName="pinkmuffinere" createdAt="2025/06/01 06:14:21" color="">}}




{{<matomeQuote body="金を掘るかもしれない人にシャベルを売れるよね。でもそれって元の投稿者が言ってる製品分野とは違うと思うな。" userName="yencabulator" createdAt="2025/06/01 20:58:48" color="">}}




{{<matomeQuote body="ML APIだけじゃなくend-user appsもやるべきだったって後悔は、front end作る人が大儲けしてるかららしいね。<br>なんでそれがよくないの？自分の得意なことに集中できるし、API使ってるアプリがたくさんあれば、それぞれからちょっとしか儲けなくても十分補えると思うんだけど。" userName="tomburgs" createdAt="2025/06/01 13:21:55" color="">}}




{{<matomeQuote body="front endを作る人が一番儲けてるって言うけど、もっと詳しく説明してくれない？よく分からないんだよね、その話。" userName="pan69" createdAt="2025/05/31 20:16:13" color="">}}




{{<matomeQuote body="hotdog＼not-hotdog APIを例に説明するね。画像見てhotdogかnot-hotdogか返すAPIで、1回1.5セントとする。<br>別の会社がAndroidアプリ作って月5ドルで売るとするよ。ユーザーは月平均60回API使う。<br>API提供者は60回＝0.9ドルの収入。計算コスト半分とすると月0.45ドルの利益。アプリ会社は（5ドル － App Store手数料30% － API分0.9ドル）＝月2.6ドルの利益。<br>API提供者よりfront end作る方が儲かるでしょ。" userName="the_pwner224" createdAt="2025/05/31 21:32:11" color="#785bff">}}




{{<matomeQuote body="front end作る人が儲かる理由を詳しく説明するね。顧客と直接やり取りするプレイヤーは顧客を“所有”してるから、サプライヤーと交渉する力があるんだ。顧客の情報を一番持ってるから、関連商品も売れる（”ポテトもいかが？”みたいにね）。<br>UberやLyftは大儲けしてるけどドライバーはそうじゃない。AmazonやEbayは大儲けだけど出品者はそうじゃない。McDonaldsは食材サプライヤーより儲かってるし、フランチャイズ店より儲けてる。<br>例外は知的財産かな。映画を例にすると、コンテンツの所有者は広く売りたいからいろんな流通チャネルと契約する。でももしどれか一つのチャネルが大きく儲け始めたら、契約更新の条件を変えられるんだ。だってコンテンツが無ければそのチャネルは終わりだからね。" userName="fsckboy" createdAt="2025/06/01 20:43:59" color="#ff5733">}}




{{<matomeQuote body="front end作る人が儲かるのは、APIの市場が小さすぎたんじゃないかと思うな。<br>もしAPIがアプリと1対1対応なら、アプリを作ればいいのは当然だよ。でも、APIがたくさんのアプリに使われてて、それらのアプリは儲けてるのに自分のAPIがダメなら、それは最初から市場がなかったってことだと思うな。" userName="svnt" createdAt="2025/06/01 01:56:48" color="">}}




{{<matomeQuote body="そう、市場は小さいね。うちのソリューションは単独のアプリとしてもパッケージできるけど、他にも関連した使い道はあるんだ。" userName="tasuki" createdAt="2025/06/01 06:45:02" color="">}}




{{<matomeQuote body="技術プロジェクトで価値を提供する方法にも興味があるんだ。<br>この話題を深掘りする時の課題は、成功してる人が目立たないようにしたがるインセンティブがあること。ここで詳細を共有しても得るものは少ないし、最悪の場合、競争相手を招きかねないからね。<br>Open Sourceみたいに成長で成り立つコミュニティは気軽に共有するけど、APIビジネス、特に簡単に実行できるものは、その優位性を守ろうとすることが多い。<br>最近見つけたんだけど、APIとは少し違うけど、長い動画ファイルを24時間365日配信するのを手助けするサービスがあるんだ。YouTube live streamsはlofi-types of channelsとかでうまく機能してるみたいで、autopilot live streamsを可能にするために作られたサービスもあるよ。" userName="vsupalov" createdAt="2025/05/31 15:14:52" color="">}}




{{<matomeQuote body="テックな人はすぐ「これ誰でも作れるじゃん」って思っちゃうけど、結局はお客さんがお金出すかどうかだよね。Pirate Bayで音楽タダだった時代もSpotifyは勝ったし、ImageMagickみたいなOSSの上に乗せたAPIも成功してる。人は「便利」にお金払うんだよ。<br>自分がよく知ってる分野で、技術で解決できる困りごとを探すのがスタートだよ。俺は開発者で、自分が欲しいAPI作ったんだ。" userName="jlundberg" createdAt="2025/05/31 20:17:35" color="#785bff">}}




{{<matomeQuote body="もし警察が「音楽泥棒」を取り締まってなかったら、Spotifyは勝てなかったと思うよ。罰金ビビって、多少高くても払うようになったんだから。まあ、それでもCDよりは全然安いけどね。" userName="bad_haircut72" createdAt="2025/06/01 01:06:15" color="">}}




{{<matomeQuote body="確かに著作権取り締まりは大きかったけど、初期Spotifyの「ワンクリックで何でも聞ける」はマジで凄かったよ。海賊版じゃ絶対無理な体験。<br>あと、初期はほぼ全部違法音源だったの、面白い話だよね。絶対権利取れないと思ってたわ。" userName="jlundberg" createdAt="2025/06/01 05:54:21" color="">}}




{{<matomeQuote body="napsterの初期もそんな感じだったね（回線遅くて体験は悪かったけどさ）。君の言いたいことはわかるよ。" userName="axpvms" createdAt="2025/06/03 08:26:18" color="">}}




{{<matomeQuote body="それどの警察が関わってたの？アメリカだとRIAAが私立探偵雇って訴えてただけだったけどさ。" userName="hollerith" createdAt="2025/06/01 01:11:25" color="">}}




{{<matomeQuote body="どの会社にも「秘密」があるんだよ。業界をよく知ってれば競合の動きもわかる。ビジネスの「秘訣」って普通わかんないもんで、それが儲けの元。<br>俺は今すぐちょい変えるだけで年100万ドル追加で稼げる方法知ってる。でも忙しいし、秘密を教えるリスク高いからやらないだけ。" userName="monero-xmr" createdAt="2025/06/01 01:55:17" color="">}}




{{<matomeQuote body="俺は自分で作ったSMSとか電話のAPIで食えてるよ。MRRは50万ユーロくらいで、使った分だけ払ってもらう課金モデル。<br>ヨーロッパとかスウェーデンの携帯網にプログラムからアクセスできるのが強み。<br>最初の客はオフラインの交流会とか友達から。これが課題で、オフライン集客を広げるのが大変。<br>ここまで来るの辛かったけど、今でも信じられないくらい上手くいってる。" userName="jlundberg" createdAt="2025/05/31 20:05:58" color="#ff5c5c">}}




{{<matomeQuote body="どんな技術スタック使ってるか聞いてもいい？スウェーデンのインフラ周りで仕事してる友達がいて、面白い話いっぱい聞いてるんだ。" userName="xelxebar" createdAt="2025/06/01 01:41:53" color="">}}




{{<matomeQuote body="オペレーターとは直接繋いでて、プロトコルはその都度合わせる感じ。SMPP, SIP, MM7とかVPN/TLSが多いかな。<br>契約もカスタムだし、始めた頃は仮想携帯番号なんてなかった。最近はオペレーターもビジネス理解してくれて、投資なしで使える容量が増えてきた。<br>自社ソフトはPython中心でOSSも使うけど、大事なとこは独自開発。<br>お客さんには、技術サポート、接続、安定性、デバッグしやすいAPIが価値になってるよ。" userName="jlundberg" createdAt="2025/06/01 03:06:46" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
