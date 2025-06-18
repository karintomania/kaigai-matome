+++
date = '2025-06-11T00:00:00'
months = '2025/06'
draft = false
title = '旅の計画をサポートするWebアプリ Ikuyo'
tags = ["旅行", "Webアプリ", "開発", "計画", "トラベルテック"]
featureimage = 'thumbnails/cyan3.jpg'
+++

> 旅の計画をサポートするWebアプリ Ikuyo

引用元：[https://news.ycombinator.com/item?id=44247029](https://news.ycombinator.com/item?id=44247029)




{{<matomeQuote body="やっほーHNのみんな！過去8ヶ月、旅行計画アプリIkuyoをサイドプロジェクトで作ってたんだ。特に直近3ヶ月で機能をめっちゃ追加したよ。<br>機能はブログ[1]に書いたけど、予定表、リスト・マップ表示、コメント、経費追跡、シェア・コラボ機能とか。<br>ソースコードはGitHub[2]にあるし、見学用のデモ[3]もあるよ。<br>旅行計画はこれでうまく進んでると思う！みんなの意見を聞かせてね！ありがとう！<br>[1] https://blog.kenrick95.org/2025/06/ikuyo-plan-your-next-trip...<br>[2] https://github.com/kenrick95/ikuyo<br>[3] https://ikuyo.kenrick95.org/trip/2617cd98-a229-45d4-9617-526..." userName="kenrick95" createdAt="2025/06/11 12:44:15" color="#38d3d3">}}




{{<matomeQuote body="トップページにアプリの画像サンプルを直接加えるの、絶対オススメだよ。見学用リンクだけじゃなくてさ。そうしないと、どんな感じか探さないといけなくて、ユーザーは興味持ちにくいと思うな。" userName="usrme" createdAt="2025/06/11 12:55:34" color="#ff5733">}}




{{<matomeQuote body="提案ありがとう！開発中で色々すぐ変わるから、トップページに何か載せるの躊躇してたんだ。でもすぐに追加するよ〜" userName="kenrick95" createdAt="2025/06/11 13:27:54" color="">}}




{{<matomeQuote body="あと、ランディングページにシンガポールの例があるからだけど、これは僕のシンガポールガイドね http://swyx.io/sg-guide<br>個人的な、こだわりのあるガイドを作るのを奨励するのって、いい感じだし、あまり探求されてないと思うんだ。" userName="swyx" createdAt="2025/06/11 18:11:52" color="">}}




{{<matomeQuote body="同意するよ。でもwikitravelへの貢献も考えてみたら？これは彼らのシンガポールページね https://wikitravel.org/en/Singapore" userName="zie" createdAt="2025/06/12 04:16:39" color="">}}




{{<matomeQuote body="うん、でも大事なのはこれが”僕の”ページで、”僕の”友達向けだってこと。”僕”がシンガポールをどう見てるか、具体的に聞いてくる人たちのためにさ。" userName="swyx" createdAt="2025/06/12 17:24:40" color="">}}




{{<matomeQuote body="キュレーションは間違いなくまだ探求されてないね。そして、今来てるAIの波を考えると、これからもっとキュレーションを見るようになると思うよ。" userName="RamblingCTO" createdAt="2025/06/11 19:17:15" color="">}}




{{<matomeQuote body="まあ、スクリーンショット撮るのは簡単だし、タダだよ＋たとえ古くなっても、何をしてるかは伝わるからね。" userName="swyx" createdAt="2025/06/11 18:09:54" color="">}}




{{<matomeQuote body="あと、アカウント作ったり、メール認証したりしなくても、ユーザーが何かできるようにしてあげて。" userName="thefourthchime" createdAt="2025/06/11 15:47:22" color="#785bff">}}




{{<matomeQuote body="これすごいね。Wanderlogをよく使ってたんだけど、機能はいいけどたまに遅くて大変だったんだ。試しに登録してみたよ。今Wanderlogで立ててる次の旅行計画を再現してみようとして、いくつかフィードバックがあるよ。<br>- 全体的に、最高！サクサク動くし、すごく分かりやすいね。<br>- シンプルなのが気に入ったよ。<br>- これが基本的にExcel（みたいな）だけど、旅行に特化した機能が追加されてるのがいいね。<br>さて、改善点だけど、<br>- 他の人を編集者に追加できないみたい。追加をクリックすると、「TripForm」っていうフォームオブジェクトがログに出るだけ。ネットワークリクエストも出てない。<br>- 費用をどう分割するか選べない（これはたぶん、一緒に旅行する人がいないからかな？）。<br>- 時刻表のコントラストがちょっと分かりにくいかも。パディングとかマージンが必要かな。<br>- MapTilerのデータベースがあまり良くないみたい。152 Morrison Roadを追加するのに苦労したよ。<br>- アクティビティが複数日にまたがれない（深夜0時45分に着く電車の乗車を追加しようとしたんだ）。<br>- 時刻表のページでアクティビティを追加／編集しても、更新されない（リフレッシュするか別のページに移動するまで）。<br>それ以外だと、これどうやってお金稼ぐつもり？コードはMITライセンスで公開されてるから、誰でもサブスクリプションつけてホストして宣伝できちゃうけど。AGPLとかどう？" userName="figmert" createdAt="2025/06/11 15:26:34" color="#45d325">}}




{{<matomeQuote body="試してくれて、詳しいフィードバックありがとう！<br>- 旅行の共有についてだけど、うーん、それはおかしいな。まだ「読み込み中」の表示はないけど、旅行の「オーナー」ならできるはずだよ。<br>- 費用分割：その機能はまだないんだ。<br>- ありがとう、検討してみるね。<br>- MapTilerで選んだ地図はOpenStreetMapなんだけど、POI（Point-of-interest）だけに絞ってるんだ。もっと色々な種類の場所に対応させる必要があるかも。<br>- ああ、その件については、時刻表に表示するためにアクティビティを2つに分けるのがすごく面倒だから、そのケースは今は無効にしてるんだ。良いユースケースありがとう！<br>- うーん、おかしいな、アクティビティはリアルタイムで反映されるはずなんだけど。たぶん「バックエンド」が少し遅いのかな。<br>とにかく、「バックエンド」はInstantDB（https://www.instantdb.com）で、WebSocket接続を開いてるんだ。だから操作してもネットワークコールが見えないんだね。<br>追伸：これを収益化するつもりは全くないよ。誰かがフォークして収益化しても、それが自分に影響しない限り大丈夫だと思ってる。もし「無料使用枠」を使い果たしたら、たぶんユーザー数を一部の人に制限するくらいかな。" userName="kenrick95" createdAt="2025/06/11 15:40:18" color="#ff33a1">}}




{{<matomeQuote body="AGPLライセンスでも、誰かがサブスクリプションつけてホストして宣伝するのは止められないよ。ただ、派生した作品はAGPLの下でライセンスする必要があるんだ。<br>ソフトウェア開発には色々な目的があるし、お金の稼ぎ方も違うよね。AGPLは役立つ場合もあるけど、結構制限も多いんだ。" userName="ensignavenger" createdAt="2025/06/11 15:49:57" color="">}}




{{<matomeQuote body="やあ、figmert -- Wanderlogの共同創業者の一人、Peterだよ。今ちょうどイタリアに旅行中で、パフォーマンスの問題で苦労してる気持ち、すごくよく分かるよ。僕たちも改善に一生懸命取り組んでるんだ。<br>もしここ数ヶ月アプリを試してなかったら、もう一度使ってみて、どこが遅いと感じたか具体的にpeter@wanderlog.comに直接メールで教えてくれない？詳しく見たいし、特にスクリーンショットとか動画とか具体的な情報があれば、自分でいくつか直せるかもしれないんだ。" userName="phsource" createdAt="2025/06/11 20:03:30" color="#ff5733">}}




{{<matomeQuote body="そのプロジェクトで何を目指してるの？<br>俺も何年か前に、これとすごく似たウェブアプリを作ったんだ。友達や家族との共同作業、地図付きの旅行計画、持ち物リスト、メモ、お気に入り機能、公開・非公開、コメント機能とか、そういうの。<br>俺の考えでは、今みんなが共有ドキュメントで計画してるのがぐちゃぐちゃだから、もっと構造化された、ガイド付きのアプローチにすればユーザーは楽になると思ったんだ。あと、旅行に参加しない人にも計画を共有したり見せたりしたいだろうと。<br>俺の目標はスケールさせて、実際に広く使われるようにして、ソーシャルな体験にすることだったんだけど、数人ユーザーを獲得するのさえ大変だったよ。<br>俺の考えはたぶん間違ってたんだ。理由をいくつか挙げるね。<br>1. ぐちゃぐちゃな共有ドキュメント方式は、すごく手軽っていう利点があった。「アイテムを追加」をクリックしてフォームを埋めるより、箇条書きでタイプする方が簡単なんだ。<br>2. ブラウザでの利用が（たぶん）制限要因だった。ネイティブのモバイルアプリだったらどうだったかは分からないけど、ウェブアプリとしてはダメだったね。<br>3. みんな旅行を見せびらかしたり旅行のアイデアを探したりするときは、InstagramとかTikTokみたいなアプリを使う。写真や動画のビジュアルが欲しいんだ。リストと地図だけじゃなくて。新しい目的別のソーシャルネットワークを作るのはすごく難しい。<br>結局、やめて次に進んだよ。<br>これはDropboxの「なんでこれ作ってるの」みたいなコメントじゃなくて、君がこれから直面するかもしれない、この分野に存在するいくつかの課題を、願わくば指摘できればと思ってのことなんだ。もしスケールさせたいなら、考える必要があるだろうね。" userName="mi100hael" createdAt="2025/06/11 14:09:01" color="#45d325">}}




{{<matomeQuote body="いくつか目的はあるけど、広く使われることでは全くないよ。<br>まず第一に、自分の個人的な利用のため。物事を整理するのが好きで、散らかったドキュメントやスプレッドシートの方法は自分にはぐちゃぐちゃすぎるんだ。特に海外の友達と計画を調整する必要があるときね。だからこれを始めたんだ。<br>次に、 funのためと学習のため。ウェブサイトを作るのが楽しいし、ブラウザが提供できるものを探るのが好き。要素をドラッグ＆ドロップしてターゲット要素にデータを渡すAPIがあることを学んだよ。<br>だから結局のところ、 funなサイドプロジェクトとして見てるし、それ以上ではないんだ。<br>経験談もシェアしてくれてありがとうね :)" userName="kenrick95" createdAt="2025/06/11 14:16:07" color="#45d325">}}




{{<matomeQuote body="ランディングページは、すごく本格的な製品でユーザーを獲得しようとしているように見えるね。ユーザーを誤解させて、 funなサイドプロジェクト以上のものだと思わせてしまうかもしれない。" userName="layer8" createdAt="2025/06/11 18:06:24" color="">}}




{{<matomeQuote body="それが何か害になるの？<br>ユーザーの要求を満たしているなら、使うかどうかはユーザーが決めることでしょ？誤解があっても別にいいんじゃないかな。" userName="yumraj" createdAt="2025/06/11 20:16:22" color="">}}




{{<matomeQuote body="友達も似たモバイルアプリ作ったけど、やっぱりユーザー獲得に失敗したんだ。<br>こういうツールが見落としがちなのは、旅行計画って別にアプリの助けがなくても結構楽しいってことだと思う。<br>使うのが大変そうで、一度覚えても次に使うときにまた覚え直さなきゃいけないみたいに感じるんだ。" userName="mountainriver" createdAt="2025/06/11 20:19:16" color="">}}




{{<matomeQuote body="それに、旅行のすべての時間を計画したいわけじゃないんだよね。これは大人数をまとめて動かす必要がある大きな旅行には役立ちそうだけど、個人的な感覚では、そういう旅行はそもそもあまり funじゃないと思う。" userName="presentation" createdAt="2025/06/12 03:59:38" color="">}}




{{<matomeQuote body="汚い共有ドキュメントは使い始めが簡単でメリットあるよね。みんなにアプリを使ってもらうには、普段使ってるツールより絶対良いって思わせる必要があるんだ。どのツールもそうだけど、特にソフトウェアはね。" userName="packetlost" createdAt="2025/06/11 22:36:20" color="#ff5c5c">}}




{{<matomeQuote body="みんなで使うのにアカウント作るのが必須だと、ほとんどのグループには大変だよ。Google Docsならもうみんな使ってるしね。アプリのどこまでアカウントが必要かわからないけど、ログインなしで使える部分を増やしてほしいな。計画を手伝いたい人もいれば、ただついていきたいだけの人も多いからさ。" userName="pimlottc" createdAt="2025/06/11 16:44:34" color="#38d3d3">}}




{{<matomeQuote body="ボタンを連打しちゃって、メールコードとかエラーがたくさん来ちゃったよ。デバウンス処理とかボタン無効化が必要だね。<br>サンプル旅行があると使い方が分かりやすいかも。<br>入力が面倒で賢くない気がするんだ。邪魔になってる感じ。活動の日付入力とかも、期間指定じゃなくて自由入力なのがイマイチ。終了日時も duration 入力（例: 3時間）できた方が楽だよ。<br>あと、まだ計画段階の場所リスト機能もないし。個人的には Wanderlog を使い続けるかな。" userName="eschatology" createdAt="2025/06/11 13:49:24" color="#ff5c5c">}}




{{<matomeQuote body="このアプリいいね！ Wanderlog みたいなアプリ使ったことあるけど、タイムテーブルのフィルタリング機能がすごく欲しいんだ。旅行中は logistics モード（移動と宿泊に集中）と fun モード（楽しいアイデア）を切り替えたいんだよ。logistics モードでは詳細な時刻表だけ、fun モードでは今の場所に合わせた提案と logistics モードに戻る時間だけが見たいな。まるで旅のプランナーが2人いるみたい。一人は厳しい教官で、もう一人はノリの良いサーファーみたいにさ。" userName="biophysboy" createdAt="2025/06/11 14:39:21" color="#ff33a1">}}




{{<matomeQuote body="「活動を正確な時間と場所でスケジュールする」って？バケーション中に一番嫌いなことだよ！だって休暇なんだから、そんなにカッチリしたくないじゃん！" userName="gwbas1c" createdAt="2025/06/11 17:32:47" color="">}}




{{<matomeQuote body="前は私もそうだったけど、家族が増えたら予約なしでレストラン入って1時間待ちとか無理になったよ。大家族での旅行は、一人でフラッと行って二日間とかより、ずーっと計画が必要なんだ。" userName="gorbachev" createdAt="2025/06/11 20:53:22" color="">}}




{{<matomeQuote body="「大家族」ってどんな？まあ、20人分のディナー予約と、旅行全体を分刻みで計画するのとは話が違うけどね。" userName="gwbas1c" createdAt="2025/06/12 10:09:02" color="">}}




{{<matomeQuote body="これ、めっちゃわかるわーって感じなんだけど、旅行でしか行けない場所に行けなかったって後悔するのも嫌で、どっちつかずなんだよね。" userName="eptcyka" createdAt="2025/06/11 17:36:50" color="">}}




{{<matomeQuote body="やりすぎは良くないよね！私のコメントは、分刻みで計画しすぎる人たちの反応だったんだ。" userName="gwbas1c" createdAt="2025/06/11 20:14:00" color="">}}




{{<matomeQuote body="面白いアプリだけど、俺にはちょっと重すぎかな。TripItを使ってるよ。地図上で計画したり、周辺を検索したりできると便利だと思うな。Google Mapsみたいにさ。" userName="zerkten" createdAt="2025/06/14 02:32:22" color="#45d325">}}




{{<matomeQuote body="フィードバックありがとう！必須項目を増やしすぎたかも。僕みたいに全部きっちり計画したい人向けなんだ。Google MapsとかAI chatbotと併用するといいかもって思ってるよ。" userName="kenrick95" createdAt="2025/06/15 11:34:19" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="似た目標のオープンソースアプリがあるよ：https://apps.kde.org/itinerary/<br>チケット抽出とか公共交通機関との連携がすごく便利なんだ。このアプリの開発に関わってるんだよ。" userName="ognarb" createdAt="2025/06/11 22:46:16" color="#ff5c5c">}}




{{<matomeQuote body="いいね！MITライセンスで無料なら、トップページに書いた方がいいよ。値段とか書いてないと、途中でお金取られる「ダークパターン」かと思っちゃうからさ。" userName="franciscop" createdAt="2025/06/11 14:17:38" color="#38d3d3">}}




{{<matomeQuote body="優しい言葉ありがとう！すごく良い提案だね、すぐに追加するよ :)" userName="kenrick95" createdAt="2025/06/11 14:21:58" color="">}}




{{<matomeQuote body="すごく良いアプリだけど、タイムゾーンの扱いがよく分からないな。大きな国だと複数のタイムゾーンがあるし、旅程が混乱しそうだよ。UIでも分かりにくい気がするんだ。" userName="fodkodrasz" createdAt="2025/06/11 16:10:57" color="#45d325">}}




{{<matomeQuote body="ちょっと分かりにくいよね。選んだ’目的地のタイムゾーン’だけを使うようにしてるんだ。（活動の時間は全部目的地のタイムゾーンだよ）。コメントだけローカルタイムだけど、オフセットは表示してるはず。複数タイムゾーンの旅行はまだ対応できてないんだ。" userName="kenrick95" createdAt="2025/06/11 16:15:38" color="">}}




{{<matomeQuote body="少なくとも、目的地までの移動（フライトとか）のタイムゾーンは考えないとね。国際線だと全然違う時間帯になることが多いからさ。飛行機乗り遅れたくないでしょ…" userName="pimlottc" createdAt="2025/06/11 16:40:49" color="#ff5c5c">}}




{{<matomeQuote body="それはすごく大事なユースケースだね、考えてなかったよ。教えてくれてありがとう！" userName="kenrick95" createdAt="2025/06/12 01:23:07" color="">}}




{{<matomeQuote body="俺たちの旅行計画って、みんなで候補出して、優先順位決めて、交通費とか割引調べて、地図で場所整理して…って、結構複雑なんだよね。このアプリでどうやればいいか全然わかんないなー。" userName="ceving" createdAt="2025/06/12 13:48:51" color="">}}




{{<matomeQuote body="フィードバックサンキュー！人それぞれやり方違うの同意。アイデアリストは要望多くて今やってるとこ。でも、みんなでワイワイ決めるのとか、電車とかチケットの制約はまだ対応してないんだよねー。" userName="kenrick95" createdAt="2025/06/15 11:37:51" color="">}}




{{<matomeQuote body="へー、他の人がどう旅行計画してるかマジ面白いね。俺も昔自分用に旅行アプリ作ったけど、地図とか場所メインだったなー。技術的なとこ、CSS見たらマジびっくり！全然わかんないとこ（例えばこんな感じ→grid-template-rows: ... in loop）とか、色使いもハンパなかった。あれって狙ってんの？" userName="reconnecting" createdAt="2025/06/11 19:19:36" color="#ff5c5c">}}




{{<matomeQuote body="そうそう、CSS Grid使ってんの。グリッドの定義を先に書かなきゃいけなくてさ、1分単位で設定してるから、1日24時間×60分＝1440行をグリッドの行として全部宣言してんだよねー。" userName="kenrick95" createdAt="2025/06/12 01:25:14" color="">}}




{{<matomeQuote body="Wanderlogに似てるけど、まだ完成度が低い感じかな。頑張って！Wanderlogみたいにアプリ遅くしないでねー。マジ遅すぎて、自分でAndroidアプリ作って連携させたほどだから！" userName="denysvitali" createdAt="2025/06/11 14:05:20" color="#ff5733">}}




{{<matomeQuote body="今さ、俺が多分作らないけど好きなアイデアがあって、30代＆40代の男向けにSMSチャットボットで旅行計画するってやつ。一番困るのが、いつ、どこ行くか仲間で決めることなんだ。だから、そこを手伝うボット、マジ魅力的。投稿者さん、もしよかったら、旅行計画手伝うユーザーグループ一緒にやる？" userName="mikesabat" createdAt="2025/06/11 13:35:14" color="#ff33a1">}}




{{<matomeQuote body="うちでも https://tripjam.app で、これ作ろうと頑張ってるところだよー。" userName="kenforthewin" createdAt="2025/06/11 16:17:15" color="">}}




{{<matomeQuote body="それな！マジで俺と友達のことじゃん！グループチャットに20人くらいいるけどさ、みんな言いたい放題なのに、誰も「これにしようぜ！」って決めようとしないんだよー。" userName="abdhass" createdAt="2025/06/11 14:46:31" color="">}}




{{<matomeQuote body="これ面白いね（いい意味でさ）。だって、Y Combinatorの会社で、マジで全く同じことやってるとこあるんだもん。ここ見て→ https://www.flowtrip.app/" userName="fakedang" createdAt="2025/06/11 19:56:31" color="">}}




{{<matomeQuote body="へー、面白いね！シェアしてくれてありがとう！" userName="kenrick95" createdAt="2025/06/15 11:45:49" color="">}}




{{<matomeQuote body="いくつかの場所を回るのに最適な順番を決められたりする？Yes it is a sort of TSPなんだけど、道が時間で通行止めになったりするから、fixed weightsって仮定はできないんだよね。" userName="samarthr1" createdAt="2025/06/12 02:30:19" color="#ff5c5c">}}




{{<matomeQuote body="地図に場所をリストアップしたら、どれを一緒に回るかとか、スケジュール調整とかって自分で結構分かる気がするんだよね。Yes it’s more manual workだけど、それってplanningの“fun”の一部じゃない？（stress感じる人もいるけど、俺も旅のplanning好きだよ）" userName="kenrick95" createdAt="2025/06/15 11:45:15" color="">}}




{{<matomeQuote body="Neat！家族とこれで試してみたいな。MIT licenseって見たんだけど、self hostできる方法のdocument作る計画ある？それか、他の人からのcontributionsを受け入れたりする？" userName="corps_and_code" createdAt="2025/06/11 15:13:19" color="#ff5733">}}




{{<matomeQuote body="ありがとう！たぶん`.env.example`を`.env`にcopyしてrequired API keysをreplaceすればいいだけだよ。[1] whole “back-end”はInstantDBっていうexternal dependencyでhosted elsewhereなんだ。[2] they claim that you can self-host it tooだけど、I haven’t been bothered to self-host it myself。Other than that, I’m using MapTiler Cloud for the mapping service [3] since I find that while there are free ones, those can be quite limited when doing things like geocoding (querying keyword to coordinates)。[1] https://github.com/kenrick95/ikuyo/blob/main/.env.example<br>[2] https://github.com/instantdb/instant<br>[3] https://www.maptiler.com/" userName="kenrick95" createdAt="2025/06/11 15:22:27" color="#38d3d3">}}




{{<matomeQuote body="面白そうだけど、more learnするにはsign up requiredなのがcheck outする気にならないな（I suppose others reaching the landing page might be as well）。" userName="e-gn" createdAt="2025/06/11 13:12:22" color="#ff5c5c">}}




{{<matomeQuote body="Yeah I agree, haven’t get around that part yet since the auth part is handled by 3rd party (InstantDB)。However you can use throwaway email service and it accepts that too。" userName="kenrick95" createdAt="2025/06/11 13:21:44" color="#45d325">}}




{{<matomeQuote body="room planningもbuilt inされたらいいな。何家族かでcottagesにstaycationするんだけど、peopleをroom’sにallocateできるとniceなんだ。" userName="abdhass" createdAt="2025/06/11 14:44:36" color="#ff33a1">}}




{{<matomeQuote body="家族とIはLondon/ParisにJuly with childrenでtripするんだ。Wanderlog triedけどit’s not great。これgive a tryしてみるね！" userName="xwowsersx" createdAt="2025/06/11 15:34:10" color="#45d325">}}




{{<matomeQuote body="やあ！Wanderlog（YC W19）の共同創業者だよ。<br>君が使ってみて、どんな問題にぶつかったのか教えてくれない？<br>よかったら聞かせてほしいんだ、改善に活かしたいから。" userName="arciini" createdAt="2025/06/12 00:13:23" color="#ff33a1">}}




{{<matomeQuote body="プライバシーポリシーも利用規約も、連絡先について書いてあるけど、<br>どうやって連絡すればいいか分からないよ。" userName="Tepix" createdAt="2025/06/11 13:05:43" color="#ff5733">}}




{{<matomeQuote body="指摘ありがとう！<br>すぐに修正するね。" userName="kenrick95" createdAt="2025/06/11 13:25:33" color="#785bff">}}




{{<matomeQuote body="これすごくいいね！<br>前はAirtable使ってたんだけど、地図がないのが私には不便だったんだよね。" userName="davl3232" createdAt="2025/06/11 21:40:54" color="#ff5c5c">}}




{{<matomeQuote body="ありがとう。<br>このアプリは、私がExcelでやってた旅行計画のやり方を置き換えるために作ったんだ。<br>気に入ってもらえて嬉しいよ:)" userName="kenrick95" createdAt="2025/06/15 11:40:37" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="旅行データはどうやって保存してるの？<br>エクスポートする機能はある？" userName="rishikeshs" createdAt="2025/06/13 04:09:12" color="#ff33a1">}}




{{<matomeQuote body="バックエンドは全部 InstantDB https://www.instantdb.com/ を使ってるよ。<br>エクスポート機能はまだないんだ。" userName="kenrick95" createdAt="2025/06/15 11:39:35" color="#45d325">}}




{{<matomeQuote body="目的地リストにFranceが2つあるよ。<br>何も違いがないみたいだけど。" userName="noworld" createdAt="2025/06/11 13:17:02" color="#785bff">}}




{{<matomeQuote body="指摘ありがとう！すぐ直すからね。" userName="kenrick95" createdAt="2025/06/11 13:20:18" color="">}}




{{<matomeQuote body="Google Sheetじゃ簡単にできない、このアプリのすごい機能って何？" userName="JoshTko" createdAt="2025/06/11 14:45:35" color="#45d325">}}




{{<matomeQuote body="Excelでタイムテーブル作る時、セル結合がめんどくさいんだよね。予定変更で動かすのも大変だし。だからこのアプリをまずタイムテーブル表示から作ったんだよ。" userName="kenrick95" createdAt="2025/06/11 14:59:29" color="#ff5c5c">}}




{{<matomeQuote body="サンプルアカウントのログイン情報ってある？" userName="leetrout" createdAt="2025/06/11 13:12:08" color="">}}




{{<matomeQuote body="ごめん、用意してないんだ。でも使い捨てメールサービスで試せるよ。" userName="kenrick95" createdAt="2025/06/11 13:23:36" color="">}}




{{<matomeQuote body="認証コードの再送ができないみたい。できるようにしてくれない？" userName="flashblaze" createdAt="2025/06/11 16:54:39" color="#ff5733">}}




{{<matomeQuote body="ちょっと注意してね。WebGLが無効だとアプリが動かないみたい。" userName="Fervicus" createdAt="2025/06/11 16:41:14" color="#785bff">}}




{{<matomeQuote body="ありがとう。Sentry入れた後で気付いたけど、もう直ってるはずだよ！" userName="kenrick95" createdAt="2025/06/15 11:46:21" color="">}}




{{<matomeQuote body="他のアプリと連携できるともっと便利かも。" userName="junphone" createdAt="2025/06/13 05:08:00" color="">}}




{{<matomeQuote body="良いアプリだね、考えたアイデアもすごく良いよ。" userName="NihalSingh1" createdAt="2025/06/11 14:06:23" color="">}}




{{<matomeQuote body="旅行好きの僕からの正直な提案だよ。これ、君自身のために作るのがベスト。商業化するなら、誰でも秒速で使える簡単さ、SNS連携、友達紹介とか、かなり努力が必要。それに旅行って頻繁にしないし、収益化も大変なんだ。正直、これは売り物には向かない「タールピット」だよ。<br>でも、君が情熱持って作ってるのは最高！そのまま自分専用ツールを極めよう。そして、ユーザーがお金稼げるような、本当にすごいアイデアが閃いたら、成長ハックなしでもみんな使いたがるはずだよ。" userName="joeguilmette" createdAt="2025/06/11 18:27:33" color="#ff5c5c">}}




{{<matomeQuote body="これ結構いいね！計画後半や友達共有に役立ちそう。MarkdownとかSpreadsheetより、リストやマップ、スケジュールで見られるのは良い！<br>テストしたけど、通貨地域設定は微妙。アクティビティの時間設定もD&Dできないのは使いにくいかな。でも、Markdownで下書き→ここにインポートして共有はアリ！Spreadsheetより断然良いよ！<br>オフラインで見られる？旅行中にネット必須だと困るかも。<br>ソースコードも綺麗で、自分でホストもできそう！ホームに戻るのがURL編集だったのは気になったけどね。" userName="Aachen" createdAt="2025/06/12 02:24:46" color="#ff5c5c">}}




{{<matomeQuote body="フィードバックと試してくれてありがとう！時間なしの「やりたいことリスト」は次に実装する予定だよ。地域選択はマップのためだけど、ヨーロッパみたいに複数地域指定できる必要性は感じるね。" userName="kenrick95" createdAt="2025/06/12 03:12:34" color="">}}




{{<matomeQuote body="アカウント作ったら白い画面になったよ…<br>https://ikuyo.kenrick95.org/trip/4725b43a-595b-433d-b746-79c...<br>まだ実用的じゃないみたいだね…。" userName="adavila78" createdAt="2025/06/11 13:35:42" color="">}}




{{<matomeQuote body="ああ、やばい…エラー監視設定してないからデバッグに時間かかるかも。ごめんね。<br>使ってるブラウザ＆バージョン教えてもらえる？ありがとう。" userName="kenrick95" createdAt="2025/06/11 13:57:47" color="">}}




{{<matomeQuote body="どんな技術スタック使ってるの？エラー監視と可観測性には、SentryとかPosthogの無料枠でしばらくいけると思うよ。" userName="adi4213" createdAt="2025/06/11 14:16:26" color="">}}




{{<matomeQuote body="フロントエンドはReactで、バックエンドはInstantDB（https://www.instantdb.com/）だよ。バンドルサイズ増えたくなかったんだけど、近いうちに監視用にSentryを入れるつもり。" userName="kenrick95" createdAt="2025/06/11 14:37:49" color="">}}




{{<matomeQuote body="励ましありがとう！<br>機能拡張や強化のアイデアもありがとうね！" userName="kenrick95" createdAt="2025/06/11 14:55:49" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
