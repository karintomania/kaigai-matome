+++
date = '2025-05-08T00:00:00'
months = '2025/05'
draft = false
title = 'NASAのSMAP衛星でまさかのLバンド干渉を検出'
tags = ["衛星", "NASA", "干渉", "電波", "地球観測"]
featureimage = 'thumbnails/blue_green5.jpg'
+++

> NASAのSMAP衛星でまさかのLバンド干渉を検出

引用元：[https://news.ycombinator.com/item?id=43924358](https://news.ycombinator.com/item?id=43924358)




{{<matomeQuote body="数日前に投稿されたこの全体の地図がいい感じだったよ：<br>https://x.com/HamWa07/status/1919763145536463222<br>twitterのgiammaiot2は科学センサーを使って意図的なRF干渉を検出するのに長いこと取り組んでるんだ。例えばこれ、AMSRから7 GHzを見てる地図：<br>https://x.com/giammaiot2/status/1919493425100988490<br>あるいは2023年のSMAPを見てるこのスレッドとか：<br>https://x.com/giammaiot2/status/1770815247772729539" userName="jjwiseman" createdAt="2025/05/08 18:33:37" color="">}}




{{<matomeQuote body="ありがとう、あの地図はマジ面白いね。ウクライナとかミャンマーみたいな紛争地帯や中国でのジャミングは俺ら西側の感覚でもわかるんだけど、なんで日本でこんなに干渉が多いんだろう？" userName="anthomtb" createdAt="2025/05/08 18:54:56" color="">}}




{{<matomeQuote body="日本が1427.9Mhzより高い周波数でLTEサービスを認めてるかららしいよ。ヨーロッパは1452Mhzからスタートで、アメリカはここらへんの帯域を消費者向けに全然使ってないんだって。" userName="LarsAlereon" createdAt="2025/05/08 23:33:36" color="#785bff">}}




{{<matomeQuote body="これ、科学やってると思わぬところで役に立つ例だね。SMAPはEarth scienceのミッションで、今の政権も重要視してる。データはEarth scienceやclimate research、agriculturalやwater managementにも使われてるんだ。<br>例えば、water management districtsは、これから来る雨で地面が水を吸えるか、それとも水が残って洪水になるか判断できるらしいよ。" userName="dakr" createdAt="2025/05/08 17:19:40" color="#ff5c5c">}}




{{<matomeQuote body="Iridium satellitesはL-bandでground stationsと通信できるんだって。この帯域は、台風のど真ん中でshipがstuckになってhelpが必要な時にすごく役に立つんだ。" userName="bob1029" createdAt="2025/05/08 10:50:46" color="">}}




{{<matomeQuote body="L-band signalsはcloudsやrainを通り抜けられるんだ。この性質があるからL-bandはGPSとか、どんなweatherでも動く必要があるapplicationsに使われてるんだよ。これでadverse weatherでもaccurate data collectionができるってわけ。" userName="russb" createdAt="2025/05/08 12:58:18" color="#45d325">}}




{{<matomeQuote body="これってどういう仕組みなの？<br>ただ聞いてるだけで、特定のemergency messageが来ないとtransmitしないってこと？" userName="qwertox" createdAt="2025/05/08 11:26:19" color="">}}




{{<matomeQuote body="L-bandはいくつかのsatcom providersがhandheld devicesへのvoiceやdata communicationsに使ってるよ。<br>おおざっぱに言うとhandheld satellite communications devicesはregular cellphonesと全く同じように機能するけど、middle of the oceanでも機能するのが違うところだね。" userName="os2warpman" createdAt="2025/05/08 12:52:14" color="">}}




{{<matomeQuote body="具体的なallocationは1400から1427 MHzだよ。<br>これはradio astronomy（hydrogen lineが1420.4 MHz）、passive（receive only）Earth exploration satellites、passive space research用にreservedされてるんだ。<br>アメリカだと、1240から1400 MHzはradarにallocatedされてる。<br>GNSS downlinks（1240から1300 MHZ）はアメリカではprotectedされてないんだって。" userName="drmpeg" createdAt="2025/05/08 18:36:02" color="#38d3d3">}}




{{<matomeQuote body="彼のGitHub siteには「This script processes NASA SMAP L1B .h5 data files」って書いてあるけど、どうやってこれらのdata filesを手に入れてるのか書いてないんだ。<br>APIを使ってるのか、それともRTL-SDRみたいなものを使ってデータを直接pullしてるのか、気になるね。" userName="NoSalt" createdAt="2025/05/08 13:32:36" color="">}}




{{<matomeQuote body="SMAPデータはASFのデータ検索ポータル（https://search.asf.alaska.edu/#/?maxResults=250＆dataset=SMAP）で見つけられるよ。<br>Earthdataアカウント（https://urs.earthdata.nasa.gov/home）があれば、.h5ファイルをまとめてダウンロードできるんだ。ライブラリ（https://github.com/nsidc/earthaccessとかhttps://github.com/asfadmin/Discovery-asf_search）を使ってもいいみたい。" userName="sstanie" createdAt="2025/05/08 14:55:55" color="#38d3d3">}}




{{<matomeQuote body="データはここ（https://nsidc.org/data/smap/data）でも手に入るみたいだよ。情報もここ（https://smap.jpl.nasa.gov/data/）にあるね。すごく面白いネタだ！" userName="williamscales" createdAt="2025/05/08 13:38:49" color="#45d325">}}




{{<matomeQuote body="ロシアのジャミング場所って、どこをジャミングしてるんだろ？ドローンから守りたい重要な場所だと思うけど、何があるかすぐには分かんなかった。<br>例えば、モスクワの北西の明るい場所はZavidovo National Parkの辺りっぽいけど、何か重要なものあるの？近くのMigalovoやKlinの基地はちょっと離れてるみたいだし。" userName="mellow_observer" createdAt="2025/05/08 11:09:21" color="#ff5733">}}




{{<matomeQuote body="GPSJamっていうGPS干渉の毎日マップ（https://gpsjam.org/）と、それに関するHacker Newsの記事（https://news.ycombinator.com/item?id=32245346）だよ。2022年7月のやつ。" userName="toomuchtodo" createdAt="2025/05/08 14:39:29" color="">}}




{{<matomeQuote body="ありがと！GPSジャミングの場所の多さ、マジすごいね（2022年3月と2025年5月を比べてみるとさ）。" userName="Bengalilol" createdAt="2025/05/08 14:54:08" color="">}}




{{<matomeQuote body="GPSJamは飛行機のads-b GPS精度データを使ってるんだって。だから世界の航空路をカバーしてるはず。そのデータとこの記事のSMAPデータを組み合わせたら（センサー融合）面白そう！" userName="toomuchtodo" createdAt="2025/05/08 14:57:49" color="#38d3d3">}}




{{<matomeQuote body="少なくとも「低干渉」って表示には結構懐疑的だな。俺の国NZも、ヨーロッパ全部も、India、USA、人が住んでるほとんどのAustraliaとCanadaも「低干渉」だって。これマジ？" userName="teruakohatu" createdAt="2025/05/09 01:06:46" color="">}}




{{<matomeQuote body="そうそう。ああいう国でGNSSジャミングすると、電波の規制当局に罰せられちゃうからさ。飛行機の巡航高度（地上9～10kmくらい）でGPS精度に影響するパワーを出すには、相当強い電波が必要なんだよ。そんな電波、管理してる人たちが見逃すわけないじゃん。" userName="toomuchtodo" createdAt="2025/05/09 01:45:15" color="#ff33a1">}}




{{<matomeQuote body="あー、俺マップの見方間違ってたかも。「低干渉」って、「低いレベルのジャミング」じゃなくて「多分ジャミング無し」って意味なんだ？なるほどね。そりゃNZで大規模なジャミングなんて無いって君の言う通りだもん。" userName="teruakohatu" createdAt="2025/05/10 00:21:00" color="">}}




{{<matomeQuote body="ロシアは重要なモノの近くにジャマー置くみたいだよ。例えばKola peninsula（NorwayとFinlandの国境付近）では、民間機の運行に影響出るほどジャミングやスプーフィングしてる。なんでかって？そこに大事な戦略的飛行場がいっぱいあるから。Ukraine周辺だと、飛行場、基地、弾薬庫、電波塔とか、何でもありうるね。" userName="TrackerFF" createdAt="2025/05/08 11:24:22" color="#38d3d3">}}




{{<matomeQuote body="えー、Kola peninsulaでマジで一日中ジャミングしてんの？<br>軍事演習のときだけだと思ってたわ。" userName="nicce" createdAt="2025/05/08 11:51:35" color="">}}




{{<matomeQuote body="2022年より前は軍事演習の一環でジャミングしてたけど、それ以降はドローン対策としてもっと頻繁に、てか常時やるようになったみたいだよ。<br>Ukrainianのドローンは北のMurmanskまで来てて、そこは一番近いNorwegianの空港（Kirkenes）から145kmくらい。<br>追記：5日前にそこでUkrainianのドローンが撃ち落とされたってさ。" userName="TrackerFF" createdAt="2025/05/08 12:26:50" color="#ff5733">}}




{{<matomeQuote body="軍事用のバンドに対してGPSジャミングってどれくらい効果あるか知ってる？<br>（多分Ukraineはそれ使えないだろうけどさ）" userName="cenamus" createdAt="2025/05/08 16:33:48" color="">}}




{{<matomeQuote body="軍事用も民間用もGPS信号はLバンドだから、ジャミングでどっちもやられるよ。BeiDouとかGalileoもLバンドだから全部狙われるかもね。<br>新しいBlock III GPS衛星には「スポットビーム」っていう、ジャミングを打ち抜くための軍事専用機能がついたんだ。<br>ただ、Ukraineがその受信機を持ってるかは分かんないし、使えてるかは不明。<br>これは全部推測だけどね。" userName="mandevil" createdAt="2025/05/08 20:17:27" color="#45d325">}}




{{<matomeQuote body="2022年より前は、多少なりとも政治的な影響も考慮しなきゃいけなかったんだと思うよ。" userName="nicce" createdAt="2025/05/08 14:12:46" color="">}}




{{<matomeQuote body="ナビシステム（GNSS）って、ちょうどLバンドに入るんだよね。例えば、ロシアのGLONASSは1.2とか1.6 GHzくらいで、GPSは1.1、1.2、1.5 GHzあたり。SMAPは1.2～1.4 GHzだから、GLONASSともGPSとも周波数がかぶってる。だから、その帯域をジャミングすると、ドローンのナビシステムに影響が出るんだ。ドローンが光ファイバーケーブルで繋がれてるのを見るのはこれが理由だよ。制御システムも同じ帯域かもしれないしね。「なぜ」ってのは、既存システムに機械が適応するようになってるからって理由が大きくて、そのシステムは、役立つ・解決できる物理特性に基づいて設計されたんだ。ロシアの近くじゃ、ジャミングもなりすましも結構普通。だからSMAPは、同じ帯域で観測してるから、このジャミングを全部拾っちゃうんだよ。" userName="TrackerFF" createdAt="2025/05/08 11:18:06" color="#38d3d3">}}




{{<matomeQuote body="Lバンドは低い出力で長距離まで届くし、水や葉っぱも貫通できるんだ。これが軍事目的で魅力的だっていうのはわかる気がするね。" userName="cebert" createdAt="2025/05/08 10:45:56" color="">}}




{{<matomeQuote body="電波は周波数が高いほど遠くまで届きにくいんだ。ドローン操作には低い周波数がいい。電子レンジやWiFiが使う2.4GHzは水に吸収されやすいから、雨や葉っぱで信号がダメになる。だから、それより高い周波数も低い周波数（ISMバンドの他のもの）も使えないとなると、残された帯域は限られる。Lバンドのような低い周波数がドローン制御に適してるのは、こういう物理的な理由から推測できるんだ。これはかなり単純化した話だけどね。" userName="bc569a80a344f9c" createdAt="2025/05/08 10:56:39" color="#785bff">}}




{{<matomeQuote body="2.4GHzに水の吸収ピークなんてないよ。さらに悪いことに、吸収スペクトルは温度で変わるからね。" userName="ratatoskrt" createdAt="2025/05/08 12:52:09" color="">}}




{{<matomeQuote body="知ってる限りでは、ISMバンドは電子レンジがあったからそこに置かれたんだよ。その逆じゃない。" userName="immibis" createdAt="2025/05/08 15:34:59" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Lバンドは1～2GHzの帯域全体を指す言葉で、国際的に細かく分けられてる。GPSやSMAP、携帯、ADS-Bなど色々なものが使ってるんだ。送信機は少し帯域外干渉を出すから、ジャミングすると隣の帯域にも漏れ出す。SMAPの解像度は36kmと粗いから、拾われる干渉源はかなり強力なはずだよ。このデータだと、干渉源の場所は都市レベルまでしか特定できないんだ。" userName="myself248" createdAt="2025/05/08 12:00:25" color="#ff33a1">}}




{{<matomeQuote body="そうそう、民間のレーダー関係（君が言ってたMode S、SSR、ADS-B、あと他のマルチラテレーションの仕組み）は1090 MHz（ダウンリンクとブロードキャスト）と1030 MHz（アップリンク）を使ってる。軍事利用に近いところだと、IFFも同じ周波数を使うかもね。" userName="touisteur" createdAt="2025/05/08 13:37:53" color="">}}




{{<matomeQuote body="NASAが無料で公開してるデータを使って、RussianとかUkrainianの電子戦システムをマップしたんだって。使われてるジャマーが、本来静かなはずの1.4 GHz帯に漏れてるらしい。しかも結構なパワーで。だから、人工的なものだってほぼ確信できるんだって。面白いターゲットを探してるなら、明るく光ってる場所を調べるのも悪くないかもね。" userName="mrweasel" createdAt="2025/05/08 10:49:45" color="#ff33a1">}}




{{<matomeQuote body="ちょっと訂正ね。ジャマーは特にL-bandを狙ってるんだ。だって航法とか衛星通信に使われてるからね。普通、この帯域の地上送信機は数ワットくらいしか使わないから、地球上の広いエリアを見てる衛星の観測にはそんなに影響しないんだけど、ジャマーはもっとパワーがあるから目立つんだよ。" userName="parsimo2010" createdAt="2025/05/08 13:09:10" color="#45d325">}}




{{<matomeQuote body="USがUkraineの精密誘導爆弾に、対GPSジャマーセンサーを提供するってニュースだって。<br>https://www.kyivpost.com/post/32163<br>（2024年5月6日）" userName="toomuchtodo" createdAt="2025/05/08 14:41:29" color="">}}




{{<matomeQuote body="地球から反射される太陽放射を観測して、海の塩分濃度とか色々なことを測る衛星があるんだ。その特定の周波数が、軍事でも使われてるんだよ。この衛星を使うと、電子妨害装置がある場所を見つけられるってわけ。" userName="op00to" createdAt="2025/05/08 10:47:53" color="#45d325">}}




{{<matomeQuote body="ある特定の周波数の電波を見て、地表の水分量を測ってる衛星があるんだ。Ukraineにいる一部のジャマー（他の人の通信をできなくする電波ノイズを出す装置ね）が、この周波数で電波を出してるから、衛星データを見るとそれが光って見えるんだよ。" userName="echoangle" createdAt="2025/05/08 10:47:13" color="#45d325">}}




{{<matomeQuote body="参考リンクね。<br>https://en.wikipedia.org/wiki/Brightness_temperature<br>https://web.archive.org/web/20230517192717/https://aquarius...." userName="someothherguyy" createdAt="2025/05/08 11:53:21" color="">}}




{{<matomeQuote body="まぁ、両方ともジャミングしてるけど、それがジャミングする理由の一つってことだよな。" userName="echoangle" createdAt="2025/05/08 12:17:27" color="">}}




{{<matomeQuote body="これすごいな。他にどんなバンドでこんな観測できるんだろ？" userName="logicziller" createdAt="2025/05/08 14:01:04" color="">}}




{{<matomeQuote body="SAR衛星も役に立つって分かってるんだ。<br>https://medium.com/@HarelDan/x-marks-the-spot-579cdb1f534b<br>確かSentinel 1はC bandだったはず。でもこの技術はX-bandでもいけるだろうね、TerraSAR-Xとか他の商用衛星みたいに。" userName="lokimedes" createdAt="2025/05/08 16:17:45" color="#ff5733">}}




{{<matomeQuote body="現代の紛争地帯ではLバンドのジャミングはドローンを盲目にしターゲティングを劣化させISRを遮断する。偶然じゃない故意だ。「ここで送信するな」っていう国際条約？ドローンの群れから生き残ろうとしてるときはそんなのどうでもいいんだよ。<br>これLLMっぽい言い回しだし、他にも気になる部分あるんだよね。記事自体はためになるからそんなに気にならないけど、もうみんな自分で文章書かないんだなって思うと残念だな。" userName="Alex-Programs" createdAt="2025/05/08 16:06:01" color="">}}




{{<matomeQuote body="これ俺にはLLMのスパムみたいには読めないな。パンチのある2、3語の短い文章は俺が見た限りChatGPT（他のLLMはあんまり使ってないけど）が全然使わない修辞法だよ。" userName="philsnow" createdAt="2025/05/08 17:18:21" color="">}}




{{<matomeQuote body="通常の会話モードでは使わないけど、説得したりスタイルをつけたり主張したいときは使うの好きだよ。<br>それより”xじゃなくてyだ”とか”zって言ってるあれ？大した意味ないね”みたいな形式なんだよね。<br>とはいえ、オンラインのLLMチェッカーいくつかで再確認したけどどれも俺に同意しなかったんだ。俺の勘違いだったかも。" userName="Alex-Programs" createdAt="2025/05/09 11:13:55" color="">}}




{{<matomeQuote body="具体的にどこが気になるの？作者が多分旧ソ連出身でネイティブじゃないって事実以外に何か？" userName="piskov" createdAt="2025/05/08 16:57:30" color="">}}




{{<matomeQuote body="この衛星を調べるって素晴らしいアイデアだね。他に面白い周波数を受信してる衛星ってある？（6GHz以下のことを考えてるんだけど）" userName="x0" createdAt="2025/05/08 10:49:22" color="">}}




{{<matomeQuote body="戦争が始まって以来、NASAのIR”火災早期警報”衛星で実際の”真の”前線を追跡してる人がいるんだ。自然の火災を見つけるのが得意な衛星が、爆発で始まった爆発や火災を見つけるのにも得意だってことが分かったんだよ。" userName="NitpickLawyer" createdAt="2025/05/08 11:08:08" color="#ff5733">}}




{{<matomeQuote body="もう一つ面白い追跡方法はAppleのWifi Positioningデータベースを使ったやつだね。研究者たちがStarlinkのwifiアクセスポイント経由で前線を追跡できたんだよ。<br>https://www.youtube.com/watch?v=hlbjUvkoyBA" userName="TechDebtDevin" createdAt="2025/05/08 11:19:37" color="#38d3d3">}}




{{<matomeQuote body="この衛星の任務は土壌の観測なんだ。ほとんどの科学者は諜報機関の一員じゃないし、異常な観測値に気づいて解析から除外したとしても、軍事的な意味合いについて話せる相手はいないんだよね。それに、科学衛星でこの干渉を検出できるのはクールだけど、主要な宇宙開発国はもっと高い精度で干渉をマッピングできる軍事・諜報衛星を持ってるから、NASAの科学者は、この地域の土壌観測に特に関心がない限り、これをほぼ無視できるよ。" userName="parsimo2010" createdAt="2025/05/08 13:04:33" color="#785bff">}}




{{<matomeQuote body="国防総省が「よし、このデータ欲しいな。こういうデータって民間での使い道あるかな」って考えて、民間のプロジェクトを立ち上げようとした可能性もゼロじゃないけど…それはちょっと冷戦時代の考え方かな。最近は自分たちでやっちゃうだろうし、簡単で安上がりなプロジェクトだろうね。" userName="frandroid" createdAt="2025/05/08 17:55:02" color="">}}




{{<matomeQuote body="商業地球画像衛星があるように、商業RFソース検出衛星もあるはずだよ。ヘッジファンドや各国、軍、それに干渉の原因を探してる商業送信事業者への販売ルートは明らかだね。ヘッジファンド向けってのが面白いね。公式の政府統計とは別に経済活動や成長を検出するんだ。" userName="robocat" createdAt="2025/05/08 22:29:16" color="#ff33a1">}}




{{<matomeQuote body="これが誰にも見過ごされてるなんて思わないよ。たとえ主ミッションじゃなくてもね。SMAPはこの分野の人々が興味を持つかもしれない準リアルタイムのデータプロダクトも提供してるし。" userName="dakr" createdAt="2025/05/08 17:22:53" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
