+++
date = '2025-05-17T00:00:00'
months = '2025/05'
draft = false
title = '電話一本でO2ユーザーの位置がわかる！？VoLTEの脆弱性'
tags = ["セキュリティ", "脆弱性", "通信技術", "プライバシー", "携帯電話"]
featureimage = 'thumbnails/cyan1.jpg'
+++

> 電話一本でO2ユーザーの位置がわかる！？VoLTEの脆弱性

引用元：[https://news.ycombinator.com/item?id=44014046](https://news.ycombinator.com/item?id=44014046)




{{<matomeQuote body="O2のCEOとかセキュリティ担当に3月26日と27日にメールでこの挙動とプライバシーリスクを伝えたのに、まだ返事も対応もないってのはマジでひどいよね．<br>なんで一番近い連絡先が Virgin Media のアドレスなんだよ？ https://www.o2.co.uk/.well-known/security.txt も200って返すべきなのに404だし．<br>はっきり言うと、向こうが何もしないなら公開するのは全然問題ないと思うんだけど、NCSCみたいなところがこういうの引き取ってくれたり（組織ともっとうまくやり取りできるかも？）するべきなのかな？って思っちゃうんだよね．" userName="lol768" createdAt="2025/05/17 13:20:18" color="#ff33a1">}}




{{<matomeQuote body="これ、完全にこっちのミスだったわ．連絡したメールアドレス、本当は@virginmediao2.co.uk で、@virginmedia.co.uk じゃなかったんだ．記事のタイプミスだね．<br>修正しとくよ．" userName="mrjeeves" createdAt="2025/05/17 23:40:50" color="#38d3d3">}}




{{<matomeQuote body="もう一つ間違い見つけちゃったよ．<br>LAC 0x1003 （10進数：4009）になってるけど<br>これ、10進数だと 4099 が正しいはずだよ．" userName="Mr_Minderbinder" createdAt="2025/05/18 03:04:18" color="">}}




{{<matomeQuote body="へー、どうやって気づいたの？" userName="porridgeraisin" createdAt="2025/05/18 05:51:51" color="">}}




{{<matomeQuote body="コンピューターと十分長く付き合ってるとね、2のべき乗が頭に入っちゃうんだよ… 0x1000 が 4096 より小さいなんてありえないからね 笑" userName="jaoane" createdAt="2025/05/18 06:58:55" color="">}}




{{<matomeQuote body="読んでるときに頭の中で変換しちゃったんだよね．" userName="Mr_Minderbinder" createdAt="2025/05/18 08:04:41" color="">}}




{{<matomeQuote body="おっと．サンキュー．" userName="mrjeeves" createdAt="2025/05/18 09:44:18" color="">}}




{{<matomeQuote body="プライバシーポリシー（GDPRで義務付けられてるやつ）にいくつかメールアドレス載ってるよ．もしかしたらそっちなら誰か見てるかもね．例えば DPO@o2.com とか．このリンク見てみて． https://www.o2.co.uk/termsandconditions/privacy-policy" userName="morsch" createdAt="2025/05/18 05:46:31" color="#ff5733">}}




{{<matomeQuote body="SARってやつを提出して、自分の名前に関わるものが社内でどう扱われてるか調べてもらう手もあるよ．あと、CMAが何か言ってくる場合に備えて、 https://www.openrightsgroup.org/ に前もって連絡しとくと、自分たちの立場を有利にできるかもね．" userName="madaxe_again" createdAt="2025/05/18 12:55:58" color="#785bff">}}




{{<matomeQuote body="O2ってさ、前は責任ある情報公開用の窓口あったんだけど、数年前に無くなっちゃったんだよ．<br>俺が働いてた頃（ずいぶん前だけど）のセキュリティチームはマジで優秀だったのに．去年メールしたときには、みんな辞めちゃってたわ．" userName="edent" createdAt="2025/05/17 19:24:53" color="#ff5c5c">}}




{{<matomeQuote body="O2の担当チームにはマジで知らされてたらしいけど、明らかに何も対策しなかった（か、足りなかった）みたいね。" userName="mrjeeves" createdAt="2025/05/17 23:36:16" color="#45d325">}}




{{<matomeQuote body="チームに何が起きたか知らないくせに、O2の無能な経営陣のことだって知らなさそうなのに、多様性のせいにするためだけに新しいアカウント作る時間無駄にしてるとかマジで想像してみてよ…" userName="throw123xz" createdAt="2025/05/17 20:54:30" color="">}}




{{<matomeQuote body="高確率でただのbotだよ。サンプルのプロンプト：”受動的攻撃的で反DEIな投稿に合うコメントを1つ選んで。元のコメントのIDと回答を返して。”" userName="andix" createdAt="2025/05/17 21:02:17" color="">}}




{{<matomeQuote body="笑、たぶん空っぽのスペースに置き換えられたんだよ。多様性って金かかるけど、社員が全くいないのは安いからね。" userName="andix" createdAt="2025/05/17 20:44:49" color="">}}




{{<matomeQuote body="どうやったら一番ランダムな話題にいつも政治を持ち込めるわけ？一番不適切な場所で鳴らすghetto blasterを持ってるみたいにさ。" userName="razemio" createdAt="2025/05/17 20:56:44" color="">}}




{{<matomeQuote body="公共の場所でムカつくレベルで音楽をかけるなら、それはクソみたいな音楽じゃなきゃいけないってルールに名前があるはず。" userName="dylan604" createdAt="2025/05/17 21:45:17" color="">}}




{{<matomeQuote body="この問題の面白いところは、ほとんどの法域でハッキングとさえ言われない可能性が高いってこと。データはネットワークが通常の利用で自発的に送ってるんだ。システムが騙されて個人情報を漏らすわけじゃない。これは通常は違法になることが多いのにね。URLに例えば”&reveal_privat_data=true”みたいなのを付け加えるのだって意図があるから違法と見なされかねないのに、この件ではそういうのは一切ないんだ。" userName="andix" createdAt="2025/05/17 20:37:33" color="#ff33a1">}}




{{<matomeQuote body="でもさ、これはデータ漏洩だよ。すぐに規制当局に報告しないと罰金とかになる（UKにそういうルールがあればね）。" userName="immibis" createdAt="2025/05/17 23:13:52" color="#38d3d3">}}




{{<matomeQuote body="たとえO2がEUの法域外でも、Denmarkの顧客に影響が出た例を示してたから、圧力をかけられると思うんだ。たぶんDenmarkのその通信会社は、O2がEU顧客のデータを保護できないなら、O2と相互接続できないかもね。" userName="wyldfire" createdAt="2025/05/18 13:57:46" color="#ff33a1">}}




{{<matomeQuote body="＞ この問題の本当に面白いところは、ほとんどの法域ではハッキングとすら見なされないだろうってことだよ<br>君は明らかにComputer Misuse Actがどれだけ広範か知らないね" userName="18172828286177" createdAt="2025/05/17 22:27:28" color="">}}




{{<matomeQuote body="＞ 君は明らかにComputer Misuse Actがどれだけ広範か知らないね<br>うん、全然知らないよ。でも、普通違法なハッキングって、許可されてない方法でデバイスにアクセスすることだろ。電話をかけること自体が問題じゃない限り、大丈夫なはず。自分のスマホのメモリからデータをダンプするのは、不正アクセスにはならないだろ。<br>もし変な電話かけたり、迷惑電話したり、位置情報取るためだけに電話してすぐ切ったりしたら、多分問題になるだろうけど。でも普通の電話で診断データをダンプするだけなら大丈夫なはず（弁護士じゃないけどね）。" userName="andix" createdAt="2025/05/17 22:51:05" color="">}}




{{<matomeQuote body="＞ 自分のスマホのメモリからデータをダンプするのは不正アクセスにならないだろ。<br>＞ 普通の電話で診断データをダンプするのは大丈夫。<br>IANALだけど、UKのCMAやUSのCFAAみたいなハッキング法は、F12でソース見るのも違反になりうるくらい曖昧なんだよ [0]。O2からしたら、OPが彼らの内部診断データに不正にアクセスしたって主張できるかもね。俺たち技術者の意見は関係ない。<br>[0]: USでは、DOJが”good faith security research”を追求する被告は起訴しない方針に改訂したけど自己責任でね: https://www.justice.gov/archives/opa/pr/department-justice-a..." userName="watusername" createdAt="2025/05/17 23:07:09" color="#38d3d3">}}




{{<matomeQuote body="USとUK法はあまり詳しくないけど悪い話は聞く。”good faith security research”は別。悪意なくても全ての不正アクセスを取り締まる法律もある（悪い考えだけどね）。隣の悪い鍵を暴露するために押し入るのはダメだろ。通常、不正アクセスには意図的な行動が必要。不正ヘッダー追加や他人のクレデンシャルログインとか。普通の許可された使い方トラフィックのログだけじゃ十分じゃないはず。" userName="andix" createdAt="2025/05/17 23:36:57" color="">}}




{{<matomeQuote body="合法的には、自分のスマホからの生のセルラートラフィックを見るためのツールを使うこと自体が、もう不正アクセスなんだ（多分ね）。有名な話だけど、ドイツではnmapがインストールされてるラップトップを持ち歩くのは違法なんだ。みんな（ラップトップ持っててnmapの使い方を知ってる人）はそれでもやってるけどね。それは、君が実際には何も犯罪を犯してないけど、彼らが君を気に入らない場合に捕まえることができる、そういう類の犯罪の一つだよ。" userName="immibis" createdAt="2025/05/18 15:14:18" color="#785bff">}}




{{<matomeQuote body="難しいよね、でも相手が反応しないときってどうする？<br>ただ情報を握りしめて、誰も見つけたり悪用したりしないのを願うだけ？<br>それとも、どうにかして彼らに直してもらおうとする？" userName="mrjeeves" createdAt="2025/05/18 00:28:09" color="">}}




{{<matomeQuote body="キャリアと解決してくれて、皆に注意喚起ありがとう。注目が必要。<br>脆弱性を本名報告は怖い。大手テックは大丈夫でも、“レガシー”組織は感謝されず、訴えられたり [0]、スケープゴートに [1] される。<br>これがチリングエフェクトで、システムが安全じゃなくなるのを痛感。<br>[0]: https://www.cnbc.com/...<br>[1]: https://techcrunch.com/..." userName="watusername" createdAt="2025/05/18 02:00:46" color="#45d325">}}




{{<matomeQuote body="あなた自身が顧客なんだから、彼らを訴えることもできるんじゃないかな" userName="prmoustache" createdAt="2025/05/18 12:03:09" color="">}}




{{<matomeQuote body="すごいところは：これが机上の空論なバグじゃないってこと。他のUKネットワークはもう解決済みの、実装の手抜きなんだよ、記事にもあるようにね。ECIの漏洩はLTEが展開されて以来指摘されてる—https://arxiv.org/abs/2106.05007 みたいな論文を見て—そして、公開されてる基地局DBがあれば、自動化された位置マッピングなんて簡単だよ。" userName="Aeyxen" createdAt="2025/05/18 10:11:03" color="#ff5c5c">}}




{{<matomeQuote body="多分、これを使っていたセキュリティサービスから何をすべきか指示されるのを待って、パニックになってるんじゃないかな。" userName="MortyWaves" createdAt="2025/05/18 13:34:11" color="">}}




{{<matomeQuote body="ヘッダーから漏れてる情報なんて、合法的な傍受でとっくに手に入る情報だよ。" userName="kylpytakki" createdAt="2025/05/19 06:49:26" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="O2は問題はもう直ったって言ってるよ。https://www.ispreview.co.uk/index.php/2025/05/o2-uk-fixes-vo...見て。" userName="daveoc64" createdAt="2025/05/19 10:34:28" color="#ff5733">}}




{{<matomeQuote body="記事が今朝アップデートされたって。<br>O2からメールきて問題解決したって。自分で確認したけど、脆弱性はたしかに解決したみたい。" userName="crtasm" createdAt="2025/05/19 11:46:23" color="#ff5c5c">}}




{{<matomeQuote body="彼らの声明には”Our engineering teams have been working on and testing a fix for number of weeks”ってあるね。”数週間”もセンシティブなデータを扱ってるデータベースが、誰にも知らせずに意図的に無防備に放置されてたなんて想像できる？ICOがどう対応するか興味深いね。" userName="ollybee" createdAt="2025/05/19 12:33:08" color="#45d325">}}




{{<matomeQuote body="発信者がどうやって呼制御メッセージ（SIPとか）見れたのかすごく気になるね。だって、これらのメッセージは端末と基地局（MMEも）の間で暗号化されたGREトンネルに入ってるんじゃないの？GREトンネルの暗号を解けるなんて、超巨大な穴じゃん。たぶん、投稿者が自分のデバイスで解析してるからできたのかもしれないけど、それにしても暗号化前のペイロードが見れるなんて驚きだなあ。" userName="kjellsbells" createdAt="2025/05/17 22:02:01" color="#ff5c5c">}}




{{<matomeQuote body="こんにちは、記事の編集者だけど、ここで。Qualcommチップ搭載の多くのAndroid端末はUSB経由でモデム診断ポートを公開するオプションがあるから、root化した端末さえいらないんだ。場所を移動しながらラップトップ持ち歩くより、NSGをroot化端末で使う方がずっと楽なだけだよ。モデム診断ポートを有効にしてScat（https://github.com/fgsect/scat）を使うだけで、ネットワークとの間のすべてのシグナリングトラフィックを見れるんだ。" userName="mrjeeves" createdAt="2025/05/17 23:35:21" color="#785bff">}}




{{<matomeQuote body="彼らはroot化したAndroid携帯とNetwork Signal Guruっていうアプリを使ってるんだよ（https://play.google.com/store/apps/details?id=com.qtrun.Quic...）。少なくとも無料版のアプリは何も”decrypt”してるようには見えないけど、root権限とモデムへのアクセスがあるからこれらのログを読めるんだ。専用の4G/5Gルーターみたいに、バンドを無効にしたり特定の基地局にロックしようとしたりもできるから、モバイルデータを通信手段として使いたい人には便利かもね。" userName="celsoazevedo" createdAt="2025/05/17 23:09:08" color="#ff5c5c">}}




{{<matomeQuote body="多くの通信事業者はVoLTEのSIPシグナリングに、P-CSCFで終端するIPsecトランスポートを使うように設定してるけど、ほとんど（全部じゃないにしても）の業者はIPsecをインテグリティ保護のためだけに設定してるんだよ。" userName="kevvok" createdAt="2025/05/18 05:18:55" color="#ff5733">}}




{{<matomeQuote body="GTPトンネルのことだと思うな。GTPトンネルはenodebとコアネットワークの間にあるんだ。IPSECの中で動いてる場合にだけ安全だよ。" userName="tguvot" createdAt="2025/05/17 22:42:29" color="#ff5733">}}




{{<matomeQuote body="これ結構ヤバい問題っぽいね。スマホroot化してNSGで情報見るの難しくないし。O2はUK最大で政府とも契約あるのに、返事ないのはガッカリだけど驚きはしないかな。O2は内部めちゃくちゃみたいだし、店舗で直せないことの対応遅いし、システム古いし、VoLTE使えないユーザーいるし、新しい5G SAも問題多いし、CTOは強がり言ってるけどデータは最悪、みたいなね。[0] https://news.virginmediao2.co.uk/leaving-the-vanity-metrics-..." userName="celsoazevedo" createdAt="2025/05/17 20:25:12" color="#38d3d3">}}




{{<matomeQuote body="EUローミングで料金を取らないのは、彼らに課金システムがないからなんじゃないかって思い始めてるよ。" userName="badgersnake" createdAt="2025/05/18 09:03:34" color="">}}




{{<matomeQuote body="O2がどうやってまだビジネスやってるのか分からないわ – 圧倒的に最悪のネットワークだよ、ひどいバックホール状況のThreeでさえマシだもん。私がEEのに加えてO2 SIMを持ってる唯一の理由は、Priorityのチケットと彼らの会場での信号のためだけかな。" userName="jonathantf2" createdAt="2025/05/18 10:08:26" color="">}}




{{<matomeQuote body="彼らの5G Standaloneネットワークにアクセスできれば、だいぶ良くなってるよ。でもそれには新しいSIMカード＋対応する電話が必要なんだ。全然違うんだよね…" userName="martinald" createdAt="2025/05/18 12:02:49" color="">}}




{{<matomeQuote body="だからO2ネットワークを使ってるgiffgaffは、O2の物理ネットワークの上に独自のサービス実装があるから影響ないって主張してるみたいだね。<br>それは本当かもしれないけど、今は同じ会社に所有されてるのを知ってるからちょっと怪しいな、統合されてる可能性高いし。誰かgiffgaffのSIMでこれを再現してみたら、結果を知りたいところだな…" userName="ajb" createdAt="2025/05/18 13:38:34" color="#ff5733">}}




{{<matomeQuote body="彼らはしばらく前からTelefónicaに所有されてるよ。確かTelefónicaが2006年にO2を買収して、2009年に新しいブランドとしてGiffgaffを立ち上げたんだ。" userName="signal11" createdAt="2025/05/18 13:43:01" color="">}}




{{<matomeQuote body="giffgaffネットワークでこれをテストしてみたんだけど、影響あるよ。どうして彼らが違う結論になったのか分からないな。" userName="scoopyboy" createdAt="2025/05/18 15:19:14" color="#38d3d3">}}




{{<matomeQuote body="これってVoLTEをオフにすれば緩和できるの？オンラインでiPhone 11でのオフり方ドキュメント見つけたんだけど – 私のiPhone 15にはそのオプションがないんだ！" userName="cloudref" createdAt="2025/05/17 21:34:30" color="#38d3d3">}}




{{<matomeQuote body="”4G Calling”をオフにしても、これらのヘッダーが見えなくなるわけじゃないんだって。もしデバイスが圏外になっても、これらの内部ヘッダーで最後に繋がってたセルと、それがいつだったかまで分かっちゃうらしい。だから、たぶん何も意味ないみたいだね。" userName="mdasen" createdAt="2025/05/17 21:59:01" color="#ff5c5c">}}




{{<matomeQuote body="O2 UKのイライラするところは、従来のプリペイド（pay-as-you-go）ユーザーにはVoLTEをサポートしてなくて、月額（pay-monthly）ユーザーだけなんだよね。でも、今となっては、なんか逆に良かったかなって思ってる。" userName="briansm" createdAt="2025/05/18 08:09:24" color="">}}




{{<matomeQuote body="いいね、願わくば8月に始まる彼らの大規模な3G停波より前だと良いけど。" userName="briansm" createdAt="2025/05/18 13:37:27" color="">}}




{{<matomeQuote body="IMS詳しくないけど、デバッグヘッダーが送られるには長く通話する必要があるなら、知らない番号からの電話に出ないことで対策できる？って思ったんだけど。<br>でも、番号知ってる友達とかには使われちゃうってのは分かってるんだ。" userName="edude03" createdAt="2025/05/17 20:04:58" color="">}}




{{<matomeQuote body="多分この情報は接続が確立される前からネットワーク側ではもう分かってるんじゃないかな。あれはデバッグヘッダーみたいだし、接続がちゃんと確立できない時に理由をデバッグするために必要なんだろうね。もし記事を正しく理解してたら、受信側の電話がオフになってても情報があって、その場合最後に分かってるセルが分かるみたい。" userName="andix" createdAt="2025/05/17 20:53:15" color="#ff5733">}}




{{<matomeQuote body="IMSってのは要はSIPコアと色々ゲートウェイがあって、ベースのLTEインフラ（eNodeBとかPCRFとか）と統合されてるだけなんだ。だから”シグナリングメッセージ”はただのSIPメッセージなんだよね。だから、あのやばいヘッダーがSIP 180 Ringingメッセージとかに含まれてるかどうか次第では、電話に出ないだけじゃ不十分かもしれない。<br>情報源：実際、ある電話会社でIMSのデプロイに携わってたからさ（この会社じゃないけどね）" userName="dilyevsky" createdAt="2025/05/17 20:14:51" color="#ff5c5c">}}




{{<matomeQuote body="ヘッダーは、通話を開始した後の下りすべてのメッセージに含まれてるんだって。SIP Inviteメッセージとか、100 Trying、180 Ringing、183 Session Progressの前にもね。もし十分素早く（あるいは攻撃者がやりそうな専用ソフトで自動化すれば）、呼び出し音が鳴る必要すらなくなる。<br>これは本当に良くないね。" userName="mrjeeves" createdAt="2025/05/18 00:05:04" color="#ff5733">}}




{{<matomeQuote body="それはヤバいね。違うPLMNに繋がってる相手も試してみたの？" userName="dilyevsky" createdAt="2025/05/18 17:04:37" color="">}}




{{<matomeQuote body="これがNZのO2でも起きるのか気になるな。先週彼らに乗り換えたんだ、オーストラリアでの無料ローミングとVoLTE通話があるから。" userName="ivanvanderbyl" createdAt="2025/05/17 22:34:13" color="">}}




{{<matomeQuote body="それはどうかな。これ、たぶんO2 UKだけの話じゃない？" userName="mrjeeves" createdAt="2025/05/18 00:00:40" color="">}}




{{<matomeQuote body="これってO2だけに影響あって、EEとかVFとか3には関係ないんだよね？" userName="celsoazevedo" createdAt="2025/05/18 00:39:18" color="">}}




{{<matomeQuote body="GDPRによれば、これ明らかに違法でしょ。加入者契約に発信者に位置情報共有する同意なんて含まれてないはずだよ。UKはEU離脱したからGDPRはもう適用されないけど、今の規制でも基本的な原則は変わってないって認識で合ってる？" userName="usr1106" createdAt="2025/05/17 21:09:05" color="#38d3d3">}}




{{<matomeQuote body="専門家じゃないけど、UK GDPRが適用されるのは間違いないと思うな。実質EU版と同じらしいし。<br>https://ico.org.uk/for-organisations/data-protection-and-the..." userName="palm-tree" createdAt="2025/05/17 21:18:24" color="#785bff">}}




{{<matomeQuote body="うん、まだ有効だよ。終わったEUの法規は、UKが国内法にdiligently転換したから、ほとんど（全部？）明示的に撤廃されないとダメだったんだ。" userName="ajb" createdAt="2025/05/17 23:02:53" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ネットワーク機能の誤設定っぽいものをUKにはプライバシーがないって意見の根拠にするの、ちょっと変じゃない？他のキャリアは同じ問題抱えてなさそうだし、企業や人がミスる事もあるでしょ。あと、Nigel FarageってBrexitで有名なあの人？約束と違う結果になったら逃げ出したっていう？あの人がUKのプライバシーと自由を救うとかウケるね（笑）" userName="throw123xz" createdAt="2025/05/17 23:13:14" color="">}}




{{<matomeQuote body="俺のUS ICでの経験から言うと、あいつら業界に都合よくデータ”leak”するよう”encourage”してくるんだよね。今回の件も全く同じ手口の匂いがする。" userName="anonymousiam" createdAt="2025/05/18 00:34:20" color="">}}




{{<matomeQuote body="かもね。でも、警察とか政府機関とか公共団体がこのプロバイダ使ってること考えると、自分たちのデータをこんな風にだだ漏れさせるのは賢くないよな。あとさ、ここHNで君みたいなコメント読むの初めてじゃないんだよね。UK住みとしては、君たちが書いてることと、俺が毎日見て経験してることの間にズレがあるように感じるんだ。誰も何も言えないとか、ここが戦場みたいに見せてるけど…悪く取らないでほしいんだけど、他のニュースソースもチェックしてみるのをお勧めするよ。だって君のUKの見方、ちょっと”歪んでる”みたいだから。" userName="celsoazevedo" createdAt="2025/05/18 00:49:54" color="#ff5c5c">}}




{{<matomeQuote body="戦略は君が思ってるよりちょっと複雑だよ。今回の”偶発的”な情報漏洩は、研究者が発見して開示したからこれで”修正”されるだろうね。言い逃れの余地は保たれるわけだ。このエクスプロイトで警察とか政府機関を追跡してた”悪いやつら”がいる可能性は低いよ。なぜなら、もしそうだったら、彼ら自身の通信が監視国家に活動を明らかにされて、家宅捜索や逮捕の対象になってたはずだからね。君が毎日見て経験してることは、たぶんP.R.C.の一般市民とそう大差ないだろう。彼らも監視国家で日常生活を送ることに満足していて、君たちのところより犯罪率が低く、似たような野放図な政府権力があるんだから。" userName="anonymousiam" createdAt="2025/05/18 06:03:03" color="">}}




{{<matomeQuote body="でもP.R.C.では政府が好きじゃないって言うのは違法だけど、UKではイスラム教徒はネズミだからモスクを爆破するつもりだなんて言うのは違法だよ。そう、どこの国でも（USAも含めて）（North KoreaはSNSがないから除くけど）SNSの投稿で逮捕される可能性はある。でも、それはあまりにも単純化しすぎだね。どんな投稿で人が逮捕されてるか、誰も注意払ってないでしょ？ だって、そうするとUKがこれを言ってる人たちが悪く見せたいほど悪く見えなくなっちゃうからさ。" userName="immibis" createdAt="2025/05/18 14:15:31" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
