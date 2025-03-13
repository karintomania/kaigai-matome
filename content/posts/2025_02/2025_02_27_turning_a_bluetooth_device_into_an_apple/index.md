+++
date = '2025-02-27T00:00:00'
months = '2025/02'
draft = false
title = 'ルート権限なしでBluetoothデバイスをAppleのAirTagに変身させる方法とは？'
tags = ["Bluetooth", "AirTag", "セキュリティ", "ハッキング", "技術"]
featureimage = 'thumbnails/light-orange2.jpg'
+++

> ルート権限なしでBluetoothデバイスをAppleのAirTagに変身させる方法とは？

引用元：[https://news.ycombinator.com/item?id=43196207](https://news.ycombinator.com/item?id=43196207)

{{<matomeQuote body="ざっくりまとめると、Apple製デバイスは特定の形式のBLE広告を受信して、失くしたデバイスを示す”Find My”ネットワークに参加するんだ。失くしたデバイスの広告は公開鍵の一部を含んでて、その鍵の全体は広告本体に収まらないからアドレスフィールドに押し込まれてるっぽい。正確には224ビットの公開鍵から46ビットだけがアドレスフィールドに入ってる。誰でも”失くしたデバイス”の広告を作れるんだけど、アドレスフィールドを完全にコントロールする必要があるんだ。BLE広告のヘッダーにはアドレスの種類が表示されるけど、失くしたデバイス広告は”Random Static”として扱われるべきなのに、Appleはどんなアドレスタイプでも広告を受け入れることがわかったんだ。これを利用して、既存のホストアダプタのBLEアドレスに合った公開鍵を生成できる。ホストアダプタのBLEアドレスは一般にユーザー権限じゃ変えられない。計算は重いけど、大部分がメーカーコードで形成されてるからプリコムputed（レインボーテーブル）もできる。" userName="hackernudes" createdAt="2025-02-27T18:08:05" color="#ff5733">}}

{{<matomeQuote body="ちょっと待って、どうやって公開鍵から秘密鍵を生成してるの？それって難しいはずじゃない？大きな塊の鍵（秘密鍵か公開鍵？）がメーカーコードって本当なの？それはおかしい。" userName="krupan" createdAt="2025-02-27T18:57:32" color="">}}

{{<matomeQuote body="＞ちょっと待って、どうやって公開鍵から秘密鍵を生成してるの？<br>彼らは生成してないよ。犠牲者のBLEアドレスと一致する公開鍵ペアを生成してるんだ。Find Myネットワークは、攻撃者の秘密鍵で暗号化されたビーコンをこのアドレスから受け入れて、iCloudに格納する。そして攻撃者はその46ビットのプレフィックスでそれを取り戻せるんだ。" userName="avidiax" createdAt="2025-02-27T19:08:31" color="#ff5733">}}

{{<matomeQuote body="Appleがこれをどう修正したか分からないけど、パッチで何を変えたんだろう？このままじゃ今のAirtagネットワークをシャットダウンしないと無理じゃない？" userName="jychang" createdAt="2025-02-28T10:41:31" color="">}}

{{<matomeQuote body="Findersにパッチを当てたんだろう、多分これを修正したんだろうね：＞失くしたデバイス広告は”Random Static”として扱われるべきなのに、Appleの”Find My”リスナーはどんなアドレスタイプでも広告を受け取ることがわかってる。" userName="dtech" createdAt="2025-02-28T12:03:25" color="#ff5c5c">}}

{{<matomeQuote body="犠牲者のBLEアドレスって、あの人が以前スキャンしてAirtagを設定したターゲットデバイスのこと？" userName="aorloff" createdAt="2025-02-27T23:46:34" color="">}}

{{<matomeQuote body="違うよ。高額な計算を経た公開鍵の最初の46ビットが犠牲者のBLEアドレスと一致するんだ。AppleのFind Myシステムは（または以前は）送信される公開鍵が製造または登録されたことを確認してなかったから、iCloudアカウントを持つ誰でもApple Find Myのハッシュテーブルに問い合わせて、近くの電話から生成された観測された位置が含まれている観測された暗号payloadを取得できたんだ。もし犠牲者のデバイスでrootがあれば、高額な計算ステップが不要になるから好きな公開鍵/秘密鍵ペアを取って、犠牲者のBluetoothハードウェアを再プログラムしてそれを放送することができるんだ。" userName="avidiax" createdAt="2025-02-28T00:16:35" color="#ff33a1">}}

{{<matomeQuote body="分かった、攻撃パターンは二つあって、一つはターゲットデバイスのBluetoothを置き換える方法、もう一つは自分の秘密鍵を使って、一致する公開鍵プレフィックスを探してビーコンを設置する方法だよね？それとも理解できてないのかな？" userName="aorloff" createdAt="2025-02-28T07:37:55" color="">}}

{{<matomeQuote body="最初から、犠牲者デバイスをBluetoothビーコンに設定できるのはroot権限を持ってる時だけだった。ただ犠牲者のBluetoothアドレスを変更して、AirtagをクローンしてFindMyビーコンを放送することで、攻撃することができた。今回の攻撃の新しい点は、root権限なしで行えることだよ。犠牲者の固定Bluetoothアドレスを観察して、一致するFindMyビーコンを作れるんだ。FindMyビーコンは基本的に、受信者が位置データを暗号化するために使う公開鍵だから、ビーコンを作成するのは犠牲者のBluetoothアドレスと一致する公開鍵/秘密鍵ペアを見つけるだけ。それにビーコンを放送するのは権限が低くて済むから、さらに広く悪用される可能性があるんだ（高額な事前計算ステップを除いて）。" userName="avidiax" createdAt="2025-03-02T16:54:56" color="#ff33a1">}}

{{<matomeQuote body="違うよ、犠牲者のMACを見つけて、そのデバイスから放送するためのペイロードを生成するんだ。それによって、デバイスはAppleのデバイスにとって本物のAirtagとして見える。そうするとAppleが位置レポートをアップロードして、攻撃者がそれをダウンロードすることになるんだ。本物のAirtagは関係ない。" userName="malmeloo" createdAt="2025-02-28T00:12:03" color="#ff33a1">}}

{{<matomeQuote body="公開鍵の生成をランダムな秘密鍵を使ってブルートフォースしてるみたいだね。正確な秘密鍵は関係ないし、生成された公開鍵の全長も重要ではない。ただ最初の46ビットだけが重要だから、その部分に合致する公開鍵を見つけるためのブルートフォース検索が可能なんだ。" userName="lelandbatey" createdAt="2025-02-27T19:16:34" color="#ff5c5c">}}

{{<matomeQuote body="なるほど。2^46は約70兆だから、計算的には全然可能だね。つまり、データベースに70兆の秘密鍵／公開鍵を生成するためにGPUが必要なだけってことだ。悪くないな。" userName="helsinki" createdAt="2025-02-27T19:31:16" color="#785bff">}}

{{<matomeQuote body="レインボーテーブルを使ってるんだ。" userName="layer8" createdAt="2025-02-27T19:40:45" color="">}}

{{<matomeQuote body="一度生成すればいいんだ。" userName="bluGill" createdAt="2025-02-27T21:52:50" color="">}}

{{<matomeQuote body="キーのペアを事前生成してるみたいだね。トロイの木馬がMACアドレスをサーバーに送信し、サーバーが事前計算したキーのストックから公開鍵を見つけるってわけ。" userName="rahimnathwani" createdAt="2025-02-27T19:00:19" color="">}}

{{<matomeQuote body="NYCやLA、ロンドンのAndroidユーザーがメッシュネットワークの「仮想エアタグ」を作って、街中を巡るiPhoneを追いかけることはできないかな。私もAndroidに切り替えて参加したいな（実はもうAndroidだけど、オペSecがバレちゃうな、ハハ！）。" userName="fsckboy" createdAt="2025-02-27T19:28:04" color="">}}

{{<matomeQuote body="記事から面白い点は、これは単なる一般的な脱獄やBLEプロトコル間の対抗的相互運用ではないってこと。誰かのデバイスをエアタグに変えて、その位置を追跡できるんだ。＞それに、Apple Security Teamからの迅速な対応と承認に感謝します。Appleは最近、iOS 18.2やその他のOSのバージョンで脆弱性を修正しました。でも、まだ未パッチのiPhoneやApple Watchが近くにある限り、この攻撃は有効なんだ。1.5BものiPhoneが早くアップデートするのを望むだけなんて、かなりまずい脆弱性だよ。まだiOS 17や16のままの人もいるし、全員が共謀者になってる。私の州がセキュリティ研究に参加しているのを見るのは嬉しいけどね。" userName="sodality2" createdAt="2025-02-27T18:14:28" color="#785bff">}}

{{<matomeQuote body="他の人のデバイスをエアタグに変えて、その位置を追跡することができるってことだね。ただし、あなたのコードをそのデバイス上で実行させないといけないけど。" userName="rahimnathwani" createdAt="2025-02-27T19:01:31" color="">}}

{{<matomeQuote body="いや、上のコメントの要約を読んでみて。" userName="Limeray" createdAt="2025-02-27T20:07:31" color="">}}

{{<matomeQuote body="実際にそうだよ。追跡されるデバイスは、BLEで存在を広告するためのコードを実行できるように、何らかの方法で攻撃される必要があるんだ。FTAの「Architecture of nRootTag」：＞（1）トロイの木馬コードは追跡されるコンピュータ上で実行される。" userName="hug" createdAt="2025-02-27T22:29:06" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="すごく面白いけど、ターゲットデバイスにコードがあるなら、なんでFindMy経由で位置情報を送るの？外部サーバーと通信してプリコンピュートしたキーを取ってるなら、もっと簡単に位置を共有できると思う。でもターゲットデバイスにGPSがない場合、FindMyが他の方法より近い場所を特定できるかもね。" userName="raudette" createdAt="2025-02-28T12:56:55" color="#ff5c5c">}}

{{<matomeQuote body="GPSがないのが理由の一つだね。もう一つはネットワーク接続がなくても追跡できること。でも、ネット接続が切れてる状態で、近くにiPhoneがある状況はあまりないかも。例えば飛行機の中とかね。" userName="rahimnathwani" createdAt="2025-02-28T20:53:46" color="">}}

{{<matomeQuote body="iOSのパッチはトロイの木馬によるハイジャックを防ぐためじゃなくて、iOSデバイス同士がFindMyメッセージを放送するのを止めるためのものだよ。" userName="larusso" createdAt="2025-02-28T06:16:32" color="">}}

{{<matomeQuote body="ハッキングされたコンピュータの居場所を特定する良い方法だね。世界中に感染させるランサムウェア作者には役立つかも。Appleの位置情報スキャンデバイスのネットワークを悪用してるだけで、新しいことじゃない。アクティブなBluetoothスタックなしでデバイスを追跡できるなら、FindMyネットワークを利用してGPSなしで位置を特定できるかも。近くにAppleユーザーがいれば、電池も節約できるかもしれない。" userName="jeroenhd" createdAt="2025-02-27T18:29:32" color="#ff5733">}}

{{<matomeQuote body="このエクスプロイトはBLEパケットを送信するものがデバイスに必要なんだ。そんなに大きな問題じゃないよ。優れたPRチームだね。他のサイトはFmFを壊したみたいに報道してるけど、すでにデバイスがパワーを奪われてる時点で問題じゃないんだ。" userName="mannyv" createdAt="2025-02-27T18:20:10" color="">}}

{{<matomeQuote body="広告SDKが広告を出すアプリの中で、許可なしでユーザーを地理特定するようになるのは時間の問題だね。既に位置情報の許可を持ってるアプリにとって、あまり気付かれないと思う。" userName="jeroenhd" createdAt="2025-02-27T18:33:43" color="">}}

{{<matomeQuote body="＞”広告SDKが広告を出すアプリの中で、許可なしでユーザーを地理特定するようになるのは時間の問題だ”<br>Bluetoothの許可が必要だから、普通のフラッシュライトや天気アプリには怪しまれるだろうね。＞”既に位置情報の許可を持ってるアプリにとって、あまり気付かれないと思う”<br>アプリがすでに位置情報の許可を持っているなら、なんでこの攻撃をする必要があるの？ユーザーの位置を直接取得できるのに。" userName="gruez" createdAt="2025-02-27T20:54:04" color="">}}

{{<matomeQuote body="＞”Bluetoothの許可が必要だから、普通のフラッシュライトや天気アプリには怪しまれるだろうね”<br>家族のスマホから消さなきゃいけないアプリを見てると、それは問題にならないと思うよ。＞”アプリがすでに位置情報の許可を持っているなら、なんでこの攻撃をする必要があるの？”<br>位置情報APIにアクセスするとインジケーターが表示されるけど、BLE APIにアクセスしてもそうはならないと思う。" userName="jeroenhd" createdAt="2025-02-28T14:26:40" color="#ff33a1">}}

{{<matomeQuote body="＞”Bluetoothの許可が必要だから、普通のフラッシュライトや天気アプリには怪しまれるだろうね”<br>みんな気にしないと思うけど。" userName="mschuster91" createdAt="2025-02-27T22:22:10" color="">}}

{{<matomeQuote body="iOSでは動かないよ。アプリはiOSでローカルのMACアドレスを取得できないから、プライバシーの理由だね。全ての選択肢を試すのも電力の理由で早々に制限かかるよ。" userName="dmitrygr" createdAt="2025-02-27T18:37:43" color="">}}

{{<matomeQuote body="256^3のプリセットを事前計算する必要はないんじゃない？これらのキーはプライベートやセキュアにする意図はないし、MACアドレスだけが違えば再利用しても問題ないと思う。16777216の組み合わせなんて、最近はそんなに多くないし、6コアで3.5GHzのCPUを使えば、1000命令で確認する間に4〜5秒で全通りのブルートフォースができそう。" userName="jeroenhd" createdAt="2025-02-28T14:33:52" color="">}}

{{<matomeQuote body="問題は事前計算じゃなく、MACアドレスが分からないとすべてをブロードキャストしなきゃならないってことだ。iOSはそんなに多くのブロードキャストを許可しないんだよ。" userName="dmitrygr" createdAt="2025-02-28T16:36:12" color="#38d3d3">}}

{{<matomeQuote body="MACアドレスは必要なくて、iPhoneが特定のBLE広告パケットをブロードキャストすればいいんだ。Core Bluetooth APIを使えば簡単だけど、アプリを作ったり、SDKを改造したりする必要がある。アプリがフォアグラウンドで動いてるときだけBLEビーコとして動けるけどね。" userName="jimiasty" createdAt="2025-02-27T18:49:28" color="">}}

{{<matomeQuote body="元の情報を読んでみて。自分のMACアドレスを知っている（もしくは推測する）必要があるんだ、それがキーの一部になるから。" userName="dmitrygr" createdAt="2025-02-27T18:52:04" color="">}}

{{<matomeQuote body="そうそう、MACアドレスがわかれば攻撃は現実的になる。ただ、MACアドレスがわからないと検索空間が広すぎて、膨大な時間がかかる。攻撃にはユーザーがアプリをダウンロードして、偽のBLEをブロードキャストしないといけない。他のデバイスがそのMACを拾って教えてくれる必要もあるけどね。" userName="jimiasty" createdAt="2025-02-27T21:17:58" color="#785bff">}}

{{<matomeQuote body="目標次第で全く問題ないよ。" userName="anigbrowl" createdAt="2025-02-28T07:54:36" color="">}}

{{<matomeQuote body="そうだね。コード実行やインターネット接続、Bluetoothの権限が必要だし、もし被害者のデバイスにGPSがあれば、この攻撃は無意味になるよ。" userName="WatchDog" createdAt="2025-02-27T22:57:45" color="">}}

{{<matomeQuote body="攻撃ってのは分かるけど、自分の非AppleのBluetoothデバイスにこれが使えたらすごく便利だよな。" userName="ctkhn" createdAt="2025-02-27T19:44:42" color="">}}

{{<matomeQuote body="これ、１ヶ月前に投稿されたやつなんだよね： https://news.ycombinator.com/item?id=42835772" userName="1024core" createdAt="2025-02-27T20:35:24" color="">}}

{{<matomeQuote body="これって https://github.com/seemoo-lab/openhaystack とどう違うの？編集：皇冥のない状態で動作するみたいだし、この発見がopenhaystackを改善できるかな？" userName="internetter" createdAt="2025-02-27T18:05:21" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="この話はOpenHaystackにはあまり影響ないね。要するに、MACアドレスを変えずにFindMyのBLEメッセージをブートフォースで送れるってことだけで、根本的にはそういう仕様なんだ。自分のデバイスをAirTagにしたいなら、ルート権限でMACアドレスを変えた方が早いよ。" userName="malmeloo" createdAt="2025-02-28T00:19:26" color="">}}

{{<matomeQuote body="カスタムBluetoothファームウェアをインストールする必要がないってことで。" userName="layer8" createdAt="2025-02-27T18:08:09" color="">}}

{{<matomeQuote body="ただ、そこから図をそのままコピーしたってわけさ。" userName="saagarjha" createdAt="2025-02-27T20:04:53" color="">}}

{{<matomeQuote body="Appleがこの問題をどう扱うか気になるな。善意でオープンにするのか、予想外の使い方が多すぎてネットワークを閉じる方向に行くのか。自分のAppleデバイスがこれを探してAppleと情報共有してるのがどれだけデータに加算されるかも気になる。" userName="prepend" createdAt="2025-02-27T18:47:43" color="#785bff">}}

{{<matomeQuote body="最近のアップデートで修正されたけど、更新してないデバイスはまだたくさん残るだろうね。サーバー側での修正は無理なんだ。" userName="layer8" createdAt="2025-02-27T19:46:36" color="">}}

{{<matomeQuote body="こういう脆弱性への対策は、AirTag特有のパケットタイプに受け入れを絞る感じかな？" userName="lgats" createdAt="2025-02-28T02:37:58" color="">}}

{{<matomeQuote body="OpenHaystackは長い間あったけど、実はあまり気にしてないようだね。" userName="malmeloo" createdAt="2025-02-28T00:24:02" color="">}}

{{<matomeQuote body="この脆弱性、デバイスにルートアクセスが必要ってことだよね。それなら自分のノートPCで失くしたビーコンを発信できて、タダで盗難追跡できるってこと！？" userName="slicktux" createdAt="2025-02-28T04:46:26" color="#785bff">}}

{{<matomeQuote body="iPhoneがFind Myネットワークに参加しないようにしたいなら、iCloudをオフにすることでBLE広告の共有が無効になるって理解してるよ。" userName="rubatuga" createdAt="2025-02-27T22:11:52" color="">}}

{{<matomeQuote body="Find My Phoneをオフにするだけでも同じだと思うよ。" userName="Angostura" createdAt="2025-02-28T00:14:17" color="">}}

{{<matomeQuote body="この脆弱性の修正が、自分の好きなBLEデバイスをFindMyネットワークで使う能力を奪う可能性ある？" userName="devmor" createdAt="2025-02-27T18:22:13" color="">}}

{{<matomeQuote body="その能力は奪わないよ。" userName="rahimnathwani" createdAt="2025-02-27T19:23:40" color="#785bff">}}

{{<matomeQuote body="建設的な意見として、GPUのセクションは意味がない感じがするから、削除するか、もっと論文の内容を補足してほしいな。" userName="tensility" createdAt="2025-02-28T08:14:43" color="">}}

{{<matomeQuote body="いいね！Chipoloのトラッカー持ってるけど、AirTagに比べて追跡がイマイチ。この方法でAppleのネットワーク経由で追跡できるようになるかな？" userName="Rebelgecko" createdAt="2025-02-27T20:35:57" color="#45d325">}}

{{<matomeQuote body="カスタムファームウェアをフラッシュできればね。安いデバイスのファームウェア作成も色々な試みがされてるから、簡単かも。" userName="malmeloo" createdAt="2025-02-28T00:23:00" color="">}}

{{<matomeQuote body="Samy Kamkarの本からそのまんまみたいだね。" userName="reader9274" createdAt="2025-02-28T02:18:06" color="">}}

{{<matomeQuote body="オープンソースのハードウェア/ソフトウェアに対応したAirTagsや仮想AirTagsの可能性が開けたかもね？" userName="cantrecallmypwd" createdAt="2025-02-28T12:05:20" color="#38d3d3">}}

{{<matomeQuote body="AppleがAirTagのiCloud送信された紛失通知メッセージにアクセスできるなんて知らなかった。" userName="ww520" createdAt="2025-02-27T18:56:09" color="">}}

{{<matomeQuote body="AirTagに関連付けられた秘密鍵が必要だよ。" userName="layer8" createdAt="2025-02-27T19:02:17" color="">}}

{{<matomeQuote body="…と、SMS認証された電話番号があるApple Accountもね。リクエストすることで、AppleがそのAirTagに興味のあるApple Accountを知ることになる。FindMyの匿名性の主張は、実際に物を失くして探そうとする時には消えちゃうよ。ネットワークを問い合わせない限り匿名っていうのはね。" userName="octoberfranklin" createdAt="2025-02-27T21:37:37" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="実際のAirtagsは、鍵を1日ごとにローテーションしてるんだって（紛失モードの時ね）。Appleはその鍵を予測できないから、理論的にはx、y、zデバイスから報告されたタグを探してるって分かるけど、実際の位置情報は暗号化されてる。" userName="malmeloo" createdAt="2025-02-28T00:28:29" color="">}}

{{<matomeQuote body="これ、システムをフラッドさせるのに悪用できるんじゃないの？" userName="ck2" createdAt="2025-02-27T18:32:55" color="">}}

{{<matomeQuote body="＞ この研究は、米国国立科学財団（NSF）の助成金CNS-2304720、CNS-2310322、CNS-2309550、CNS-2309477によって部分的に支援を受けた<br>いい時代だったね。" userName="sedatk" createdAt="2025-02-27T17:44:43" color="">}}

{{<matomeQuote body="人々はまだこの脆弱性を見つけ続けるだろうね。減るとは思うけど、アメリカ国内からはますます少なくなるし、公に詳細を発表する人も減ると思う。" userName="lynndotpy" createdAt="2025-02-27T18:24:59" color="">}}

{{<matomeQuote body="直感的には、こういう脆弱性開示がもう既に見つかっている人たちによって行われることが多い気がする。そういう脆弱性を積極的に示すプログラムがあるから、国家的な情報機関のインチキが大半になる一方で、組織犯罪やテロリストには行き渡らないでいるのかな。将来の問題がこういうプログラムによって防げたとは言えないから、社会のインフラを守る意味でも大事だと思うよ。" userName="chefandy" createdAt="2025-02-27T19:04:31" color="#45d325">}}

{{<matomeQuote body="面白いな。Appleがタグに対してブロードキャストアドレスが有効かどうかを確認してない隙をついてるみたいだね。BLEのブロードキャストは、暗号化の一部をメッセージアドレスに入れて、その後はペイロードに入れてる。これを使って”普通の” BLEアドレスを使って鍵を逆向きに解読してる。" userName="mmastrac" createdAt="2025-02-27T17:14:26" color="#38d3d3">}}

{{<matomeQuote body="＞ ただの”普通の”BLEアドレスを使って鍵を逆向きに解読してるんだ。<br>すごく賢いね！BLEの規格はメッセージのサイズに制限があるから、Appleはメッセージの一部をアドレスに使ってる。でも、BLEチップの公開アドレスには”会社ID”っていう24ビットがあって、その情報は公にされているから、いくつかの公開/秘密鍵ペアを事前に計算できる。" userName="Domenic_S" createdAt="2025-02-27T17:30:58" color="">}}

{{<matomeQuote body="Appleは鍵の素材として会社IDを使ったの？" userName="krupan" createdAt="2025-02-27T19:00:41" color="">}}

{{<matomeQuote body="違うよ。もう一度論文を読んでみて、特に図3を見て。" userName="gruez" createdAt="2025-02-27T20:56:37" color="">}}

{{<matomeQuote body="ビッグテックのエンドツーエンド暗号化はどうなったんだ？私の推測だけど、これは意図的なバックドアが発見されたんじゃないかな。" userName="kittikitti" createdAt="2025-02-27T18:55:04" color="">}}

{{<matomeQuote body="エンドツーエンド暗号化はされてるけど、攻撃者が両端をコントロールできちゃうって感じ。バックドアはないよ。" userName="layer8" createdAt="2025-02-27T19:04:11" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
