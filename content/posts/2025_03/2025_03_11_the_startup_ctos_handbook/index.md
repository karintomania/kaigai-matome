+++
date = '2025-03-11T00:00:00'
months = '2025/03'
draft = false
title = 'スタートアップCTO必見！成功するためのハンドブックとは'
tags = ["スタートアップ", "CTO", "マネジメント", "技術", "ベストプラクティス"]
featureimage = 'thumbnails/red3.jpg'
+++

> スタートアップCTO必見！成功するためのハンドブックとは

引用元：[https://news.ycombinator.com/item?id=43337703](https://news.ycombinator.com/item?id=43337703)

{{<matomeQuote body="俺はこういうの考えるとき、まず深く理解してるセクションに飛んでみるんだ。そこで言ってるのは“最後の瞬間にコンプライアンス証明書を取ろうとするな。PCI DSSやSOC 2の監査準備は長いプロセスで、ほとんどのスタートアップで6ヶ月から12ヶ月かかる。早めに始めて継続してコンプライアンスを維持する方が、遅れて再作業するより安上がりだ”ってこと。でも、俺は逆のアドバイスをするよ。SOC2の証明は簡単に取れるし、購入注文がない前に取得するのは無駄だと思う。あらかじめやっとくべきことはあるけど、SOC2を予定してなくてもやるべきだよ。それはシングルサインオンを設定したり、保護されたgitブランチを持つことみたいな、単純なベストプラクティスなんだ。ほかにこの文書の部分を確認したい人いる？俺は大半に対しては反論する資格がないと思う。" userName="tptacek" createdAt="2025-03-11T23:17:06" color="">}}

{{<matomeQuote body="いい方法だね。俺はデータベースでCtrl-Fしたけど、一般的に情報はいい。ひとつ気になったのは、2025年にスタートアップがSQLとNoSQLに注力する必要はないってこと。人気のSQLデータベースではJSONサポートがいいから、PostgreSQLかMySQLを使えばいい。エンジニアが得意な方を選んで、CloudSQLかRDSを使えばバックアップやレプリケーションの面倒を見てくれるし、BI用にリードレプリカを使うと、しばらくは十分だよ。" userName="femiagbabiaka" createdAt="2025-03-11T23:59:27" color="#ff33a1">}}

{{<matomeQuote body="＞使用するリードレプリカはBIツールにとって良い<br>2、3のリードレプリカを用意して、メインに書き込み、レプリカから読み取るようにクエリを分ければ（多くのモダンORMはこれに標準対応してる）、ほとんどのスタートアップのワークロードで日々数百万のアクティブユーザーにスケールアップできるよ。BIの難しいところは、情報が必要な人がSQLを学びたくないことだ。SQLを使える人でも、スキーマの変更に追いつくのが大変なんだ。" userName="Swizec" createdAt="2025-03-12T03:07:17" color="">}}

{{<matomeQuote body="俺はMetabaseを勧めるよ。Metabaseはread-replica-3を指していて、Metabase APIを使うと、テーブルやフィールドについてのメタデータを追加できるから、BIの人たちがポチポチでレポートを作れるし（スキーマの変更にも適応できる）、スキーマ変更は大体ビューで解決してる。" userName="edoceo" createdAt="2025-03-12T03:44:27" color="#ff5733">}}

{{<matomeQuote body="BIの難しいところは、アプリ開発者が安定したデータモデルをサポートしたくなくて、スキーマを頻繁に変更しちゃうことが多い。それにBIの人たちが何を求めてるか分からなくて、脆弱な統合に苦しむのも問題。アプリデータベースにアナリティクス用の報告ビューを追加するのがいい方法だよ。" userName="datadrivenangel" createdAt="2025-03-12T13:12:48" color="">}}

{{<matomeQuote body="＞情報が必要な人がSQLを学びたくない<br>データアナリストはSQLには慣れてるよ。どの“データ分析をキャリアにする”コースでもSQLを教えるし（querynomiconが教えることの約70%）。" userName="melvinroest" createdAt="2025-03-12T08:24:32" color="#ff5c5c">}}

{{<matomeQuote body="＞データアナリストはSQLには慣れてる<br>そうなんだ！でも、スタートアップでデータアナリストを雇うのは見たことがない。なぜか俺はいつもエンジニアの仕事の傍らでこれをやることになる。" userName="Swizec" createdAt="2025-03-12T14:09:43" color="">}}

{{<matomeQuote body="確かに、パンデータスで複雑なパイプラインを作ってるのには驚いたよ。誰かがSQLを使いたくないからって。" userName="CalRobert" createdAt="2025-03-12T05:13:37" color="">}}

{{<matomeQuote body="俺は最近同僚に、RDBMSが過去10年でJSONサポートで得た大きな進歩について話してた。例えば、Postgresのjsonbフィールドで最初のレベル以下のキーは約10年前はインデックス不可だった。今では、GINインデックスとか、他にもかなり洗練されたオプションが使えるよ。" userName="SOLAR_FIELDS" createdAt="2025-03-12T01:56:28" color="#785bff">}}

{{<matomeQuote body="同意する。今のところ、Postgresをメイン（またはおそらく唯一の）データベースとして使う理由を思いつかない。RDBMSを補うJSONフィールドが行く道のように思う。" userName="xp84" createdAt="2025-03-12T03:07:39" color="#785bff">}}

{{<matomeQuote body="最近のデフォルトは『Postgres』だね。他の技術使いたかったら理由を説明しなきゃいけない。これでうまくいってるよ。" userName="SOLAR_FIELDS" createdAt="2025-03-12T14:59:47" color="#785bff">}}

{{<matomeQuote body="ハハハ、その通りだね。特定の技術を使う理由じゃなくて、Postgres以外を使う理由を説明しなきゃいけないってのが面白い。" userName="DanielHB" createdAt="2025-03-12T18:40:44" color="">}}

{{<matomeQuote body="これがデフォルトの意思決定プロセスだべ。現状の理由分析もしっかりしないと。色んな提案が無駄に終わることが多いんだ。" userName="friendzis" createdAt="2025-03-13T11:21:20" color="#38d3d3">}}

{{<matomeQuote body="＞“そんなに人気のあるSQLデータベースに良いJSONサポートがあるのに”<br>あれ、NoSQLやる理由ってJSONサポートだったの？僕はシャーディングや書き込みのスケーラビリティだと思ってたけど。" userName="closeparen" createdAt="2025-03-12T22:19:42" color="">}}

{{<matomeQuote body="そうそう、昔の『webスケール』時代ね。スタートアップやSMBの負荷って、PostgresやMySQLが持てるレベルで十分だとみんな思ってる。Twitterも2016年まではMySQLで十分だった。" userName="rco8786" createdAt="2025-03-12T22:49:04" color="#45d325">}}

{{<matomeQuote body="みんなそれを受け入れたの？ベイエリアの企業でシニアソフトウェアエンジニアの面接では、10万人ユーザーを想定したシステムデザインが求められることも多い。" userName="reducesuffering" createdAt="2025-03-13T02:27:21" color="">}}

{{<matomeQuote body="そうだよ。NoSQLデータベースがなくても、書き込みの負荷が分散できるデータ層を設計する必要がある。" userName="femiagbabiaka" createdAt="2025-03-13T17:41:34" color="#45d325">}}

{{<matomeQuote body="＞ビジュアライゼーションツールに使うためにリードレプリカを使うのが良い<br>いい提案だけど、実際には問題になることも多い。データベースのスキーマが公開APIの一部になるからね。" userName="cyberax" createdAt="2025-03-12T17:43:42" color="">}}

{{<matomeQuote body="アカウント作って意見言わせてもらうけど、会計やサプライチェーンのERPでは、その場でやり直すのがコストかかりすぎる。初日から監査可能であるほうが安くて良いと思う。" userName="gizmov21" createdAt="2025-03-12T00:53:18" color="#ff5c5c">}}

{{<matomeQuote body="NA市場で使われるTrade Promotion Managementのプラットフォームを構築したけど、本当に初めから監査を考えなきゃダメだと思う。後で監査のことを考えるのは地獄だよ。" userName="Tostino" createdAt="2025-03-12T01:32:35" color="#ff5733">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="監査する側とされる側があるよね。正直、この意見は経験の少ない創業チームには賢い選択だと思うし、tptacekのは経験のあるチーム向けだと思う。監査に金出してスクリーンショットやCSVを見るのは無駄な出費なことが多いけど、悪い習慣が高くつくまで固まるのもミスだよね。" userName="bri3d" createdAt="2025-03-12T01:58:28" color="#38d3d3">}}

{{<matomeQuote body="このアドバイスは業界によって適用が変わると思う。B2BでPIIに関わる商品を扱っているなら、SOC2は絶対必要だし、資金のレベルに応じてSecureframeみたいな自動SOC2準拠チェックサービスを使えば、数千ドルでベストプラクティスを守れるよ。" userName="stult" createdAt="2025-03-12T20:08:51" color="#785bff">}}

{{<matomeQuote body="コンプライアンスは初めてだけど、SOC2について調べたら、監査の数ヶ月前からたくさんの証拠を集める必要があるみたいで、どうやって遡って準備するのかがわからない。SOC2の認証が簡単というのは他の人から聞いたことがなくて、一般的にはめっちゃ手間がかかるっていう話ばかり。" userName="morsecodist" createdAt="2025-03-12T03:05:08" color="">}}

{{<matomeQuote body="VantaやDrataみたいなツールを使うと楽だよ。以前は毎年ツールを変えてたから、毎年イチからやり直してたけど、今は自分のスタートアップでDrataを使っていて、監査人たちも安心するし、こっちも楽だね。" userName="film42" createdAt="2025-03-12T03:28:22" color="#38d3d3">}}

{{<matomeQuote body="こういうツールを使うのはいいけど、注意が必要。これらと使う監査人が要求しないエンジニアリング変更を強いることもあるし、それがチームにとって最善とは限らないよ。例えば、SOC2を取得するためにPHIスキャンやWAFの設定は必要ないから。" userName="tptacek" createdAt="2025-03-12T03:47:45" color="">}}

{{<matomeQuote body="うちのスタートアップはHIPAA認証が必要だからPHIスキャンはやってるけど、確かに言ってることは合ってるよね。" userName="film42" createdAt="2025-03-12T15:27:09" color="#ff5c5c">}}

{{<matomeQuote body="パフォーマンス管理のセクションは循環的で曖昧だね。良いものはモチベーションを与え、悪いものはやる気を奪うって。序文はお世辞ばかりで、名前だけで著者の情報を隠してるのもダサい。" userName="CaffeineLD50" createdAt="2025-03-12T04:19:32" color="">}}

{{<matomeQuote body="＞「早いうちからやるべきことがあって、それはSOC2を取得するつもりがなくてもやるべきです」と。これがSOC2の精神じゃない？単なるスタートアップの創業者がこういう簡単なベストプラクティスすらやらないのは残念だ。" userName="xyzzy_plugh" createdAt="2025-03-12T02:21:24" color="">}}

{{<matomeQuote body="どうして両方正しいの？SOC2プロセスはギリギリまで待つべきだと思うけど。" userName="tptacek" createdAt="2025-03-12T02:26:38" color="">}}

{{<matomeQuote body="GPのポイントは、SSOと保護されたgitブランチがSOC2プロセスを開始することなんだよ。" userName="rendaw" createdAt="2025-03-12T02:42:36" color="">}}

{{<matomeQuote body="プロダクションの変更理由をトラッキングするためにチケットシステム（例：Jira）を使うのが良いよ。そうすればほとんどの質問に答えられるから。" userName="koolba" createdAt="2025-03-12T02:47:19" color="#785bff">}}

{{<matomeQuote body="実際、著者が言いたかったことだと思う。ただ、スタートアップの創業者が基礎を整えるのに苦労することが多いね。僕が働いてたところも、ビジネスの人がフリーランスを雇ったけど、フリーランスは高い給料をもらってても、インフラやSDLCのセットアップ、ましてやセキュアなSDLCに関しては無知だった。彼らはコードを書くことだけにしか関心がなかったんだ。ビジネスの人たちは高い技術者を雇ったつもりでいたけど。" userName="ozim" createdAt="2025-03-12T08:08:55" color="">}}

{{<matomeQuote body="SOC2の認証を受けるのにSDLCプロセスは必須ではないよ。" userName="tptacek" createdAt="2025-03-12T18:00:16" color="">}}

{{<matomeQuote body="もちろん、それはただ全体の話を明確にする一部だっただけ。初期設定を手伝ってくれるコンサルタントにお金を払う必要があるかもしれないけど。最初から完全な認証モードに入る必要はないけど、適切なコンサルタントを見つけるのが難しい場合もあるよ。" userName="ozim" createdAt="2025-03-12T20:05:13" color="">}}

{{<matomeQuote body="痛い思いをしないために、バカなことは避けるのが一番だよ。認証を持つベンダーを使って、インフラを最小限に保ち（インフラチームは不要）、社内でやることが増えると認証が厳しくなる。つまり、買うこと、認証を持ったプロバイダーから買うことがシンプルな解決策だって。アイデンティティは中央で管理して、シークレットはシークレットマネージャーに保管、gitを使ってコードレビューも必須。やるべきことだよね。" userName="erispoe" createdAt="2025-03-12T14:53:30" color="#45d325">}}

{{<matomeQuote body="アイデンティティを中央で管理するっていうのは、OktaやMicrosoft Identityみたいなアイデンティティ管理システムを使用することを指してると思うよ。各自が手動でアカウントを作ったり、誰でも知ってるパスワードの共有アカウントを作るのは避けたいからね。" userName="kevan" createdAt="2025-03-12T20:46:41" color="">}}

{{<matomeQuote body="二つ書いたよ：<br>https://www.latacora.com/blog/2020/03/12/the-soc-starting/<br>https://fly.io/blog/soc2-the-screenshots-will-continue-until..." userName="tptacek" createdAt="2025-03-12T02:11:36" color="">}}

{{<matomeQuote body="ちょっと意見が違うかな。面接を何回もやってきたけど、採用の時点で候補者が多すぎるのが問題なんだよね。質問例は悪くないけど、非yes/noの質問を入れないと不適格な候補者を除外できない。Javascriptに’非常に慣れている’って言う人が実際のところ’===’が何か知らなかったりするから、”Javascriptの厳密な等価演算子は何？”って聞く。これだけで半分の候補者が落ちちゃうんだよね。" userName="methods21" createdAt="2025-03-18T00:09:11" color="#ff5733">}}

{{<matomeQuote body="VPやCTOになったらコーディングをやめる人が多いけど、なんで皆キーボードを置いてしまうのか理解できない。技術的なCTOでいられるんだから、チームや会社に貢献して、積極的に作業するべきだよ。" userName="film42" createdAt="2025-03-12T03:45:25" color="">}}

{{<matomeQuote body="VPやCTOの立場になると、コードを書く時間がなくなるよ。コードを書かない人生が続いてしまうと、いざ必要になったときに戻れないから、そうならないように気をつけて。" userName="Aurornis" createdAt="2025-03-12T13:43:56" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="建築者としてのリーダーシップが欲しいのは、コーディングができない苛立ちを解消したいからだと思う。技術的なCTOがいる会社には信頼が持てるよ。" userName="film42" createdAt="2025-03-12T15:39:36" color="#38d3d3">}}

{{<matomeQuote body="POCを作ることもあるし、高レベルのアイデアを出して、最高のアーキテクトに実現可能性を調べてもらうこともある。これまで実績のある技術に基づいて実装したいんだ。フロンティアテクノロジーには手を出したくない。" userName="scarface_74" createdAt="2025-03-12T16:24:42" color="">}}

{{<matomeQuote body="AIが進化して、コーディングをLLMがしてしまうことで、これまでのキャリアパスが変わると思う。大切なのはアーキテクトのスキルになるかもね。" userName="upcoming-sesame" createdAt="2025-03-12T14:04:44" color="">}}

{{<matomeQuote body="なんでコーディングの役割をインタビューしなくちゃいけないんだろう？1996年から2018年まで開発をしてたけど、役職が移行していく中で、今は戦略の方が多くなったよ。" userName="scarface_74" createdAt="2025-03-12T14:19:55" color="">}}

{{<matomeQuote body="時間がないのが全ての原因だった。20から25人のチームをマネージしてたから、コードに費やす時間が全然なかった。でもコーディングの機会を逃したくないから、夜や週末にやってたけど、だんだん腕が鈍ってきたな。" userName="ajmurmann" createdAt="2025-03-12T04:34:23" color="#45d325">}}

{{<matomeQuote body="ICではない場合、他の優先事項が出てくるから、重要な仕事を抱えるわけにはいかないよね。レビューやデザインミーティングはできるけど、クリティカルな作業をやると問題になっちゃうんだ。" userName="jayd16" createdAt="2025-03-12T04:37:01" color="">}}

{{<matomeQuote body="いろいろ考えたけど、VPやCTOが書けるコードは他のチームメンバーも書けるし、その分野では逆に彼らの方がうまかったりするんだよね。だから、競争に勝つためにリクルートや技術的な計画を優先するのは賢い判断だと思う。" userName="mikeshi42" createdAt="2025-03-12T04:22:20" color="#ff5c5c">}}

{{<matomeQuote body="でも、忘れたらそれできなくない？" userName="guappa" createdAt="2025-03-12T09:37:03" color="">}}

{{<matomeQuote body="俺の最後のCTOの時は、チーム40人で丸1日オーバーキャパだった。50％プログラミングしてたかったけど、時間もサポートもなかった。結局、ICに戻ることにしたけど、そっちの方が自分に合ってた感じ。" userName="petesergeant" createdAt="2025-03-12T05:42:42" color="#ff33a1">}}

{{<matomeQuote body="どういう理由でその決断をしたのか、どうなってるのか教えてほしいな。いいことが多いって思うけど。" userName="yard2010" createdAt="2025-03-12T09:49:17" color="">}}

{{<matomeQuote body="その決断ってICに戻ることだよね？それはうまくいってると思う。アメリカの外でリモートで働いているし、ストレスも少なくて悪くない感じ。今はAIプロジェクトに取り組んでいて、税金対策の会社でアメリカの開発者の給料をもらっているよ。" userName="petesergeant" createdAt="2025-03-12T10:20:57" color="#785bff">}}

{{<matomeQuote body="時間管理にはGetting Things DoneやSeven Habitsが基礎になっている。それをもとに自分に合ったシステムを試行錯誤して見つけた感じ。Inboxをタスクリストに使わないのが信条で、リマインダー設定が簡単なアプリを重視してる。" userName="petesergeant" createdAt="2025-03-13T08:21:42" color="#ff33a1">}}

{{<matomeQuote body="多くのスタートアップは50人以上でも正式な管理構造なしでうまくいってると思う。CEOやCTOがまだコーディングや顧客とのコミュニケーション、製品向上に関わってる。初期段階で管理ばかりになるのは間違いだと思う。" userName="osigurdson" createdAt="2025-03-12T13:13:19" color="#ff5733">}}

{{<matomeQuote body="OracleやLarry Ellisonのことはあまり好きじゃないけど、彼の「Oracleには2つの仕事がある、ソフトウェアを作るか、売るか」という言葉はいいなと思う。初期のスタートアップでは、ほとんどの人が両方やるべきだよ。" userName="dowager_dan99" createdAt="2025-03-12T16:53:37" color="">}}

{{<matomeQuote body="完全に同意。金に余裕ができるまでは「企業文化」に関わる人を雇うべきじゃない！" userName="osigurdson" createdAt="2025-03-12T17:31:08" color="">}}

{{<matomeQuote body="CTOの仕事は戦略だよね。コーディングするマネージャーは要らない。管理とリソースの確保、優先順位付けが大事だし、開発だけがスーパーパワーじゃないんだ。何を開発すべきか、ビジネスとの対応、トレードオフを管理することが差別化ポイントだと思う。" userName="scarface_74" createdAt="2025-03-12T08:53:55" color="#ff5c5c">}}

{{<matomeQuote body="CTOが戦略を担うのは大企業なら分かるけど、スタートアップではちょっと違うんじゃない？" userName="cyberax" createdAt="2025-03-12T17:44:55" color="">}}

{{<matomeQuote body="20〜30人規模の会社でもCTOは顧客との対話が大切だよ。僕の前のスタートアップではCTOが顧客と飛び回ってたけど、CTOの役割とは言えない気がする。実際、僕がAWSで中堅のポジションの時の方が多くの戦略があった。" userName="scarface_74" createdAt="2025-03-12T18:02:59" color="#ff5c5c">}}

{{<matomeQuote body="顧客と話すのはCTOの役割じゃないよ。セールスエンジニアの仕事だ。CTOは技術チームを率いる人だし、スタートアップの場合、かなり細かいところまで関わる必要があるよね。" userName="cyberax" createdAt="2025-03-12T19:29:13" color="">}}

{{<matomeQuote body="CxOは非技術のセールスエンジニアと話したくないし、技術的な問題を理解できる深い技術者と話したいよ。顧客との第一接点は、技術的な人間が担当するべきだと思う。" userName="scarface_74" createdAt="2025-03-12T20:01:15" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="CxOは非技術者とは話したくない。だから新しいCxOの役職を作ったりするのがいいんじゃないかな。CTOは内向きで技術計画を策定・実行する役目じゃない？" userName="cyberax" createdAt="2025-03-12T21:55:41" color="">}}

{{<matomeQuote body="僕がセールスに関わるのは仕方ないんだ。でも契約が決まったら、プロジェクトを率いる役割に移るんだ。" userName="scarface_74" createdAt="2025-03-12T22:09:56" color="">}}

{{<matomeQuote body="セールスで働いてるのが悪いわけじゃないよ。スタートアップではいろんな役割を兼任するのが普通だし、成長した時にそれを続けられるかは分からない。" userName="cyberax" createdAt="2025-03-13T00:26:51" color="">}}

{{<matomeQuote body="同じスタッフレベルのコンサルタントが多いけど、要件分析もプロジェクトリードの一部だよ。実際、プロジェクトは数週間で終わるし、役割分担がうまくできてる。" userName="scarface_74" createdAt="2025-03-13T01:09:14" color="#ff33a1">}}

{{<matomeQuote body="主にMaker's ScheduleとManager's Scheduleの問題だね。ランダムな役割を持ちながら、長時間集中して作業するのが難しいんだ。" userName="jkingsbery" createdAt="2025-03-12T21:25:10" color="">}}

{{<matomeQuote body="みんなよりも長時間働くことになるってのをまず理解するのが大事だね。大変だけど不可能ではないよ。" userName="rhubarbtree" createdAt="2025-03-12T22:47:27" color="">}}

{{<matomeQuote body="CTOがコードを書いてて、会社がその手直しをしたいエンジニアを雇おうとしてたんだけど、CTOのやり方にみんなが逆らえないから問題だった。バグだらけで顧客は辛抱強かったけど、決定権はCTOにあったから、チームのベストプラクティスが通用しなかったんだ。" userName="whilenot-dev" createdAt="2025-03-12T07:33:00" color="#ff5733">}}

{{<matomeQuote body="自分は初めてのDirectorだけど、いろんな分野に約30人の組織を持ってる。全ての分野に深く踏み込むのは無理で、CTOが言ってる『T字型』って考えに悩んでる。自分は一つの分野でシニアレベルだけど、他はそんなに詳しくないし、他のDirector/VPの中では一番技術的な存在だって感じてるんだ。" userName="dowager_dan99" createdAt="2025-03-12T16:49:05" color="">}}

{{<matomeQuote body="プロトタイピングの力は、リーダーとして重要なスキルだね。アイデアを形にするのは全体の20％に過ぎないけど、他のICがそれを元に作業を進められるように手助けできるのがいい。自分もリードとして、CTOの役割って同じようなもんだと思う。" userName="gorgoiler" createdAt="2025-03-12T05:43:29" color="#785bff">}}

{{<matomeQuote body="ジュニアにはメンターがいて、そのメンターと一緒に成長するんだ。最終的には自分も誰かのコードを書くのを任せる側になるってわけ。もし手を動かし続けたいなら、今はその役割に向いてないかもしれないよ。" userName="nedt" createdAt="2025-03-12T13:00:04" color="">}}

{{<matomeQuote body="Elon Muskは完全に独学でコーディングを学んでるみたいだけど、コードレビューをしてもらいたい？" userName="CaffeineLD50" createdAt="2025-03-12T04:24:43" color="">}}

{{<matomeQuote body="洞窟に閉じ込められた人を助けてる最中に自分をペド呼ばわりされたくはないけど、ちょっと笑えるね。" userName="guappa" createdAt="2025-03-12T09:38:56" color="">}}

{{<matomeQuote body="＞”同期チャットはないって言いたい。リアルタイムのやりとりが必要ならチャットではやらない方がいい。電話したり顔を合わせて話すべきで、メッセージ送ってすぐ返事を期待するのはダメだ。”" userName="codingdave" createdAt="2025-03-12T15:48:27" color="#ff5733">}}

{{<matomeQuote body="『二つのクルー』システムで人々がうまくやってる例を見たことある？分かれるのが普通な気がする。理論上は良さそうだけど、実際に機能するのか疑問だよ。" userName="snide" createdAt="2025-03-12T01:05:25" color="">}}

{{<matomeQuote body="前の仕事では、サポートが終わる予定のオンプレミス製品のバージョンに対して、3人の小さいチームがそのサポートを担当してたんだ。彼らはパイプラインや大きな修正の準備をするだけで、残りの時間は自由に好きなことに取り組んでた。みんなそのチームには感謝していて、彼らがやってくれるおかげで、他の人たちは重要なことに集中できてた。彼らのおかげで素晴らしい改善がいくつかあったと思う。" userName="ajmurmann" createdAt="2025-03-12T04:42:36" color="#785bff">}}

{{<matomeQuote body="人々が”future crew”に自然に移行したくない場合、実際に成功した場所もあるんだ。ゲーム業界ではエンジンチームとゲームチームのように、異なるチームが効果的に機能することもあった。例えば、6～12週間の間、特定の機能にいて、その後メンテナンスや技術的負債に取り組むスタイルだったよ。" userName="maccard" createdAt="2025-03-12T11:39:53" color="#ff33a1">}}

{{<matomeQuote body="私も昔、Red Teamで新機能開発、Blue Teamで安定性とバグ修正をやるシステムを試したことがある。固定チームじゃなくて、スプリントごとにローテーションしてた。このやり方は3ヶ月間はうまくいったけど、その後はビジネスの能力やドメインに基づいてチームを組織するようになった。" userName="jpswade" createdAt="2025-03-12T21:41:19" color="">}}

{{<matomeQuote body="はい、週単位でサポートやバグ報告を担当するルーチンがあって、それが完全に別の”二つのクルー”の問題を回避できたかも。詳しくはここで書いたよ。" userName="plomme" createdAt="2025-03-12T12:12:42" color="">}}

{{<matomeQuote body="お客様のクルーが十分なリソースを得ている（そして適切に補償されている）なら、”future crew”に移行したくないかも。でも、やっぱり新機能にばかり注目して、メンテナンスがないがしろにされるのは典型的だよね。こうした別々のチームは、状況を悪化させるだけかもしれない。" userName="citrin_ru" createdAt="2025-03-12T18:52:11" color="">}}

{{<matomeQuote body="こういうのが好きな理由は、役立つ責任や懸念がカバーされているからだよね。すごいアドバイザーがいるか、いい上司の下で働いてない限り、誰もこういうリストを教えてくれないから。各セクションについて、自分たちの答えやプロセスを見直すのが助けになる。" userName="rukuu001" createdAt="2025-03-12T05:28:58" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
