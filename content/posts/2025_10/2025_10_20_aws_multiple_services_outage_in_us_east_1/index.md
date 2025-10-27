+++
date = '2025-10-20T00:00:00'
months = '2025/10'
draft = false
title = 'AWS us-east-1で複数サービス障害！認証システムが復旧の足かせに？'
tags = ["AWS", "クラウド障害", "認証システム", "us-east-1", "インシデント管理"]
featureimage = 'thumbnails/purple1.jpg'
+++

> AWS us-east-1で複数サービス障害！認証システムが復旧の足かせに？

引用元：[https://news.ycombinator.com/item?id=45640838](https://news.ycombinator.com/item?id=45640838)




{{<matomeQuote body="今日は大変な日だったよ。朝3時からインシデント対応してたんだ。システムはほとんど回復したけど、一部のバックオフィス系が計算リソースを取り合ってる感じ。一番の問題は、マルチリージョン対応のアプリを設計してたのに、セキュリティチームがIdentity Centerをus-east-1にしか入れてなかったせいで、AWSのコントロールプレーンに会社全体がロックアウトされちゃったこと。金庫からルート認証情報を取り出す頃には、もう復旧してたんだけどね。やっぱり一番弱い部分が全体の弱点になるって痛感したよ。" userName="time0ut" createdAt="2025/10/20 13:44:18" color="#38d3d3">}}




{{<matomeQuote body="FacebookもBGP更新でやらかして、金庫にすらアクセスできなかったって話があったよね。認証がぐるぐる回る仕組みだと、誰かがDNSをぶっ壊したら何もできなくなるんだよ。" userName="1970-01-01" createdAt="2025/10/20 15:27:57" color="#ff5c5c">}}




{{<matomeQuote body="ネットワークを直すためにデータセンターへの物理アクセスが必要で、キーカードで入ろうとしたら、ネットワークダウンでキーカードサーバーもダウンしてて入れなかった、みたいな問題なかったっけ？" userName="crote" createdAt="2025/10/20 16:01:51" color="#38d3d3">}}




{{<matomeQuote body="願望なんだけど、どっかのエンジニアが世界的な障害を直すためにドアをぶち破ってくれたら面白いのにね。語り草になるし。" userName="kylecazar" createdAt="2025/10/20 16:52:14" color="">}}




{{<matomeQuote body="昔eBayにいた頃、大規模障害でデータセンターへのアクセスが必要になったんだ。普段は身元確認とか生体認証で一人あたり5分くらいかかるんだけど、その日はVPが来て「全部のドアを開けろ！」って言ったから、セキュリティスタッフは開けたんだよ。<br>データセンターの場所を知ってれば、誰でもeBayのサーバーをいじり放題だったはず。でも当時はまだ小さな運用チームだったから、そこにいるべき人はほとんど全員知ってたんだ。だからセキュリティは基本的に「誰かに顔見知りとして認識されてるか？」って感じだったな。" userName="jedberg" createdAt="2025/10/20 17:20:35" color="#ff5733">}}




{{<matomeQuote body="アングルグラインダーで侵入しないといけなかったって話だったよね。" userName="wolpoli" createdAt="2025/10/20 17:24:55" color="">}}




{{<matomeQuote body="自動毒ガスシステムが作動してるから、自前の空気供給が必要だったんだろうな。それからレーザーを避けながら核ミサイル発射を止める唯一のボタンにたどり着くんだよ。他にも無意味なSFや悪役の隠れ家っぽい設定をてんこ盛りにしとこうぜ…" userName="bluGill" createdAt="2025/10/20 17:08:02" color="">}}




{{<matomeQuote body="正直、ほとんどのデータセンターはかなりつまらないよ。一番エキサイティングなことなんて、手袋してなくてシートメタルで手を切っちゃうくらいさ。「俺のもう一つのデータセンターはカミソリと憎しみでできてる」っていうステッカーは今でも持ってるけどね。＼o／" userName="donalhunt" createdAt="2025/10/20 17:56:58" color="">}}




{{<matomeQuote body="Googleの初期に、緊急バックアップコードをコンクリートに埋め込んで、気軽に使うことのないようにしてたって聞いたことあるな。数年後、ありえないとされてたことが起きたとき、ジャックハンマーと数時間かけて取り出したんだってさ。" userName="jonbiggums22" createdAt="2025/10/20 19:12:55" color="#785bff">}}




{{<matomeQuote body="データセンターにいた時、火災報知器が鳴って、ドアロックが全部自動で解除されたんだ。" userName="UltraSane" createdAt="2025/10/20 21:28:58" color="">}}




{{<matomeQuote body="データセンターには、有毒ガスがよくあるってさ。" userName="formerly_proven" createdAt="2025/10/20 20:56:18" color="">}}




{{<matomeQuote body="笑った、火災報知器を鳴らせば、好きな時に無許可アクセスできるってこと？" userName="johnisgood" createdAt="2025/10/21 07:38:05" color="">}}




{{<matomeQuote body="Googleパリのデータセンターが水没して火災になった時を思い出したよ。AWS EUを使っていたけど、GoogleサービスのDNSリゾルバーがパリにルーティングされてたんだ。一時しのぎとしてKubernetesで／etc／hostsをグローバル変更して対応。普通はこんなことしないけど、この時は最高にうまくいったね。" userName="SOLAR_FIELDS" createdAt="2025/10/20 22:08:39" color="#ff5733">}}




{{<matomeQuote body="そうなんだよ、Facebookは信じられないことに全部を単一ネットワークにしてたんだ。BGPルートが失われるとドアアクセスも使えなくなるのはやばい。普通のドアアクセスシステムはローカルにキャッシュがあるから、中央サーバーとの接続がなくなっても動くのが普通なんだ。" userName="UltraSane" createdAt="2025/10/20 21:27:43" color="#38d3d3">}}




{{<matomeQuote body="そうだよ。たしか、彼らの内部連絡システムも同じサーバーにあって、それもダウンしちゃったんだ。" userName="junon" createdAt="2025/10/20 16:47:28" color="">}}




{{<matomeQuote body="その時、現場にいたんだけど、コアネットワーキングチーム以外は実質休みみたいなものだったね。マネージャーに電話して皆同じ状況だと確認して、公園に行ったよ。でも、コアサービスチームは、この手のシナリオのために別のインフラでプライベートIRCとかのバックアップ通信システムを用意してたみたい。" userName="simplyluke" createdAt="2025/10/20 18:28:04" color="#ff5c5c">}}




{{<matomeQuote body="そうだよ。データセンターはゾーンに分けて、煙が検出されたゾーンのドアだけロック解除すべきだね。" userName="UltraSane" createdAt="2025/10/21 11:55:11" color="">}}




{{<matomeQuote body="”セキュリティは基本的に「誰かに認識されるか？」だったってこと？”に対し、「それより安全なプロトコルは思いつかないな。まあ、スケールしないけどね。」" userName="terminalshort" createdAt="2025/10/20 22:59:55" color="">}}




{{<matomeQuote body="2022年7月7日のカナダRogersの全サービス停止に似てるな。障害でRogersの携帯も使えなくなって、社員同士も連絡取れなかったんだ。統一ネットワークは、まさに統一された障害モードってこと。ありがたいことに、俺の10 Gbps wavelengthsは影響なかったよ。トランスポートネットワークでレイヤー2以上のサービスを避けてたのが報われたな！" userName="bcrl" createdAt="2025/10/21 01:40:52" color="#ff5c5c">}}




{{<matomeQuote body="ジョン・ウィックはこうやってたんだよ。ガレージに金や武器を埋めて、その上にコンクリートを流し込んでたってさ。" userName="prepend" createdAt="2025/10/20 21:18:51" color="">}}




{{<matomeQuote body="＞Identity Centerをus-east-1にしか置いてないって話だけど、複数のリージョンに置けるのかな？俺が知ってる限りだと、1つのリージョンしか対応してなかったはず。移動させたかったら、まず削除する必要があったんだよね。" userName="vladvasiliu" createdAt="2025/10/20 16:41:44" color="#ff5c5c">}}




{{<matomeQuote body="昔、DCがセキュアだけど、そこまで厳密じゃなかった頃の話。俺はIDなしでソーシャルエンジニアリングを使ってラックの近くまで侵入し、リセットボタンを押してから追い出されたんだよ。懐かしい日々だね。" userName="chasd00" createdAt="2025/10/20 19:23:03" color="">}}




{{<matomeQuote body="ケースバイケースだね。物理的な攻撃者がケーブルを切ったり、盗んだキーカードを簡単に使ったりできないように、キャッシュなしの偏執的モードがあるシステムもあるんだ。僕らのところでは、監査でキャッシュ無効化を強いられたんだけど、2ヶ月後の停電で電気技師がスイッチルームに入れなくなって大変なことになったよ。ドアはクレジットカードでちょっといじれば開いたから、油圧プレスみたいな大騒ぎにはならなかったけどね ;）" userName="holowoodman" createdAt="2025/10/20 23:09:52" color="#ff5c5c">}}




{{<matomeQuote body="俺はsawzallで壁をぶち破るのが好きだな。" userName="bombcar" createdAt="2025/10/20 17:59:37" color="">}}




{{<matomeQuote body="ちょっと変な運用話だね。オンコール担当のSRE 101は、担当システム内の障害を解決するためにそのシステムに頼らないことだからね。つまり、もし通信担当なら、互いに連絡を取るための他の独立した手段（競合他社の電話網でも）を持ってるべきってことだよ。" userName="YokoZar" createdAt="2025/10/21 01:45:09" color="#ff5733">}}




{{<matomeQuote body="ちょっと違うかもね。多分、君が考えてるのはこれだよ：https://google.github.io/building-secure-and-reliable-system..." userName="dgl" createdAt="2025/10/20 22:46:52" color="#45d325">}}




{{<matomeQuote body="マジか、リージョンフェイルオーバーがちゃんと機能するかどうか知るには、実際に試さないとダメなんだね？最後のフェイルオーバーから時間が経てば経つほど、その確信も薄れるってことか。学んだことを共有してくれてありがとう。" userName="barbazoo" createdAt="2025/10/21 02:43:27" color="#ff5c5c">}}




{{<matomeQuote body="だって、建物が燃えてるときに全ての火災報知器がちゃんと動くはずだもんね…" userName="ectospheno" createdAt="2025/10/21 14:24:25" color="">}}




{{<matomeQuote body="＞一時的な場当たり的つなぎが、目の前の問題に対して完璧な抽象度だった。これって、管理職が使うデアクティベートされた専門用語だね。" userName="citizenpaul" createdAt="2025/10/20 22:22:25" color="">}}




{{<matomeQuote body="マジで言ってる？友達のデータセンターは火災防止で酸素濃度低いんだ。もし許可なく侵入したら、意識失うか、もっとひどいことになるかもってさ。" userName="maaaaattttt" createdAt="2025/10/20 21:25:02" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="それってさ、サービス間の依存関係がきちんと文書化されてて、システム作ってる人たちがそれを理解してるっていう前提にすごく左右される話だよね。" userName="bcrl" createdAt="2025/10/21 02:04:52" color="">}}




{{<matomeQuote body="これ、私の幸せに直撃だよ。Hudson Yards NYCのWhole FoodsでPrime割引が使えなくて、チョコバー買えなかったんだ。だから諦めたんだけど、チョコ不足でヤバい！" userName="0x5345414e" createdAt="2025/10/20 18:04:41" color="">}}




{{<matomeQuote body="今朝から“Alexa、コーヒーポットつけて”が動かなくて、もう頭おかしくなりそうだよ。" userName="tonymet" createdAt="2025/10/20 19:06:39" color="">}}




{{<matomeQuote body="Alexaって最近ほんとバグ多いよね。Echo DotをAlexa+にしたら、Samsung TVのオンオフが全然うまくいかなくて、いつも2回やらないとダメなんだ。" userName="jdlyga" createdAt="2025/10/20 19:58:21" color="">}}




{{<matomeQuote body="これきっかけでHome Assistantに手出そうとしてるんだけど、設定や調整に結局すごい時間かけそうだよ。でもローカルLLM連携で何ができるかすごいし、既存のスマートデバイスがネットワークに物理アクセスされると全部筒抜けってことに気づいちゃったよ。" userName="jaggederest" createdAt="2025/10/21 02:47:54" color="#ff5c5c">}}




{{<matomeQuote body="こういうのはClaude Code（権限バイパス）が真価を発揮するよね。私もHome Assistantをセットアップするところだけど、自分で設定を一行も書くつもりないんだ。" userName="manmal" createdAt="2025/10/21 05:02:38" color="#ff5c5c">}}




{{<matomeQuote body="最近のHome AssistantはほとんどGUIで設定できるから、そもそも設定ファイルを書く必要なんてないよ。" userName="thesh4d0w" createdAt="2025/10/21 05:28:11" color="">}}




{{<matomeQuote body="Home Assistantのいいところは、GUIで全てのYAMLを直接編集できることだね。だから、Claude Codeでv1を作って、ちょっと手直しして、あとはGUIで仕上げる、みたいな使い方ができるんだ。全部GUIからできるよ。" userName="Ey7NFZ3P0nzAe" createdAt="2025/10/21 06:18:02" color="#ff5733">}}




{{<matomeQuote body="うわー。Siriが“テレビ消して”に反応しなくなったのを思い出したよ。今は“Apple TV消して”って言わないといけなくて、しかもHDMI CECのおかげでシステム全体がオフになるんだけど、寝ぼけてるといつも忘れちゃうんだよね。" userName="klabetron" createdAt="2025/10/21 09:37:30" color="">}}




{{<matomeQuote body="「Alexaおやすみ」って言うだけでテレビや電気を消してるんだ。<br>俺にとってはそれで十分。" userName="rstupek" createdAt="2025/10/21 16:22:45" color="">}}




{{<matomeQuote body="古いAlexaに戻したよ。<br>Alexa+はマジでゴミだね。" userName="GiorgioG" createdAt="2025/10/20 21:40:46" color="">}}




{{<matomeQuote body="全く同感。<br>新しいLLMは会話やQ&Aは良いけど、意図認識やIOT連携のテストが全然足りてないんだよ。" userName="tonymet" createdAt="2025/10/20 20:10:38" color="#785bff">}}




{{<matomeQuote body="これどういうこと？<br>昔のGPT3はもっとうまくできてたぞ。当時はファンクションコーリングもチャットもなかったけど、JSONを自分でパースして”action”や”response-text”フィールドを取り出せたんだ。<br>なんでAmazonはこんなに苦労してるんだ？<br>トークンコストと小さいモデルを使おうとしてるせいなのかな？" userName="clbrmbr" createdAt="2025/10/21 10:23:40" color="#38d3d3">}}




{{<matomeQuote body="その仮説は妥当だね。<br>基本的なAlexaエンジンに比べて推論コストが高いから、Amazonはリリースをこんなに遅らせたんだろう。<br>テストもまだ不完全だと思うよ。<br>Alexa+がゆっくり展開されてるのは、実際の顧客のデータで意図の精度や再現率を改善するためさ。<br>あと、Alexa+は以前のモデルよりも意図に関して非決定論的だね。" userName="tonymet" createdAt="2025/10/21 18:48:18" color="#ff5c5c">}}




{{<matomeQuote body="Hacker Newsに投稿する人なら、AlexaやSamsung TVを使うべきじゃないって知ってるはずだ。<br>これらのデバイスはマルウェアとスパイウェアの塊だからな。" userName="drnick1" createdAt="2025/10/21 06:19:33" color="">}}




{{<matomeQuote body="ホットバーで買ったランチをWhole Foodsのセルフレジで清算しようとしたら、バーコードが読み取れなくて。<br>なんでだろって思ってたら、エラーの理由に気づくのに20秒もかかったよ。" userName="pewpew_" createdAt="2025/10/20 18:21:18" color="">}}




{{<matomeQuote body="これ面白い話だけどさ、障害中にAmazon Goストアにいた人たちはどうなったんだろって気になってきたよ。" userName="dewarrn1" createdAt="2025/10/20 21:13:22" color="">}}




{{<matomeQuote body="先進国の「プチ贅沢」問題だね。/s<br>数年後、多くのSREやSWEがクビになったら、モルロックやエロイ、バカの国みたいに、植物に水が必要ってことすら誰もわからなくなるんだろうな。<br>一握りの大金持ちが想像を絶する贅沢をしてる一方で、ほとんどの人類はファベーラで、魔法みたいに見えるけど修理できないテクノロジーに囲まれて苦しむ。<br>あるカルトは5.25インチフロッピーディスクを崇拝し、その宿敵はCD-Rを崇拝するだろうね。<br>https://xkcd.com/2347/" userName="burnt-resistor" createdAt="2025/10/21 10:51:26" color="#ff5c5c">}}




{{<matomeQuote body="この状況、かなりヤバいね。まるで温められた鍋の中のカエルみたいだ。" userName="kokanee" createdAt="2025/10/21 11:46:35" color="">}}




{{<matomeQuote body="ドーナツ買うのにガソリンスタンドで現金使うハメになったよ。まるで農民みたいにさ。" userName="colechristensen" createdAt="2025/10/21 16:47:52" color="">}}




{{<matomeQuote body="これだよ、インターネットの集中化はもう行き過ぎだ。議会の代表者に電話して！" userName="TZubiri" createdAt="2025/10/21 07:38:36" color="">}}




{{<matomeQuote body="今日、AWSの担当チームと”AWS一本化”をやめることについて会議があるんだ。主な理由は、コアサービスのイノベーションが遅いことと、AIサービスでAWSが他社にかなり出遅れてるから、よそから買うことにしたんだよ。AWSチームはAWSの揺るぎない信頼性を強調して分散しないよう言ってくるから、面白い会議になりそうだ！" userName="JCM9" createdAt="2025/10/20 10:09:16" color="#ff5733">}}




{{<matomeQuote body="これな。前回の決算説明会でアナリストがAWSのイノベーションの遅れについてAndy Jassyに質問した時、彼はAWSは耐久性、安定性、信頼性があって顧客はそっちを重視するとごまかしたんだよ。やっちゃったね。" userName="cmiles8" createdAt="2025/10/20 10:46:38" color="#38d3d3">}}




{{<matomeQuote body="具体的にどうイノベーションが遅れてるの？" userName="judahmeek" createdAt="2025/10/20 10:58:33" color="">}}




{{<matomeQuote body="AWS、Cloudflare、Google Cloud、Akismetで障害が発生したら、どうする？自社でホスティングする？どれもいつかは障害に見舞われるみたいだしね。返金してもらって先に進むのが、同じ結果なら楽だよ。" userName="radium3d" createdAt="2025/10/20 19:09:23" color="#ff33a1">}}




{{<matomeQuote body="でもそれだと、使ってるすべての依存関係の障害に影響されることになるよ。" userName="GoblinSlayer" createdAt="2025/10/20 10:28:44" color="">}}




{{<matomeQuote body="これが本当の問題なんだ。たとえAWSで直接何も実行してなくても、連携している何かがAWSを使ってる。us-east-1がダウンしたら、他のアベイラビリティゾーンのサービスでも関係ないんだよ。AWS自身の内部サービスもus-east-1に大きく依存してるし、ほとんどのサードパーティサービスもus-east-1にあるからね。まさにインターネットの大部分にとって単一障害点だよ。" userName="caymanjim" createdAt="2025/10/20 16:40:46" color="#45d325">}}




{{<matomeQuote body="AWSを直接使ってなくても、連携するサービスが使ってるかもね。なんで他社のサービスを自分の製品のクリティカルパスに入れるんだ？昔のビジネススクールの教えに”他社の背中に自分のビジネスを築くな”ってのがあるぞ。" userName="parliament32" createdAt="2025/10/20 16:49:56" color="#45d325">}}




{{<matomeQuote body="決算説明会を聞いたけど、質問は主にAWSがAIでなんで遅れてるのかってことだったと思う。Jassyは質問をかなりひどく台無しにして、しばらくの間だらだら話してたな。最近のいくつかの記事でも、この失敗した回答が取り上げられてるよ。" userName="JCM9" createdAt="2025/10/20 11:00:47" color="">}}




{{<matomeQuote body="文化が変わったんだよ。最初に働いた時は、計算されたリスクを取るように勧められたけど、二度目の勤務の時は、みんなサービスを停止させるのを死ぬほど恐れてた。二度目の勤務からしばらく経つけど、”Amazonはビルダーが作れる場所”には戻ってないと思う。" userName="sharpy" createdAt="2025/10/20 16:48:52" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="AWSはうちの会社に、彼らの様々なAI関連製品を必死で試すように勧めてくるんだけど、どんなサービスでも調べてみるといつも期待外れなんだよね。これまでの最大のセールスポイントは”数ヶ月間無料で提供します”って感じ。全然良くない。" userName="etothet" createdAt="2025/10/20 11:43:13" color="">}}




{{<matomeQuote body="マルチクラウドだよ。AWSとGoogle Cloudが同時に障害を起こす可能性はかなり低いからね。" userName="CobrastanJorji" createdAt="2025/10/20 20:11:23" color="">}}




{{<matomeQuote body="正直、こんなひどい製品を売るのが仕事のAWSの社員には悪いと思うよ。AWSが追いつこうとパニックになってるのは分かるけど、これはひどすぎるし、ぶっちゃけ顧客にとってはかなりうんざりして迷惑になってる。" userName="JCM9" createdAt="2025/10/20 12:17:53" color="">}}




{{<matomeQuote body="us-east-1以外はだいたいかなり信頼できるよ。うちの会社では、eu-west-1だけに色々なものを置いてるんだけど（ベストプラクティスじゃないのは分かってる）、これまで問題は一切ないね、今のところは。" userName="ifwinterco" createdAt="2025/10/20 16:51:24" color="">}}




{{<matomeQuote body="ああ、システム全部のクローンを持つとコストが2倍以上になるってことだね。稼働時間を保証する必要があるなら、それだけの価値はあるけど。ただし、潜在的なデータ侵害への露出も2倍になるよ。" userName="radium3d" createdAt="2025/10/20 20:19:57" color="">}}




{{<matomeQuote body="”どうする？自社でホストするの？”って？そうだよ。あくまで個人的な話だけど、うちの会社ではそうしてる。何年も全く問題ないね。" userName="bean469" createdAt="2025/10/21 05:57:39" color="">}}




{{<matomeQuote body="彼らがかわいそうってなんで思うんだ？給料とストックオプションが、夜は十分に彼らを暖かくしてるじゃないか。" userName="mcmcmc" createdAt="2025/10/20 16:46:16" color="">}}




{{<matomeQuote body="us-east-1って何が特別なんだろうね？ただ気になっただけなんだけど。" userName="hnfong" createdAt="2025/10/20 17:24:26" color="">}}




{{<matomeQuote body="AWSチームがAWSの堅牢な信頼性を謳って『クラウドを分散させない理由』にしてるって言うけど、あれは嘘だよ。昔、マルチクラウドや専用サーバーで監視してたけど、AWSが一番信頼性が高かったなんてことは一度もなかったな。netcraft.comのデータともだいたい一致してたしね。" userName="tete" createdAt="2025/10/20 13:37:54" color="">}}




{{<matomeQuote body="IAMやOkta、クラウドVPNサービス、GSuiteやOffice365みたいなクラウドオフィス系は、どんな大企業や銀行、公益事業体でも何かしら依存してるよ。ほとんどオンプレミスだとしても、こういう依存関係がないところを見つけるのは難しいだろうね。" userName="unethical_ban" createdAt="2025/10/20 22:09:18" color="#ff5733">}}




{{<matomeQuote body="給料はいいかもしれないけど、俺の知り合いでまだそこにいる奴らは、みんなかなり不満を持ってて、環境がひどくなってるって言ってるよ。給料がちょっといいくらいじゃ、長続きしないってことだね。" userName="JCM9" createdAt="2025/10/20 17:07:42" color="">}}




{{<matomeQuote body="言うのは簡単だけど、現実世界では、ほとんどのクリティカルパスがサードパーティの連携に強く依存してるんだよ。ユーザー認証、ストレージ、ロギングとかね。自社で全てホストするよりサードパーティの方が信頼性が高くて安いし、どんなアプリも孤立してないから。冗長性や耐障害性、自動復旧でできる限り努力してる。Fortune 500レベルのITスタッフなしじゃ、AWSの稼働時間を超えるなんて無理だね。" userName="caymanjim" createdAt="2025/10/20 18:00:59" color="#ff33a1">}}




{{<matomeQuote body="もっと安く、早く、社内の人が何が起こってるか理解できるべきだよね。多くのサービスにとっては当たり前のことなのに、なぜかそうなってないのが現状だよな。" userName="nxpnsv" createdAt="2025/10/21 06:22:57" color="">}}




{{<matomeQuote body="君、『クリティカルパス』の部分を見落としてない？管理者がIAMやVPNでログインできないだけで、なんで製品が機能しなくなるんだ？そんなに頻繁に手作業でメンテナンスが必要なのか？Officeがダウンしたら、なんで製品が動かなくなるんだ？運用をExcelでやってるわけじゃないだろ？何かしらの依存関係は仕方ないけど、うまく設計されたシステムなら、自分でコントロールできない誰かのミスでサービスが完全に止まるなんてことはないはずだよ。" userName="parliament32" createdAt="2025/10/21 15:18:36" color="#38d3d3">}}




{{<matomeQuote body="2000年代後半に成人した人たちにとって、かつて破壊者やイノベーターだと思われてた企業が、パンデミックやZIRPの後、古い老舗企業みたいになるのを見るのは、かなり衝撃的な経験だよ。もっと長くやってる人たちは経験済みかもしれないけど、俺にとっては初めてのことだね。" userName="AbstractH24" createdAt="2025/10/21 14:46:16" color="">}}




{{<matomeQuote body="「double++」について語ってるね。C言語のプレシデンスの話だけど、++doubleだと「トリプル」って言われてジョーク扱いされた後、コストを2倍に承認されてビール飲んでハッピーになるけど、double++だと「ダブル」って言われてすぐに承認された後、C言語のプレシデンスルールで結果的にコストが3倍になって、上司が激怒して仕事が失敗するっていう話だよ。ビールはなしだね。" userName="jancsika" createdAt="2025/10/20 21:02:32" color="">}}




{{<matomeQuote body="AWSは長期的に衰退してきてて、プラットフォームのほとんどは現状維持モードだね。AI分野で遅れをとってるのも、革新的な社員が煩雑な手続きやパフォーマンス管理の下で潰されちゃうからだよ。" userName="llmslave" createdAt="2025/10/20 18:21:56" color="">}}




{{<matomeQuote body="へー。AWSっていつ「Day Two」になったの？それか、あんたの二回目の”tour of duty”って何年だった？" userName="chaostheory" createdAt="2025/10/20 21:58:29" color="">}}




{{<matomeQuote body="データベースのレプリケーションラグってどうやって対応してるの？" userName="yeswecatan" createdAt="2025/10/21 13:51:01" color="">}}




{{<matomeQuote body="”tour of duty”なんて軍隊以外で聞いたことないんだけど、AWSってそんなにヤバいの？そう呼ばないといけないくらい？" userName="RedShift1" createdAt="2025/10/20 19:56:25" color="">}}




{{<matomeQuote body="us-east-1はAWSの“オリジナル”リージョンで、レガシーや顧客需要が一番多いんだ。ほとんどの“グローバル”サービスの管理層もここにある。可用性も最悪なのに、企業はコストしか見ないからAZやリージョンを工夫せずus-east-1に突っ込む。AWSを使うならus-east-1から出るべきだね。もし管理層がそこにあるサービスを使うなら、緊急対応プロセスを用意するか、SPOFをなくすために他のサービスに分散しろって忠告するよ。" userName="stego-tech" createdAt="2025/10/20 17:33:37" color="#ff33a1">}}




{{<matomeQuote body="ごめん、“毒化してる”って？Amazonは昔からブラック企業で有名じゃん。" userName="throw-the-towel" createdAt="2025/10/20 18:26:48" color="">}}




{{<matomeQuote body="大規模な障害はまだ続いてるみたいだね。4時間前よりひどくなってる気がする。俺はデータエンジニアだけど、RedshiftもAirflow（AWSマネージド）も完全にFUBARだよ。" userName="indoordin0saur" createdAt="2025/10/20 16:31:11" color="#45d325">}}




{{<matomeQuote body="かなり長い時間障害が続いてるね。どれくらい9が減るか気になるよ。365日＊24時間＊0.0001はだいたい8時間だから、もう99.99%のSLAは達成できてないね。" userName="markus_zhang" createdAt="2025/10/20 17:20:39" color="#38d3d3">}}




{{<matomeQuote body="あんたらの会社や他の企業がなんでus-east-1から引っ越さないのか不思議だよ。障害が多い最悪のリージョンだろ。俺の会社は何年も前にus-east-1以外のリージョンを使うことに決めたんだ。もちろん、「グローバル」なサービスだとus-east-1ってことが多いから、それはどうにもならないけどね。" userName="outworlder" createdAt="2025/10/20 16:51:27" color="#45d325">}}




{{<matomeQuote body="期間を延ばせば9の数は減らなくて済むじゃん！「3450年以上あれば同じ9の数は保証できるよ！」ってことね。" userName="rdtsc" createdAt="2025/10/20 17:44:32" color="#785bff">}}




{{<matomeQuote body="一部のAWSサービスはus-east-1でしか使えないんだ。それに、多くの人はインフラをポータブルに設計してないし、たまの障害くらいじゃ引っ越すコストや労力に見合わないって考えてるんだよ。" userName="jedberg" createdAt="2025/10/20 17:16:13" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
