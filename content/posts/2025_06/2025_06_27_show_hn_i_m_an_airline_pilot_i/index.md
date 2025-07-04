+++
date = '2025-06-27T00:00:00'
months = '2025/06'
draft = false
title = '航空会社のパイロットが自身のフライト記録をインタラクティブなグラフや地球儀に可視化'
tags = ["データ可視化", "プログラミング", "航空", "ウェブ開発", "地球儀"]
featureimage = 'thumbnails/cyan3.jpg'
+++

> 航空会社のパイロットが自身のフライト記録をインタラクティブなグラフや地球儀に可視化

引用元：[https://news.ycombinator.com/item?id=44396518](https://news.ycombinator.com/item?id=44396518)




{{<matomeQuote body="やっほー！パイロットはみんなフライト記録つけなきゃいけないんだけど、俺はデジタルでやっててさ。そのデータを可視化してみたんだ。特にこの3D地球儀がお気に入り！ https://jameshard.ing/pilot/globes/all 他にもいいアイデアあったら教えて！" userName="jamesharding" createdAt="2025/06/27 13:06:54" color="#ff5733">}}




{{<matomeQuote body="すごい可視化だね！データの保存方法はどうなってるの？地球儀のHexagonal gridは、前にRedditかどっかで見たこの記事思い出すよ。https://www.redblobgames.com/grids/hexagons/<br>あとさ、パイロットとして聞きたいんだけど、Nathan Fielderの”The Rehearsal”シーズン2見た？コパイロット間のコミュニケーション摩擦についてどう思う？パイロットは助けを求めずに高機能でいる傾向があると思う？それともドラマの描写は極端なのかな？" userName="ok_computer" createdAt="2025/06/27 13:34:26" color="#45d325">}}




{{<matomeQuote body="データはLogTenのsqliteファイルだよ！データ抽出についてはこの記事に書いたよ: https://jameshard.ing/posts/querying-logten-pilot-logbook-sq...<br>”The Rehearsal”はSullyが出てるとこしか見てないんだ。パイロットのコミュニケーションはCRMって言って、すごく重視してるし、業界も改善に努力してるよ！" userName="jamesharding" createdAt="2025/06/27 14:05:39" color="#38d3d3">}}




{{<matomeQuote body="やっほー！俺、LogTen Pro作ってた会社で働いてたんだ。良い仕事だったよ。CEOもパイロットで、製品デザインが大好きだったな。10年以上経っても使われてて、しかもデータ活用されてるの見るの、なんか嬉しいよ。乾杯！" userName="im_down_w_otp" createdAt="2025/06/27 15:49:46" color="#ff5733">}}




{{<matomeQuote body="「航空への情熱」と「良いUXへの情熱」って、本当にNoahとチームにぴったりだったね！LogTen Proはそれがあるけど、他のログブックソフトにはないんだよね。ところで、内部でNSDate使ってたか覚えてる？" userName="jamesharding" createdAt="2025/06/27 16:49:11" color="#ff5c5c">}}




{{<matomeQuote body="「航空への情熱」と「良いUXへの情熱」、Noahとチームはその通りだったね！NSDateのことは正直覚えてないんだ、遠い昔のバーンアウトレベルの出来事だよ。それより覚えてるのは、当時のAppleの初期iCloud同期と、SQLite/Core Data周りでのひどい苦労かな。" userName="im_down_w_otp" createdAt="2025/06/27 22:24:54" color="#785bff">}}




{{<matomeQuote body="＞ データの保存方法はどうなってるの？<br>彼は投稿でLogTen Pro[1]を使ってて、SQLでクエリできる[2]って答えてるよ。CSVエクスポートもあるけど、アプリがデータをSQLiteに入れてて、そこから直接アクセスできるってSQLの記事で言ってるね。[1] https://logten.com/<br>[2] https://jameshard.ing/posts/querying-logten-pilot-logbook-sq..." userName="wetoastfood" createdAt="2025/06/27 14:04:10" color="#45d325">}}




{{<matomeQuote body="地球儀、UberのH3ライブラリでHexagons使ってるのかなと思ったよ。" userName="fastball" createdAt="2025/06/27 14:58:54" color="">}}




{{<matomeQuote body="これ見てたら、なんかこの古いYouTube動画思い出したわ。https://youtu.be/1SKDvQzcasg" userName="bombcar" createdAt="2025/06/27 14:09:21" color="">}}




{{<matomeQuote body="めっちゃクール！詳しいフライトログ、P1とかP2の役割まで記録してんの超面白いね。SpinStepっていうquaternionライブラリ作ってるんだけど、君のデータにマジでインスパイアされたわ。フライトログって方向とか役割とか環境の影響あるじゃん？これ rotational state modelingで見れんじゃね？って思ったんだよね。quaternionとかdiscrete state changeとか external fieldとかでモデル化いけるかも。SpinStepをこの文脈で考えてなかったけど、すげー視点もらったよ！ありがとうね！<br>https://github.com/VoxleOne/SpinStep/blob/main/README.md ＼.https://github.com/VoxleOne/SpinStep/blob/main/docs/01-ratio..." userName="voxleone" createdAt="2025/06/27 17:48:31" color="#45d325">}}




{{<matomeQuote body="あのレポ、ちょっとLLMが書いたっぽい感じするね。Quaternionsは3D回転の計算にいい性質もあるけど、万能薬じゃないよ。" userName="jampekka" createdAt="2025/06/27 21:21:30" color="">}}




{{<matomeQuote body="君みたいな人（色んな分野に詳しい）は、僕にとってすごく刺激になるよ。いつも本業以外の何かをやりたいって夢見てるんだ。いつかこの怠け癖を乗り越えて実行できたらいいな！" userName="the_arun" createdAt="2025/06/27 14:17:51" color="">}}




{{<matomeQuote body="時々さ、ソフト開発の給料がこんなにバカみたいに良くなかったらなって思うことがあるよ。他のことにもたくさん興味あるんだけど、かなりの給料カットになるって分かってるのに、他のフルタイムの仕事に転職するのは難しいよね。" userName="ProZsolt" createdAt="2025/06/27 18:54:48" color="">}}




{{<matomeQuote body="住んでる場所とかポジションによるけど、もしかしたら逆（給料が高いのがパイロット）かもしれないよ。United Statesのパイロットの給料、www.airlinepilotcentral.comで見てみて。" userName="bronco21016" createdAt="2025/06/27 19:57:00" color="#ff5733">}}




{{<matomeQuote body="medically barredされてパイロットライセンス取れなかったのが残念だよ。給料じゃなくて、ただ飛ぶっていう考えが好きなんだけど、残念ながら無理なんだ。でもみんなには、給料使ってでも操縦習うのおすすめするよ！PPL取るのにたぶん150～200万円くらいかな。テック系の人なら計画すればできるはずだよ。" userName="nimish" createdAt="2025/06/27 20:07:38" color="">}}




{{<matomeQuote body="GPはソフトエンジニア以外の女の子って言いたかったんじゃないかな。教える仕事に（戻りたいけど）給料10分の1カットは無理すぎるんだよね。たぶん定年近くになったら挑戦するかも。" userName="BrandoElFollito" createdAt="2025/06/28 19:53:40" color="">}}




{{<matomeQuote body="この可視化、めっちゃ綺麗だね！地球儀やアニメーションも cool だけど、統計が見れるダッシュボードが良いな。<br>これ見て思い出したんだけど、ドイツの Frauenhofer か Helmholtz が、自分のフライト入力すると放射線被曝量計算できるサイト持ってたんだよね。パイロット向けで綺麗じゃなかったけど。ダッシュボードに累積被曝量も追加したら役に立ちそう。" userName="weinzierl" createdAt="2025/06/27 14:41:36" color="#38d3d3">}}




{{<matomeQuote body="すごいアイデアだね！<br>うちの会社も月/年/生涯の累積被曝線量データくれるけど、ここまで細かくはないんだ。これ自分で計算する方法とか知ってる？<br>大円ルートとか、特定の空域・時間での大まかな線量を計算すればいいのかな？" userName="jamesharding" createdAt="2025/06/27 16:28:09" color="">}}




{{<matomeQuote body="ちょっと年食っててこういう寄り道はあんましないんだけど、地球物理調査会社（尾に stingers 付いた農薬散布機とか、翼端センサー付いた双発機とか）が、放射線（環境地表放射線）調査で全球的に校正飛行やってるんだよね。<br>高度別の宇宙線やガンマ線の減衰モデルを調整するのに、そういうデータが使えるかも。精密な調整だから、一部の人にしか関係ないけど。空港で調査機探してみると面白いかもね。" userName="defrost" createdAt="2025/06/28 03:26:05" color="#38d3d3">}}




{{<matomeQuote body="Nomadlist も旅行ごとの放射線被曝量出してた（今もあるかな？）。あの統計見た時、マジでびっくりしたんだよね！" userName="mcflubbins" createdAt="2025/06/27 19:20:00" color="">}}




{{<matomeQuote body="そんなによく旅行するの？<br>アメリカの東海岸から西海岸へのフライトでも、X線検査より被曝量少ないんだよ。だからそんなにショック受けることないと思うけど。" userName="SwiftyBug" createdAt="2025/06/28 12:03:00" color="">}}




{{<matomeQuote body="俺も ~150 billion 件の ADS-B データで似たような可視化作ったよ: https://adsb.exposed/<br>インタラクティブで、飛行機の種類とかでフィルターできる。<br>2Dだけど、3Dも考えたんだ。<br>PS. 元の地図、ちょっと遅いね。ズームすると framerate が 10 以下になる。" userName="zX41ZdbW" createdAt="2025/06/27 15:07:23" color="#ff33a1">}}




{{<matomeQuote body="うわ、それマジでヤバいデータ処理だね。<br>技術的な詳細とか、ちょっと教えてくれない？" userName="leeoniya" createdAt="2025/06/28 00:05:10" color="">}}




{{<matomeQuote body="下に「About」リンクがあって、ソースコードに飛べるよ: https://github.com/ClickHouse/adsb.exposed/<br>実は、データ処理の仕組みはめっちゃ単純（ワンページのシェルスクリプト）で、フロントエンドも超シンプル（vanilla JavaScriptだけのHTMLページ一つ）なんだ。" userName="zX41ZdbW" createdAt="2025/06/28 17:46:47" color="#ff5c5c">}}




{{<matomeQuote body="logbook の可視化も素晴らしいけど、ページの coolest な部分は、父親とフライトデッキにいる写真だよ。<br>俺もアメリカの航空会社のパイロットだけど、自分の子供の一人と一緒にそうできるのは、一生の privilege だろうな。" userName="inoffensivename" createdAt="2025/06/28 14:09:15" color="">}}




{{<matomeQuote body="ユタ州の地域航空会社でBombardier CRJに乗ってるよ:)" userName="inoffensivename" createdAt="2025/07/02 00:48:46" color="">}}




{{<matomeQuote body="プロのパイロットなのに、こんなすごいソフトウェア作れるなんてマジ尊敬するわ" userName="18172828286177" createdAt="2025/06/27 14:45:00" color="">}}




{{<matomeQuote body="パイロットって普通の仕事と違って、フライトの合間に時間あるんだよね。だから趣味でこういうことするのも別に驚かないわ。まさか飛んでる最中にやってるわけじゃないだろうけど。" userName="barbazoo" createdAt="2025/06/27 15:09:41" color="">}}




{{<matomeQuote body="パイロットってさ、飛んでる最中にノートPCとかいじれるの？なんか着陸まで座ってるだけって聞いたから、プログラミングとかする時間結構あるんじゃない？" userName="shawabawa3" createdAt="2025/06/27 15:02:53" color="">}}




{{<matomeQuote body="そんな色んなこと同時に考えるの無理だと思う。パイロットは自動操縦でも、何かあった時のために常に集中してなきゃいけないんじゃない？" userName="mbreese" createdAt="2025/06/27 15:09:46" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Rustのborrow checkerで8時間も沼ったら、A380とか操縦できるメンタルじゃなくなるだろ。" userName="Rendello" createdAt="2025/06/27 16:13:45" color="">}}




{{<matomeQuote body="いや、逆に何も怖くなくなるかもね。" userName="kunley" createdAt="2025/06/27 17:03:14" color="">}}




{{<matomeQuote body="もちろん。実際こういう例もあるよ。見てみて。<br>https://en.wikipedia.org/wiki/Northwest_Airlines_Flight_188<br>（動画：https://www.youtube.com/watch?v=uzmeGS29nu8）" userName="Mawr" createdAt="2025/06/27 16:08:59" color="#38d3d3">}}




{{<matomeQuote body="この人、UofTでCompSciを専攻して卒業してるんだって。" userName="perks_12" createdAt="2025/06/27 16:28:01" color="#785bff">}}




{{<matomeQuote body="統計に時間の遅れも加えるべきだよ！地上にいた人より5マイクロ秒くらい若くなってるはずさ！" userName="ccorcos" createdAt="2025/06/28 05:34:37" color="">}}




{{<matomeQuote body="東向きに国際日付変更線を越えると、ちょっと時間を遡った感じになるよね？" userName="jamesharding" createdAt="2025/06/28 19:28:50" color="">}}




{{<matomeQuote body="そうだけど、俺は通勤してるんだ。だから少し時間をくれよ！" userName="_dark_matter_" createdAt="2025/06/28 16:51:32" color="">}}




{{<matomeQuote body="飛行記録も良いけど、パタパタ表示ディスプレイがマジですごいね！このURL見てみてよ：https://jameshard.ing/projects/split-flap" userName="imp0cat" createdAt="2025/06/27 13:22:00" color="#38d3d3">}}




{{<matomeQuote body="気に入ってくれて嬉しいな！ディスプレイに飛行中にリアルタイムで飛行状況を映す機能もあるんだよ。これだけで別に記事にできるかもね :)" userName="jamesharding" createdAt="2025/06/27 20:13:32" color="#38d3d3">}}




{{<matomeQuote body="この話題に興味があるなら、GCMapを紹介するね。GCMapはIATA空港コード間で線を引けるんだ。複数指定もカンマ区切りでURLパラメータにできるのが最高だよ。例：JFK-LHR,LHR-CDG,CDG-FRA<br>これだよ：http://www.gcmap.com/mapui?P=JFK-LHR,LHR-CDG,CDG-FRA<br>俺は時々自分にGCMapのURLをメールしてフライト記録してるんだ。" userName="jakub_g" createdAt="2025/06/27 17:50:52" color="#ff5733">}}




{{<matomeQuote body="GCMapは選べる地図投影法が少ないんだ。複数線を引くと表示が結構残念になる。それが一番不満かな。モルワイデとかビンケル図法とか、もっと良い投影法を追加するか、いっそ地球儀表示にしてほしいな。" userName="kccqzy" createdAt="2025/06/27 18:24:50" color="#ff5733">}}




{{<matomeQuote body="素晴らしい指標と可視化だね！目的地マトリックスに使ったグラフはいつもはそう思わないけど、今回はめちゃくちゃ役立ってるよ。時間グラフを見てすぐに確認したかったのは、年間でどれくらい飛行機に乗ってたか。ピーク年（2024年）は約8.7%だったんだね！起きてる時間で考えたらもっと高そうだけど、睡眠習慣は分からないからね。" userName="joemi" createdAt="2025/06/27 18:57:47" color="#ff5c5c">}}




{{<matomeQuote body="計算してくれたんだね！ありがとう :) これがこの仕事の特殊なところで、4日間”仕事”でも、実際に飛行機に乗ってるのは最初と最後に8〜14時間だけなんだ。残りは義務の（そして超必要な）休憩だよ。" userName="jamesharding" createdAt="2025/06/27 19:43:12" color="#ff5c5c">}}




{{<matomeQuote body="すごく良いね、共有してくれてありがとう！ソフトウェアエンジニアリングの良いところは、色んな日常に応用できることだよ。こういう風に飛行機のキャリアを見せるのはマジでクールだね。" userName="david422" createdAt="2025/06/27 14:45:20" color="#ff5c5c">}}




{{<matomeQuote body="本当それ！こういうプロジェクトだといつもこのXKCDコミックを思い出すんだよね：https://xkcd.com/1205/" userName="jamesharding" createdAt="2025/06/27 17:03:10" color="">}}




{{<matomeQuote body="これ商品化できるんじゃね？パイロットがLinkedInに貼ったり、友達や家族に見せたりできるやつ！" userName="amelius" createdAt="2025/06/27 14:24:54" color="">}}




{{<matomeQuote body="これ最高だね！シェアありがとう！SEの学位や才能があるのに、なんでSEじゃなくてパイロットになろうと思ったの？気になるなー。" userName="Crier1002" createdAt="2025/06/28 05:09:34" color="">}}




{{<matomeQuote body="父がパイロットだったのが大きいね。強制じゃなくて、子供の頃（9＼/11前）にジャンプシートに乗せてもらったのがきっかけだよ。学位取ってからBritish Airwaysの訓練生制度が始まって、そういうチャンスは少ないから飛びついたんだ。SEのスキルは趣味で続けてるし、（HNを何回もチェックしながら自分に言い聞かせてる笑）飛行できなくなった時の安全網にもなるしね（パンデミックとか医療的な理由とか）。" userName="jamesharding" createdAt="2025/06/28 19:35:44" color="#ff5733">}}




{{<matomeQuote body="素晴らしいプロフィールと綺麗なチャートだね。同じようなバックグラウンドからジェットを飛ばす道を選んだ人がいて嬉しいよ。僕は20年SEや役員をやってて、最近Airbus 320の型式訓練が終わったところ。ベースチェック待ってるんだ。ナショナルフラッグキャリアで飛ぶ予定だよ。" userName="halilkoklu" createdAt="2025/06/27 15:20:23" color="#ff5c5c">}}




{{<matomeQuote body="おめでとう、そしてありがとう！僕は2年ちょっと前にA320からA350に移ったんだけど、設計通り、飛ばすのがすごく似てるんだよね！訓練ゼロでもA350のシミュレーターに入って、安全なレベルで操作できるくらいだよ。" userName="jamesharding" createdAt="2025/06/27 15:36:33" color="#ff5c5c">}}




{{<matomeQuote body="A350はずっと気になってたからAirbus機材になれたのは嬉しいよ（ボーイング優勢だけど）。ここからのキャリアパスは2つ。<br>1. A320で1年、A330に昇格、2年後にA350資格。<br>2. A320に長く乗りキャプテン、その後A330キャプテン、2年後にA350追加。<br>ジャンプシートで全機種見学するつもり！" userName="halilkoklu" createdAt="2025/06/27 17:17:45" color="#38d3d3">}}




{{<matomeQuote body="どの航空会社か聞いてもいい？公開したくないならメールで（ウェブサイトにアドレスあるよ！）。<br>航空会社のキャリアって面白いよね。シニアリティがライフスタイルに大きく影響するから、ライフスタイルと給与のトレードオフが大きい。<br>僕の会社では『近距離FO -＞ 長距離FO -＞ 近距離Captain -＞ 長距離Captain』が典型。他の会社でも同じか興味あるな。" userName="jamesharding" createdAt="2025/06/27 20:02:24" color="#45d325">}}




{{<matomeQuote body="これすごくクールだね！パイロットがフライトログブックをつける必要があるって知らなかったよ。公式でおすすめされてるのは紙のログブックなの？" userName="alabhyajindal" createdAt="2025/06/27 13:11:46" color="">}}




{{<matomeQuote body="国によって要件が少し違うんだ！アメリカだと、FAAのルールはここにあるよ：https://www.ecfr.gov/current/title-14/chapter-I/subchapter-D...<br>今でも紙を使ってる人（フライト後に記入する）は多いけど、今はデジタルオプションも結構あるんだ。僕はLogTenっていうのを使ってて、これが裏でSQLiteファイルに全部保存してる。これを可視化に使ったんだよ。" userName="jamesharding" createdAt="2025/06/27 13:16:25" color="#ff5c5c">}}




{{<matomeQuote body="もし紛失したらどうなるの？" userName="pinoy420" createdAt="2025/06/27 13:20:21" color="">}}




{{<matomeQuote body="FAA的に全部のflying hoursをlogする義務はないらしいよ。<br>61.51.a.1か.a.2でrequiredな時間だけでOK。(Your airlineはrequireするかもだし、全部logするのはgood ideaだけど、lawじゃないんだ)。" userName="sokoloff" createdAt="2025/06/27 13:27:55" color="">}}




{{<matomeQuote body="USのCYOO周辺みたいに、airport labelsがclusterになってる時、もう少しspread outできないかな？<br>wonder if you can。" userName="arccy" createdAt="2025/06/27 13:16:46" color="">}}




{{<matomeQuote body="Good idea！<br>exactにglobe.glでどうやるかNot sureだけど、look into itするよ。" userName="jamesharding" createdAt="2025/06/27 13:23:58" color="">}}




{{<matomeQuote body="softwareとflyingの“communities”にはなんかcrossoverがあるみたいだね。<br>shared prerequisite skillsがあるからsurprisingじゃない？<br>code書くcommercial pilotsってmanyなの？<br>career over the way to the sun 100％getするexpect？" userName="silasdavis" createdAt="2025/06/27 14:50:52" color="">}}




{{<matomeQuote body="flyするex-engineersはQuite a fewいるよ。(anecdotally、mostはaerospace engineeringをstudiedしてたっぽいけど)。<br>At this rate、retireまでにthereまでabout 10％make it on trackだと思う。(unless supersonic travel comes back in a large way！)" userName="jamesharding" createdAt="2025/06/27 15:17:19" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="model of plane(s)がわかるなら、flight per CO2 emissions amountもadd shouldだよ。<br>occupancy data for each flightがあれば、efficiencyもdetermineできる。" userName="xyst" createdAt="2025/06/28 04:07:44" color="#ff33a1">}}




{{<matomeQuote body="Amazing visualization！<br>logにもっとfeatures addするplansある？<br>e.g. taking-off／flying to／landingのdifficultyとか、turbulence有り無しのtrajectoryとか？<br>etc.？" userName="kinow" createdAt="2025/06/27 22:24:42" color="#ff5733">}}




{{<matomeQuote body="Thank you！<br>特にmemorable flightsにはtext comments／remarks for all (above reasons you mentionedの全てfor the above reasons、plus famous passengers、family on board、etc)があるけど、some of thoseはquite privateだし、thisみたいなvisualisationでshowするのはdifficultでもあるんだ。<br>over timeもっとdataをtrack love toだけど、collectingするのがeasy with balancing that is the challenge！" userName="jamesharding" createdAt="2025/06/27 23:27:34" color="#ff5c5c">}}




{{<matomeQuote body="machine learning form using that data summarize you could。<br>new skill developするA good。<br>Then exact details shareしなくてもいい、category per count just。<br>E.g. personal incident (32)、late take off duty to X (23)、passenger medical incident (15)。<br>Hopefully in aggregate form that data is less of a privacy issue and less of a commercial risk for your company。" userName="pcollins123" createdAt="2025/06/27 23:56:45" color="#45d325">}}




{{<matomeQuote body="これ見て自分のデータをもっと集めようって気になったよー、素晴らしい仕事だね！" userName="collinvandyck76" createdAt="2025/06/27 13:56:03" color="">}}




{{<matomeQuote body="デバイスの位置情報サービスをマッピングしてみなよ。デバイスにアクセスできた人がどれだけ君の情報を得られるか、とかGoogleがそのデータでどれだけ儲けてるか、がよく分かると思うよ。" userName="dylan604" createdAt="2025/06/27 15:57:01" color="">}}




{{<matomeQuote body="すごいし、超クール！これ、みんながお金払って使う地球儀ルートジェネレーターにすることを考えてもいいかもね。https://anim8map.com/ を見てみてよ。<br>過去50年間、飛行機によく乗る乗客として、何百回ものフライトの記録を残しておけばよかったなって思うな。いつか座って、だいたいの推測でもいいからやってみようかな。" userName="ljsocal" createdAt="2025/06/28 05:50:54" color="#45d325">}}




{{<matomeQuote body="クールなウェブサイトだね！それを動画にするアイデアも面白いね。<br>僕が作ったみたいなものをビジネスにしようとする時の課題は、多分みんなが（また別の）こういうあまり頻繁に見ないものに、サブスクでお金を払うのを嫌がるだろうなって考えてたんだ。" userName="jamesharding" createdAt="2025/06/28 19:38:26" color="#785bff">}}




{{<matomeQuote body="Anim8のビジネスモデルは、使える時に使うクレジットを買う方式だよ。基本的に使用料って感じで、使ってなくても払うのとは違うんだ。" userName="ljsocal" createdAt="2025/06/30 05:40:51" color="#ff5733">}}




{{<matomeQuote body="これが過去3ヶ月間のリタイア後の旅行だよ:<br>https://share.icloud.com/photos/0bfsKT8PAv_CxDl4pVRWe9-iQ<br>たくさんのクールな経験の中でも、英仏海峡の下を通る”Le Shuttle”に乗ったのはすごかったなー。多分今まで見た市民工学の中で一番印象的なやつだよ。" userName="ljsocal" createdAt="2025/06/30 05:48:44" color="">}}




{{<matomeQuote body="インタラクティブなノードとエッジがある地球儀が好きなら、https://RTEdge.net も見てみてね！" userName="cetinsert" createdAt="2025/06/27 14:32:03" color="#45d325">}}




{{<matomeQuote body="来月、君の最新ルート（ba218）を飛ぶんだ。もし会ったら、”ジェームズ、どこ飛んでたか知ってるよ”みたいな変なこと言ってみるね。大丈夫かな。<br>アイデアについてだけど、いくつかの測定で大円距離を使ってるのに気づいたんだけど、実際のフライトデータを入手して、理想からのフライトのずれを示すグラフにするのはどう？" userName="IncreasePosts" createdAt="2025/06/27 16:13:48" color="#ff5733">}}




{{<matomeQuote body="ハハ、もし別のジェームズが操縦してたら、きっとびっくりするだろうね！今の乗務スケジュールだと、少なくとも8月まではデンバーには飛ばないよ。<br>実際の距離を使えるのは素晴らしい（そして月をもう何周か回れる計算になるだろうね）けど、簡単にデータを入手する方法がないんだ。会社のフライトプランはPDF形式で、簡単なAPIもないし、フライトプランを持ってるEuroControlはおそらくアクセス料が結構かかると思う。ルートをスクショしてサーバーにアップロードして、OCRで読み込ませることもできるかな、とは思うけどね！" userName="jamesharding" createdAt="2025/06/27 16:59:33" color="#45d325">}}




{{<matomeQuote body="flightaware.comはどうかな？ba218って入れてみたら、素人目には実際の位置情報に見えるのが見れるよ:https://www.flightaware.com/live/flight/BAW218/history/20250..." userName="IncreasePosts" createdAt="2025/06/28 05:45:26" color="#ff5733">}}




{{<matomeQuote body="個人的にフライト記録したいなら、iOSアプリのFlightyがマジで良かったよ！<br>おすすめ。<br>https://apps.apple.com/us/app/flighty-live-flight-tracker/id..." userName="ngoel36" createdAt="2025/06/28 08:42:05" color="#ff33a1">}}




{{<matomeQuote body="いいね！<br>俺もよく飛行機乗るから、フライト記録するの超好き。<br>5年OpenFlights使ってたけど、バグがうざくてさ。<br>だから今年は自分で作ったんだ！見てみて。<br>https://jetsetter.quest" userName="HeavenFox" createdAt="2025/06/27 18:13:48" color="#ff5733">}}




{{<matomeQuote body="連続して動く地球儀の表示、めっちゃ好き！<br>アイデアなんだけど、高度に関する表示もできない？<br>例えば1日の平均高度とかさ。<br>どう？" userName="jasonthorsness" createdAt="2025/06/27 13:46:40" color="#ff33a1">}}




{{<matomeQuote body="データがあれば最高なんだけどね！<br>あと、運んだ乗客数も記録できたら、キャリアの最後に累計統計としていい感じになりそう。<br>（キャプテンになったら記録できるかな？）" userName="jamesharding" createdAt="2025/06/27 14:11:35" color="">}}




{{<matomeQuote body="ルートごとの代表的なフライトのADSBデータを引っ張ってくれば、ある程度データ補えるんじゃない？<br>放射線被曝の話とかにも役立ちそう。<br>あと、ClaudeにGPSとかキャビン高度とか、面白いデータ集めるスマホアプリ作ってもらうとか？" userName="FL410" createdAt="2025/06/27 14:23:15" color="#ff5c5c">}}




{{<matomeQuote body="このアイデア、俺も賛成！<br>高高度の飛行時間、管理するの超重要だよ。<br>地上より放射線いっぱい浴びるから。<br>パイロットとかフライトアテンダントの健康が、高い放射線被曝で影響受けるって記事、いくつか読んだことあるし。" userName="NKosmatos" createdAt="2025/06/27 14:00:15" color="#785bff">}}




{{<matomeQuote body="そうだけどさ、光速に近い時間過ごすおかげで、数マイクロ秒だけど老化が遅くなるのとプラマイゼロにならないの？" userName="willsmith72" createdAt="2025/06/27 14:04:02" color="">}}




{{<matomeQuote body="実はね、飛行機乗ると老化は速くなるんだよ。<br>空間の密度が低いから、重力で時間が遅れる効果が少ないんだ。<br>この場合は、一般相対性理論がSpecial Relativityとは逆の働きをするんだよね。" userName="cyberax" createdAt="2025/06/27 14:20:55" color="">}}




{{<matomeQuote body="すごくいいね！<br>一つだけ細かいこと言うと、グラフのsmoothingで、2014-2015年のP2時間と2021-2022年のHeavy時間がマイナスに見えちゃうかな。<br>ICAOのHeavy指定って、特定のMTOW以上の機体じゃなかったっけ？<br>時間っていうのは、交代キャプテンとかFOとして行動した場合じゃない？<br>まあ、どっちにしても、可視化は最高だよ。" userName="frenchman_in_ny" createdAt="2025/06/27 19:07:20" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
