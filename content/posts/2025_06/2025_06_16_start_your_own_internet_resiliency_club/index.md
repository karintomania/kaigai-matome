+++
date = '2025-06-16T00:00:00'
months = '2025/06'
draft = false
title = 'インターネットが使えなくなっても困らない！ 自分だけの耐ネットクラブを始めよう！'
tags = ["インターネット", "オフライン", "災害対策", "通信", "備え"]
featureimage = 'thumbnails/orange4.jpg'
+++

> インターネットが使えなくなっても困らない！ 自分だけの耐ネットクラブを始めよう！

引用元：[https://news.ycombinator.com/item?id=44287395](https://news.ycombinator.com/item?id=44287395)




{{<matomeQuote body="Meshtasticはインターネットがないとセットアップがマジ大変！旅行先の田舎で試したらネットほぼなくて痛感したよ。<br>全部Webファーストなんだよね。<br>ボードに書き込むのも「Web Flasher」推奨だし、ソースからやろうにもPlatformIOとかネット必須。<br>クライアントもストアかWebアプリだけど、オフラインじゃない。<br>ボード自身がWebアプリをホストするって後で知ったけど、それもWi-Fi必要でPC直繋ぎじゃダメ。<br>ドキュメントもサイトにあるだけで「オフラインでDL」とか「自分でホストする方法」なんてどこにもない。<br>詳しい人ならいけるかもだけど、主要な配慮じゃないみたい。<br>事前に全部準備しとけってのがこの記事の趣旨なんだろうけど、オフラインで読めるPDFドキュメントすらないってマジ？<br>Meshcoreもスレで知ったけど、サイトの「始め方」がYoutubeって緊急時無理じゃん！" userName="alnwlsn" createdAt="2025/06/16 14:28:40" color="#785bff">}}




{{<matomeQuote body="俺はいつもCLIか「ドラッグ＆ドロップ」でファームウェア書き込んでるよ。Web Flasherは初心者には良いけど、デバイスによっては完全にオフラインでやれる方法もあるんだ。<br>Androidクライアントの.apkファイルはGitHubから直接DLできるよ。<br>まぁでも、「長期的なネットなし」のユースケースにはもっと力入れるべきだ、ってのは同意するね。" userName="amatecha" createdAt="2025/06/16 18:21:00" color="#ff5c5c">}}




{{<matomeQuote body="インターネット回復力が大事って話だと、必要な時にflashedされてないLoRaボードが手に入るかっていうと、多分ゼロじゃない？<br>オフラインで全部できるツールチェーンを組むのは良いアイデアだと思う（RasPiのSDカードに書き込みとか設定に必要なもの全部入れとくとか、Androidのapkをアーカイブしておくとかさ）<br>でも俺が「ネット回復力クラブ」のリソースを割り当てるなら、それは優先順位かなり低いかな。" userName="bigiain" createdAt="2025/06/16 23:10:35" color="">}}




{{<matomeQuote body="それは誰がどんなリスクを想定してるかによると思うな。<br>例えばHundred Rabbitsはネット環境が超不安定な場所で生活してるんだ。ヨットの上で生活してて、そこでコンピューティングの仕事もしてる。<br>だから信頼できるネットどころか、信頼できる電源にすら依存しない独自のツールを自分で作るしかなかったわけ。<br>Collapse OSとかDusk OSは、社会崩壊のリスクに備えてツール作ってるプロジェクトだよ。ネットがないのはもちろん、もうシリコンチップすら作れない状況で、みんな既存のシステムをあさって生き延びるシナリオね。" userName="hosh" createdAt="2025/06/17 17:37:35" color="#45d325">}}




{{<matomeQuote body="場合によるね。俺はもう数年Meshtasticをいじってるから、数年前の互換デバイスがかなり溜まってるんだ。<br>中にはすごく古いファームウェアバージョンのままのもある。<br>もし「いざという時」が急に来て、それをできるだけ多くのコミュニティメンバーに配る必要が出たら、かなりの割合が新しいファームウェアと互換性なくて使えないと思う。<br>まぁ良い点としては、ファームウェアのzipとか、他のOSとかドライバーとかファームウェアとか、大量にNASに溜め込んではいるんだけどね。" userName="amatecha" createdAt="2025/06/18 23:23:20" color="#45d325">}}




{{<matomeQuote body="コンパイル済みのファームウェアはGitHubで手に入るし、それを書き込むスクリプトも一緒になってるよ。<br>Meshtastic CLIも使えるし。<br>ドキュメントだってgitリポジトリに.mdx形式であるんだよ。<br>君が挙げてる「罪」は全部、Webブラウザに慣れてるユーザーにとって、より便利になろうとした結果じゃん？<br>Web3にしたって、今のWebは分散化からはかなり遠いし。" userName="meehow" createdAt="2025/06/16 20:35:21" color="#785bff">}}




{{<matomeQuote body="GitHubにアクセスできなくなったらどうする？" userName="hosh" createdAt="2025/06/17 17:27:23" color="">}}




{{<matomeQuote body="ああいう問題の多くは、ユーザーや貢献者の規模と多様性で解決すると思うんだ。<br>Linuxを見てよ。この10年でめちゃくちゃ盛り上がったけど、最大の要因は使いやすさだよ。UI/UXがずっと良くて綺麗になった。<br>もちろんMicrosoftとかAppleが閉鎖的になって、代替を探す人が増えたってのもあるけど、使いやすさがあったからそういう人たちに居場所ができたし、より規模が大きくて多様なコミュニティがそれをより親しみやすくしたんだ。<br>言いたいのは、批判は続けつつ、それをただの文句じゃなくてフィードバックとして捉えようってこと。<br>そうすれば、こういうものを本来あるべき姿にできるから。<br>結局、ここは素晴らしい製品を作る場所なんだろ？<br>そして、ドキュメントの重要性を絶対に過小評価するなよ。常に変わるから面倒でうんざりするかもしれないけど、どうやるか分からなきゃ誰も協力してくれないんだから。会社でもOSSプロジェクトでもね。すごく儲かる投資だよ。" userName="godelski" createdAt="2025/06/18 03:40:27" color="">}}




{{<matomeQuote body="君のクライアント特有の心配は、多分妥当じゃないかもしれないよ。<br>Webアプリはオフラインでも普通に動くみたい。ブラウザでページを保存しとけば。<br>AndroidアプリはGitHubにビルド済みのがあるよ。<br>iOSアプリはAppleのせいでエンドユーザーにオフライン配布できない。Appleを責めるか、もっと良い携帯買いなよ。" userName="ycombinatrix" createdAt="2025/06/17 08:31:46" color="#38d3d3">}}




{{<matomeQuote body="ちなみに、ボードをただPCに繋ぐだけでWebアプリが使えるようにするのって、割と簡単なことだよ。<br>便利さのために、Ethernet-over-USBで制御用のWebサーバーをホストするデバイスとか、見たことあるし。" userName="graealex" createdAt="2025/06/17 09:03:27" color="">}}




{{<matomeQuote body="これを聞くとワクワクするね。「local-first」なエコシステムやインフラの具体的な目標になりそうだから。でも、「local-first」マニフェストは期待と違ってガッカリ。「Bluetoothで直接スマホ同士を同期」ってイメージだったんだ。SaaSは中央サーバー依存の方が儲かるから「offline-first」って感じだね。Meshtasticみたいなツールも災害後に役立たせるなら、完全にlocal-firstで頑丈じゃないとダメだよね。" userName="hosh" createdAt="2025/06/16 17:53:08" color="">}}




{{<matomeQuote body="大都市でMeshtasticを試したけど、実際のパフォーマンスはイマイチだったよ。メッセージが届かなかったり、返信できなかったり。アンテナとかメッシュのせいでダメみたい。公開チャットは静かかテスト投稿だらけ。100ノード超えると遅くなって使い物にならない。緊急時にMeshtasticは頼れないね。<br>むしろ古いWi-Fiルーターを使った公共Wi-Fiメッシュの方が使えるかも。スマホみんな持ってるし、電力少ないし。停電には弱いけどね。" userName="wao0uuno" createdAt="2025/06/16 10:47:16" color="#ff5733">}}




{{<matomeQuote body="スペインで停電を経験したんだけど、こういうの（スマホを使うやつ）があると本当に役立つと思ったよ。誰か一人でもジェネレーターとかStarlinkを持ってれば、みんなにネット接続を提供できるんだ。" userName="GardenLetter27" createdAt="2025/06/16 10:59:19" color="">}}




{{<matomeQuote body="みんなが自家発電（太陽光とか風力）やメッシュネットワーク、衛星ネットで「自給自足」みたいになっていくのが面白いね。電力会社が売電に払わないからオフグリッドになるんだ。ロボットが食料作る畑があれば、現代技術で中世に戻るみたい。IT億万長者が封建領主、ヤバい右翼ポピュリストが変なアゴの王様みたいでさ。" userName="moffkalast" createdAt="2025/06/16 11:45:06" color="">}}




{{<matomeQuote body="Wi-Fiルーターって、カバーできる範囲の割に意外と電気食うんだよね。100平方メートルで10ワットとか。都市全体をカバーしようと思ったら結構な量になるよ。" userName="adrianN" createdAt="2025/06/16 11:58:00" color="#45d325">}}




{{<matomeQuote body="スマホメーカーがまだメッシュネットワークを実装してないのが不思議だよね。AppleのFind Myネットワークは近いけど、あれはデータ転送の帯域幅がすごく低いし。Appleの新しいモバイルWi-Fiチップが、もしかしたら将来のインターネットメッシュネットワークに繋がるのかもしれないね。" userName="cedws" createdAt="2025/06/16 11:22:01" color="">}}




{{<matomeQuote body="売電についてだけど、グリッドは産業標準を満たせばちゃんと払ってくれるよ。個人が太陽光パネルとかインバーターを適当に繋ぐのは、庭の物置作る経験で高層ビル建てようとするみたいなもん。安全じゃないし、理由も分からず、結局誰か怪我するよ。" userName="pyrale" createdAt="2025/06/16 13:48:13" color="#ff33a1">}}




{{<matomeQuote body="みんなもう24時間動かしてるもの、ほとんど持ってるよね。2台目を外部アンテナ付きにしても、そんなに大差ないと思うけどな。" userName="wao0uuno" createdAt="2025/06/16 13:08:45" color="">}}




{{<matomeQuote body="ウクライナの電力網はロシアのドローンやミサイル攻撃を何年も受けてるけど、復活し続けてるんだ。短い検索だと最長でも12時間くらいの停電らしいよ。最近の大都市で、完全に長期間停電するなんて考えにくいね。" userName="wao0uuno" createdAt="2025/06/16 15:44:23" color="">}}




{{<matomeQuote body="どこに住んでるの？イギリスだと、余った太陽光発電の電気を電力会社に売ったらお金もらえるんだよ。" userName="edent" createdAt="2025/06/16 12:40:19" color="#ff33a1">}}




{{<matomeQuote body="「数日」っていう長期的な停電はそうかもね。でも数週間前はスペイン全土で少なくとも12時間停電したし、昨日もイタリアのトリノで10時間停電があったんだ。" userName="pmontra" createdAt="2025/06/16 16:13:09" color="#ff5c5c">}}




{{<matomeQuote body="そうそう、その評価には同意。Meshtasticのノードを1年くらい動かしてるけど、連絡取れたの多分2回だけなんだ。YAGIとか専用アンテナ（868 MHz）使っても俺の場所だと電波の届きが悪い。1キロ歩くだけで信号弱くなるみたい。高さは大事だけど、868 MHzは早く減衰するみたいだね。だから、Meshtasticはあんまり使えるソリューションじゃないと思う。Hamnetとかアマチュア無線の方がずっと優れてる。今はSDRのおかげでハンディ無線機も20ユーロくらいでめっちゃ安くなったしね。" userName="TeamMCS" createdAt="2025/06/16 12:46:51" color="#ff33a1">}}




{{<matomeQuote body="それは普通、太陽光発電してる人が少ない場合の話だよ。電力網は家庭での発電に対応してないから。もし地域に太陽光発電が多すぎると、使いきれない分を売ってもお金にならないどころか、発電しすぎると切られちゃうことすらある。結果、昼間に余った分はお金にならず、夜は請求されるっていう最悪の状態。だから蓄電池を買ってピーク分を貯めるようになるし、電力会社からの電気はほぼオプション扱いになっていくんだよ。" userName="moffkalast" createdAt="2025/06/16 13:08:32" color="#ff5733">}}




{{<matomeQuote body="バッテリーの持ちは超大事だよ。そこそこの速度を出そうとするとバッテリーをすごく消耗するだろうね。みんな見知らぬ人のために自分のバッテリーを犠牲にしたくないだろうし。" userName="wat10000" createdAt="2025/06/16 12:54:31" color="">}}




{{<matomeQuote body="Meshtasticも計画は必要だよ。俺の地域には山頂にROUTERがあって、街のノイズを抑えてくれるんだ。だから80kmくらいまで結構信頼できる。人口50万人くらいの地域で、LONG_FASTモードでノード80個くらいだよ。これはwifiじゃ絶対無理。でも、Meshtasticのルーティングアルゴリズムはすごく効率が悪くて、改善の余地がめっちゃあるけどね。" userName="bigfatkitten" createdAt="2025/06/16 21:31:18" color="#38d3d3">}}




{{<matomeQuote body="正直、ウクライナの人たちにはもっと感心させられるよ！ロシアがいなくなったら、彼らはこの分野で他のヨーロッパ諸国にレジリエンス（回復力）がどんなものか教えてあげられるんじゃないかな。" userName="PokemonNoGo" createdAt="2025/06/16 19:09:51" color="">}}




{{<matomeQuote body="たぶん「誰かがケガする」って部分を文字通りに受け取りすぎだけど、インバーターって停電すると出力止まるんだよね。<br>多くのインバーターがないと、そこら辺だけグリッドから切り離されてないって他のインバーターに思わせるのは難しいよ。<br>それを検知する特別なロジックがあるかもしれないね。<br>もちろん、グリッドに制御されない入力が多すぎて不安定になるケースもあるけど、少なくともニュースになるようなひどいことはまだ起きてないみたいだね。<br>今の流れが続けばいずれ起こるだろうけど、その時は適切な対策が取られるだろうし、大規模な太陽光発電所では既に取られてるよ。" userName="ahartmetz" createdAt="2025/06/16 20:56:58" color="">}}




{{<matomeQuote body="住宅用発電に対応してるグリッドが少ない場合や、地域のインフラが過剰に整備されてる場合はそうなんだよね。<br>オーストラリアは屋根付き太陽光発電の住宅密度が世界一高くて、グリッド供給の約11％を占めてるんだ。<br>売電制度（Feed-in tariffs）も普通にあるよ。" userName="bigfatkitten" createdAt="2025/06/16 21:40:19" color="">}}




{{<matomeQuote body="それはね、君を夢中にさせるように設計されてるからだよ。<br>僕の今のスマホは7050 mahで80w充電できるから、週に2回くらいしか充電しないんだ。<br>もし少しでもカオスな生活をしてたら、1日に30回充電することを考えたり、ケーブルを溜め込んだり、モバイルバッテリーを充電しまくったりするけど、結局バッテリー切れになるんだよね。<br>今は動かさない、壊れないケーブルが1本だけあれば良いんだ。" userName="econ" createdAt="2025/06/16 18:46:29" color="">}}




{{<matomeQuote body="サイバーパンク小説の面白い前提になりそうだね。<br>奇妙な顎は残しといた方がいいよ、整形手術で何でもできるから！" userName="bandoti" createdAt="2025/06/16 12:26:58" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Meshtasticのルーティングはめちゃくちゃ原始的で効率悪いよ。<br>https:＼＼www.disk91.com＼2024＼technology＼lora＼critical-analysi..." userName="UltraSane" createdAt="2025/06/16 13:56:46" color="#ff5c5c">}}




{{<matomeQuote body="Reticulum networkって試したことある？<br>僕も試してみたいんだ。<br>https:＼＼reticulum.network<br>https:＼＼unsigned.io＼rnode＼" userName="hyperionplays" createdAt="2025/06/16 13:08:22" color="#45d325">}}




{{<matomeQuote body="そうそう、でも代わりにすごい帯域幅が手に入るんだ。<br>でも、都市全体規模のテキストネットワークを動かすのに十分かは分からないな。" userName="apitman" createdAt="2025/06/16 22:05:48" color="">}}




{{<matomeQuote body="それは地元の規制が具体的に小規模発電について定めてる場合にそうなるんだ。" userName="bigfatkitten" createdAt="2025/06/17 09:15:00" color="">}}




{{<matomeQuote body="ソーラーパンクって、他のSFパンクの中で一番無視されてるよね。<br>たぶん、それは実際には結構良い感じで、ざらざらした憂鬱な物語の舞台にはなりにくいからじゃないかな？" userName="moffkalast" createdAt="2025/06/16 13:11:16" color="">}}




{{<matomeQuote body="まず言いたいのは、これは住宅用電力生産の課題についてで、産業用じゃないってことね。グリッドがダウンしたらゲームオーバーだよ。インバーターの反応とか関係ない。電力会社が家庭用を買わないのは、周波数・電圧管理とかグリッドに必要なサービスを提供しないから。過剰生産で地域全体の停電も起こりうるんだ。" userName="pyrale" createdAt="2025/06/17 07:40:33" color="#ff33a1">}}




{{<matomeQuote body="＞ 朝起きたら停電してて、インターネットも落ちてて、携帯も繋がらないのが悪夢<br>分からんけど…歳取るにつれて、これってどんどん理想に聞こえてくるな（笑）" userName="lljk_kennedy" createdAt="2025/06/16 08:38:41" color="#ff5c5c">}}




{{<matomeQuote body="皮肉なのは分かるけど、もっと真剣にシミュレーションした方がいいよ。これ、最近の停電でスペインやポルトガルで起こったことだけど、全然きれいなもんじゃなかった。" userName="ndr" createdAt="2025/06/16 08:40:21" color="#ff5733">}}




{{<matomeQuote body="いや、でもそこまでひどくもなかっただろ。<br>混乱や逮捕はあったけど、大半の人は外で交流したり、踊ったり、仕事の日にはやらないような突発的なことをしてたよ。" userName="camillomiller" createdAt="2025/06/16 08:45:36" color="#ff33a1">}}




{{<matomeQuote body="それは、みんな数時間で元に戻ると思ってたからだよ。もっと壊滅的な広範囲の停電だったら、たぶんダンスなんかしてないだろうね。" userName="dewey" createdAt="2025/06/16 08:49:54" color="#785bff">}}




{{<matomeQuote body="約20年前にアメリカで広い停電があった時、最大の問題はガソリンスタンドがダメになったことだ。車が立ち往生して、電源回復を待ってた。もし電気もガスもどこもダメになったら、食料とか他のインフラもすぐに壊滅するだろうね。" userName="al_borland" createdAt="2025/06/16 11:48:41" color="#785bff">}}




{{<matomeQuote body="ガソリンスタンドに自家発電機を義務付けないなんて absurd （ばかげてる）だよな。燃料はあんなにあるのに！<br>これじゃあ、停電時に自家発電機用の燃料を誰も買えなくなる。<br>今年のLAの火災の時の停電で、これは大きな問題だった。" userName="tcoff91" createdAt="2025/06/16 12:41:49" color="#ff5c5c">}}




{{<matomeQuote body="でも待てよ、”きれいだった”のか”そうじゃなかった”のか、どっちなんだ？ ”きれいじゃなかった”から始まったのに、”OK、きれいだったよ、でもそれはすぐに解決すると思ってたからだけどね”になったぞ。" userName="AlecSchueler" createdAt="2025/06/16 11:14:54" color="">}}




{{<matomeQuote body="料理、冷蔵、水の揚水は電力に依存してるからね。1日以上続いたら間違いなくひどいことになるよ。" userName="killerstorm" createdAt="2025/06/16 09:06:35" color="#ff33a1">}}




{{<matomeQuote body="ガソリンスタンドは個人経営だし、ガソリンで儲けはほとんどなくて、売上の大半はコンビニ部分なんだよね。<br>そこに、何十年かに一度あるかないかの災害で、計画性がない人たちのために、一番利益率の低いガソリンを売るために何十万〜何百万もするバックアップ電源システムに投資して、年間何十万もの維持費をかけろって要求するのは、結構ばかげてると思うな。" userName="dghlsakjg" createdAt="2025/06/16 14:53:59" color="">}}




{{<matomeQuote body="こういうのが、ソーラーシステムにバッテリーとアイランディング機能を追加して、長期停電の時に必要最低限の電力を自分で確保しようと考えてる理由の一つだよ。<br>これがどれくらい「プレッパー」なのかは分からないけどね。缶詰とか武器とか発電機は持ってないし。これを始めたのは、停電の間も自分で色々ホストしてるHome Labをオンラインに保つためだったんだ。<br>あと、僕が住んでる街にはアドホックなアマチュアWiFiネットワークがあって、数キロ範囲で繋がってるんだ。昔メンバーだったんだけど、皮肉なことに（この記事の文脈ではね）光回線を手に入れたら興味を失っちゃって。まあ、優先順位リストの上に戻ってきてないってだけなんだけど: https://air-stream.org/<br>彼らはこの話題に関しては先を行ってる感じだね。" userName="BLKNSLVR" createdAt="2025/06/16 09:40:55" color="#45d325">}}




{{<matomeQuote body="若い人とか身軽な人には良いだろうけど、酸素濃縮器が必要なCOPD患者とか、滅菌済みの哺乳瓶が足りなくなってきた赤ちゃんの親には、そんな簡単じゃないよね。" userName="closewith" createdAt="2025/06/16 12:08:24" color="">}}




{{<matomeQuote body="それは視点によるだろうね。ここポルトガルでは、多くの人がパティオに座って友達と話したり、グリルで料理したり、カードしたり、ワインを飲んだりして、概ねかなり楽しんでたよ。<br>僕が住んでる小さな村では、電気が戻った時に集団で「あーあ」って声が上がったし、明日の朝仕事に行かなきゃいけないことにがっかりしたって言う人が結構いたね。" userName="tmountain" createdAt="2025/06/16 11:21:46" color="">}}




{{<matomeQuote body="冷蔵のためにソーラーとバッテリーを使うのは無駄だと思うな。<br>家を持ってるなら、すごく昔ながらの方法、深い穴を掘って食料を暗くて涼しい場所に保管するのを試したら良いよ。名前は忘れたけど、数週間から数ヶ月はミリワットも使わずにいけるよ。" userName="axelthegerman" createdAt="2025/06/16 10:53:51" color="">}}




{{<matomeQuote body="ソーラー＋バッテリーは、地元で数週間の停電とかならすごく良いし、全国的でも数日なら大丈夫だろうね。<br>社会崩壊みたいな状況だと最悪で、ターゲットになっちゃうよ。" userName="ta1243" createdAt="2025/06/16 11:09:47" color="">}}




{{<matomeQuote body="人生で一度あるかないかの数日間の地域停電に、どうやって事前に計画しろっていうの？みんな念のためにガレージに何百ガロンもガソリン貯蔵しとくべきなの？それとも、冬の短い日でも電気自動車と家を動かせるくらいのバッテリー容量がある個人用ソーラー発電システムに、全国の全世帯が何百万も投資するの？賃貸の人はどうするの？運が悪かったってだけ？個人にこんな準備を求めるのは、同じくらいばかげてると思わない？" userName="al_borland" createdAt="2025/06/16 16:13:30" color="">}}




{{<matomeQuote body="＞社会崩壊みたいな状況だと最悪で、ターゲットになっちゃうよ<br>何のターゲット？みんなが家に充電に来るの？<br>もし人口の50％以上がソーラー設備を持ってたら、なんでターゲットになるの？" userName="antisthenes" createdAt="2025/06/16 13:02:34" color="">}}




{{<matomeQuote body="瓶を消毒するには、毒性物質がほとんど入っていない沸騰水があればいいんだよ。沸騰水を得るには水、容器、燃える燃料、火元、そして燃える燃料から水に熱を伝える手段が必要だね。金属鍋がなくても、石を熱してプラスチック、ガラス、陶器、木などの容器に入れた冷たい石の上に積んで水に入れるとかすれば、沸騰させられるらしいよ。" userName="goda90" createdAt="2025/06/16 14:56:05" color="#38d3d3">}}




{{<matomeQuote body="一生に一度あるかないかの数日間の地域的な停電にどう備えるかって？Ready.govにやり方があるよ。みんなが数百ガロンもガソリンをガレージに貯めておくべきかって？まさか。数日の間に何百ガロンもガス使うような人いる？工業規模の作業でもしてるなら別だけどね。心配なら、数日分のガソリンを手元に置いとけばいいんだよ。ほとんどの人は週にガソリン満タン1回くらいだから、半分になったら満タンにするくらいで十分。ジェネレーターが時々役立つ場所に住んでる俺みたいなのは、ジェリカン数本にガソリン入れとくのが普通。何百ガロンもあったら数週間は楽勝だよ。ほとんどの人は車にしかガソリン使わないし、車には数日分のガソリン備蓄機能が付いてるでしょ。<br>停電中に全てのGSが給油できるように義務付けたら？それは仮説の解決にはならないよ。強力なジェネレーターとか専用のスイッチがないと、家の電力はガソリンじゃ賄えないし。借りてる人とかアパートの住人にとって、動いてるGSは何の役に立つの？<br>とにかく。マジで絶望的な状況になったら、手先の器用な人ならその場でジェネレーターを配線して、給油ポンプを動かすのはそんなに難しくないよ。まあその時点で支払いネットワークが生きてる可能性は低いけどね。そうなったらマジで絶望なら手動でポンプ動かすしかないか。<br>個人がこれに備えるのは absurd （ absurd は「不合理な、ばかげた」って意味だよ）に思える？全然 absurd じゃないよ。専門家や政府も、災害に備えて自分で準備するよう推奨してるんだ。外部の助けなしに48時間生き延びるのに十分な物資を手元に置くようにって。この premise （ premise は「前提」って意味ね）に基づいた政府の取り組みやキャンペーン、組織全体があるんだから。USA連邦政府版ならReady.govを見てみたら？アメリカなら住んでる州や地域レベルの取り組みも見つかるかもね。過去の大規模で数日間の地域停電はほとんど weather related （ weather related は「天候に関連した」って意味だよ）で、つまり予測可能だったんだよ。" userName="dghlsakjg" createdAt="2025/06/16 16:54:40" color="#38d3d3">}}




{{<matomeQuote body=" obvious （ obvious は「明白な、言うまでもない」って意味だよ）だけど、全部じゃないよ。これを言わなきゃならないなんて信じられないけど、 prolonged blackouts （ prolonged blackouts は「長期の停電」って意味ね）（それに伴う衛生、温度管理、食料安全、食料入手可能性など、 downstream ramifications （ downstream ramifications は「下流への影響」って意味だよ）全部を含めて）は、電力が無い日が経つにつれて infant mortality （ infant mortality は「乳児死亡率」って意味だよ）を指数関数的に上昇させるだろうね。" userName="closewith" createdAt="2025/06/16 13:00:56" color="#ff5c5c">}}




{{<matomeQuote body="ガソリンって shelf life （ shelf life は「貯蔵寿命」って意味ね）がすごく短いんだよ。" userName="20after4" createdAt="2025/06/16 18:38:12" color="">}}




{{<matomeQuote body="チェストフリーザーを冷蔵庫に改造すれば battery （ battery は「バッテリー」って意味ね）要らないよ。やり方はここ見てね→https://www.notechmagazine.com/category/refrigeration" userName="chairmansteve" createdAt="2025/06/16 15:28:33" color="">}}




{{<matomeQuote body="＼u003e金属鍋がなくても、石を熱してプラスチック、ガラス、陶器、木などの容器に入れた冷たい石の上に積んで水に入れるとかすれば、沸騰させられるらしいよ。<br>それは sterile water （ sterile water は「殺菌された水」って意味だよ）は得られるかもしれないけど、やるのは極めて difficult （ difficult は「難しい」って意味ね）だし、思ってるよりはるかに多くの石が必要だよ、水に対して石の mass （ mass は「質量」って意味ね）は楽に5倍くらいいるかな、 full minute （ full minute は「丸1分」って意味だよ）ちゃんと boiling （ boiling は「沸騰」って意味だよ）させるにはね。それに clean water （ clean water は「清潔な水」って意味ね）にはならないよ。たくさんの potentially very unpleasant （ potentially very unpleasant は「潜在的に非常に不快な」って意味ね）な dissolved solids （ dissolved solids は「溶解固形物」って意味だよ）が入った sterile water になるだけ。赤ちゃんに飲ませるなんて絶対ダメだね。" userName="closewith" createdAt="2025/06/16 16:54:04" color="#ff5c5c">}}




{{<matomeQuote body="停電中に毎日ジェネレーター用のガソリンを取りに行かなきゃいけなかったんだ。町で電気が通じてたのはガソリンスタンド1箇所だけだったよ。もしso cal（ソカル、南カリフォルニアのことらしいね）に住んでなくてpublic safety power shutoffs（PSPS、公共安全停電のことらしいね）に対処しなくていいなら、 quit talking out of your ass （ quit talking out of your ass はスラングで「でたらめ言うのやめろ」って感じの意味だよ）。俺たちの電力網はここでは unreliable （ unreliable は「信頼できない」って意味ね）すぎて、ガソリン infrastructure （ infrastructure は「インフラ」って意味だよ）をもっと resilient （ resilient は「回復力のある、しなやかな」って意味だよ）にする必要があるんだ。いざという時、みんな fuel （ fuel は「燃料」って意味ね）を入手できなきゃ困るんだよ。一般大衆は、地域全てのガソリンスタンドがダウンする状況に備えられるほど準備なんて絶対しない。コストを賄うためにガソリン価格を10セント上げろよ。全てのスタンドがそう義務付けられたら、一斉に値上げするだけだから margin （ margin は「利益率」って意味ね）の問題もなくなるだろう。" userName="tcoff91" createdAt="2025/06/16 17:25:56" color="#38d3d3">}}




{{<matomeQuote body="戦争とか気候変動のせいで、ヨーロッパでは今後ネット障害が増えるらしいよ。政府も企業も、通信が完全にダメになる事態に備えなきゃいけないってさ。この話は、すぐに復旧しないネット断にどう対応するか、ってのがテーマだからね。" userName="lucianbr" createdAt="2025/06/16 11:47:17" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="電気が止まったらあっという間に暗黒時代に戻るだろうね。昔の人はサバイバル術を知ってたけど、今は便利な生活に慣れすぎてて、現代のモノなしで生き残れる人はほんの一部だよ。" userName="20after4" createdAt="2025/06/16 18:48:01" color="">}}




{{<matomeQuote body="災害に強い通信にはメッシュネットワークが基本だね。その上で動かすサービスは何にする？リアルタイムチャットならIRCとかMatrix、メールならSMTPみたいな分散型が良いかも。フォーラムはNNTPとか。あと、災害時にみんなが使えるように、クライアントソフトを入れたUSBキットを用意するのも手だね。" userName="liotier" createdAt="2025/06/16 09:00:44" color="#38d3d3">}}




{{<matomeQuote body="災害後にみんなが使えるようにするの、アプリストアが使えないし、スマホで証明書なしの接続とかするの結構難しいんだよね。NNCPっていうストア＆フォワード向きのプロトコルもあるけど、まだそんなに広まってないみたい。" userName="myself248" createdAt="2025/06/16 12:55:46" color="#ff33a1">}}




{{<matomeQuote body="こないだネットが使えない状況を考えてたんだけど、MacってAppleにオンラインでアクティベーションしないとOSを再インストールできないから、もしもの時に一番役に立たないかもって思ったんだ。" userName="wpm" createdAt="2025/06/16 14:27:13" color="">}}




{{<matomeQuote body="それなら、「Big Penguin」（Linuxのこと）に魂を売る時が来たね。" userName="myself248" createdAt="2025/06/16 14:36:33" color="">}}




{{<matomeQuote body="Macが使えないなら、Linuxが入ったUSBメモリを持ち歩くのが良いよ。Ventoyを使えば、一つのUSBに複数のLinuxディストリビューションを入れておけるから、色々なPCで使えるようになるよ。" userName="GTP" createdAt="2025/06/16 15:59:15" color="">}}




{{<matomeQuote body="でもさ、USB起動のLinuxって、ネットがないと使いたいソフトを全部入れられないから、すぐに快適に使えるわけじゃないんだ。普段からメインで使って慣れておくのが一番だと思うな。" userName="myself248" createdAt="2025/06/16 16:29:14" color="#38d3d3">}}




{{<matomeQuote body="Apple Silicon Macだと、USBからLinuxを起動できるのかよく分からないな。AsahiのインストールもmacOSから始めるみたいだし。たとえできたとしても、Macのオンラインアクティベーション問題とは別の話かもしれないね。" userName="cormorant" createdAt="2025/06/16 20:20:05" color="">}}




{{<matomeQuote body="へえ、最近スマホでhttp接続するのって難しいんだね。知らなかったよ。これってアプリストアの規則のこと？それとも普通のhttpサイト見るのも大変なの？iosだと問題なく見れるけどな。<br>関連するURLはこちら -＞ https://developer.android.com/guide/topics/manifest/applicat... と https://developer.apple.com/documentation/security/preventin..." userName="cormorant" createdAt="2025/06/16 20:03:58" color="">}}




{{<matomeQuote body="この記事のポイントはメッシュネットワークをネットの代替にするんじゃなくて、＜耐ネットクラブ＞が普通のネットを復旧させる間の連絡手段にするってことだと思うよ。" userName="bkummel" createdAt="2025/06/16 12:42:42" color="">}}




{{<matomeQuote body="本当の＜復旧チーム＞はtelcos／ispsにいるはず。彼らはdark fibreや自家発電を持ってて、bgpとかがダメになってもirc、voip、emailなんかで連絡取れるんだ。昔ispにいた頃は、asオペレーター専用の電話網があるって読んだな。それがダメになるような大災害なら、radio hamsとか災害サービス用の無線に頼ることになるね。" userName="lambdaone" createdAt="2025/06/16 15:39:22" color="#45d325">}}




{{<matomeQuote body="記事の筆者はtelcoの人と話したらしいけど、復旧の緊急計画なんて知らないみたいだったって言ってたな。eu諸国とusaで事情が違うのかもね。" userName="GTP" createdAt="2025/06/16 16:14:47" color="">}}




{{<matomeQuote body="mesh radioの帯域幅はかなり低いね。lora無線とか他の干渉源と競合するし、遠距離だとホップするごとに帯域幅と遅延が増える。テキストメッセージにはいいけど、0.3kbpsから27kbpsじゃ、短い距離での低帯域通話かテキストだけのサイトくらいしか実用的じゃない。<br>固定式のmulti-megabit point-to-point microwave radio linksをbackboneにしてloraをaccess networkにする方が理にかなってるかもね。実際にやった人の経験を聞きたいな。" userName="lambdaone" createdAt="2025/06/16 11:58:49" color="#38d3d3">}}




{{<matomeQuote body="この記事のポイントはメッシュネットワークをネットの代替にするんじゃなくて、＜耐ネットクラブ＞が普通のネットを復旧させる間の連絡手段にするってことだと思うよ。" userName="bkummel" createdAt="2025/06/16 12:41:47" color="">}}




{{<matomeQuote body="都市ごとにクラブ運営のbackboneを作るって考えに行き着いたよ。100mbitのethernet-over-microwave linksとかで。高層ビルをhubにすれば、wifiやloraをaccess networkにしたまともなmeshが作れるかも。帯域幅は制限しないとダメだけどね。microwave linksは高いし、太陽光やbatteryの電源も必要だから安くはない。<br>あと＜big ears, small mouth＞の技術も考えられる。loraみたいなので合法的なeirpで送信しつつ、高利得のparabolic dishとlnaで受信すれば、帯域幅と距離を大幅に改善できる。hardware的にも難しくなさそうだけど、誰か作ったことあるか、実用面や規制面でどうなのか知りたいな。" userName="lambdaone" createdAt="2025/06/16 12:19:42" color="#785bff">}}




{{<matomeQuote body="＜big ears, small mouth＞ってまさに規制で奨励されてることだから、規制の問題はないと思うよ。duplexing用の余分なhardwareも不要。一般的なsx1276 chipはtxとrxが分かれてるから、pcbで引き出すだけでいい。実際には2つのdishを正確に合わせるのが難しいから、1つのdishを焦点に置く方が実用的だね。<br>sx1276にはpa control pinもあるし、lnaを無視してrf feedline lossesを最小限に抑えるためにtransceiverを焦点に置くのもシンプルだよ。" userName="myself248" createdAt="2025/06/16 12:53:23" color="#ff5c5c">}}




{{<matomeQuote body="chipにtxとrx pinが分かれてるなんて知らなかったな。屋上同士で使えるような高くないlora transceiversって市場に隙間があるかもね。24 db gain antennaを使うと、4 db antennaより距離が10倍になるか、同じ距離でbandwidthやreliabilityがかなり上がるんだ。もっと簡単な設計なら、transmit portとantennaの間に20 db attenuatorを入れて、受信側に24 dbの利得を得ることもできる。proper rf engineering detailsはお勉強ってことで。" userName="lambdaone" createdAt="2025/06/16 15:30:33" color="#ff33a1">}}




{{<matomeQuote body="そういえば、東西で別々のpathsが必要なら、chipsは安いし、市販のboardsを2つ使ってsoftwareで連携させるのが合理的かもね。一つはtx専用、もう一つはrx専用って感じで。同じhardwareで半分だけ使うってこと。" userName="myself248" createdAt="2025/06/18 04:34:35" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
