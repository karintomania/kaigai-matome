+++
date = '2025-07-07T00:00:00'
months = '2025/07'
draft = false
title = 'Bitchat Bluetoothメッシュで動く分散型メッセージアプリが登場！'
tags = ["Bluetooth", "メッシュネットワーク", "分散型", "メッセージング", "アプリ"]
featureimage = 'thumbnails/light-orange3.jpg'
+++

> Bitchat Bluetoothメッシュで動く分散型メッセージアプリが登場！

引用元：[https://news.ycombinator.com/item?id=44485342](https://news.ycombinator.com/item?id=44485342)




{{<matomeQuote body="Apple’s Find Myネットワークにインスパイアされたアイデアだよ。Bluetoothとかでデバイス間をホップする分散型・遅延許容メッセージシステム。Find MyがiPhone経由で場所を伝えるみたいにね。<br>ちょっとひねりを加えてみたんだけど、<br>・送信者がメッセージ送信に少額の手数料を払う。<br>・中継デバイスは1ホップごとにマイクロペイメント（トークンとかsatsとか）をもらう。<br>・エンドツーエンド暗号化、完全分散型、匿名はオプション。<br>要するに、普通のネット接続なしで、みんなのスマホで動く「郵便ネットワーク」。ネットが不安定だったり、検閲されてる場所で一番役立つと思うんだ。<br>明らかな課題は、<br>・遅延と信頼性（リアルタイムじゃない）<br>・悪用・スパム防止<br>・電力消費とユーザーのオプトイン<br>・実行可能なインセンティブ構造。<br>どう思う？これって実用的なの？実際に役に立つ現実的なユースケースはある？それともただの面白い学術的なおもちゃかな？" userName="moneywaters" createdAt="2025/07/07 05:35:03" color="#45d325">}}




{{<matomeQuote body="＞ 送信者がメッセージ送信に少額の手数料を払う。• 中継デバイスは1ホップごとにマイクロペイメント（トークンとかsatsとか）をもらう。<br>これ、Helium Networkが似たことやって失敗したんだよ。あそこは固定のインフラだけどね。ノード運営者にインセンティブを与えて、トラフィック処理でマイクロペイメントを稼がせるって構造だったんだ。<br>これで、いろんな抜け穴を使ったチートとか、構造的な問題がたくさん明らかになったんだ。<br>あと、マネタイズとかトークン化の側面が、プロジェクトの本来の動機だったネットワーク機能そのものを凌駕しちゃったのも明らかになったね。しばらくすると、みんなトラフィックとか支払いを調べて、「誰も実際の通信で使ってない、ノードをオンラインにしてトラフィックをリレーさせるための支払いを集める壮大な見せかけのゲームになってる」って気づき始めたんだ。そしたら、トークン自体が投機的な商品になって、取引のために使われるようになったんだよね。<br>低コストな安定コインみたいな暗号通貨を発明できれば、こういうユースケースを実現できるかもしれないけど、創設者たちが投機市場に売り出して資金調達できる新しいトークンを生み出す魅力はいつも強すぎて、どのプロジェクトも善意から始まっても、結局はポンプ・アンド・ダンプの隠れ蓑になっちゃうみたいだね。いつかこういう問題から逃れられる安定コインが出てくるかもしれないけど、まだ見たことないな。" userName="Aurornis" createdAt="2025/07/07 12:36:42" color="#45d325">}}




{{<matomeQuote body="＞ 低コストな安定コインみたいな暗号通貨を発明できれば<br>USドルとPostgresみたいに？<br>200ドルくらいで誰でもアメリカで税金ID付きのビジネスエンティティ作って銀行口座持てるのに、規制回避以外でcryptoがどう優れてるのか、まだよくわからないんだよね。" userName="repeekad" createdAt="2025/07/07 13:46:35" color="">}}




{{<matomeQuote body="＞ ネットが不安定だったり、検閲されてる場所で一番役立つ<br>一番の問題は、これ逆なんじゃないか？ってすぐ思うことなんだ。ネットが不安定な場所で一番役立つんじゃなくて、参加デバイスがたくさんある場所で一番機能するんだよ。ネットが不安定な場所で一番必要とされてるんだけど、そういう場所って、参加デバイスがたくさんいる場所とは逆の可能性が高いじゃん。" userName="jacobgkau" createdAt="2025/07/07 05:42:00" color="#45d325">}}




{{<matomeQuote body="Cryptocurrencyの送金は元に戻せないし、誰でも公開で確認できるし、偽名で使えるんだ。プライバシー重視のアプリなら、こういう特徴はUSDとか従来の銀行システムよりもいい選択になるよ。" userName="deweller" createdAt="2025/07/07 14:00:47" color="">}}




{{<matomeQuote body="もしあなたの国がデモのためにインターネットアクセスを遮断したら、これはすごくうまく機能するだろうね。" userName="Dr4kn" createdAt="2025/07/07 06:23:47" color="">}}




{{<matomeQuote body="アイデアは好きだよ。ただ、トランザクションのためにたくさんのメッセージのやり取りが必要にならない、堅牢なマイクロペイメントシステムをどう実装するかわからないんだよね。意図されてるユースケースを考えると、それはうまくいかないだろうし。" userName="iSnow" createdAt="2025/07/07 08:29:31" color="">}}




{{<matomeQuote body="そんなシステムなら数分で設計できるよ。隣のコメントにもあったけど、Smart Contractを使ったブロックチェーンでできるんだ。<br>1. 送信者が手数料を預ける<br>2. メッセージに受信者だけが解除できる解除コードを含める<br>3. メッセージがピア間を移動する間に転送者の詳細でラップされる<br>4. 受信者がSmart Contract経由でメッセージを解除することで、中継者へのマイクロペイメントが放出される" userName="kosolam" createdAt="2025/07/07 09:02:56" color="#38d3d3">}}




{{<matomeQuote body="誰にメッセージ送信の費用を払うの？それが集中化ポイントだよね。<br>または、「初期残高」を許可するなら、大量のアカウントを作ってスパム送信するのをどう防ぐんだろう？" userName="yetihehe" createdAt="2025/07/07 06:06:15" color="">}}




{{<matomeQuote body="これを機能させるには、パブリックなブロックチェーンに接続できる必要があるけど、それにはもちろんインターネットアクセスが必要だよね。" userName="glitchc" createdAt="2025/07/07 12:31:36" color="">}}




{{<matomeQuote body="どうやって？<br>非可逆性はミスが起きるからダメ。タイプミスで約1,000ドル損したよ。<br>公開検証は、何を買ったか知られたくないから良くないね。<br>仮名ってのが一番タチ悪い。自分なのか、他人なのか、どっちつかずだし。<br>Starlinkみたいな衛星ネットワークで、公開鍵使うデジタルキャッシュを考えてるんだ。" userName="pizzafeelsright" createdAt="2025/07/07 14:52:14" color="">}}




{{<matomeQuote body="確かに、お金の出し入れはネットいるかもね。でも、メッセージの中継だけならネットなしでできるんじゃない？" userName="kosolam" createdAt="2025/07/07 14:28:50" color="">}}




{{<matomeQuote body="サービス代金の請求にも使えないね。結局、元の問題を解決するどころか、新しい問題増やしただけじゃん。" userName="glitchc" createdAt="2025/07/07 15:02:54" color="">}}




{{<matomeQuote body="権威主義的な政府によるけど、かなり強い政府だとアプリを消したり、Bluetooth機能を止めたりするかもね（中国のAirDropみたいに）。根本は、みんな自分のデバイスを「所有」してないこと、そして会社が国の圧力に弱いことだと思うんだ。自由なデバイスじゃないと本当の自由なんてなくて、今はまだ小さいから狙われてないだけだよ。" userName="xyzzy123" createdAt="2025/07/07 07:24:26" color="#45d325">}}




{{<matomeQuote body="1ドル誰かに渡して返ってこないのも非可逆だよ。物理的なドルなら全部匿名でプライベートだし。仮想通貨の一番のメリットはマネーロンダリングができること。犯罪者にも優しい国で「コイン」を現実の通貨（ドル）に換えられるんだ。ハッカーが身代金要求する時とか特に便利。伝統的な銀行と「違う」ってのは、大抵は規制がない無法状態って意味だよ。" userName="strangattractor" createdAt="2025/07/07 23:46:48" color="">}}




{{<matomeQuote body="これにBitcoinのLightning Network機能を組み込むこと想像してみてよ。面白そうじゃない？" userName="jakeinsdca" createdAt="2025/07/07 06:30:51" color="#38d3d3">}}




{{<matomeQuote body="大規模で長期的なネット障害でも起きない限り、単なる面白い学術的なオモチャだね。それ以外は、ネット使うけどNostrとLightning Network組み合わせたら、ほぼ同じ概念のものがもう存在するよ。" userName="littlecranky67" createdAt="2025/07/07 05:39:22" color="#785bff">}}




{{<matomeQuote body="フットボールの試合とか、フェスみたいに普通の電波が混み合う場所で使うのに一番いいんじゃない？" userName="notfish" createdAt="2025/07/07 08:07:24" color="#38d3d3">}}




{{<matomeQuote body="支払いってどうなるの？メッセージ送ってトークンもらうとして、メッセージ届かない、自分経由、別のルート経由のケースは？あと、みんなが同じとこに集中したらどうすんの？ボトルネックなくす仕組みとか必要じゃね？" userName="bee_rider" createdAt="2025/07/07 14:54:14" color="">}}




{{<matomeQuote body="村とかで数キロ離れてるとこ、どうやって繋ぐの？もしメッセージ送れなかったら、周りのスマホ全部に保存されちゃうの？それってヤバくない？キューだらけとか二重配信とか。でも保存しないと届かないしなぁ。" userName="tgv" createdAt="2025/07/07 08:18:43" color="">}}




{{<matomeQuote body="これ、もうほとんどできてんぜ。Reticulum の開発に参加してみろよ。Sideband っていうアプリもある。Reticulum は分散型のネットワークスタックで、いろんな通信方法で動く。Bluetooth Mesh で動かすなら、Reticulum に Bluetooth Mesh の機能を追加すればいいんだよ。そうすれば、まさに君が言ってるのが実現する！" userName="snickerer" createdAt="2025/07/07 11:20:43" color="#45d325">}}




{{<matomeQuote body="君が想像するよりずっと詳しく知ってるぜ。分散型通信の問題を解決するのに、 smart contract が必要だと思うなんてさ、新しい道具（ハンマー）を手に入れたら、何でもそれを使いたくなる（釘に見える）ってやつだろ？" userName="glitchc" createdAt="2025/07/07 18:40:58" color="">}}




{{<matomeQuote body="Meshtastic ってのを見てみろよ。オフラインで動く分散型メッセージだ。暗号化もできるし、安い機器で始められる（30ドル以下）。ライセンスもいらないぜ。 firmware も open source だし、 community も活発だよ。ほら、ここ見て！<br>[1] https://meshtastic.org/<br>[2] https://meshmap.net/" userName="simondanerd" createdAt="2025/07/07 12:51:37" color="#38d3d3">}}




{{<matomeQuote body="返信した元のコメントを読んでくれよ。これはさ、「分散型通信の問題」をどう解決するか、じゃなくて、この状況で「しっかりした少額決済システムをどう作るか」ってことに対する答えなんだよ。" userName="kosolam" createdAt="2025/07/07 20:14:51" color="">}}




{{<matomeQuote body="今までのシステムはさ、 centralised (中央集権) で、責任者が公平さを決めちゃうんだよ。それとも、誰でも新しいシステム作って、自分がトップになれるような meta-system のこと言ってるわけ？" userName="immibis" createdAt="2025/07/08 15:20:44" color="">}}




{{<matomeQuote body="インターネットなしで使える cryptocurrency (仮想通貨)、物理的な現金みたいに動くやつを考えてたんだ。 peer to peer の信用さ。これこそが、この技術の唯一の本当の使い道だと思うんだよね。" userName="akrymski" createdAt="2025/07/07 11:00:58" color="">}}




{{<matomeQuote body="ちょっと違うけど、主に音声用なんだ。Bluetooth LEのメッシュでグループ通話とメッセージができる”Murmur : Bluetooth Group Calls”ってアプリを作ったよ。AndroidとiOSで使える。<br>https://apps.apple.com/gb/app/murmur-bluetooth-group-calls/i...<br>全然ダウンロードされないから需要ないのかもだけど、うちはサイクリング中に骨伝導ヘッドホンで奥さんと話したり、子供たちの世話に使ってるよ。" userName="sardine5" createdAt="2025/07/07 03:22:46" color="">}}




{{<matomeQuote body="すごい技術だけど、ユースケースは何かな？SIMなしで海外旅行中に使うのは想像できるけど、携帯ネットワークが使えるならそっちの方が良くない？" userName="roshin" createdAt="2025/07/07 04:37:30" color="">}}




{{<matomeQuote body="シームレスな通信切り替えはできないの？セルラーやWi-Fi Directに自動で切り替わったら最高なんだけどな。そういうアプリ作りたいと思ってたけど時間がなくて。もしオープンソースなら手伝いたいよ。君のアプリ、試してみるね。" userName="cpeth" createdAt="2025/07/07 07:56:40" color="#ff5733">}}




{{<matomeQuote body="まだ近所に圏外エリアがあるんだ。誰かと自転車に乗っててヘッドセットで話そうとしても、途切れる場所がいくつかあるかも。お互い違うキャリアだと、携帯網だと両方に圏内が必要だし。Bluetooth経由で、もっと帯域が広くて遅延の少ないコーデックを使う方が現実的かな？" userName="toast0" createdAt="2025/07/07 04:53:38" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="実はその機能、開発ブランチである程度動いてるんだ。でも自分でインフラをホストするのが面倒で。だからWindowsサービスとかDockerコンテナにして、自分で設定・ペアリングしてもらう形にしようと思ってた。そうすれば、そのエンドポイントは作成したグループに含まれて、グラフの追加ノードとして扱われる。もし他の経路より遅延が少なければ使われるよ。シンプルにしたかったんだけど、別サーバーは話したほとんどの人にはハードル高いみたい。" userName="sardine5" createdAt="2025/07/07 08:19:26" color="#785bff">}}




{{<matomeQuote body="ダウンロードされないのは、欲しい人にマーケティングしてないからじゃないかな。短い説明の最後にいくつかユースケース書いてるだけだし。例えば、Senaみたいなバイク用コミュニケーターと競合するよね。あれ専用ハードウェアで400ドル以上するし。もし君のアプリがSenaと同じくらい使いやすくて、もっと安い代替品を探してるバイカー向けにマーケティングしたら、ユーザー増えると思うよ。" userName="driverdan" createdAt="2025/07/07 17:42:12" color="#785bff">}}




{{<matomeQuote body="うちは家の中で離れた場所にいるパートナーとSignalでよく通話するんだ。こういうアプリは、すごくローカルな通話にリモートのインターネットサーバーを使うのを防ぐのに便利そうだね。自宅サーバーとかセルフホストできるソリューションはないのかな？" userName="nullify88" createdAt="2025/07/07 06:40:51" color="">}}




{{<matomeQuote body="たぶん君より田舎に住んでるよ。少なくともUKじゃ、サイクリング中とかスーパーでパートナーとはぐれた時とか、モバイルデータ通信に常に頼るなんて無理だよ。" userName="sardine5" createdAt="2025/07/07 04:45:06" color="">}}




{{<matomeQuote body="へぇ、これはすごいね！<br>ちゃんとしたメッシュネットワーキングなBluetoothアプリなんだ。<br>他に知られてる Briar もすごいけど、デバイスの扱いの難しさからちゃんとしたメッシュ機能はないと思うよ（参考：https://old.reddit.com/r/Briar/comments/gxiffy/what_exactly_...https://news.ycombinator.com/item?id=43363031）。<br>ところで質問だけど、 Murmur は完全に end to end encrypted なのかな？<br>あと、これってオープンソースかも気になるな。<br>もしオープンソースでE2EEなら、マジでめちゃくちゃ使えるようになる可能性あるよ！" userName="LWIRVoltage" createdAt="2025/07/07 04:59:15" color="#38d3d3">}}




{{<matomeQuote body="これ、すごく良さそうだね。<br>ライブ配信でカメラ担当とか他の人と話すのにヘッドセットとして使うのが便利だと思う。<br>今はもう専用ハードがあるけど、もし無かったら最高だね。<br>個人的には、複数のグループ（カメラ、プレゼンター、特定の人）に同時に参加して監視したり、話したい相手（複数や全員含む）を選べたりすると嬉しいな。<br>あと機能アイデアとして、通信範囲外に出ちゃった時に、範囲に戻るまでメッセージを保存して再生するオプションがあるといいかもね。" userName="rjmunro" createdAt="2025/07/09 11:21:01" color="#ff5733">}}




{{<matomeQuote body="そうかもね、でもその無線機を持たなきゃいけないんでしょ。<br>それに、別行動になった時に連絡できるように、たぶんスマホも結局持ち歩くことになるんじゃないかな。" userName="toast0" createdAt="2025/07/07 14:52:12" color="">}}




{{<matomeQuote body="残念ながら、名前がかぶっちゃってるよ。<br>Mumble VoIP のサーバーコンポーネントも昔から ”Murmur” って呼ばれてるんだ：https://en.m.wikipedia.org/wiki/Mumble_(software)" userName="summm" createdAt="2025/07/07 05:59:09" color="">}}




{{<matomeQuote body="Cardo が似たようなダイナミックメッシュネットワークの技術を、たぶん Bluetooth で使ってるね。<br>ヘルメット内での通信で、バイクやATVに乗ってる時に携帯電波無しで話せるようにしてるんだ。<br>これで通信がずっと安定するし、データも使わないんだよね。<br>ヘルメットつけてたら、こういう通信手段がないと顔を合わせて話すのは大変だし。<br>だから、こういうのが専用の通信デバイスを買わずにできるなら、すごく良いと思うよ。" userName="kaiken1987" createdAt="2025/07/07 17:52:15" color="#ff5733">}}




{{<matomeQuote body="フェス会場とか人が多いイベントだと、cellular がけっこう混雑して遅くなる時があるから、これは良い代替になるかもね。<br>あと、緊急時にも役立つツールになりそう。<br>ただ、実際に役立つには多くの人が使う必要があるけどね。" userName="wickedsight" createdAt="2025/07/07 05:26:33" color="#45d325">}}




{{<matomeQuote body="家中でデバイスと信頼性の高い、高いスループットの接続を維持するのに Bluetooth が届くかな？<br>それは無理だと思うけどな。" userName="subscribed" createdAt="2025/07/07 08:00:57" color="">}}




{{<matomeQuote body="BLEの通信範囲ってどれくらいなの？<br>まさに君が言ってる使い方（バイクでの利用）でこのアプリを検討してたんだけど、色々な距離で使えるか気になってたんだ。" userName="Karrot_Kream" createdAt="2025/07/07 03:34:16" color="">}}




{{<matomeQuote body="マジかよ、無理無理。<br>良い音質の音楽だって20m離れたらまともに聞こえないじゃん。<br>スマホみたいなClass 2の機器は、理論上の最大距離が30mで出力は2.4mW（4dBm）だよ。<br>SenaとかCardoは同じ2.4 Ghz（ISM帯）で動いてるけど、Class 1だから出力100mW（20 dBm）で1マイル（1.6km）以上届くんだよ。<br>スマホのBluetoothに頼るくらいなら、ウォーキートーキー（PMR 446 MHz、市街地で0.8kmくらい）使う方がマシだね。<br>たぶん駐車場でしか使えないレベルだよ。<br>スマホのBluetoothは自転車2台くらいなら良いけど、専用に作られたハードウェア、特にCardoとかSenaみたいなトップメーカーには絶対勝てないって、マジ無理！" userName="subscribed" createdAt="2025/07/08 13:44:57" color="#45d325">}}




{{<matomeQuote body="彼女と自転車乗る時にこれ使えたらいいな〜。<br>バイク用ヘルメットの通信システム、値段見てビックリしたからさ。" userName="dfc" createdAt="2025/07/07 11:44:37" color="">}}




{{<matomeQuote body="これ、俺の使い方にピッタリな感じ！<br>マウンテンバイカーで、サーバー設定とかも全然平気だし。<br>山自転車だと、見通し悪かったり75m以上離れたりって結構普通なんだよね。<br>前のやつ[0]使ったことあるけど、まあまあだったよ。<br>なくしちゃったから、どうせ持ってるスマホの電波とイヤホンで代用できたら最高だと思ってたんだ。<br>グループライドとかで、皆に1万円もするハードウェア買わせるより、アプリのリンク送るだけなら超楽じゃん。<br>正直、ちゃんとマーケティングして洗練されたアプリが出たら、SenaとかCardo[1]はマジで焦ると思うよ。" userName="cpeth" createdAt="2025/07/07 19:05:13" color="#45d325">}}




{{<matomeQuote body="WiFi DirectはAndroidとiOSの相性悪いから避けてたんだけど、EUのおかげでiOS 26でAppleもWiFi Awareに対応するみたいだね。<br>でも、新しい人がグループに入るたびにシステムUIから手動でペアリングするの、結構手間かかりそう。<br>パスワード一つとか、QRコード、NFCタッチで参加できるのが理想なんだけどな。" userName="sardine5" createdAt="2025/07/07 09:14:03" color="">}}




{{<matomeQuote body="あれ？信頼性の問題を指摘されたのに、今度は使いやすさの話に論点ずらしてない？<br>どっちの話がしたいんだよ、はっきりしろよ。<br>ちなみに、Motorola Talkabout T62とかT42は小さくて軽くて信頼性高いし、Retevis h777は頑丈で信頼できるよ。<br>カバンに放り込んどくだけでOK。" userName="subscribed" createdAt="2025/07/08 14:11:49" color="">}}




{{<matomeQuote body="スマホはClass 2で出力弱いから無理。<br>ファームウェアが許す範囲でしか電波使えないし。<br>専用に作られたハードウェアはClass 1で全然強い（100mW/20dBm vs 2.4mW/4dBm）し、凝ったプロトコルで接続を安定させられるんだ。<br>しかもBluetoothじゃなくて一般的なISM帯を使うなら、2.4GHzとか915 MHzで1Wも出せる。<br>全然違う技術なんだよ。" userName="subscribed" createdAt="2025/07/08 13:58:33" color="#ff5733">}}




{{<matomeQuote body="どの機種かにもよるんだけど、彼女のPixel 6と俺のPixel 7で、直接見えてて手に持ってない場合（ハンドルとかサドルバッグに付けてる時）なら50m〜75mかな？<br>俺、最近Microsoftのリストラにあったから、今ちょっと時間あるんだ。<br>今週中に、もっと遠くまで届くCodedPhyっていう機能も追加しようと思ってるよ（Androidだけだけど）。<br>あと、スマホが3台あれば一番うまくいくんだ。<br>誰かとの接続が切れても、別のスマホを経由して通信できるからね。" userName="sardine5" createdAt="2025/07/07 03:43:59" color="#45d325">}}




{{<matomeQuote body="高いSenaとかCardoみたいなのは、友達何人かと同時に話すプレミアムな使い方の場合だね。<br>でも、1対1で話すだけなら、1万円以下でも結構良いセットあるよ。<br>Lexin b4fmとかFredConn、Thokwokとか、レビューも良いし。" userName="subscribed" createdAt="2025/07/08 14:07:03" color="">}}




{{<matomeQuote body="うちの近所のスーパー（ロンドン郊外から数マイル）の外とか、都心から1マイル離れたアパートの窓から2mのとことかさ。<br>つまり、電波悪い場所は結構あるってこと。<br>WiFi Callingがなかったら、スマホ窓際に置いとくしかないくらいだよ。<br>そんなに極端な例じゃないんだって。" userName="subscribed" createdAt="2025/07/08 14:14:55" color="">}}




{{<matomeQuote body="最近のスマホが対応してるBluetooth LEってやつは、Bluetooth Classicとは結構違うんだ。<br>普通は1か2 Mbpsで動くけど、通信速度を犠牲にしてエラー訂正を強化すれば、結構な距離を飛ばせるんだよ。<br>例えば、この人なんて8dbmの出力で1.6マイル（2.5km以上）飛ばせたって報告してるし。<br>https://devzone.nordicsemi.com/nordic/nordic-blog/b/blog/pos...<br>Bluetooth LEのオーディオコーデックも新しいしね。<br>＞ “You can’t even hear a ok quality music further than 20 metres away”<br>それ、たぶんBluetooth ClassicのSBCコーデックでしょ？<br>全然違う技術だよ。" userName="davidhyde" createdAt="2025/07/08 23:28:32" color="#38d3d3">}}




{{<matomeQuote body="低速回線でも結構色々できるもんだね。GoogleのLyra V2 codec試してるんだけど、CPUは食うけどCodedPhyリンクで3.2kbpsなら音声は大丈夫そうだよ。" userName="sardine5" createdAt="2025/07/07 09:38:11" color="#ff5c5c">}}




{{<matomeQuote body="このニュース全く知らなかった！EUが義務化するんだね、へー。" userName="janandonly" createdAt="2025/07/08 09:06:24" color="">}}




{{<matomeQuote body="めっちゃいいね！これApp Storeで出せるのかな？Appleが禁止してるAPI使ってる？<br>最近のスマホって、圏外やWi-Fiない場所だと全然連絡取れないのイライラするんだよね。AirDropみたいに、AppleがiMessageをP2Pで使えるようにすれば超簡単なのに。「メモ」でやり取りするなんて馬鹿げてるよ。" userName="lxgr" createdAt="2025/07/07 00:34:34" color="#ff33a1">}}




{{<matomeQuote body="正直、Appleがこれを導入する理由になるようなユースケースって何だろう？Bluetooth圏内にいて、しかもWi-Fiも圏外って、どんな時？" userName="apetresc" createdAt="2025/07/07 02:24:52" color="">}}




{{<matomeQuote body="Appleの「とりあえず信じろ」みたいなApp Store使うより、こういうの（オープンソース）を自分で動かせるようにしてくれた方が断然いいな。" userName="dzhiurgis" createdAt="2025/07/07 01:26:04" color="">}}




{{<matomeQuote body="この意見、理解できないんだよね。Appleは何十億ドルもかけてストアの高品質アプリを選別してるんだよ。GitHubからDLしたのが、公開されてるソースコードからコンパイルされたかどうかも検証できないじゃん。「すごい」と思われたくて野良アプリを入れたがるけど、元々危険なんだって。だからAppleは締め出すんだよ。" userName="OsrsNeedsf2P" createdAt="2025/07/07 01:44:23" color="#ff5733">}}




{{<matomeQuote body="デモ中に政府がネットを遮断した時とかだよ。トーゴでは今、10日間も続いてるって（URL: https://pulse.internetsociety.org/en/shutdowns/）。" userName="__MatrixMan__" createdAt="2025/07/07 02:52:42" color="#785bff">}}




{{<matomeQuote body="Appleが締め出すのは30％（手数料）が欲しいからでしょ。昔のAppleならあなたの言い分も同意できたけど、もう信頼性ゼロだよ。Appleが何十億も品質保証に使ってるなんて絶対ない。「品質」の定義すら曖昧でしょ？あれは手に入れない70%を支払うのに使ってるだけ。HIG守らないし、前の良いiOSに戻させてくれないしね。" userName="thejazzman" createdAt="2025/07/07 02:06:53" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="クレイジーに聞こえるかもしれないけど、何兆ドル企業のお父さんたちが人工的な子供向けの鍵をかけるんじゃなくて、自分の持ち物を好きなように使いたい自由が欲しい人もいるんだよ。" userName="noman-land" createdAt="2025/07/07 02:03:16" color="">}}




{{<matomeQuote body="飛行機とかね。" userName="darknavi" createdAt="2025/07/07 02:29:46" color="#ff33a1">}}




{{<matomeQuote body="10億人規模で”簡単”なんてありえないよ。エッジケース多いし。iMessageにもっと魅力的な機能あるのに、これ狭い使い道すぎない？" userName="dewey" createdAt="2025/07/07 02:37:18" color="#785bff">}}




{{<matomeQuote body="Appleの30%手数料は返金や税金とか色々で、儲けだけじゃないよ。審査は安全性重視で、Androidよりマルウェア防げてる。EUで他のストアできたけど、誰も使ってないし。" userName="8fingerlouie" createdAt="2025/07/07 06:54:05" color="#38d3d3">}}




{{<matomeQuote body="登山、飛行機、スタジアム（インドだと電波足りない）、地下鉄とかで役立つんじゃない？" userName="vishnugupta" createdAt="2025/07/07 03:15:11" color="#38d3d3">}}




{{<matomeQuote body="でも残念ながら、Appleの株価見ると、十分な人は使ってないみたいだね。" userName="woleium" createdAt="2025/07/07 02:36:10" color="">}}




{{<matomeQuote body="それは他にAndroidしかないからでしょ。選択肢ないんだから。AppleとAndroidの複占だとユーザー無視しても株価上がるんだよ。" userName="pjerem" createdAt="2025/07/07 05:21:36" color="">}}




{{<matomeQuote body="登山？ Bluetooth範囲内だけだし、普通に話せば？ 遠くだとLoRaWANとかアマチュア無線の方が断然いいよ。" userName="subscribed" createdAt="2025/07/07 08:34:36" color="#ff5c5c">}}




{{<matomeQuote body="Airdropあるならその通りだね。Airdropはオフラインでアドレス帳から誰か識別できる機能もあるし、それが一番大変そう。" userName="lxgr" createdAt="2025/07/07 03:44:24" color="#785bff">}}




{{<matomeQuote body="＞ プライベートAPI使えないと損害が限定される。それアプリの実行時の機能で、App Storeの審査とは関係ないじゃん。" userName="bigyabai" createdAt="2025/07/07 19:33:18" color="#785bff">}}




{{<matomeQuote body="でもそれって、このアプリにすごく合ってるユースケースみたいに聞こえるけどね。政府の取り締まりなんて、Appleが公式アプリ出すほどメインの使い道じゃないと思うけど。" userName="apetresc" createdAt="2025/07/08 14:06:03" color="">}}




{{<matomeQuote body="携帯がみんなメッシュネットワークになったら、人々がどれだけ力を持つか、ハッとさせられたよ。携帯が水や食べ物より手に入れやすい世界になるにつれてね。" userName="Buttons840" createdAt="2025/07/07 03:22:51" color="#785bff">}}




{{<matomeQuote body="Githubから手に入れたビルドが、公開されてるソースからコンパイルされたものか検証できないって？できるよ。ビルドしてハッシュをチェックすればいいんだ。メンテナーが準備してくれてたら、こんな簡単な手順で済むよ。<br>wget https://github.com/owner/foo-project/releases/download/.../foo<br>sha256sum foo　’# これを記録する<br>nix build github:owner/foo-project<br>sha256sum result/bin/foo　’# これと一致するはず<br><br>企業のピンクの約束なんて、みんなでローカルで検証できることより信頼できないね。もちろん、このコードを信頼できるかどうかって問題はまだあるけど、少なくとも悪者は人目のつくところで活動しなきゃいけない。それは、Appleみたいに密室で起こる何よりも、悪いことをするのを防ぐ力になるよ。" userName="__MatrixMan__" createdAt="2025/07/07 02:58:02" color="#ff5733">}}




{{<matomeQuote body="彼らがおそらく理由として挙げるのは、SIMもwifiもない子供のためだろうね。" userName="woleium" createdAt="2025/07/07 02:33:59" color="">}}




{{<matomeQuote body="新しい機能って、技術的な詳細はそんなに難しくないことが多いんだ。それを今みんなが使ってる既存アプリに組み込んで、使い方を説明して、ずっと保守し続ける。そこが大変なんだよ。" userName="dewey" createdAt="2025/07/07 04:14:20" color="">}}




{{<matomeQuote body="App Storeはそういうランタイム機能を使うアプリを許可してないんだよ。" userName="conqueso" createdAt="2025/07/08 12:15:18" color="">}}




{{<matomeQuote body="iParentsによって無効化されるのは簡単だろうね。" userName="darkwater" createdAt="2025/07/07 06:40:58" color="">}}




{{<matomeQuote body="それはシステムレベルで強制されてるんだ。App Storeはユーザーにアプリの権限をコントロールさせるのに必須じゃないよ。" userName="bigyabai" createdAt="2025/07/08 20:18:02" color="">}}




{{<matomeQuote body="これは確かに稀でマイナーな使い方だけど、例えば飛行機の中で、隣同士じゃない場合とか？この前乗ったとき、女子高生2人がメモに打ち込んでAirDropで送り合いながら何時間も通信してたのを見たんだ。代わりに使えるメッセージ機能がないのがすごくバカバカしいと思ったよ。" userName="ileonichwiesz" createdAt="2025/07/07 07:48:05" color="">}}




{{<matomeQuote body="READMEの”Building for Production”セクションに書いてあるみたいだね。それよりちょっと気になるのは、ニッチなアプリだってこと。Macを持ってないから、環境準備が面倒でコンパイルできないんだ。もうちょっとクロスプラットフォームな言語でビルドされてたら良かったのに。アイデアはすごくいいと思うんだけど。ただ、メッシュネットワークの部分がうまくいくかは疑問だな。Bluetoothだから、オフィスより広い範囲で使うには、かなりたくさんのデバイスが参加してないとダメだろうね。まあ、“Fork”ボタンがあるのはそういう理由かな、それとも他のスタックで新しいリポジトリができるとか？" userName="trklausss" createdAt="2025/07/07 08:39:47" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
