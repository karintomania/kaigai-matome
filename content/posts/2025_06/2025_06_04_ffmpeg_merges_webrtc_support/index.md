+++
date = '2025-06-04T00:00:00'
months = '2025/06'
draft = false
title = 'あのFFmpegがWebRTC対応！これで動画配信はこうなる'
tags = ["FFmpeg", "WebRTC", "動画配信", "ライブストリーミング", "開発"]
featureimage = 'thumbnails/green1.jpg'
+++

> あのFFmpegがWebRTC対応！これで動画配信はこうなる

引用元：[https://news.ycombinator.com/item?id=44182186](https://news.ycombinator.com/item?id=44182186)




{{<matomeQuote body="WebRTCブロードキャスト、マジで超楽しみ！Broadcast BoxのREADME[0]やOBSのPR[1]で理由書いたんだけどね。GStreamerもOBSもFFmpegもWHIPに対応したおかげで、モバイルからWeb、組み込み、配信ソフトまで、全部で使える共通プロトコルがついにできたんだ！俺、何年もOpen SourceとWebRTCブロードキャストやってるんだけど、これ本当にデカい節目だわ。<br>[0] https://github.com/Glimesh/broadcast-box?tab=readme-ov-file#...<br>[1] https://github.com/obsproject/obs-studio/pull/7926" userName="Sean-Der" createdAt="2025/06/04 16:48:09" color="#ff5733">}}




{{<matomeQuote body="あなたがこの分野でやってきたこと、マジですごすぎるよ！ありがとう！broadcast-box、俺もいつも使わせてもらってるんだ。" userName="monocularvision" createdAt="2025/06/04 19:49:04" color="">}}




{{<matomeQuote body="WebRTCのマルチキャストを大きくするには、どんなインフラがいるの？Twitchみたいなのをやるのに、もうAmazonにお金かけなくてもいい時代になるの？" userName="echelon" createdAt="2025/06/04 20:40:26" color="">}}




{{<matomeQuote body="そうなんだよ :) OBSがPR[0]をマージしたら、マジで超面白くなると思う。前はいろんな端末に対応するために、高っかいトランスコーディングが必要だったじゃん。Simulcastができるようになれば、かかる費用は帯域幅だけになるんだ。<br>Hetznerだと、1TBあたり1ドルで済む。AV1とかH265にSimulcastを組み合わせれば、サーバー1台で何百人ものユーザーに4K映像を届けられるんだぜ。もちろん、多少の苦労はあると思うけど、俺は誰でも簡単に使えるようになるまで絶対諦めないから！<br>[0] https://github.com/obsproject/obs-studio/pull/10885" userName="Sean-Der" createdAt="2025/06/04 20:48:29" color="#ff33a1">}}




{{<matomeQuote body="普通のサーバーだと～18Gbpsくらい、めっちゃ高性能な carefully specced servers でも～90Gbpsくらいが限界だって感じてるんだけど、君も同じ？" userName="matt-p" createdAt="2025/06/04 21:52:11" color="">}}




{{<matomeQuote body="Twitchの720p配信って、たった4 Mbpsだよ。1080pでも6～8 Mbpsくらい。だから、もし～18 Gbpsくらいのアップロード帯域があれば、1万人から2万人の視聴者に対応できる計算になるね。" userName="michaelt" createdAt="2025/06/04 22:15:03" color="#785bff">}}




{{<matomeQuote body="WebRTCのストリームを再生できる動画プレイヤーって何かある？最後に確認した時、VLCとか他の有名なツールはまだ対応してなかったと思うんだけど。" userName="WhyNotHugo" createdAt="2025/06/04 18:19:12" color="">}}




{{<matomeQuote body="ギガビット対称回線がこれだけ普及してるなら、P2Pでもイケるんじゃないかと思うんだ。もしギガ回線がアップロード帯域を100mbまで割けるなら、それで接続悪い視聴者25人分をまかなえる計算になる。これ、結構現実的だと思うんだよね。<br>サーバー1台で最大1万人のティア1視聴者に配信。その下のティア2視聴者は、もしものためにティア1のipsを3つ持って、STUNとか使って事前に繋いでおく。そうすれば、元が切れても秒未満で切り替えられる。真ん中で全部コントロールして、負荷を分散させる感じ。<br>15sくらいバッファがあっても大丈夫なら（ゲーム配信なら平気だけど、スポーツは隣の人が衛星放送で見てて、先に歓声聞いちゃうとダメかもね）、これ、いける気がするんだ。" userName="miki123211" createdAt="2025/06/04 23:39:26" color="#ff33a1">}}




{{<matomeQuote body="ちょっと計算についていけてないな。<br>もしストリームあたり平均6Mbだとしたら、3000ストリームになるよね。実際はもうちょい少ないだろうけどさ。<br>まあ、全部相対的なんだろうけど、思ったより多くないなって感じ。" userName="matt-p" createdAt="2025/06/04 23:46:43" color="">}}




{{<matomeQuote body="VLCが全部サポートしてるんだから、FFmpegがWebRTC対応なんてあり得ないね。VLCがサポートしてないなら、それは存在しないんだよ。" userName="RedShift1" createdAt="2025/06/04 18:23:16" color="">}}




{{<matomeQuote body="ギガビット回線が普及してきた今、P2Pできるのかなって思うよ。CGNATが面倒にしそうだよね。" userName="messe" createdAt="2025/06/05 07:23:17" color="#785bff">}}




{{<matomeQuote body="スマホでリモートのDOSBoxゲームにVNC使ってたんだけど、これで入力ハンドラーのWebアプリ作るのにいくらでも時間かけられそう！これとOBS使うんだ！ありがとう！" userName="1oooqooq" createdAt="2025/06/04 19:33:44" color="#ff5c5c">}}




{{<matomeQuote body="マルチキャストって家庭からインターネット経由で他の家庭に届くの？途中のホップで捨てられると思ってたんだけど。<br>https://networkengineering.stackexchange.com/questions/47994..." userName="Evidlo" createdAt="2025/06/05 07:40:46" color="#ff5c5c">}}




{{<matomeQuote body="俺もここ数週間、こんな構成作ろうとして（ほとんど失敗してるけど）頑張ってるんだよね。どうやったらうまくいくか、全体的な構成要素についてどう思う？macOSで低遅延の画面+音声録画してWebRTCでストリーミングするのに苦労してて、音声がずれたり遅延が高すぎたりするんだ。" userName="athrun" createdAt="2025/06/05 05:49:17" color="#45d325">}}




{{<matomeQuote body="インターネット経由でマルチキャストはできないよ。" userName="matt-p" createdAt="2025/06/05 10:18:06" color="">}}




{{<matomeQuote body="理想的にはCGN使うISPはIPv6も提供すべきだけど、TailscaleはNATホールパンチングがうまくいくことを見せてくれたね[1]。ただ、Webブラウザでこれを実装するのが現実的かは分からないな。[1] https://tailscale.com/blog/how-nat-traversal.works" userName="chaz6" createdAt="2025/06/05 14:56:50" color="#785bff">}}




{{<matomeQuote body="マルチパス／フェイルオーバーボンディングのサポート予定はある？例えば、複数の5Gモデムに繋がったモバイルストリーミングユニットとか。H.265を複数のリンクで送るのにSRTを改造してる人もいるらしいよ。" userName="rmoriz" createdAt="2025/06/04 22:18:52" color="#ff33a1">}}




{{<matomeQuote body="FFmpegがサポートしたんだから、VLCもすぐに対応するんじゃないかなって思うよ。" userName="mortoc" createdAt="2025/06/04 18:48:54" color="">}}




{{<matomeQuote body="Sean、色々な仕事ありがとう！あなたのWebRTCライブラリを使うのは楽しかったし、幅広い技術的な取り組みで貢献してるのを見てるよ。" userName="maxmcd" createdAt="2025/06/04 17:15:37" color="">}}




{{<matomeQuote body="WindowsでXAVC HS 4k 10Bit HEVC 4:2:2を使うなら、Plexやffmpegは全然いけるね。でもVLCだとちょっとね。" userName="mey" createdAt="2025/06/04 22:02:21" color="">}}




{{<matomeQuote body="正直、全然普及してないし、ほとんどのルーターでサポートされてないと思うよ。<br>でも、Webでライブストリーム流すには効率的な解決策だね。たぶんそのうち、一人一人じゃなくポートごとにパケット送るのが当たり前になって、プロバイダーもこれとかもっといい方法をやらざるを得なくなるんじゃないかな。" userName="ablob" createdAt="2025/06/06 03:28:40" color="#ff5c5c">}}




{{<matomeQuote body="あのPR、技術的にも人間関係的にもマジで素晴らしい仕事だね。読んでて超面白かったよ。本当にお疲れ様、粘り強くやってくれてありがとう。" userName="bradly" createdAt="2025/06/05 01:15:17" color="#785bff">}}




{{<matomeQuote body="あなたの熱意、すごくいいと思うよ！" userName="bryancoxwell" createdAt="2025/06/04 22:56:16" color="">}}




{{<matomeQuote body="数ヶ月前のCloudflare R2の記事のおかげで、ずっと温めてた動画プラットフォームのアイデアにやっと取りかかる気になれたんだ。ffmpegはまだわかんないけど、トランスコーダーはちゃんと動くよ！そこに今回のニュースか！タイミングばっちりだね (:" userName="NetOpWibby" createdAt="2025/06/05 08:07:59" color="">}}




{{<matomeQuote body="＞ 誰もがアクセスできるようにするまで諦めない<br>この人、いいよね。" userName="naikrovek" createdAt="2025/06/05 12:20:11" color="">}}




{{<matomeQuote body="イベント配信の仕事してるんだけど、これでOBSがvMixみたいなプロ用ソフトの代替になりうるね。特にP2Pサポートとか、複数シーンの配信ができるようになるのはめっちゃ価値あると思う。" userName="xmprt" createdAt="2025/06/05 02:06:49" color="#785bff">}}




{{<matomeQuote body="思ってるほど”どこにでもある”ってわけじゃないよ。" userName="esseph" createdAt="2025/06/05 05:26:00" color="">}}




{{<matomeQuote body="[1] gst-launch-1.0 playbin3 uri=”gstwebrtc://localhost:8443?peer-id=＜webrtcsink-peer-id＞”<br><br>WebRTCは通常、ビデオチャットみたいに双方向で使うのが一般的だから、VLCがそのまま対応してないのはそんなに変じゃないと思うな。VLCはAsteriskサーバーにダイヤルするのも対応してないしね。[1] https://gstreamer.freedesktop.org/documentation/rswebrtc/web..." userName="numpad0" createdAt="2025/06/04 18:43:57" color="#ff5c5c">}}




{{<matomeQuote body="SCTP部分じゃなくて、WHIP（WebRTC-HTTP Ingestion Protocol）を実装したんだよ！これは低遅延のHTTPプロトコルで、実際のWebRTCはゲートウェイがSCTPベースのプロトコルでピアとやってくれるんだ。https://www.ietf.org/archive/id/draft-ietf-wish-whip-01.html<br>SCTPじゃなくて、いつかQUICかWebTransportベースのp2pプロトコルに切り替わるといいな。QUICは既存のUDP上でSCTPの役割をすごくうまくこなせるし、複雑さや変動を加えなくて済む。候補の一つにMoQ（Media-over-Quic）があるけど、ブラウザにはp2p QUICがないし、その進捗は何年も止まってるんだ。https://quic.video/ https://datatracker.ietf.org/group/moq/about/" userName="jauntywundrkind" createdAt="2025/06/04 16:46:17" color="#45d325">}}




{{<matomeQuote body="SCTP部分は具体的にどう使いたい？WHIPのIETFドラフトには全く言及や提案がないし、どう公開すればいいか分からないな。多くのWHIPプロバイダーはDataChannelもサポートしてるけど、これはまだ標準化されたものじゃないんだ。" userName="Sean-Der" createdAt="2025/06/04 16:51:37" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="WebRTCそのものの複雑さはすごく高いんだ。WHIPは多くのアプリが連携するための標準的な道筋みたいだけど、結局何かをするには外部サービスに依存するね。理論的には、ffmpegがICEサーバーになってピア接続したり、SDPでストリーム交渉したり、ついでにWHEP（egress protocol）も使って、実際のストリーム転送はSCTPでやったりできるかも。そうなれば、ゲートウェイサービスに任せるんじゃなくて、スタンドアロンのピアみたいに振る舞えるかもしれないね。GstreamerやOBSもWHIPベースで、WebRTCサポートのために外部ゲートウェイに依存してるのは注目すべき点だよ。WebRTCのレイヤーケーキ全体をやる明確な方法は一つじゃないから（WHEPは結構人気だと思うけど）、WHIPは動画送信をサポートする良い方法なんだ。これで、誰かがシステムでWebRTCをどう実装したいかに合うか合わないか、たくさんの決定をしなくて済むんだ。そういった決定は全部WHIPゲートウェイの中にあるからね。全部やろうとするより、切り離した方が良いのかもしれない。そうしないと、特定の意見に基づいたアプローチが必要になるからね。" userName="jauntywundrkind" createdAt="2025/06/04 19:23:17" color="#ff5c5c">}}




{{<matomeQuote body="これってどういう意味？ウェブサイトがFFmpegインスタンスに直接接続して、音声や動画のストリームを受け取れるってこと？Phoronixにもっと分かりやすいページがあったよ。<br>https://www.phoronix.com/news/FFmpeg-Lands-WHIP-Muxer" userName="qwertox" createdAt="2025/06/04 16:31:25" color="">}}




{{<matomeQuote body="それはね、FFmpegライブラリ（libavformatらしいよ）を使うプログラムがwebrtcストリームを消費できるって意味だよ。" userName="bigfishrunning" createdAt="2025/06/04 16:35:42" color="">}}




{{<matomeQuote body="まだ実際の使い道が全然分からないんだ。いくつか例を教えてくれないかな？（変な意味じゃなくて、純粋にこれで何ができるようになるのか知りたいんだよ。）" userName="okdood64" createdAt="2025/06/04 19:11:27" color="">}}




{{<matomeQuote body="WebRTCは1秒以下の遅延でピアツーピア通信が得意だから、ほぼリアルタイムの動画が役立つ場所ならどこでも使えるよ。例えば、2つの違う都市の景色をライブ音声付きでつなぐバーチャルポータルを作りたいとするじゃない？FFmpegにプロ仕様のシネマカメラやDSLRカメラから綺麗な音声映像フィードを入れて、WebRTCでウェブページベースのライブビューアーにストリームできるんだ。あるいは、ウェブページでドローンや探査ロボットを遠隔操作したい場合なんかにもすごく良いと思うよ。" userName="darkvertex" createdAt="2025/06/05 02:19:18" color="#785bff">}}




{{<matomeQuote body="皮肉なことに、1秒以下の遅延って実はWebRTCが_本当に_必要なんじゃないんだよね。普通のTCPストリームでも、ネットワーク遅延に加えて100～200msくらいは結構信頼性高く得られるんだ。[1] でもブラウザはHLSに事実上標準化しちゃったせいで、その設計が低遅延には全く向いてないんだ（低遅延HLSもできるけど、ものすごい努力が必要）。だから、低遅延のストリーミング動画は、ブラウザの得意技になったことがないんだよね。その代わりに、ずっと複雑なプロトコル（WebRTC）を、低遅延のビデオ会議向けルートとして悪用してるんだ。（昔、VLCでガラスtoガラスで100ms以下のストリーミングをやったことがあるよ。だからそれは十分に可能なんだ。でもブラウザが邪魔をしてるんだ。）[1] それよりずっと遅延を減らすのは、完璧じゃないネットワーク条件下では難しくなるだろうね。だって、少しでもパケットロスが始まったら、TCPの再送メカニズムから切り替えて、パケットを捨てて、少しの間アーティファクトを受け入れて、そして先に進みたいから。" userName="Sesse__" createdAt="2025/06/05 08:44:02" color="#ff33a1">}}




{{<matomeQuote body="node1# nc -u node2 12345 ＜ /dev/fb0<br>  node2# nc -lu 12345 ＞ /dev/fb0<br><br>「1秒以下の遅延」っていうのはWebRTC関係の人がよく言う決まり文句だけど、そうだよね、分かりにくいよね。これ↑（ncコマンドの例）より動画の流れを速くすることはできないんだ。新しい標準を発明することでできる唯一のことは、目的のために加えなきゃいけないオーバーヘッドを最小限にすることだけだよ。" userName="numpad0" createdAt="2025/06/05 09:57:33" color="#38d3d3">}}




{{<matomeQuote body="WebRTCが一番手軽で広まってるね。TCPで動画配信のいい標準作ろうとしても、普及しないだろうし大変だ。だから、WebRTCをみんなが使いやすくする挑戦を受け入れたよ。「WebRTC for the Curious」みたいな本で、複雑さを少しでも楽にできたらいいなって思ってる :)" userName="Sean-Der" createdAt="2025/06/05 11:34:15" color="#ff33a1">}}




{{<matomeQuote body="「TCPでよりシンプルな標準を」ってどういう意味？HTTPでvideoタグとストリーム使えばできるじゃん、新しい標準はいらないよ。でもそれだと低遅延じゃないんだ（バッファ制御できないから）。" userName="Sesse__" createdAt="2025/06/05 22:05:32" color="#ff33a1">}}




{{<matomeQuote body="HLSは動画を分割して、いくつかダウンロードしてから再生開始するから、30～60秒遅延するんだ（これはテレビ向きで、インタラクティブな用途にはダメ）。AppleのLL-HLSで細かくして、受信中にデコードすれば2～5秒くらいになるけど、CDNとか色々な工夫が必要で「英雄的」って言われるくらい難しい。SafariはHLSそのまま再生できるけど、他のブラウザはhls.jsが必要。DASH、RTMP、SRTはもっとコードが必要だから、HLSがVODとかの「無難な選択肢」になったんだよ、低遅延じゃないのに。" userName="raymond_goo" createdAt="2025/06/07 12:53:11" color="#ff5733">}}




{{<matomeQuote body="実際（携帯回線とかね）パケットロスがあるでしょ。だからTCPは、品質の高いリアルタイム配信には向かないんだよ。" userName="_flux" createdAt="2025/06/05 10:53:27" color="">}}




{{<matomeQuote body="まず思ったのは、ストリームを好きな形式で保存するのに超便利ってこと。例えば通勤中に古いスマホで見る用に変換したりね。`ffmpeg -i ＜stream＞`ってやって、いつものオプション使うだけ。ダウンロードして変換する手間が省ける。ffmpegは処理もできるから、ストリームからクロマキー合成とかも。ffmpegは低レベルな構成要素で、ライブラリとして使われることが多いけど、プレイヤーとか処理ツールがストリーム入力を簡単に追加できるようになるのが一番大きい影響だろうね。" userName="lmm" createdAt="2025/06/05 01:11:43" color="#ff5733">}}




{{<matomeQuote body="Unreal Engineから動画ストリームを出せるのはWebRTCだけなんだ。だからこれで、クライアントはlibdatachannelみたいな変なのじゃなくて、ffmpeg/avconvを使えるようになるね。" userName="MintPaw" createdAt="2025/06/05 15:43:45" color="">}}




{{<matomeQuote body="俺のデスクトップアプリ ossia.io はffmpeg使ってて、これでネット経由で別のPCと動画送受信したいんだ。ルーターのポート開けるとか面倒なことなしにね。これがvdo.ninjaみたいなサーバーと組み合わせれば解決しそう。https://ossia.io" userName="jcelerier" createdAt="2025/06/05 01:55:00" color="">}}




{{<matomeQuote body="多分、WebRTC使ってるビデオ会議システム（Teams、Discord、Zoomとか）のオープンソースクライアントが作りやすくなるんじゃないかな。これらのサービスはブラウザ用にはWebRTCをフォールバックで使ってるか、全部に使ってるみたいだし。（非公式クライアントをブロックする対策はあるかもだけどね。）" userName="ninkendo" createdAt="2025/06/04 22:51:19" color="#45d325">}}




{{<matomeQuote body="人気のある/有名なWebRTCの送信側（サーバー）ってあるの？ YouTubeとかじゃないんでしょ？ じゃあWebRTCで何を見るの？" userName="dark-star" createdAt="2025/06/04 21:02:12" color="">}}




{{<matomeQuote body="Twitchは今WHIPをサポートしてるよ。WebRTCサービスの中にはWHIPをサポートしてるところが多いんだ（Cloudflare、LiveKit、Dolbyとか）。webrtcHacksに記事があるよ[0]。ちょっと古いけど、雰囲気は掴める！[0] https://webrtchacks.com/tag/simulcast/" userName="Sean-Der" createdAt="2025/06/04 23:00:44" color="#ff33a1">}}




{{<matomeQuote body="え、これってWebRTCの受信側だけってこと？WHIPを使ってサーバーにストリーム要求できるようになったってことかな？" userName="qwertox" createdAt="2025/06/04 16:59:39" color="#ff5c5c">}}




{{<matomeQuote body="いや、今は送信側だけだってば！WHIPはWebRTCでプッシュ（送り出す）するためのもの→https://www.ietf.org/archive/id/draft-ietf-wish-whip-01.html<br>WHEPはプル（受け取る）するためのものだよ→https://github.com/wish-wg/webrtc-http-egress-protocol/blob/...<br>WHEPはまだ固まってないから、標準化されたらOBSとかFFmpegとかにも対応させようと思ってるよ。" userName="Sean-Der" createdAt="2025/06/04 17:02:45" color="#45d325">}}




{{<matomeQuote body="うーん、これってgstreamerのwhepsrc使ってる人にはどう影響するんだろ？今のWHEPサーバーが来年のWebRTCと互換性無くなるリスクってあるのかな？" userName="jcelerier" createdAt="2025/06/05 11:22:04" color="#ff33a1">}}




{{<matomeQuote body="これで自分でストリーム配信したり、CDN作るのがマジで簡単になるはずだね。FFmpegは使い方分かれば、それだけで何でもできちゃうすごいソフトだからさ。" userName="msgodel" createdAt="2025/06/04 16:46:34" color="">}}




{{<matomeQuote body="これ超興奮するわ。特にSimulcastがあれば、マジで安く簡単にできるようになるね。自分でホストしてWebRTC使うのを簡単にしたくて、このリポジトリ作ったんだよね。見てみて→https://github.com/Glimesh/broadcast-box" userName="Sean-Der" createdAt="2025/06/04 16:49:03" color="#785bff">}}




{{<matomeQuote body="LLMってマジでFFmpegの使い方が神がかってんのな。どんな動画のこと聞いても、コマンド一行で解決する方法教えてくれるんだぜ。" userName="eigenvalue" createdAt="2025/06/04 17:42:08" color="">}}




{{<matomeQuote body="うわ、マジか。俺もさっきGeminiに「ffmpegでテロップ画像入れるには？」って聞いたら、overlayフィルター使う方法を詳しく教えてくれたんだよ。まだ試してないけど、見た感じはイケてそう。" userName="rietta" createdAt="2025/06/04 18:18:18" color="">}}




{{<matomeQuote body="まあ、もっともらしいかもしれないけど、「まだ試してない」なら、もっともらしい答えを出すのが上手いってだけじゃん。LLMの一番よくある失敗って、もっともらしいけど間違ったこと言っちゃうことなんだからさ。" userName="Ajedi32" createdAt="2025/06/04 19:02:51" color="#ff5c5c">}}




{{<matomeQuote body="俺が最近使ってる感じだと、間違えるのなんて10%くらいだよ。大体ちゃんと根拠があること言うし、問題なく動くことが多いよ。" userName="asadm" createdAt="2025/06/04 21:36:24" color="">}}




{{<matomeQuote body="もし他のソフトが黙って、もっともらしく10%の確率でエラー吐くって想像できる？そんなの絶対使われないって。VCマネーってマジすごい薬だよな（※VCはベンチャーキャピタルのこと）。" userName="bigfishrunning" createdAt="2025/06/05 13:30:44" color="">}}




{{<matomeQuote body="素晴らしいね—15年前にffmpeg関連の仕事でソフトエンジニアの基礎を築いたんだ。LLMがフィルターとかCLIコマンドを生成してくれるのは、「理論上可能だけど、金もらわないと無理」だったBashスクリプトみたいな作業を、楽しくて簡単で日常的なものに変えてくれた。昨日、14分の動画を最初の10秒はリアルタイムで、残りは10倍速で再生するコマンドを聞いてみたんだけど、ffmpegのCLI構文って全部頭に入れれば何でもできる気がしてたけど、一つのコマンドで全部できるって知ってやっぱり驚いたよ。" userName="refulgentis" createdAt="2025/06/04 22:29:05" color="#ff5733">}}




{{<matomeQuote body="僕はBashスクリプトを不愉快に思ったことはないな。仕事でも普段のコンピューターでも何千ものスクリプトを使ってるよ。~/binフォルダーに自作した便利なスクリプトを置いてるんだ。真面目なプログラミングにはPythonとかRubyを使うけど、これをBashでやり続ける理由の一つは、手で組んでテストしたコマンドライン呼び出しを、変更なしでスクリプトに入れられることなんだ。" userName="rietta" createdAt="2025/06/05 10:56:51" color="">}}




{{<matomeQuote body="僕も！データエンジニアだから、パイプラインジョブが動いてる時はそれを監視するスクリプトがあるんだ。ジョブが終わったら、完了したこととステータスを音声で教えてくれる。これは何十もある便利なスクリプトの一つにすぎないけどね。<br>これのおかげで、20分おきにステータスを確認しなくても、ビデオゲームしたり本読んだりして人生がずっと楽になったよ。<br>あなたほどたくさん作ってはないけどね。いくつか共有してもらえない？" userName="sahilagarwal" createdAt="2025/06/06 17:02:05" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="何千ってのは多分誇張だけど、でも本当にたくさんあるよ！<br>端末エミュレーションやVMとかに接続しててコピペが効かない時に、いつも使ってるのがtypeitforme。テキストファイルの内容を、数秒の遅延（目的のウィンドウにフォーカスを移す時間）の後、キーボードバッファを通して送るんだ。<br>今は~/.bash_aliasasファイルにエントリーとして入れてるよ。<br>alias typeitforme=’sleep 3 \u0026\u0026 xdotool type --file ’<br>これは標準のUbuntu Linuxで動くよ。xdotoolのドキュメントをチェックすれば、もっと色々なアイデアが得られるかもね。" userName="rietta" createdAt="2025/06/09 11:16:12" color="#45d325">}}




{{<matomeQuote body="「答えはまだテストしてないけど、見た目はちゃんとしてそう。」<br>それがLLMだよね。" userName="karel-3d" createdAt="2025/06/05 09:05:49" color="">}}




{{<matomeQuote body="まあ、それはそうだけど、Hacker Newsにコメントする時間は限られてたんだ。動画をセットアップしてこのアイデアをテストするまではできなかった。ffmpegの公式ドキュメントでオーバーレイ機能が存在することは確認したよ。" userName="rietta" createdAt="2025/06/05 10:58:21" color="">}}




{{<matomeQuote body="Hacker Newsのスレッドは、たとえ完全に無関係でも、少なくとも一度はLLMに言及しないとね。" userName="65" createdAt="2025/06/05 01:24:49" color="">}}




{{<matomeQuote body="本当にそうだよね。このコミックいつも思い出すよ。<br>https://xkcd.com/2347/" userName="jmuguy" createdAt="2025/06/04 18:58:11" color="">}}




{{<matomeQuote body="XMPPクライアントのGajimは、これを長い間待ってたんだ！彼らのオーディオ＼ビデオ通話機能は非推奨になってて、FFmpegがもっと簡単にオーディオ＼ビデオ通話機能を追加できるようになるのを我慢強く待ってたみたい。" userName="esbeeb" createdAt="2025/06/05 07:30:54" color="#ff5c5c">}}




{{<matomeQuote body="GajimとかXMPPってまだ使われてるの？Pidginでチャットアプリを使えてた頃が懐かしいな。<br>今は全部walled gardenで、サービスごとにアプリが必要だもんね。" userName="dedosk" createdAt="2025/06/05 15:58:37" color="">}}




{{<matomeQuote body="これでffmpegをシステムに入れるのがもっと危険にならないといいな。WebRTCのセキュリティ上の欠陥はたくさんの侵害の原因になってるんだ。<br>ブラウザをインストールした後に最初に無効にするものの一つだよ。" userName="autoexec" createdAt="2025/06/04 16:43:52" color="#ff33a1">}}




{{<matomeQuote body="どんなセキュリティ上の欠陥？<br>この実装はすごく小さいんだ。ユーザーに可能な限り最高のものを届けられてると100％確信してるよ。" userName="Sean-Der" createdAt="2025/06/04 16:49:47" color="#ff33a1">}}




{{<matomeQuote body="一番最近だとこれ: https://cyberpress.org/critical-libvpx-vulnerability-in-fire...、でも毎年ここから選べるよhttps://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=webrtc<br>WebRTCを無効にするって人が多い最大の理由は、VPN使ってる時のIP漏洩を防ぐためって言うのは君の言う通りだよhttps://www.techradar.com/vpn/webrtc-leaks<br>でもRCEやDoSを心配しなくていいのは嬉しいボーナスだね。<br>これがffmpegユーザーにどれだけ影響するかは分からないけど、WebRTCがセキュリティに関して悪い実績があることを考えると、システムにもう一つ含まれることで攻撃対象が増えるのは少し心配だよ。" userName="autoexec" createdAt="2025/06/04 17:27:23" color="#45d325">}}




{{<matomeQuote body="それって複数の実装での問題だよ！<br>その多くはJavascript周りのChromiumの問題で（WebRTCのコードなんてまだ始まってもなかった）、<br>それってこのリンクを貼って「WebRTCはHTTPより安全だ」って言うようなものだよhttps://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=http<br>IP漏洩は2019年以降修正されてる[0]。ICE/P2Pはまだ大きな攻撃対象だけどね。他のたくさんのトリックが試されてるのを見てるよ。<br>[0] https://www.youtube.com/watch?v=SqcW8kJAMJg" userName="Sean-Der" createdAt="2025/06/04 17:34:43" color="#ff5733">}}




{{<matomeQuote body="autoexecは、WebRTCをクライアントとして実装しているブラウザやメッセンジャー、その他のソフトウェアに影響を与えているWebRTCの膨大な脆弱性のこと言ってるんだろうね。その完全な実装を正しくやるのは難しいみたいだ。<br>もちろん、この実装がすごく小さいって言うのは君の言う通りだ。普通のクライアント実装とは全然違うから、同じ心配はしてないよ。<br>それと、WebRTCのWHIP部分だけだし、ffmpegを通してユーザー入力を処理する人は、願わくば使う機能だけ有効にしてコンパイルしてるか、少なくとも設定時に”--disable-muxer=whip”とかを無効にしてるんじゃないかな。<br>もしくは、実行時に全部明示的に指定すれば、ffmpegが可変のユーザー入力に基づいて機能を読み込むことはないだろうね。" userName="globie" createdAt="2025/06/04 16:58:03" color="#45d325">}}




{{<matomeQuote body="＞autoexecは、WebRTCの脆弱性がブラウザとか他のソフトにたくさん影響してるって言いたいんだろうね。その完全な実装を正しくやるのは難しいみたいだ。<br>どんなの？ ちょっと検索してみたけど、ほとんどがIP漏洩とかフィンガープリンティングみたいなものみたいで、それはffmpegには関係ないよ。" userName="gruez" createdAt="2025/06/04 17:15:46" color="#ff33a1">}}




{{<matomeQuote body="WebRTC関連のヤバいCVEをいくつか見つけたんだ。FFmpegに直接関係ないのはわかってるけど、WebRTCって聞くとセキュリティが気になるんだよね。だから、ブラウザとかとは違うFFmpegの実装について指摘するのに良い機会だと思ったんだよ。" userName="globie" createdAt="2025/06/04 17:39:59" color="">}}




{{<matomeQuote body="WebRTCって検索しただけで、実際にはCVE読んでないんじゃない？しかもそれを論点の根拠にするなんてすごいね。あれってブラウザの実装の問題でしょ？NodeとかLinuxの例と同じで、自分の意見に合う証拠を探してるだけじゃん。質が低いよ。" userName="therealpygon" createdAt="2025/06/05 13:07:44" color="">}}




{{<matomeQuote body="そんな煽るようなこと書く前に、このスレッドの論点忘れてない？WebRTCを実装したときにセキュリティを再確認すべきかって話をしてるんだよ。FFmpegの実装はブラウザとは違うけど、ブラウザのWebRTCにはたくさん脆弱性があったから、再確認は原則として正しいんだ。<br>俺がCVE読んでないってどこでそう思ったんだ？ちゃんと読んでるよ。ランダムに選んだけど、Use-after-freeだって書いてあったし。実装バグかどうかなんてどうでもいいんだよ、WebRTCの実装で入った脆弱性なんだから。" userName="globie" createdAt="2025/06/10 17:52:58" color="#ff33a1">}}




{{<matomeQuote body="＞「IP漏洩やフィンガープリンティングはFFmpegには関係ない」って話だけど、もしFFmpegが将来WHEPを実装したら、ストリームを視聴する時にはその辺が心配になるね。ストリームを配信する時、特にゲートウェイ経由なら、そこまで心配ないだろうけど。" userName="fc417fc802" createdAt="2025/06/05 06:11:19" color="#ff5733">}}




{{<matomeQuote body="これ、まさに俺も疑問だったんだよ。ブラウザでWebRTCを使うとフィンガープリンティングのリスクがあるけど、それってFFmpegを実行することとは関係ないんじゃないの？" userName="lpln3452" createdAt="2025/06/04 17:23:31" color="">}}




{{<matomeQuote body="これって、必要ないなら `--without-whip` みたいな引数をつけてコンパイルできるのかな？もしできるなら理想的だね。" userName="dylan604" createdAt="2025/06/04 18:08:16" color="">}}




{{<matomeQuote body="そうだよ、FFmpegの機能はほとんど全部、コンパイルする時に有効にしたり無効にしたりできるんだ。" userName="marxisttemp" createdAt="2025/06/05 19:38:48" color="#ff5733">}}




{{<matomeQuote body="FFmpegは、よく分からないコーデックとかバイナリ形式をC言語で扱う高性能なコードなんだから、そんなに心配することないよ。" userName="morepedantic" createdAt="2025/06/05 07:55:28" color="">}}




{{<matomeQuote body="FFmpegには過去にたくさんの問題があったから、ユーザー入力を扱うときはコンテナとかでしっかり隔離するのが一番だよ。Dockerでffmpegだけ入れたイメージ作って、それを使うとかね。ClamAVとかも同じ。ユーザー生成ファイルを扱うサーバーは、ネットワークも厳重に隔離すべきだね。<br>これはプロジェクトへの批判じゃなくて、セキュリティは難しいってことを認識しようって話。4chanみたいにならないためにもね。詳しくはここ見てね： https://ffmpeg.org/security.html" userName="mschuster91" createdAt="2025/06/04 17:15:54" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
