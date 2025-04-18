+++
date = '2025-02-17T00:00:00'
months = '2025/02'
draft = false
title = 'Xユーザーが“Signal.me”リンクを投稿できない原因とは？'
tags = ["SNS", "トラブル", "リンク", "コミュニケーション", "Signal"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> Xユーザーが“Signal.me”リンクを投稿できない原因とは？

引用元：[https://news.ycombinator.com/item?id=43076710](https://news.ycombinator.com/item?id=43076710)

{{<matomeQuote body="Twitterの方針を擁護する気はないけど、これは単なるミスかも。自動化されるべきはずの危険なURLの検出がうまくいかなかった可能性がある。signal.meは成長中で、不正なリンクも増えてるから、Twitterが自動的にバンする理由になるかも。それで、運営は「自治体の自動化が厳しかった」と言い訳できるんだよね。" userName="berkes" createdAt="2025-02-17T10:02:21" color="">}}

{{<matomeQuote body="ここで重要な点を埋めちゃったね。ミスだとしても、こんなのは避けられるはずで、人間の目が必要だったんじゃないの？十分な人数を確保しておけないなら、効率的な政府の運営なんてできないよ。" userName="saghm" createdAt="2025-02-17T11:24:27" color="">}}

{{<matomeQuote body="自動バンに人間は関与してないから、スタッフの数には関係ないと思う。link banのアルゴリズムに問題がありそうだね。十分なトラフィックを得てない可能性がある。" userName="kortilla" createdAt="2025-02-17T15:24:06" color="">}}

{{<matomeQuote body="＞人間は自動バンに関与しない。<br>自動で判断すべきじゃないと思う。レビューする人が少ないと、自動化が進んじゃうんだ。" userName="saghm" createdAt="2025-02-17T16:19:15" color="">}}

{{<matomeQuote body="実際、これが全自動化であるべき理由が2つあるんだ。スパマーは自動なのに、人間が遅れて判断したら意味がない。もう一つは、人間が自動システムより情報を持ってるとは限らないってこと。URLはスパム攻撃で評価されるから、確率が高いと一斉にブロックされちゃうんだ。" userName="mike_hearn" createdAt="2025-02-17T17:37:20" color="#45d325">}}

{{<matomeQuote body="悪質なスパムが一時的に増えたからって、全ドメインをブロックするのは良くないと思う。ドメインが危険なら人間が確認すべきだし、まずはスパムを送ってるアカウントを追うべきだよ。" userName="Dylan16807" createdAt="2025-02-18T01:37:56" color="">}}

{{<matomeQuote body="signal.meはメジャードメインじゃないかも。確率で動くし、スパマーが多いと良いトラフィックでも飲まれちゃうよ。Googleなどは、長期間に多く見られるから影響が出にくいんだ。" userName="mike_hearn" createdAt="2025-02-18T11:32:27" color="">}}

{{<matomeQuote body="そんな中、何千人もがマルウェアやフィッシングリンクを受け取ってる。親も言ってるけど、システムは自動化されるべきで、人間は後で間違いを修正する役目でいてほしいんだ。" userName="scarab92" createdAt="2025-02-18T01:58:38" color="">}}

{{<matomeQuote body="ソーシャルメディアがネットの警察みたいになるべきじゃないよ。コミュニケーションを保つ権利が必要で、スパムの問題は警察や政府が対処すべき。" userName="account42" createdAt="2025-02-18T11:24:32" color="#ff5c5c">}}

{{<matomeQuote body="これはXY問題じゃないよ。XY問題では、問題解決者が根本的な問題を解決できる立場にいるけど、Xはそんなことできないから。" userName="scarab92" createdAt="2025-02-18T13:40:54" color="">}}

{{<matomeQuote body="あなたが主張してるのは企業の自警団行為だよ。ちゃんとした権限を持ってないのに自分の正義感で動くのは変だし、その「解決策」が無実の人たちに悪影響を与えたら批判されてもしょうがないよね。" userName="account42" createdAt="2025-02-18T14:52:19" color="">}}

{{<matomeQuote body="たしかに、禁止されたリンクはすべてhttps://signal.me/#eu/fdy5h1miMifXaみたいなフォーマットだね。URLのハッシュ部分は自動システムには意味がないって思われてるから、過去に問題のあったリンクがあれば、そのドメイン全体がブロックされるのも理にかなってる。もし解決策を取らなければ、意図的だと考えざるを得ないね。" userName="M4v3R" createdAt="2025-02-17T10:21:31" color="#ff5733">}}

{{<matomeQuote body="実はhttps://signal.me/asdfみたいなリンクは投稿できるけど、https://signal.me/#asdfはブロックされてる。これで君の意見が支持されるんじゃないかな？" userName="red_trumpet" createdAt="2025-02-17T12:10:20" color="">}}

{{<matomeQuote body="システムの目的はその行動だよ。" userName="NelsonMinar" createdAt="2025-02-17T14:19:43" color="">}}

{{<matomeQuote body="“システムの目的はその行動だ”って言うのは完全なシステムにだけ当てはまる。もし実装が不完全なら、実際にシステムがすることとその目的が食い違う場合もある。バグがないとは言えないようなものだから。" userName="oever" createdAt="2025-02-17T17:11:23" color="#ff5c5c">}}

{{<matomeQuote body="それはちょっと単純すぎると思う。" userName="scarab92" createdAt="2025-02-17T14:39:23" color="">}}

{{<matomeQuote body="逆に信頼できる情報がない限り、間違ってはいないよ。システムの副作用や意図しない結果により、行動が理解されてないときにこの視点が役立つからね。" userName="tremon" createdAt="2025-02-17T14:55:26" color="">}}

{{<matomeQuote body="＞ “それは間違ってはいない。”シンプルさが洗練された考えだけど、このヒューリスティックが他より信頼できる理由はゼロだと思う。私の経験では、この見方はたいてい間違ってる。" userName="scarab92" createdAt="2025-02-17T15:07:53" color="">}}

{{<matomeQuote body="どんな経験からそのヒューリスティックが役に立たなかったの？" userName="beepbooptheory" createdAt="2025-02-17T15:33:49" color="">}}

{{<matomeQuote body="人々はシステムが何をするかを考えるとき、自分の敵意から抜け出せないことが多いんだ。自分の態度を客観的に説明してるつもりでも、実は中身は何もないレビューに見える。システムについて話すのは難しいし、ほとんどの人は苦手だね。" userName="finnthehuman" createdAt="2025-02-17T16:03:55" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="useSkinパラメータは手動で追加したものなの？ログインしてない状態で別のページに移ると、そのパラメータが消えちゃうんだ。" userName="pindab0ter" createdAt="2025-02-17T15:59:17" color="">}}

{{<matomeQuote body="あ、すみません！実はブラウザ拡張があって、あらゆるWikipediaページにそのパラメータを追加してるんですよ。リンクを投稿する際はいつも削除してるけど、今回は忘れてしまいました。" userName="tremon" createdAt="2025-02-17T18:11:16" color="">}}

{{<matomeQuote body="あなたのミスでこの機能を発見できたよ、ありがとう！MediaWikiの機能で、?useskin=の値でテーマが選べるよ。" userName="matthberg" createdAt="2025-02-18T09:08:29" color="#45d325">}}

{{<matomeQuote body="なるほど、そのスキンの方が好きなら納得だね。好奇心から聞きたいんだけど、なぜWikipediaの外観の設定じゃなくてプラグインを使ってるの？" userName="pindab0ter" createdAt="2025-02-18T09:49:43" color="#785bff">}}

{{<matomeQuote body="これは思考を止めるクリシェだね。システム思考はもっと複雑で有意義だと思う。Sidney Dekkerの『Drift Into Failure』が良い入門書だよ。" userName="Seattle3503" createdAt="2025-02-17T18:21:14" color="">}}

{{<matomeQuote body="これは理論や詭弁を排除するのに役立つ良い「剃刀」ですよ。たとえば、ファシズムの目的は虚無的暴力で、共産主義の目的は官僚的エリートによる支配だよ。" userName="api" createdAt="2025-02-17T15:18:21" color="">}}

{{<matomeQuote body="あなたが言う通り、『正直なミス』は巧妙な攻撃者が自分の攻撃を隠すために使うことがあるよ。今では悪意と無能は同じように扱うべきかも。" userName="martin-t" createdAt="2025-02-17T14:11:45" color="#38d3d3">}}

{{<matomeQuote body="信頼には二つの柱があるんだ。一つは価値の整合性、もう一つは能力だよ。これってAI開発や代表政府にも関わってるけど、我々の投票制度は不十分だと思う。" userName="error_logic" createdAt="2025-02-17T20:27:51" color="#45d325">}}

{{<matomeQuote body="『充分に進んだ怠慢は悪意と見分けがつかない』って言いたいね。" userName="andrewflnr" createdAt="2025-02-17T15:37:00" color="">}}

{{<matomeQuote body="『充分に進んだ悪意は怠慢と見分けがつかない』だね、直したよ！" userName="tomxor" createdAt="2025-02-17T16:22:02" color="">}}

{{<matomeQuote body="MarkがElonにメッセージを送ったらしいよ。’Whatsappの最大の競争相手の成長を抑えてくれ’って。公の場でバトルしたいって言ってたのに、こういう陰険な取引が好きなんだね。意図的なのは疑わしいけど。" userName="lukan" createdAt="2025-02-17T19:12:12" color="">}}

{{<matomeQuote body="Elon Muskは以前、Signalについて好意的だったから、もし意図的にSignalのURLをブロックしてたらどこかで言ってたはず。短縮URLはいろいろ疑わしいし、SignalのURLを使った詐欺が多いって可能性もある。そもそも、全エンドツーエンドで暗号化されてるのが逆にスパム検出を難しくしてる。" userName="GuB-42" createdAt="2025-02-17T10:39:35" color="#ff5c5c">}}

{{<matomeQuote body="Muskが引き継いでからTwitterでMastodonのリンクが禁止だったけど、どうなってるんだろう？自由な言論を大事にするって言いながら、結局そうはなってないんだよね。まぁ、自分の目標に応じて嘘をつくのが彼のスタイルだよね。" userName="martin-t" createdAt="2025-02-17T14:44:51" color="">}}

{{<matomeQuote body="bskyとMastodonのリンクは許可されてるけど、今はbskyの投稿が自動要約されることはないみたい。" userName="dmatech" createdAt="2025-02-17T16:08:22" color="">}}

{{<matomeQuote body="もしElonがそんなにナルシストなら、こういう禁止措置についても何か言うはずだよね。ナルシストは中心になりたがるから、’誤って起きた問題’って感じは逆に自分の特別感を失わせる。" userName="GuB-42" createdAt="2025-02-17T16:30:01" color="">}}

{{<matomeQuote body="理由なんて関係ないよ。間違いだろうが検閲だろうが、結果は同じじゃん。" userName="buyucu" createdAt="2025-02-17T10:26:46" color="">}}

{{<matomeQuote body="理由は超重要だよ。間違いは誰にでも起こるけど、検閲は意図的だから直ることは少ない。" userName="Majestic121" createdAt="2025-02-17T10:37:35" color="">}}

{{<matomeQuote body="’間違い’が2年間も続くなら、実際には間違いじゃないだろう。MuskがTwitterを運営する中で、こういう問題は初めてじゃないよ。" userName="rsynnott" createdAt="2025-02-17T12:02:56" color="#ff33a1">}}

{{<matomeQuote body="Twitterみたいな大企業がこんなことをするのはありえない。何百万ものユーザーがいるのに、チェックやテストが必要じゃない？" userName="buyucu" createdAt="2025-02-17T10:57:39" color="">}}

{{<matomeQuote body="正直な質問だけど、こういうテストをどうやってするの？ランダムなリンク1億件の自動テストなんてできるわけがない。URLだってハードコーディングされてるわけではないし。" userName="sunaookami" createdAt="2025-02-17T11:17:45" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="アメリカの人って今でもX使ってるの？何で？このプラットフォームが自国を滅ぼしかねないのに、何が続けさせるのか知りたい。" userName="philipdavis" createdAt="2025-02-17T13:10:14" color="">}}

{{<matomeQuote body="どのソーシャルメディアもそうだけど、ネットワーク効果が大きいんだよね。実際の機能よりも、その文化や使われ方が影響してる。アニメ系のNSFWアーティストとか、企業がニュースを流すのもXが多いから、使い続ける理由はたくさんある。" userName="npteljes" createdAt="2025-02-17T16:30:17" color="#38d3d3">}}

{{<matomeQuote body="イーロンが運営を始めてからはXをやめて、長年使ってきたアカウントも消したよ。誇り高く消したから後悔はない。" userName="insane_dreamer" createdAt="2025-02-17T17:16:23" color="">}}

{{<matomeQuote body="欧州連合もまだXを使ってるよ。" userName="rapnie" createdAt="2025-02-17T16:27:01" color="">}}

{{<matomeQuote body="OPは人々を指してるんじゃなくて、団体のことを言ってると思うけど。結局、人は自分の意見に合った所に集まるんだよね。" userName="p2detar" createdAt="2025-02-17T16:43:31" color="">}}

{{<matomeQuote body="＞何で？<br>賢い人たちはXだけで発信し続ける理由があるのかもね。他のサイトも選んでほしいけど、フォローしてるから続けてる。技術に詳しくない友達も多いし、一つのSNSにしか投稿しない人もいるから、仕方ない。" userName="handoflixue" createdAt="2025-02-17T22:27:59" color="">}}

{{<matomeQuote body="賢い人たちがXにいる理由は、彼らのターゲットがそこにいるからとか、資産があるから運営の方針に無関心とか、もしくは運営と一緒にいることを喜ぶからじゃない？ターゲットの人たちはこれが成長や学びになると思ってるんだと思うし。" userName="philipdavis" createdAt="2025-02-17T23:41:29" color="">}}

{{<matomeQuote body="他のプラットフォームの持ち主もそんなに良くないのを知ってるから、Xを使ってるってわけなんだ。" userName="account42" createdAt="2025-02-18T12:00:15" color="">}}

{{<matomeQuote body="本気で興味あるのか、それとも自分の主張をしたいだけなのか？インディアーティストや友達と、嘘を戦うためにまだXを使ってる人たちがいるんだ。人を侮辱するのは失礼だし、全く生産的じゃないよ。" userName="handoflixue" createdAt="2025-02-18T01:53:33" color="">}}

{{<matomeQuote body="私はアドブロックを使っていて、フォロワーも0だ。イーロンはここから何の利益を得ているのか疑問。私の存在は彼にとっては価値がないけど、アカウントを消してない。ログインせずに見ることすらしなくなった。" userName="crusty" createdAt="2025-02-22T20:02:30" color="#45d325">}}

{{<matomeQuote body="実際のところ、Elonのプロパガンダに対抗するためのリーチでは、いまだにこのプラットフォームが一番だよね。" userName="bdcravens" createdAt="2025-02-17T19:12:09" color="">}}

{{<matomeQuote body="メディア会社に支えられていて、ツイートが提供する手軽な引用に依存しちゃってる。140文字で話題を凝縮すると、解釈の仕方が多様になって、クリックベイトのデータが増えるんだよね。要するに、消化しやすいコンテンツのレースで真っ逆さまなモニュメントだな。" userName="righthand" createdAt="2025-02-17T17:06:12" color="">}}

{{<matomeQuote body="私はこのプラットフォームを使ってる理由は、少なくとも検閲がほとんどないから。時々不快な内容もあるけど、全体的にフィードは良いよ。" userName="bufferoverflow" createdAt="2025-02-18T04:26:05" color="#ff5733">}}

{{<matomeQuote body="ゴミのようなプラットフォームだし、運営してるのもゴミみたいな人たちだ。" userName="Vixel" createdAt="2025-02-17T20:44:35" color="">}}

{{<matomeQuote body="画像や動画ばかりのSNSの中で、唯一まともに非ボット、非フェイク、非クリックベイトの内容が得られる場所だよ。それに、キーワードフィルターが優れていて、興味深い人たちが面白い内容を投稿してる。ただし、政治的な話は完全にシャットアウトしてる。Elonが運営してても特に気にしないし、彼が次のヒトラーだなんて言うのも信じてない。色々なビジネスリーダーや億万長者と同じように問題のある人だと思うけど、彼の失態は目に付きやすいし、でも面白いこともやってるから。" userName="93po" createdAt="2025-02-17T21:04:45" color="#38d3d3">}}

{{<matomeQuote body="＞非ボットで非フェイクな質のあるコンテンツ<br>これは政治を避けてる場合のみの話だね。ちょっとでも政治に関わると、すぐに4chan /pol/の世界になるよ。" userName="mbs159" createdAt="2025-02-21T18:14:43" color="">}}

{{<matomeQuote body="＞Elonが多くのビジネスリーダーよりも力を持っていることは同意する。ただ、彼が今の政治に突っ込んでるのが問題だ。彼の製品を使ってなくても、アメリカ人の生活に直接影響を及ぼしてるから。そういう状況でなければ、Xを使わない選択もできたんだけど。" userName="insane_dreamer" createdAt="2025-02-17T21:46:58" color="#ff5733">}}

{{<matomeQuote body="＞アメリカでまだXを使ってる人いるの？理由は何ですか？<br>本気でその質問してるの？それなら、選挙結果を見てみるといいよ。トランプに対する投票は、このことに関係してるし、Elonとの関係や『政府を効率化するつもり』があったのは選挙前から知られてたし。" userName="kortilla" createdAt="2025-02-17T15:41:35" color="">}}

{{<matomeQuote body="トランプだけの話じゃないよ。月額料金を払うアカウントのツイートを優遇する変更をMuskが押し進めたとき、私もすぐに逃げたし。特に彼が初めてやったことは、a11yチームを全部切ったことだ。それから、ツイッターをログイン必須にしてAPIが壊れた。Redditのコミュニティだって大騒ぎしてたし、彼の政治的な活動以外にXをやめる理由は本当にたくさんあるよ。" userName="culi" createdAt="2025-02-17T16:23:22" color="#45d325">}}

{{<matomeQuote body="正直言って、君の主張は不誠実だと思う。オンラインで言われてることを繰り返している人は信じられないし、他の人も信じるべきじゃない。特に、それが毎回同じ内容で繰り返されるのは明らかに“その戦略”で、プロパガンダだと思う。＞“選挙結果を見た方がいい”ってどういうこと？傾いた州がどう票を入れたのか見たいの？確かに、そこには注目すべき点がいっぱいある。＞“トランプに投票したのは彼の政府を効率的にするっていうエロンとの関係が分かってたからだ”それは完全に嘘だ。誰もがエロンが政府機関を無茶苦茶に壊して回るとは思ってなかった。今実行されているのはProject 2025だ。アメリカは憲法危機に直面していて、金を節約するというのは、アメリカが機能する組織でなくなるための策略だ。" userName="timacles" createdAt="2025-02-17T17:04:02" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="＞エロンが政府機関を壊してるとは誰も思ってなかったって？トランプの支持率は高いし、彼の支持者は現状に満足してる。誰がXを使うのかってシンプルな疑問だった。60百万以上の人が現状に満足していて、Xは彼らの好きなことのエコーチャンバーになってる。僕の言ったことに不誠実なところはない。これがトランプ支持者が求めてた結果だし、支持率は嘘をつかない。僕も今の状況は好きじゃないけど、“誰も支持してない、分からない、危機だ”って言ってばかりじゃ現実を無視してるよ。右派の人と関わりたければ、Xはまさにそれに使われてる。" userName="kortilla" createdAt="2025-02-17T21:16:07" color="#ff5733">}}

{{<matomeQuote body="現在は完全に偽情報に支配された世界だってのを無視してるよね。メディアは実際に起こってることを報じない。右派支持者は厳選された“視点”を持ってるし、左派メディアは細かい点での怒りを煽って実際に起こってることを隠してる。＞“これがトランプ支持者が求めてた結果”って言うけど、トランプ支持者とか共和党員っていうところが重要で、今のトランプ支持者はただの狂った連中で、現実とは繋がっていない。共和党員はアルゴリズムに囚われている。＞Xは右派の人たちと関わるための場所になってるって言うけど、どれだけの賢い人がXを見て60パーセントがボットとプロパガンダだと分からないんだろう？Xは現実じゃなく、エロンの個人プロパガンダマシンだ。＞“誰も支持してない、分からない、危機だ”って言い続けるのは生産的じゃないし、今のアメリカの政治的現実を無視している。今のアメリカの政治的現実とは何か？人々の反応を与えられた情報と実際の現実を混同してる。アメリカ政府が敵の集団によって破壊されてる、犯罪的動機があると思われる集団によってだ。" userName="timacles" createdAt="2025-02-17T21:43:47" color="">}}

{{<matomeQuote body="相変わらず空が崩れ落ちてるのか？メディアが何が実際に起こってるかを報じてないって部分には特にいいね。" userName="genewitch" createdAt="2025-02-18T07:36:01" color="">}}

{{<matomeQuote body="俺はそれに投票したよ、連邦政府を壊すために。それが俺たちのお金を盗んで破産させてるから。" userName="stainablesteel" createdAt="2025-02-17T14:38:31" color="">}}

{{<matomeQuote body="アメリカが君たちのお金を盗んで破産させてるって思ってるの？具体的にはUSAIDとかFAAとか、今になって解体されたの？それが高優先エージェンシーで君たちのお金を盗んでるの？2010年以降、突然1000億ドル持ってる奴らじゃないの？" userName="timacles" createdAt="2025-02-17T17:09:24" color="">}}

{{<matomeQuote body="スチュワート・リーの言葉を思い出すよ、失望したイギリスの労働者階級が過激な政治党に投票することについて：“UKIPへの抗議票は宿泊施設のサービスが悪かったからベッドにうんこするようなもので、でもその後、うんこしたベッドで寝なければならないことに気付く。”" userName="newdee" createdAt="2025-02-17T19:34:59" color="">}}

{{<matomeQuote body="このアメリカの側面はいつも奇妙だと思ってる：アメリカ国家の最も凶悪な敵はアメリカ人なんだ。" userName="pjc50" createdAt="2025-02-17T16:34:37" color="">}}

{{<matomeQuote body="これは奇妙ではないが、世界中の政府がどう機能するかだ。権力を持つ人々は、心の優しさだけではなく、民主国家の国民からの権力によっている。政府は市民が立ち上がるのを抑えようとしているし、そのために自由な発言を制限することで国民を団結させられないようにしている。" userName="account42" createdAt="2025-02-18T12:33:24" color="#38d3d3">}}

{{<matomeQuote body="君のコメントを見たし、ダウンボートかフラグが付いているのを見たけど、他の人がやっと理解できるように話し合うのは有益だと思う。＞“俺はこれに投票した、連邦政府を破壊するために”ってコメントをここに再現するよ。もし君が連邦政府が”俺たち”のお金を盗んで破産させていることを心配しているなら、最初に起こったことはOIGの職員を解雇することだったって考えてみてほしい。彼らは全ての連邦プログラムにおいて無駄や詐欺、不正を特定する責任を持つ連邦職員だ。その部分をなくしてしまうのは怪しいと思う。君が連邦政府が君のお金を盗んでると思うんなら、悲しいことに間違ってる。連邦プログラムには詐欺が多いが、その詐欺は受取人側で起こるもので、部門内ではない。君が税金がどこに行くか心配してるなら、取り除くべき最後のエージェンシーはその監視のために設けられた人たちだ。君が投票した人は過去に連邦の資金を悪用したという記録を持っている。" userName="doodlebugging" createdAt="2025-02-17T16:26:44" color="#45d325">}}

{{<matomeQuote body="連邦政府の監察官たちは、無駄や詐欺を見つける役割がある連邦の職員だよ。1百万以上の150歳から159歳のアメリカ人が社会保障を受けている一方で、アメリカはペルーの子供向けにトランス関連の漫画を作っている。OIGは良い仕事をしていると思う？" userName="nailer" createdAt="2025-02-17T22:00:59" color="">}}

{{<matomeQuote body="信頼できる情報源から聞いたとでも？その証拠を共有できる？" userName="lostdog" createdAt="2025-02-18T01:59:13" color="">}}

{{<matomeQuote body="政府の効率化部門のトップが今日このことを発表したよ。" userName="nailer" createdAt="2025-02-18T03:15:39" color="">}}

{{<matomeQuote body="その声明のリンクはどこ？Xにリンクしないでね。アカウントがないからスレッドは読めないよ。オーナーは一般の人も簡単に読めるようにしたいと言ってたけど、結局お金のためにやめたみたい。信用できない人だね！" userName="lostdog" createdAt="2025-02-18T04:40:45" color="">}}

{{<matomeQuote body="政府が言っていることを、データなしに信じるのは賢いことかな？" userName="claudenm" createdAt="2025-02-18T03:49:17" color="">}}

{{<matomeQuote body="その内訳はすぐに見れるし、Guardianも10年前にこの問題について報じてた。" userName="nailer" createdAt="2025-02-18T05:38:27" color="">}}

{{<matomeQuote body="10年前に1百万の150歳の人が社会保障を受け取っていると知って、何もなかったの？" userName="claudenm" createdAt="2025-02-18T12:44:04" color="">}}

{{<matomeQuote body="君が理解しやすいように、これを分解しよう。>150歳から159歳のアメリカ人が1百万以上いる......君の論理力が休んでいるとしか思えない。そんなに高齢の人がいると思う？俺はその年齢の人たちを見たことないよ。情報が全くないのに、どこからその数字が来たの？結局、君は自分で考えるのをやめて、ただ楽に受け入れたんだね。" userName="doodlebugging" createdAt="2025-02-18T06:01:15" color="#45d325">}}

{{<matomeQuote body="素晴らしい仕事だね。脳が腐ったOPがツイッターの受け売りをして、君の反論を完全に無視するのが目に見えるよ。" userName="claudenm" createdAt="2025-02-18T13:40:59" color="">}}

{{<matomeQuote body="＞監査が終わった時、データベースを修正するのは無駄だと結論づけられ、新しい方法が導入された。ありがとう、有益な追加情報だね。>君が情報に泳ぐ小魚だというのは明らかだ。そんな場所にいて美味しいものを探していてどうするの？" userName="nailer" createdAt="2025-02-18T15:05:03" color="">}}

{{<matomeQuote body="Signal.meのリンクについて気になったんだけど、詳しい情報はここにあるみたいだね：<br>＞”https://signal.miraheze.org/wiki/Signal.me_URLs”<br>＞”https://signal.miraheze.org/wiki/Usernames#Username_links”<br>Signal.meのリンクは、電話番号やユーザー名を簡単に送信する手段なんだ。暗号化された身元はなくて、電話番号やユーザー名も守られない。だから、禁を破るにはSignalのユーザーがTwitter/Xで電話番号やユーザー名を送ればいいってことだね。暗号化されたユーザー名の形式には少しの身元保護があるけど、アクティブな間はSignalのサーバーにそのユーザー名を聞けば分かっちゃう。<br>これを使う人はそもそもTwitter/Xを使うべきじゃないかも。Mastodonとか他の代替手段を考えた方が良いよ。" userName="upofadown" createdAt="2025-02-17T13:10:16" color="#ff5733">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
