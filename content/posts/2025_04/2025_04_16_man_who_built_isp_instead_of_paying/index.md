+++
date = '2025-04-16T00:00:00'
months = '2025/04'
draft = false
title = '「Comcastにブチギレた男、自力でISPを設立！数百世帯に拡大しててワロタ（2022年）」'
tags = ["ISP", "インターネット", "地域ネットワーク", "起業", "通信インフラ"]
featureimage = 'thumbnails/orange_pink3.jpg'
+++

> 「Comcastにブチギレた男、自力でISPを設立！数百世帯に拡大しててワロタ（2022年）」

引用元：[https://news.ycombinator.com/item?id=43709770](https://news.ycombinator.com/item?id=43709770)

{{<matomeQuote body="マジか！俺も同じことやったぜー。CenturyLinkがうちまで光ファイバー引くのにありえんくらいの金額ふっかけてきたから、自分でISP建てたわ。今じゃ数百軒にサービス提供してて、Boulder Countyじゃ結構いいとこまで来てるんだぜ！→https://ayva.network" userName="Nick-W" createdAt="2025-04-16T20:53:28" color="#ff33a1">}}

{{<matomeQuote body="ちょっとだけ注意！ホームページの動画、スマホで見ても24MBもあるじゃん。WiFi落ちてて携帯回線でサポート受けようとしてる人にはキツいかもね。(プロジェクト自体はマジですごいと思う)" userName="lelandfe" createdAt="2025-04-16T21:28:22" color="#785bff">}}

{{<matomeQuote body="ありがとー！帯域制限されてる人向けには、もっと軽いバージョン流してるんだよね。adaptive coding使ってるから。余裕があるなら高画質で見れるって寸法よ。ページが重いのは自覚してる。今はエリア拡大に集中してて、サイトの更新とか手が回ってないんだわ。" userName="Nick-W" createdAt="2025-04-16T21:48:14" color="">}}

{{<matomeQuote body="ページ開いたら9秒間真っ白で、その後全部一気に表示されたわ。Starlink使ってんだけど。応援してるから、そのうち直してほしいな。トップ5の記事からリンクされてたら、速攻で戻るボタン押しちゃうかも。" userName="snypher" createdAt="2025-04-17T00:45:02" color="">}}

{{<matomeQuote body="だよねー。まだ広告とか全然やってなくて、基本は地元の人しかアクセスしない想定だったんだ。まさかhackernewsのコメントからこんなにアクセス来るとは思わなかった！バックエンドはazure appserviceで、今はスペック低めのworker1台で動かしてる。本格的にローンチする前にスケールできるようにする予定だったんだけど、予定外の事態だわ。" userName="Nick-W" createdAt="2025-04-17T03:25:49" color="#45d325">}}

{{<matomeQuote body="うちの環境だと、First Contentful Paintが12秒もかかったよ。光回線なのに。" userName="paulirish" createdAt="2025-04-17T01:08:32" color="">}}

{{<matomeQuote body="真っ白なページが表示されて、壊れてるのかと思った。" userName="buckle8017" createdAt="2025-04-17T01:31:09" color="">}}

{{<matomeQuote body="(投稿者じゃないけど)<br>これにハマっちゃった。<br>10分後、TIL: MPDってストリーミングMP4形式の一種なのね。dash-mpd-cliってRust製のクロスプラットフォームなユーティリティがあって、開発者ツールでMPDのURL指定したらMP4にダウンロードできるんだ。<br>でも、ウィンドウの幅に関係なく、動画は1.5MBと500KBにしかならない。macOS arm64、16インチMBPのChrome。<br>どんな環境か気になるなー。<br>(豆知識: 先週、palantir.comが100MB以上の動画使ってて、しかも圧縮が下手で、必要なビットレートの10倍だってツイートを見た)" userName="refulgentis" createdAt="2025-04-16T21:41:36" color="#ff33a1">}}

{{<matomeQuote body="まあ、そりゃそうなるよなー。<br>Ayvaの光ファイバー使ってたら、動画なんて一瞬でダウンロード終わるのに=D" userName="mmh0000" createdAt="2025-04-16T21:39:31" color="">}}

{{<matomeQuote body="たぶん、appserviceの回復中にアクセスが集中したんだね。hackernewsのコメントからこんなにトラフィックが来るとは驚き。" userName="Nick-W" createdAt="2025-04-17T03:28:27" color="">}}

{{<matomeQuote body="地域ごとにトラフィックを遅くする仕組みって価値あるのかな？必要な地域にはリソースを残してさ。HNのトップページみたいに世界中からアクセスが来る場合、ローカルなサービスだと影響が大きすぎるよね。" userName="chii" createdAt="2025-04-17T04:42:30" color="#ff33a1">}}

{{<matomeQuote body="必要に応じてworker数を増やせるけど、Azureの請求がヤバいから最小限にしてるんだ。サイトの右下にライブappの回路数カウンターがあるんだけど、昨日数千まで跳ね上がってて普段は5～10くらいなんだよね。コメントでこんなに注目されるとは思わなかったし、トラフィックが集中した時、Boulder Canyonでロッククライミングしてたんだ。" userName="Nick-W" createdAt="2025-04-17T13:24:22" color="#45d325">}}

{{<matomeQuote body="最近の経済状況はどうなんだろう？90年代に小さい町のISPを共同設立したんだけど（ダイヤルアップ）、一番のコストは24本の商用電話回線だった。赤字だったけど、2年後に地元の電話会社に売却できてホッとしたよ。" userName="apercu" createdAt="2025-04-16T21:02:52" color="">}}

{{<matomeQuote body="まずいね。サービスをインストールする平均コストは800～1200ドルくらい。新しいタワーとかホストサイトの設置費用は含まれてないよ。今のサービス提供コストは月80ドルくらいだけど、数千人の加入者にスケールアップできる見込み。人々の役に立てるのが嬉しいし、クッキーとかプレゼントももらえるしね。" userName="Nick-W" createdAt="2025-04-16T21:18:34" color="#45d325">}}

{{<matomeQuote body="＞I get random cookies & care packages from people<br>社会的経済学は最高だね。" userName="NetOpWibby" createdAt="2025-04-16T21:25:50" color="">}}

{{<matomeQuote body="最高だよ。みんな知り合いだし、地元の消防署とかRocky Mountain Rescue Groupみたいな組織に無料サービスを提供してるし、SNSでも評判が良いんだ。ただ、インストール依頼が数百件もあって、パートの人が8人しかいないから、対応が遅れて申し訳ない。" userName="Nick-W" createdAt="2025-04-16T21:31:44" color="#45d325">}}

{{<matomeQuote body="自分でインストールできるようにしたら？タワーの場所とか、アンテナの方向とか教えるんだよ。田舎の人は器用だから、喜んでやると思うよ。教会でやったことがあるけど、30%くらいの人が自分でやってくれたよ。" userName="9337throwaway" createdAt="2025-04-16T22:35:48" color="#38d3d3">}}

{{<matomeQuote body="うちのISP立ち上げの時も似たようなことやったよ。村の人みんなで溝を掘って、ファイバーを引っ張って。溶接もちょっと教えてもらって、村中で借り物の機材で溶接してたよ。25年前の話だけどね。webserverはLinuxで動いてた。" userName="Moru" createdAt="2025-04-17T09:14:25" color="#38d3d3">}}

{{<matomeQuote body="＞この人口が少ない田舎では、マウクさんは「少なくとも2軒の家のために、800メートル近くの距離を建設する必要がある」と言っていて、それらの家にサービスを提供するには1軒あたり300万円以上かかるって。<br>一軒あたり300万円もかけて接続するのって意味あるのかな？" userName="robrenaud" createdAt="2025-04-16T21:02:57" color="">}}

{{<matomeQuote body="それが僕らの主張なんだよね。資金を申請するときに、2.5gbps（双方向通信）を1.5万円以下で最大15km先まで届けられるって言ってるんだ。将来的には10gbps以上も目指せるロードマップもあるし。でも残念ながら、僕らは“fiber”じゃないから、たとえコストが5%でも自動的に優先順位が下げられちゃうんだ。" userName="Nick-W" createdAt="2025-04-16T21:20:10" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="その距離でfiberなしに2.5Gbpsを出すには、どんな伝送方式を使ってるの？" userName="candiddevmike" createdAt="2025-04-16T21:24:23" color="">}}

{{<matomeQuote body="60ghzのアンライセンスバンドで802.11ad/ayを使ってるよ。一番経済的なのはUbiquiti Wave Prosを導入することかな。実測で15kmの距離で2gbps以上の速度が出るよ。ネットワーク全体でWave Pro、XG、XRの無線機を使ってマルチギガのリンクを実現してて、ビジネス用途以外ではWave LRsとNanosが95%を占めてる。70ghzのライセンスバンドを使えば最大33gbpsの双方向通信も可能だし、10gbpsの無線機もいくつか持ってるけど、高いんだよね。" userName="Nick-W" createdAt="2025-04-16T21:29:02" color="#ff5733">}}

{{<matomeQuote body="その規模のセルで常に2.5Gbpsを安定して提供するのは楽観的すぎるんじゃない？バックホールが巨大じゃないと。" userName="candiddevmike" createdAt="2025-04-16T21:33:56" color="">}}

{{<matomeQuote body="全然難しくないよ。トラフィックをメッシュ全体に多重化して、複数の10gbps fiber uplinksがあるし、今年は最初の100gbps回線を開通させる予定だよ。ほとんどのサイトには十分な容量があるし、常に各サイトから2～4つの経路を確保するようにしてる。アンライセンスの60ghzは再利用がすごく簡単で、サイトから0.2度以上ずれると20dB減衰するし、田舎の山岳地帯で運用してるから、各ホストの場所のスペクトラムはすごくクリーンなんだ。APのセル幅は30度で、それぞれに最大30台接続できる。一番いいのは、Wave gearにはバックアップ無線機があることかな。APを停止したりアップグレードしたりする必要があっても、誰も気づかないんだ。ステーションはすべて近くのAPに5ghzのバックアップでローミングして、通常は300～600mbpsくらいの速度は維持できるよ。" userName="Nick-W" createdAt="2025-04-16T21:44:21" color="#785bff">}}

{{<matomeQuote body="大雨や雪の中ではどうなるの？mmWaveは悪天候だと減衰がひどくなるっていつも言われてるけど、Boulderは雪が多いよね。" userName="vitus" createdAt="2025-04-17T01:35:25" color="#785bff">}}

{{<matomeQuote body="答えられないかもしれないけど、100gbpsの回線って月額いくらくらい？10gbpsのuplinkは？" userName="TrexArms" createdAt="2025-04-16T23:06:31" color="">}}

{{<matomeQuote body="＞一軒あたり300万円もかけて接続するのって意味あるのかな？<br>建物の寿命（100年以上になることもある）を考えれば、道路、水道、下水道、電気と同じように、おそらく意味がある。それもユーティリティの一つだよ。" userName="toomuchtodo" createdAt="2025-04-16T21:14:41" color="">}}

{{<matomeQuote body="もし3万ドルが税金で、政府が地方の光ファイバーのために指定したお金から出てるなら、まあそうかもね。もしその地域への接続がすでに安価だったなら、国の資金援助は必要なかったはずだよ（税金を使うべきだとか、そのプログラムがうまく運営されてるとか言ってるわけじゃないけど）。" userName="_heimdall" createdAt="2025-04-16T21:13:34" color="">}}

{{<matomeQuote body="マジか！3年前にこれを知ってたらよかったな。5月に卒業するんだけど、Xfinityでセルフホストしようとしてひどい目に遭ってるんだよね。CenturyLinkはうちのアパートに対応してないし。<br><br>p.s 宣伝: 卒業制作でセキュアでプライベートなホームルーターのファームウェアを作ってるんだ。君はこの分野に（間接的に）いるし、地元だから、ぜひ話を聞きたいな。" userName="navanchauhan" createdAt="2025-04-16T23:06:05" color="">}}

{{<matomeQuote body="そんなにおかしいとは思わないな。記事では、0.5マイルの敷設に3万ドル以上かかると書いてある。政府がたった一人の加入者を接続するためにそんな大金を払うなんて、ありえない。" userName="ufocia" createdAt="2025-04-17T01:00:58" color="">}}

{{<matomeQuote body="どうやって資金調達して、時間を見つけたの？それが本業？私も山岳地帯で同じようなことを夢見てるんだけど、ちょっと怖い。" userName="idiotsecant" createdAt="2025-04-16T21:02:06" color="">}}

{{<matomeQuote body="自己資金でやったんだ。本格的に稼働するまで50万ドルと数年かかったけど、フルメッシュネットワーク、独自のASNとIPリソース（/21をいくつか、IPv6も）、そしてネットワーク全体に冗長性を持たせた超ハイエンドなネットワークエッジを備えた、夢のようなグリーンフィールド展開を実現した。愛の結晶だよ。無給だし、50万ドルが返ってくることはないけど、まあいいんだ。今は従業員が8人いて、急速に成長してる。" userName="Nick-W" createdAt="2025-04-16T21:22:02" color="#785bff">}}

{{<matomeQuote body="あなたは私のヒーローだ。もしあなたの物語の技術的な記事があれば、ぜひ読んでみたい。" userName="sgarland" createdAt="2025-04-16T22:33:40" color="#ff5733">}}

{{<matomeQuote body="ぜひ書きたいな。正直、うちのネットワークに技術的な興味を示した人は今までいなかったし、数年間ひっそりと運営してきたんだ。従業員もいることだし、そろそろ表に出てもいいかなと思ってる。口コミだけで400〜500件の設置依頼があって、どこにも広告を出したことがないから、ハードローンチするのはちょっと怖いんだよね。特にBoulder市（人口10万人以上）のかなりの部分をカバーできるから。" userName="Nick-W" createdAt="2025-04-16T22:43:40" color="#ff33a1">}}

{{<matomeQuote body="Sonicって元々サンタローザの小さなISPだったんだって[1]。それが今じゃ北カリフォルニアじゃめっちゃ有名。<br>うちはSonicの1GB双方向光ファイバーでデータ無制限、希望すれば10GBもいける。Sonicの社長さんが言うには、長距離回線の料金って年々下がってるから、利用制限なんてマジで不要なんだって。<br>[1] https://en.wikipedia.org/wiki/Sonic_(ISP)" userName="Animats" createdAt="2025-04-16T21:01:25" color="#38d3d3">}}

{{<matomeQuote body="自分で引用しちゃうけど[0]：<br>＞“Sonicのカスタマーサービスはマジで最高。今まで出会ったどの会社よりも上。サポートが必要で連絡した時も、すぐに技術に詳しい人が出てきて、問題点を理解してくれて、丁寧で分かりやすいアドバイスをくれるんだよね。大げさじゃなく、サポートが必要になった時の安心感のためだけに今の料金の倍払ってもいいくらい。普段は速度も速いからあんまり困らないんだけどね。<br>＞…サクラっぽいって思われるかもだけど気にしない。マジで良いから、変わらない限り応援するよ。”<br>[0] https://news.ycombinator.com/item?id=42252183" userName="scubbo" createdAt="2025-04-16T23:03:10" color="#ff33a1">}}

{{<matomeQuote body="＞“…サクラっぽいって思われるかもだけど気にしない。マジで良いから、変わらない限り応援するよ。”<br>最近、本当に良いカスタマーサービスってマジで少ないから、こういう大げさなレビューの方が信用できるんだよね。正直そう思ってるんだろうなって思う。自分も経験あるし。" userName="arkey" createdAt="2025-04-17T10:01:51" color="#45d325">}}

{{<matomeQuote body="ミネアポリスの地元のISPも同じ感じ。6年間で3回くらいしか連絡したことないけど、毎回対応が素晴らしい。電話も2コール以内に地元の人が出て、適切な担当者に繋いでくれて、ちゃんと信用できる情報くれるし、問題も解決してくれる。初めてメールした時はまだ契約者じゃなかったんだけど、工事で剥がした歩道の再舗装はいつになるかって聞いたら、運用部長から返事が来て、具体的な日付は教えてくれなかったけど、状況に合わせて理由を詳しく説明してくれて、その後スケジュールも教えてくれた。" userName="gazook89" createdAt="2025-04-17T01:38:02" color="#ff5733">}}

{{<matomeQuote body="いつかIPv6に対応してくれたら嬉しいな！それ以外はマジで最高。" userName="karlshea" createdAt="2025-04-17T05:57:31" color="">}}

{{<matomeQuote body="サンフランシスコのカバー範囲がもっと広ければいいのに。RichmondとSunset地区以外はカバー率低いんだよね。" userName="int0x29" createdAt="2025-04-17T02:40:40" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="会社の最大の批判が「もっとカバー範囲を広げてほしい」ってことなら、それは成功してる証拠だよね。" userName="scubbo" createdAt="2025-04-19T19:44:48" color="#ff5733">}}

{{<matomeQuote body="＞Sonicの社長さんが言うには、長距離回線の料金って年々下がってるから、利用制限なんてマジで不要なんだって。<br>マージンを増やすため以外はね…" userName="onlyrealcuzzo" createdAt="2025-04-16T22:44:01" color="">}}

{{<matomeQuote body="うちも10Gサービス使ってる。Sonicの会社も人も大好き。最初に電話した時の営業の人との30分間の会話が、今まで会った人との会話の中で一番面白かったんだよね。マジで不思議な体験だった。<br>工事の人も親切で仕事も丁寧。<br>サービスが良いから、誰かと話す機会がない。<br>近所の人がComcastから乗り換えてるけど、みんなComcastのことマジで嫌ってた。AT&Tはもっとひどいけど、どっちもクソ。" userName="e40" createdAt="2025-04-17T11:34:42" color="#ff5733">}}

{{<matomeQuote body="OaklandからSFに引っ越してきてから、毎日Sonicが恋しい。" userName="enmyj" createdAt="2025-04-16T21:46:28" color="">}}

{{<matomeQuote body="マジでここの10GB回線最高なんだよね。今まで使った中で一番満足してるから、アンケートのお願いメールにも毎回ちゃんと返信してるわ。" userName="samiwami" createdAt="2025-04-17T03:47:03" color="#45d325">}}

{{<matomeQuote body="サンフランシスコに住んでた時、Sonicを1年使ってたけど、マジですごかったし、どこにでもあればいいのにって思ったよ。SFみたいな人口密集地だと拡大しやすいのはわかるけど、99%の都市の土地でそういう高密度化が禁止されてるのが残念だよね。" userName="epistasis" createdAt="2025-04-17T08:02:18" color="#38d3d3">}}

{{<matomeQuote body="このISP、大学のネットワークの授業で詳しく研究されてたんだよね。創設者が「オープンソースISP」の代表例を作った人で、自分で構築したいなら、オンラインで彼のガイダンスを見つけられると思うよ。参考: https://www.youtube.com/watch?v=ASXJgvy3mEg" userName="primitivesuave" createdAt="2025-04-16T22:16:54" color="#ff33a1">}}

{{<matomeQuote body="効果を最大にするためには、彼は本を書くべきだね。そしたら誰かがその本を映画化して、その映画がComcastで上映されるようになるんだ！" userName="1970-01-01" createdAt="2025-04-16T20:26:32" color="">}}

{{<matomeQuote body="全部終わって、この人が儲け始めたら、Comcastとか他のISPが彼のネットワークと映画の権利を買って、値段をめっちゃ高くすると思う。そしたら、みんなもっと高いお金を払って、そのISPが持ってるストリーミングサービスで映画を見る羽目になるんだよ。" userName="autoexec" createdAt="2025-04-16T23:11:28" color="">}}

{{<matomeQuote body="家の光回線の「将来性」とか「拡張性」について読んだんだけど、うちの場合は逆方向だったんだよね。近所のみんなが15年くらい前に1Gbpsの回線を導入して、最高のプランにお金を払ってたんだ。でもコロナ禍で、実際に必要な帯域幅を調べたら、クラウドバックアップとかOSアップデートとかは全部夜間にするようにして、ピーク時の必要帯域幅は25Mbpsで十分だった。だからISPに頼んで最低の200Mbpsのプランに下げてもらったけど、全然変わらなかったよ。" userName="wuming2" createdAt="2025-04-17T06:40:48" color="#ff5c5c">}}

{{<matomeQuote body="ギガビット回線って、バースト的な容量なんだよね。常にギガビットの速度が必要な人ってほとんどいないし、そういう人は帯域制限とかフェアユースポリシーに引っかかることが多い。だからISPは10Gbpsのバックボーンで50～100軒にギガビット回線を提供できるんだ。みんなが同時に帯域を使い切る確率って低いからね。<br>COVIDの時、多くの高速ISPが崩壊したのはそれが理由。ビデオ通話が増えて、遅延に敏感で双方向のデータが大量に流れるようになったから。だからISPは10Gbpsをデフォルトで提供してもいいと思う。ユーザーはそんなに使わないから。ファイルダウンロードとかバックアップとか、動画アップロードの時だけ必要になるんだ。帯域制限をなくせば、他のユーザーも長く使えるようになる。携帯キャリアも同じ理由で、4Gに速度制限を設けなかったんだ。ファイルを早く転送し終えれば、他のユーザーのために電波を空けられるから。" userName="jeroenhd" createdAt="2025-04-17T09:45:25" color="#ff5733">}}

{{<matomeQuote body="確かにね。EUのFTTHの保証容量は、ピーク時の0.1%くらいらしいよ。同じ考えだね。ギガビット以上のスループットを最大化するのが効率的かどうかはわからないけど、図33を見ると、エネルギー効率はFTTHの方が高いみたいだね。<br>ソフトのアップデートが1分で終わるか1時間で終わるかって、実際には大差ないことが多いよね。Cat 6とか7のケーブルを勧めるのは、アップセル目的もあるんだろうね。" userName="wuming2" createdAt="2025-04-17T10:34:16" color="">}}

{{<matomeQuote body="＞ISPs may as well offer 10gbps as a default<br>技術的な視点だけじゃなくて、ビジネス、マーケティング、法律、サポートのことも考えないとね。「無制限」の速度を基本にするよりも、10倍の値段で売った方が儲かるじゃん？それに「10Gbpsインターネット」を売るなら、法的にその何%かを保証する必要があるかもしれないし、Speedtest.netで10Gbpsが出ないって文句を言う人に説明しなきゃいけない。あと、提供する速度が速いほど、モデムも高くなるんだよ。" userName="sureIy" createdAt="2025-04-17T12:25:20" color="#45d325">}}

{{<matomeQuote body="高齢の両親をADSLからFTTCにアップグレードした時のことを考えてるんだけど、古い装置が廃止される予定だったから、規制当局がなんでこの道を選んだのか不思議に思ってたんだよね。特に何千万人もの高齢者にとって、ADSL2+ Annex Mで十分だったのに、CPEの交換を強制するのはおかしいと思った。ほとんどのFTTC装置はADSL2+と下位互換性があって、VDSL信号の劣化を防ぐために伝送電力を自動的に下げるだけで済むのに。うちの両親は今150/30 Mbpsだけど、全く気づいてないよ。" userName="wuming2" createdAt="2025-04-21T05:02:43" color="">}}

{{<matomeQuote body="50mbpsあれば一人暮らしなら十分だよねって考えに至った。<br>余裕があればダウンロードとか時間短縮できるし。" userName="miyuru" createdAt="2025-04-17T07:55:15" color="">}}

{{<matomeQuote body="EUだとインフラ整備の補助金は最低30Mbps（保証なし）なんだって。家族でも普通の使い方なら十分だよね。<br>ISPsは、みんなにギガビット級の接続とCPEを提供して、要求の厳しいアプリを相互補助する方が商業的に都合が良いと判断したのかも。" userName="wuming2" createdAt="2025-04-17T09:04:46" color="#ff5733">}}

{{<matomeQuote body="彼がNLNOG 2020で「Getting Fiber To My Town」ってプレゼンをしてる。<br>・https://www.youtube.com/watch?v=ASXJgvy3mEg<br>・スライド: https://nlnog.net/static/live/nlnog_live_sep_2020_jared.pdf<br>・2020: https://news.ycombinator.com/item?id=24424910<br>・ディスカッションでの返信: https://news.ycombinator.com/user?id=jaredmauch<br>トレンチ掘削機を使うみたい。NANOGでも「Starting a Telephone Company in 2019, or How I Built Fiber to my Neighbors」ってプレゼンしてる。<br>・https://www.youtube.com/watch?v=Twe6uTwOyJo" userName="throw0101b" createdAt="2025-04-17T00:11:51" color="#785bff">}}

{{<matomeQuote body="8年くらい前、家の前の道でAT&Tのトラックが光ファイバーを設置してたんだ。めっちゃ喜んで、AT&Tのウェブサイトをチェックしてたんだけど、まだ使えないんだよね。Google Fiberが来るかもってことでAT&Tがやっただけみたい。Googleは規制で諦めたみたいだし。AT&Tはもうファイバーを点灯させる気ないみたい。<br>Comcastもケーブルないし。<br>自分でやろうかと思ったけど、許可とか取るのが大変そう…<br>Jaredマジリスペクト！" userName="yalok" createdAt="2025-04-17T06:03:07" color="#ff5733">}}

{{<matomeQuote body="4年くらい前、Sonicの人と話したんだけど（いい会社！）、ウチから遠いから、200軒くらいの近所の人がSonicに乗り換えてくれないとファイバー敷設は無理って言われた。" userName="yalok" createdAt="2025-04-17T06:05:39" color="">}}

{{<matomeQuote body="Comcastから乗り換えてよかった。" userName="e40" createdAt="2025-04-17T11:38:03" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="だよね。3年前にも話題になってたよ。<br>https://news.ycombinator.com/item?id=32411493" userName="jihadjihad" createdAt="2025-04-16T20:49:20" color="">}}

{{<matomeQuote body="サンクス！展開するとこんな感じ。<br>Man who built ISP instead of paying Comcast $50K expands to hundreds of homes<br>- https://news.ycombinator.com/item?id=32411493<br>- Aug 2022 (427 comments)" userName="dang" createdAt="2025-04-16T21:32:12" color="">}}

{{<matomeQuote body="了解。ありがとね！" userName="dang" createdAt="2025-04-16T21:32:09" color="">}}

{{<matomeQuote body="ロシアだとマジで500～1000mbpsが月5～10ドルくらいで使えるんだって。しかもどの家にもISPの選択肢がいくつかあって、工事費も無料らしいよ。" userName="pavelevst" createdAt="2025-04-16T21:22:20" color="#ff5733">}}

{{<matomeQuote body="人件費が安いんだよね。アメリカは多くの仕事で世界で一番人件費が高いから、他の国ならもっと安く済むはず。" userName="DiscourseFan" createdAt="2025-04-16T21:29:06" color="#785bff">}}

{{<matomeQuote body="ロシアは電柱が国有なのかもね。アメリカだと、ほとんどの場所で電力会社が電柱を所有してて、場所を借りるのがめちゃくちゃ高いんだよ。競争力のあるISPがある都市部では、政府が電柱を所有してたり、街灯のリース契約で光ファイバーを張れるようにしてる。" userName="Spooky23" createdAt="2025-04-17T03:57:48" color="#ff5733">}}

{{<matomeQuote body="アメリカの政策に関する分析としてはちょっと変わってるね。アメリカで私有の電柱ってほとんどないよ。多くの場所では、公道上に私有の電柱があるんだ。最悪なのは、公共インフラが私的な利益のために使われてること。" userName="sidewndr46" createdAt="2025-04-17T18:41:59" color="#ff5c5c">}}

{{<matomeQuote body="最近の平均給与は800～1000ドルくらい(税引き後30～40％)。アメリカのインターネット料金は人件費に比例するはず。" userName="pavelevst" createdAt="2025-04-16T21:54:55" color="">}}

{{<matomeQuote body="そうそう、インターネットの設置技術者の平均給与は約25ドル/時、税引き前で週1000ドルくらい。ただ、普通の設置をする人と、ネットワークの計画や構築をする人は違って、後者の方がはるかに給料が高い。" userName="DiscourseFan" createdAt="2025-04-16T22:15:15" color="#45d325">}}

{{<matomeQuote body="アメリカってなんで人件費そんなに高いの？医療費が雇用主に転嫁されてるから？" userName="skyyler" createdAt="2025-04-16T21:45:30" color="">}}

{{<matomeQuote body="面白いことに、アメリカは昔から世界で一番賃金が高かったんだって。1776年より前の植民地時代からそうだったらしいよ。Adam Smithが詳しく調べてて、職業ごとにアメリカの植民地時代の賃金がイギリス本土より高かったって書いてる。(つい昨日読んだばかりなんだ。リンクできたら本の特定のページを貼りたいくらい)。<br>一般的な説明としては、入植者のほとんどがイギリス人(当時すでに高賃金の国)で、熟練労働者を新しい大陸に移住させるには高い賃金を払う必要があったから。<br>さらに、当時のproto-state governments間の労働移動も影響したみたい(VirginiaとかMassachusettsとか)。" userName="hash872" createdAt="2025-04-16T21:54:26" color="#45d325">}}

{{<matomeQuote body="Roger Congletonの”Perfecting Parliament”って本だよ。世界の議会制移行の歴史について書かれてる。経済学の本ってわけじゃないけど、経済的なテーマにも触れてるよ。ここではCongletonがAdam Smithのアメリカ植民地時代の賃金について引用してた。" userName="hash872" createdAt="2025-04-17T02:11:19" color="">}}

{{<matomeQuote body="多くの人が雇用の選択肢を持ってて、低い給料の仕事を選ばないからだよね。国民皆保険の国でも、労働者が払う税金で医療費を負担することになるけど、アメリカより累進的な制度になるから、低スキルの労働者は医療費のために高い給料を要求する必要がなくなるかもね。でも、アメリカは人件費以外にもコストがかかってるのかも。例えば、光ファイバーケーブルを設置するための許可を得るのが大変とか。" userName="dan-robertson" createdAt="2025-04-16T21:59:24" color="#ff5733">}}

{{<matomeQuote body="ラスベガスの家は2000Mbpsダウンロード、100Mbpsアップロードで月200ドルだよ。そのうち50ドルは”無制限”利用のアドオン料金なんだけど、Coxは毎月2〜3TB以上アップロードすると、サービスをキャンセルするって手紙を送ってくるんだ。3000ドル以上も”無制限”アドオン料金を払ってるのにね。アメリカのインターネット料金は詐欺だよ。" userName="sneak" createdAt="2025-04-16T21:27:08" color="#ff33a1">}}

{{<matomeQuote body="DOCSISの同軸インターネットを使ってるのかな？DOCSISの問題は、アップストリームが（すごく）制限されてて、使いすぎるとセグメント全体のユーザーに大きな問題が起きることだよ（TCP ACKが遅れたり、ping値が上がったり、パケットロスが発生したり）。無制限って言うのはもちろん言い訳にならないけど、アメリカの大手ケーブル会社がFTTHに移行すれば、長い目で見ればトラブルが減ると思うよ。" userName="martinald" createdAt="2025-04-16T21:36:31" color="#785bff">}}

{{<matomeQuote body="FTTHに移行する必要はないと思うな。99.9%の家庭は10〜20Mbps以上のアップストリームを必要としてないでしょ。ほとんどの期間1000/40（100ドル＋50ドル）のプランを使ってて、今は2000/100（150ドル＋50ドル）だよ。40Mbpsのアップストリーム無制限で十分。問題はスロットリングじゃなくて、脅迫だよ。" userName="sneak" createdAt="2025-04-17T09:52:08" color="">}}

{{<matomeQuote body="ケーブルインターネットの問題は、共有メディア（同軸セグメント）のアップストリーム帯域幅が比較的少なく、それを100人以上のユーザーで共有することだよ。FTTHは帯域幅がはるかに広く、共有する家庭の数も少ない。通常、8〜32世帯でパッシブスプリッター/光ファイバーを分配するから、ケーブルよりも桁違いに優れてる。数年前に光ファイバーに切り替えたけど、COVIDの最中、ケーブルモデムのアップストリームが1メガビット以下になったことがあったよ（500/30のプランだったのに）。" userName="icedchai" createdAt="2025-04-17T23:05:33" color="#ff5c5c">}}

{{<matomeQuote body="その通り。実際には100〜1000倍の容量があるはず。PONセグメントでは平均16ユーザーで、XGS-PONでは10ギガビット/秒の対称性がある。DOCSIS 3.1と比較すると、数百人のユーザーで200Mbit/秒を共有することになる。DOCSIS 4.0は改善されてるけど、分割を家の近くに持ってくるだけだから、数百年ごとに数千もの高価なアクティブDOCSISターミナルを設置するよりも、FTTHで終わらせた方が良いと思う。それに、FTTHは容量を簡単にアップグレードできる。新しいOLTを追加して、古いものと並行して実行しながら、みんなのONTをアップグレードできる。" userName="martinald" createdAt="2025-04-20T03:08:43" color="#45d325">}}

{{<matomeQuote body="それは違うと思うなー。ビデオ会議とか画面共有を同時に複数行うと、すぐに10〜20Mbit/秒を食いつぶすよ。50〜100Mbit/秒あれば十分だと思うけど。とにかく、DOCSISは100〜200Mbit/秒のアップストリームを数百の家庭で共有してるってこと。設定によって変わるけど、その多くはダウンストリームからのTCP ACKに使われるから、実際に使えるアップストリームは50〜100Mbit/秒、つまり1人あたり1Mbit/秒以下になる。もし40Mbit/秒をハードに使うと、ケーブルモデムセグメント全体の”使える”アップストリームをほぼ使い切ることになる。だからDOCSISはFTTHより大幅に劣ってるんだよ。" userName="martinald" createdAt="2025-04-20T03:04:30" color="#45d325">}}

{{<matomeQuote body="ラスベガスに住んでるんだけど、初めてISPの競争があって、なんとキャップなしで月50ドルで光ファイバーが使えるんだ（Quantumを使ってる）。" userName="alostpuppy" createdAt="2025-04-17T01:27:45" color="#38d3d3">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
