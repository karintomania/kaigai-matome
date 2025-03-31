+++
date = '2025-03-24T00:00:00'
months = '2025/03'
draft = false
title = 'Apple Silicon搭載Macの音響革命！Triforceで実現する驚異のビームフォーミング技術とは？'
tags = ["Apple Silicon", "Mac", "ビームフォーミング", "オーディオ", "Asahi Linux"]
featureimage = 'thumbnails/blue_green2.jpg'
+++

> Apple Silicon搭載Macの音響革命！Triforceで実現する驚異のビームフォーミング技術とは？

引用元：[https://news.ycombinator.com/item?id=43461701](https://news.ycombinator.com/item?id=43461701)

{{<matomeQuote body="この記事の背景について書いてあるブログ記事はここだよ：https://asahilinux.org/2025/03/progress-report-6-14/#is-this..." userName="derhuerst" createdAt="2025-03-24T15:10:39" color="">}}

{{<matomeQuote body="ありがとー。まさにそれを聞こうと思ってたんだ。" userName="sillysaurusx" createdAt="2025-03-25T01:41:27" color="#ff33a1">}}

{{<matomeQuote body="20年以上前に持ってたToshibaのタブレットPCは、ビームフォーミングマイクがついてて、録音したい方向を指定できたんだよね。講義で教授の声だけ録音する、みたいな使い方ができた。あれはマジですごかった。" userName="com2kid" createdAt="2025-03-24T15:51:59" color="#785bff">}}

{{<matomeQuote body="昔のSonyのHandycamには、映像に合わせて音を拾う「ズーム」マイクがあったよね。あれも良いアイデアだった。まだ似たようなの作ってるみたい：https://electronics.sony.com/imaging/imaging-accessories/all..." userName="bayindirh" createdAt="2025-03-24T16:10:04" color="#785bff">}}

{{<matomeQuote body="iPhoneにもそれっぽい機能がある気がする。録画中にズームすると、確かに音の感じが変わるんだよね。" userName="atorodius" createdAt="2025-03-24T16:12:33" color="">}}

{{<matomeQuote body="iPhoneにもあるよ。あんまり言わないけどね：https://devstreaming-cdn.apple.com/videos/wwdc/2019/249a0jw9..." userName="internetter" createdAt="2025-03-24T17:40:02" color="#45d325">}}

{{<matomeQuote body="そのリンク先の動画でオーディオに関するコンテンツはスライド124-140だけど、ビームフォーミングについては触れられてるけど、バーチャルズームと連携するデフォルトのプロファイルについては何も書いてないみたい。" userName="ghostly_s" createdAt="2025-03-24T19:03:13" color="">}}

{{<matomeQuote body="今のiPhone Pro (16)だと、録画した後でもビデオのオーディオミックスを選べるんだよ。" userName="ThomasBb" createdAt="2025-03-24T21:20:59" color="#ff33a1">}}

{{<matomeQuote body="場合によるんじゃない？俺の場合は（自撮り動画）、めっちゃ良いと思ったけど。" userName="egorfine" createdAt="2025-03-25T08:37:49" color="">}}

{{<matomeQuote body="これってiPhoneの機能だよね。確か11くらいからだったと思うけど、コンサートとか録るときにマジで役に立つんだわ。" userName="elijahciali" createdAt="2025-03-24T18:52:28" color="#ff5733">}}

{{<matomeQuote body="マジか、俺はそれが一番嫌いなんだよね！クリップの途中でズームすると、音がめっちゃ変わるのがマジ勘弁。" userName="TylerE" createdAt="2025-03-24T23:34:39" color="">}}

{{<matomeQuote body="Samsungのスマホにも同じ機能あるよ。カメラの設定でオンオフできる。" userName="xnzakg" createdAt="2025-03-25T00:33:54" color="#45d325">}}

{{<matomeQuote body="俺のスマホは古すぎて試せないけど、マイクが3つ以上あるなら、Appleが実装してないってことはありえないでしょ。" userName="bayindirh" createdAt="2025-03-24T16:16:01" color="">}}

{{<matomeQuote body="計算コストもそんなにかからないはず。ちゃんと計算できて、ビームを向ける場所を選べればね。" userName="entropicdrifter" createdAt="2025-03-24T16:25:15" color="">}}

{{<matomeQuote body="よくあるビデオ会議システムで使われてるよね。部屋のマイクアレイが誰が話してるか認識して、その人の音だけ拾うんだ。<br>（広い部屋でのビデオ会議では、昔は一番大きい音のマイクを選んでたけど、beamformingのおかげでさらに良くなった。）" userName="crazygringo" createdAt="2025-03-24T17:08:34" color="#38d3d3">}}

{{<matomeQuote body="それって、一人ずつ話してて、間にちゃんと間があるときは音がいいのに、ちょっと会話が続いたり、二人が同時に話し出すと音がグチャグチャになる理由かな？" userName="formerly_proven" createdAt="2025-03-24T17:53:52" color="#ff5c5c">}}

{{<matomeQuote body="それってどういう仕組みなんだろう。マイクが本体じゃなくて画面についてる場合、“真後ろ”と“真前”の区別がつかないんじゃない？" userName="regularfry" createdAt="2025-03-24T16:12:18" color="">}}

{{<matomeQuote body="真ん前は遮るものがないけど、真後ろはパソコンの部品とかで遮られてる可能性が高いからじゃない？だから、真ん前はクリアな音で、真後ろはこもった音になるんじゃないかな。" userName="inetknght" createdAt="2025-03-24T17:17:37" color="#45d325">}}

{{<matomeQuote body="そうだね。でも、平面の配列じゃbeamformでどうこうできるもんじゃないよ。特に画面の後ろの音を録りたいならね。平面じゃない何かが必要だよね。もしかしたら何かあるのかも！ハードウェアの詳細は知らないけど。" userName="regularfry" createdAt="2025-03-25T15:45:19" color="#785bff">}}

{{<matomeQuote body="ウェブカメラカバーをマイクの穴につけたら、衝撃音しか拾わなくなっちゃったんだよね。だから、マイクの穴を両方向に向ければ解決できるんじゃないかな。" userName="lucb1e" createdAt="2025-03-24T17:00:51" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="片方のマイクが両方向に向いてたり、隣り合ったマイクが逆方向を向いてても、あんまり意味ないんだよね。音の波の方向に距離がないと、どっちから音が来てるかわからないんだ。" userName="regularfry" createdAt="2025-03-25T15:47:05" color="#38d3d3">}}

{{<matomeQuote body="マイクの位置がバラバラで、対称でも平行でもないのが気になるな。" userName="numpad0" createdAt="2025-03-24T17:30:37" color="">}}

{{<matomeQuote body="Sennheiserの天井に取り付けるモデルがあるみたい。<br>https://www.sennheiser.com/en-us/catalog/products/meeting-an..." userName="jpalomaki" createdAt="2025-03-25T08:07:15" color="">}}

{{<matomeQuote body="うちのオフィスにこれあるけど、マジで使える。" userName="JoBrad" createdAt="2025-03-25T11:45:12" color="">}}

{{<matomeQuote body="タブレットケースとかって結構音を遮断するよね。多分、追加のフォームとかでさらに強化してるんじゃない？だから、真後ろの音は、真ん前の音が邪魔しない場合にしか聞こえないと思う。" userName="nine_k" createdAt="2025-03-24T16:57:51" color="">}}

{{<matomeQuote body="マイクアレイとLIDARを使って、マイクデータから拡散モデルで世界を想像するってアイデアをずっと持ってるんだ。自動運転車が茂みの向こうの歩行者を見たり、緊急車両を早期に検知したり、自転車乗りを視認する前に聞いたりできるかも。" userName="dheera" createdAt="2025-03-24T17:26:41" color="#785bff">}}

{{<matomeQuote body="それってもうあるよ、逆問題って分野だね。順問題（この場合は音波伝搬）から、物理パラメータとか形状を推定するんだ。誤差の勾配を計算して、誤差（＝損失関数）を最小化するんだ。emitterとreceiverの位置が重要。" userName="MITSardine" createdAt="2025-03-24T18:20:23" color="#45d325">}}

{{<matomeQuote body="それって一種のパッシブ・エコーロケーションみたいなもん？<br>動いてる状態で周囲の状況を把握する必要があると思うな。マイクを固定しただけじゃ無理じゃないかな。" userName="crazygringo" createdAt="2025-03-24T17:30:01" color="">}}

{{<matomeQuote body="まあね！<br>目を閉じて右から足音が聞こえたら、どんな音かよくわかるでしょ？子供か大人か、男物の靴か女物の靴か、フォーマルかカジュアルかもわかるし、角度や距離もわかる。たった2つのマイクでだよ？<br>複数のマイクと位相情報があれば、もっと正確に音源を特定できるはず。<br>歩行者や緊急車両など、重要なものを想像できればいいんだ。" userName="dheera" createdAt="2025-03-24T17:39:01" color="#ff33a1">}}

{{<matomeQuote body="これって音響ドメインに移行したパッシブ・レーダーって感じだね。面白いし、オープンソースの取り組みもあるみたい。でも、ITARに抵触する可能性もあるから注意が必要だよ。パッシブ・レーダーはまだ秘密の技術で、ソフトウェアは武器扱いされることもあるからね。" userName="MadnessASAP" createdAt="2025-03-25T05:05:17" color="">}}

{{<matomeQuote body="俺はパッシブ・レーダー持ってるけど、方向探知ラジオでもあるんだ。特に許可とかいらなかったぜ。" userName="genewitch" createdAt="2025-03-25T06:54:27" color="">}}

{{<matomeQuote body="最近のデバイスはオンデバイスのNPUがあるから、WiFi 7 Sensing Dopplerレーダーを使って、近くの活動や構造のRFイメージングと組み合わせることもできるかもね。" userName="transpute" createdAt="2025-03-25T01:38:57" color="">}}

{{<matomeQuote body="samsung S10以降、ズームでビデオを録画するときにこの機能があるんだよね。どうやってるのかずっと気になってた。" userName="chooma" createdAt="2025-03-25T08:39:08" color="">}}

{{<matomeQuote body="俺の（未完の）修士論文は似たようなテーマだったんだ。ほとんどのスマホに少なくとも2つのマイクがあることを利用して、話者を3Dで特定して分離したかったんだ。<br>いくつか注意点があって、デバイス間でサンプリングレートがわずかにズレてるんだよね。それと、コンシューマー向けのマイクの特性はバラバラで、同じモデルでも個体差があるんだ。あと、音はあらゆるもの、特にコンクリートの壁で反射する。車は手軽にアクセスできる無響室に近い環境だよ。Gaussianのフーリエ変換はGaussianで、波長が窓の半分より短い高調波信号の周波数を推定するときにすごく役立つんだ。" userName="Tade0" createdAt="2025-03-24T18:54:39" color="#38d3d3">}}

{{<matomeQuote body="＞車は手軽にアクセスできる無響室に近い環境”<br>Youtuberが無響室の問題を解決するために、広い空き地を見つけてたよ。地面以外に反射するものがないから、実験の下にフォームを置いたりしてたみたい。環境ノイズは消せないけど、楽器からの反射を抑えるにはかなり効果的だったみたい。" userName="gpm" createdAt="2025-03-24T20:16:24" color="#ff33a1">}}

{{<matomeQuote body="俺の場合は、風の音が信号を邪魔しすぎたんだよね。普通は風の音を除去する処理があるんだけど、生データに近い状態で作業してたから。" userName="Tade0" createdAt="2025-03-24T22:03:56" color="">}}

{{<matomeQuote body="カーペットが敷かれた服でいっぱいのクローゼットの方が車より良くない？" userName="mschulkind" createdAt="2025-03-24T23:56:15" color="">}}

{{<matomeQuote body="当時はそんな場所なかったんだけど、見つけて試してみたら車ほど良くなかったんだよね。吸音って一般的に低い周波数に対して質量が必要で、車のシートがそれを吸収してくれたんだと思う。窓からの反射はあったけど、なんとか処理できたし。定常波もあまり発生しなかった。" userName="Tade0" createdAt="2025-03-25T08:54:42" color="">}}

{{<matomeQuote body="＞ガウス関数のフーリエ変換はガウス関数なんだって。波長がウィンドウの半分よりちょっと短い音声みたいな信号の周波数を推定するときにめっちゃ役立つらしいよ。ガウス関数の話は分かったんだけど、もうちょい詳しく教えてくれない？" userName="ipunchghosts" createdAt="2025-03-24T22:37:09" color="">}}

{{<matomeQuote body="ガウス関数のログは放物線になるから、スペクトルのピークがどこにあるかを二次方程式を解いて見つけられるんだよね。オレはピーク間の距離を重み付けして一番多い距離を数えて話者の周波数を検出しようとしたんだ。power cepstrumの計算はデバイスの計算能力的に無理だと思って避けてたんだよね[0]。結局は勘違いだったんだけど、自分の作ったアルゴリズムが安定してるのが誇らしくて手放せなかったんだよ。<br>[0] Bluetoothの帯域幅の都合で、生のサンプルデータを高性能なマシンに送るのは考えてなかったんだ。" userName="Tade0" createdAt="2025-03-25T08:42:35" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="なるほどねー。ピークを探してるんだ。やっと分かったわ。ありがとう！" userName="ipunchghosts" createdAt="2025-03-25T11:51:01" color="">}}

{{<matomeQuote body="Linuxを(Apple Silicon)のMacで動かすには、どんなに小さなことにもすごい労力がかかるんだなーって実感するわ。内蔵マイクなんてほとんど使わないのにね（ヘッドセット忘れたときくらい？）。<br>＞ progress report(https://asahilinux.org/2025/03/progress-report-6-14/#is-this...)から引用”これはAppleだからね。何をするにも簡単にはいかないんだ。”" userName="rob74" createdAt="2025-03-24T16:06:32" color="">}}

{{<matomeQuote body="内蔵マイクって実はめっちゃ優秀だよ。AirPods Pro持ってても内蔵マイク使うこと結構あるもん。音質が全然違うんだよね。<br>アーム付きのヘッドホンならもっと良いかもだけど、普通のヘッドホンはマイクの位置的に限界があるよね。" userName="brundolf" createdAt="2025-03-24T16:20:30" color="#45d325">}}

{{<matomeQuote body="ヘッドセットのマイクがどんなに良くても、古いコーデック使ってるからBluetooth 5.3とlc3コーデックが普及するまでは良い音質でマイク入力できないんだよね。今年か来年には変わると思うけど、ヘッドホンからBluetoothチップ、OSまで全部対応しないといけないからね。" userName="ElijahLynn" createdAt="2025-03-24T18:12:23" color="#785bff">}}

{{<matomeQuote body="ヘッドセットはもう他のコーデック使ってるのあるよ。特に企業向けのドングル付きヘッドセットはBluetoothだけど、両方制御できるからコーデック選べるし。<br>LE Audioはマジ最高。もう対応してるものも結構あるし。”例のリンゴ屋さん”みたいにオープンスタンダードの実装が遅いところの製品じゃなければね…自社製品以外買わせたくないみたいに。" userName="arghwhat" createdAt="2025-03-24T18:48:34" color="#ff5c5c">}}

{{<matomeQuote body="AirPodsでマイク使うときに音質が下がるのがマジで嫌。" userName="MarcelOlsz" createdAt="2025-03-24T18:40:03" color="">}}

{{<matomeQuote body="OSXの入出力設定がクソ。" userName="therein" createdAt="2025-03-24T18:47:47" color="">}}

{{<matomeQuote body="メニューバーのサウンドアイコンをalt(opt)+クリックすると入出力簡単に選べるよ。マジでマイク付きで音質劣化しないAirPodsが欲しい。simracingで外部マイクアーム使わなくて済むように。" userName="MarcelOlsz" createdAt="2025-03-24T19:04:01" color="">}}

{{<matomeQuote body="なんか気まぐれで勝手にオンになっちゃうんだよねー。Windowsでも同じことあるけど、少なくとも一時的に入力を無効にできるじゃん？入力/出力デバイスとか、内蔵キーボード、Webカメラとかを無効にするのがほぼ無理ゲー。方法があってもすぐ変わるし。例えばカメラが2つあって、アプリがいつも内蔵カメラ選ぶとするじゃん？内蔵カメラを無効にして、もう片方を使わせる方法が見つからないんだよねー。" userName="therein" createdAt="2025-03-24T19:51:50" color="">}}

{{<matomeQuote body="Hammerspoonのスニペットで”解決”したよ。入力の変化を監視して元に戻すんだ。<br>＞mic = hs.audiodevice.findInputByName(“MacBook Pro Microphone”)<br>＞function handle_deselected(_, type)<br>＞  if (type == “gone”) then<br>＞    if not mic:inUse() then<br>＞      mic:setDefaultInputDevice()<br>＞    end<br>＞  end<br>＞end<br>＞mic:watcherCallback(handle_deselected)<br>＞mic:watcherStart()" userName="aisamu" createdAt="2025-03-29T14:17:15" color="#ff33a1">}}

{{<matomeQuote body="あー、確かにそうだね。Macのユーティリティアプリ、Audio MIDI Setupってのは役に立つかな？" userName="MarcelOlsz" createdAt="2025-03-24T20:47:34" color="">}}

{{<matomeQuote body="惜しいけど、完全に固定はできないんだよね。System Settings > Sound > Output & Input と同じようなことするんだけど、UIがちょっと良くて、プライマリを変更してるって分かりやすい程度。変更はやっぱり固定されない。" userName="therein" createdAt="2025-03-24T22:32:51" color="">}}

{{<matomeQuote body="Bluetoothオーディオが「BluetoothハードウェアにPCMサンプル渡して、ハードウェアでエンコードしてもらう」か「BluetoothドライバーがハードウェアでパケットをPCMサンプルにデコードして、ユーザー空間に渡す」ってのがマジで謎だしイライラする。<br>電話回線みたい。全部パケット交換なのに、ハンドセットにはアナログ音声信号が露出してる。" userName="derefr" createdAt="2025-03-24T18:54:15" color="">}}

{{<matomeQuote body="VoIPみたいに、ハンドセットとPBXの間でやり取りする「Bluetoothオーディオ」があっても良くない？<br>1．ハードウェアで加速されたオーディオコーデックをお互いに交渉する。<br>2．ロスがあるリアルタイムデータチャネルを開いて、オーディオコーデックDSPでエンコードされたフレームを送り込む。<br>AVDTPはコーデックの交渉をするけどBluetoothチップがサポートしてるコーデックだけだよね？Bluetoothチップじゃなくてデバイスがコーデックを扱えば良いのに。" userName="iknowstuff" createdAt="2025-03-24T23:21:58" color="#785bff">}}

{{<matomeQuote body="別の「Bluetoothオーディオ」はどう？VODビデオ（YouTube）みたいに。<br>音源が「40MBの音声ファイルがあるけど、container format X と encoding Yでバッファとデコードできる？」って聞いて、受信側が「OK」って言ったら、信頼できるデータチャネルで音声ファイルを送る。受信側はバッファしてデコードする。<br>AirPodsとかは40MBのDRAMバッファとかparse-and-decodeのハードウェアがないから無理だったんだろうけど今はできるよね。" userName="derefr" createdAt="2025-03-24T23:34:52" color="#785bff">}}

{{<matomeQuote body="ついでに言うと、例えばFaceTimeの音声（AAC）とか、通知音とかを、Bluetoothに送る前に1つのストリームにremuxするのをやめてほしい。レイテンシを避けたいし、FaceTimeからの生のAACをヘッドセットに送って、通知音が来たら別のオーディオストリームとして送ってほしい。" userName="mrheosuper" createdAt="2025-03-25T04:09:17" color="">}}

{{<matomeQuote body="究極のBluetoothオーディオプロトコルはメタプロトコルかも。僕が言った2つのアイデアと、MIDIみたいなタイムコードシーケンスプロトコルを組み合わせる。通知音をプリバッファしてaudio-session-specific IDに登録。ライブオーディオをストリーミング（ストリームにIDが付く）。コントロールシーケンスストリームで「登録されたストリームN [ping sfx] のコピーを時間Tにミックスイン」って言う。" userName="johnmaguire" createdAt="2025-03-24T18:30:49" color="#ff33a1">}}

{{<matomeQuote body="昔のプロジェクトで似たようなことやったよ。デバイスからスマホに音声を転送する必要があったんだけど、デバイスはBLEだけで、LE audioはまだ成熟してなかった。だから、カスタムBLEサービスを定義して、音声ファイルを送りまくった。" userName="kenferry" createdAt="2025-03-24T18:25:46" color="">}}

{{<matomeQuote body="AirPods Proの音ってマジで酷くてBluetooth感満載だよね。ちょっとありえないレベル。" userName="whiddershins" createdAt="2025-03-24T18:40:24" color="">}}

{{<matomeQuote body="普通のヘッドホンってBluetoothのせいで音質が残念なこと多いよね。Bluetoothオーディオの技術ってここ10年で全然進化してないし、入力と出力同時にやると16kHz以上出せないとかマジ勘弁。Apple製品同士ならマシだけど、それ以外だと音質終わってるし、おまけにクソみたいなANCついてたりするし。マジでZoom疲れの原因ってこういうしょーもないオーディオ環境と無駄な処理してるアプリのせいだと思う。高音質のrawデータをそのまま送ってくれるアプリで通話すると全然違うもん。" userName="miki123211" createdAt="2025-03-24T20:13:16" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Apple-Apple間のBluetooth音声コーデックはAACの亜種で、確かAAC-LDだったはず。でもやっぱマイクが耳にある時点で音質は限界あるよね。コーデックがマシになったとはいえ、色々処理が必要だし。あと全然関係ないけど、ステレオマイクで通話したらASMRみたいで気持ち悪いって言われた。" userName="blep-arsh" createdAt="2025-03-24T20:41:11" color="">}}

{{<matomeQuote body="高性能なヘッドセットならビームフォーミング機能ついてるのも多いよ。MacBookのマイクは平均より全然良いから、音質にこだわりなければMacBookで十分だと思う。" userName="entropicdrifter" createdAt="2025-03-24T16:23:12" color="">}}

{{<matomeQuote body="Apple製品は高いって文句言ってる人への反論として、これは良い例だと思う。他のメーカーは適当なマイクつけて、小さい穴開けて終わりみたいなのが多いし、Realtek ALC262とかの汎用的なビームフォーミング機能に頼って、調整とか全然しないじゃん。Appleはちゃんと研究開発してるから、色々良いんだよね。MacBookとか、15年以上前からちゃんとスリープしてバッテリー節約してくれるし。WindowsとかLinuxだとスリープしなかったり、ちゃんと起動しなかったり、強制アップデートでバッテリー切れになったりする確率高いし。Appleは全部完璧ってわけじゃないけど、価格に見合う価値はあると思う。ゲーミングノートとかも同じくらい高いけど、ソフトウェアとかUXがマジで残念だし。例えば、俺のAsus Zephyrus Duoの電源プラグとかグラグラで接触悪すぎ。テープで補強したわ。Asus Armoury Crateとかいうゴミソフトもウザいし。AppleはRAMとかSSDでボッタクリしてるけど、研究開発費も込みって考えれば納得できる部分もある。ベースモデルのスペック上げて、アップグレードをもっと安くしてほしいけどね。" userName="seanp2k2" createdAt="2025-03-24T18:20:32" color="#785bff">}}

{{<matomeQuote body="＞Macbooks have been、 for 15+ years now、 the only laptops that I can trust to actually sleep and conserve battery when I close the lid and slip into a backpack for a few-hr flight.”<br>一番安いChromebookでもちゃんとスリープするし、バッテリーも持つよ。R&Dだけじゃなくて、サポートするデバイスとかチップセットの数を絞って、テストを徹底的にやってるからじゃないかな。ChromebookのOEMはGoogleが認めた構成しか作れないし、Googleがサポート期間中にドライバーをアップデートしてくれるし。" userName="overfeed" createdAt="2025-03-24T19:10:38" color="#45d325">}}

{{<matomeQuote body="＞the only laptops that I can trust to actually sleep and conserve battery when I close the lid<br>マジそれな！M1 MacBook Airを数週間放置してもバッテリー残ってるもん。普段はデスクトップPCとか仕事用ノートPCとかスマホ使ってるから、あんまり使わないんだけどね。ハードウェアの質感も良いし、キーボードの打ち心地も悪くないし、タッチパッドも最高。画面も綺麗だし。全体的に見てコスパは良いと思う。ただUI/UXが古臭いし、他のプラットフォーム（LinuxとかWindows）との差が気になるし、やりにくいこともある。でもフルスペックのApple製品は買わないかな。iPhoneとか他の製品は持ってないし。たまに連携機能が邪魔になることもある。でも今のMacBook Airはまだまだ使えるし、10年以上前のMacBookも娘が使ってるし。Framework 13に乗り換えるまではM1 MacBook Airを娘にあげようかな。" userName="tracker1" createdAt="2025-03-24T18:56:39" color="#45d325">}}

{{<matomeQuote body="Mac Studioを16TBにアップグレードするのに4800ドルじゃ済まないんだよね。8TBなら2400ドルだけど、16TBにするにはUltraチップにアップグレードする必要があって、それにはさらに1000ドルかかるし、96GBのRAMも必須になる。全部合わせると6599ドルになるんだよ。写真家としてはマジで勘弁。" userName="johnmaguire" createdAt="2025-03-24T18:35:27" color="">}}

{{<matomeQuote body="一応10GbE NICオプションもあるから、高速ストレージとNVMeキャッシュドライブ搭載したNASに接続できるよ。" userName="tracker1" createdAt="2025-03-24T18:57:32" color="">}}

{{<matomeQuote body="Mac Studioみたいな据え置きならいいかもね。でもMacbook Pro使ってる身としては、値段がネックなんだよねー。体感的には、暗号化なしのNFSが最速かな。ローカルネットワーク限定だけど、セキュリティ的にアレだし(Wireguardで包めばいいけど、結局遅くなる)。Wifiだと、MacbookにNVMeドライブをThunderboltで繋いだ方が速い気がする。少なくともFujiの40MPファイルにはね。外付けNVMeドライブはまあまあ使えるけど、物理的にもスリープ/復帰時のアンマウント警告とかもあって面倒。" userName="johnmaguire" createdAt="2025-03-24T20:33:16" color="">}}

{{<matomeQuote body="＞安心してスリープできるラップトップなんてないよ。<br>スリープなんてしないんだって。Appleは「Power Nap」って名前で、スリープしないことを再定義したんだから。システムを更新するかどうかは選べるけど、実際にはスリープしてないんだよね。超低電力モードに入るだけ。Surface ProとかChromebookも同じだよ。バッテリーが切れそうなときだけ、ほんとのスリープに入るんだって。" userName="makeitdouble" createdAt="2025-03-24T22:09:39" color="">}}

{{<matomeQuote body="スリープとハイバネーションをごっちゃにしてない？Power Napは、ただのスケジュールされたウェイクアップの派手な名前だよ。もっと色々できるはずだったらしいけど、実際にはそうならなかったみたい。" userName="klausa" createdAt="2025-03-25T07:04:41" color="#785bff">}}

{{<matomeQuote body="ハイバネーションが欲しいんだけど、最近のラップトップにはあんまりないんだよね。Power Napって名前で発表された、スリープしない（特別な状況以外はRAMへのサスペンドをしない）ってやつと混ざってるかも。" userName="makeitdouble" createdAt="2025-03-25T14:42:54" color="">}}

{{<matomeQuote body="Windowsならハイバネーションは100%できるよ。ラップトップの蓋を閉じたらハイバネートするように設定することもできるし。" userName="entropicdrifter" createdAt="2025-03-25T17:32:20" color="#ff5c5c">}}

{{<matomeQuote body="OSには入ってるけど、OEMがオプションを削除できるんだよね。ASUSのラップトップとかSurface Proで有効にする方法がまだ見つからない。MSのドキュメントにも、＞「このオプションはラップトップ向けに設計されていて、すべてのPCで利用できるとは限りません。(たとえば、InstantGo搭載のPCには、休止状態オプションはありません。)」って書いてあるし。" userName="makeitdouble" createdAt="2025-03-25T23:10:33" color="">}}

{{<matomeQuote body="なんで？ノイズとして除去できないの？俺のX1は、ビデオ通話中にタイプしても全然拾わないよ。" userName="gabrielhidasy" createdAt="2025-03-24T17:49:47" color="">}}

{{<matomeQuote body="ソフトウェアのノイズキャンセリングはマジすごいよ。パンデミックの時、1日8時間ビデオ通話してたんだけど、Krispにお金払って、ほぼ完璧にバックグラウンドノイズを消してた。消防車がゆっくり通った時、うるさすぎて自分の声も聞こえなかったんだけど、周りの人は静かだったから混乱してたみたい。でも、値段上がってブロートウェアが増えたからもう使ってない。(ブロートウェアのせいで使わなくなった。あと、「Krisp Speakerの有効化もできないなんてバカだな」みたいなポップアップもウザかった。有効にする方法知ってるけど、聞く方のオーディオを処理したくないんだよね。「二度と表示しない」ボタンがあれば、あと110ドルくらい払ってたかも。)" userName="jrockway" createdAt="2025-03-24T17:56:23" color="#45d325">}}

{{<matomeQuote body="えー、全然違う。MBPのマイクは、ほとんどのヘッドセットのブームマイクよりも音質が良いし、ノイズリダクションも優秀だと思う。それに、口の音（ガム噛む音とか、コーヒーすする音とか）も拾わないし。会議してる人の99%は、普通のヘッドホンとMBPのマイクを使ってると思う。問題は、自分の声が聞こえないこと(フィードバックとか言うのかな？)。NCヘッドホン使ってると気になる時がある。" userName="JohnBooty" createdAt="2025-03-24T17:29:08" color="#45d325">}}

{{<matomeQuote body="フィードバックとかモニタリングってやつだよね。<br>やり方は色々あるけど、ヘッドセット自体が一番イマイチだと思うんだよね（機能があるとしても）。<br>全角の＞MBPのマイクは、だいたいのヘッドセットのマイクより良いってマジ？”<br>あと、A2DPのレイテンシがちょっと高くなる代わりに、90年代のGSMハンズフリーBTプロファイルのコーデックの苦痛を味わわなくて済むのもメリット。" userName="lloeki" createdAt="2025-03-24T17:33:01" color="">}}

{{<matomeQuote body="実は文句があるのは、オープンスペースのオフィスなんだよね。MacBookのマイクが部屋の向こうの人の声まで拾っちゃうんだ。だから、ヘッドホンとMBPのマイクを使うと、周りの人にオフィスのノイズが聞こえちゃうんだよね。" userName="Aaronstotle" createdAt="2025-03-24T18:16:08" color="#785bff">}}

{{<matomeQuote body="ほとんどのマイクがBluetooth 5.0だから、ヘッドセットしててもMacのマイク使ってるんだよね。そうしないと、音質がめっちゃ悪くなるコーデックモードになっちゃうんだ。だから、できるだけMacのマイクを使うようにしてる。" userName="ElijahLynn" createdAt="2025-03-24T18:11:11" color="#38d3d3">}}

{{<matomeQuote body="ソフトのDSP技術を使えば、安いラップトップのハードウェア（MBPみたいな高級なものも）でも、驚くほど良い結果が得られるんだよね。Asahiのオーディオ関係の作業は、Macだけでなく、普通のラップトップにも応用できるのが嬉しい。<br>Asahi向けに開発されたBankstownのベースハーモニクスシンセシスプラグインと、Pipewireのプラグインチェーン自動ロード機能を使って、安いHPのラップトップで驚くほど良い結果を出してる。<br>このbeamformerは、Asahiのエコシステム以外でも色々使えると思うよ。" userName="marmarama" createdAt="2025-03-24T16:49:05" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
