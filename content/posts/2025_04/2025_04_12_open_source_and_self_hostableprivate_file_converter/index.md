+++
date = '2025-04-12T00:00:00'
months = '2025/04'
draft = false
title = 'ヤバすぎ！マジで使える！オープンソースの安全なファイル変換ツールが最強すぎた'
tags = ["ファイル変換", "オープンソース", "セキュリティ", "プライバシー", "セルフホスト"]
featureimage = 'thumbnails/blue2.jpg'
+++

> ヤバすぎ！マジで使える！オープンソースの安全なファイル変換ツールが最強すぎた

引用元：[https://news.ycombinator.com/item?id=43663865](https://news.ycombinator.com/item?id=43663865)

{{<matomeQuote body="結局全部ffmpegなんだよねー。こんな素晴らしいソフトがなかったら、インターネットはどうなってたんだろう。" userName="xiaoyu2006" createdAt="2025-04-12T13:40:53" color="#ff33a1">}}

{{<matomeQuote body="今日ffmpegがWASMに移植（トランスパイル？）されたって知ってラッキーだったわ。これは特にその移植版を基に作られてるみたい。<br>https://github.com/ffmpegwasm/ffmpeg.wasm<br>このプロジェクトにはインタラクティブなプレイグラウンドがあって、仕組みが説明されてるよ。<br>https://ffmpegwasm.netlify.app/playground<br>つまり、ローカルでホストされるffmpegフロントエンドだけど、ネイティブのffmpegより遅くて、ファイルサイズとかのWASMの制限を受けるってこと（画像とか音声なら2GBまでだけど、大きい動画の変換には向かないかも）。<br>このプロジェクトがそれをどこにも書いてないのが不思議だね。" userName="starkparker" createdAt="2025-04-12T15:36:22" color="#ff5733">}}

{{<matomeQuote body="ここにあるたくさんのコメントの後にウェブサイトが更新されたのかもだけど、概要のところに利用してるライブラリが全部書いてあるよ。<br>ライブラリ<br>FFmpeg（オーディオ、ビデオ）、libvips（画像）、Pandoc（ドキュメント）を長年メンテしてくれてありがとう。VERTはそれらを使って変換を提供してるんだ。" userName="TheSmiddy" createdAt="2025-04-13T04:46:31" color="">}}

{{<matomeQuote body="たぶん昨日追加されたみたいだね。よかったけど、リンクがないのがまだ変。<br>https://github.com/VERT-sh/VERT/commit/8f8ea34483cab76e27204…" userName="xnx" createdAt="2025-04-13T13:51:42" color="">}}

{{<matomeQuote body="それマジでそう。作者のFabrice Bellardさんは、1000倍の能力を持つ開発者で、Qemuっていう超重要なソフトも作ったんだよ。" userName="igtztorrero" createdAt="2025-04-12T16:13:54" color="#ff5733">}}

{{<matomeQuote body="1000倍ってのがマジでヤバいよね。<br>Minecraft（Bedrock）でQuickJS（彼が作ったJavaScriptランタイム）を使ってるんだけど、そこでもたくさんの開発者がMinecraftを改造するために使ってるんだ。巨大な開発者のピラミッドだよ！<br>Bellardさんのウェブサイトを見ると、どんなことしてるかざっくりわかるよ。<br>https://bellard.org/" userName="darknavi" createdAt="2025-04-12T17:44:01" color="#785bff">}}

{{<matomeQuote body="いつかbedrock editionがeducation editionみたいにmacosをサポートしてくれるといいなー（同じエンジンで動いてるのに）。でもmicrosoftがmojangを買収したのは、それを阻止するためだったんじゃないかって心配してるんだ。" userName="LoganDark" createdAt="2025-04-13T04:42:52" color="">}}

{{<matomeQuote body="時系列が間違ってるよ。MicrosoftがMojangを買ったとき、PC版のMinecraftはJava Editionだけだったんだ。Windows 10 Edition（今のBedrock on PC）が出たのはその次の年だよ。" userName="6yyyyyy" createdAt="2025-04-13T05:22:32" color="">}}

{{<matomeQuote body="勘違いじゃないと思うよ？MicrosoftはWindows 10 Editionを開発するためにMojangを買ったのかもね。そして、Bedrock Editionがめっちゃクロスプラットフォームになったら、macOSだけたまたま見逃した、みたいな。（Education Editionの一部としてポートが存在するのに、Bedrock Editionとして売ってないんだよ。）" userName="LoganDark" createdAt="2025-04-14T16:58:27" color="">}}

{{<matomeQuote body="いつかそうなるといいね！ラインナップの穴みたいだもん。" userName="darknavi" createdAt="2025-04-13T15:24:11" color="">}}

{{<matomeQuote body="え、マジで！？ありえんくらいの生産性だな。マジですげーってなるわ（またしてもインポスター症候群が…）。" userName="pestaa" createdAt="2025-04-12T16:48:12" color="#ff33a1">}}

{{<matomeQuote body="なんか、スポーツ、それもプロレベルでやってる人が、オリンピックのチャンピオンと自分を比べるみたいなもんだよね。刺激を受けるのは良いけど、彼らの業績に落ち込まないことが大事だよね。みんな巨人の肩に乗っかってるんだから。" userName="VTimofeenko" createdAt="2025-04-12T18:15:11" color="">}}

{{<matomeQuote body="エリートな才能に自分が及ばないってだけでインポスター症候群になるって、なんか変じゃね？今まで自分がプログラミングで世界一だと思ってたのに、そうじゃないって気づいたとか？トップじゃなきゃみんな偽物なの？" userName="cortesoft" createdAt="2025-04-12T20:39:41" color="">}}

{{<matomeQuote body="もしかしたらそいつは頭が良いけど、ただの怠け者で、くだらないゲームでゴロゴロしてるのが好きなだけなんじゃね？もっとできるはずなのにって気づいた時にそう感じるんだよ、きっと。" userName="npodbielski" createdAt="2025-04-13T14:07:01" color="">}}

{{<matomeQuote body="みんな気軽にその言葉使ってるだけだから、そんな深く考えなくても良いんじゃない？" userName="satvikpendem" createdAt="2025-04-12T21:29:18" color="">}}

{{<matomeQuote body="あと、TinyCとか、piを計算するBellardの公式とかも。" userName="stavros" createdAt="2025-04-12T17:44:50" color="">}}

{{<matomeQuote body="…それに、LTEの電話規格の完全に動作するSDR実装もね。マジで何でも理解できる人だよ。彼とTorvaldsはマジでずば抜けて優秀な人だよね。" userName="mschuster91" createdAt="2025-04-12T22:44:07" color="#ff5c5c">}}

{{<matomeQuote body="はい、ここでぶっ飛んだアイデア。<br>彼が作ったものは、ffmpeg（コーデックのスペックを実装）、Qemu（CPUのスペックを実装）、TinyC/QuickJS（CとJSのスペックを実装）、LTE（スペックを実装）。<br>彼はスペックをコードに変える神であって、プログラミングの神ではない。" userName="miki123211" createdAt="2025-04-13T10:16:34" color="#ff33a1">}}

{{<matomeQuote body="せやな。でも、スペックを読んで実装するには、プログラミング、コンピューターサイエンス、数学、物理学の幅広い知識が必要になる。コーデックは難解な数学、エミュレーターはCPUだけでなく周辺チップのタイミング、コンパイラーは学問分野全体、LTEはRFハードウェア、RF伝搬、アンテナ理論が必要。" userName="mschuster91" createdAt="2025-04-13T12:11:02" color="#38d3d3">}}

{{<matomeQuote body="電気工学かコンピューター工学を学べば普通に学ぶことだし、スペックをコードに変える才能があるだけだよ。すごい開発者だと思うけど、スペックを詳細に記憶できる能力が高いんだと思う。" userName="angra_mainyu" createdAt="2025-04-13T21:18:59" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="https://www.bellard.org/<br>このプロジェクトのリストを読むと、マジで謙虚な気持ちになるわ。俺もずっとこういうの作りたいと思ってたんだよね。" userName="matheusmoreira" createdAt="2025-04-13T07:47:49" color="#ff5c5c">}}

{{<matomeQuote body="Fabrice Bellardって初めて聞いたわ、教えてくれてありがとね。" userName="thatcat" createdAt="2025-04-13T16:27:12" color="">}}

{{<matomeQuote body="pandocがあればドキュメント変換は完璧じゃん？" userName="hypercube33" createdAt="2025-04-12T14:29:45" color="">}}

{{<matomeQuote body="pandoc-wasmってのもあるのか。" userName="ukuina" createdAt="2025-04-12T17:15:53" color="">}}

{{<matomeQuote body="マジ世界の不思議の一つだよな。エンドユーザーからNetflixみたいな大企業まで、無料で使えるなんてマジギフト。" userName="sergiotapia" createdAt="2025-04-12T15:18:01" color="#45d325">}}

{{<matomeQuote body="実は、ffmpegは伝説のFabrice Bellardのおかげで存在してるんだよね。彼はマジで稀有なプログラマーで、驚くほど有能で、業績の幅広さからして存在の波長が違うレベル。<br>ffmpegを作って、QEMUを発案して、モバイル/セルラー通信の達人なんだぜ。<br>https://en.wikipedia.org/wiki/Fabrice_Bellard" userName="metadat" createdAt="2025-04-12T15:23:09" color="#38d3d3">}}

{{<matomeQuote body="なんとなくこれ思い出したわ。<br>https://newbeelearn.com/tools/videoeditor/<br>これもffmpegのコマンドを出力するみたい。" userName="freeamz" createdAt="2025-04-13T01:06:05" color="">}}

{{<matomeQuote body="ファイル形式のリストから、ffmpegのフロントエンドだってわかったわ。ちょっとがっかり。もう簡単にできるし。3Dモデル形式のコンバーターが欲しかったんだけどな。あれマジでめんどくさい時ある。" userName="leptons" createdAt="2025-04-12T17:33:42" color="">}}

{{<matomeQuote body="最近の調査[0]で、一部の「無料ファイルコンバーター」サイトがマルウェアを注入して攻撃の第一段階にしていることがわかったから、家族のためにサーバーにこういうのを立ち上げたいと思ってたんだよね。<br>まさに探してたものだわ。<br>[0] https://www.fbi.gov/contact-us/field-offices/denver/news/fbi…" userName="haswell" createdAt="2025-04-12T13:59:53" color="#ff5733">}}

{{<matomeQuote body="便乗してStirling PDF[0]を宣伝させてくれ。Raspberry Piでdocker composeで動かしてて、PDFを第三者に送らずに編集できるからマジ助かる時がある。<br>[0] https://github.com/Stirling-Tools/Stirling-PDF" userName="thi2" createdAt="2025-04-12T15:53:36" color="#45d325">}}

{{<matomeQuote body="えー、マジ怖いんだけど。どのサイトのことか聞こうと思ってたけど、ここにリストがあったわ。<br>https://www.helpnetsecurity.com/2025/03/18/fbi-free-file-con…" userName="Alifatisk" createdAt="2025-04-12T16:29:35" color="">}}

{{<matomeQuote body="へー、FBIって詐欺から身を守るためのアドバイスとかもしてんだね。曰く、＞“深呼吸して、落ち着いて、よく考えろ”だって。" userName="oceanhaiyang" createdAt="2025-04-13T15:41:33" color="">}}

{{<matomeQuote body="正直、ffmpegにウェブインターフェースが必要な理由がわかんない。マルウェアの温床になるだけじゃね？" userName="ryandrake" createdAt="2025-04-12T23:41:43" color="#ff33a1">}}

{{<matomeQuote body="うちの70代の機械音痴な両親にはffmpegなんて無理ゲーだわ。" userName="haswell" createdAt="2025-04-13T03:31:16" color="#38d3d3">}}

{{<matomeQuote body="親の数は君より68人以上少ないけど、ffmpegはマジで技術的にムズい。F50企業にトランコーディングのセットアップ売り込んだこともあるし。" userName="genewitch" createdAt="2025-04-13T07:58:33" color="">}}

{{<matomeQuote body="どんな技術的な問題？" userName="pbmahol" createdAt="2025-04-16T07:28:42" color="">}}

{{<matomeQuote body="オタクは別だけど。普通の人には無理でしょ。普通の人はいちいちファイルを変換するためだけに、オープンソースのソフトをダウンロードして自鯖でホストしたりしないって。" userName="immibis" createdAt="2025-04-13T09:01:39" color="#ff5733">}}

{{<matomeQuote body="オタクです。ffmpegでフォーマット変換したり、エンコードし直したりする必要が割とあるんだよね（ミキサーから16bit wavのオーディオトラックが16個出てきて、それを誰かに送ってざっくりミックスしてもらうんだけど、月に1回くらい）。<br>コマンドラインはChatGPTに聞いたりする。「Aを左、Bを右にして2つのトラックを1つのステレオトラックにしたい」とかマジ便利。" userName="maccard" createdAt="2025-04-13T11:32:26" color="#785bff">}}

{{<matomeQuote body="マジか、ソースコードがちゃんとオープンで手に入るんだね！<br>https://github.com/VERT-sh/VERT<br>AGPLライセンスってのが、この手のプロダクトにはピッタリみたい。<br>AGPLってのは、Free Software Foundationが作ったフリーソフトのライセンスの一種で、GPLと似てるけど、一つ大きな違いがあるんだって。<br>ネットワーク利用条項ってやつで、AGPLライセンスのソフトを改造して、ウェブアプリとかAPIみたいにネットワーク経由で使うなら、それを使うユーザーにもソースコードを公開しなきゃいけないんだってさ。<br>GPLだと、ソフトを配布するときだけコードを共有すればいいけど、AGPLだと、SaaSみたいにインターネットでアクセスするだけでもコードを共有しなきゃいけないんだって。AGPLはGPLの抜け穴を塞ぐために作られたらしいよ。<br>もっと詳しく知りたいなら、ここ見てみて。<br>https://opensource.stackexchange.com/questions/7578/what-are…" userName="metadat" createdAt="2025-04-12T14:01:45" color="#785bff">}}

{{<matomeQuote body="AGPLライセンスのソフトに対してRPCするライブラリを書くのはどうなの？AGPLのコードを全然変更してなくても？" userName="SteveNuts" createdAt="2025-04-12T17:19:37" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="俺が理解してる限りだと、クライアントには適用されなくて、サービス自体にだけ適用されるんじゃないかな。" userName="stavros" createdAt="2025-04-12T17:43:48" color="#ff5733">}}

{{<matomeQuote body="ウェブサイトが何を使って作られたのかちゃんとクレジットしてたらもっと良いのにね。" userName="xnx" createdAt="2025-04-12T22:03:33" color="">}}

{{<matomeQuote body="ちゃんと書いてあるじゃん？(i)ボタンをクリックすると、「Libraries」ってセクションがあるよ。" userName="jangxx" createdAt="2025-04-13T11:44:30" color="#785bff">}}

{{<matomeQuote body="なんでこういうのってホストする必要があるんだろ？<br>俺のラップトップにはいくつかファイル変換アプリが入ってるよ。そっちの方が速くて良いし、データをどこかに送って処理してまた送り返してもらう必要もないし、バカみたいじゃん。" userName="api" createdAt="2025-04-12T13:38:12" color="">}}

{{<matomeQuote body="企業戦士たちには需要があるんだよ。彼らはローカルに何もインストールできないから… ウェブの裏に隠されたユーティリティを見つけると喜ぶんだ。" userName="liotier" createdAt="2025-04-12T13:40:51" color="#38d3d3">}}

{{<matomeQuote body="オンラインの変換ツールはもうたくさんあるよね。これはFOSSで少しは信頼できるけど、企業環境にいる人はほとんど気にしないだろうね。" userName="graemep" createdAt="2025-04-12T14:39:18" color="">}}

{{<matomeQuote body="なるほどね、良い指摘だ。<br>クラウド化が進む理由として見落とされがちなのは、企業ITからの脱出手段になるってことだよね。20MBのファイルを3000kmも離れた場所に送って、簡単な処理をしてもらい、送り返してもらう方が、アプリのインストール許可を得るより簡単なんだ。" userName="api" createdAt="2025-04-12T13:44:45" color="#38d3d3">}}

{{<matomeQuote body="マジでそうなんだよね。前の職場では、ツールの承認プロセスが国勢調査並みのアンケートで、承認まで4〜6週間もかかったんだ。このプロセスでソフトウェアが拒否されたことは一度もなかったよ - ほとんどの人が記入するのを面倒くさがってたんだ。" userName="maccard" createdAt="2025-04-13T11:36:04" color="#ff33a1">}}

{{<matomeQuote body="＞なんでそんなもんホストする必要があんの？<br>社員とかがローカルにインストールできないからじゃん？<br>ウェブホスト型ソリューションの実用性を否定するのは、ただの反抗期かマジで視野が狭いだけだろ。<br>＞ウェブ展開で何が出来るんだ？<br>ローカルインストールを避けたい人もいるかもだけど、そういうのって稀じゃね？" userName="liotier" createdAt="2025-04-13T08:26:39" color="">}}

{{<matomeQuote body="`ffmpeg`を直接扱うスキルがない人もいるんだよね。昔、親父が簡単にファイルを変換できるように、`ffmpeg`を使ったウェブサイトを作ってホストしてたんだ。今はvert.shがあるからもう必要ないけどね！" userName="palmy" createdAt="2025-04-12T13:50:20" color="#45d325">}}

{{<matomeQuote body="俺には当てはまらないな。一番パワフルなマシンはホームサーバーだし、ラップトップはマジでゴミだし。" userName="doubled112" createdAt="2025-04-12T13:41:27" color="">}}

{{<matomeQuote body="うちの奥さんのために、こういうのをホームネットワークで色々動かしてるよ。新しいマシンを設定したり、会社のノートPCをゲストネットワークで使ったりする時に、ツールがネットワーク上にあるとマジ便利。" userName="XorNot" createdAt="2025-04-12T15:04:01" color="#ff5c5c">}}

{{<matomeQuote body="これはクライアントサイドで変換するから、サーバーにデータを送る必要がないんだよね。既存のアプリで満足してるなら、あんま使い道ないかも。でもUI/UXは多くの人に響くと思う。" userName="barbs" createdAt="2025-04-12T15:27:20" color="">}}

{{<matomeQuote body="トラフィックをマネタイズして、サブスクリプションをアップセルするのが難しいんだろね。クライアントサイドで完結するなら、ローカルアプリでいいじゃん。" userName="imoreno" createdAt="2025-04-12T16:26:32" color="">}}

{{<matomeQuote body="めっちゃ便利で素晴らしいけど、自動オプトインの解析情報はメインページに書くべきだよ。Plausible使ってるのは良いし、vertがどう使われてるか知りたいのも理解できるけど、なんで設定画面の一番下に隠すの？信用できなくなるわ。ソースコードを監査すれば他のサプライズも見つけられるけど、そういう問題じゃないんだよ。これは提案/フィードバックとして受け止めてください。それ以外は、マジで便利で使いやすいプロジェクトおめでとう！" userName="dr_kiszonka" createdAt="2025-04-12T18:07:41" color="#ff5c5c">}}

{{<matomeQuote body="常識的に考えて、<br>“タダで製品を使ってるなら、自分が商品なんだよ。”<br>グラフィックカードとか積んだサーバーで動画変換を無料でホストしてるのが、ちょっと気持ち悪いって思うのは俺だけ？Plausibleでデータ収集してるだけじゃ、長期的にサポートできるとは思えないんだけど。何か見落としてる？" userName="AnyTimeTraveler" createdAt="2025-04-13T00:18:22" color="#38d3d3">}}

{{<matomeQuote body="これって、FFmpegのUIとしては最高だよねー。もうちょいランディングページでアピールしてほしいな。" userName="handwarmers" createdAt="2025-04-12T15:09:58" color="">}}

{{<matomeQuote body="設定にはちゃんと書いてあるよ。「vertd projectはFFmpegのサーバーラッパーです」って。" userName="franciscop" createdAt="2025-04-12T15:41:09" color="#ff5733">}}

{{<matomeQuote body="オープンソースのライセンスにも、Apacheみたいに帰属条項があってもいいと思うんだよねー。何年もかけて作ったものなら、ちゃんとクレジットされるべきじゃん？<br>Edit： package manager経由でライブラリ使う場合は”リンク”って扱いで、派生物にはならないかも。Apacheの条項も適用されない場合が多いかもね。" userName="mubou" createdAt="2025-04-12T15:30:00" color="">}}

{{<matomeQuote body="Vertって、https://ffmpeg-web.netlify.app/ の упрощенный バージョンみたいな感じ？" userName="xnx" createdAt="2025-04-12T13:22:47" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="違うよー。サーバーで動画を処理してるんだよ。<br>＞デフォルトでは、動画はサーバーにアップロードされて処理されます。ローカルでの設定方法はこちら。<br>＞サーバーもオープンソースだよ：https://github.com/VERT-sh/vertd" userName="maxloh" createdAt="2025-04-12T16:01:16" color="#ff33a1">}}

{{<matomeQuote body="たぶん、これ使ってるのは：<br>・libvips (wasm): 画像変換用<br>・ffmpeg (wasm): 音声変換用<br>・ffmpeg (remote, via vertd): 動画変換用。ホスト側でwasm ffmpegを使うオプションもあるけど、性能とかファイルサイズに制限がある。<br>github見てると、対応してないフォーマットは大抵、wasm libvps/ffmpegにフォーマットを処理するライブラリをリンクするのが難しいのが原因みたい。" userName="bhaney" createdAt="2025-04-12T20:27:23" color="#ff33a1">}}

{{<matomeQuote body="これはブックマークしとこ。<br>動画変換でサーバーにアップロードが必要なら、ffmpeg直接叩いた方が良くない？ファイルサイズ大きいとアップロードとダウンロードで時間かかりそうだし。でも、動画変換がWASMだけで完結するようになれば、そういう問題もなくなるかもね。" userName="cbondurant" createdAt="2025-04-12T14:15:58" color="">}}

{{<matomeQuote body="これもおすすめ：ConvertX<br>https://github.com/C4illin/ConvertX<br>画像、動画、ドキュメントとか。" userName="pruneau" createdAt="2025-04-12T13:57:44" color="">}}

{{<matomeQuote body="動画試したら、”invalid digit found in string”って出た。termuxでffmpeg使うわ。" userName="remram" createdAt="2025-04-12T14:47:36" color="">}}

{{<matomeQuote body="AVC／HEVC mp4エンコードで、デインターレースやリサイズみたいなビデオフィルター、あとebu R128みたいなオーディオフィルターも使えるカスタムプリセットに対応してるバージョンってあるかな？　あと、普段cinefrom／mov形式を使うんだけど、なぜかうまくいかないんだよね" userName="brontosaurusrex" createdAt="2025-04-12T16:10:29" color="">}}

{{<matomeQuote body="マジでいいね！　こういうの長年欲しかったんだ。中小企業でファイルの変換のためによくわからないウェブサイトを使う代わりに、シンプルなオープンソースのツールを使えたら最高じゃん。検索エンジンの結果からのトラフィックを、例えばプロキシを使って社内ツールにリダイレクトできるし。" userName="eniac111" createdAt="2025-04-13T00:48:39" color="#45d325">}}

{{<matomeQuote body="お願いだからHEICを追加して！　iPhoneのデフォルトのファイル形式なんだから" userName="androng" createdAt="2025-04-12T16:37:59" color="">}}

{{<matomeQuote body="これってただのffmpegを使ってて、比較的最近サポートが追加されたみたいだね。<br>https://trac.ffmpeg.org/ticket/6521<br>https://git.ffmpeg.org/gitweb/ffmpeg.git/commit/a0821345eb31…" userName="natebc" createdAt="2025-04-12T20:05:56" color="">}}

{{<matomeQuote body="libvips（このツールが使ってる画像処理ライブラリ）のwasmビルドには、特許の問題でHEICが含まれてないんだって。<br>https://github.com/kleisauke/wasm-vips/issues/3<br>AVIFとJXLはサポートしてるみたい。AppleがHEICを見捨ててくれるといいんだけどね。" userName="jcupitt" createdAt="2025-04-13T10:19:39" color="#ff5733">}}

{{<matomeQuote body="vert.shにHEICのサポートが追加されるのはマジで最高だと思う。ImageMagickのmogrifyコマンドを使えば、HEIFをJPGに変換できるよ。<br>　mogrify -format jpg -quality 90 ”$INPUT_FILE”" userName="nodesocket" createdAt="2025-04-13T00:31:27" color="">}}

{{<matomeQuote body="そうそう、これが一番よくあるウェブ変換なんだよね。HEICからJPGへ" userName="mfkp" createdAt="2025-04-12T18:21:35" color="">}}

{{<matomeQuote body="自分も似たようなことをffmpeg WASMを使ってブラウザでやったことあるけど、残念ながら限界があるんだよね。重い処理はマジで無理。<br>https://vididoo.vercel.app/" userName="bilater" createdAt="2025-04-12T17:39:28" color="">}}

{{<matomeQuote body="制限要因は何なの？　ブラウザのVMメモリが少ないとか？" userName="chentastic" createdAt="2025-04-12T18:05:22" color="">}}

{{<matomeQuote body="ffmpegをWebAssemblyにコンパイルして、ビデオ変換をオフラインで処理することもできるんじゃない？" userName="maxloh" createdAt="2025-04-12T15:56:39" color="">}}

{{<matomeQuote body="それ、まさにこれのことじゃん？<br>https://github.com/VERT-sh/VERT/blob/2c8cb1922cf611489022645...<br>で、`@ffmpeg/ffmpeg`はhttps://ffmpegwasm.netlify.app　だって。<br>もし`supportedFormats`配列をちょっと調整して動画形式を追加したら、多分うまくいくんじゃないかな。" userName="starkparker" createdAt="2025-04-12T15:57:45" color="">}}

{{<matomeQuote body="それ、ウェブサイトに書いてあることと違うくない？<br>＞Video uploads to a server for processing by default, learn how to set it up locally here.”だって。<br>サーバーのコードもオープンソースみたいだよ。<br>https://github.com/VERT-sh/vertd" userName="maxloh" createdAt="2025-04-12T16:04:00" color="">}}

{{<matomeQuote body="引用した文のリンク先を見れば、理由が書いてあるよ。" userName="michaelsalim" createdAt="2025-04-12T16:36:23" color="">}}

{{<matomeQuote body="これみたいな感じ？<br>https://github.com/ffmpegwasm/ffmpeg.wasm" userName="Alifatisk" createdAt="2025-04-12T16:30:33" color="">}}

{{<matomeQuote body="いいね。これにオプションでyt-dlpのサポートがあったら最高だな。" userName="gunalx" createdAt="2025-04-12T13:22:43" color="#785bff">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
