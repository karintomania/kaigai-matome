+++
date = '2025-11-10T00:00:00'
months = '2025/11'
draft = false
title = '幻のUnix V4テープが見つかった！C言語初のOSは復旧できるのか'
tags = ["Unix", "OS", "歴史", "テープ", "復旧"]
featureimage = 'thumbnails/cyan1.jpg'
+++

> 幻のUnix V4テープが見つかった！C言語初のOSは復旧できるのか

引用元：[https://news.ycombinator.com/item?id=45840321](https://news.ycombinator.com/item?id=45840321)




{{<matomeQuote body="https://oldbytes.space/@bitsavers/115505135441862982<br>https://www.theregister.com/2025/11/07/unix_fourth_edition_t...<br>https://www.tuhs.org/pipermail/tuhs/2025-November/032758.htm..." userName="greatquux" createdAt="2025/11/06 20:57:09" color="">}}




{{<matomeQuote body="みんなこれの重大さに気づいてないみたいだから、昨日書いた解説記事をシェアするね！<br>https://www.theregister.com/2025/11/07/unix_fourth_edition_t...<br>Unix V4は失われたままだったけど、C言語で書かれた最初のバージョンなんだ。" userName="lproven" createdAt="2025/11/08 14:55:48" color="#45d325">}}




{{<matomeQuote body="記事にあった、テープから100GBくらいのRAMに情報ぶち込んでソフトウェアで解析するっていう復旧手順が気になったよ。<br>この解析ソフトウェアのGitHubページにある動画も面白いね：https://www.youtube.com/watch?v=7YoolSAHR5w&t=4200s<br>[1] https://github.com/LenShustek/readtape" userName="nullhole" createdAt="2025/11/11 00:14:39" color="#45d325">}}




{{<matomeQuote body="テープはリードヘッドを2回通るともうダメになるかもしれないから、アナログ波形をできるだけ忠実に捉えるのが大事だね。" userName="kragen" createdAt="2025/11/11 02:26:04" color="">}}




{{<matomeQuote body="最初にテープを『焼く』のが適してるのかな？オーディオ復元ではよくあるけど、コンピュータテープにも通用するのか気になるね。焼き方についてはこれ見てね：https://en.wikipedia.org/wiki/Sticky-shed_syndrome" userName="hunter2_" createdAt="2025/11/11 05:28:35" color="#785bff">}}




{{<matomeQuote body="テープのことあんまり知らないけど、投稿に『焼くのは1日かかるから、やりたくないな』って書いてあるから、やっぱり関係あるみたいだね。" userName="debugnik" createdAt="2025/11/11 07:50:00" color="">}}




{{<matomeQuote body="『これは珍しいから、プロジェクトキューのほぼ一番上に持ってきたよ』だってさ。<br>コンピュータ歴史博物館のソフトウェアライブラリアンがUnix V4より優先するほど最近見つけたものって何なんだろうね。アトランティアンUnixのコピーとか？" userName="avar" createdAt="2025/11/11 11:49:12" color="">}}




{{<matomeQuote body="もしくは、単にFIFOキューの定義通りってことじゃない？作業をFILOスタックで整理するなんて、それはそれで大胆な選択だけど…。" userName="mbreese" createdAt="2025/11/11 14:19:30" color="">}}




{{<matomeQuote body="「最優先」って言ってるなら、単にFIFO（先入れ先出し）じゃないし、優先順位があるはずだよ。たぶん、作業中の案件があるのと、古い未知の形式のテープを読み込むための準備とか調整が必要なんだろうね。" userName="rtkwe" createdAt="2025/11/11 14:39:13" color="#ff5733">}}




{{<matomeQuote body="うん、たぶん、進行中の作業を先に終わらせるのがいいんだろうね。" userName="nish__" createdAt="2025/11/11 14:43:21" color="">}}




{{<matomeQuote body="すごく古くてデリケートなものが多いし、作業スペースも限られてるから、別のデジタル化プロジェクトを中断して、テープフラックスデジタイザを設置したり、この種のテープに合う正しい機材を手配したりする必要があるんじゃないかな。" userName="rtkwe" createdAt="2025/11/11 15:44:54" color="#45d325">}}




{{<matomeQuote body="面白い記事だったよ。これってやっぱり一大イベントだよね。復元に努力する価値は絶対あると思う！" userName="mongol" createdAt="2025/11/10 22:53:03" color="">}}




{{<matomeQuote body="宇宙のどこかに、このテープが劣化や磁化から守られて、ちゃんと読み取れて、永遠に保存できる生データに抽出されますように！（祈り）当時のテープって、長年の保存には耐えてないからね。保管環境次第だよ。" userName="reactordev" createdAt="2025/11/10 23:32:13" color="">}}




{{<matomeQuote body="1980年代以前のVHSやカセットテープが深刻に劣化し始める時期が近づいてるって読んだ記憶があるな。もしVHSやカムコーダーのテープをたくさん持ってるなら、古い家族のビデオを保存する時間はもうあまりないかもね…さもなければ、画像や音声の劣化を受け入れるしかないよ。" userName="dmix" createdAt="2025/11/11 01:43:45" color="">}}




{{<matomeQuote body="VHSプレーヤーを改造して生データを抽出し、現代の信号処理で驚くほど高品質な映像を復元してる人がいるよ。1987年のThe CureのVHS記録の復元を見てみて！https://www.youtube.com/watch?v=ks1wE_NXWv8<br>使ってるソフトウェアはこれ。https://github.com/oyvindln/vhs-decode<br>今回のテープも似たアナログ信号だろうし、記事によるとCHMのAl Kossowさんが、ヘッド読み取りアンプから取り出して高速A/DコンバーターでRAMにダンプ、Len Shustekさんのプログラムhttps://github.com/LenShustek/readtapeで解析するって言ってるよ。70年代の9トラックテープだから復旧できる可能性は高いみたい。" userName="bigiain" createdAt="2025/11/11 22:47:58" color="#ff5733">}}




{{<matomeQuote body="最近この問題に直面したんだ。VCRを見つけるのがもう大変で、全然ないんだよ。手動トラッキングができる機種はさらに珍しいか、高すぎて買えないし、トラックが劣化してる場合はそれが必要になる可能性が高いんだよね。" userName="superxpro12" createdAt="2025/11/11 16:00:28" color="">}}




{{<matomeQuote body="データ8ビットごとにパリティビットが1つあるから、そこそこ頑丈だよ。たまにビットが反転してもリカバリは簡単だしね。それに、欠損したファイルがあっても他のソースを参照できることを考えれば、高品質な機械で読み取れれば復旧の可能性はかなり高いと思う。残念ながら、Unix 7までチェックサムは一般的じゃなかったから、ソフトウェアレベルの整合性チェックはないだろうね。テープが密閉容器に保管されてたのはすごく良い兆候だよ。古いテープは実は後世代のテープより丈夫で、湿気にさらされても同じようには劣化しないんだ。" userName="tgtweak" createdAt="2025/11/11 13:44:24" color="#ff5c5c">}}




{{<matomeQuote body="Mastodonで、Andrew Tannenbaumの「高速道路を爆走するステーションワゴンいっぱいのテープの帯域幅を過小評価するな」って話が出てたんだけど、現代版を考えてみたよ。Nintendo Switchで売ってる1TBのmicro-SDカードで計算したら、輸送用コンテナを満タンにすると約400エクサバイトのデータが入るんだって！（SDカードは1TBで1.092 x 1.499 x 0.102 CM、コンテナは1203 x 235 x 239 CMで、SDカードを4億枚入れられる計算）" userName="whizzter" createdAt="2025/11/11 11:17:50" color="">}}




{{<matomeQuote body="マイクロSDカードを満載したコンテナは、梱包、運送許可、重さ、荷崩れ、データ損失など、実用面で問題だらけ。道路の振動でカードが散らばったり、下のカードが圧死したりして、結局データ復旧は失敗するだろう、という皮肉な話だよ。誰もmicro-SDカードの寸法とコンテナのサイズが合わないことなんて考えてない。URL: https://www.discovercontainers.com/wp-content/uploads/contai..." userName="avar" createdAt="2025/11/11 12:01:57" color="#785bff">}}




{{<matomeQuote body="100メトリックトンなんて、スウェーデンのlogging trucksやオーストラリアのroad trainsに比べたら大したことないよ。彼らはもっと重い荷物を運んでるんだ。Finnsは環境のために100トンを試してるしね。でも、4億枚のSD-cardsを運ぶのは、やっぱりバカげた実験だよね。" userName="whizzter" createdAt="2025/11/11 13:06:23" color="#ff5c5c">}}




{{<matomeQuote body="重量制限はpublic roadsの話だよ。Private logging roadsなら何トンでも運べるんだ。Canadaには100トン以上を日常的に運ぶすごいrigsがあるから、Hayes/Pacific logging truckで画像検索してみて。" userName="MisterTea" createdAt="2025/11/11 17:17:01" color="">}}




{{<matomeQuote body="micro-SD cardをHDDsに置き換えたら、超巨大なデータを扱う現実世界の方法とそっくりだよ。あと、梱包に永遠にかかるって話はlatencyであって、bandwidthとは関係ないんだ。" userName="gf000" createdAt="2025/11/11 12:16:03" color="#ff5c5c">}}




{{<matomeQuote body="HDDを運ぼうとしたら、trucker’s unionが拒否したんだ。道路のvibrationでplattersが回って、cumulative gyroscopic forcesでtruckがderailするのを心配してるらしい。ChatGPTは「should be fine」って言ったのに、unionは信用しないんだよ。どうしたらいい？" userName="avar" createdAt="2025/11/11 12:49:46" color="#45d325">}}




{{<matomeQuote body="AWSには、実際に巨大なデータをtruckで運ぶ「AWS Snowmobile」っていうサービスがあったんだよ。これはabsolutely not a fantasy。" userName="gf000" createdAt="2025/11/11 16:57:46" color="#ff33a1">}}




{{<matomeQuote body="AWS Snowmobileはdiscontinuedだけど、AWS Snowballっていう200TBの小型版はまだあるよ。もし100PB必要なら、特別なSnowmobile truckをmanagingするより、Snowballを500個運ぶ方がずっとeasier for everyone involvedじゃないかな。" userName="avar" createdAt="2025/11/11 18:25:13" color="#45d325">}}




{{<matomeQuote body="Dans Dataが15年前に、microSD cardsのデータ容量と輸送について計算してたよ。車のcargo capacityなら17 exabytes、shipping containerなら575 exabytesも積めるって。インターネット全体を保存するには250個のshipping containersが必要で、parallel copyには230万のreadersが必要だってさ。URL: https://web.archive.org/web/20250313181659/http://dansdata.c..." userName="bigiain" createdAt="2025/11/11 23:44:32" color="#ff5733">}}




{{<matomeQuote body="packing problemについてだけど、25億ドルもmicro-SD cardsに使う人が、SD card manufacturerに相談してこの問題を解決できないなんて、ちょっとabsurdじゃないかな。" userName="avar" createdAt="2025/11/13 09:33:09" color="#ff5c5c">}}




{{<matomeQuote body="俺も昔digital hoarderだったんだけど、海外引っ越しの時に120 HDs（約600TB）をcontainerで送ったんだ。着くまで2-3ヶ月かかったけど、全部無事だったよ。転送レート換算だと、だいたいconsistent 80MB/s (close to gigabit)くらいが必要だったな。" userName="compsciphd" createdAt="2025/11/11 21:09:02" color="#ff5733">}}




{{<matomeQuote body="2007年にソロとオフィス間で1.5GB/sも出したんだぜ。サーバーをバイクの背中にくくりつけてね。https://flic.kr/p/4bQ8jz" userName="bigiain" createdAt="2025/11/12 00:03:21" color="#45d325">}}




{{<matomeQuote body="関連するXKCDのWhat-ifだよ。見てみて！https://what-if.xkcd.com/31/" userName="preisschild" createdAt="2025/11/12 14:22:51" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="70年代のテープの知識や自信は正直ないな。将来は古いフロッピーやCD、IDE/ATAディスクを読み込むのを助けることになるのかな、なんて考えちゃうよ。ATタワーをパンパン叩きながらさ。" userName="accrual" createdAt="2025/11/10 22:56:59" color="">}}




{{<matomeQuote body="古いフロッピーは使えるだろうけど、そのPentiumマシンは無理だよ。数百GBのRAMと超高速IOバスが必要だからね。磁気メディアはアナログ録音として、最小の詳細までサンプリングするフラックスイメージ作成が今のスタンダードなんだ。後でソフトウェアで解析するんだよ。テープやドライブヘッドを高速デジタイザに直接つなぐだけ。Al Kossowもこのテープでその計画みたいだね。CDはちゃんと作られてたら人類文明より長持ちするだろうって。https://www.tuhs.org/pipermail/tuhs/2025-November/032765.htm" userName="retrac" createdAt="2025/11/10 23:12:39" color="#45d325">}}




{{<matomeQuote body="CDはね、ちゃんとしたやつでも、書き込み可能なのは数年で読めなくなるんだよ。俺も何年も前に、ダブルバックアップしてたプロジェクトを含め、数えきれないほどダメにした。ブランドディスクで書き込み・検証済み、適切に保存して、太陽光も湿気も何もなかったのに。ただ時間で全部ダメになったんだ。他の人の怖い話も聞いて、CDは使うのを完全にやめたよ。" userName="squarefoot" createdAt="2025/11/11 07:12:44" color="#ff5733">}}




{{<matomeQuote body="CDやDVDを朝食に食べるカビのことも忘れちゃダメだよ。俺、それで傷んだDVDをいくつか見たことあるもん。" userName="Zardoz84" createdAt="2025/11/11 19:07:43" color="">}}




{{<matomeQuote body="CDが人類文明より長持ちするっていうけど、記録可能なCD-RやDVD-Rはそんなに長くもたないよ。そして、そういうのがオリジナルバージョンのソフトウェアとか、失いたくないデータの唯一のコピーだったりするんだ。製造されたCDやDVDは商業用で、ほとんど希少じゃないしね。" userName="fsckboy" createdAt="2025/11/10 23:32:49" color="#38d3d3">}}




{{<matomeQuote body="うん、良い区別だね。記録可能なメディアは、安定性の低い染料や構造だから、個人が保存したデータが入ってる可能性が高いんだ。長持ちする高品質なマスター光学メディアは、たぶん大量生産されてて、コピーもたくさんあるし、もしかしたら保存状態の良いソースも別にあるかもね。2000年代初頭のミックステープ（mix CD）とかは、染料の問題でたくさん失われちゃったんだろうな。" userName="accrual" createdAt="2025/11/11 00:37:17" color="#ff5733">}}




{{<matomeQuote body="古いデータの復旧には役立たないけど、Blu-rayは今もっと良くなってるよ。少なくとも質の良いディスクを買えばね。寿命は数十年から100年、M-discなら500年とも言われてる。M-discの場合は、有機染料じゃないから劣化の問題を避けられるんだ。" userName="quantummagic" createdAt="2025/11/11 03:13:42" color="#45d325">}}




{{<matomeQuote body="構造が不安定だから、フォーマットには寛大なエラー訂正機能が組み込まれてるんだよ。" userName="themafia" createdAt="2025/11/11 05:32:08" color="">}}




{{<matomeQuote body="「ちゃんと作られた」って言葉、大事だよね。90年代後半の安物CDはディスク rot でSega SaturnやAKAI/Zero-GのCDみたいにもう読めないのがたくさんあるんだ。安価な光メディアが多かったからね。" userName="easyThrowaway" createdAt="2025/11/11 11:09:05" color="#ff33a1">}}




{{<matomeQuote body="1970年代から80年代の「ちゃんと作られた」CDですら、劣化が始まってるみたい。45〜50年は持つけど、「永遠」ではないってことだね。" userName="WorldMaker" createdAt="2025/11/11 16:32:23" color="#45d325">}}




{{<matomeQuote body="自分で焼いたメディアはもっと寿命が短いよ。容量が増えるにつれてストレージは一時的になってるけど、LTOは例外で耐久性があるんだ。LTOは永遠とまではいかなくても、世代を超えてデータを移せるくらい長持ちするみたいだね。" userName="noir_lord" createdAt="2025/11/11 11:31:59" color="#ff5733">}}




{{<matomeQuote body="後から考えれば当たり前だけど、今まで気づかなかったよ！教えてくれてありがとう。" userName="padjo" createdAt="2025/11/11 09:52:55" color="">}}




{{<matomeQuote body="個人的な経験だけど、大学でデータ全部をDVDにバックアップしてたんだ。10年経っても劣化はゼロ。理想的な環境だったのが大きかったのかもね。全部で4000枚以上のDVDがあって、冗長コピーもあったんだよ。" userName="codezero" createdAt="2025/11/11 00:24:08" color="#ff33a1">}}




{{<matomeQuote body="調達担当者やHVAC担当者には感謝だね。政府機関の緊急時キットで、光メディアの染料がダメになったり、Pelicanケースのフォームがガス出してメディアと反応したりするトラブルがあったんだ。" userName="Spooky23" createdAt="2025/11/11 01:11:51" color="#38d3d3">}}




{{<matomeQuote body="長年調達担当者だったけど、特別なHVAC担当者はいなかったよ。Neweggとかで一番高いDVDを買ってたから、それが良かったのかもね。もちろん個人的な経験談だけど、劣化しなかったのは事実さ。" userName="codezero" createdAt="2025/11/11 06:00:02" color="">}}




{{<matomeQuote body="Pelicanケースに光メディアを保管するのは興味深いね。でも、ケース内のフォームとメディアの染料の反応が気になるよ。光メディアはラベルをしっかり貼って、金属か段ボールの箱に入れ、地下室の棚に保管するのが一番良さそうだね。" userName="accrual" createdAt="2025/11/11 01:26:50" color="#785bff">}}




{{<matomeQuote body="災害対応キットを作るプロジェクトは楽しかったよ。MFPやノートPC、INMARSAT端末とかをCiscoスイッチにつないでたんだ。KnoppixみたいなOSを使って、どんなPCでも使えるようにしてた。CDやDVDもたくさん使ったけど、予想以上にメディアのトラブルが多かったんだよね。" userName="Spooky23" createdAt="2025/11/11 02:05:17" color="#45d325">}}




{{<matomeQuote body="1998～2005年頃に家で焼いたCDやDVDは、最近でもほとんど読めたよ。ファイル形式とか古いソフトの問題の方が大きかったね。でも、新聞社で働いてた時、アーカイブ用のCDが全く読めなかったことがあったんだ。テストも複製もしてなかったみたいでね。" userName="hmstx" createdAt="2025/11/11 11:32:43" color="#45d325">}}




{{<matomeQuote body="Coolな話だな！俺は90年代後半から2000年代初頭にかけての、ユーザーが焼いたCDメディアで、再生できるものと読めないものが混在してるのを見てきたよ。メディアの品質、焼き込みやドライブ、レーザーの質、そして一時的な保管状態に間違いなく左右されるんだ。俺の一番古いディスクは、2000年より前に幼馴染が俺のために作ってくれた、明るい青のVerbatimのディスクだ。ビットパーフェクトなコピーは持ってるけど、実際のディスクも最後に2025年にテストした時、まだちゃんと読めたんだぜ。" userName="accrual" createdAt="2025/11/11 00:40:26" color="#45d325">}}




{{<matomeQuote body="うん、品質は間違いなく重要な要素だね、可能な限りにおいて。俺たちは2008年以前にNSFの資金があったから、高品質なメディアに十分な予算があったんだ。費用は惜しまなかったよ。俺はカンファレンスのためにSFで一泊60ドルのホステルに泊まってたけど、書き換え可能なDVDは当時買える最高のやつだったんだ、笑。" userName="codezero" createdAt="2025/11/11 06:02:23" color="">}}




{{<matomeQuote body="フロッピーディスクを磁気転送レベルで保存するには、AppleSauce、Greaseweazle、Kryofluxみたいなフロッピーディスクコントローラーを見てみるといいよ。" userName="satiated_grue" createdAt="2025/11/11 16:45:39" color="#ff5733">}}




{{<matomeQuote body="現代の歴史って、こうやって見つかることが多いみたいだね。最近ボストンの音楽シーンでちょっと有名な人と話す機会があったんだけど、彼は寝室の引き出しで見つけたバンドのオリジナル1985年のデモを、AIで信号をクリーンアップして再出版したんだって。" userName="don-code" createdAt="2025/11/11 02:52:35" color="">}}




{{<matomeQuote body="昔、tuhs.orgでC言語の前の言語、Bのオリジナルコンパイラのソースコードを探したことがあったのを覚えてるな。4th editionにはないはずなんだ。どこかにコピーがないか今でも気になるよ。現代のものはいくつかあるのは知ってるけど、オリジナルを見るのは面白そうだ。" userName="lexurco" createdAt="2025/11/11 06:01:39" color="#38d3d3">}}




{{<matomeQuote body="BコンパイラはTMG-Compiler-Compilerで書かれたんだ。TMG (Transmogrifier) はここを見てくれ→https://github.com/amakukha/tmg と https://news.ycombinator.com/item?id=26722097 。<br>“Douglas McIlroyはTMGを初期バージョンのUnixに移植した。Ken Thompsonによると、McIlroyはTMGをTMGで紙に書き、”自分の紙に自分の紙を与え”、ThompsonのPDP-7で動くUnixシステム上で入力しアセンブルしたアセンブリ言語を手でコンパイルした。”<br>俺たちは値しない、友よ。俺たちは値しない。”<br>たくさんの情報はあるけど、ソースはあまりないね。“最初のBコンパイラは1969年頃、Ken ThompsonがTMG言語で書いた。Thompsonは当初TMGコンパイラを使ってPDP-7用のBのバージョンを作り、スレッドコードを生成した。Bコンパイラは後にBCPLで書き直され、GE 635メインフレームでクロスコンパイルされてオブジェクトコードが生成され、その後B自身で書き直されて自己ホスティングコンパイラになった。”<br>ってことは、BコンパイラはGE 635/MulticsをOSとして使ってたってことか。" userName="ForOldHack" createdAt="2025/11/11 06:34:22" color="#ff33a1">}}




{{<matomeQuote body="あ、見つけちゃったよ、投稿した後にね…https://retrocomputingforum.com/t/b-a-simple-interpreter-com..." userName="ForOldHack" createdAt="2025/11/11 06:36:23" color="#ff33a1">}}




{{<matomeQuote body="Mastodonに3年いたけどアカウントを消したよ。Charlie Kirkが殺されたってニュースで、皆がお祝いするのを見たくなくてフィルタかけようとした時、Mastodonは僕の心の健康に悪いって気づいたんだ。Mastodonには文字通りサイコパスやサイコパスを装う奴らがいっぱいだよ。そんな人たちじゃないなら、Mastodonはおすすめしないね。" userName="lewiscollard" createdAt="2025/11/11 13:03:17" color="">}}




{{<matomeQuote body="僕はmathstodon.xyz（数学系のMastodon）にいるけど、そういうのは全然見てないな。結局、フォローする人によるんだよ。自分で何を見るか選べる自由があるからね。" userName="ekjhgkejhgk" createdAt="2025/11/11 13:07:20" color="">}}




{{<matomeQuote body="Mastodonでは最初から政治関連はCWする人だけフォローって決めてて、フィルタリングを頑張ってるんだ。Twitterを辞めたのも同じ理由だし、BlueSkyとかThreadsも手を出してない。Mastodonのキュレーションツールは使いこなせてて、今じゃ満足してるよ。" userName="WorldMaker" createdAt="2025/11/11 16:41:47" color="#ff33a1">}}




{{<matomeQuote body="僕も車専門のMastodonインスタンスにいたけど、そういうのはたくさん見たよ。僕にはアカウントを消す自由があったから、不快な投稿を避けるために何か特別なことをする必要はなかったね。" userName="lewiscollard" createdAt="2025/11/11 13:54:35" color="">}}




{{<matomeQuote body="もし僕がCharlie Kirkのファンだと決めつけるなら、君は僕が書いたことを読んでないか、わざと嘘をついてるかのどっちかだね。" userName="lewiscollard" createdAt="2025/11/11 15:40:46" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="君がどうしてそう解釈したのか理解できないな。それは君の「車専門のインスタンスで、そういうのをたくさん見たよ」っていう返信を、僕が言い換えただけだよ。" userName="glenneroo" createdAt="2025/11/11 17:04:45" color="">}}




{{<matomeQuote body="実際には僕が書いたことと真逆だよ。「そういうの」は「Charlie Kirkの殺害を祝うこと」を指してるんだから、Charlie Kirkのファンがそんなことするわけないだろ。" userName="lewiscollard" createdAt="2025/11/11 17:15:11" color="">}}




{{<matomeQuote body="説明ありがとう。知らなかったよ、車のファンにはCharlie Kirkを嫌ってる人が多いってこと？" userName="ekjhgkejhgk" createdAt="2025/11/11 23:19:41" color="">}}




{{<matomeQuote body="ああ、なるほど、説明ありがとう。完全に僕の読解力不足だったよ、ごめん。" userName="glenneroo" createdAt="2025/11/11 17:50:19" color="">}}




{{<matomeQuote body="「クール」が適切な言葉かは議論しないけど、思想的には、実際にうまく機能するなら中央集権型より連邦型（federation）がいいと思うんだ。Mastodonはそれができてるよね。" userName="ekjhgkejhgk" createdAt="2025/11/11 09:42:10" color="">}}




{{<matomeQuote body="「アルゴリズム」が広告を押し付けてくることもないし、フォローしてるアカウントの投稿が時系列順に表示されるだけのタイムラインだ。" userName="throw_await" createdAt="2025/11/11 15:02:13" color="#ff5c5c">}}




{{<matomeQuote body="望むと望まざるとにかかわらず、ダークモードを強制してくるんだぜ。それよりクールなことってある？" userName="CamperBob2" createdAt="2025/11/11 02:19:44" color="">}}




{{<matomeQuote body="オプションあるよ。" userName="pavo-etc" createdAt="2025/11/11 02:50:20" color="">}}




{{<matomeQuote body="それならHacker Newsより一つ上だね！" userName="da_chicken" createdAt="2025/11/11 04:12:59" color="">}}




{{<matomeQuote body="本当に？どこに？他のところで聞いても「ブラウザYに拡張機能Xを入れてスクリプトZを実行すればいい」みたいな役立たずな答えしか返ってこなかったんだよ。" userName="CamperBob2" createdAt="2025/11/11 03:22:54" color="">}}




{{<matomeQuote body="「Preferences」をクリックすると、「Appearance」っていう最初のセクションにあるよ。サイトのテーマをライトオプションに変更できるんだ。少なくともMastodon.socialではね。" userName="glenstein" createdAt="2025/11/11 03:48:50" color="#785bff">}}




{{<matomeQuote body="「Preferences」ボタンなんてないよ。もしあるなら、うまく隠されてるか、ログインしないと見えないんだろうね。色設定を切り替える目立つボタンがあるべきなんだ。こんなボタンを追加するのは簡単だし、ユーザーIDに紐付ける必要も、Cookieを設定する必要もない。そういうボタンがないのは誰かの選択で、長年のヒューマンインターフェース研究を無視したひどい選択だよ。こんなおかしなことに対して、しっかり意見を言わないから、Webはほとんどの人にとって少しずつ悪くなってるんだ。まあ、そういうこと。" userName="CamperBob2" createdAt="2025/11/11 04:11:15" color="#ff5733">}}




{{<matomeQuote body="僕は二つのインスタンスを使ってるけど、両方に「Preferences」ボタンがあるよ。もしかして、あなたのインスタンスがデフォルトの場所から移動させたとか？どのインスタンスを使ってるの？どこをクリックすればいいか教えてあげられるよ。" userName="ekjhgkejhgk" createdAt="2025/11/11 11:45:27" color="#785bff">}}




{{<matomeQuote body="アカウントがあれば、サイドバー（ログインとSignupボタンがあるところ）にPreferencesが表示されるよ。そうじゃなければ、インスタンスのadminがデフォルトを選ぶことになるね。" userName="stephen_g" createdAt="2025/11/11 06:28:22" color="">}}




{{<matomeQuote body="adminは多分、自動設定を使うべきだろうね。ログインしてない場合のユーザーPreferenceについては、ユーザーからの機能リクエストがGitHubに上がってるみたいだよ。[1] [1]: https://github.com/mastodon/mastodon/issues/30193" userName="wasmitnetzen" createdAt="2025/11/11 09:02:18" color="">}}




{{<matomeQuote body="このデータが復旧できることを本当に、本当に願ってるよ。オリジナルのソースをたくさん読んだけど、こんなに古いC言語は特に研究する価値がありそうだね。僕のUniversityで見つかったなんて、マジで誇らしいよ！" userName="olivia-banks" createdAt="2025/11/11 02:34:05" color="#785bff">}}




{{<matomeQuote body="これはすごいことだね。tuhs.orgにこんなに古いものが利用可能だったなんて、記憶にないよ。" userName="kazinator" createdAt="2025/11/10 22:56:17" color="">}}




{{<matomeQuote body="ここをチェックしてみて。https://www.tuhs.org/Archive/Distributions/Research/" userName="larsbrinkhoff" createdAt="2025/11/11 08:19:53" color="">}}




{{<matomeQuote body="既存のV5ソースコードと大きくは違わないだろうね、多分。これを見てくれ。https://minnie.tuhs.org/cgi-bin/utree.pl?file=V5/usr/source/..." userName="rurban" createdAt="2025/11/11 09:28:57" color="">}}




{{<matomeQuote body="1973年のものだよ。詳しくはWikipediaを見てくれ。https://en.wikipedia.org/wiki/List_of_Unix_systems" userName="sema4hacker" createdAt="2025/11/06 21:23:12" color="">}}




{{<matomeQuote body="これはUNIXファンにはたまらないニュースだね。ぜひソースが復旧されて、他の歴史的なUNIXソースと一緒に公開されてほしいな。" userName="nineteen999" createdAt="2025/11/11 05:01:37" color="#45d325">}}




{{<matomeQuote body="すごく興味深いストレージフォーマットだね。これらのテープは（比較すると）かなりのデータ、約45MBを保持できたんだ（このテープはもっと短くて約10〜15MBだろうけど、これはV4のソースコードやバイナリ、ドキュメントのサイズに近いね）。" userName="tgtweak" createdAt="2025/11/11 13:39:55" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
