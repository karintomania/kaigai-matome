+++
date = '2025-07-27T00:00:00'
months = '2025/07'
draft = false
title = 'バイトダンス版VSCode「Trae IDE」の性能＆遠隔測定分析！気になるデータ収集の実態は？'
tags = ["IDE", "VSCode", "バイトダンス", "パフォーマンス", "テレメトリー"]
featureimage = 'thumbnails/orange_pink4.jpg'
+++

> バイトダンス版VSCode「Trae IDE」の性能＆遠隔測定分析！気になるデータ収集の実態は？

引用元：[https://news.ycombinator.com/item?id=44703164](https://news.ycombinator.com/item?id=44703164)




{{<matomeQuote body="OPのスクリーンシェア、テレメトリーの設定変更時に再起動が必要ってポップアップが出るのに、ユーザーが再起動しないままテストしてるよね？　そりゃ振る舞いも変わらないよ。俺がバカなのかな、再起動しても変わらないのかもしれないけど、このテストから有用な結論は出せないんじゃないかな。追記：トップウィンドウを閉じて再起動してるのは分かったけど、肝心な部分がちゃんと再起動してるのかはっきりしないんだ。" userName="kiitos" createdAt="2025/07/28 01:46:56" color="#38d3d3">}}




{{<matomeQuote body="両方試したけど、テレメトリーは変わらなかったよ。IDEの再起動を促されたけど、再起動する前に両方のテレメトリーオプションを無効にしたかったんだ。" userName="segfault22" createdAt="2025/07/28 02:16:11" color="#45d325">}}




{{<matomeQuote body="見てくれて、指摘してくれてありがとう。テレメトリー無効化が効かないって主張にとって、大きな見落としみたいだね。再起動が必要なのに警告を無視してたら、テストは無効になっちゃうよ。どっちにしても、テレメトリーのペイロードが見られるのは役に立つね。" userName="Aurornis" createdAt="2025/07/28 01:53:47" color="#ff5c5c">}}




{{<matomeQuote body="著者の返答を見てみて。彼曰く、どっちにしても関係ないってさ。https://news.ycombinator.com/item?id=44706580" userName="pmxi" createdAt="2025/07/28 03:29:37" color="#38d3d3">}}




{{<matomeQuote body="EclipseのVSCodeそっくりなTheiaIDEってのもあるよ。https://theia-ide.org/<br>数年前は粗かったけど、最近はかなりいい感じ。TIがCode Composer StudioをTheiaを使って作り直したくらいだから、大規模ユーザーもいるんだね。LSPサポートもあって、Monacoエディタのバックエンドを使ってる。VSCodeにEclipseの感覚を加えたもので、好みが分かれるかもしれないけど、選択肢の一つだよ。" userName="barkingcat" createdAt="2025/07/27 20:20:42" color="#38d3d3">}}




{{<matomeQuote body="「＞Try Theia IDE online」をクリックしたら、「＞Please login to use this demo」って出てタブを閉じちゃったよ。" userName="kookamamie" createdAt="2025/07/28 06:07:48" color="">}}




{{<matomeQuote body="確かに一番よく考えられたランディングページじゃないけど、エクスプローラページは使われ方や見た目についてよく分かるよ。https://theia-ide.org/theia-platform/(Selected Tools based on Eclipse Theiaまでスクロールしてみてね)" userName="lastdong" createdAt="2025/07/28 06:40:38" color="#45d325">}}




{{<matomeQuote body="VSCodeから離れられないのは、Markdownサポートの機能なんだ。特に、ファイルをドラッグ＆ドロップしてリンクや画像を挿入できる機能だよ。驚くほど他のエディタにはないのに、俺はいつも使ってるんだよね。* https://code.visualstudio.com/Docs/languages/markdown#_inser..." userName="bobajeff" createdAt="2025/07/27 22:19:08" color="#ff5c5c">}}




{{<matomeQuote body="スマートフォンサポートが不要なら、Obsidianの良い代替にもなるよ。" userName="newlisp" createdAt="2025/07/27 23:38:24" color="">}}




{{<matomeQuote body="dendron.soってサイト知ってる？<br>VSCodeで使えるObsidianみたいなもんで、しかも無料のオープンソースなんだぜ。" userName="jodrellblank" createdAt="2025/07/28 01:02:23" color="#ff5733">}}




{{<matomeQuote body="でもDendronって、もう死んでるプロジェクトじゃん。<br>メンテ中ならまだしも、今から使い始める気にはなれないな。<br>入門ページのスクショもAWSで壊れてるし。" userName="ozim" createdAt="2025/07/28 06:32:39" color="#38d3d3">}}




{{<matomeQuote body="俺はDendron使ってみたけど、全然後悔してないぞ。<br>ウェブサイトは残念な状態だけど、拡張機能は超便利で、イライラするバグもほとんどないし。<br>いつかPlantUMLとかMermaidの新しいバージョンに対応できるように、自分で拡張機能をカスタマイズしたいな。" userName="alyandon" createdAt="2025/07/28 17:57:45" color="#45d325">}}




{{<matomeQuote body="Obsidianでもこれ（画像貼り付け）できるよ。<br>少なくともクリップボードからの画像貼り付けはできるから、ドラッグ＆ドロップもきっといけるはず。" userName="chatmasta" createdAt="2025/07/28 17:21:49" color="#ff33a1">}}




{{<matomeQuote body="面白いね。<br>俺はツールを好きにカスタマイズしたいタイプだから、これならEmacsパッケージ書いちゃうな。<br>でもEmacsだもん、誰かがもう作ってるかもな。<br>あ、やっぱりあったよ。<br>https://github.com/mooreryan/markdown-dnd-images" userName="pritambaral" createdAt="2025/07/29 14:35:38" color="#45d325">}}




{{<matomeQuote body="ありがとう！<br>このコメント、タイミングがバッチリすぎて最高だわ。" userName="Sn0wCoder" createdAt="2025/07/27 23:12:25" color="">}}




{{<matomeQuote body="でも、俺が間違ってなかったらさ、これも結局はVS CodeとかElectronと一緒なんじゃないの？" userName="barrenko" createdAt="2025/07/28 07:35:57" color="">}}




{{<matomeQuote body="それはElectronとMonacoっていうテキストエディタ部分のことだけど、VS CodeやTheiaにはこの二つ以外にもっと色々な要素があるんだよ。" userName="oaiey" createdAt="2025/07/28 07:54:54" color="#ff5c5c">}}




{{<matomeQuote body="そうなんだよ、VS Codeはあんまり改造向きじゃないからフォークするんじゃなくて、Theiaを使えばいいのに。<br>Theiaはモジュラー構造になってて、ライブラリみたいに好きなIDEを自分で作れるようにメンテされてるんだからさ。" userName="v3ss0n" createdAt="2025/07/27 22:28:28" color="#ff5c5c">}}




{{<matomeQuote body="反対意見で低評価した人、なんで低評価したのか理由を教えてくれない？" userName="v3ss0n" createdAt="2025/07/28 11:49:08" color="">}}




{{<matomeQuote body="Google Cloud ShellもTheiaなんだね。かなり人気あると思うよ。" userName="jeffbee" createdAt="2025/07/27 20:24:06" color="#ff5733">}}




{{<matomeQuote body="Eclipse（エコシステムとしてね）は企業で結構人気あるけど、設定が複雑で学習コストが高いから敬遠されがちだよね。昔は重かったけど、ムーアの法則とかコード管理のおかげで軽くなったんだ。TheiaをWebベースでデプロイしたいんだけど、まだ時間がないんだよね。" userName="bayindirh" createdAt="2025/07/27 20:56:47" color="#ff5733">}}




{{<matomeQuote body="VSCodeの主要な設計者がEclipseの設計者の一人でもあって、あの有名なGoF本（Design Patterns）の共著者であるErich Gammaなんだよ。" userName="pjmlp" createdAt="2025/07/28 07:07:37" color="#38d3d3">}}




{{<matomeQuote body="それは知らなかったな、面白いね。VSCodeでEclipseをJavaのLSPとして使うってのが、これで納得できたよ。ErichのEclipseでの功績は尊敬するけど、Microsoftをそこまで尊敬してないからVSCodeには移行できないな。" userName="bayindirh" createdAt="2025/07/28 07:11:09" color="">}}




{{<matomeQuote body="それじゃあGitHub、LinkedIn、TypeScript（それを使うフロントエンドフレームワーク）、Microsoft所有のスタジオゲーム、Linux Kernelへの貢献、GHCへの貢献も使わないってこと？<br>最近は避けるのが難しいよね。彼（Erich Gamma）がVSCodeの歴史について話してるセッションがあるよ：The Story of Visual Studio Code with Erich Gamma and Kai Maetzel https://www.youtube.com/watch?v=TTYx7MCIK7Y" userName="pjmlp" createdAt="2025/07/28 07:14:33" color="#38d3d3">}}




{{<matomeQuote body="もう個人のコードはGitHubにアップしてないし、LinkedInも年に2回くらいしか開かないよ。Web開発はしないし、僕は最前線で働いてるんだ。デスクトップPC持ってないからゲームも正直やらない。<br>systemdとかLinux Kernel経由で関わってるのはあるけど、GPLライセンスだからね。少なくとも、関わりを最小限にしようとはしてるよ。もっと詳しい情報はこれを見てね：https://news.ycombinator.com/item?id=44634786<br>動画ありがとう、時間があるときに見てみるよ。" userName="bayindirh" createdAt="2025/07/28 07:19:23" color="#ff33a1">}}




{{<matomeQuote body="TheiaはEclipse IDEとは違うよ、JavaじゃなくてJSで書かれてるし、完全にJavaのEclipseとはコードベースを共有してないんだ。" userName="v3ss0n" createdAt="2025/07/27 22:26:18" color="#38d3d3">}}




{{<matomeQuote body="うん、知ってるよ。だから最初の段落で“エコシステムとしてね”って書いたんだ。コメント書いたときちょっと遅くて、意味が曖昧になっちゃったみたい。ごめんね。" userName="bayindirh" createdAt="2025/07/28 06:32:51" color="">}}




{{<matomeQuote body="Eclipseまだ生きてるのかよ、マジか！" userName="fHr" createdAt="2025/07/27 21:10:06" color="">}}




{{<matomeQuote body="VSCodeのJava向け拡張パックをインストールすると、裏でヘッドレス版のEclipse JDTが動くんだ。それって全然軽量じゃないと思うんだけどね。" userName="andylynch" createdAt="2025/07/27 21:32:20" color="#38d3d3">}}




{{<matomeQuote body="何がおかしいの？全部再実装しても同じコード量になるよ。JDT言語サーバーはUIを不要にバンドルした“ヘッドレス”ソフトじゃないんだから。詳しくはこちら: https://marketplace.visualstudio.com/items?itemName=redhat.j..." userName="nsonha" createdAt="2025/07/28 00:44:32" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Javaはあんまり軽量だと思ってないんだよね。できるのかもしれないけど、俺が知ってるJava開発ってのは、ひたすらライブラリとかフレームワーク、チェック、テストとかを増やしまくる感じだからさ。" userName="Cthulhu_" createdAt="2025/07/28 10:12:23" color="">}}




{{<matomeQuote body="launchModeをLightWeightに設定すると、構文解析専用の言語サーバーが立ち上がるよ。" userName="drewbitt" createdAt="2025/07/28 02:20:43" color="#ff5733">}}




{{<matomeQuote body="バイトダンスの動画エディタ、CapCut（デスクトップ版）も似たような分析をしてほしいな。UIはマジで最高だけど、絶対テレメトリーとかスパイウェアまみれだと思うんだよね。どの程度か知りたいな。そういう分析、まだ見つかってないんだ。" userName="fjghajkhdfgjlk" createdAt="2025/07/28 08:05:54" color="#ff5c5c">}}




{{<matomeQuote body="素晴らしい分析、よくやった！<br>VSCode、Trae、Cursorを分析したなら、Kiro（AWSフォーク）も分析してくれない？彼らのデータ収集のやり方が気になるんだ。" userName="spyridonas" createdAt="2025/07/27 18:56:54" color="#ff33a1">}}




{{<matomeQuote body="個人的な話だけど、Kiroって他と比べて企業調達がめちゃくちゃ楽なんだよ。数日と数ヶ月くらい違う。これはKiroが優れてるからじゃなくて、ほとんどの企業がすでにAWSと機密データを共有してて、TAM（テクニカルアカウントマネージャー）がKiroの利用を喜んで進めてくれる契約があるからなんだよね。個人にとってのプライバシーやセキュリティが額面通りに受け取られる一方で、企業にとっては開示された情報価値でしか判断されないのは興味深い点だね。" userName="cuuupid" createdAt="2025/07/27 21:09:04" color="#45d325">}}




{{<matomeQuote body="これは完全に合理的だよね。もし技術インフラを全部AWSに任せてるなら、別のAWSサービスを追加したってサプライチェーンのリスクは増えないし、むしろ他ベンダーのものを追加するほうがリスクになるわけだし。" userName="ameliaquining" createdAt="2025/07/28 02:28:46" color="#45d325">}}




{{<matomeQuote body="俺だけかな、<br>システム情報: ハードウェアスペック、OS詳細、アーキテクチャ<br>使用パターン: アクティブ時間、セッション期間、機能使用状況<br>パフォーマンス指標: 応答時間、リソース消費<br>固有識別子: マシンID、ユーザーID、デバイスフィンガープリント<br>ワークスペース詳細: プロジェクト情報、ファイルパス（難読化済み）<br>これって別にそこまで邪魔じゃないというか、彼らがこれらを集めることに特に不快感を感じないんだけど？" userName="cchance" createdAt="2025/07/27 23:03:02" color="">}}




{{<matomeQuote body="俺はいつも選択権が欲しいんだよね。Dartを学ぼうと思ってたんだけど、インストーラーがGoogleがテレメトリーを収集するって言ったから、もう二度と触ってない。" userName="macintux" createdAt="2025/07/27 23:41:05" color="#ff33a1">}}




{{<matomeQuote body="俺のPC上のプログラムは、OSも含めて、ユーザーとして現在行ったGUI/CLI操作に直接関連しない限り、一切ネットワークコールをするべきじゃないと思ってる。例外はオプトインであるべきだね。正直、これらのリモート通信のオーバートン・ウィンドウは間違ったところにあると思うな。" userName="user3939382" createdAt="2025/07/27 23:45:22" color="#785bff">}}




{{<matomeQuote body="なんかさ、俺ってちょっと神経質な方なんだけど、このレベルの心配性ってぶっ飛んでるわ。車持ってる？スマホは？クレジットカードは？ブロックごとにカメラがある公の場を歩いてるよね？俺は全然同意できないんだけど、俺たちが生きてる世界って、普通は匿名化されてるテレメトリーデータなんかよりも、もっと色んな方法で追跡されちゃうんだから、追跡されないなんて不可能だよ。" userName="ragequittah" createdAt="2025/07/28 01:34:09" color="#ff33a1">}}




{{<matomeQuote body="あー、でもこれって業界標準だしね。良いってわけじゃないけど、みんなやってることなんだよ。" userName="tonyhart7" createdAt="2025/07/28 03:34:09" color="">}}




{{<matomeQuote body="”通常は匿名化された”テレメトリーデータねぇ。<br>匿名化なんてたいてい嘘だよ：<br>https://news.ycombinator.com/item?id=20513521<br>https://news.ycombinator.com/item?id=21428449<br>あとさ、セキュリティやプライバシーのニヒリズムはやめてくれよ。<br>https://news.ycombinator.com/item?id=27897975" userName="fsflover" createdAt="2025/07/28 08:29:26" color="#785bff">}}




{{<matomeQuote body="ニヒリズムじゃないよ。俺だってAd Block使うし、RFIDウォレットも持ってるし、スマホにアプリは入れない、Googleもめったに使わない。でも、何かめちゃくちゃ便利で、集められるデータが大したことないなら、気にしなくなる時が来るんだ。Windows 11（気持ち悪いけど）を使うのは、他の方法じゃ友達とビデオゲームできないから。Uberを使うのは、街を横断できるから。Visual Studioを使うのは、コーディングに役立つから。ChatGPTを使うのは、いろんなことに役立つから。プライバシー絶対主義だからって、それらのどれかを取り上げるなんてバカげてるよ。カメラが怖いから部屋から出ないっていうのと同じノリだ。俺は企業のやり方が嫌いだから、彼らに対して反撃があればいいとは思うけど、Linuxでオープンソースソフトウェアだけ使ってFairphoneとか、俺の（ほとんどの人の）世界じゃ無理な極端な話なんだよ。" userName="ragequittah" createdAt="2025/07/28 19:33:15" color="#785bff">}}




{{<matomeQuote body="スマホにアプリは入れないのに、PCからのGoogleのパーソナライズされたテレメトリーは大丈夫なの？これって矛盾してない？" userName="fsflover" createdAt="2025/07/29 13:22:35" color="#ff5c5c">}}




{{<matomeQuote body="正直に言うとさ、ポルノスターがカメラの前でヤられるのは業界標準だよ。でも俺はポルノスターじゃないし、カメラの前でヤられたくないね。「みんなやってるから儲かるんだ」なんて言って、このプライバシー侵害を言い訳するのは、ひどい正当化だよ。" userName="shit_game" createdAt="2025/07/28 03:50:44" color="#38d3d3">}}




{{<matomeQuote body="公平に見て、他の人たちも指摘してるけど、スマホは家のパソコンよりもずっと個人的なものだよ。スマホはほとんどいつも君と一緒だし、PCよりもはるかに親密なデータを集めてるんだ。" userName="macintux" createdAt="2025/07/29 16:30:08" color="">}}




{{<matomeQuote body="俺はこれらを共有したくないね：<br>・ユニーク識別子：マシンID、ユーザーID、デバイスフィンガープリント<br>・ワークスペース詳細：プロジェクト情報、ファイルパス（難読化されてるけど）<br>あと、OSの詳細もね。どれも嫌だ。" userName="ipaddr" createdAt="2025/07/27 23:09:28" color="#ff5733">}}




{{<matomeQuote body="それは必ずしも真実じゃないよ、少なくとも俺にとってはね。Intel MEを無効化したQubes OSを動かしてる俺のラップトップの方が、スマホよりもずっと信頼できるんだ。" userName="fsflover" createdAt="2025/07/29 18:50:52" color="#ff33a1">}}




{{<matomeQuote body="信頼できるって言ったんじゃないよ、個人的なデータが多いって言ったんだ。例えば、君のスマホはほとんど常に君がどこにいるか知ってるし、歩いてるか座ってるかも知ってるかもね。誰から電話がかかってきて、誰に電話したか、誰とメッセージしたかもね。ラップトップもいくらかは知ってるだろうけど、同じセンサーはないし、家を出る時にいつも持ち歩くわけじゃないでしょ。" userName="macintux" createdAt="2025/07/29 18:55:39" color="#38d3d3">}}




{{<matomeQuote body="無料プランの不正検知って、こういう機能がないとどうやるの？" userName="maven29" createdAt="2025/07/28 06:50:54" color="#ff33a1">}}




{{<matomeQuote body="スマホは常に位置情報とか行動パターンを把握してるって言うけど、俺はLibrem 5でハードウェアキルスイッチ使ってて、モデムとかセンサーの機能をオフにできるから大丈夫だね。" userName="fsflover" createdAt="2025/07/29 19:21:31" color="#ff33a1">}}




{{<matomeQuote body="誰もツール使うこと強制してないだろ。利用規約とかプライバシーポリシーに同意して使ってんなら、企業もデータ収集する権利があるのは当然だよね。ポルノスターの例えと同じさ。" userName="tonyhart7" createdAt="2025/07/28 04:03:49" color="#38d3d3">}}




{{<matomeQuote body="じゃあ、なんであんたはポルノに出てるわけ？" userName="blackoil" createdAt="2025/07/28 04:22:59" color="">}}




{{<matomeQuote body="ちなみに、それは無効にできるよ。初回起動時にはテレメトリーは収集されないし。俺はDartとFlutterの両方で無効にしてるぜ。" userName="FuturisticGoo" createdAt="2025/07/28 03:27:52" color="#45d325">}}




{{<matomeQuote body="こういう設定をすると、かえって法執行機関の目を引く可能性があるってことを見落としてない？足跡を隠しすぎると、逆に目立っちゃうんだよ。窓のない森の奥で暮らすのと、裸で歩き回るのとの間には中間地点があるだろ。" userName="ragequittah" createdAt="2025/07/30 01:16:42" color="#38d3d3">}}




{{<matomeQuote body="無料プラン向けに、リモートリソースを使わない軽量版アプリを提供すればいいじゃん。そうすれば「不正利用」の心配もしなくて済むでしょ。" userName="nottorp" createdAt="2025/07/28 12:58:56" color="#ff5c5c">}}




{{<matomeQuote body="だって、俺たちがソフトウェアをコントロールすべきであって、その逆じゃないだろ。" userName="gleenn" createdAt="2025/07/28 05:50:49" color="#45d325">}}




{{<matomeQuote body="今の業界はかなり残念な状況だよな。もっと良くできるし、そうすべきだ。" userName="grishka" createdAt="2025/07/28 05:58:54" color="">}}




{{<matomeQuote body="業界標準だからって受け入れる必要ないよ。でも、みんな”そういうもんだから”って言って受け入れちゃうんだよね。広告をターゲットにするためだけに、プライバシーや自由の地獄絵図が作られてる。これって完全に狂ってるし、誰も気にしてない。社会はもう崩壊寸前かもね。" userName="naikrovek" createdAt="2025/07/28 16:02:01" color="#ff5733">}}




{{<matomeQuote body="例えを広げると、セックスも業界かもしれないけど、全員が商業的にしてるわけじゃない。商業的にしてる人の中には、撮影されたくない人もいるだろうね。" userName="shit_game" createdAt="2025/07/28 04:48:14" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ソフトウェアはツールだからね。ユーザーのためだけに役立つべきで、他の誰のためでもない。理想を言えば、俺が持ってるデバイスは、他の誰かの利益のために動くべきじゃないんだ。" userName="grishka" createdAt="2025/07/28 05:57:24" color="#ff5733">}}




{{<matomeQuote body="誰もTraeを使うことを強制してないよ。でも、テレメトリー設定が機能しないことや、Traeのモデレーターがテレメトリーに関する議論を潰そうとすることはすごく気になるね。ユーザーは使うプログラムについて情報に基づいて判断できるべきだけど、Traeの開発者たちはそう思ってないみたいだ。" userName="Sabinus" createdAt="2025/07/28 04:36:57" color="#785bff">}}




{{<matomeQuote body="いつか試すかもしれないけど、そんなひどい第一印象のダメージはなかなか払拭できないよ。" userName="macintux" createdAt="2025/07/28 03:56:57" color="">}}




{{<matomeQuote body="彼らはテレメトリーを無効にしたがらないんだよ、たとえオフにする人が少数派でもね。なんでだろう？" userName="drewbitt" createdAt="2025/07/27 19:00:41" color="">}}




{{<matomeQuote body="テレメトリーを無効にすると、『隠し事がある』っていう自己申告のサインと解釈されて、彼らは監視を強化するのかもね。" userName="imglorp" createdAt="2025/07/27 19:43:36" color="#ff5733">}}




{{<matomeQuote body="「俺はパワーユーザーだ」みたいな感じかな。その設定をいじるのはごく一部のユーザーだろうね。Dangも同じように、ここでコメントしてるのはごく一部だって言ってたな。" userName="sejje" createdAt="2025/07/27 20:46:27" color="">}}




{{<matomeQuote body="これはほとんどのオンラインコミュニティに言えることだよね。ユーザーの大多数は受動的な参加者で、一部だけが貢献し、その中でもごく一部がほとんどのコンテンツを作ってる。Redditがいい例で、数字がめちゃくちゃ偏ってるんだ。" userName="Etheryte" createdAt="2025/07/27 21:48:52" color="">}}




{{<matomeQuote body="これ見て：「インターネットで読むことのほとんどは頭のおかしい人が書いたものだ」ってやつ。<br>https://old.reddit.com/r/slatestarcodex/comments/9rvroo/most..." userName="jodrellblank" createdAt="2025/07/28 01:09:47" color="">}}




{{<matomeQuote body="興味ある人はあのリンクのHN（Hacker News）での議論をどうぞ。<br>https://news.ycombinator.com/item?id=18881827" userName="asimovDev" createdAt="2025/07/28 06:34:00" color="#45d325">}}




{{<matomeQuote body="多くの（あるいは全部の）VPNは、多分こっそりログを取ってるんじゃないかなって思う。みんな、そこで一番興味深い秘密の活動をするだろうからね。" userName="HPsquared" createdAt="2025/07/27 20:45:35" color="">}}




{{<matomeQuote body="信頼できるVPNなら、セキュリティ監査を受けてるか、あるいはそういった行為が違法なまともな国に拠点があるはずだ。" userName="throwaway83977" createdAt="2025/07/28 01:11:29" color="">}}




{{<matomeQuote body="Signalのユーザーとかもそうだね。それはユーザーが「おもしろい」ってことしか示さない。機密用途で使えない理由もそこにあるんだ。" userName="rvnx" createdAt="2025/07/27 21:03:20" color="">}}




{{<matomeQuote body="それは違うよ。これは「隠すことがないなら、なんでプライバシーを大事にするんだ？」っていう、このプライバシーの悪夢に俺たちを陥れた有害な思想だ。誰だって「隠し事」はあって当然なんだ。メッセージを覗かれたくないのは普通のこと。犯罪者とか、コンピューターに詳しいって意味じゃない。" userName="const_cast" createdAt="2025/07/27 21:12:02" color="#ff5c5c">}}




{{<matomeQuote body="うーん、「隠すことがない」ってより、プライバシー重視のニッチなサービスを使うと、逆に標的にされやすいって話だよ。Casioの時計やシリア旅行、Tor、Protonmailみたいにね。普通の時計や暗号化した.zipファイル付きGmailの方が現実的。Casioの時計持ってても犯罪者じゃないけど、それと暗号化メール、特定の国への旅行が重なると、自分を守ろうとしたのに無駄にトラブルになる可能性が高い。犯罪者でも同じ。Xkeyscoreの基本もそうで、Signalは「おもしろい人かも」っていう良い信号なんだ。" userName="rvnx" createdAt="2025/07/27 21:39:19" color="#38d3d3">}}




{{<matomeQuote body="1. 一般的にこれは違うと思う。2. 安全だけどニッチなサービスでも、プライバシーがないサービスよりはまだ安全だよ。Signalが「標的」になるって言われるかもしれないけど、GoogleやMetaが運営してるわけじゃないから、標的になるものなんてないだろ？お前から漏洩するデータもないし。もし俺が犯罪者だったら（違うけど）、水鉄砲より本物の銃で銀行強盗するね。本物の銃の方が狙われやすいとしても、ちゃんと機能するからね。水鉄砲は正直…役立たずだし。" userName="const_cast" createdAt="2025/07/27 21:47:20" color="#45d325">}}




{{<matomeQuote body="犯罪者じゃないけど、銀行強盗するなら水鉄砲より本物の銃がいいよね。本物の銃の方が狙われやすいけど、ちゃんと使えるし。水鉄砲じゃ正直役立たずだしさ。<br>でも、アルゼンチンでかな、銀行強盗がわざと偽物の銃を使ったケースがあったらしいよ。それでもちゃんと強盗は成功したし、法的責任も軽くなったんだって。" userName="latentsea" createdAt="2025/07/28 00:47:10" color="">}}




{{<matomeQuote body="カシオの時計を使うと、なんか変なフラグ立つってこと？僕G-Shock好きなのに、最近あんまり付けてないんだけどさ。" userName="bigprof" createdAt="2025/07/27 22:10:31" color="">}}




{{<matomeQuote body="それはグアンタナモ湾に送られる可能性もあるってことだよ: https://en.m.wikipedia.org/wiki/Casio_F-91W#Usage_in_terrori..." userName="1986" createdAt="2025/07/27 23:49:22" color="#ff33a1">}}




{{<matomeQuote body="F-91Wは即席時限爆弾に使われたせいで、長年テロと関連付けられてるんだよ: https://en.wikipedia.org/wiki/Casio_F-91W#Usage_in_terrorism" userName="Mogzol" createdAt="2025/07/27 22:30:48" color="#45d325">}}




{{<matomeQuote body="え、もう安物買ってるだけで目を付けられる時代なの？「やだ！この人500ドルの時計持ってない！」とか言われちゃうのかよ。" userName="spookie" createdAt="2025/07/27 22:47:29" color="">}}




{{<matomeQuote body="F91-Wって世界で一番普及してて売れてる時計の一つなのに、そんなことで標的にされるなんてマジでバカげてると思うよ。" userName="Mogzol" createdAt="2025/07/27 23:54:38" color="">}}




{{<matomeQuote body="これは「プラセボコントロール」って呼ばれるダークパターンだよ。ユーザーに選択肢があるように見せかけて、良い印象を与えつつデータ収集を最大限にするの。テレメトリーが強制だとPRで叩かれるのを避けるためだね。" userName="ethan_smith" createdAt="2025/07/28 08:45:57" color="#ff5733">}}




{{<matomeQuote body="テレメトリーのオン/オフ設定って、少なくともデータにノイズが入るからね。個人的には、クライアントサイドのテレメトリーは全くない方がいいと思う理由の一つだよ。まぁ、向こうは逆の考えだろうけどさ。" userName="msgodel" createdAt="2025/07/27 19:16:14" color="#ff5733">}}




{{<matomeQuote body="これって意図的な動作じゃなくて、単にバグなんだけど彼らが直すのを気にしてないだけ、って考えることもできるよね。" userName="viraptor" createdAt="2025/07/27 20:19:00" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
