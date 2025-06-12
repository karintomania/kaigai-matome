+++
date = '2025-06-05T00:00:00'
months = '2025/06'
draft = false
title = 'Air Labは持ち運べて改造自由な空気チェッカー！スマホ不要で単体で使えるぞ！'
tags = ["空気品質", "オープンソース", "IoT", "電子工作", "センサー"]
featureimage = 'thumbnails/blue.jpg'
+++

> Air Labは持ち運べて改造自由な空気チェッカー！スマホ不要で単体で使えるぞ！

引用元：[https://news.ycombinator.com/item?id=44189329](https://news.ycombinator.com/item?id=44189329)




{{<matomeQuote body="やっほー、HN！過去3年間、Air Labっていう空気質測定デバイスを作ってたんだ。CO2、温度、湿度、汚染物質（VOC、NOx）、大気圧が測れるよ。スマホやPCなしで、デバイス単体でデータ記録・分析ができるんだ。<br>どんな感じか伝えるために、先週EmscriptenでWebシミュレーターを開発したよ。ほとんどの機能が使えるから、ぜひ試してみて、どう思うか教えてほしいな！<br>ファームウェアはオープンソースにする予定だよ。今、CrowdSupplyでクラウドファンディングの最終段階なんだ。欲しい人は今がチャンス！https://www.crowdsupply.com/networked-artifacts/air-lab<br>ほとんどの空気質デバイスは閉鎖的だったり改造しにくかったりで、それが嫌でAir Labを作り始めたんだ。空気質の懸念は高まってるし、もっとオープンで遊び心のあるアプローチでこのテーマを身近にできたらいいなと思ってる。Air Labをカスタマイズしたり拡張したりするハードルを低くすることが、僕らにとって重要なんだ。出荷まで、シミュレーターみたいな充実したドキュメントやツールを用意するつもりだよ。<br>技術的なこと：デバイスは人気のあるESP32S3を搭載してる。SCD41（CO2、温度、湿度）、SGP41（VOC／NOx）、LPS22（大気圧）の精密センサー付きだよ。バッテリー充電、リアルタイムクロック、RGB LED、ブザー、加速度計、静電容量タッチも内蔵されてて、パワフルな単体デバイスになってる。ファームウェアはesp-idfベースで、UIはLVGLを使ってるよ。<br>もっと詳しい情報が欲しいなら、動画もあるよ：<br>- https://www.youtube.com/watch?v=oBltdMLjUyg (Introduction)<br>- https://www.youtube.com/watch?v=_tzjVYPm_MU (Product Update)<br>フィードバック大歓迎！デバイス、ハードウェア、使い道、その他改善点とか何でも教えてね。プロジェクトの更新通知を受け取りたいなら、Crowd Supplyで登録してね。<br>質問は何でも答えるよ！" userName="256dpi" createdAt="2025/06/05 07:42:25" color="#ff5733">}}




{{<matomeQuote body="製品、すごくいいね、ローンチおめでとう！<br>センサーだけの単体デバイス（データのみモードみたいな）にして、ユーザーが自分の好きなe-inkダッシュボードにデータをつなげられるようにするって考えたことある？<br>コミュニティが作った空気質ダッシュボードの例がいくつかあるよ（e-inkハードウェアにインストールできるやつ）。<br>[1] https://usetrmnl.com/recipes/62233, https://usetrmnl.com/recipes/23306<br>[2] https://github.com/usetrmnl/firmware/<br>補足：TRMNLで働いてるよ。" userName="ronakjain90" createdAt="2025/06/05 10:43:04" color="#ff33a1">}}




{{<matomeQuote body="ありがとう！うん、それは複数の部屋／場所に使うために、近いうちにプロトタイプしたいと思ってることなんだ。TRMNL含め、他のダッシュボードとの連携も最高だね。" userName="256dpi" createdAt="2025/06/05 11:07:10" color="">}}




{{<matomeQuote body="Home Assistantと互換性のあるZigBeeみたいな感じ？" userName="InsOp" createdAt="2025/06/06 11:14:04" color="">}}




{{<matomeQuote body="作者のコメント[1]のこの詳細に注目してほしいな。<br>この記事[2]は、インタラクティブなデモのためにデバイスのファームウェアをWasmに移植したプロセスを詳しく説明してるんだ。同僚が言ってたんだけど、これだけでかなりしっかりしたShow HNになるくらいだよ。<br>[1] https://news.ycombinator.com/item?id=44190541<br>[2] https://www.crowdsupply.com/networked-artifacts/air-lab/upda..." userName="tomhow" createdAt="2025/06/06 11:45:07" color="#ff33a1">}}




{{<matomeQuote body="tomhow、ありがとう！Air Labシミュレーターを作るアイデアは、君からもらったフィードバックにすごくインスパイアされたんだ。他の読者のために少し背景を説明するね：<br>HNのtipsページで推奨されてるように、自分のストーリー／製品をShow HNポストとして投稿できるか判断するために、HNにメールで問い合わせたんだ。彼らはもっと”直接的な”デモが必要だと指摘してきたんだ。彼らの提案は、デバイスがどう動作してどんな感じかを見せる”生の”動画を作ることだった。それはすごく理にかなってると思ったんだけど、デザイナーとして訓練を受けてきた僕にはそういうのを作るのが難しくて、自然とこだわりすぎてしまうんだ。このジレンマを同僚と話してたとき、少し前にAir Labウェブサイトのインタラクティブなレンダリングを作るアイデアがあったのを思い出したんだ。すぐに、これが試す価値があることで合意したんだ。動画の目的全体が、HNコミュニティにデバイスの感触を伝えることだったからね。<br>僕のコメントやCrowd Supplyのアップデートで言ったように、emscriptenを使ってstockファームウェアをWASMにコンパイルしたんだ。幸いなことに、その頃にはファームウェアからハードウェア抽象化レイヤーを抽出する作業はほとんど終わってたんだ。つまり、モックする必要のある素敵なAPIがすでにできていて、ウェブサイト上の偽のセンサーやコントロールに接続するだけだったんだ。だから、その週の作業のほとんどは、実際にEmber.jsを使ってコンパイル済みのファームウェアの周りにシミュレーターアプリを構築し、それを統合することだった。そうすることで、ファームウェア自体のバグもいくつか見つかったんだけど、これは実際のデバイスでデバッグするよりもシミュレーターの方がずっと簡単だったよ。<br>HNモデレーターに連絡して、自分のポストを検証することをおすすめするよ。特に、すぐに試せないソフトウェア以外のものの場合はね。でも、そうでなくても、ほとんどのポスト／プロジェクトは、よりインタラクティブなデモから利益を得られると思うな。" userName="256dpi" createdAt="2025/06/08 13:32:37" color="#45d325">}}




{{<matomeQuote body="参考までに：（願わくば）ずっと安価で機能を絞ったバージョンのデバイスは役に立つと思う。空気質は世界の貧しい地域で最悪なんだ。ひどい空気汚染に苦しんでるけど、（僕らの基準からすれば）比較的楽な暮らしをしてる者として保証するけど、空気質センサーに200ドル+出すのは”手に入らない”の範疇に入るよ。送料を加えると300ドル近くなるだろうけど、それはこっちの月収の中央値とほぼ同じなんだ。<br>NO₂の測定ができるのは、PMしか測れない他のほとんどの代替品と比べて本当に興味深いデバイスだよ。理論的に手に入れられるガスセンサーは、それ自体で何百ドルもするからね。" userName="homebrewer" createdAt="2025/06/05 09:47:37" color="#45d325">}}




{{<matomeQuote body="AirGradientの大ファンだよ。以前は本当に安いDIYキットがあったんだ：PCB+エンクロージャーだけで19ドル（他の部品は持ってるかaliexpressで買う前提）か、全部込みで96ドルとか。今のキットは138ドルみたいだね。もしそれが高すぎるなら、彼らのウェブサイト[1]からKiCadとSTLファイルをダウンロードして、他の場所でPCBをプリントしてもらったり、ケースを3Dプリントしたり、残りの部品をaliexpressから調達したりすればもっと安くできるかもしれない。そうすれば、興味のないセンサーを省略して費用を節約できるし、後から追加することもできるかも。<br>[1] https://www.airgradient.com/documentation/overview/" userName="scottlamb" createdAt="2025/06/05 16:27:40" color="#785bff">}}




{{<matomeQuote body="うん、僕のAirGradient ONEは200ドルだったけど、家への投資としては最高の一つだよ。これを使って、ポリエステル服を乾かすと室内の空気質がどう悪くなるかとか、調理油の温度をもっとうまく管理することで焦がさないようにする方法とかを発見したんだ。" userName="jadbox" createdAt="2025/06/05 18:22:06" color="">}}




{{<matomeQuote body="ポリエステル服を乾かすとCO2が不健康なレベルまで放出されるの？" userName="sizzle" createdAt="2025/06/06 07:23:31" color="">}}




{{<matomeQuote body="たぶんPM（粒子状物質）のこと言ってるんじゃないかな。AirGradientはPM2.5を測れるよ。ちょうど洗濯機と乾燥機の近くに空気清浄機置いてるんだけど、プレフィルターにリント（糸くず）がめっちゃ溜まるね。" userName="eddyfromtheblok" createdAt="2025/06/06 07:32:50" color="">}}




{{<matomeQuote body="でもさ、俺のデバイスは問題ばっかだよ。信頼性カスだし、しょっちゅうフリーズするんだ。それに、OLED画面は暗闇では消灯してほしいんだよね。だからデバイスにVEML光センサーを追加したんだ。" userName="cyberax" createdAt="2025/06/05 21:14:17" color="">}}




{{<matomeQuote body="へー、面白いね。うちは色んな世代のデバイスを3つ、数年使ってるけど、全然フリーズしないんだよね。" userName="ted_dunning" createdAt="2025/06/06 00:34:11" color="">}}




{{<matomeQuote body="なんでだろうね。電源変えてみたり、電圧を公称5Vから6Vにちょっと上げてみたりもしたんだけど。" userName="cyberax" createdAt="2025/06/06 05:25:40" color="">}}




{{<matomeQuote body="俺はロックアップ（フリーズ）の問題は起きてないよ。LEDとか画面は最新ファームウェアでスケジュール設定（オフも含む）できるようになったらしいよ。" userName="andyfleming" createdAt="2025/06/06 06:13:28" color="">}}




{{<matomeQuote body="新しいデバイスに追加されたライトストリップ、楽しいよね。無料の常夜灯にもなるし。" userName="Aeolun" createdAt="2025/06/05 22:46:21" color="">}}




{{<matomeQuote body="これと同じセンサーを使ったデバイス、自作で持ってるんだ。違うレイアウトで電源システムも変えたバージョン（USB Cとか12V駆動）ね。JLPCBは関税の影響受けるのかな。新しい基板作りたいんだけど。" userName="isatty" createdAt="2025/06/06 01:36:27" color="#45d325">}}




{{<matomeQuote body="まず言っとくけど、製品設計、製造、一般向けにするのはマジで長くて大変な作業だし、この製品の小売価格はいろんな理由で十分妥当だと思うよ。そうは言っても、リストされてる主要部品を見ると、ESP32S3 ICは小売で$4、SCD41センサーは$21、SGP41センサーは$8、LPS22センサーは$4。これはすごい希望がある話だよね。こういうデバイスの主要機能の一部をオープンソースにして、開発途上国の経済状況に合った最小限のコストでホビイストが作れる可能性があるってことだから。" userName="crtified" createdAt="2025/06/05 10:07:32" color="#785bff">}}




{{<matomeQuote body="CrowdSupplyをアメリカ以外から使うと、関税が利用者にめちゃくちゃ大きな影響を与えるんだ。CrowdSupplyは全部Mouser US経由で出荷するから、アメリカ以外にいるなら製品をMouserに輸出する必要があるんだ。それで関税がかかるんだけど、その関税はCrowdSupplyが君に払う製品代金にかかってくるんだよ。もし製品の大部分が中国製（例えばPCBA）なら、製品の原産国は中国になる可能性が高い。だから、今かかってるヤバい関税に引っかかることになるだろうね。" userName="iamflimflam1" createdAt="2025/06/05 10:54:41" color="#ff5733">}}




{{<matomeQuote body="これは俺たちにとって乗り越えるのがめちゃくちゃ難しかった問題だよ。関税が発表される直前にキャンペーンを開始するところだったんだ。幸い、待つ機会があって助かったよ。CrowdSupplyは最高のプラットフォームだし、また使いたいけど、こういう状況だと全てアメリカに輸出する必要があるのが問題なんだよね。" userName="256dpi" createdAt="2025/06/05 12:14:21" color="#ff5c5c">}}




{{<matomeQuote body="そう、やられちゃったよ - 今まさに箱を発送しようとしてたところなんだ。幸い、たぶんトントンか（少なくとも大損はしない）、くらいで済むかな。" userName="iamflimflam1" createdAt="2025/06/05 15:18:24" color="">}}




{{<matomeQuote body="僕のはESP32 Rainbowっていうやつだよ - https://www.crowdsupply.com/atomic14/esp32-rainbow<br>UK原産だって主張できないか試してるんだけど、みんなに早く箱を送りたいから、たぶん（タリフを）受け入れるしかないかなって思ってる。" userName="iamflimflam1" createdAt="2025/06/05 15:44:38" color="">}}




{{<matomeQuote body="＞ ESP32S3 IC : 4ドル小売、SCD41 Sensor : 21ドル小売、SGP41 Sensor : 8ドル小売、LPS22 Sensor : 4ドル小売<br>専門家じゃないんだけど、もしこの部品を手に入れたら、これらを使って改造版を作るのってどれくらい簡単なの？<br>僕はUSにいないからタリフには影響されないんだ。" userName="FlyingSnake" createdAt="2025/06/05 14:52:20" color="">}}




{{<matomeQuote body="理論的には基本的な接続は簡単だよ、特に各センサーのブレークアウトボード版（例えばAdafruitのモジュールとか、値段は2〜3倍になるかもだけど）を使えばね。あとは各センサーをコントローラーチップのデータ線に繋いで、必要な電源を供給するだけ。プログラミングライブラリには、簡単なコードでセンサーの値を読み取るのに必要な基本機能が入ってる。でも、詳細にこだわって、実際に使える実用的なモデルや物理的なビルドにするのは、かなり大変な作業だよ。趣味でやるなら数ヶ月は覚悟した方がいいかもね。" userName="crtified" createdAt="2025/06/06 21:25:25" color="#ff5c5c">}}




{{<matomeQuote body="すごくシンプルだよ。例えば”site:github.com ESP32 SCD41”とかでググれば、各センサーを動かすための例はたくさん見つかる。すごく簡単にできるライブラリもあるよ：<br>SCD41: SparkFun_SCD4x_Arduino_Library.h<br>SGP41: SensirionI2CSgp41.h<br>LPS22: Adafruit_LPS2X.h<br>このAir Quality Monitorや似たようなやつの過去のHN（Hacker News）の議論を見てみるのもいいよ。チップ名（’SCD41’とか）でHNを検索することもできる。多くの人がセンサーは時間と共にドリフトするって言ってて、低濃度CO2の”calibration bottles”（校正ボトル）を買うのがちょっとしたハードルだって言ってるよ - そんなにめちゃくちゃ高いわけじゃないけど、一部の人にはちょっとした壁になるくらいには高いんだ。" userName="nerdsniper" createdAt="2025/06/05 15:03:24" color="#ff5c5c">}}




{{<matomeQuote body="いいね！試してみて、どこまで行けるかやってみるよ。こういう人たちが集まるDiscordチャンネルとか知ってる？<br>P.S. ちなみに、適切な（Aptな）ユーザー名だね。" userName="FlyingSnake" createdAt="2025/06/05 16:19:37" color="">}}




{{<matomeQuote body="超簡単だよ、esphomeを使ってみて。既製品を売ってるベンダーもいくつかあって、DIYしたいなら彼らの設定ファイルが公開されてる場合が多いよ。例えばApollo automationとかね。" userName="ajolly" createdAt="2025/06/06 02:41:54" color="#38d3d3">}}




{{<matomeQuote body="ハードウェア会社が、かなりポピュラーなセンサー（SCD41やSGP41含む）向けにブレークアウトボードを設計してるから、ブレッドボードで部品を組めて、I²C通信を設定できれば（例えばArduinoライブラリとかで）、間違いなく趣味家でもアクセス可能だよ。" userName="DoingIsLearning" createdAt="2025/06/05 14:59:52" color="">}}




{{<matomeQuote body="理解できるフィードバックをありがとう！製品の値段が高いってのは、完全に分かります。他の返信でも言ったんだけど、少量生産だと価格競争が難しいんだよね。とはいえ、将来的に、もっと多くの人が手に取りやすい、シンプルで安いバージョンを提供することも考えられるよ。" userName="256dpi" createdAt="2025/06/05 11:53:09" color="">}}




{{<matomeQuote body="このデバイス、マジでいいじゃん！<br>CO2センサーについて、SCD30とSCD41を比べたの？<br>カタログスペックだとSCD30の方が安定してるみたいだけど、実際のデータはどうだったか知りたいな。SCD41は毎週外に出さないといけないらしいし。" userName="SeasonalEnnui" createdAt="2025/06/05 20:56:18" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ありがとう！<br>SCD30は確かにいいセンサーでSCD41より優れてるんだけど、サイズ重視でSCD41にしたんだ。<br>Air Labには±50ppmの精度で十分だと思ってるよ。<br>自動校正使う人には外に出すよう促すようにするし、工場校正や手動校正で1週間以上の間隔で使えるようにする計画だよ。" userName="256dpi" createdAt="2025/06/05 21:39:55" color="#45d325">}}




{{<matomeQuote body="俺はAranetデバイス使ってるよ。https://www.aranet.com/en/home/products/aranet4-home<br>画面に数値がデカく表示されるのが良いんだ。離れててもすぐわかるし、ヤバい時は色が反転してメガネなしでも判断できる。<br>シミュレーター見る感じだと、君のデバイスは近づかないと見えなさそうかな。<br>点滅ライトも、点滅の間で見ちゃうと大丈夫って思っちゃうから、分かりにくいかもね。" userName="silversmith" createdAt="2025/06/05 08:31:04" color="#45d325">}}




{{<matomeQuote body="うん、そこは改善したいと思ってるよ！<br>今、実機を回すとスタンバイモードで縦表示になって、数値がデカく出るんだ。これはまだシミュレーターに入れてないんだけどね。<br>大きなフォントの横表示もちゃんとやる予定だよ！" userName="256dpi" createdAt="2025/06/05 09:29:48" color="#ff33a1">}}




{{<matomeQuote body="ナイスワーク！<br>https://sensor.community って知ってる？<br>ここもセンサーデザインがあるんだけど、オープンなインフラでセンサーデータを公開マップにまとめられるから、参考にどうかなと思って。" userName="zevon" createdAt="2025/06/05 08:37:04" color="#ff5c5c">}}




{{<matomeQuote body="Zigbeeに対応してくれたら、Home Assistantみたいなオープンなデータシステムと連携できるのに、って思う。<br>AirGradientっていう別の空気モニターはこれができないんだよね。" userName="xvfLJfx9" createdAt="2025/06/05 09:20:22" color="#45d325">}}




{{<matomeQuote body="AirGradientの連携は、ArduinoじゃなくてESPHomeのコンフィグ[1]を使うのがミソだよ！<br>そうすればHome Assistantとバッチリ繋がるんだ。<br>[1]例: https://github.com/MallocArray/airgradient_esphome" userName="scottlamb" createdAt="2025/06/05 16:32:27" color="#785bff">}}




{{<matomeQuote body="Air LabはHome AssistantとMQTTで連携できるよ。ここで確認してみて。<br>https://www.crowdsupply.com/networked-artifacts/air-lab/updates" userName="patrickk" createdAt="2025/06/05 09:38:29" color="#ff33a1">}}




{{<matomeQuote body="Matterプロトコルに対応するのもいい機能になりそう！<br>家の中の空気が外より悪かったら、エアコンとかファンを動かす、みたいな連携ができるかも。<br>Matterプロトコルには2023年に空気質センサーのサポートが追加されたみたいだよ。<br>https://csa-iot.org/newsroom/matter-1-2-arrives-with-nine-ne...<br>PM1, PM2.5とか色んなセンサー値を見れるようになって、位置情報に基づいたAQIも提供できるんだって！<br>詳しくはこちら: https://www.google.com/search?q=matter+protocol+Air+Quality+..." userName="westurner" createdAt="2025/06/05 21:35:35" color="#38d3d3">}}




{{<matomeQuote body="将来的にはMatterへの対応、絶対検討するつもりだよ。<br>そうすれば、みんなが使ってるホームオートメーションアプリとかと繋げられるようになるからね。" userName="256dpi" createdAt="2025/06/05 22:17:22" color="#38d3d3">}}




{{<matomeQuote body="ThreadとMatterを使うなら「Border Router」（ハブ）があった方がうまくいくみたいだよ。https:＼＼news.ycombinator.com＼item?id=32167256#32186688 このリンクも参考になるよ。" userName="westurner" createdAt="2025/06/07 14:47:19" color="">}}




{{<matomeQuote body="デザインいいね！特にe-inkディスプレイが好きだなあ。Qingping Air Monitor 2（https:＼＼qingping.co＼air-monitor-2＼）と比べて、Air Labのメリット・デメリット（接続性や測定精度とか）が知りたいな。" userName="stared" createdAt="2025/06/05 08:58:53" color="#ff5733">}}




{{<matomeQuote body="もっと多くの製品がこれくらい正直な紹介ページだったらいいのにね！このページは実際のデバイスが載ってるし、まるで「使う」みたいに感じられるよ。変なモデルとか見せかけのスクリーンショット、人を騙すようなデザインもなくて、製品そのものが語りかけてくるみたい。ウェブサイトのUIからも開発者のこだわりが伝わってくるよ。" userName="hereme888" createdAt="2025/06/05 09:00:38" color="">}}




{{<matomeQuote body="ビキニモデルの何が悪いの？俺は製品もビキニモデルもどっちも欲しいね！" userName="ninetyninenine" createdAt="2025/06/06 03:43:40" color="">}}




{{<matomeQuote body="すごくクールなプロジェクトだね！この分野にはもっと競合が必要だよ。Air Gradient Oneみたいに、これもオープンソースなんだね。おなじみのHN（Hacker News）の「でもさ」なんだけど、デフォルトでこの可愛いアニメーションが表示されて、すぐ飽きちゃうのに、実際の測定値は隅っこに小さいフォントで表示されて、センサーごとに手動で切り替えなきゃいけないのは謎すぎるよ。全部のセンサー値を大きいフォントで表示すればいいじゃん？" userName="poisonborz" createdAt="2025/06/05 08:44:02" color="#ff33a1">}}




{{<matomeQuote body="スクリーンセーバーがあって、時間と温度、ppm、湿度を表示するよ。あとね、Air Labの公式ファームウェアはオープンソースでGitHubにあるから、自分で機能を追加したりカスタマイズしたりできるよ！" userName="Timshel" createdAt="2025/06/05 09:41:24" color="#ff5733">}}




{{<matomeQuote body="ありがとう！他の人が言ってたみたいに、30秒操作しないとスクリーンセーバーになって、全ての値を一覧で表示するよ。レイアウトはまだ確定じゃなくて、もっと見やすく（大きく）したいと思ってるんだ。シミュレーターで試せるよ。" userName="256dpi" createdAt="2025/06/05 11:10:43" color="#ff5c5c">}}




{{<matomeQuote body="そうだね、ディスプレイのデザインは機能性より楽しさ優先って感じだね。" userName="rokkamokka" createdAt="2025/06/05 09:09:43" color="">}}




{{<matomeQuote body="これってオープンスタックのクールなところの一つだよね、きっと？" userName="pcl" createdAt="2025/06/05 09:32:48" color="">}}




{{<matomeQuote body="PlanTower PMS5003みたいな粒子センサーがないと作った意味があんまりないかも。2020年のNorCalの山火事の時、濃度が900+ μg/m^3だったから、ArduinoとPMS5003とLCDで作って使ったんだ。その頃、BlueAir 680iって空気清浄機も買ったけど、数年でファンが壊れる欠陥があったよ（交換部品は608ZZっていう汎用品だけどね）。" userName="burnt-resistor" createdAt="2025/06/06 09:35:03" color="#ff33a1">}}




{{<matomeQuote body="ハードウェア製品を体験するのにすごく良い方法だね！俺たちの空気質モニターでもやればよかったよ。[0][0] - https://www.open-seneca.org/" userName="pppone" createdAt="2025/06/05 09:57:39" color="">}}




{{<matomeQuote body="クールな製品だね！測定とか校正の経験があるから、システムの精度がマジで気になるわ。ラボの機器とテストした？それとも適切な公差で精度を出す予定？測定の不確かさとか個体差はどう？消費者向けだから完全な評価は期待しないけど、期待される性能は調べた？" userName="Eextra953" createdAt="2025/06/05 14:41:59" color="#785bff">}}




{{<matomeQuote body="ありがとう、良い質問！ちゃんとラボテストをすぐやる予定だよ。スイス連邦環境庁がパートナーで、そういう設備があるんだ。設計では、空気の流れとかをモデル化したソフトウェアを使ったよ。それまではSCD41とSGP41のデータシートに載ってることしか言えないんだ。" userName="256dpi" createdAt="2025/06/05 14:53:53" color="#38d3d3">}}




{{<matomeQuote body="シミュレーションはマジ良いアイデア！簡単に試せるのは最高だね。でも、使い方がイマイチかな。大事な情報が小さくて隅っこにあって、画面の他はアニメとか何もない。すぐ自動で画面が変わるし、ダッシュボード（小さい文字）に自分で行けなくて待たないとダメだった。ボタンの操作も分かりにくい（アニメの一部に出る）、慣れが必要で忘れそう。機能たくさんあるのは良いけど、一番大事な使い勝手がちょっと…。便利なデバイスだけど、この使い方だとね。使うのが結構大変だよ。" userName="mihaaly" createdAt="2025/06/06 07:20:54" color="#38d3d3">}}




{{<matomeQuote body="HNコミュニティのみんな、僕のプロジェクトに最高のフィードバックありがとう！値段とか空気質問題の体験談とか、全部のコメントが俺とかこの分野の他の人たちが製品を良くしたり、この大事なトピックへの意識を広めるのにマジ役立つよ。良い週末を！" userName="256dpi" createdAt="2025/06/06 16:06:42" color="">}}




{{<matomeQuote body="最近EcoBee Premiumに買い替えたんだけど、この製品と結構かぶってるよ。温度（複数センサー）、在室、湿度、CO2、VOxとか。良いのは、CO2/VOXでHRV（換気システム）を動かして新鮮な空気を取り込めること。これで常時稼働より省エネ。湿度で加湿器、在室＋温度でエアコンも制御。外部温度センサーで賢く暖房も使える。ただ記録するより、自動でアクション起こせる方がマジ実用的かな。" userName="bhouston" createdAt="2025/06/06 12:21:31" color="#785bff">}}




{{<matomeQuote body="ちょっと注意だけど、EcoBeeはCO2センサー使ってないよ、推測してるだけ。俺も同じサーモスタット使ってて、高いAirThings View Plusとは全然違う値だった。EcoBeeのサイト[1]見たら納得。「VOC測定に基づいてCO2を推定。直接測るんじゃなく、呼気中のVOCとCO2の相関で評価」だって。[1] https://support.ecobee.com/s/articles/air-quality-sensor-faq..." userName="sedgjh23" createdAt="2025/06/06 13:36:49" color="#ff33a1">}}




{{<matomeQuote body="それはまあフェアだと思うよ、だって俺は普通に人間が呼吸してる家で、工業的にVOCが出る場所じゃないからね。ちなみに、値はどれくらい違ったの？VOCに関係すること何かしてた？実際より、CO2かVOCか、どっちの値が低く出ちゃってたの？" userName="bhouston" createdAt="2025/06/06 15:31:46" color="">}}




{{<matomeQuote body="良いアイデアだけど、Aranet4（200USDくらい）と比べると安くないね。ESP32は電力消費的にどうなんだろ、良くないかも。" userName="red523" createdAt="2025/06/05 09:32:10" color="#ff5733">}}




{{<matomeQuote body="良い代替案ある？俺の理解（違ったら教えて！）だと、ESP32の電力はネット接続してアップロードする時が一番使うから、接続が少ないほど省エネって考え。ePaperディスプレイも低電力で良いはず。データ集めるだけなら、モバイルバッテリーで数週間いけるんじゃない？訂正いつでも歓迎。ちょうど先月、自分で空気質センサー作る部品買ったとこだから、この投稿がHNに出てマジラッキー。車に付けて移動中にデータ集めたいんだ。このスレッド、マジ良い情報だらけだね。" userName="benchly" createdAt="2025/06/05 10:58:02" color="#785bff">}}




{{<matomeQuote body="OPはたぶんESP32をNRFチップと比べてるんだろ。NRFはコイン電池で1mA以下でBluetoothできるけど、ESP32は寝てないときは～50mA使うからな。でもまあ、ほとんどディープスリープして電池節約できるのはラッキー。ESP32を選んだのは、SDKとかArduinoとかソフトのサポートがすごいから。ファームウェア改造したいとか自作したい人でもすぐ始められるようにね。" userName="256dpi" createdAt="2025/06/05 11:42:49" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="賢い選択だね。初心者でも扱いやすいし、調べたいときも情報が豊富だから困らない。もしお金に余裕があったら、そのデバイス今すぐ買いたいところだよ（残念ながら、今は失業中なんだ...）。" userName="benchly" createdAt="2025/06/05 13:53:16" color="">}}




{{<matomeQuote body="ベータテスターをいつも募集してるよ。喜んでデバイス送るから、連絡先はここ↓で見つけてね。 https://networkedartifacts.com/about" userName="256dpi" createdAt="2025/06/05 14:27:00" color="#45d325">}}




{{<matomeQuote body="総合的な感想ね：<br>・こういうのが欲しいと思ってた<br>・自分で雑な空気質モニターは作ったことあるけど、買う方がいいな<br>・オープンなのがマジで好き<br>・形もいい。持ち運べるのが最高。たとえば「会議室が45分経つとどうなるか」とか知りたいじゃん。<br>・PM2.5も見たいな～ AirGradientの方が求めてるのに近いかも" userName="raudette" createdAt="2025/06/05 15:57:36" color="#38d3d3">}}




{{<matomeQuote body="PM2.5は、こんなモバイルでコンパクトな形に小型化するのはかなり難しいんだよ。ファンとか必要だからね。" userName="Havoc" createdAt="2025/06/05 16:21:30" color="">}}




{{<matomeQuote body="いや、そうでもないよ。これ見て。 https://www.bosch-sensortec.com/products/environmental-senso... （USBキーに収まるらしいよ→ https://www2.purpleair.com/products/purpleair-pixel ）" userName="formerly_proven" createdAt="2025/06/05 16:46:46" color="#ff33a1">}}




{{<matomeQuote body="へぇ、いいね。ウチもPM2.5測れるやつ欲しいと思ってたんだ。でも今持ってるやつ、ファンがうるさくてさ。リンクありがとう！" userName="Havoc" createdAt="2025/06/05 17:40:21" color="">}}




{{<matomeQuote body="誰か教えてよ、なんで空気の質を測るのってこんなに高いの？正確に測れるデバイス、どれもこれも超高いじゃん。センサーがそんなに高いの？？" userName="deanc" createdAt="2025/06/05 12:38:20" color="">}}




{{<matomeQuote body="たぶんCO₂センサーが高いんだと思うよ。" userName="est" createdAt="2025/06/05 14:32:18" color="">}}




{{<matomeQuote body="うん、でもなんでCO₂センサーってそんなに高いの？？" userName="deanc" createdAt="2025/06/05 19:19:48" color="">}}




{{<matomeQuote body="これ系のチェッカーの仕組みってさ、光を当ててガスの吸収率の違いを見たり、特定の光を当ててガスがちょっと温まる時に出る音を聞いたりするんだって。吸収率の違いはほんの少しだから、光が進む距離を長くする必要があって、だから小さくするのが大変なんだって。音で検知する方も、ほんの少しの熱で出るかすかな音を拾うから、作るのがめっちゃ難しいらしい。<br>それがさ、大量に買うと20ドルくらいで手に入るって、マジで信じられないくらい安いよね！" userName="ted_dunning" createdAt="2025/06/06 00:43:45" color="#38d3d3">}}




{{<matomeQuote body="これ超いいじゃん！家族や友達みんなに買ってあげたいくらい！<br>ちょっと気になったんだけどさ、これって細かい粒子（PM）とかも測れるの？もし無理なら、なんでか知りたいな。一般的なAQIも同じ質問。前に持ってた（多分質悪かった）ポータブルAQIモニターは、細かい粒子もレベル分けしてくれて、火事の季節とかPMが酷い時マジで便利だったからさ（Nor Calの話ね）。まあ、この辺詳しくないんだけどね。<br>とにかく、このプロジェクトはマジで最高だよ！超気に入った！" userName="pkdpic" createdAt="2025/06/05 15:48:41" color="#45d325">}}




{{<matomeQuote body="他のコメントでも言ってる通り、今はPMセンサーは内蔵されてないんだ。でも、後ろに拡張ポートをつけたから、SEN54みたいなPMセンサーを繋げられるようにしてあるよ。ファームウェアでもちゃんと使えるようにする予定だし、デザインに合わせたキットも近いうちに出せるかも！" userName="256dpi" createdAt="2025/06/05 21:45:48" color="#ff5c5c">}}




{{<matomeQuote body="これは粒子の検出はできないよ。" userName="colechristensen" createdAt="2025/06/05 15:50:06" color="">}}




{{<matomeQuote body="他のシステム部品から出る熱とかって、センサーの数値に何か影響したりする？例えば、時間経って熱が安定した後の温度のずれとかどうかな？" userName="orion138" createdAt="2025/06/05 15:14:32" color="#785bff">}}




{{<matomeQuote body="まだちゃんとテストはできてないんだけど（他のコメントでも言ってるけど、実験室でのテストの話ね）、今のところ普通に使ってる分には影響は見てないんだ。充電してる時にちょっとだけ（1°Cくらい）上がったのを見ただけ。センサーを電源管理のところからできるだけ離すように結構気を使ったんだよ。ディスプレイの切り欠きも役に立ってる。もっと詳しい情報はここにあるよ！https://www.crowdsupply.com/networked-artifacts/air-lab/upda..." userName="256dpi" createdAt="2025/06/05 15:21:47" color="#38d3d3">}}




{{<matomeQuote body="へぇ、これ面白いね。大麻の栽培施設から出る匂いを測れるやつが欲しいんだ。<br>隣人が「ウチの施設は匂い出てない」って信じてるんだけど、半径1マイル以内の近所の人たちは皆そう思ってなくてさ。隣人はちゃんと測定して影響を減らしたいって言ってくれてるんだけど、私には「匂いがする」っていう以外の確実なデータを集める方法がなくて。風向きにもよるんだけど、結構 constant に匂うんだよね。" userName="clvx" createdAt="2025/06/05 12:41:04" color="">}}




{{<matomeQuote body="Vocセンサーがいいんじゃないかな。大体の匂いをカバーしてるよ。<br>もし硫黄の匂いなら、何か分解してるものから出る下水ガスか肥料の可能性もあるね（または施設近くの下水の問題かも）。そういう時は天然ガス／プロパン検知器が使えるはず。これは無臭のメタンも拾うけど、たぶん同じ発生源から出てるだろうし。" userName="hedora" createdAt="2025/06/05 17:36:00" color="#ff33a1">}}




{{<matomeQuote body="Power over Ethernet（PoE）の機能とか、予定あるの？" userName="Siecje" createdAt="2025/06/05 10:48:42" color="">}}




{{<matomeQuote body="PoEからUSB-Cに電源を供給できる小さいアダプターがあるんだって。これを使えばAir Labにも給電できるかもね。" userName="jonah" createdAt="2025/06/05 16:44:50" color="">}}




{{<matomeQuote body="もっと安くて（50€くらい）粒子状物質を測れる”airrohr”っていうDIYプロジェクトがあるよ！<br>https://sensor.community/en/sensors/airrohr/<br>世界中に1万個以上のセンサーがあるんだってさ。" userName="Tepix" createdAt="2025/06/06 10:57:13" color="#45d325">}}




{{<matomeQuote body="GitHubに似たような空気モニタのプロジェクトがあったよ。<br>https://github.com/benb0jangles/Air_Quality_monitor" userName="benbojangles" createdAt="2025/06/05 13:16:53" color="">}}




{{<matomeQuote body="さっきのGitHubのプロジェクトは、部品代が50ドルくらいだったと思うな。" userName="benbojangles" createdAt="2025/06/05 13:18:02" color="">}}




{{<matomeQuote body="しかも、OLEDだけじゃなくてGitHubページにもデータを表示できるみたいだよ。" userName="benbojangles" createdAt="2025/06/05 13:20:27" color="">}}




{{<matomeQuote body="こんにちは、indoorco2map.comの開発者です。これはみんなでCO2データを集めるアプリプロジェクトなんだ。Air Labをサポートしたいんだけど、BLEでデータ取る方法のドキュメントある？CO2履歴データが欲しいな。あと、Aranet4みたいに気圧でCO2値を補正する？それとも高度が変わったら手動で調整がいる？<br>https://github.com/AurelWu/IndoorCO2AppMAUI" userName="aurelwu" createdAt="2025/06/05 09:49:34" color="#ff5c5c">}}




{{<matomeQuote body="indoorco2map.com、いいよね！Air Labのデータをそこに送れるようにするよ！センサー値は全部BLEで取れるようにするつもり（Aranetみたいにね）。それに、履歴全部を取れるAPIもあるんだ。詳しくは近いうちにウェブサイトのマニュアル見てね。CO2値の気圧補正はまだだけど、出荷前には対応を検討するよ。" userName="256dpi" createdAt="2025/06/05 22:14:48" color="#ff33a1">}}




{{<matomeQuote body="安くて面白いセンサーをesp32に繋いで使ってるんだけど、VOCとかCO2センサーの精度は正直イマイチなんだ。ラボじゃないとちゃんと校正できないしね。個人的には、この辺の安いセンサー技術はまだこれからだと思うな。" userName="bethekidyouwant" createdAt="2025/06/05 14:54:26" color="#ff5733">}}




{{<matomeQuote body="AirGradientのCO2センサーは、たまに外の新鮮な空気に当てると自動校正されるはずだけど、定期的にやらないと値がずれちゃうみたい。ずれてるかどうかも、いつ校正されたかも分からないのが難点だね。VOCはもっと難しくて、校正も値の解釈も大変。あの値はあんまり信用できないかな。こういうモニターって注意点がちゃんと伝わってないから、誤解する人が多そう。個人的には、粒子状物質が一番大事だと思うんだ。あれはCO2やVOCみたいに校正で悩むことがないからね。僕のAirGradientも粒子状物質でアラート設定してるよ。" userName="vosper" createdAt="2025/06/05 15:38:23" color="#ff33a1">}}




{{<matomeQuote body="ちゃんとしたCO2 NDIRセンサーは、測定用の外気チャンバーと、自動校正用の参照ガスが入った密閉チャンバーの二つを使うんだよ。追記：AirGradientは安いやつを使ってるっぽいね。" userName="formerly_proven" createdAt="2025/06/05 16:43:26" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
