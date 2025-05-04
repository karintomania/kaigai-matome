+++
date = '2025-04-27T00:00:00'
months = '2025/04'
draft = false
title = 'みんな今何開発してる？ 2025年4月版'
tags = ["開発", "AI", "3D", "安全", "ツール"]
featureimage = 'thumbnails/purple4.jpg'
+++

> みんな今何開発してる？ 2025年4月版

引用元：[https://news.ycombinator.com/item?id=43815523](https://news.ycombinator.com/item?id=43815523)




{{<matomeQuote body="木を切るツールを開発してるよ．木を多方向から写真撮って3Dモデル化，グラフ表現にして最適な伐採場所を提案するんだ．特に倒す方向が限られてる場合に便利．倒れた枝の状態から元の状態に戻すベクトルを作って，他の枝と交差しない順番で処理するんだ．友達の庭の難しい木を倒すのに苦労したのがきっかけだよ．tree-surgeonからも関心があるから，アプリ化したいな．次のバージョンは物理ベースでenergy-minimisation methodsを使う予定．" userName="tetris11" createdAt="2025/04/28 10:33:17" color="#ff33a1">}}




{{<matomeQuote body="切る時に木材の価値も考えた方がいいよ．うまく切れば安全なだけじゃなく，木から最大のboard feetが取れるからね．" userName="1970-01-01" createdAt="2025/04/28 14:27:38" color="">}}




{{<matomeQuote body="チェーンソーに代わる安全な方法を長年考えてるんだ．carbide coated wireとかchainをモーターで動かして，木にセットしてスイッチオンで倒れるみたいな．どう動かすかが難しいんだよね．wireじゃなくてchainを振動させるとか．チェーンソーの代替が大型機械以外に無いのが不思議だよ．チェーンソー事故で入院した人と同室になったのがきっかけ．まだworkableなアイデアはまとまってないけど，誰か他の人が思いつくかもね．" userName="rapjr9" createdAt="2025/04/29 20:45:24" color="">}}




{{<matomeQuote body="無知でごめん．僕が見たことある木の伐採は全部，登って上から順番に切っていく方法だったんだけど，木を倒す方が良い，あるいは必要なのはどんな状況なの？" userName="scandox" createdAt="2025/04/29 08:52:29" color="">}}




{{<matomeQuote body="そういうモデルがあれば，果樹が育つ時にどう剪定すればいいか教えてくれると嬉しいな．グラフ生成の良いfront endがあれば，かなりstraightforwardなsupervised problemになりそう．" userName="defterGoose" createdAt="2025/04/28 17:34:47" color="">}}




{{<matomeQuote body="すごく良いアイデアだと思うけど，ユーザーがアマチュアで手順を間違えた場合のliabilityがすごく大きいよ．" userName="r0fl" createdAt="2025/04/28 11:07:28" color="#ff5733">}}




{{<matomeQuote body="それなら，できるだけ地面に近いところで切ればいいだけじゃない．そんなに複雑なmathは要らないよ．" userName="dyauspitr" createdAt="2025/04/28 16:15:16" color="">}}




{{<matomeQuote body="製材の場合、長さより切れる幅の方がずっと重要なんだ。需給（＆輸送）によっては短い方が価値ある時もあるよ。木が完璧な円柱（というか円錐）じゃないって事実を考慮するところから、最適化の面白さが生まれるんだよね。" userName="skeeter2020" createdAt="2025/04/28 18:50:47" color="">}}




{{<matomeQuote body="林業ソフト開発の仕事してるんだけど、キミの方法に興味あるな。これオープンソース？成長モデリングに対応する予定とかある？" userName="boogieknite" createdAt="2025/04/28 18:26:50" color="">}}




{{<matomeQuote body="今日、3フィートのマツの切り株を5トンのBobcatで6時間掘ってもダメだったからさ、キミが説明してたワイヤーみたいなツール、切り株撤去に使えそう！って思ったんだ。でも木を倒す場合は、狙った角度に倒すために正確な受け口／追い口が必要で、たとえケーブルつけてても一方向に切るだけじゃダメなんだよ。" userName="beau_g" createdAt="2025/04/30 03:39:55" color="">}}




{{<matomeQuote body="グラフ表現って、どうやって問題解決に役立つの？" userName="mon_" createdAt="2025/04/28 15:32:23" color="">}}




{{<matomeQuote body="木が安全に倒れるためのスペースがどれだけあるかによると思うな。木の高さ分のスペースがないなら、分割して制御しながらやる必要があるね。" userName="curmudgeon22" createdAt="2025/04/29 17:47:06" color="">}}




{{<matomeQuote body="造園業で学んだ簡単な剪定法「枯れ枝、交差枝、見た目」を紹介するね。まず枯れ枝、次に他の枝と交差してる枝を切り、最後に見た目を整える。この方法なら初心者でも失敗しにくいし、木をダメにしにくいよ。アプリで枝の状態を入力するのは大変そうだけど、ドローン写真とか使えるかもね。キミの果樹、うまくいくと良いね！" userName="toss1" createdAt="2025/04/28 22:55:35" color="#ff5c5c">}}




{{<matomeQuote body="これ（開発対象）の判断一つで、訴訟費用で破産するんじゃない？めちゃくちゃ細かい免責事項が本当にキミを救うかな？たとえ「このモデルは資格のあるプロの樹木医だけが使う補助ツールです」って言っても、素人が使って木が家に倒れたら訴えられるんじゃないかって怖いな。" userName="conductr" createdAt="2025/04/28 19:18:42" color="#38d3d3">}}




{{<matomeQuote body="切り株を燃やすのはどう？<br>参考に動画これだよー<br>－ https：／／www．youtube．com／watch？v＝XTeGbunc＿Sk<br>－ https：／／www．youtube．com／watch？v＝tsLCIB80Y6k<br>－ https：／／www．youtube．com／watch？v＝35d5TtYJf＿g" userName="kirubakaran" createdAt="2025/05/01 00:32:29" color="">}}




{{<matomeQuote body="街の近くで誰かがお金払って切ってもらいたい木は，たいてい建物や電線，地下のパイプから離れてるんだよね（thatsも撤去したい理由でもあるけど）．だから，そのまま倒すのは難しい場合が多い．クレーンとか高所作業車で区切りながら切るのを見るのはそのためだよ．住宅街や商業エリアでツリーケア会社がやる木の多くは，オークみたいな大きく枝が張った広葉樹で，たとえ落とす場所があっても地面から安全に倒せないこともあるんだ．伐採とか山火事現場だと，切る木のほとんどはパインとかファーみたいなまっすぐ伸びる針葉樹で，地面から（か機械で）そのまま倒しちゃうことが多いね．" userName="beau_g" createdAt="2025/04/30 03:45:58" color="#ff33a1">}}




{{<matomeQuote body="俺は素人（L＝lumberjack，きこり）だけど，単純に切り倒すのが一番安いんじゃない？<br> quicker だし必要な equipment も少ないし，高いところに登ってチェーンソー扱う危険もないしね．<br>あと，もし幹から長い板を取りたいなら，ちょっとずつ切るのはナシだよね．" userName="shatnersbassoon" createdAt="2025/04/29 10:10:05" color="">}}




{{<matomeQuote body="数ヶ月前のリンゴの木の剪定シーズン中に，同じようなことを考えてたんだ．<br> Luma で自分の木をスキャンして， 3D モデルまで作ってみたよ．<br>これはびっくりするほど上手くいったけど，彼らのサービスが混み合ってたみたいで， rendering には数日かかったね．<br>俺の必要性／アイデアは，どこか（多分 r／backyardorchard ）にそれを投稿して，どの枝を剪定すべきか助けてもらうことだったんだ．<br>でも，そういうのを簡単にシェアする方法が見つからなくて，時間もなかったから，自分で突き進むしかなかったんだ．" userName="jwineinger" createdAt="2025/04/29 14:31:16" color="">}}




{{<matomeQuote body="いいアイデアだね．<br>これ，なんで Lidar 使わないんだろうってちょっと思った．<br> Lidar モデルの空間的な精度の方が，木の重さの分布をずっと良くモデル化できると思ったんだけどな．" userName="willtemperley" createdAt="2025/04/29 04:16:40" color="">}}




{{<matomeQuote body="俺が住んでるところでは，これがすごく役に立ちそうだよ．<br>だって，みんな，どう言うか，多分 safety や logic specs に関して ignorant すぎるから．<br>あと， imminent とか highr posibilities で風で倒れる木を知るか推定するのにも役に立つかも．<br> Happy to help！" userName="javiercornejo" createdAt="2025/04/28 12:51:52" color="">}}




{{<matomeQuote body=" wedge shape に穴を開けて枝を弱らせて，自然に折れるようにするのもありかもだけど，チェーンソーより大変そうだね．<br>穴は蒸気処理とか， enzymes ［ 0 ］とか，何か別のものを入れて分解するのにも使えるかもね．<br> ［ 0 ］ https：／／en．wikipedia．org／wiki／Lignin－modifying＿enzyme" userName="downboots" createdAt="2025/05/04 08:34:49" color="">}}




{{<matomeQuote body="俺はこのことで NVEL をよく使ってるよ．<br>前には面白半分で wasm に移植してクライアントが使いやすいようにしようとしたこともあったな．<br>俺たちは木を“仮想的に玉切り”してるんだけど，これは君の提案してる使い方にも応用できそうだよ．<br>もし投稿者（op）がこの方向で進みたいなら： https：／／github．com／FMSC－Measurements／VolumeLibrary／tree／77d4．．．" userName="boogieknite" createdAt="2025/04/28 16:29:40" color="#ff5c5c">}}




{{<matomeQuote body="俺も果樹の剪定でこういうの想像してたんだー．<br>俺みたいな noobs でも，剪定のガイドラインを実際の伸び放題の木でどう実践すればいいか分かるようなやつ．<br> Good luck！" userName="monkeywithdarts" createdAt="2025/04/28 15:55:27" color="">}}




{{<matomeQuote body="Popgot（https://popgot.com）っていうツールを開発してるよ。Costco、Walmart、Target、Amazonの商品の単価（1オンスあたり、1シートあたり、1ポンドあたりの値段）を追跡できるんだ。ややこしい”ファミリーサイズ”とか”メガパック”みたいな表示を標準化して、日用品の本当の最安値をすぐに見つけられるようにしてるんだ。それに、軽いAIモデルを使って商品説明を読んで、材料とかでフィルタリングもできるんだ（例えば、プラスチックの写真からBPAが入ってるか確認したり、栄養表示からパーム油を避けたり、WSAVA準拠のドッグフードだけ表示したり）。まだ手動で結果を確認して、抽出ミスがないかチェックしてるけどね。もともと大量買いのために自分でスプレッドシートで管理してたのを、もっと自動化しようと思って始めたんだ。価格下落のアラートとか、在庫が少なくなったら知らせてくれる機能とか、どんどん追加していく予定だよ。" userName="juxtaposicion" createdAt="2025/04/28 13:45:01" color="#785bff">}}




{{<matomeQuote body="安いものを求めていろんなお店に行く時間はないんだよね。いつも決まったお店に行ってるから。<br>ただ、何週間か何ヶ月かの買い物のレシートをアップロードできるツールがあったらいいな。そうすれば、普段何を買ってるかをアプリが分析して、主要な4、5店舗と比べてどこに行けば一番安くなるか教えてくれるんだ。" userName="abdullahkhalids" createdAt="2025/04/28 23:57:44" color="">}}




{{<matomeQuote body="うん、そうだね。お店を変えるより、一つの店舗に絞る方が楽だもんね。あと Popgot.com はオンラインで配達できるものしか扱えないから、生鮮食品じゃない日用品とか消耗品に限られるんだ。でも、消耗品だけでも単価で買うようにしたら月に100ドルくらい節約できてるよ。レシートをアップロードして、どれくらい節約できるか見るっていうアイデア…それ良いね。君の個人サイトでメールアドレス見つけられると思うんだけど、プロトタイプができたらメールしてもいいかな？" userName="juxtaposicion" createdAt="2025/04/29 01:01:48" color="">}}




{{<matomeQuote body="一度きりのメールなら大丈夫だよ。<br>ただ、僕はカナダにいるから、そっちに展開しないとテストはできないけどね。ありがとう。<br>アメリカではどうかわからないけど、こっちではスーパーマーケットの寡占が進んでて、消費者は結構圧迫されてる気がする。だから、こういうツールは競争を促進するためにも価値があると思うよ。" userName="abdullahkhalids" createdAt="2025/04/29 01:11:20" color="">}}




{{<matomeQuote body=" shameless plug だけど、僕のプロジェクト（https://grocerytracker.ca/）もカナダ向けだよ。ゆくゆくは君が提案してるみたいな機能を実現したいと思ってるんだけど、今は同じ商品をリストに入れて、毎週どこのお店が安いかチェックする、っていうのが一番近い使い方かな。" userName="nosecreek" createdAt="2025/04/29 17:29:13" color="">}}




{{<matomeQuote body="これすごく良いアイデアだね。それに OCR も最近は十分レシートを解析できるくらい性能良いはずだし。たぶんモバイルアプリにするのが一番使いやすいだろうね。" userName="amelius" createdAt="2025/04/29 09:30:53" color="">}}




{{<matomeQuote body="レシート見たことある？細長くて、商品ごとに1行しか表示されないし、どこのお店も同じ商品なのに印刷内容が違うんだよ。たいてい店舗固有の SKU と値段、それとその1行に収まるように短縮された商品名だけなんだ。ランダムなレシートから人が何を買ったか正確に特定するのは、結構難しいと思うよ。" userName="what" createdAt="2025/04/30 05:15:43" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="素晴らしいサイトだね！君も知ってるかもしれないけど、念のため。イギリスには trolley.co.uk （アプリもある）っていう便利なサイトがあるんだ。お店でブランド品が良い値段か、ぼったくられてないか確認したい時に、バーコードスキャナーをよく使うよ。彼らは全商品を網羅してると思う（たぶんイギリスではオンライン食料品購入が盛んだからかな？）。個人的には、オンラインショッピングを始めようと思ってるんだ（新米パパで時間がないから）。買い物リストを作ったら、どのオンラインスーパーに注文するのが一番お得か、お店ごとの買い物かごの値段の内訳と一緒に教えてくれるサイトがあったら最高だね。" userName="nicgrev103" createdAt="2025/04/29 11:07:52" color="#ff33a1">}}




{{<matomeQuote body="これすごくいいね！アドブロッカー解除しちゃったよ。本当にありがとう。<br>追記：”プロテインバー”で検索したら、全てのプロテインバーが同じように扱われたんだ。安い方から1位〜20位まではプロテイン含有量が15g未満だったよ。20gのプロテインが入ってるのは、50位〜60位までスクロールしないと見つからなかったんだ。Kirkland Signature のプロテインバーより安いのは意外だったな。" userName="noahbp" createdAt="2025/04/29 03:44:26" color="#785bff">}}




{{<matomeQuote body="このアイデアすごくいいね！まだまだ伸びしろを感じるな。なんか過去の価格を追跡したりアラートする機能ってある？アンド／オア、買いたいものリストを入れたら、まとめて一番安くなるお店を計算してくれる機能とかも気になるな。例えば、Costcoが他の店よりずっと安いってよく聞くけど、自分で比較するには色んな店で買い物カート作って比べなきゃいけないから。" userName="KerryJones" createdAt="2025/04/28 13:56:14" color="#ff5c5c">}}




{{<matomeQuote body="前のコメントのCostco比較の話だけど、昔レシート全部管理してスプレッドシートで家計簿つけて、単位あたりのコストとか真面目に計算してたことあるよ。色々勉強になったし節約にもなったと思うけど、めちゃくちゃ大変だったな。" userName="mynameisash" createdAt="2025/04/28 20:08:10" color="">}}




{{<matomeQuote body="みんながCostcoについて話してくれて嬉しいよ！ちょうどそれについてブログ記事書いたとこなんだ→ https://popgot.com/blog/retailer-comparison<br>実はCostcoっていつも最安じゃないんだよね。利益率は低いけど、単位あたりの価格で見るとそこそこって感じ。<br>＠mynameisash さん、あなたが学んだこと気になるな... Popgotデータで誰かの役に立てるかも。" userName="juxtaposicion" createdAt="2025/04/28 20:38:35" color="">}}




{{<matomeQuote body="Costcoの話なんだけど、オンラインとお店で値段とか違うのは知ってる？<br>前に使ってた家計簿スプレッドシート見直したら結構ザルだったんだけど、経験的にはCostcoが結構安かったかな。例えばピーナッツバターとか。ただ、Costcoってジェネリック品がないんだよね。TargetとかにはMarket Pantryみたいにもっと安いプライベートブランドもあるし。" userName="mynameisash" createdAt="2025/04/28 21:22:08" color="">}}




{{<matomeQuote body="うちの家族の感覚だと、Costcoっていつも最安ってわけじゃないけど、値段に対して質が良い、つまりバリューがあるって感じかな。<br>一番の例はパスタとか。近所のスーパーにはめっちゃ安いPBパスタがあるけど、Costcoにあるちょっと高めのパスタほど美味しくないんだ。同じくらいの品質のパスタを近所のスーパーで買おうとすると、もっと高くなると思う。どっちのお店にも置いてるものに関しては、Costcoは普通に小売価格より安くないし、滅多にすごく高いってこともないかな。" userName="ellisv" createdAt="2025/04/29 11:38:40" color="">}}




{{<matomeQuote body="CostcoとWalmartで品質が全然違うって感じるな。値段があんまり変わらなくてもね。" userName="jwineinger" createdAt="2025/04/29 14:36:19" color="">}}




{{<matomeQuote body="気に入ってくれてめっちゃ嬉しいな！<br>価格の履歴追跡機能はデータベースには入ってるんだけど、まだ商品としては出してないんだよね。どんな使い方を考えてる？／何のために使いたい？" userName="juxtaposicion" createdAt="2025/04/28 20:40:14" color="#ff5733">}}




{{<matomeQuote body="クールなプロジェクトだね！<br>私は逆物流の会社で技術担当してて、Costco／Target／Walmartから過剰在庫買ってて、似たような値段付けシステム作ってるんだ。情報交換とか協力できないかなと思ってメールしたんだけど、もし忙しかったら大丈夫だよ！" userName="mistahenry" createdAt="2025/05/02 23:46:43" color="#ff5c5c">}}




{{<matomeQuote body="Open Food FactsっていうNPOに関係してるプロジェクトがあって、バーコード付き商品の価格を集めてるよ→ https://prices.openfoodfacts.org/about<br>ラベルから価格を自動で読み取るシステムとか、レシートから読み取るやつも開発中らしい。" userName="Albrekt" createdAt="2025/04/29 13:14:47" color="#ff33a1">}}




{{<matomeQuote body="Popgotの除外機能いいね。Amazon.comとか除外できるんだね。挙げてる4つ以外の店（sweetmarias.comとか）は増やす予定ある？ sweetmarias.comでよく豆買うんだけど、Amazon除くとWalmartの1件しか出なくなっちゃうんだ。" userName="mynameisash" createdAt="2025/04/28 21:14:01" color="#38d3d3">}}




{{<matomeQuote body="マジか！このPJの仲間がsweetmarias.com入れたがってたんだよ…これを言い訳にできるな。よし、追加するわ！メール（chris @ ＜our site＞.com）くれたら、できたらリンク送るよ。1〜2日で終わるはずだよ。" userName="juxtaposicion" createdAt="2025/04/28 22:48:51" color="#38d3d3">}}




{{<matomeQuote body="フィルタリング最高じゃん！どうやってAIをシステムに入れたか教えてくれない？ ”フラグ立てたピーナッツバター”の例だと、LLMが製品に大量の属性タグ付けしてるのか気になるんだけど。ランニングコストヤバそうじゃない？" userName="cwackerfuss" createdAt="2025/04/29 03:20:31" color="#ff33a1">}}




{{<matomeQuote body="初のSQLデバッガーだって！クエリをステップ実行して可視化するんだ。あらゆる句、条件、式、GROUP BYとか集計、ウィンドウ、DISTINCT、サブクエリ（相関）、CTEとか全部！行を全部/部分的に検索して、結果にどういう中間行が貢献したか（どのCTE/サブクエリから来たか）もわかるんだよ。完全オフライン、AI不使用。ブラウザ版無料（PGLite WASM使用）、デスクトップ版有料。サイトはまだないけど、5分動画あるよ（真ん中飛ばして見てね）。" userName="xarici_ishler" createdAt="2025/04/27 22:48:11" color="#ff5733">}}




{{<matomeQuote body="今日考えてたんだけどさ…デバッガーじゃなくていいから、SQLのプログレスバー欲しいな。カラム追加とか7時間かかるとか事前に分かるとかさー。" userName="parrit" createdAt="2025/04/28 05:28:46" color="">}}




{{<matomeQuote body="これすごいね！うちのチーム（アナリストとデータエンジニア）はSnowflakeのデータウェアハウス使ってて、dbtモデルもいっぱい書いてるしSQLスキルも色々なんだ。これならジュニアな開発者のスキルアップに最高だし、複雑なモデルもサポートできそうだよ。SnowflakeとかBigQueryみたいなデータウェアハウスをターゲットにした方が、クエリ複雑だしツールの価値も高まると思うな。" userName="benjaminsky2" createdAt="2025/04/28 14:40:03" color="#45d325">}}




{{<matomeQuote body="ありがとう、業界の人からのアイデア検証ありがたいよ！データウェアハウスは絶対TODOリストのトップにあるよ、俺が慣れてるからPGを最初に選んだんだ。デバッガーできたらメールで連絡しようか？興味あったらだけど。メールはプロフィールにあるよ！" userName="xarici_ishler" createdAt="2025/04/28 15:04:28" color="#785bff">}}




{{<matomeQuote body="これ、なんで一部クエリが遅いのか理解するのに最高だね！うちの会社だと、実行時間の99%が途中のどっかのステップなんだよ。各ステップの時間も記録してるの？" userName="jeffhuys" createdAt="2025/04/28 16:13:45" color="">}}




{{<matomeQuote body="EXPLAIN ANALYZE使えば、一番計算時間かかったステップ特定できない？大体のDBにそういう機能あると思うんだけどな。" userName="thebytefairy" createdAt="2025/04/29 01:07:10" color="">}}




{{<matomeQuote body="これ、マジでみんな知っておくべきすごいコマンドだよ。前さ、パイプライン止めちゃうくらい時間かかってるDBクエリがあってさ（1週間で書いたコードだったんだけど、もちろん業務に不可欠になっちゃったんだよね）。それでこのコマンド使ってみたら、15分くらい考えた後、重要な列にインデックス追加したんだ。そしたら実行時間が30分近くから5秒に短縮されたよ！" userName="xzel" createdAt="2025/04/29 21:32:47" color="#ff5733">}}




{{<matomeQuote body="これ、初めて聞いたよ。たぶん同僚も知らないと思うな。教えてくれてありがとう！ https://chatgpt.com/share/68104c37-b578-8003-8c4e-b0a4688206..." userName="noahbp" createdAt="2025/04/29 03:58:43" color="">}}




{{<matomeQuote body="それ、俺が最初に考えたアイデアなんだ！残念ながら、入力のSQLと出力の実行計画を結びつけるのはめちゃくちゃ難しいんだけど、不可能じゃないよ。間違いなく今後の計画には入ってる！" userName="xarici_ishler" createdAt="2025/04/28 18:05:23" color="">}}




{{<matomeQuote body="MSSQLには実行計画っていうのがあって、どのステップで何が起きてて、それぞれどれくらい時間かかってるか教えてくれるよ。" userName="Suppafly" createdAt="2025/04/29 17:51:42" color="#ff33a1">}}




{{<matomeQuote body="たぶんこれ見てみてよ https://duckdb.org/community_extensions/extensions/parser_to... DuckDB向けじゃなくても、これでクエリのバリデーションとかパースができるかも。" userName="thenaturalist" createdAt="2025/04/28 20:48:45" color="#785bff">}}




{{<matomeQuote body="提案ありがとう！ 俺は https://github.com/tobymao/sqlglot ってのを使ってるんだ。これがほとんどのSQL方言を魔法みたいにサポートしてるんだよ。そう、DuckDBのサポートも今後の計画に入ってるよ。" userName="xarici_ishler" createdAt="2025/04/29 08:01:31" color="#45d325">}}




{{<matomeQuote body="ありがとう！ どんなユースケースあるか教えて？ 俺の職場では、特殊なクエリ言語で書かれたロジックをPostgreSQLに移行中でさ。エラー特定に何日もかかってるんだ。手動でクエリ削ったりして試してるんだよ。" userName="xarici_ishler" createdAt="2025/04/28 06:57:28" color="#ff5733">}}




{{<matomeQuote body="質問された本人じゃないけど、これデバッグ以外にも教育とか学習にもかなり役立つと思うな．" userName="alok-g" createdAt="2025/04/28 12:32:33" color="#ff5733">}}




{{<matomeQuote body="完成させて、静かに、俺の金を持っていってくれ！ これマジで良さそうだよーアップデートの登録ができるようにウェブサイトだけでも作ってよ．" userName="jarek83" createdAt="2025/04/29 19:10:19" color="#45d325">}}




{{<matomeQuote body="これを早く終わらせるモチベになったよ ありがとう 今はスクリーンショットとか動画付きの基本的なLPと ”通知を受け取る” ボタンを作ってるところ メールくれたら 空でもいいよ プロフにあるよ 準備できたらすぐ連絡するね" userName="xarici_ishler" createdAt="2025/04/29 22:12:47" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="https://dequery.io これだよ ちょっとした登録フォームつけたんだ 追加のフィードバックも送れるようにしたよ" userName="xarici_ishler" createdAt="2025/04/30 02:52:07" color="#785bff">}}




{{<matomeQuote body="早かったね。<br>俺も早くやりたかったんだけど 焦りすぎてオプション項目があるのを見落としてたよ。だから同じメアドで再登録したんだけど これ通る？ それとも重複チェックしてる？ 今度はオプションも入力したよ。<br>もしかしたら メアド入れる前にもっとオプション項目が分かりやすいように 配置を変えてみるといいかもね。" userName="jarek83" createdAt="2025/05/01 09:02:31" color="#ff33a1">}}




{{<matomeQuote body="フィードバックありがとう！ フォーム更新したよ。" userName="xarici_ishler" createdAt="2025/05/02 14:59:51" color="#45d325">}}




{{<matomeQuote body="いいね！ うちはめっちゃ複雑な CTEs と重いクエリ扱ってるんだ。それが一個ずつ可視化できると便利だろうな。" userName="Ni3l55" createdAt="2025/04/28 14:03:57" color="#ff5c5c">}}




{{<matomeQuote body="どのDB使ってるの？ ユースケースぜひ聞きたいし 力になれると嬉しいな。メールちょうだい プロフにあるよ。" userName="xarici_ishler" createdAt="2025/04/28 16:51:41" color="#45d325">}}




{{<matomeQuote body="これめちゃくちゃクールじゃん！ アップデート見るにはどこフォローすればいい？" userName="netcraft" createdAt="2025/04/28 23:22:44" color="">}}




{{<matomeQuote body="これって postgres 専用？ 面白いアイデアだね！" userName="anitil" createdAt="2025/04/28 00:37:28" color="">}}




{{<matomeQuote body="今のところはそうなんだ。でもすぐ他のDB 特に OLAP も対応できるように開発始めるよ。基本的なアプローチは同じなんだけど SQLの方言の細かいとこ全部対処しないとね。" userName="xarici_ishler" createdAt="2025/04/28 06:42:08" color="#ff5c5c">}}




{{<matomeQuote body="https://dequery.io このコメント まだ 驚くほど！ 注目されてるみたいだから ここに残しとくね" userName="xarici_ishler" createdAt="2025/04/30 08:52:39" color="">}}




{{<matomeQuote body="天文学のPhDを始めるよ。Caltechで3年、小惑星の軌道を精密計算するコードを開発してたんだ。NASAの望遠鏡でも使われてるこのコードをオープンソースにできて、PhDの研究ベースにする予定。rustとpythonで書かれてるよ。githubはこちら：https://github.com/dahlend/kete" userName="ddahlen" createdAt="2025/04/28 15:53:15" color="#38d3d3">}}




{{<matomeQuote body="すごいプロジェクトだね！自分は物理学出身で、技術業界で20年くらいエンジニアやってるんだ。天文学って最近コードに頼りまくりじゃん？どこかコード書きとしてボランティアで手伝って、チームのソフトウェア開発を効率化できる場所ないかな？" userName="physicles" createdAt="2025/05/04 06:13:36" color="">}}




{{<matomeQuote body="この研究についてYouTubeで発表とか考えたことある？めっちゃすごそうだもん。" userName="jxjnskkzxxhx" createdAt="2025/04/28 16:40:50" color="">}}




{{<matomeQuote body="YouTubeはやったことないんだよね。このコードを使ったプロジェクトや論文がいくつかあるから、公開するときにブログ記事を書こうとは思ってる。でもPhDは時間食うから、どうなるかな。" userName="ddahlen" createdAt="2025/04/28 16:45:39" color="">}}




{{<matomeQuote body="PhDに全部時間を取られる前に、Show HNとして早く投稿しない？もしそうなら、hn@ycombinator.comにメールくれれば、セカンドチャンスプールに入れてあげるよ（https://news.ycombinator.com/item?id=26998308）。そうすればHNのトップページにランダムに表示されるから。" userName="dang" createdAt="2025/04/28 19:03:43" color="#ff33a1">}}




{{<matomeQuote body="提案ありがとう！残念ながら、PhDがもう始まってて手が離せないんだ。2～3ヶ月後には何か派手なものを見せられると思うよ（学会発表の準備があるから）。" userName="ddahlen" createdAt="2025/04/28 20:34:35" color="">}}




{{<matomeQuote body="残念！まあ、もしHNで発表する時間ができたら、hn@ycombinator.comに連絡してくれれば喜んで手伝うよ。もっと大事なことだけど、PhD頑張ってね、うまくいくことをみんな願ってるよ！" userName="dang" createdAt="2025/04/28 20:44:43" color="">}}




{{<matomeQuote body="楽しみにしてるよ！PhD頑張ってね！（それにコードをオープンソースにしてくれてありがとう！）" userName="kinow" createdAt="2025/04/29 20:03:59" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
