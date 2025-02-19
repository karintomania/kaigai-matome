+++
date = '2025-02-11T00:00:00'
draft = false
title = 'Metaの超大規模インフラを徹底解説！裏側で何が行われているのか？'
tags = ["Meta", "インフラ", "テクノロジー", "データセンター", "クラウド", "スケーラビリティ", "システム設計", "エンジニアリング", "ビッグデータ", "AI"]
featureimage = 'thumbnails/orange_pink1.jpg'
+++

> Metaの超大規模インフラを徹底解説！裏側で何が行われているのか？

引用元：[https://news.ycombinator.com/item?id=43008920](https://news.ycombinator.com/item?id=43008920)

{{<matomeQuote body="Threadsの開発後、インフラチームはたったの二日で本番ローンチの準備をしなきゃいけなかったって話。大企業なら二日でプロジェクト計画すら大変だけど、Metaはすぐに戦略部屋を作ってインフラとプロダクトチームを集めてリアルタイムで問題解決したんだ。結果、たった五日で1億人のユーザーを達成して、史上最速のアプリになったよ。すごいのは、こんなに短期間でスピード重視で出せる体制を維持してるところだね。" userName="vasco" createdAt="2025-02-11T07:12:30" color="#785bff">}}

{{<matomeQuote body="デプロイのスピードを保つ秘訣は、大事なものが何もないことなんじゃないかな。Facebookはちょっとしたポストや写真ぐらいなら問題ないし、誰も文句言わないよ。でも、トランザクションデータを扱うようになると、マネージャーは不安がって、弁護士も絡んでくる。Metaのものは広告主が金出してるけど、彼らの部分はちゃんと扱ってるだろうな。" userName="speed_spread" createdAt="2025-02-11T12:31:45" color="">}}

{{<matomeQuote body="早くローンチしたけど、正直言って誰も関心持ってないんじゃない？形式だけで機能が伴ってないって感じ。" userName="Simon_O_Rourke" createdAt="2025-02-11T08:16:31" color="">}}

{{<matomeQuote body="Threadsは月間3億2000万人、日間1億人のアクティブユーザーがいるから、決して失敗ではないぜ。Xと同じぐらい大きいし、地域差が大きいから、Metaの製品には偏見がある。友達が10年前にFacebookを辞めたからって、世界中がそうなってるって考えるのは早計だよ。" userName="pavlov" createdAt="2025-02-11T15:11:44" color="#45d325">}}

{{<matomeQuote body="ユーザー数は多いけど、有益なコンテンツが生まれてないから失敗に見えるんだよね。Threadsからは特に面白い投稿を見たことがない。" userName="stravant" createdAt="2025-02-11T15:41:05" color="">}}

{{<matomeQuote body="その製品を使ってるサークルにいないと、どうやって知るんだ？日本では大きいかもしれないし。" userName="esafak" createdAt="2025-02-11T16:43:03" color="">}}

{{<matomeQuote body="そちらの意見は、TwitterやBlueskyのリンクがhackernewsやRedditにシェアされるのはわかるけど、Threadsは全然ないってことでしょ。" userName="anon7000" createdAt="2025-02-12T02:02:03" color="">}}

{{<matomeQuote body="エロン・マスクの娘のVivianがThreadsで活発に活動してるらしいね。彼女は20歳で、父親は世界一の金持ちで、彼女のことを「存在しない」と公言してる。まるでドラマみたいで、二流のソーシャルメディアサービスにぴったりな話だね。" userName="pavlov" createdAt="2025-02-11T15:52:14" color="">}}

{{<matomeQuote body="その数字、正直信じられないよ。Instagramとの統合で大量に数字を押し上げてるし、プロファイル作成やフォローをInstagramのネットワークベースで暗雲を使ってるからね。確かに多くの人がThreadsを使ってるけど、まだ一流のソーシャルネットワークとは言えないよ。" userName="eitally" createdAt="2025-02-11T17:32:21" color="">}}

{{<matomeQuote body="使用例が超限られてる気がする。Threadsのリンクはほんとに一回しか見たことないし、人気がなさすぎじゃね？" userName="nitwit005" createdAt="2025-02-11T20:30:46" color="">}}

{{<matomeQuote body="正直、Xはもう一流のSNSじゃないよね。ThreadsやPinterestみたいな二流と同じ土俵で戦ってる。シリコンバレーのVCやメディア層には大事だけど、世界的にはシェアが単桁じゃさすがに影響力薄い。" userName="pavlov" createdAt="2025-02-11T18:55:49" color="">}}

{{<matomeQuote body="Twitterは記者や重要人物が集うソーシャルネットワークだった。" userName="wbl" createdAt="2025-02-11T20:41:39" color="">}}

{{<matomeQuote body="Threadsの月間アクティブユーザーは3億2千万人、日間アクティブは1億。Metaが広告主にこう言ってるだけだけど、Zuckは数字を誇張することで有名だからな。" userName="specialist" createdAt="2025-02-11T18:05:51" color="">}}

{{<matomeQuote body="SNSアプリの本質は形だけで機能がないことだから、そこはうまくいってる。300 millionの月間ユーザーはむしろ悪くないし、”誰も気にしてない”とは言えないよ。Twitterと同じくらいのMAUだし。" userName="WJW" createdAt="2025-02-11T11:09:20" color="">}}

{{<matomeQuote body="その成功は正直、製品の良さよりもTwitterからの大量流出やMetaの他のプロパティによるマーケティングのおかげだと思う。Threadsが悪いとは言わないけど、SNSはプラットフォームの良さよりユーザーのネットワークの影響が大きい。" userName="throwaway894345" createdAt="2025-02-11T15:06:06" color="#785bff">}}

{{<matomeQuote body="ユーザーが広告主のためにじゅうたん爆撃されてるだけで、実際の顧客は広告主なんだよね。この話では、電飾看板の設置スピードが速いことを自慢しても、本当は誰かが電源やネットワークを整えたあとなんだから。" userName="titzer" createdAt="2025-02-11T12:30:58" color="">}}

{{<matomeQuote body="十倍速く新しい看板を張れるのは競争優位にはなる。Metaの賛否は別として、日間1億のユーザーのために2日間でインフラ整えたのは技術的な成果だと思う。" userName="WJW" createdAt="2025-02-11T12:44:06" color="">}}

{{<matomeQuote body="既存のネットワークはそう簡単には負けない。ユーザーの流出の噂でチャンスを見てうまく手を打ったけど、Threadsはその後の流出が実現できなかった時点で失敗だった。重要な人たちのネットワークがないと役立たないからね。" userName="2c2c2c" createdAt="2025-02-11T08:35:15" color="">}}

{{<matomeQuote body="Threadsは新しいアプリというより、Facebookの新機能って感じだよね。Instagramのプロフィールに紐づいてるし。１００万人達成したのが５日間でというのも、メタに数十億人いるし、ちょっと印象が薄いね。" userName="Retr0id" createdAt="2025-02-11T09:24:22" color="">}}

{{<matomeQuote body="FBやInstaの中でのThreadsのオンボーディングが簡単だったから、新機能のように見えたよ。" userName="datadrivenangel" createdAt="2025-02-11T14:10:12" color="">}}

{{<matomeQuote body="ここ数年の効率の話の中で、こんなに賢い人たちの努力とエネルギーが無駄だったってこと、どう測るの？努力やストレスは空回りだったか、むしろマイナス効果だよ。" userName="hansmayer" createdAt="2025-02-11T08:41:15" color="">}}

{{<matomeQuote body="このコメントは謎だね。Threadsは報告によれば月間アクティブユーザーが1億3千万いるし、成長中だよ。それに比べてXのユーザーは減ってる。これだけで、Threadsは世界のトップソーシャルメディアの一つだよ。2026年の収益予測も100億ドルを超えるし、何を言ってるの？" userName="motorest" createdAt="2025-02-11T11:38:58" color="#ff5733">}}

{{<matomeQuote body="下に書いたことを見てください。この話はDAUやMAUにフォーカスしすぎという視点から書いたんです。" userName="hansmayer" createdAt="2025-02-11T12:03:03" color="">}}

{{<matomeQuote body="データであなたの主張を反論されたら、目標を動かして“ホリスティック”な見方を訴えるの？" userName="gosub100" createdAt="2025-02-11T13:02:53" color="">}}

{{<matomeQuote body="元々、収益を基に議論してたわけではないよ。この議論には別の人への返事として書いたけど、収益だけで成功の指標を測るなら、MetaのCFOがThreadsを2025年の収益の原動力とは見ていないと言ったら、そこを否定するのも難しいよね。まぁ、あなたたちには何か内緒の情報でもあるのかな？" userName="hansmayer" createdAt="2025-02-11T15:07:30" color="">}}

{{<matomeQuote body="もしこの投稿について話しているなら、長々と書いた割には何も反論してないよ。唯一具体的な主張は“特に収益化に関しては、今のところThreadsが2025年の収益ドライバーになるとは考えていない”ってことだけど、Metaは収益が約400億ドルで、Threadsは昨年基本的に立ち上げたばかりだから、あなたが言ってるような失敗とは程遠いよ。もし言いたいことがあるなら、恨みを晴らすような意見に走らずに、もっと具体的に書けばいいのに。" userName="motorest" createdAt="2025-02-11T12:46:26" color="">}}

{{<matomeQuote body="ああ、俺は確かに恨みを持って話してる側だね。じゃあ、次の数四半期に利益が出ないと思われてる製品が、株主にどんな利益をもたらしているのか証明してみてよ。それに、最近のMetaの“言論の自由”方針がどれくらいポジティブな貢献をしているのかも語るといい。" userName="hansmayer" createdAt="2025-02-11T14:58:33" color="">}}

{{<matomeQuote body="WhatsAppのビジネスの重要性を教えてよ。WhatsAppは15年間で正直言って収益をほぼゼロだけど、グローバルで完全に支配的だし。" userName="kridsdale1" createdAt="2025-02-11T16:56:22" color="">}}

{{<matomeQuote body="全体的な価値の議論がDAUやMAU、あるいは未証明の”完全な世界的支配”みたいな単一のKPIに基づいてるのが問題。支配それ自体に注目するあまり、価値を見失ってるんじゃない？過去20世紀の米国におけるAT&Tのような通信サービスの独占も学んでほしい。利益を出していたAT&Tと違って、今のビジネスモデルは永遠に赤字のコストセンターを許してる。市場は勝者を育て、敗者を排除すべきなのに、AirBnBやUberの運営は共産主義の計画経済っぽく見える。" userName="hansmayer" createdAt="2025-02-11T18:15:07" color="#ff33a1">}}

{{<matomeQuote body="それがネットに悪影響だって？何億ものアクティブユーザーがいるんだから、Instagramから独立させたとしても数十億ドルの価値はあると思うけど。" userName="wordpad25" createdAt="2025-02-11T08:50:44" color="">}}

{{<matomeQuote body="DAUは単一的で誤解を招くKPIだよ。それがVCバックの赤字企業を増やし続けた原因。UberやAirBnBも多くのアクティブユーザーがいるけど、社会に与える影響を考えれば、彼らもネットに負の影響を及ぼしてると言える。Threadsもコストを回収できていないし、MetaのCFO曰く2025年には訴求する収益は期待できないとか。社会に与えるポジティブな影響も見当たらないね。" userName="hansmayer" createdAt="2025-02-11T09:36:56" color="">}}

{{<matomeQuote body="社会にどんなポジティブな影響があるか教えてほしいって言うけど、世界とコミュニケーションできるTwitterの代替版があるのは結構いいよね。でも、運営が過激な思想の持ち主じゃないのも大事だと思う。" userName="ImPostingOnHN" createdAt="2025-02-11T14:29:30" color="">}}

{{<matomeQuote body="でも、Threadsじゃないよね。" userName="thowawatp302" createdAt="2025-02-11T14:44:21" color="">}}

{{<matomeQuote body="何が？それがThreadsじゃないのか？" userName="ImPostingOnHN" createdAt="2025-02-11T14:49:38" color="">}}

{{<matomeQuote body="多くの賢い人たちがMetaのプロダクトで働いているなら、これが本当に彼らにとって重要なプロダクトなのか、ただ給料のために働いている普通の人たちなのか、どっちなの？" userName="geodel" createdAt="2025-02-11T14:50:44" color="">}}

{{<matomeQuote body="Threadsは奇妙だ。Twitterのメディア露出度の高さがあったけど、今はそれが失われつつある。特にサイトがログインしていないユーザーを閉ざしたことも影響してるけど、他のサイトでの引用やスクリーンショットを見かけることは少ない。もはやviralなThreadsの投稿なんて見たことがない。Google+の新型になりつつあるのか？" userName="pjc50" createdAt="2025-02-11T11:42:00" color="">}}

{{<matomeQuote body="Threadsは知的で興味深い人たちもいるけど、短いテキスト制限と対立を煽るような文化で閉じ込められている感じがする。BlueSkyはもっと成熟した雰囲気がある。Threadsはドラマ大好きな平均的な人が多すぎるし、自己プロモーションには向いてないから滑稽な意見が多い。資金提供が厳しくなったら、もっと人が去ると思う。" userName="TheOtherHobbes" createdAt="2025-02-11T13:12:18" color="">}}

{{<matomeQuote body="最も不思議だったのは、Instagramユーザーに自動でThreadsアカウントを作らなかった決定だね。Metaの内部で何らかの指標があるだろうから、Thresholdを超えたアカウントには即座にアクセスできるようにするのが簡単だったはず。でも、アカウントを作らなきゃThreadsは見れない。" userName="Workaccount2" createdAt="2025-02-11T15:11:45" color="">}}

{{<matomeQuote body="エンジニア主導の企業ってこうなるのかな？他の場所だと製品を出す前にもっと焦点をあてるけど、Metaの速さはすごいね" userName="monkeydust" createdAt="2025-02-11T12:00:37" color="">}}

{{<matomeQuote body="働くには最悪な場所に思える。プレッシャーがすごそう" userName="pinoy420" createdAt="2025-02-11T08:51:43" color="">}}

{{<matomeQuote body="必要なことをやらせてくれる環境の方が好き。前の仕事は計画に時間かけるばかりだったから、各チームに頼んで回るのが苦痛だった" userName="eloisius" createdAt="2025-02-11T10:50:47" color="">}}

{{<matomeQuote body="特注のスライドデッキ作成が今のモチベーションを下げてる" userName="average_r_user" createdAt="2025-02-11T11:17:51" color="">}}

{{<matomeQuote body="それは嫌だったね、気の毒に思うよ" userName="KronisLV" createdAt="2025-02-11T11:55:32" color="">}}

{{<matomeQuote body="昨日、組織図や略語がいっぱいの会議に参加したけど、そういうのよりも高圧の仕事の方が楽だな" userName="huijzer" createdAt="2025-02-11T09:56:46" color="">}}

{{<matomeQuote body="Metaにもそういう会議あるよ。再編成が年に何回もあるから、リーダーが新しい構造を宣伝するんだ。運動と進歩を混同するなっていうポスターがあったらいいのに" userName="philjohn" createdAt="2025-02-11T13:15:59" color="">}}

{{<matomeQuote body="アドレナリン中毒になるよ。本当にいい人たちと一緒なら、そのプレッシャーが逆に楽しいこともある" userName="chasd00" createdAt="2025-02-11T12:46:27" color="#38d3d3">}}

{{<matomeQuote body="失礼に思わないでほしいけど、18～30歳の間？" userName="pinoy420" createdAt="2025-02-11T20:32:43" color="">}}

{{<matomeQuote body="この規模で働く楽しさは多くの人にとってそれを補ってると思う。低ストレスの会社もたくさんあるからね" userName="falconertc" createdAt="2025-02-11T09:00:37" color="">}}

{{<matomeQuote body="これは誰にでも合うわけじゃないけど、違う見方もあるよね。毎日スレッドのような新作を出してるわけじゃないし、こういうプロジェクトは面白かったと思う。" userName="infecto" createdAt="2025-02-11T13:01:44" color="">}}

{{<matomeQuote body="両方経験したけど、官僚主義でのフラストレーションは、週末に働く楽しさよりずっとひどかったよ。早く動く場所ではやる気が出る人が多いんだ。" userName="vasco" createdAt="2025-02-11T10:04:33" color="#ff5733">}}

{{<matomeQuote body="報酬はやばいだろうね。" userName="spacebanana7" createdAt="2025-02-11T10:03:32" color="">}}

{{<matomeQuote body="毎日このプレッシャーは嫌だけど、こういう一週間のスプリントは楽しそうではある。突然のプレッシャーはやばいけど、楽しいハック週もあるしね。ただ、家族がいたらこうは行かないかも。" userName="jjice" createdAt="2025-02-11T15:11:22" color="">}}

{{<matomeQuote body="これらのチームとインフラはすでにあったから、Metaにとって100Mは大した額じゃないよ。" userName="javier2" createdAt="2025-02-11T10:35:15" color="">}}

{{<matomeQuote body="Threadsの100M達成を持ち上げた時にそう思った。Instagramとつながってるなら、ThreadsにいるユーザーがInstagramを使ってないなら、基本的には変わらないのでは？" userName="thrusong" createdAt="2025-02-11T16:40:54" color="">}}

{{<matomeQuote body="Metaではここ数年、突然の失職の脅威があったから驚かない。恐怖は一時的にやる気を引き出すもんだ。" userName="NBJack" createdAt="2025-02-11T13:37:56" color="">}}

{{<matomeQuote body="私もそう思ったけど、Threadsは大失敗だったよ。本当にダメアプリをすぐにリリースすることってスキルなの？答えは分からないけど、官僚主義を回避するのが楽でも、プロダクトチームを無視した結果のようにも感じる。" userName="silisili" createdAt="2025-02-11T07:28:25" color="">}}

{{<matomeQuote body="あの規模で迅速に立ち上げるのは確かにスキル。官僚的による手間で出てきた駄作もいっぱいあるしね。Metaは嫌いだけど、彼らのインフラとエンジニアは凄いと思う。" userName="chikere232" createdAt="2025-02-11T09:11:23" color="">}}

{{<matomeQuote body="Threadsはプロダクトの観点から何が欠けているの？" userName="cmdtab" createdAt="2025-02-11T07:29:58" color="">}}

{{<matomeQuote body="結局のところ、唯一の差別化ポイントは’インスタグラムの友達を自動でインポート’ってところだけど、実際にはそれもうまく機能してないっぽい。fediverseとの統合も上手くいってないし、メッセージ1つに1つのスレッドっていう方式もあんまり意味がない気がする。" userName="captainbland" createdAt="2025-02-11T08:49:02" color="">}}

{{<matomeQuote body="ソーシャルネットワークの’プロダクト’はコミュニティや文化だと思うけど、Threadsについては全くイメージが湧かないな。FBやInsta、Twitter、Bsky、LinkedIn、Mastodonのようにはっきりした特徴がない。" userName="pjc50" createdAt="2025-02-11T11:47:14" color="">}}

{{<matomeQuote body="全然考慮も宣伝もされずに登場した感じ。Twitterからの安全な場所を作ろうとしたエンジニアリングのマラソンみたい。悪いとは思わないけど、結局すぐに消えた印象。もっと良いプロダクト担当者がいれば、戦略や宣伝ができたかも。" userName="silisili" createdAt="2025-02-11T07:33:52" color="">}}

{{<matomeQuote body="何が足りないの？目的、価値、実際のユーザーがいないんじゃない？" userName="naijaboiler" createdAt="2025-02-12T01:29:40" color="">}}

{{<matomeQuote body="ほとんどはインスタグラムが強制的に使わせてるだけだと思う。’Threadsユーザー’ではあるけど、通知が来てもスパム通知でイライラする。" userName="mukunda_johnson" createdAt="2025-02-11T09:17:34" color="">}}

{{<matomeQuote body="何のために使うの？誰かのおすすめのThreadsアカウントを教えてくれたら、どんなものか分かるかも。" userName="pjc50" createdAt="2025-02-11T11:47:52" color="">}}

{{<matomeQuote body="Threadsのローンチは、当時のユーザーの不満を利用するために急いで行われたんだ。大きな代替サービスがなければ、他のSNSへ移行する熱意も薄れていただろうし、Threadsがローンチされた時はBlueskyは招待制だったからね。" userName="linkregister" createdAt="2025-02-11T08:05:51" color="#ff5c5c">}}

{{<matomeQuote body="初めの5日間でアカウント作成が1億件もあったんだ。" userName="OtherShrezzing" createdAt="2025-02-11T08:05:01" color="">}}

{{<matomeQuote body="そのうちどれだけがボットなんだろ？" userName="ahoka" createdAt="2025-02-11T07:55:32" color="">}}

{{<matomeQuote body="X（Twitter）やBlueskyでもどれだけユーザーがボットかわからないし、その割合は同じだと思うよ。Xは日間アクティブユーザー250Mが推定されてて、Mark ZuckerbergによるとThreadsのDAUは100Mらしい。短期間でここまで成長したのはすごいけど、まだXにはない機能がたくさんあるからね。" userName="linkregister" createdAt="2025-02-11T08:04:02" color="">}}

{{<matomeQuote body="同じ割合で考えるのは妥当だけど、もっと悪化してる可能性もある。BlueskyにはFacebookのネットワークや監視システムがないし、TwitterはBlueskyとThreadsの合計よりも価値が高いターゲットだからね。" userName="JumpCrisscross" createdAt="2025-02-11T09:07:43" color="">}}

{{<matomeQuote body="そして、どれだけの人がInstagramユーザーで、促されてThreadsアカウントを作ったけど全然使ってないんだろうね？" userName="sn0wleppard" createdAt="2025-02-11T08:12:57" color="">}}

{{<matomeQuote body="日間アクティブユーザー（DAU）と月間アクティブユーザー（MAU）は、それぞれアプリでの活動を行うユーザーの数を表しているんだ。" userName="linkregister" createdAt="2025-02-11T08:20:42" color="">}}

{{<matomeQuote body="DAUやMAUには業界標準がないから、全てをかなり疑ってかかった方がいいよ。" userName="NBJack" createdAt="2025-02-11T13:41:05" color="">}}

{{<matomeQuote body="羨ましいな。" userName="qwe----3" createdAt="2025-02-11T08:18:19" color="">}}

{{<matomeQuote body="まあそうだよね。この新しいソーシャルネットワークのプライバシーポリシーやデータ保持ポリシーはどうなってるの？それをたった二日で答えられるのかね。" userName="darkhorse222" createdAt="2025-02-11T18:11:00" color="">}}

{{<matomeQuote body="FBにいたころ、あそこはインフラがすごい力を持ってるって感じたな。商品エンジニアたちは数日で大規模なものを作ってたし、いろんなチームでテックリードもやった。HBaseやZippyDBチームにも感謝！ZippyDBが統合されたことが公に認められたのも面白い。毎日1万サービスがプッシュされるってのも圧巻だよ。FBを離れた後、同じようなものは見つからなかったから、スタートアップとしてその不足を埋めるためにインフラを作ってるよ。Batteries Includedってサイトもあるよ。" userName="eclark" createdAt="2025-02-11T16:33:01" color="#38d3d3">}}

{{<matomeQuote body="頑張ってね。次のStatSigになれるかもね。" userName="kridsdale1" createdAt="2025-02-11T17:02:15" color="">}}

{{<matomeQuote body="ありがとう！彼らは素晴らしいビジネスとツールを作ったよね。" userName="eclark" createdAt="2025-02-11T17:55:00" color="">}}

{{<matomeQuote body="PHPのウェブフロントエンドを「サーバーレス」や「ファンクション・アズ・ア・サービス」って表現するのは興味深いね。視点の問題だとは思うけど、モノリシックなコードベースで、いくつものエンドポイントがデプロイされてるサービスだし、特定のエンドポイントを担当する人からすれば「サーバーレス」って感じかもしれないけど、その抽象化には漏れもあるんだよね。" userName="yuliyp" createdAt="2025-02-11T06:47:34" color="">}}

{{<matomeQuote body="PHPは確かに元祖のサーバーレスだよ！コードをアップロードすれば、誰かが実行してくれるんだから。CGIもサーバーレス。これについていくつか記事を書いたこともあるよ。" userName="chubot" createdAt="2025-02-11T15:14:05" color="">}}

{{<matomeQuote body="「無状態・サーバーレスな関数」の完全な説明は少しわかりやすくなると思う。これが意味するのは、実行されているコードがリクエスト間で状態を維持せず、オペレーティングシステムに触れないこと。高い管理環境ではこれが普通だからね。一つのマシンがAPIのコードを簡単に実行できる柔軟性が、APIを迅速にスケールアップさせる。" userName="vineyardmike" createdAt="2025-02-11T09:18:57" color="">}}

{{<matomeQuote body="これはサーバーレスというのは、Metaの別の組織が実際のハードウェア上で（モノリスの）ホスティングを担当しているからにすぎないよ。その定義で言ったら、Amazonの詳細ページも「サーバーレス」だと言える。" userName="NBJack" createdAt="2025-02-11T13:46:13" color="">}}

{{<matomeQuote body="リクエストのためのエントリーポイントは一つだけで、それはPHP（まぁ、Hackだけど）で、その後は全てPHPコードでルーティングされて、リクエスト処理なども行われている。" userName="ramblemonkey" createdAt="2025-02-11T13:17:34" color="">}}

{{<matomeQuote body="「サーバーレス」はLambdaと同じ意味ではないし、ただのコンピューティングモデルだよ。たとえば、多くの企業が古いモノリスをAmazon Fargateでホスティングしてるんだから。" userName="whstl" createdAt="2025-02-11T08:33:03" color="">}}

{{<matomeQuote body="Fargateをサーバーレスって呼ぶのは単語の使い方を間違ってると思う。以前はFaaSのことを指してたのに、今はPaaSとの区別がなくなっちゃったみたいだね。" userName="falcor84" createdAt="2025-02-11T12:58:44" color="">}}

{{<matomeQuote body="すごい技術がいっぱいあるのに、一体何のために？ただ広告を押し付けるためだなんて、ため息が出る。" userName="philg_jr" createdAt="2025-02-11T13:53:28" color="">}}

{{<matomeQuote body="今の時代の悲劇は、優秀な頭脳が病気を治したり宇宙を探索したりするんじゃなくて、広告をクリックされる確率をほんの0.1%上げるために働いてることだよ。" userName="umeshunni" createdAt="2025-02-11T16:40:02" color="">}}

{{<matomeQuote body="科学をしながら690万円稼げたらいいのに。資本主義やDARPAに文句を言ったところでどうしようもないけどね。" userName="kridsdale1" createdAt="2025-02-11T17:03:15" color="">}}

{{<matomeQuote body="技術は素晴らしいが、実際にはデジタル監獄を作ってるだけだよ。" userName="nyclounge" createdAt="2025-02-11T20:55:24" color="">}}

{{<matomeQuote body="国家が支援する政治的プロパガンダや偽情報のための素晴らしい手段だってことを忘れないで。" userName="njovin" createdAt="2025-02-11T13:56:01" color="">}}

{{<matomeQuote body="昔のFacebookはそうじゃなかったが、今のFacebookは人々の政治や意見を操作することが目的だよ。" userName="UltraSane" createdAt="2025-02-11T15:21:16" color="">}}

{{<matomeQuote body="コメントにはネガティブなものが多いのが残念。技術の複雑さやスケールの大きさを知って感動した。会社が悪い部分もあるけど、記事はすごいと思ったよ。" userName="ViktorRay" createdAt="2025-02-11T18:14:49" color="#ff5c5c">}}

{{<matomeQuote body="昔のSF作家たちにこの記事を見せたら、宇宙探査や知的生命体の話をしてたわけで、広告インフラに驚くとは思えないな。" userName="teachrdan" createdAt="2025-02-11T18:57:42" color="">}}

{{<matomeQuote body="アシモフのようなSF作家がMetaのインフラを見ても、全人類の探求を助けるものではなく広告のためだと知りがっかりするだろうね。" userName="teachrdan" createdAt="2025-02-11T20:57:32" color="">}}

{{<matomeQuote body="ソフトウェアインフラに感心するのはいいけど、生命科学に対する感情が薄いのは悲しいよね。" userName="jappgar" createdAt="2025-02-12T16:59:03" color="">}}

{{<matomeQuote body="データセンターでは中央集権的なコントローラーが簡単で質の高い判断ができるから好まれる。ハイブリッドアプローチのIPネットワーキングも同じモデルを使ってるのが面白いね。" userName="linkregister" createdAt="2025-02-11T07:39:08" color="#785bff">}}

{{<matomeQuote body="誰でもコードをいじれるサーバーレス関数が、全体のログ必須でバグを探すのが大変そう。Erlangを使うのは利点無視な気がする。" userName="ThinkBeat" createdAt="2025-02-11T11:58:31" color="">}}

{{<matomeQuote body="危険だよね。だから採用基準が高くて、みんな最初の８週間は研修に参加しないといけないんだ。" userName="kridsdale1" createdAt="2025-02-11T17:06:44" color="">}}

{{<matomeQuote body="１０年前にFacebookでのログ関連の話、すごい実装だったの思い出した。" userName="HolyLampshade" createdAt="2025-02-11T12:21:47" color="">}}

{{<matomeQuote body="世界最高の実験プラットフォームを支えてるのがすごい。FBは競合よりも全ての選択肢を試せるから優位なんだよね。" userName="kridsdale1" createdAt="2025-02-11T17:08:06" color="">}}

{{<matomeQuote body="加入前は不安だったけど、思ったよりも良く機能してる！" userName="arbor_day" createdAt="2025-02-11T15:37:08" color="">}}

{{<matomeQuote body="一種類のサーバーのみ供給してるのは初めて聞いた。他の業界でも一般的なのか気になる。" userName="nk8620" createdAt="2025-02-11T11:50:46" color="">}}

{{<matomeQuote body="僕の業界でも、最適化しすぎて特異な展開を作ってしまった結果、進展が遅くなってる。必要なのは三つのユニークな展開だけだった。" userName="HolyLampshade" createdAt="2025-02-11T12:26:35" color="">}}

{{<matomeQuote body="一つのCPUを使う理由はコア数が増えて複雑さを避けられるからだよ。" userName="UltraSane" createdAt="2025-02-11T15:31:28" color="">}}

{{<matomeQuote body="仮想化されたサーバーなら確かにそうかもしれないけど、大抵の会社はハードウェアを最大限に活用しようとしてるよ。データセンターの専門家じゃないけどね。" userName="NBJack" createdAt="2025-02-11T14:04:58" color="">}}

{{<matomeQuote body="俺がやってたサーバーサイドコンパイラの仕事はマルチスレッドだったから、そんなことはなかったけどな。" userName="kridsdale1" createdAt="2025-02-11T17:12:34" color="">}}

{{<matomeQuote body="もし1MBの画像を早く取りたいときに、遅い接続（100msのレイテンシ）でも直接データセンターからもらうほうが速くね？けどMetaのシステム経由でいくと結構待たないといけないし、そっちの方が遅くなっちゃうんじゃないの？" userName="lionkor" createdAt="2025-02-11T09:47:21" color="">}}

{{<matomeQuote body="DC間のネットワークは通常、はるかに高スループットで、レイテンシも低い場合が多いんだ。CDNは最初のリクエストの後、画像を非同期でキャッチできるから、TCPの性質も影響するよ。" userName="dijit" createdAt="2025-02-11T10:49:58" color="">}}

{{<matomeQuote body="HTTPSで画像を配信するにはTCP接続を開始しないといけないから初めに結構時間かかるんだ。CDNとPoP間の通信は接続を再利用するから、実際には早い場合が多い。" userName="jusomg" createdAt="2025-02-11T14:58:54" color="#ff33a1">}}

{{<matomeQuote body="CDNとPoP、そしてデータセンター間の接続は思ったよりずっと速いから、特別な技術は必要ないよ。良いプライベートファイバーがあれば大丈夫。" userName="kccqzy" createdAt="2025-02-11T15:30:07" color="">}}

{{<matomeQuote body="面白い質問だけど、いくつか誤解があると思う。CDNノードはISPのネットワーク内にあるから、リクエストをCDN経由で送るのと直接データセンターを訪れるのでは大きな差はないはず。" userName="toast0" createdAt="2025-02-11T21:27:39" color="#ff5c5c">}}

{{<matomeQuote body="非常に興味深いね、特にハイパースケーラーとの比較。Metaがクラウドを始める準備なのかも？" userName="davedx" createdAt="2025-02-11T07:09:09" color="">}}

{{<matomeQuote body="Metaの前に退職したけど、彼らがパブリッククラウドになるつもりはないと思う。はいろんなサービスを持ってるけど、それだけでは顧客を納得させるのは難しいんじゃないかな。" userName="toast0" createdAt="2025-02-11T07:37:21" color="">}}

{{<matomeQuote body="確かにAWSやGCSのダッシュボードを使うと、そんな印象を受けるけどね！" userName="blitzar" createdAt="2025-02-11T09:10:07" color="">}}

{{<matomeQuote body="いや、インフラが公に公開するには全然準備ができてないな。プロセスは隔離されてるけど、まだまだ足りない。監視やデプロイ、スケーリングの方法が内部に依存しすぎてる。AWSとは全然違う。すべてがプラットフォームに合わせてコンパイルしなきゃいけないのも面倒だし、まだ第三者を受け入れる余裕はないと思う。" userName="KaiserPro" createdAt="2025-02-11T10:53:00" color="">}}

{{<matomeQuote body="自社のソフトウェアエンジニアにHerokuレベルのデプロイ抽象化を提供しつつ、性能も保つってすごい成果だね。クラウド製品の開発も一大プロジェクトだし、MetaがAWSに対抗できる公的なクラウドを出すとは考えにくい。" userName="linkregister" createdAt="2025-02-11T07:59:34" color="#785bff">}}

{{<matomeQuote body="GCPより信頼できる公的クラウドが始まるなんて、かなり印象的だね。" userName="olivermuty" createdAt="2025-02-11T07:25:10" color="">}}

{{<matomeQuote body="GCPはGoogle内でも二級市民的な扱いだから評判が悪く見える。Metaが上手く公的クラウドを展開できれば、信頼できると思うな。しっかりとしたエンジニアリング力を示しているし、UIがもう少し安定すればなお良い。" userName="arjvik" createdAt="2025-02-11T07:30:11" color="">}}

{{<matomeQuote body="新しいプロジェクトはGoogle内では全てGCPに行くんじゃないの？" userName="mathverse" createdAt="2025-02-11T08:33:04" color="">}}

{{<matomeQuote body="新しいプロジェクトの定義によるけど、私が関わってる成熟した製品の新機能にはGCPが関わってないな。別のプロジェクトでGCPを使ってたけど、完全に孤立してたし。" userName="kridsdale1" createdAt="2025-02-11T17:15:00" color="">}}

{{<matomeQuote body="今の段階でGoogle内に二つのレイヤーを持つのは意味がないね。" userName="Cthulhu_" createdAt="2025-02-11T08:42:43" color="">}}

{{<matomeQuote body="多くのFortune 50企業はMicrosoftやAmazon、Googleと競合しているから、彼らのサービスを使うのに慎重になってる。Metaには競合が少ないから、その点では有利かも。まあ、十分な法務部があれば、信頼は不要だけどね。" userName="nijave" createdAt="2025-02-11T13:11:19" color="">}}

{{<matomeQuote body="Fortune 50企業で、トップ3のクラウドを使わない企業は一つもないんじゃないかと思うな。NetflixやAppleも公共クラウドを結構使ってるし。" userName="VirusNewbie" createdAt="2025-02-11T18:43:36" color="">}}

{{<matomeQuote body="可変負荷があってもハードウェアに余裕があれば、彼らもそうするはずだよね。Amazonが昔みたいに、夕方は忙しいけど深夜は閑散としてるみたいに。それが無いなら、もっと早くからクラウドサービスを利用してると思うけど、自分たちもクラウドプロバイダーの顧客なんじゃないかな。" userName="Cthulhu_" createdAt="2025-02-11T08:41:51" color="">}}

{{<matomeQuote body="その内製ツールとFacebookを切り離して顧客向けにするにはすごい手間がかかると思う。内製ツール同士が密接に依存してるから、Facebook以外の顧客を考慮しながら作られてないし。" userName="bagels" createdAt="2025-02-11T08:48:33" color="">}}

{{<matomeQuote body="Thriftについて全く触れられてないのが残念。インフラの概要にはレベルが低すぎたのかもしれないけど、グローバルな視点で技術的な影響を期待していた。" userName="kmdrpc" createdAt="2025-02-11T07:34:47" color="">}}

{{<matomeQuote body="パフォーマンス向上のためにgRPCに移行したかもしれないね。RPCライブラリがモノレポで中心管理されているって言ってたし、ThriftからgRPCへの移行は6ヶ月未満だったかも。" userName="linkregister" createdAt="2025-02-11T07:47:49" color="">}}

{{<matomeQuote body="gRPCとThriftはパフォーマンスが比較できるし、実際gRPCからThriftに戻る傾向もあるよ。まだgRPCが使われてるエリアではそうなんだ。" userName="vitaut" createdAt="2025-02-11T07:59:33" color="">}}

{{<matomeQuote body="ThriftからgRPCへの移行は辛かった。パフォーマンスの指標は取ってなかったけど、内部ではかなり効率的だと言われてた。Thriftのサービスは今も残ってるけど、大半はgRPCに移行済みで、戻ったものはない。" userName="linkregister" createdAt="2025-02-11T08:09:29" color="">}}

{{<matomeQuote body="彼らがすぐに動かず、壊さないようにしてるところに至っては、少なくとも半分は理由があると思う。graphqlは古いAPIをカバーするためのものだし、mysqlから外部キーをなくしてカラムストアDBとして使ってるってPHPの名残だよね。Metaのインフラ選択は一般の人には関係ないと思う。サーバーレスはAWSの高い請求書にもつながるし、ElasticなKubernetesスタックも高くつく。ただの技術でYAMLを使ってクラウドリソースを整備できるって、Ansibleを歓迎することじゃないかな。Linuxのネットワークスタックを再現する必要はないし、実際にうまく動いてる。node.jsを本番環境の公のWebサービスとして動かすにはたくさんのハックが必要で、静的にコンパイルされたバイナリがメモリリークのランタイムの4日目に新しいコード実行パスを作るわけじゃない。地味な技術は地味だけど、新しくて光っててもそれも同じ。Facebookは過去が持続的に示す病理を緩和するための技術を作ってる。" userName="ribadeo" createdAt="2025-02-11T08:28:31" color="#ff33a1">}}

{{<matomeQuote body="その通り。Facebookが動いているAndroid Dalvikマシンをハックした時のことを覚えてる？彼らの組織的な制約のためにコードを削除したり、未使用のクラスを消したりすることができなかったんだよね。https://archive.is/nIPlg https://engineering.fb.com/2013/03/04/android/under-the-hood... Facebookはすごいエンジニアリングをして、過去の素晴らしいエンジニアリングのひどい結果を一時的に防いでるように見える。" userName="ForHackernews" createdAt="2025-02-11T09:03:15" color="">}}

{{<matomeQuote body="そうだね。FBのiOSコードベースはすごいことになってる。80年代からのAppleのコードベースも見たことあるけど、どっちもヤバい。" userName="kridsdale1" createdAt="2025-02-11T17:18:04" color="">}}

{{<matomeQuote body="YAMLを使って実際にクラウドプロバイダーのリソースを管理するのは地味な技術だって？Ansibleへようこそ。クラウドインフラ管理にAnsibleを使っている人は真剣に受け止めるべきじゃないよ。使い勝手が悪く、遅く、管理できるリソースが限られているし、テンプレート機能も不足している。それに状態の追跡もできない。クラウドプロバイダーのCLIを使うためにbashスクリプトを書いた方がずっと良い。Terraform/OpenTofuやPulumi/tfcdkの方が、未来の自分を大事にしたいなら明らかにいいよ。" userName="sofixa" createdAt="2025-02-11T10:19:04" color="#45d325">}}

{{<matomeQuote body="確かに物事の本質を見失ってるよね。VPSの提供を話してるんであって、kubectlでPostgreSQLのリストアを苦労してやることについてじゃない。フェイスブックの過剰設計は、彼らが行き詰まっていることが原因で、ビッグテックの解決策が実際のウェブ業界にはほとんど適用されないってことを言いたいんだ。'Ansible推奨'にあなたが反論できるとも思わないけど、まあ良いか。" userName="ribadeo" createdAt="2025-02-11T13:01:01" color="">}}

{{<matomeQuote body="世界ってのは慣性がないよね。フェイスブックの本番でのロールアウトもそうだし。" userName="ribadeo" createdAt="2025-02-11T13:02:09" color="">}}

{{<matomeQuote body="あなたの厳しい否定、”誰も真剣に受け取らない！”ってのは、自分の意見が法律になるみたいな言い分。そんな風に考えるのはやめてほしい。私の意見を投票で消し去るのはかなり攻撃的だし、このコミュニティを不快にしてる。私は無知じゃないし、そう扱われるのは嫌なんだ。" userName="ribadeo" createdAt="2025-02-11T13:06:35" color="">}}

{{<matomeQuote body="確かに無知じゃないって言いたいなら、無知な発言はしないほうがいいよ。私があなたの発言を建設的に否定しようとしたのに。土台をこうするっていうのは、ポテトを剥くのにハンマーを使うようなものなんだ。" userName="sofixa" createdAt="2025-02-11T13:12:17" color="">}}

{{<matomeQuote body="あなたの実際の意図は何なの？MetaがPHPやMySQLってつまらない技術で複雑なシステムを構築してるのを批判してるのに、別のつまらない技術であるYAMLやAnsibleを勧めてるわけ？Metaの直面してる問題、地域全体の障害や効率的なクロスデータセンターのルーティング/シャーディングを考えると、市販の”つまらない”ソリューションは存在しないよ。あなたのコメントはこの記事の内容と真正面から向き合ってない気がする。Metaが過去のコードを壊すことへの恐れから技術を作ってるわけじゃなく、彼らのイノベーションの方法論は非常に反復的で、実際の結果のフィードバックに基づいてるんだ。" userName="mightyham" createdAt="2025-02-11T15:41:04" color="#ff33a1">}}

{{<matomeQuote body="彼らがMySQLから外部キーを削除したってのは、Meta/Facebookだけに特有の話じゃないよ。多くのビッグテック企業がスケールにおいて外部キー制約を使わずにMySQLを運用してるんだ。外部キー制約は使ってないけど、依然としてリレーショナルなユースケースなんだ。あなたが言ってるように、'カラムストアDBで使う'ってのは、全く的外れだよ。カラムストアはアナリティクス用で、MySQLはOLTPに使う。InnoDBやMyRocksは行指向のストレージエンジンだし。おそらく”キー・バリュー・ストア”と言いたかったと思うけど、それでも完全に間違ってる。Facebookのソーシャルグラフのクエリパターンは、インデックス上での範囲スキャンが重要なんだから、キー・バリュー・ストアにはその概念すらないよ。Facebookにはソーシャルグラフデータベース以外にも、極めて多様なMySQL機能を使うワークロードがあるんだ。" userName="evanelias" createdAt="2025-02-12T01:28:06" color="">}}

{{<matomeQuote body="デプロイや観測のツールに関する公開情報はあるの？" userName="asdasd1234" createdAt="2025-02-11T07:28:54" color="">}}

{{<matomeQuote body="それ以降の変化があると思うけど、これ2021年の情報だよ： https://atscaleconference.com/conveyor-continuous-deployment... 。ここには設定管理のアプローチに関するいい論文もあるよ： https://research.facebook.com/publications/holistic-configur... 。" userName="_kb" createdAt="2025-02-11T11:19:35" color="">}}

{{<matomeQuote body="残念ながらConveyorのコードは見当たらなかった。以下のUSENIXの論文は利用可能だよ： https://www.usenix.org/system/files/osdi23-grubic.pdf 。" userName="linkregister" createdAt="2025-02-11T07:43:47" color="">}}

{{<matomeQuote body="このインフラのスケールレベルは本当にすごいね。オフライン処理がフロントエンドから分離されてるのが良かった。" userName="robbale" createdAt="2025-02-12T17:14:08" color="">}}

{{<matomeQuote body="Clownfareは嫌いだけど、彼らが運営しているデータセンターの数を考えると、こういう情報を公開したら面白いかもね。" userName="udev4096" createdAt="2025-02-11T08:37:57" color="">}}

{{<matomeQuote body="彼らはブログにたくさんの情報を公開してるよ。細切れの情報だけど、最適化やセキュリティの修正、失敗の事後報告に関する記事の中にある。" userName="sofixa" createdAt="2025-02-11T10:15:35" color="">}}

{{<matomeQuote body="お金も労力も使って、それがこんなつまらない悪事に使われるなんて。Metaに関わらない方がいいよ。リンクもシェアしないで。" userName="aaroninsf" createdAt="2025-02-11T22:47:13" color="">}}

{{<matomeQuote body="PHPとPlanetary、これの裏にある数学は何なんだろう？" userName="robblbobbl" createdAt="2025-02-11T13:35:56" color="">}}

{{<matomeQuote body="facebook.comは最初PHPアプリだったんだ。アプリを書き直すよりもPHPを効率的にする方が簡単だったんだよね。" userName="arbor_day" createdAt="2025-02-11T15:39:05" color="">}}

{{<matomeQuote body="Brawndoにスポンサーされてるってことか、植物が欲しがるものだからね。実際、これは見るのが痛々しいな。" userName="factfindingisfn" createdAt="2025-02-11T13:35:10" color="">}}

{{<matomeQuote body="facebookが全て作り上げたのに、自分には全く役に立たないのが面白い。" userName="revskill" createdAt="2025-02-11T10:03:48" color="">}}



