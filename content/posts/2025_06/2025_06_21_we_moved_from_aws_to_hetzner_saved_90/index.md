+++
date = '2025-06-21T00:00:00'
months = '2025/06'
draft = false
title = '脱AWSでコスト90%削減！Hetznerへ移行しAnsibleでISO 27001も維持した話'
tags = ["AWS", "Hetzner", "コスト削減", "ISO 27001", "Ansible"]
featureimage = 'thumbnails/orange4.jpg'
+++

> 脱AWSでコスト90%削減！Hetznerへ移行しAnsibleでISO 27001も維持した話

引用元：[https://news.ycombinator.com/item?id=44335920](https://news.ycombinator.com/item?id=44335920)




{{<matomeQuote body="今年の初めにAWSから欧州のクラウド（Hetzner + OVHcloud）に移行したんだ。コスト削減（90%カット！）とデータ主権（GDPR + CLOUD Actの懸念）が理由だよ。主要なAWS機能は自分たちで再構築したんだ。VPSのプロビジョニングはTerraform、ハードニングからローリングデプロイまでAnsibleを使ったよ。監視はPrometheus + Alertmanager + Blackbox、ログはLoki + Grafana AgentでS3互換ストレージへ。PostgreSQLのAnsibleロール（s3cmdバックアップ付き）、ハードニング、ローリングデプロイ、監視、TLS自動化とかがスタックに含まれてる。アーキテクチャや課題、学んだことについてはここで書いたから読んでみて！<br> insights、図、スニペットとか興味があれば共有するし、落とし穴、コンプライアンス、コストモデリングの質問にも答えるよ。" userName="sksjvsla" createdAt="2025/06/21 09:02:29" color="#ff33a1">}}




{{<matomeQuote body="＞ We rebuilt key AWS features ourselves<br>それってどれくらいコストかかった？自分でホスティングするDIYスタイルのコストって、普通は計算に入れないよね。それが一番高くつくことが多いんだよ。自分で作ったものの24x7サポートをするだけで、Amazonにアウトソースしないことで得られた節約分はかなり吹き飛ぶはず。<br>＞ $24,000 annual bill felt disproportionate<br>それはまともなDevOpsフリーランサーの1〜2ヶ月分くらいの給料だね。もし君がデベロッパーに安く払ってるなら、年間FTEの1/3くらいかな。その予算じゃ24x7サポートなんて得られないよ。これでも意味はあるかもしれないけど、全然全貌を話してないね。開発時間を入れたら、たぶんずっと地味な話になると思うな。誤解しないでほしいんだけど、俺も似たような移行を考えてるんだ。でもそれはコスト削減よりビジネス上の理由（ドイツの顧客の中には米国のホスティング会社を本当に嫌がる人がいるから）が大きいんだ。これはコストと手間を増やすことになるし、たぶんチームの増強が必要になるだろうね。CTOとして、俺の時間はすごく貴重な資源なんだ。だから、自分でこれをするのは時間の無駄遣いもいいところだよ。俺のフォーカスは会社と製品を良くすることにあるべきだね。君の技術スタックは良いと思うよ。経験済みだ。個人的にはTerraformはこのくらいの小規模セットアップにはやりすぎで、YAGNIの範疇にしっかり収まると思う。でもAnsibleは好きだよ。" userName="jillesvangurp" createdAt="2025/06/21 11:33:11" color="#45d325">}}




{{<matomeQuote body="＞ Providing 24x7 support for the stuff that you’ve home grown alone is probably going to make large dent into any savings you got by not outsourcing that to amazon.<br>Azure、AWS、GCPのマーケティング部門が主に推してるこの神話を、なんでみんな広め続けるのか理解できないな。実態は、クラウドプロバイダーは君のアプリの24/7サポートなんて実際には提供してないんだよ。彼らは自分たちのインフラが、ゆる〜い定義の24/7でだいたい動いてることを保証するだけ。彼らを正しく使ってて、とんでもない請求が来ないようにするために、専門家は相変わらず必要なんだ。彼らとの連携が壊れないようにする人も必要だし、そこには君のロジックが含まれてて、とにかく壊れやすいのはそっちの方なんだよ。クラウド費用がTCO（総所有コスト）だなんていう考えは完全に捏造だよ。たとえその請求書自体が、実際のものに対してめちゃくちゃ高価な場合でもね。" userName="StopDisinfo910" createdAt="2025/06/21 12:51:54" color="#ff5733">}}




{{<matomeQuote body="＞ Don’t get me wrong; I’m actually considering making a similar move but more for business reasons (some of our German customers really don’t like US hosting companies) than for cost savings<br>AWSは新しいヨーロッパ主権クラウドを計画してるよ。完全に米国から独立して、EU法と規制に100%準拠することを目標にしてるんだ。<br>[1]: https://www.aboutamazon.eu/news/aws/aws-plans-to-invest-7-8-billion-euros-in-germany-for-european-sovereign-cloud" userName="randomtoast" createdAt="2025/06/21 11:46:54" color="">}}




{{<matomeQuote body="＞ $24,000 annual bill felt disproportionate<br>＞＞ That’s around 1-2 months of time for a decent devops freelancer. If you underpay your devs, about 1/3rd of an FTE per year. And you are not going to get 24x7 support with such a budget.<br>絶対的な節約額で言えば、24kの90%だから年間約21.6kの節約だね。まあまあまとまった額だけど、その値段でSRE/DevOpsエンジニアは雇えないよ。ヨーロッパでも、そういうエンジニアは年間70k以上稼いでるからね。個人的には、長期的にはTCO（総所有コスト）は高くなると思うな。だって今はソフトウェアスタックの全てのちょっとした部分までインフラチーム/担当者が管理しなきゃいけないし、時間の経過とともに物事はどんどん複雑になって、アップデートや破壊的な変更も来るだろうから。でも、彼らがうまくいくことを願ってるよ。" userName="randomtoast" createdAt="2025/06/21 11:54:25" color="">}}




{{<matomeQuote body="＞ There will be a new AWS European Sovereign Cloud[1] with the goal of being completely US independent<br>AWSと名がつくものが、いざとなった時に米国から完全に独立できるなんていう考えは、もちろん単なるファンタジーだね。" userName="jjani" createdAt="2025/06/21 11:54:24" color="">}}




{{<matomeQuote body="70k？ポーランド/チェコ/スロバキアで半額以下で雇えばいいじゃん！<br>ヨーロッパって言っても、Appleの機能利用可能地域みたいなイギリス/ドイツ/フランス/スペイン/イタリアだけの話じゃない限りね。" userName="Elinvynia" createdAt="2025/06/21 12:31:29" color="">}}




{{<matomeQuote body="＞ That’s around 1-2 months of time for a decent<br>たぶん彼らはヨーロッパにいるんじゃない？だったら人件費はこっちの方がずっと安いよ。<br>＞ Providing 24x7 support<br>彼らはハードウェア自体を維持してるわけじゃないし、Amazonが無料でDevOpsを提供してるわけでもないしね。主にサーバーレスのものを使ってるとかならともかく、そんなに大きな違いはないかもしれないよ。" userName="wqaatwt" createdAt="2025/06/21 13:25:34" color="">}}




{{<matomeQuote body="核心的な質問は、彼らが提供する価値がコストに見合うかってことだね。彼らが原因で何かが壊れたら、かなり早くサポートはしてもらえるだろうけど、問題が起きるのってほとんどそこじゃないんだよ。問題はほぼ常に、君がサービスをどう使うかにあるんだ。それを直すには、使ってる技術と、それがクラウドプロバイダーによってどう提供されてるかの両方を理解してる人が必要になる。そうなると、結局専門家は雇ってるわけだから、莫大な請求書を払う意味って何？ホスターの方が、ほとんどのメリットに対して安くつくよ。彼らはすでに、簡単なスケーラビリティに必要なほとんどの基本要素を提供してるしね。" userName="StopDisinfo910" createdAt="2025/06/21 19:19:53" color="#45d325">}}




{{<matomeQuote body="Amazonとかがインフラをちゃんと動かし続ける努力って、安いクラウドとは根本的に違うんだ。信頼できるキューとかストレージがある前提でのシステム設計と、そうじゃない時の設計は全然違うよ。この記事みたいに自分で解決する道を選ぶってことは、普通はもう「解決済み」とされてる問題を自分で抱え込むってことなんだ。" userName="nostrebored" createdAt="2025/06/21 16:27:15" color="">}}




{{<matomeQuote body="AWSの請求が高いのは、RDSとかIAMとかSystems Managerとか、そういうツールがたくさんあるからだよ。これらを自分でゼロから作ってメンテするのは、マジで大変な作業だからね。" userName="kikimora" createdAt="2025/06/22 08:18:02" color="">}}




{{<matomeQuote body="そこまで大変かな？RDSがない時代、どうやってPostgres動かしてた？RDSの機能、どれくらい使ってる？<br>１. 時々バックアップ取る？<br>２. Prometheusでパフォーマンス監視してダッシュボードで見せる？<br>３. ディスク使用量をPrometheusで見せる？<br>４. 復旧用のAnsibleプレイブック？アラートで自動化？<br>５. バックアップをステージング環境にリストアしてちゃんと動くかチェック？<br>これLLM使えば100～500行くらいでできると思うんだけど。他に何か見落としてる？" userName="sksjvsla" createdAt="2025/06/22 08:30:37" color="#ff33a1">}}




{{<matomeQuote body="まだまだいっぱいあるよ。<br>ーAuroraで急な負荷に対応<br>ーRedShiftへのZero-ETL<br>ースロークエリ監視（メトリクスだけじゃなく実際のクエリソースも）<br>ースナップショットで本番データをステージングに移してクエリテスト<br>他にもECSでアプリをオートスケールしたり、S3+Athenaでログ保存・分析、Systems ManagerでSSH鍵管理なくしたり、IAMとSSOでアクセス制御、IoTでデバイス管理とか。<br>クラウドなしで複雑なインフラをどう運用するのか、想像できないね。VPSとかだと専任のDevOpsがボトルネックになるか、グチャグチャになるか。クラウドならチームが承認とか待たずにどんどんインフラ変更できる。リアルな例だと、最初はDMS+PG+Athena→数ヶ月後Auroraリードレプリカ→数ヶ月後DMS+RedShift→数ヶ月後Zero-ETL+RedShift、みたいにコロコロ変わる。DevOpsはこんな頻繁な変更とメンテでキレると思うよ。" userName="kikimora" createdAt="2025/06/22 09:23:30" color="#ff33a1">}}




{{<matomeQuote body="両方正しいと思うな。AWSのサポートを過大評価してる面もあるけど、記事主がやったみたいに全部自分でイチから作るのは年間2.4万ドルのためにやるには骨が折れる。でもAWSが24/7ホワイトグローブサポートしてくれるなんて、サービスで問題にぶつかったことがある人なら笑っちゃうよね。" userName="steveBK123" createdAt="2025/06/21 13:23:20" color="">}}




{{<matomeQuote body="それでも、システムは壊れるよ。大手クラウドだって障害は起きるし、それに備えた設計は必要。自分でできるなら、ダウンタイムの計画や対応にもっと強くなれるし、ソリューションを完全にコントロールできることが多い。あと、厳しいアップタイム要件がある会社は、ちゃんとリスク分析して、ダウンタイム時のコストとか考慮して、戦略のTCOを評価するはず。そういう判断って、適当にはやらないんだ。" userName="aforwardslash" createdAt="2025/06/21 19:56:56" color="#785bff">}}




{{<matomeQuote body="90%削減は聞こえはいいけど、金額（2万ドル）は少なく感じるな。これってSVの数百万ドル調達ラウンドのせいで感覚がおかしくなってるのかな？開発者の給料とか含めると（もし社員が一人でもいれば）、2万ドル節約ってそんなに労力に見合う？開発者1/5人分くらいだし。でも個人事業とかなら2万ドルはマジで死活問題になりうる。<br>もっと大事な数字は、純売上に対する削減率だろうね。これで利益が50%増えるならやる価値あり。でも、AWSやめて新しい（儲かる）機能作るか、って考えたら、AWS削減はそこまで優先じゃないかも。って言うのは簡単だけど、現実にはそんなシンプルじゃないし、2万ドルは2万ドル。SVの「利益考えずにとりあえず金使え」みたいな考え方は、スタートアップ1万社に1社くらいしか成功しない幻想だよ。" userName="awongh" createdAt="2025/06/21 11:53:43" color="#38d3d3">}}




{{<matomeQuote body="この記事読んで正直cringeした。ダウンタイムとその時の復旧時間（RTO）を全然考えてないように見えるんだけど。Hetznerって何の予告もなくいきなりサーバ落とす問題が何度かあったし、悪意のあるクレームでアカウント全体が止められることも。ヘルスチェックは失敗するのに、見た目にはサーバが動いてる、みたいな状況で、原因不明で助けも来ない。これってすごくコストがかかるし、管理不能なリスクだよ。競合とかがテキトーなメールでクレーム入れてきただけでサービス止められるリスクとかね。サポートも返事くるまで最低24時間かかる。DIYホスティングには管理できないコストが多すぎて、どう考えてもプラスになるとは思えないな。まるでガソリン精製所で火遊びしてるみたい。一度燃え始めたら、いつ火が消えてみんなが仕事に戻れるか分からないよ。" userName="trod1234" createdAt="2025/06/21 16:11:32" color="#38d3d3">}}




{{<matomeQuote body="AWSの方が（高い）人件費がかからない、みたいな暗黙の前提は正しくないよ。" userName="kiney" createdAt="2025/06/21 12:55:32" color="">}}




{{<matomeQuote body="僕の同僚が8〜10年くらい前に給料は4万〜6万ドルの範囲だって話してたんだけど、今はそんなに安くなってないと思うんだ。" userName="renw0rp" createdAt="2025/06/21 12:47:24" color="">}}




{{<matomeQuote body="僕もそれが気になってるんだよね。90%削減って数字はすごいけど、機会費用はどうなんだろう？" userName="hiAndrewQuinn" createdAt="2025/06/21 11:40:32" color="">}}




{{<matomeQuote body="これはすごく視野が狭い見方だと思うな。クラウドプロバイダーは障害が起きた時の影響が大きいプリミティブのために、障害に強い分散システムを構築する作業をやってくれてるんだ。例えば、AWSのサービスを作ってるチームがSQSやS3を extensivelyに使ってないなんてことはあり得ない。誰でもSQSの自作バージョンは作れるよ。API立てて、インメモリキューにメッセージ書いて、それを読む。大変なのは、このシステムをすぐに理解できて、コンシューマーには複雑さが隠蔽された状態で「メッセージを入れて、メッセージを取り出す」を実現することなんだ。自作しても計画が上手くなるわけじゃない—こういう教訓は大規模運用でしか学べないことばかりだよ。もしそういう学びのために時間を使いたいなら素晴らしいけど、僕は顧客が求める機能や堅牢なシステム構築に時間を使いたいな。" userName="nostrebored" createdAt="2025/06/22 15:47:14" color="#ff33a1">}}




{{<matomeQuote body="全くその通り、妥当な懸念だよ—マネージドプラットフォームが抽象化してくれる実際のリスクがDIYホスティングにはあるってことには異論ないよ（でもAWSだってアカウント閉鎖される可能性はあるけどね）。ただ、僕たちは何も考えずに移行したわけじゃないんだ—HetznerやOVHのサポート遅延とか、いろんなシナリオを時間をかけてテストして、緩和策を設計したんだ。<br>僕たちがやってることの一部を紹介するね：<br>• インフラは複数のプロバイダー（Hetzner, OVH）＋Cloudflareでトラフィック管理をして分散させてる。もしHetznerが障害で止まっても、数分でリダイレクトできるんだ。<br>• DBバックアップは暗号化して、毎晩いろんなリージョン／プロバイダー（メインのベンダー以外の場所も含む）に複製して、リストア手順もテスト済みだよ。<br>重要なポイントは：どのプラットフォームにも相手側のリスクはあるんだ—それがAWSが法的な理由でリージョンを閉鎖するのかもしれないし、Hetznerがサーバーをオフラインにするのかもしれない。僕たちのアプローチは、コストを大幅に削減し（約90%削減って言ってる通り）、コンプライアンスを維持しつつ、影響範囲を小さくして復旧を早くすることを目指してるんだ。<br>DIYは間違いなく誰にでも向いてるわけじゃない—手間はかかるけど、僕たちの特定の制約（コスト、主権、コンプライアンス）にとっては、全体としてプラスだったんだ。もっと詳しく知りたいことがあれば喜んでシェアするよ！<br>ああ、それとAWSから追い出されて、Auroraを使ってたなんて想像してみてよ…僕のスタンダードコンポーネントを使ったマルチクラウドセットアップは、あなたを cringeさせるべきじゃないんだけどな。" userName="sksjvsla" createdAt="2025/06/21 17:33:34" color="#ff33a1">}}




{{<matomeQuote body="この場合のAWSの年間コスト2.4万ドルっていうのも、必要なFTE換算の人件費を考慮してないナイーブな計算じゃない？AWSで彼らが使うサービスをセットアップするのに、どれだけの人件費がかかったんだろう？年間費用を例えば4.8万ドルとか10万ドルから2.4万ドルに抑え続けるのに、どれだけの人件費が必要なんだろう？" userName="rz2k" createdAt="2025/06/21 13:35:03" color="">}}




{{<matomeQuote body="ブログ記事によると：”僕たちはデンマークの勤怠管理会社で、従業員のスケジュール管理をしています”って書いてあるね。SVのVC出資スタートアップじゃないのは確か。多分ブートストラップだろうね。" userName="layer8" createdAt="2025/06/21 13:17:11" color="">}}




{{<matomeQuote body="AWSの機能を100%再現するのは高くつくかもしれないけど、80%しか必要ない場合はどうなんだろうね。AWSの設定や、それを維持するためのスキルにかかる労力も考慮しないといけないよ。それから、AWSのダッシュボードを使うことの機会費用と、Grafanaなどでより良いものを使うことの機会費用もあるしね。結局、需要の規模、多様性、変動性によって大きく変わるんだろうな。全ての釘が、道具箱で一番大きなハンマーで打つことで恩恵を受けるわけじゃないんだ。" userName="heisenbit" createdAt="2025/06/21 14:02:47" color="">}}




{{<matomeQuote body="『The Mythical Man-Month』の著者、Fred Brooksはこう言ってる：<br>”ソフトウェアは10年前より書くのが10倍簡単になった。そして、今から10年後より書くのが10倍難しい。”<br>Ansible、Hetzner、Prometheus、オブジェクトストレージを使えば、LLMにプロンプトを出せばRDSが手に入るだろう、あるいは少なくともユースケースに必要なRDSの部分が、ほんの一部だけコストで手に入るんじゃない？" userName="sksjvsla" createdAt="2025/06/21 18:55:28" color="">}}




{{<matomeQuote body="敬意を持って言うと、「アカウント閉鎖するかも」っていうのと、違法なクレームに基づいて一時的に「アカウント閉鎖した」っていうのは大きな違いがあるんだ。僕はこれ以降または今後はHNでは返信しないと思うよ、なぜなら建設的な批判をして貴重なフィードバックを提供したのに、karmaを大きく失ったからだ。多くの人が、建設的な批判をするアカウントを罰するためにbrigadingしてるんだ。<br>一般的に言って、AWSは合法的な理由がない限りアカウントを維持することにインセンティブがあるんだ。彼らは一般的に、行動を起こす前に適切なデューデリジェンスで主張を精査する、なぜならそうすることでその期間の請求を継続できるからだ。根拠のない違法な要求は彼らにコストがかかるし、彼らはそのお金が欲しいし、それを実行できる規模にいるんだ。<br>あなたがロールアウトに多くの時間と労力を費やしたのは確かだろうね。あなたは有能に聞こえるけど、僕が cringe するのは、これが技術的な問題だけじゃないのに、あなたが取っているアプローチなんだ。<br>もしあなたが調査していれば、Hetznerが生産システムを動かしている人たちを、完全にシャットダウンしたり、さらに悪いことに無効な法的クレームに対応して、それをHetznerが適切に精査しなかったためにシャットダウンしたインシデントにいくつか遭遇しただろうね。ハードウェア故障に関連するかもしれないけど、そうじゃないかもしれない奇妙な非決定論的な問題もいくつかあったんだ。<br>彼らのサポートはしばしば24時間に一度の返信なんだ。最初の数回の返信がboilerplateで、担当者が読んだり理解したりしなかった場合どうなるんだ。24時間＋各ステップで次の24時間をスキップする確率%; そして電話サポートがない、これは全く管理不能だよ。彼らがカスタマーサポートラインを持っているのは分かっているけど、ほとんどの人にとっては国際電話で、時間は銀行の営業時間なんだ。ヨーロッパにいれば、そういう電話をかけるのはずっと楽だけど、他の場所なら国際電話で、一日の最初のチャンスは深夜だよ。<br>両方のサーバーを別のプラットフォームにすることは健全な実践だけど、ロギング／通知システムを実行しているDAGが、失敗するプラットフォーム上にあって、フェイルオーバーできない場合どうなるんだ。問題は、スタックの半分が一方のプロバイダーで失敗し、古いデータが正常な側に複製され、無意味な、あるいは見えない障害が発生した場合に特に難しいんだ。そして、トラフィック管理による自動フェイルオーバーを強制するだけでは不十分で、それはしばしば十分な粒度がないんだ。<br>Cloudflare tmと最後に仕事したのはしばらく前だから、これは改善されたかもしれないけど、僕は合理的に懐疑的だ。僕は個人的に、直接の障害に対するサポートのRTOは例外的だったが、単純なHTTP（200）以上のものに対するRTOは存在せず、責任のなすりつけ合いが起きたインシデントを見たことがある。それは無意味だった、なぜなら生ネットワークキャプチャは、プロバイダー側でのL2/L3トラフィックでの障害を示しており、それがプロバイダーに無視されていたからだ。彼らはまだ主張し、その結果、ダウンタイム／停止が延長されたんだ。ベンダー管理の問題は、契約がタイムリーな行動を適切に範囲設定し強制しない場合に最悪なんだ。<br>OVHやHetznerを含む様々なホスティングプロバイダーで僕が見た問題のかなりの部分は、ハードウェアの故障、または彼らが導入した透過的な stopgap に関連しており、それが上位のサービスレイヤーを壊してしまうんだ。<br>例えば、ある時点では、異なるプロバイダー上の2つのバックエンドノードセット間のトラフィックで、古いキャッシュの問題のように見えるものが発生していた。それらの間にキャッシュはなく、原子的な他のフローを満たしながら、APIのシーケンシャルなフローを壊していた。HTTP 200は問題なかったが、AAAやその他いくつかには問題があった。インラインにsquid透過プロキシが配置されていたように見えたが、僕たちがプラットフォームに連絡すると promptly 消えたんだ。それが起こったことを彼らが確認しないのは、少なくともあなたのデプロイしようとしているアプリの意図された使用が、そのビジネスに関連する専有および機密情報を含む知識管理ソフトウェアである場合、懸念すべきことだった。言うまでもなく、このプロジェクトはその後のどのクラウドプラットフォーム上でも進まなかった（そしてそれはテストデータで populated されていたので何も失われていない）。それが僕たちのクラウド移行の多くが停止され、クラウド repatriating プロジェクトに変更された理由なんだ。相手方のリスクは耐えられない。<br>若いプロフェッショナルは、これらの問題や関連する問題をsolely 技術的な問題と見なし、経験不足やstreetlamp effectと呼ばれる intelligence trap のために weighing できない問題よりも、それらの技術的な問題を高く weighing する傾向があることがわかった。これはしばしば彼らがBayesアプローチを教えられていないからだ。これに関するSANS CTIのプレゼンテーションがある（https://www.youtube.com/watch?v=kNv2PlqmsAc）。<br>TL;DR は、技術的なプロフェッショナルはほとんど全てのデバイスを見たり尋問したりできるが、それが poor な assumptions と制御の錯覚につながる可能性があり、低レベルのファシリティが期待通りに動作しない場合に、それらの edge 問題がどのように発生するかの明確な可視性がないときに、問題を無視したり dismissing したりする傾向があるということだ。非決定論的な失敗領域のクラスの問題で、guess と check しか機能しないものだ。<br>経験を積んだ人たちは、ビジネスプロセスの失敗から発生する問題を緩和するために必要な柔軟性により焦点を当てる傾向がある。協力的な環境が敵対的になる場合など、これは必ず一方の当事者による損失、欺瞞、または期待の裏切りによって信頼が崩壊した場合に発生する。この環境のフェーズ変化と基準は、BC/DR計画—少なくとも僕が見たもの—にはめったに反映されたり触れられたりしない。僕がドラフトを担当したものは、依存関係、ステークホルダーの考え、そして提案された2つの環境間の基準、along with 偶発事象を考慮したギャップ分析を含むことが多かったんだ。<br>これには当然、義務を果たさなかった場合に責任を追及するための法的な措置も含まれるべきだが、今日ではそれさえも often 不十分だ。いくつかの特定の状況を除いて、法的な措置は損失を受け入れて立ち去るよりもコストがかかることが多いんだ。<br>この若い傾向が僕を cringe させるんだ。僕が見た最悪の災害は、根本的なビジネスメカニクス、そしてそれらのビジネスの失敗が技術的な解決策がほとんどない inevitable な技術的な問題にどうつながるかを知っている人には readily 予測可能だったんだ。<br>もしあなたが物理的なデータセンターアクセス権を持った自分の機器で co-locating していたなら、僕は much もっと slack を与えただろうけど、あなたの他の返信からそうではないようだったね。<br>必要なホスティングを受けながら、相手方のリスクを緩和する方法はあるんだ。不透明な状況下で、apples to oranges のサービスで妥協することは rarely 客観的な視点を示すものであり、だからこそ、何か重要なことを見落としていないか確認するために、健全な量の懐疑心と disagree が必要なんだ。<br>不利なコストと結果を減らすための建設的な批判と、単に現実に基づいていない批判の間には重要な違いがあるんだ。<br>最近のHNの大多数の人々は、 aggregate でその重要な区別をする能力がないように見える。僕の比較的 tame な返信は10人以上の人にダウンボートされたんだ。<br>これらの人々は、あなたから行動できるフィードバックを奪うことで、あなたに失敗してほしいと思っているんだ。" userName="trod1234" createdAt="2025/06/22 20:38:40" color="#785bff">}}




{{<matomeQuote body="それでも、これは場所によって大きく違うし、国によってかなり差があるよ。僕はクロアチアのSWEで数学とCSのバックグラウンドがあるけど、年収はここであなたが主張する額より少ないんだ。 drasticに少ないわけじゃないけど、EUの他の地域と比べると disappointing だし、自国民と比べるとすごく良い給料だけどね。僕のSRE／devopsの友達も似たような状況だよ。国間の経済的な違いに対する理解がこれほど不足してるのを見るのはいつも驚くね。Indeedで調べると、アメリカのマクドナルドの店長が、東南ヨーロッパのソフトウエアの誰よりも noticeable に多く稼いでるんだから。" userName="mbmjertan" createdAt="2025/06/21 13:19:13" color="">}}




{{<matomeQuote body="AWS サポートが必要だった唯一のインシデントでは、エンジニアが数時間も付き添ってくれたよ（シフト交代もあったのに）。たまたまかもしれないけど、彼らのサポートはかなりすごいと感じたな（そこで働いてた人とも話したけど、良いって言ってたよ）。" userName="literallyroy" createdAt="2025/06/21 19:39:30" color="">}}




{{<matomeQuote body="誰かが cloud から離れるたびに FUD（恐怖・不確実性・疑念）がたくさん広まるのを感じるな。sysadmin の年俸と比較したりして、”無謀”な移行だって discourage しようとするんだ。毎日サーバが燃えるとか言って、AWS や GCP の金のなる木にとどまる方がいいってね。開発者の Stockholm syndrome と学習性無力感なのかな？ちょっと努力して、筆者みたいに月額90%も節約できるって想像できないなんて。特定のユースケースでは AWS が market leader だけど、ほとんどの AWS ユーザーはサーバ数台と DB くらいしか必要ないんだよ。" userName="uncircle" createdAt="2025/06/21 18:13:18" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Prometheus, Grafana, Loki の組み合わせで AWS で得ていた可視性を再現…いや、いくつかでは超えられたって話だけど、これらの素晴らしいツールがあるのに、AWS のモニタリングスタックがどれだけ遅くて高価で UX がイケてないかによく驚くんだ。モニタリングはあっという間に AWS 経験の中で一番高くて、一番嫌な部分になったよ。" userName="martypitt" createdAt="2025/06/21 13:05:41" color="#ff33a1">}}




{{<matomeQuote body="Live Tail（tail -f でログを見るのと同じようなもの）が有料だって知った時は、大声で笑っちゃったよ。日常的にログを見るための最も当たり前の機能が無料じゃないんだぜ。CloudWatch (CW) はマジでつらいね。" userName="mystifyingpoi" createdAt="2025/06/21 13:28:30" color="">}}




{{<matomeQuote body="悪気はないんだけど、Live Tail できるほどログの量が少ないなら、AWS が相手にするような scale では運用してないってことだよ。AWS の規模であの機能を運用するのはめちゃくちゃコストがかかるから有料なんだ。君のプロジェクトじゃなくても、彼らの顧客の90%にとってはそうなんだよ。" userName="iLoveOncall" createdAt="2025/06/21 18:48:07" color="">}}




{{<matomeQuote body="ドキュメントを正しく読んでるなら、Live Tail でフィルターを指定できるんだって。だから、特定の transaction ID とかユーザーの live logs を見ることは可能のはず。これは絶対に便利だよね。でも毎秒ギガ単位の logs から探すのはコストがかかるだろうな。それでも、やっぱり何か違うって感じるんだよな。CloudWatch (CW) は既に高いし。" userName="mystifyingpoi" createdAt="2025/06/22 16:42:19" color="">}}




{{<matomeQuote body="もし AWS の顧客層を10%と90%のグループに分けるとしたら、90%のグループは AWS の無限の scale を必要としてる人たちじゃないだろうね。" userName="sksjvsla" createdAt="2025/06/22 15:55:57" color="">}}




{{<matomeQuote body="僕も同じだよ、でも Azure からだけどね。似たような stack で約90%削減できた。これは大手の cloud の戦略で、企業の ops が通常必要とするかなりシンプルなストーリーを、彼らの変なサービス抽象化の competency に依存させることで、ゆっくりと奪っているんだ。" userName="jordanbeiber" createdAt="2025/06/21 09:55:03" color="#ff5c5c">}}




{{<matomeQuote body="Azure がどうやって安くなるのか、詳しく教えてくれる？" userName="ed_mercer" createdAt="2025/06/21 10:37:38" color="">}}




{{<matomeQuote body="”僕も同じ”ってのは、Azure から Hetzner に移行したって意味だよ − もっと分かりやすくすればよかったね！いつかそれについての投稿をまとめるかも。<br>https://news.ycombinator.com/context?id=43216847" userName="jordanbeiber" createdAt="2025/06/21 10:56:16" color="">}}




{{<matomeQuote body="親コメントはAzureからHetznerに移行したって言いたかったんだと思うよ。" userName="miyuru" createdAt="2025/06/21 10:55:58" color="">}}




{{<matomeQuote body="よく言われる問題は、HetznerのIPが怪しい連中に汚染されること（これはAWS／Cloudflareからの exitで解決できるかも）と、ハードウェアが故障しやすい／アップグレードが必要ってことだよね。それについて懸念はあった？<br>あと、Loki！あの面倒なロングレンジクエリで、Loki readerがメモリ食う問題はどう処理してる？代替案とかある？" userName="Keyframe" createdAt="2025/06/21 09:43:37" color="">}}




{{<matomeQuote body="IP汚染について：<br>ユーザー向けは全部Cloudflare経由にしてるから、外部ユーザー（とbot）は直接Hetzner／OVHのIPに触れないよ。ファイアウォール（ufw ＋ Cloudflare IP allowlisting）でIPをロックして、信頼できるソースだけL4で接続できるようにしてるんだ。<br>故障／アップグレードについて：<br>Terraformでプロビジョニングしてるから、代替を立てたり容量追加するのは速くて決定的。Prometheusとnode exporterでハードウェアメトリクスを監視して、早期警告を得てるよ。今のところ（9ヶ月経つけど）ハードウェア故障はないけど、この自動化＋設計でリスクを相殺してる。アプリはほとんどデータレスだし、データベースの災害復旧は（頻繁にテスト済みで）大丈夫。<br>Lokiについて：<br>メモリ問題はこうやってる：<br>• リテンション期間とインデックスのリテンションを区別する<br>• Lokiの設定＋systemdのリソース制限で、クエリの並列処理と最大メモリ使用量をチューニングする。<br>• Promtailみたいなラベル＋structured loggingを使って、クエリがlog全体をregexするんじゃなくて、早めにフィルターできるようにする。<br>• 本当に深い履歴検索が必要な場合は、object storeアクセスツールかバックアップの単純なgrepにオフロードしてる—Lokiは運用ログ＋nearlineとして扱ってて、アーカイブ検索エンジンとしては見てないよ。" userName="sksjvsla" createdAt="2025/06/21 09:53:53" color="#ff33a1">}}




{{<matomeQuote body="詳しい回答ありがとう！なんか、自分でプラットフォーム化してるね！ハードウェアの懸念を相殺するために、metalサーバーの上でk8sをフルに使うこと考えた？" userName="Keyframe" createdAt="2025/06/21 09:59:11" color="">}}




{{<matomeQuote body="褒めてくれてありがとう。昔はAWS EKS使ってたけど、あの極端な複雑さが全然好きじゃなかったんだ。Ubuntuサーバー上でSpring Bootアプリ2つとデータベース、Redisを動かすのに、もっとシンプルなツールでワークロードを分散・スケーリングできることに気づいたよ。computeはdirt cheapだから、過剰にプロビジョニングしてぐっすり眠れてる。ライブアラートもあるし、バランスが取れてるか評価するために四半期ごとにレビュー（dashboardを見るだけ！）してるよ。EKSでのk8sは快適じゃなかったし、ヨーロッパのVPSプロバイダーでどれだけひどくなるか絶対知りたくないんだ。" userName="sksjvsla" createdAt="2025/06/21 10:33:23" color="#ff5733">}}




{{<matomeQuote body="へぇ、EKSの何がそんなに不愉快だったの？もしよかったら教えてよ。" userName="NewJazz" createdAt="2025/06/21 15:48:31" color="">}}




{{<matomeQuote body="多分、その答えは元のコメントで引用されてる”complexity”っていう言葉を中心にしてるんじゃないかな。つまり、EKS自体というよりYAGNIじゃないかってこと。<br>その議論の違う視点を探る進行中のスレッドが（たくさんあるうちの1つだけど）これだよ：https://news.ycombinator.com/item?id=44317825" userName="mdaniel" createdAt="2025/06/21 16:50:09" color="">}}




{{<matomeQuote body="Ah。彼”in the old days”って言ってたから、おそらくaddons、managed nodegroups、auto modeが登場する前のことだろうね。そりゃ地獄だったに違いない。" userName="mystifyingpoi" createdAt="2025/06/21 18:16:45" color="">}}




{{<matomeQuote body="いいね。managed node groupsで色々セットアップしてるけど、今のところそんなに悪くないみたいだよ…。でも、あれこれdoom sayingを聞いた後だから、いつか問題が起こるんじゃないかって待ち構えてるw。幸い、statefulなものは何もいらなくなったから、EBS-CSIの欠点は無視できるんだ。ingressとかnetworkingもシンプルにミニマルに保とうとしてるよ。" userName="NewJazz" createdAt="2025/06/21 18:20:01" color="">}}




{{<matomeQuote body="いいね。EBS CSI driver自体で問題があったことは一度もないんだけど、一番の問題はEBS自体の特異性だったよ。例えばmount count limitとかavailability zoneの要件とかね。こういうのはHAできないとか、汚い回避策（例えば、ボリュームを一つのAZに制限するとか）が必要なんだ。一方で、彼らのVPC CNI pluginとかingress controllerは、設定すればpretty much set and forgetって感じだよ。" userName="mystifyingpoi" createdAt="2025/06/21 19:26:19" color="#38d3d3">}}




{{<matomeQuote body="うん、基本的にはEBSのAZ限定って制限と、autoscalingの組み合わせで、ちゃんと設定しないと変な失敗モードになっちゃうんだよね。Kubernetes関連のGitHubのイシューでも議論されてるよ。詳しくはここ見てね。https://github.com/kubernetes-sigs/aws-ebs-csi-driver/issues..." userName="NewJazz" createdAt="2025/06/21 20:01:02" color="#ff5733">}}




{{<matomeQuote body="Lokiの件だけど、うちのプロジェクトも似たような問題があったんだ。いろいろ設定いじって分かったんだけど、Lokiのパフォーマンスに関する公式ブログでおすすめの設定が、helmとかデフォルトの設定になってないことが多いんだよね。設定し直して、read専用のインスタンス増やしたり、他の推奨設定を入れたら、だいぶパフォーマンスが良くなったよ。一つ覚えといて：彼らの目的は自分たちのクラウドサービスを買ってもらうことで、オープンソースを箱出しで最高にすることじゃないからね。" userName="liampulles" createdAt="2025/06/21 13:48:50" color="#45d325">}}




{{<matomeQuote body="Lokiの良い代替はVictoriaMetricsだよ。人気があって、ずっと高性能で評判もいいんだけど、うちはメンテナーの規模と多様性でLokiにしたんだ。君の指摘は本当にその通りで、上で話したみたいに工夫して乗り越えたんだよ。" userName="sksjvsla" createdAt="2025/06/21 09:56:33" color="#45d325">}}




{{<matomeQuote body="Quickwitもチェックする価値あるね。ログコレクターのVectorとセットで使うといいよ。VectorはY Combinatorの会社だったと思うけど、Datadogに買収された後も、どっちもまだ活発にオープンソースとしてメンテされてるよ。" userName="chuckadams" createdAt="2025/06/21 13:45:15" color="#38d3d3">}}




{{<matomeQuote body="Sybil攻撃について見てね: https://en.wikipedia.org/wiki/Sybil_attack<br>高いプロバイダーの利点の一つは、事実上のPoW（Proof of Work）みたいな仕組みで評判が良いことみたいだね。" userName="TZubiri" createdAt="2025/06/21 09:57:46" color="">}}




{{<matomeQuote body="ユースケースによるよね？私はランダムなHetznerのIPからの通信は受け付けないようにしてるんだ。CloudflareのIPだけ許可してる。唯一あり得る間接的なリスクは、HetznerのVPSのIP帯域が悪用（Sybil攻撃やスパム）されてブラックリスト入りすることかな。あとはHetznerのインフラがひどく悪用された場合、理論上は回線混雑とかIP評判の問題が起きる可能性もあるけど、個別のVPSのパフォーマンスに影響する可能性は極めて低いよ。これはHetznerで何やってるかとか、どうアクセス制限してるかによるけど、ISO 27001認証取ってるエンタープライズアプリなら、まず心配ないと思うな。" userName="sksjvsla" createdAt="2025/06/21 10:16:48" color="#ff5c5c">}}




{{<matomeQuote body="私もクラウド移行に関わってるからこの話題好きなんだけど、Mediumの記事は、この“Shown HN”の投稿より情報少ないね。Mediumの記事はほとんど中身がないフワフワした感じで、リード集めが主な目的なんだな。" userName="louwrentius" createdAt="2025/06/21 10:44:03" color="">}}




{{<matomeQuote body="Mediumの記事は、技術者じゃない意思決定者も含む幅広い読者向けの、大まかなケーススタディなんだ。詳細を薄めにしたのは、読者を圧倒しないためと、本当の“中身”（Ansible／TerraformのパターンとかPrometheusの設定とか）は、あの形式だと技術付録みたいになっちゃって伝えにくいからだよ。もしみんなが知りたければ、特定のConfigとか図とか、学んだことをこのHNスレッドで喜んでシェアするよ。実際、こういう深い話には、このスレッドの方がずっと良いフォーラムだと感じてるんだ。他の面についても、他の場所で深掘りするつもりだよ。ここでシェアしてることを見れば、それは疑いようがないでしょ。何か特に詳しく話してほしい分野ある？（例えば、Terraformモジュールの構成とか、Ansibleの hardening、Prometheusの alerting、Lokiの tuningとか？）" userName="sksjvsla" createdAt="2025/06/21 10:49:00" color="">}}




{{<matomeQuote body="ISOとTerraform／Ansibleをどう紐付けてるか、もっと詳しく知りたいな。" userName="clcaev" createdAt="2025/06/21 12:33:09" color="">}}




{{<matomeQuote body="はいどうぞ。もっと必要ならjk@datapult.dkにメールしてね。ISO 27001の管理策がAnsibleやTerraform、Prometheus、Loki、OVH S3みたいな技術でどう実現されてるか、具体的にリストにしたよ。これはすごい情報だよ！<br>A.5.25 Security in development and support processes: Safe rolling deploy、rollback mechanisms、NGINX health checks、code versioning、Prometheus alerting for deployment issues<br>A.6.1.2 Segregation of duties: Separate roles for database、monitoring、web apps；distinct system users<br>A.8.1.1 Inventory of assets: Inventory management through Ansible inventory.ini and groups<br>A.8.2.3 Handling of assets: Backup management with OVH S3 storage；retention policy for backups<br>A.8.16 Monitoring activities （audit logging、monitoring）: auditd installed with specific rule sets；Prometheus + Grafana Agent + Loki for system／application／audit log monitoring<br>A.9.2.1 User registration and de-registration: ansible_user、restricted SSH access （no root login、pubkey auth）、AllowUsers、DenyUsers enforced<br>A.9.2.3 Management of privileged access rights: Controlled sudo、audit rules track use of sudo／su；no direct root access<br>A.9.4.2 Secure log-on procedures: SSH hardening （no password login、no root、key-based access）<br>A.9.4.3 Password management system: Uses Ansible Vault and variables；<br>A.10.1.1 Cryptographic controls policy: SSL／TLS certificate generation with Cloudflare DNS-01 challenge、enforced TLS on Loki、Prometheus<br>A.12.1.1 Security requirements analysis and specification: Tasks assert required variables and configurations before proceeding<br>A.12.4.1 Event logging: auditd、Prometheus metrics、Grafana Agent shipping logs to Loki<br>A.12.4.2 Protection of log information: Logs shipped securely via TLS to Loki、audit logs with controlled permissions<br>A.12.4.3 Administrator and operator logs: auditd rules monitor privileged command usage、config changes、login records<br>A.12.4.4 Clock synchronization: chrony installed and enforced on all hosts<br>A.12.6.1 Technical vulnerability management: Lynis、Wazuh、vulnerability scans for Prometheus metrics<br>A.13.1.1 Network controls: UFW with strict defaults、Cloudflare whitelisting、inter-server TCP port controls<br>A.13.1.2 Security of network services: SSH hardening、NGINX SSL、Prometheus／Alertmanager access control<br>A.13.2.1 Information transfer policies and procedures: Secure database backups to OVH S3 （HTTPS／S3 API）<br>A.14.2.1 Secure development policy: Playbooks enforce strict hardening as part of deploy processes<br>A.15.1.1 Information security policy for supplier relationships: OVH S3、Cloudflare services usage with access key／secret controls；external endpoint defined<br>A.16.1.4 Assessment of and decision on information security events: Prometheus alert rules （e.g.、high CPU、low disk、instance down、SSL expiry、failed backups）<br>A.16.1.5 Response to information security incidents: Alertmanager routes critical／security alerts to email／webhook；plans for security incident log webhook<br>A.17.1.2 Implementing information security continuity: Automated DB backups、Prometheus backup job monitoring、retention enforcement<br>A.18.1.3 Protection of records: Loki retention policy、S3 bucket storage with rotation；audit logs secured on disk" userName="sksjvsla" createdAt="2025/06/21 13:57:45" color="#45d325">}}




{{<matomeQuote body="そういえば、SSHはさ、公開されてるサーバもパブリックには公開されてないか、あるいはBastion server経由でしかアクセスできないようにロックダウンしてるんだよね？それか、内部ネットワークかVPN/tailscaleとか経由でしかアクセスできないようになってるのかな？" userName="indigodaddy" createdAt="2025/06/21 18:14:46" color="#785bff">}}




{{<matomeQuote body="うん、SSHポートはパブリックには公開してないよ。" userName="sksjvsla" createdAt="2025/06/21 19:06:54" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ISO 27001について気になる人のために説明するとね、これは国際的なセキュリティ管理の標準で、ヨーロッパで人気があるんだ。でも、アメリカではあまり重要視されてないし、企業も興味ないみたい。ヨーロッパの会社はそれが分かってないこともあるんだよね。アメリカではSOC 2が標準で選ばれてるよ。これは国内向けで、ISO 27001より厳格じゃないんだ。" userName="sgt" createdAt="2025/06/21 12:08:47" color="#38d3d3">}}




{{<matomeQuote body="ISO 27001はそんなに厳格とは言えないな。ほとんどのことはソフトウェアを使ってるなら普通にやるべきことだよ。それができてるっていう証拠をチェックされるのが厳格なんだと思う。SOC 2は、証明としての文書化はそこまで必要ないけどね。" userName="ozim" createdAt="2025/06/21 12:50:01" color="#785bff">}}




{{<matomeQuote body="まあ、それはISMSの実装方法によるよね。理想的には27002の管理策ガイダンスに従うのがいいよ。あれはよく考えられてるから。" userName="sgt" createdAt="2025/06/21 13:19:28" color="#785bff">}}




{{<matomeQuote body="両方経験した者としては、”厳格”なISO 27001の方がずっと好きだな。SOC 2の監査は、監査員との相性とか監査員の能力に左右される気がするんだ。監査される内容も broad（広範）で解釈の余地が多いし、監査員によるコントロールの説明も簡単に捻じ曲げられかねないよ。" userName="candiddevmike" createdAt="2025/06/21 13:49:41" color="#45d325">}}




{{<matomeQuote body="ISO 27001に準拠してないアメリカの大手クラウドプロバイダーかそれに類するものを一つ挙げてみてよ。" userName="AtNightWeCode" createdAt="2025/06/21 20:36:32" color="">}}




{{<matomeQuote body="クラウドプロバイダーが準拠してても、その上で動かすあなたのアプリが準拠してるかは別だよ。ほとんどのアプリは、ISO監査に通るように設計されてないと合格しないだろうね。" userName="sksjvsla" createdAt="2025/06/22 03:40:42" color="#45d325">}}




{{<matomeQuote body="90%削減は驚かないよ。最初AWSは自前ハードとかコロケーション、VPS/VDSより”安い”って宣伝されてたのを覚えてるな。前に100人くらいの小さい会社で働いてて、全部AWSでホストしてたんだ。だけど請求額が高すぎる（アジアにある小さい会社だったからね）とか他の問題があって、全部DigitalOceanに移行したんだ。そしたらホスティングの月額が10分の1くらいになったよ。他の影響もなしにね（つまり、信頼性が落ちたりはしなかった）。AWSが他より安いって計算した人、いったい誰だったんだろうって今でも思うよ。AWSは間違いなく一番高いプロバイダーの一つだね。" userName="anticodon" createdAt="2025/06/21 11:43:11" color="#ff5c5c">}}




{{<matomeQuote body="面白いね。VMとかストレージみたいなコモディティサービスで同じように比べると、DigitalOceanはAWSより高く見えたんだけど。主に何でそんなに節約できたか覚えてる？" userName="jjani" createdAt="2025/06/21 11:59:35" color="#ff5c5c">}}




{{<matomeQuote body="AWS RDSのストレージがすぐ一杯になって困ったんだけど、Amazonにいくら払ってるか調べても、テーブルの合計サイズよりずっと大きくて無駄なスペースがどこにあるか全然分からなかったんだよね。<br>Digital Oceanの小さいプランでMariaDBを立てたら、その謎のストレージ増加は無くなったし、一番安いプランで何年も十分だったよ。<br>あと、Amazonには7〜10個の忘れられた“テスト”サーバーとか他のリソース（バケットとかドメインとか）も結構あったな。これは大企業だとよくあることだと思う。" userName="anticodon" createdAt="2025/06/22 11:00:11" color="#ff5733">}}




{{<matomeQuote body="AWSが最初に『安い』って言ってたのは、自社でハードウェア買ってメンテするのと比べての話だったんじゃない？記憶が定かじゃないけど。" userName="peer2pay" createdAt="2025/06/21 12:19:27" color="">}}




{{<matomeQuote body="AWSは特定の好条件（AWSにとって有利な条件）、主にハードウェアのメンテにかかる従業員が少なくて済む、っていう前提だと安くなるんだよ。" userName="RainyDayTmrw" createdAt="2025/06/21 17:21:52" color="">}}




{{<matomeQuote body="個人的には、Apple製品のコストパフォーマンスが語られるのとすごく似てると思うんだ。<br>例えば5K iMacが出た時、あれは高価値だって言う人がたくさんいた。だって5Kディスプレイ買ってPC組むより安上がりだって。だから、同じもの同士で比べたらAppleが安かった。<br>でも、それはそもそも5Kディスプレイが必要かって話でしょ。当時は法外に高くて珍しかったし。4Kで十分ってなると、もうコストメリットは無くなって、全然比較にならないんだ。" userName="const_cast" createdAt="2025/06/22 00:19:41" color="#38d3d3">}}




{{<matomeQuote body="デンマーク（この会社はデンマークの会社）の開発者一人雇うのに、会社は簡単に年間10万ドルくらいかかるんだよ。<br>ハードウェア代の2.4万ドルの90＼%を節約できたとしても、給料には多分倍の額を費やすことになる。<br>だから、もし同じソフト（実際は全然同じじゃないけど）でAWSの方がコストがかかるとしても、最終的にはAWSの方が安上がりってことになるんだ。" userName="iLoveOncall" createdAt="2025/06/21 18:54:15" color="#ff5733">}}




{{<matomeQuote body="Amazon以外のどこかでVPS/VDS借りたら、24時間体制で面倒見る人を別に雇わなきゃいけないみたいに聞こえるけど、それは違うよ。" userName="anticodon" createdAt="2025/06/22 11:11:24" color="">}}




{{<matomeQuote body="まあそれはそうなんだけどね。<br>でももしVPSに以下を入れるとしたら:<br>＞ • Ansible roles for PostgreSQL (with automated s3cmd backups + Prometheus metrics)<br>＞ • Hardening tasks (auditd rules, ufw, SSH lockdown, chrony for clock sync)<br>＞ • Rolling web app deploys with rollback + Cloudflare draining<br>＞ • Full monitoring with Prometheus, Alertmanager, Grafana Agent, Loki, and exporters<br>＞ • TLS automation via Certbot in Docker + Ansible<br>最初にセットアップするのにものすごく時間がかかるし、最新の状態に保ったり、メンテナンスしたり、避けられない問題が発生した時に修正したりするのにもたくさん時間がかかるよ。<br>もし請求額が年間20万ドルならやる価値あるかもだけど、年間2.4万ドルで、従業員一人の給料の25＼%程度の金額なら、無視できるレベルだし、ほとんどの場合悪い選択だと思う。" userName="iLoveOncall" createdAt="2025/06/22 12:20:52" color="#38d3d3">}}




{{<matomeQuote body="これらのタスクの一部は、Amazon Cloudでサービスを動かす時も必要になることだよ。全部が無料なわけじゃないし、デフォルトでやってくれるわけでもない。<br>Amazon Cloudでも、これらのことの多くを設定するにはAmazon Servicesに詳しい人が必要になる。<br>それに、記事で挙げてるものが全てすぐに必要ってわけでもないでしょ。<br>NTPでの時計同期なんて、もう20年以上前からどのLinuxディストリビューションにも含まれてる機能だし。<br>Amazonが自動的にSSHをロックダウンしてくれた記憶はないな（7～8年AWS触ってないから、8年前のそんな機能は覚えてないけど）。<br>ローリングウェブアプリデプロイとロールバックは、アプリによるけど、いろんな方法で実装できて、場合によってはかなり簡単だよ。それに、それもAmazonが無料でやってくれることじゃなくて、どこにデプロイするにしても開発側である程度の努力は必要だよ。開発の手間なしに自動ロールバックを無料で完璧にやってくれる魔法の弾丸なんて無い。" userName="anticodon" createdAt="2025/06/22 12:49:37" color="#45d325">}}




{{<matomeQuote body="まさにその通り。よく言った。<br>このプロセスで学んだのは、ロールバックとかSSHのロックダウンとか、色々な抽象化レベルで考えられるってことだ。<br>もし抽象化レベルがAWSとか巨大なハイパースケーラーなら、Kubernetesを使うことになるだろうけど、その複雑さのレイヤーを剥がしていくと、Docker Composeとか、何十年も本当に戦場で試されてきたLinuxプログラムでもできるんだ。<br>ほとんどのISO認証企業はハイパースケールじゃないから、こんな面白い例がある：2020年のGrafana Agentの代わりに、2004年のrsyslogの方がおそらく上手くいくんじゃないか。<br>そして、EKSクラスターからインサイトを得たいなら、自分でCloudWatchを設定しなきゃいけない。Ubuntu+Grafana Agentのセットアップと比べて、どこが手離れが良いっていうんだ？" userName="sksjvsla" createdAt="2025/06/22 16:28:53" color="#38d3d3">}}




{{<matomeQuote body="みんなクラウドコストと人件費を比較し続けるけど、それは違う指標だと思うんだ。見るべき本当の比率は、クラウド支出と、それでどれだけ収益を増やせるかだよ。<br>俺にとって、AWSから欧州のプロバイダに切り替えたのは、単にクラウド料金を節約するためだけじゃなかった（それは嬉しいボーナスだったけど）。リスクを減らして、収益を上げられるようにするためだったんだ。欧州でアメリカのハイパースケーラーに頼るのは、リスクが高すぎる—Safe Harborが更新されなかったらどうなる？あるいはSchrems III（かその次に来るもの）が最終的に規制当局に措置を取らせたら？<br>コンプライアンスを維持できて収益を守れることの方が、どっちのクラウドがちょっと安いかで言い争うよりはるかに価値がある。" userName="sksjvsla" createdAt="2025/06/22 12:44:32" color="#ff33a1">}}




{{<matomeQuote body="5〜10年後とか予測すんのムズいし、今のビジネス要件で十分だよ。Stack Overflowの例みたいに、今うまくいってるからって将来ダメになるとは限らないしね。クライアントからの要求も変わんないと思うし。<br>[1] https://x.com/sahnlam/status/1629713954225405952<br>[2] https://blog.pragmaticengineer.com/stack-overflow-is-almost-..." userName="sksjvsla" createdAt="2025/06/22 16:37:32" color="">}}




{{<matomeQuote body="俺が言ってたのはそういう事じゃなくて、今の設定で起こりうる問題、例えば災害復旧とかモニタリングのことだよ。" userName="iLoveOncall" createdAt="2025/06/22 16:43:53" color="">}}




{{<matomeQuote body="災害復旧とかモニタリング？ISO 27001で監査されてるから大丈夫だよ。ハイパースケーラーではこれらは自分でやる必要あるし、他のクラウドでTerraformとかAnsible使うのと難易度変わんないよ。AWSもEUも監査されたけど同じ。でもEUだとCLOUD actとかGDPRについてクライアントにちゃんと説明できるのが強みかな。" userName="sksjvsla" createdAt="2025/06/22 16:50:54" color="#45d325">}}




{{<matomeQuote body="年間24000ドルが90%削減で月200ドル？EPYCサーバー1台分じゃん。分散システム要る？秒間リクエストとかユーザー数教えてくんない？" userName="yread" createdAt="2025/06/21 13:46:53" color="">}}




{{<matomeQuote body="ISO 27001だとシングルサーバー無理だし、ロギングとモニタリングは別サーバー必須なんだ。負荷じゃなくて認証のために複雑さは必要。<br>DAUは1〜2万、ピーク同時接続1500〜2000くらいかな。平均は50〜150。リアルタイム機能とか複雑な計算（シフト、ボーナス、スケジューリング最適化）でコストかかるんだよね。" userName="sksjvsla" createdAt="2025/06/21 14:20:25" color="#785bff">}}




{{<matomeQuote body="なるほど分かった。Hetznerで小さめのサーバー複数とVPS、オブジェクトストレージって感じか。ロギングとモニタリングの実装についてもっと聞きたいな。俺のアプリはもっと負荷高くて、AWSの無料クレジットすぐ終わったからHetznerに行ったんだ。" userName="yread" createdAt="2025/06/21 15:22:17" color="">}}




{{<matomeQuote body="ロギングとモニタリングについてはこのHNのコメント見てみてよ。<br>https://news.ycombinator.com/item?id=44335920#44337659<br>もっと聞きたいことあればjk@datapult.dkに連絡してね。興味深いユースケースだね。" userName="sksjvsla" createdAt="2025/06/21 17:40:08" color="#ff5733">}}




{{<matomeQuote body="ISOの最大の HULDLE は人がいないことだね。一人で全部やるのは責任分離難しいし。" userName="yread" createdAt="2025/06/21 20:06:00" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
