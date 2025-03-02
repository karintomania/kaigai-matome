+++
date = '2025-02-21T00:00:00'
draft = false
title = 'ベッドに隠された裏口を発見した話'
tags = ["セキュリティ", "ハッキング", "発見", "技術", "ライフハック"]
featureimage = 'thumbnails/color1.jpg'
+++

> ベッドに隠された裏口を発見した話

引用元：[https://news.ycombinator.com/item?id=43129439](https://news.ycombinator.com/item?id=43129439)

{{<matomeQuote body="室内園芸システム買ったけど、サポートに連絡したらカメラをチェックして、特に問題なくて調整に時間が必要だったって言われた。その後、中身を掃除してたら、Raspberry Piが入ってることに気付いた。これ、Raspberry Pi OSが動いてて、普通のアップデートもないし、VNCも使える。つまり、その会社の人がリモートでアクセスして、カメラの映像見たり、ネットワークに入ったりできるっていうのはセキュリティの悪夢だわ。" userName="OptionOfT" createdAt="2025-02-22T13:30:54" color="#ff33a1">}}

{{<matomeQuote body="それがあるから、信用できないデバイス用に別のVLANとWiFi APを使ってる。できるだけLAN経由で使って、ファイアウォールでインターネットアクセスをブロックしてる。Zigbeeデバイスが好きなのもその理由で、Matterと”どこでもIP”にはあまり満足してないな。" userName="neop1x" createdAt="2025-02-22T14:49:46" color="#ff33a1">}}

{{<matomeQuote body="この対策したいけど、もう少しハードが必要なんだ。Mikrotik hAP Ax3 Router WiFi 6か、もっと高価なTurris OmniaかMOXを買おうと思ってるけど、普通の家庭用ルーターにはそんな機能がないからね。" userName="cirelli94" createdAt="2025-02-24T16:55:56" color="">}}

{{<matomeQuote body="IoT用のAPには古いolinuxinoを使ってる。2.4GHz用のMT7612U wifiドングルでArch Linux ARMを動かしてる。WiFi IoTデバイスはほとんどが2.4GHzだし。普通のWiFiはASUS PRIME N100I-D D4のx86低消費電力マザーボードを使って、メディアボックスにもしてる。Mediatek mt7916のwifi 6e対応カードも一緒に使ってる。最初はサポートがしっかりしたWiFiカード探すのに時間かかったけど、今は問題なく動いてるよ。" userName="neop1x" createdAt="2025-02-27T09:05:50" color="#785bff">}}

{{<matomeQuote body="ロボット掃除機欲しいけど、最近調べたものは全部WiFi接続あって、優れたセンサーで家の正確な地図をアプリにアップロードするんだ。カメラついてるやつもあったし、マイクがあればリスニングも可能だよね。Alexaと連携してるのは、そんな気配りしなくても実現されそうだし。" userName="mihaaly" createdAt="2025-02-22T13:59:15" color="#ff5733">}}

{{<matomeQuote body="FYI、<a href=”https://github.com/Hypfer/Valetudo”>Valetudo</a>がクラウドサービスの代わりになるって。対応デバイスを一つ買って、root化してValetudoサーバーを自分で立てれば、ロボットは自分のWiFiに接続できて、インターネットアクセスなしにしてもっとセキュリティを高められるよ。" userName="Epa095" createdAt="2025-02-22T15:06:37" color="#ff33a1">}}

{{<matomeQuote body="情報ありがとう。しかし、自分はただのユーザーで、掃除機なだけなんだ。悪徳メーカーのために色々手間かけるよりは、他のことに集中したいな。お金も節約できるし、まぁなくてもなんとかなると思う。" userName="mihaaly" createdAt="2025-02-22T20:32:52" color="">}}

{{<matomeQuote body="ルート化しなくても、ちゃんとした「ルーター」スタックがあれば大丈夫だよ。fortigateなら、ハードコーディングされたIPでも内部サービスに再ルーティングできるから。実際、何か問題を直すためにそれを使ったことがあるし。" userName="genewitch" createdAt="2025-02-23T03:31:10" color="#785bff">}}

{{<matomeQuote body="これってどの掃除機にも対応してるか知ってる？多分、HTTPS使われてて、マンインザミドル攻撃には気付くと思ったんだけど。" userName="Epa095" createdAt="2025-02-23T08:40:52" color="">}}

{{<matomeQuote body="自分はネットワークエンジニアじゃないから、fortigateの管理者に聞いたんだ。>「あなたが使いたいポートやアプリケーションには対応するよ」とのこと。レイヤー7ファイアウォールだしね。" userName="genewitch" createdAt="2025-02-23T21:50:00" color="#785bff">}}

{{<matomeQuote body="これらの掃除機はWi-Fiが無くても動くよ。一部の自動機能は使えないけど、ボタンを押せばスタートする。広い範囲を掃除したいなら、自動で帰ってくるから大丈夫。俺の家には十分。" userName="imglorp" createdAt="2025-02-22T14:08:53" color="">}}

{{<matomeQuote body="ロボット掃除機って隣人がアクセスできる移動カメラみたいなもんかもね。" userName="mrgoldenbrown" createdAt="2025-02-22T14:45:42" color="">}}

{{<matomeQuote body="掃除に使うより、変な用途で使われるケースが多い気がする。偶然のバスルームの写真だけでなく、はっきり言ってポルノ代わりだね。" userName="rolph" createdAt="2025-02-22T18:20:05" color="">}}

{{<matomeQuote body="Gardyn 3.0と4.0を使ってる。Raspberry Pi OSでカスタムコードが動いてるよ。カメラにもライブアクセスがある。" userName="OptionOfT" createdAt="2025-02-22T14:51:25" color="#ff5c5c">}}

{{<matomeQuote body="Raspberry Piをいじってるとき、リモートアクセスのソフトウェアを無効にできた？" userName="HWR_14" createdAt="2025-02-23T14:37:48" color="">}}

{{<matomeQuote body="パッケージはアンインストールできたかも。でも、保証が切れるまでは別のVLANに移した。カスタムファームウェアを書くことを考えてる。GPIOピンの使い方も分かってるし。<br>・ポンプを動かす。<br>・ライトのオン/オフ/パーセントを調整。<br>・タンクの水を測る。<br>・水やりのAIに使う湿度/温度センサーが付いてるけど、正直それは必要ない。水をもっと頻繁にあげたらいいんだし。水耕栽培のポイントは根が水に浸かってることだから。<br>・たまにUSBで写真を撮る。" userName="OptionOfT" createdAt="2025-02-24T17:56:55" color="#ff33a1">}}

{{<matomeQuote body="＞「眠れない人には試す価値ありそう」<br>自分も同じで、白いノイズマシンがすごく助かった。赤ちゃんの睡眠用だけど、接続もアプリも不要で超便利。ただ、ついつい依存しちゃって旅行にも持っていく羽目に。壊れた時のために予備も買ったし。<br>睡眠改善のために、人生は結構いいって受け入れることも役立った。実際には努力が必要だったけど、効果はあったよ。" userName="jimt1234" createdAt="2025-02-21T22:03:42" color="#45d325">}}

{{<matomeQuote body="機能がスマホに入ってるなら、わざわざ機器を買わなくてもいいよね。iOS、iPadOS、macOSにはすごくいいバックグラウンドノイズ生成器があるし。設定からダウンロードしておけば、デバイスに残るよ。もし白いノイズが必要なら　設定からコントロールセンターに追加すると便利だよ。夜寝る時に使ってるんだ。" userName="adiabatty" createdAt="2025-02-21T22:19:23" color="#ff33a1">}}

{{<matomeQuote body="アクセシビリティでトリプルクリックのショートカットに設定できるよ。俺は音が大きめで、Alexaに対応したLectrofanの方が好きなんだけど、iOSのBGサウンドもトリプルクリックに割り当ててるから、外食の時に便利だし、AirPodsと相性もいいよ。" userName="geoelectric" createdAt="2025-02-22T01:45:29" color="#45d325">}}

{{<matomeQuote body="俺はスマホを寝室に置きたくないから、スタンドアロンの機械がいいんだ。2002年のSony Dream Machineアラームクロックも同じく。睡眠を改善したいなら、スマホは遠くに置いた方がいい！" userName="walthamstow" createdAt="2025-02-22T09:08:02" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="まさかこの機能が設定の中に埋もれてるなんて！アプリをダウンロードする羽目になるなんて信じられない。役立つヒントには感謝だけど、白いノイズアプリの広告が嫌だ。" userName="knodi123" createdAt="2025-02-21T22:50:17" color="">}}

{{<matomeQuote body="AirPods Proと組み合わせると本当に効果的だよ。ANCで大きな音は消せるけど、鋭い音は残る。背景音を足すと、全体の音がカバーできるし、いろんな周波数に対応してる。" userName="brundolf" createdAt="2025-02-22T06:09:36" color="#ff5c5c">}}

{{<matomeQuote body="これ、試してみたけど、どんな時に使うべき？" userName="croisillon" createdAt="2025-02-22T00:02:31" color="">}}

{{<matomeQuote body="仕事中に集中したい時に使えるよ。音楽だと逆に集中できない時は特に便利だね。" userName="10729287" createdAt="2025-02-22T08:44:25" color="#785bff">}}

{{<matomeQuote body="注意してね。長時間白いノイズを聞くのは聴力に悪影響を及ぼす可能性があるから、使いすぎには注意した方がいいよ。" userName="malfist" createdAt="2025-02-22T15:14:59" color="#45d325">}}

{{<matomeQuote body="同じことを言ってるのが俺だけじゃなくて良かった。" userName="genewitch" createdAt="2025-02-23T03:36:08" color="">}}

{{<matomeQuote body="白いノイズマシンの値段で空気をフィルターできる10Aのスキュワールケージブロワーを買って、自作の箱を作るなんてのはどう？寝る時の白いノイズと空気清浄機能を両立できて、スマホからの操作もできるし、寝室にもなるよ。" userName="idiotsecant" createdAt="2025-02-22T01:13:13" color="#ff5c5c">}}

{{<matomeQuote body="フィルターを口にかぶせれば空気清浄機にもなるね！" userName="alwa" createdAt="2025-02-22T01:54:05" color="#785bff">}}

{{<matomeQuote body="アイデアは無限大！冷蔵庫の部品やキッチンメーカーを使えばアイスクリームメーカーも作れる！想像するのをやめないで！" userName="7bit" createdAt="2025-02-22T10:41:51" color="">}}

{{<matomeQuote body="ボックスファンは20〜24インチで、ファーネスフィルターも同じサイズだよ。高いMERVフィルターがあれば、音を目的に使う分には問題ないし、フィルターが塵を散らばらせない。洗えるK&Nフィルターを使ってるけど、前のものは高かったし、3ヶ月ごとに洗ってるよ。新品みたいに使おうと思ったら洗浄がカギだね。" userName="genewitch" createdAt="2025-02-23T03:43:56" color="#785bff">}}

{{<matomeQuote body="私も色々試したけど改善しなかった…。実は私の不安や不眠の原因は骨髄が圧迫されてたせいだった。関係あるかもって思うけど証明できない。疼痛なくてもスプリング絡みがあったら、他に物理的な原因を考えてみて！私の場合は、脊椎の圧迫で手術したら眠れるようになったんだ。" userName="specialist" createdAt="2025-02-22T14:28:43" color="#45d325">}}

{{<matomeQuote body="骨の問題はレントゲンで見つからないものなの？医者に行くたびに何も見つからないなら、次は画像診断だと思うんだけど。私は背中に曲がりがあってもスコリオシスと診断されてない。だからせいぜい「背中が痛い」だけなんだ。それでも違う痛みが出たらレントゲンは必要だよね？" userName="genewitch" createdAt="2025-02-23T03:40:22" color="">}}

{{<matomeQuote body="ごめんなさい、医者じゃないから。DEXAスキャンやMRI、レントゲンを受けたけど、MRIで神経の圧迫が分かった。診断は簡単じゃなくて時間がかかったよ。他の医者に頼っても気をつけて。私は色んな療法やフィジカルセラピーで痛みを管理してる。まずは食事を見直して、グルテンや砂糖を減らしたら痛みがマシになった。" userName="specialist" createdAt="2025-02-23T16:58:41" color="#785bff">}}

{{<matomeQuote body="返事ありがとう。’常に答えを求め続けることが大事’" userName="genewitch" createdAt="2025-02-23T20:25:52" color="">}}

{{<matomeQuote body="ホワイトノイズマシンを2つ持ってて、ベッドの両側に置いてる。片方は耳の差があるからボリュームを別に調整できるのが便利。歳を取ると耳が聞こえにくくなるけどね。" userName="rufus_foreman" createdAt="2025-02-22T01:17:49" color="">}}

{{<matomeQuote body="いいアイデアだね。ベッドの横に自分のを置いてるけど、妻にはあまり聞こえない。それが一番厄介。大きくすると自分には音がうるさくなるし、ステレオにするのは天才だ！" userName="walthamstow" createdAt="2025-02-22T09:11:11" color="#45d325">}}

{{<matomeQuote body="白い音が必要なんだ。家ではファンの音で生成されるシンプルなものを使ってる。旅行用には小型の充電式を持っていってるんだ。今のところ良さそう。" userName="flanbiscuit" createdAt="2025-02-21T23:00:36" color="">}}

{{<matomeQuote body="Androidアプリの情報だよ。<br>リンクはこちらです：”https://f-droid.org/en/packages/net.pmarks.chromadoze/”" userName="password4321" createdAt="2025-02-22T01:49:08" color="">}}

{{<matomeQuote body="自分はmynoise.netのAndroidアプリを使ってるよ。数年前に変更されて使いにくくなったけど、まだ使えるよ。<br>リンクはこちら：”https://mynoise.net/”" userName="vlachen" createdAt="2025-02-22T03:02:57" color="">}}

{{<matomeQuote body="そのアプリは知らなかった、調べてみるね。昔は”https://asoftmurmur.com/”をずっと使ってたけど、今は別のデバイスを使う方が好き。" userName="flanbiscuit" createdAt="2025-02-24T22:07:36" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="自分は空気清浄機を使ってるんだ。Levoit Vital 200Sを使ってて、寝るときに自動でフィルターの電源スケジュールを設定できるから楽だよ。夜の9時半にホワイトノイズモードになって、朝の8時に静かなモードに戻るんだ。時計を見なくても音の変化で時間が分かるから便利。" userName="rpozarickij" createdAt="2025-02-22T05:40:07" color="#ff5c5c">}}

{{<matomeQuote body="自分は3mのクラシック33 NRRの耳栓を使ってるよ。最高だよ。" userName="m463" createdAt="2025-02-21T23:46:15" color="">}}

{{<matomeQuote body="自分は10年以上不眠症だったけど、数週間の睡眠誘導剤と定期的なメラトニンの服用で治ったよ。いろいろ試さないといけないと思ってたけど、意外と簡単だった。規則正しい睡眠パターンを形成するのが難しかったけど、これで寝るのが楽になった。まずは精神科医に相談してね。" userName="lifthrasiir" createdAt="2025-02-22T00:07:19" color="#ff5733">}}

{{<matomeQuote body="睡眠誘導剤って、自分のこと？どれを使ったの？" userName="theonething" createdAt="2025-02-22T02:12:55" color="">}}

{{<matomeQuote body="特にマグネシウムグリシネートがいいよ。他にもたくさんの種類があるけど、その中には下剤になるものもあるから注意して。" userName="genewitch" createdAt="2025-02-23T03:36:49" color="">}}

{{<matomeQuote body="ちょっと調べたけど、ノイズジェネレーターを買う前にあまり情報はなかった。基本的に長時間のノイズは体に悪いかも。確か4時間以下なら大丈夫だった気がするけど、詳しいことは覚えてない。ラップトップのファンの近くに一日中いて、夜にノイズマシンを使ったら…耳鳴りがひどい時は、外の音が頭の中よりちょっとでも大きければいいんだ。" userName="genewitch" createdAt="2025-02-23T03:35:05" color="">}}

{{<matomeQuote body="子供や大人にとって安全で役立つ音のレベルはあるはず。現実では完全な静寂は無理だよ。Snoozのホワイトノイズマシンを使ってて、Bluetoothアプリには音量をdBで表示してくれる機能があって、赤ちゃんのために設定する音が大きすぎないか確認できる。" userName="treesknees" createdAt="2025-02-23T04:07:54" color="#785bff">}}

{{<matomeQuote body="俺のマスターバスルームは約7dBらしい。時計の秒針の音が銃のハンマーみたいに聞こえる。HVACの音と家の音の違いがあって、余計な音を入れるだけじゃ駄目かも。俺達は耳鳴りが辛いから使うけど、ノイズマシンが全て解決するわけじゃない。" userName="genewitch" createdAt="2025-02-23T04:30:22" color="">}}

{{<matomeQuote body="俺は単純に、ホワイトノイズの音ファイルをダウンロードして、VLCで再生してる。スマホ1台でネットなしでできるよ。無線ヘッドフォンを使ってた。俺の選んだホワイトノイズは、近所がうるさかったから電子レンジでポップコーンの音にした。" userName="catlikesshrimp" createdAt="2025-02-21T23:30:18" color="">}}

{{<matomeQuote body="ホワイトノイズマシン：空いてる周波数にチューニングしたFMラジオ。<br>非常に低コストで、非常に安定してて効果的。" userName="mihaaly" createdAt="2025-02-22T13:53:50" color="">}}

{{<matomeQuote body="＞『バックドアって何か指してるか？Eight Sleepにはアップデートやサポートをするための方法が必要なのは分かる。でも、それを超えて、Eight Sleepのエンジニア全員が顧客のベッドにSSHでリモートアクセスして、正式なコードレビューを無視した任意のコードを実行できるのは問題だと思う。実際、これが起きてる証拠も見つけた。』<br>すごい話だね。<insert joke about being careful about who you share a bed with>" userName="nadis" createdAt="2025-02-21T16:52:40" color="#ff33a1">}}

{{<matomeQuote body="ハードウェア会社がこれを良いアイデアだと思ってることに驚くよ！Memfaultの創業者兼CEOだけど、ハードウェア企業向けの可視化SaaSを作ってる。リモートアクセスのソリューションを提供できないかとよく聞かれるけど、セキュリティ上のリスクが大きいし、悪用されやすいと思ってる。消費者はあまり気にしないけど、変わらない限り、埋め込まれたLinuxデバイスにはこういうバックドアが存在することが多い。" userName="fra" createdAt="2025-02-21T23:47:48" color="#ff5733">}}

{{<matomeQuote body="大変だと思うけど、良い戦いを続けてほしい。原則を守る会社に大いに敬意を表するよ。" userName="jmholla" createdAt="2025-02-22T17:34:19" color="">}}

{{<matomeQuote body="自分的には少し行き過ぎな気がするのは、Eight Sleepのエンジニア全員がリモートでSSHアクセスして、コードレビューなしで顧客のベッドにコードを実行できる点だね。これをやってる会社はかなり多いと思う。" userName="goalieca" createdAt="2025-02-22T00:44:38" color="">}}

{{<matomeQuote body="あなたには同意だけど、アプリの更新とはどう違うのか説明してほしい。" userName="HNdev1995" createdAt="2025-02-22T20:28:43" color="">}}

{{<matomeQuote body="全然違うよ。悪意のあるエンジニアがアプリの更新に任意のコードを注入できる可能性はあるけど、それは全ての電話に同時に送られて、ユーザーに気付かれずに動作しないといけない。その点、Eight Sleepではエンジニアが顧客のデバイスにリアルタイムでアクセスできて、監査ログがないかもしれない。我々のデータを盗むのも簡単で、法的リスクも少ないんだ。" userName="physicles" createdAt="2025-02-23T02:49:06" color="#ff5c5c">}}

{{<matomeQuote body="これが政府に送られるって話もあるし、さらに怖いね。" userName="Linkd" createdAt="2025-02-21T19:32:33" color="">}}

{{<matomeQuote body="製品のセキュリティに関しては予想してたんだけど、驚いたのはこういう点だね：> 一つ見逃すことにした。> ベッドは2,000ドルもする。> インターネットがダウンしたら機能しない。> 基本機能は追加で19ドル/月のサブスクリプションが必要。> ベッドの操作はモバイルアプリだけ。サーバーに頼らなくてもいい製品が必要だし、サブスクリプションも要らないと思う。市場は本当に愚かだと感じるよ。" userName="EvanAnderson" createdAt="2025-02-21T17:23:32" color="#38d3d3">}}

{{<matomeQuote body="全てに加えて、睡眠の質を向上させるためのベッドで、設定を調整するにあたって毎回スマホを開かないとダメなのが好きじゃないね。" userName="xg15" createdAt="2025-02-21T18:43:28" color="">}}

{{<matomeQuote body="＞ 全てに加えて、睡眠の質を向上させるためのベッドで、設定を調整するにあたって毎回スマホを開かないとダメなのが好きじゃないね。心配しなくて大丈夫、彼らは自社製品がジョニー・アイブの蘇った遺体によって洗練されたデザインで作られているって何度も言って、人々が信じるまで繰り返すよ。ところで、> …実際に必要なことは、Eight Sleepカバーからゴムチューブを外して、数百ドルでeBayで買える別のものに接続するだけなんだ。どう考えても、Eight Sleepは15倍のマークアップがされた中国のアクアリウムチラーで、$20/月のサブスクリプションを可能にするためにクソプログラムされたコンピュータを付けただけだね。" userName="palmotea" createdAt="2025-02-21T20:57:21" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="私はBoston DynamicsのSpotを使った独自の解決策を作ったよ。構造光スキャナー、YOLO v5で分類、カスタムIKソルバーを使って、作業が終わったら赤ちゃんのように寝転がってSpotが全部やってくれる。" userName="0_____0" createdAt="2025-02-21T22:25:19" color="">}}

{{<matomeQuote body="これ、理論的にはすごく面白いアイデアだね（冗談なのは分かるけど）！特に変な風に malfunction したらさらに面白い。" userName="collingreen" createdAt="2025-02-21T22:34:26" color="#38d3d3">}}

{{<matomeQuote body="＞Github issue:<br>”俺の e-ass wiper がテストicles を poo と間違えて引きちぎっちまった。早く直してくれ！”" userName="BizarroLand" createdAt="2025-02-21T23:53:28" color="">}}

{{<matomeQuote body="ほんとこれには同意だわ。ベッドでアプリを開くのが一番嫌だし。Zigbee のライトスイッチ使ってるから、ベッドからも明かりを消せてる。アプリを開く代わりに、壁にボタンを貼ってスイッチを操作するのが全然楽。クラウド関連のゴミとは違って、Zigbee機器はネットがダウンしても動き続けるんだ。" userName="connicpu" createdAt="2025-02-21T20:35:32" color="#38d3d3">}}

{{<matomeQuote body="完全に同意だね。ベッドの横に Philips Hue のディマーを置いたんだけど、これが家の自動化で最高のアイテムの一つ。ボタンを押すだけで家中がナイトモードになるから、携帯もいらない。" userName="mvanbaak" createdAt="2025-02-21T20:45:12" color="#ff5c5c">}}

{{<matomeQuote body="ルームメイトがこれを持ってて、GitHubにあったスクリプトを使ってシェルから操作してたことを知った。変なタイミングで照明を消してて面白かった。" userName="westmeal" createdAt="2025-02-21T21:59:33" color="#45d325">}}

{{<matomeQuote body="きついな、ハブにはLANに公開された認証なしのHTTPサーバーがあるのか？俺がプロプライエタリなハブを買わずに、オープンソースソフトを使う理由がまた一つ増えた。" userName="connicpu" createdAt="2025-02-21T23:39:00" color="">}}

{{<matomeQuote body="俺、まだ環境デバイスが普及しなかったことにちょっと不満。Nanoleaf はこういうリモコンを作ったけど、六面体になってて加速度センサーがついてる。で、各面に設定をプログラムできて、逆さまにすれば昼寝モードになる。" userName="hinkley" createdAt="2025-02-21T18:56:26" color="#785bff">}}

{{<matomeQuote body="昔見たクールなデバイスがあって、作業のタイミングを管理するためのものだった。タスクごとに面をプログラムして、作業内容ごとに面を変えて時間をトラッキングするんだ。" userName="KPGv2" createdAt="2025-02-21T21:02:47" color="#38d3d3">}}

{{<matomeQuote body="それは良さそうだけど、ライトスイッチを充電するのを覚えているのがちょっと抵抗あるな。" userName="BobaFloutist" createdAt="2025-02-21T21:25:29" color="">}}

{{<matomeQuote body="もしかしたら、環境光（古い計算機みたいに）や電波で自分で電源を賄えるくらい低電力で作れるかもしれないね。" userName="gpm" createdAt="2025-02-21T21:49:12" color="">}}

{{<matomeQuote body="Home Assistantと連携してる立方体があって、それをひっくり返すとベッドサイドのライトがオンオフになるし、時計回りに回すと明るさが増えて、反時計回りだと減るんだ。" userName="mrWiz" createdAt="2025-02-21T19:39:40" color="">}}

{{<matomeQuote body="その変化はどんなふうに通信してるの？" userName="lblume" createdAt="2025-02-21T19:52:52" color="">}}

{{<matomeQuote body="このアイデアいいね、私も作ってみたい！二面や六面のも役立つし、エンクロージャーを印刷してFeatherやESPを再プログラムしても楽しそう。" userName="kevindamm" createdAt="2025-02-21T19:30:58" color="">}}

{{<matomeQuote body="このことにはかなり葛藤がある。私にはこの「スマート」機能が本当に役立つ。睡眠時無呼吸症候群があって、電子プラットフォームと連携してるおかげで、無呼吸の発生が減るのが実感できる。温度管理もいい感じだし、家全体の空調費を抑えられるのがいいね。" userName="cthalupa" createdAt="2025-02-21T18:51:51" color="#785bff">}}

{{<matomeQuote body="＞この「スマート」機能が本当に役立つ…。<br>その機能は、$2,000の商品に見合った計算処理を導入することで実現できるのに、なぜインターネット経由にするのかが疑問だよね。業界には技術があるのにさ。" userName="EvanAnderson" createdAt="2025-02-21T18:56:25" color="#ff5c5c">}}

{{<matomeQuote body="補助機器として輸送システムの切断時の機能喪失はデザイン的欠陥だ。データを一時保管できるストレージがあれば、通信が復旧したときにデータを上げられるはずなのに。人工知能を使ってクラウドで処理してるって理由があっても、地域ファーストのコントローラーは無理ってのはおかしい。" userName="dylan604" createdAt="2025-02-21T19:30:04" color="">}}

{{<matomeQuote body="伝統的な現代のベッドでもすごく良い睡眠が得られるって聞いたことがある。私もその一人だ。" userName="megadata" createdAt="2025-02-21T18:30:30" color="">}}

{{<matomeQuote body="新しいフォームマットレスは暑いって人もいるみたい。私も次はスプリングマットレス買うつもり。イタリアに住んでるから、アメリカのマットレスとはちょっと違うんだよね。" userName="amarcheschi" createdAt="2025-02-21T18:54:51" color="">}}

{{<matomeQuote body="ラテックストッパーを使ってるよ。フォームみたいだけど、冷たくて、さらにアレルギー対策にもなってるからいい感じ。" userName="vl" createdAt="2025-02-21T19:36:33" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
