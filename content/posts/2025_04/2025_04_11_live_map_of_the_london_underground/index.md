+++
date = '2025-04-11T00:00:00'
months = '2025/04'
draft = false
title = '【美麗】ロンドンの地下鉄リアルタイムマップがすごい！でもデータは地獄絵図らしい…'
tags = ["ロンドン", "地下鉄", "リアルタイム", "地図", "API"]
featureimage = 'thumbnails/orange1.jpg'
+++

> 【美麗】ロンドンの地下鉄リアルタイムマップがすごい！でもデータは地獄絵図らしい…

引用元：[https://news.ycombinator.com/item?id=43651390](https://news.ycombinator.com/item?id=43651390)

{{<matomeQuote body="マジかよ、そのデータ使うのやめとけって。APIもマジ無理。それぞれの到着案内板で駅名バラバラだし、電車の状況も「バーネットに向かってます」とか「ウォータールーの近く」とか自由すぎてワロタ。っていうか、SMS認証しかしてない組織に何を期待してるんだ？しかも17歳にハッキングされて大混乱したばっかじゃん。" userName="lol768" createdAt="2025-04-11T10:18:16" color="">}}

{{<matomeQuote body="でも、香港の次くらいに非接触決済システム導入したのも、銀行のカード決済を最初に取り入れたのもこの組織なんだぜ。" userName="Symbiote" createdAt="2025-04-11T12:00:58" color="">}}

{{<matomeQuote body="それって20年くらい前の話じゃん。テクノロジーの世界じゃ一生モノだよ。15年くらい前にGreater London Authorityのプロジェクトで仕事してたんだけど、Transport for Londonのサーバーに間借りしてたんだよね。技術も人も良かったんだけど、5年後にはみんな逃げ出した。" userName="theginger" createdAt="2025-04-11T19:08:20" color="">}}

{{<matomeQuote body="今は非接触のクレジットカードでピッてするのが一番良いよね。Oysterカードも選択肢として残ってるのはありがたいけど。" userName="ghaff" createdAt="2025-04-11T20:58:03" color="">}}

{{<matomeQuote body="やったー。13年前からあって、未だにRailcardの割引に対応してないんだぜ。TfLは昔は革新的だったかもしれないけど、時代に取り残されてるよね。Oysterの端末に非接触決済リーダーがついたのなんて、つい最近だよ。それまでは2004年に導入されたチップと暗証番号だったんだから。" userName="lol768" createdAt="2025-04-13T20:25:39" color="">}}

{{<matomeQuote body="なんか昔の「Speed cooking」の動画思い出しちゃった。<br>https://youtu.be/8TVpQiCIqp4" userName="HPsquared" createdAt="2025-04-11T14:07:13" color="">}}

{{<matomeQuote body="実はさ、APIとか全然わかんないんだけど、HNを10年くらい楽しんでるんだよね。ダークパターンとかダークマターとか区別もつかないような非技術系の人間にも優しい場所ってことだよね。" userName="bookofjoe" createdAt="2025-04-11T14:19:37" color="">}}

{{<matomeQuote body="APIっていうのは、ソフトウェア同士の通信の境界線みたいなものだよ。悪いAPIの典型的な例は、データがコンピューター向けじゃなくて、人間向けになってるところだね。「Regents Park」と「Regent’s Park」が同じ駅だって人間ならわかるけど、コンピューターにはわからない。TfLのAPIは、駅の表示板を更新するっていう目的には合ってるかもしれないけど、将来のことを考えて設計した方が良いよね。変更するのって大変だし。例えば、古い駅はLED表示で、新しい駅はテレビ画面だったりするから、表示できる情報量が違うんだよね。「Kings Cross」と「King’s Cross St. Pancras」の違いもそれが原因かも。" userName="Pathogen-David" createdAt="2025-04-11T15:23:30" color="#785bff">}}

{{<matomeQuote body="「Kings」って書いてある電車に乗ったら、King’s CrossじゃなくてKingsleyに行っちゃったことあるわ。ちゃんと確認しなかった私が悪いんだけどね。" userName="exe34" createdAt="2025-04-12T21:25:43" color="">}}

{{<matomeQuote body="ああ、それ最悪だね。早く気づいて良かったね。" userName="Pathogen-David" createdAt="2025-04-13T16:20:50" color="">}}

{{<matomeQuote body="一駅か二駅乗り過ごして引き返したよ。イギリスの電車システムは初めてだったんだ。" userName="exe34" createdAt="2025-04-13T17:18:37" color="">}}

{{<matomeQuote body="APIってのは、リクエスターにデータを提供するもんだよ。プロバイダーが作ってて、ユーザーがデータを引っ張って解析できるようにドキュメントがあるのが普通。例えるなら、印刷機能しかないプリンターみたいなもんかな。ボタンを押したらあらかじめ用意されたシートが出てくるみたいな。APIプリンターはサーバーにあって、オブジェクトとか、整理されたデータをAPIにリクエストしたやつに送るんだ。" userName="eks391" createdAt="2025-04-11T15:32:57" color="#ff33a1">}}

{{<matomeQuote body="ウェブサイトのコード版みたいなもんかな。人がウェブブラウザでウェブサイトを見るように、コードはURLにアクセスする。それがAPIって呼ばれることが多いかな。ウェブサイトも技術的にはAPIだよ。" userName="sa-code" createdAt="2025-04-11T15:45:10" color="#ff33a1">}}

{{<matomeQuote body="APIを технически なしで簡単に説明してみるね。APIってのは、事前に定義された合意、つまり契約を使ってソフトウェアとやり取りできるものだよ。APIを法的な契約のセットだと考えてみて。例えば、5ドル渡して「リンゴをくれ」って言ったら、契約通りリンゴがもらえるよね。もしブロッコリーが来たら、それはバグってこと。契約違反だね。これを他の分野に適用すると、例えば、店のアイテムのIDを渡すと、アイテムの名前、価格、在庫が返ってくるみたいな感じ。" userName="unfocused" createdAt="2025-04-11T15:36:00" color="#ff5733">}}

{{<matomeQuote body="得意げに説明してる兄弟みたいなコメンターたちへ。親コメントで質問されてると思う？もしそう思うなら、なんでそう思うの？" userName="unkeen" createdAt="2025-04-11T16:38:11" color="">}}

{{<matomeQuote body="何かを理解してないって言う人が一人いるたびに、同じことを静かに思ってる人が何十人もいるのが普通だよ。親コメンターが説明を求めてなくても、他の人が説明して、実は知りたかったサイレント層を助けることができるんだ。" userName="Mountain_Skies" createdAt="2025-04-11T19:44:26" color="#45d325">}}

{{<matomeQuote body="マジそれな。100の法則ってのがあって、電話とかメールとかオンラインで何かに対して積極的に反応する人が一人いるたびに、99人の同じように感じてるけど、めんどくさがってる人がいるんだよね。" userName="bookofjoe" createdAt="2025-04-12T23:25:18" color="">}}

{{<matomeQuote body="本当にbookofjoeってユーザーに「mansplaining」してると思ってる？" userName="bryanrasmussen" createdAt="2025-04-11T17:33:18" color="">}}

{{<matomeQuote body="何か害があるの？読みたくなきゃ読まなければいいじゃん。" userName="johnmlussier" createdAt="2025-04-11T17:24:35" color="">}}

{{<matomeQuote body="これ、なんか笑顔になっちゃった。" userName="bookofjoe" createdAt="2025-04-11T16:50:41" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="これくらいのことは、ちっちゃいLLMでも結構うまくできるんだよね。俺はMTAの遅延情報を整理するのに使ってて、おかげでいい感じにまとめられるようになった。" userName="frakkingcylons" createdAt="2025-04-11T19:06:52" color="#ff5733">}}

{{<matomeQuote body="これって最近あった、Zipカードが使えなくなったやつに関係あるのかな？" userName="MrsPeaches" createdAt="2025-04-11T10:42:21" color="">}}

{{<matomeQuote body="＞TfLがサイバー攻撃に対処しようとした結果、システム停止が広がって、子供とかティーンエイジャーが使う新しいzipカードが手に入らなくなってるらしいよ”<br>＞ Computer Misuse Act違反の疑いで、17歳の男が逮捕されたって。Walsallで逮捕されたらしい…" userName="tim333" createdAt="2025-04-11T17:34:59" color="">}}

{{<matomeQuote body="似たようなビジュアライゼーションは見たことあるけど、これが一番キレイで一日中見てられるわ。TfL APIについては激しく同意。俺も10年以上、Tube Trackerアプリを作り続けてるんだよね。新しいツールを学んだり、フレームワークの変更を試すための定番になってるんだけど、全然改善されてない気がする。Chris Applegateって人が10年以上前に色々書いてたけど、Latimer RoadとGoldhawk Roadの間の駅は追加されたのかな？" userName="i_like_robots" createdAt="2025-04-11T10:03:11" color="#785bff">}}

{{<matomeQuote body="自分の国に公共交通機関のAPIがあることすら知らないで、TfL APIについて文句言ってる人がいるなんて信じられない。APIがあるだけでもすごいことなのに、それがちゃんとメンテされてるなんて。" userName="nullwriter" createdAt="2025-04-11T11:44:32" color="#ff5733">}}

{{<matomeQuote body="俺も16年前にこれ実装したんだよね。新しい技術を色々試しながらやったから、結構大変だったけど、動いた時はマジで嬉しかった。[1]: https://github.com/charleskubicek/wheres-my-tube" userName="charkubi" createdAt="2025-04-11T11:16:51" color="#ff5733">}}

{{<matomeQuote body="ほんと、マジでキレイだよね。電車の重なり具合とかのディテールがすごい。" userName="iamcalledrob" createdAt="2025-04-11T10:38:54" color="#ff5c5c">}}

{{<matomeQuote body="これもおすすめ。<br>https://minitokyo3d.com/" userName="ge96" createdAt="2025-04-11T15:06:50" color="">}}

{{<matomeQuote body="でももう終電後だから、あんまり見るとこないかも。" userName="totetsu" createdAt="2025-04-11T16:35:04" color="">}}

{{<matomeQuote body="子供の頃に遊んだボードゲームに似てるねー。https://en.wikipedia.org/wiki/Scotland_Yard_(board_game)<br>ロンドンの公共交通機関を使ってMr. Xを追いかけるやつ（みんなMr. Xやりたがった）。めっちゃ面白かった。" userName="dachris" createdAt="2025-04-11T10:45:26" color="#45d325">}}

{{<matomeQuote body="まだそのゲームやってるよ！フランスでは結構人気だけど、イングランドじゃ全然知られてないみたいで不思議。新しいボードは90年代のよりちょっと見にくいかな。スマホでもやってるけど、AIはあんまり賢くないんだよね。" userName="bbx" createdAt="2025-04-11T10:48:30" color="">}}

{{<matomeQuote body="フランス人だけど、初めて聞いたわ。" userName="hk__2" createdAt="2025-04-11T19:52:06" color="">}}

{{<matomeQuote body="80年代後半から90年代前半にかけてドイツで結構人気があったよ。" userName="usr1106" createdAt="2025-04-11T20:42:17" color="">}}

{{<matomeQuote body="大人はMornington Crescentで遊ぶんだよ。" userName="willvarfar" createdAt="2025-04-11T10:56:26" color="">}}

{{<matomeQuote body="それ大好きだった！思い出させてくれてありがとう。" userName="crabmusket" createdAt="2025-04-11T22:34:01" color="">}}

{{<matomeQuote body="Cf．「東京の公共交通機関のリアルタイム3Dデジタルマップ」, https://news.ycombinator.com/item?id=37829061<br>、2023年10月" userName="gala8y" createdAt="2025-04-11T09:58:10" color="">}}

{{<matomeQuote body="めっちゃすごい。" userName="hooch" createdAt="2025-04-11T13:36:12" color="">}}

{{<matomeQuote body="オーストリア版は、すべての公共交通機関が載ってて特にクールだよ。<br>https://anachb.vor.at/ (Kartenoptionen -> Live map -> alle einblendenをクリック)" userName="the_mitsuhiko" createdAt="2025-04-11T10:15:26" color="#38d3d3">}}

{{<matomeQuote body="APIもあるよ(一部の公共交通機関):<br>https://www.wienerlinien.at/ogd_realtime/doku/ogd/wienerlini…" userName="wwarek" createdAt="2025-04-11T10:20:47" color="">}}

{{<matomeQuote body="ウィーンの交通システム、マジ使いやすくてGoogle Mapsとの連携もヤバかった。アメリカから来た身としては異次元の世界だったわ。" userName="Althuns" createdAt="2025-04-11T18:02:53" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="サンクトペテルブルクのYandex mapにも同じような機能があるんだね。アメリカにも欲しいな。" userName="archagon" createdAt="2025-04-11T15:42:11" color="">}}

{{<matomeQuote body="Tube Creatureも面白いよ（このマップの路線データの元）。特に「Tube Tongues」っていう指標が好きだな。各駅の近くに住む人が話す英語以外の言語のランキングで、ロンドンの多様性がよくわかる。" userName="modernerd" createdAt="2025-04-11T11:21:28" color="#ff5c5c">}}

{{<matomeQuote body="ロンドンの地下鉄マップって過大評価されてると思うんだよね。準地理的なマップの方がロンドンには合ってるんじゃないかな。地区の表示が邪魔だし、駅名も表示して欲しい。" userName="IIAOPSW" createdAt="2025-04-11T13:58:39" color="">}}

{{<matomeQuote body="ポーランドの主要都市の交通機関情報はこちら。<br>https://czynaczas.pl/<br>（左上の都市選択でワルシャワがデフォルト。色々な交通手段が見れるよ）。" userName="Kwpolska" createdAt="2025-04-11T21:01:37" color="#ff5c5c">}}

{{<matomeQuote body="Jago Hazzardが喜びそう（電車好きなら彼のyoutubeチャンネルはマジおすすめ）。" userName="_joel" createdAt="2025-04-11T10:28:34" color="">}}

{{<matomeQuote body="＞個々の到着案内板からのデータを使っているから、駅のスペルがバラバラなんだよね。<br>そんなことないよ。TfLのデータは一貫性がないけど、それは色んなバックエンドを使ってるから。ほとんどの路線では、ドットマトリックス表示器は信号システムと時刻表からデータを得てる（最新の信号システムは時刻表を認識してる）。一方、オンラインAPIはTfLのTrackerNetからの推定値に頼ってる。" userName="ratatoskrt" createdAt="2025-04-11T08:56:13" color="#ff33a1">}}

{{<matomeQuote body="Windows 3時代のテキストベースのロンドン地下鉄土産物ショッピングゲームが最高だった。名前は忘れちゃったけど、電車の時間とかフライトの時間とか、お土産リストとか、色々制約がある中で買い物するゲーム。オフラインだったけど、マジ面白かった。現代版では、東京とかロンドンとかベルリンとかのリアルタイムの運行情報とか、遅延情報とか、チケット割引とかを使って、リアルなゲームを作って欲しい。ゲーム内で買ったお土産が実際に届くみたいな機能も欲しいな。" userName="teleforce" createdAt="2025-04-11T08:50:56" color="#38d3d3">}}

{{<matomeQuote body="Backpackerってゲームに似てるかもね。<br>https://en.wikipedia.org/wiki/Backpacker_(video_game_series)" userName="djxfade" createdAt="2025-04-11T09:05:09" color="">}}

{{<matomeQuote body="ベルリンのVBBネットワークにも同じようなリアルタイムマップがあるよ。S-BahnとかU-Bahnとかバスとかフェリーとかの位置がリアルタイムで見れるんだ。マジ便利。<br>（Livekarte & Multi -MobilitätのLivekarteオプションを選んでね）<br>https://www.vbb.de/fahrinfo/" userName="FlyingSnake" createdAt="2025-04-11T10:39:27" color="#38d3d3">}}

{{<matomeQuote body="路線が同じ場所を走ってる場合、一本の線でしか表示されないから、ちょっとわかりにくいかも。" userName="pledg" createdAt="2025-04-11T09:55:05" color="">}}

{{<matomeQuote body="反対方向の電車が重なって表示されるから、何がどうなってるのかマジで見にくい。あと、電車が止まると消えちゃうのも意味不明。見た目はキレイだけど、実用的じゃないね。ドットとか矢印とか箱で表示した方が絶対見やすいと思う。" userName="TheOtherHobbes" createdAt="2025-04-11T10:48:59" color="">}}

{{<matomeQuote body="電車の色分けはされてるから、そこまで悪くはないかな。個人的には駅の色が濃すぎて、電車が隠れちゃうのが気になる。でも全体的には、このビジュアライゼーションはマジで美しいと思う。" userName="ralferoo" createdAt="2025-04-11T10:31:29" color="#ff5733">}}

{{<matomeQuote body="少なくとも、俺の環境じゃLizzy lineが表示されないんだけど。" userName="Quarrel" createdAt="2025-04-11T10:06:19" color="">}}

{{<matomeQuote body="https://x.com/elizabethln_bot?lang=en<br>https://tfl.gov.uk/" userName="bookofjoe" createdAt="2025-04-11T14:25:08" color="">}}

{{<matomeQuote body="路線自体はあるけど、マジで見えにくいんだよね。それに、電車が走ってないみたいに見える。" userName="sebzim4500" createdAt="2025-04-11T10:26:47" color="">}}

{{<matomeQuote body="なんか時間の流れがゆっくりに感じるのが良いね。壁紙にしたら一日中眺めてそう。" userName="_kush" createdAt="2025-04-11T13:45:08" color="#ff5c5c">}}

{{<matomeQuote body="まあ、tube trainsがちょっと遅いからそう感じるのかもね。" userName="zabzonk" createdAt="2025-04-11T14:58:56" color="">}}

{{<matomeQuote body="未来の駅の時刻がUTCで表示されてるのが気になる。あと、ズームインすると電車が消えたりする。電車が建物に隠れずに上を通るのも気になるな。電車が地上を走ってるところも見たい。いろいろ言いたいことはあるけど、実装するのは大変だよね！Good jobだし、マジでcool。" userName="pjsg" createdAt="2025-04-11T09:08:53" color="#ff33a1">}}

{{<matomeQuote body="路線の速さの違いが見れるのは面白いね。でも…Elizabeth lineはどこ？hoverするとtooltipは出るけど、polylineが表示されない。" userName="n4r9" createdAt="2025-04-11T08:35:26" color="">}}

{{<matomeQuote body="TFLがUnderground lineとして分類してないからじゃないかな。DLRも同じで、hoverするとtooltipは出るけど除外されてるみたい。" userName="megapolitics" createdAt="2025-04-11T09:10:57" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Waterloo&Cityもmissingみたい。" userName="bodyfour" createdAt="2025-04-11T08:57:32" color="">}}

{{<matomeQuote body="tubeじゃなくてoverground lineだよ。Network Southeastの塗装が証拠。tube trainなのにoverground trainで全部undergroundを通るってこと。<br><br>https://m.youtube.com/watch?v=MhUDyX4DKXQ" userName="throwaway519" createdAt="2025-04-11T10:01:31" color="#45d325">}}

{{<matomeQuote body="Waterloo and Cityは1994年にLondon Undergroundに移管されたんだって。British Railの民営化の一環で(このケースは違うけど)。<br>trainを線路からcraneで吊り上げるしかないから、Network South Eastの塗装のままだったみたい。overhaulの時に塗り直されたらしいよ。<br>[1] WaterlooのEurostar延伸で、車両を持ち上げるliftがなくなったらしい。" userName="fredoralive" createdAt="2025-04-11T10:11:42" color="#45d325">}}

{{<matomeQuote body="map上にあると思うけど、transparentかinvisibleになってるのかも。Waterlooの北東をhoverすると見つかるかも。" userName="Symbiote" createdAt="2025-04-11T15:38:24" color="">}}

{{<matomeQuote body="Blackfriarsの右のlineをhoverするとWaterloo and Cityって表示されるけど、incorrectだよ。" userName="pledg" createdAt="2025-04-11T09:57:02" color="">}}

{{<matomeQuote body="Developer donation link (map tile gets expensive!): <br>https://ko-fi.com/benbyfax" userName="LourensT" createdAt="2025-04-11T14:01:34" color="">}}

{{<matomeQuote body="undergroundの駅とtrackを3Dでrenderingしたのを見たことあるけど、stationがすごく多くてtubeの部分が少ないんだよね。stationもrenderingしてほしいな。marinetrafficみたいでnice。" userName="Geenkaas" createdAt="2025-04-11T09:53:05" color="#45d325">}}

{{<matomeQuote body="http://stations.albertguillaumes.cat/" userName="lucianbr" createdAt="2025-04-11T10:01:35" color="">}}

{{<matomeQuote body="ParisのChâteletも見逃さないで!" userName="hk__2" createdAt="2025-04-11T10:27:16" color="">}}

{{<matomeQuote body="ChatGPTさん、Waterloo駅をDoom WADにしてくんねーかな。" userName="gadders" createdAt="2025-04-11T13:07:31" color="">}}

{{<matomeQuote body="めっちゃいいじゃん！でも今まさにチューブに乗っててこれ見てんだけど、自分が乗ってるはずの電車が結構遅れてるし、そのうち消えちゃったんだけど！" userName="chris_overseas" createdAt="2025-04-11T08:29:31" color="#ff5733">}}

{{<matomeQuote body="これって、自分がパラレルワールドに転送されちゃうSFストーリーの始まりみたいじゃん。" userName="ralferoo" createdAt="2025-04-11T10:40:25" color="">}}

{{<matomeQuote body="もし帰ってきたら連絡してくれよな！" userName="bookofjoe" createdAt="2025-04-11T14:26:51" color="">}}

{{<matomeQuote body="今乗ってるチューブを追跡してみたら、1分くらいの遅延があるみたい。家を出るタイミングとか知るのにめっちゃ使えるじゃん。" userName="iLoveOncall" createdAt="2025-04-11T09:06:32" color="#ff5c5c">}}

{{<matomeQuote body="電車の最終目的地が表示されないのが残念。District lineみたいな路線だと結構重要なんだよね。" userName="gorbachev" createdAt="2025-04-11T10:36:01" color="#785bff">}}

{{<matomeQuote body="前に似たようなことあった時、自分の街のSt Petersburgでリアルタイムの地下鉄のデータ取れないか調べたんだよね。残念ながらそういうデータはないみたい。でも地上交通の公式APIは見つけた。" userName="grishka" createdAt="2025-04-11T11:29:03" color="">}}

{{<matomeQuote body="mainline UK trainsならOpenTrainTimesもあるよ。例えば、https://www.opentraintimes.com/maps/signalling/wat#T_WATRLMN がLondon Waterlooね。" userName="class700" createdAt="2025-04-11T12:38:13" color="#45d325">}}

{{<matomeQuote body="マジでクール。特に network diagramみたいなわかりにくいやつじゃなくて、ちゃんと地図になってるのが最高。" userName="imarkphillips" createdAt="2025-04-11T08:22:39" color="#785bff">}}

{{<matomeQuote body="このmap API、マジですごいみたい。さっきhttps://www.maptiler.com/company/見つけたんだけど。" userName="Bengalilol" createdAt="2025-04-11T08:55:27" color="#38d3d3">}}

{{<matomeQuote body="ちょっとバグかも？overlayがmapに固定されてないみたいで、スクロールするとoverlayが動いちゃう。今、Northern lineの南端がMordenじゃなくてKingstonの上にあるよ！" userName="marliechiller" createdAt="2025-04-11T08:55:07" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
