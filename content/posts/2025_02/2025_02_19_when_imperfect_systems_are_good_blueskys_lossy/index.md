+++
date = '2025-02-19T00:00:00'
months = '2025/02'
draft = false
title = '完璧じゃないシステムが実は優れた理由：Blueskyのロス情報タイムラインに迫る！'
tags = ["Bluesky", "システム設計", "タイムライン", "情報共有", "SNS"]
featureimage = 'thumbnails/blue.jpg'
+++

> 完璧じゃないシステムが実は優れた理由：Blueskyのロス情報タイムラインに迫る！

引用元：[https://news.ycombinator.com/item?id=43105028](https://news.ycombinator.com/item?id=43105028)

{{<matomeQuote body="アカウントの人気に応じて、集約・分散を選ぶハイブリッドなタイムライン戦略を実装すれば良いのに。セレブアカウントがあると、フォロワーにメッセージを100万回送るよりも、セレブが投稿した時は何もせず、フォロワーのタイムラインを表示する時にセレブの投稿を取得して統合すれば経済的だよ。膨大なフォロワーでそれをやると、キャッシュからのただの読み取りで済むし。" userName="pornel" createdAt="2025-02-19T22:25:46" color="#ff5733">}}

{{<matomeQuote body="これは最終的にそうなると思う。今のところ十分に速いけど、この問題もあって改善の余地はある。エンジニアの時間が限られているから、優先順位を強くつけている状況なんだ。" userName="ericvolp12" createdAt="2025-02-19T22:37:46" color="">}}

{{<matomeQuote body="あなたはBlueskyのエンジニアだよね？それにしても、新規ユーザーの急増にどう対処してるの？政治的や法的な問題の影響後に、ネットワークの毒性が増加してるの見た？Blueskyのモデレーションはどう対応してる？" userName="Xunjin" createdAt="2025-02-20T13:25:23" color="">}}

{{<matomeQuote body="これが役立つかもしれないよ：<http://daslab.seas.harvard.edu/datacalculator/>" userName="petra" createdAt="2025-02-20T19:41:27" color="">}}

{{<matomeQuote body="最終的にはBieber rackを作ることになるんじゃないかな。シャードが熱くなりすぎたら、独立させざるを得ない。@blueskyの開発者たち、これをやることに恥ずかしがらないで！極端なケースをスケールする正しい方法だから。" userName="VWWHFSfQ" createdAt="2025-02-20T01:59:17" color="#ff5c5c">}}

{{<matomeQuote body="これまでにこれを実行したことがあるけど、名前は知らなかったな。マウス会社にいた時、駐車場がJ. Bieberのもののすぐそばだったんだ。今ではSlashdot効果やHNのハグ、イギリスでは皆が同時にケトルを沸かす現象などあるね。ブログに記録しておこうかな。" userName="genewitch" createdAt="2025-02-20T12:10:07" color="">}}

{{<matomeQuote body="TV Pickup、通称ハーフタイムケトル効果だね。<https://en.wikipedia.org/wiki/TV_pickup>" userName="k1t" createdAt="2025-02-20T17:04:11" color="">}}

{{<matomeQuote body="実際には「Bieber Box」はなかったけど、そのジョークは広まったよ。ホットシャードは確かに問題だったね。" userName="bitbckt" createdAt="2025-02-20T12:28:40" color="">}}

{{<matomeQuote body="BlueSkyはTwitterによって資金提供されているから、Twitterのシステム構築について多くを知っているはずだと思う。" userName="stavros" createdAt="2025-02-20T10:05:23" color="">}}

{{<matomeQuote body="ヤバいですね！リンクシェアしてくれてありがとう。" userName="Imustaskforhelp" createdAt="2025-02-20T16:38:10" color="">}}

{{<matomeQuote body="＞「フォロワーのタイムラインを表示する時に、セレブの投稿を取得してマージする」その場合も「数十万の人をフォローしている変なユーザー」問題は残るかも。これが本当にマシになるかは分からないけど、読み込みは安定して安くて、書き込みが高くなるのが良いのかな。" userName="rsynnott" createdAt="2025-02-20T12:15:42" color="#45d325">}}

{{<matomeQuote body="＞「手を挙げて、そんなことはしない」って言うだけでもアリかもね。ランダムに投稿サンプリングするのもいいと思う。投稿は全部見たくないし、ちょっと時系列がバラバラでも悪くないと思う。" userName="fc417fc802" createdAt="2025-02-20T18:15:27" color="">}}

{{<matomeQuote body="何か切り分けのポイントを基にアプローチを混ぜるってのもありかもね。" userName="christkv" createdAt="2025-02-20T12:26:30" color="">}}

{{<matomeQuote body="この問題は『Designing Data-Intensive Applications』の最初の方で話されてるよ。読む価値あり！" userName="rubslopes" createdAt="2025-02-19T23:15:30" color="#ff5c5c">}}

{{<matomeQuote body="その問題を解決するために使われる戦略の名前知ってる？調べてみたいな。DDIA持ってるけど、内容が難しそうで寝ちゃうんだ。知識をどう仕事に活かすか分からないけど、これはもっと明確な応用がありそう。" userName="Brystephor" createdAt="2025-02-20T06:01:17" color="">}}

{{<matomeQuote body="はい、Haplocheirus（タイムラインサービス）の設計の基にYahoo!の「Feeding Frenzy」論文を使いました。" userName="bitbckt" createdAt="2025-02-20T12:26:10" color="#ff5c5c">}}

{{<matomeQuote body="どうして非セレブの投稿をフォロワーのタイムラインに挿入するの？直感的じゃないけど。" userName="locusofself" createdAt="2025-02-19T22:55:13" color="">}}

{{<matomeQuote body="ユーザータイムラインを一桁ミリ秒で表示するには、データストアは各アイテムを違う場所から読み込むのは現実的じゃない。インデックスがあっても、ディスク上は連続しててもペイロードはバラバラになっちゃうから、タイムラインのデータを少しでも連続して保存する方がパフォーマンスが大幅に向上するよ。" userName="giovannibonetti" createdAt="2025-02-19T23:18:52" color="#ff5c5c">}}

{{<matomeQuote body="プレレンダリングとして考えてみて。プレレンダリングは多く働いてるけど、非同期だから、ユーザーが要求するときにタイムラインが準備できてて、早い体験が提供できるんだ。（ただ「非セレブ」部分は分からないけど、タイムラインにはフォロワーの投稿（ポインタ）が含まれてるから、誰の投稿でも関係ないよ。）" userName="wlonkly" createdAt="2025-02-20T04:21:59" color="">}}

{{<matomeQuote body="ちょっと勘違いしてたかも。ツイートの内容がフォロワー全員のタイムラインに重複して表示されるんじゃないの？それだと200百万フォロワーの時はすごく無駄に感じるよね。" userName="locusofself" createdAt="2025-02-21T01:33:01" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="リンク先の記事によると、“投稿への参照がフォロワーに’ファンアウト’される”らしいから、内容じゃなくてリンクだけみたいだね。" userName="TimK65" createdAt="2025-02-21T08:48:34" color="">}}

{{<matomeQuote body="システム好きだからこういう記事は面白いな。完璧を求めるのって簡単だけど、Blekkoの検索エンジンでは、’最終的に一貫性のある’インデックスを作ったから、更新がすぐに反映できたけど、同じクエリでも結果が少しずつ違ったんだ。面白いシステムだよね。" userName="ChuckMcM" createdAt="2025-02-19T19:11:52" color="#ff33a1">}}

{{<matomeQuote body="検索エンジンがクリックするたびにページを再ランキングしてるのは考えたことなかったな。DuckDuckGoの結果がシャッフルされてるのはバグだと思ってた。" userName="snailmailman" createdAt="2025-02-19T20:15:58" color="#45d325">}}

{{<matomeQuote body="現在のウェブインターフェースの基本的な使いやすさの不満に繋がってると思うのは、広告やおすすめコンテンツが安定しないことだね。好きな広告を見てから別のコンテンツに行きたくても、もう見られないことが多いんだ。" userName="PaulHoule" createdAt="2025-02-19T20:38:38" color="">}}

{{<matomeQuote body="＞考えていれば別タブで開けるよね。　それか「後で見る」リストに追加するのもありだね。" userName="4ggr0" createdAt="2025-02-20T08:36:11" color="">}}

{{<matomeQuote body="DDGは使ってないけど、試した感じではページをリロードしない限り結果はシャッフルされないみたい。もしかしてブラウザが戻るときに再読み込みしてるのかも。新しいタブでリンクを開く設定にすれば良いかも。" userName="cgriswald" createdAt="2025-02-19T20:45:50" color="">}}

{{<matomeQuote body="面白いね。設定になにか影響してるかもしれないから、調べてみるよ。" userName="snailmailman" createdAt="2025-02-19T23:27:40" color="">}}

{{<matomeQuote body="最近、結果が変わる現象に気づいた。クリックして戻ると、検索結果が違ってるんだ。対策としては、DDGの検索ボックスに戻ってエンターを押すと、元の検索結果に戻るよ。" userName="numeri" createdAt="2025-02-20T13:22:41" color="#ff5733">}}

{{<matomeQuote body="こんにちは、DuckDuckGoの検索担当なんだけど、その問題について詳しく教えてもらえますか？再現するための手順を教えてほしいです。" userName="gtfiorentino" createdAt="2025-02-20T15:19:21" color="">}}

{{<matomeQuote body="最適化のための微妙なアルゴリズムの調整をするのが面白いよね。初期のマイクロサービスの頃に、舌の重さを手動で調整してれば、もっと時間を節約できたかも。" userName="gopher_space" createdAt="2025-02-20T16:00:54" color="#ff5c5c">}}

{{<matomeQuote body="Google画像検索が最初に下品質のぼやけたサムネイルを表示して、ユーザーが早く読み込まれたと思わせるのと同じ感じだね。" userName="dwedge" createdAt="2025-02-19T21:23:41" color="">}}

{{<matomeQuote body="完璧さの問題じゃなくてトレードオフの話だね。物理法則的に、NYCとロンドンのデータ同期に限界があるから、CAPスタイルのトレードオフを選ぶ必要がある。それにお金とサービスレベルのトレードオフもあるし。" userName="aqueueaqueue" createdAt="2025-02-20T02:49:35" color="#785bff">}}

{{<matomeQuote body="Blekkoでのクリックランク付けについて詳しく教えてもらえないかな？面白い問題だと思うんだけど。" userName="gregw134" createdAt="2025-02-19T20:13:26" color="">}}

{{<matomeQuote body="Blekkoはどうなったの？" userName="culi" createdAt="2025-02-19T19:28:23" color="">}}

{{<matomeQuote body="＞”2015年3月にIBMに買収されてサービスは終了した。”<br>よかったら詳しい答えを聞かせてほしいな。" userName="an_ko" createdAt="2025-02-19T19:57:58" color="#ff5733">}}

{{<matomeQuote body="正しい答えだね。IBMは主にWatsonのためにクローラーを求めてた。英語のフル検索エンジンを作るのは大変だったけど、Blekkoが買収された時にはGoogleが検索クエリによって数十億ドルを支払っていて、広告収入だけでやっていくのが難しかったんだ。" userName="ChuckMcM" createdAt="2025-02-19T21:48:16" color="#ff33a1">}}

{{<matomeQuote body="Blekkoは無くなった時に知ったんだ。最近、Blekkoで働いていた人に意見を聞いてみたら、Googleと競うのはやめた方がいいって言われたよ。P2P検索エンジンのアイデアがあるんだけど、まだ始めてないんだ。" userName="NetOpWibby" createdAt="2025-02-20T04:25:17" color="">}}

{{<matomeQuote body="P2Pは難しいよね。フルスタック検索エンジンを作るには、10Gのネットワークに接続して2500台のマシンが必要だし、それだけで月10万ドルはかかる。開発費用を考えたら利益を出すのは厳しいよ。" userName="ChuckMcM" createdAt="2025-02-20T04:45:26" color="#ff5c5c">}}

{{<matomeQuote body="分からないことがあるって、なんも知らん状態から始めるのは大変だね。検索や映像に参入するには何か収益性の高いプロダクトが必要だってのは明らかだ。情報提供ありがと！" userName="NetOpWibby" createdAt="2025-02-20T06:36:33" color="#785bff">}}

{{<matomeQuote body="Darknet Lanternは分散型の検索可能なディレクトリだね。多分、流行ることはないと思うけど、なんか別のものをインスパイアするかも。サーバーが同じソフトで他のサーバーのデータをスパイダーして同期する仕組みなんだ。" userName="immibis" createdAt="2025-02-20T12:18:56" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="そうそう、ディレクトリサービスはピアツーピアでやる方が簡単だよね。Pinboard.inは良い共有ディレクトリで、Yahoo!の編集版って感じ。誰かがインデックスしたものを探すときは質がいいけど、全ての答えには返りが悪い。編集なしのピアツーピアでやれば、サイトは容易にインデックスに入れるけど、それなりの利点と欠点がある。" userName="ChuckMcM" createdAt="2025-02-20T19:03:22" color="#38d3d3">}}

{{<matomeQuote body="これまで聞いたことなかったけど、面白そうだね。教えてくれてありがとう！" userName="NetOpWibby" createdAt="2025-02-20T14:56:15" color="">}}

{{<matomeQuote body="私の質問じゃないけど、面白い歴史の話をありがとう。他の読者のために、Kagiが大好きだって言っとく。超おすすめ。" userName="chrisweekly" createdAt="2025-02-19T22:18:08" color="">}}

{{<matomeQuote body="Neevaが成功すると思ってたけど、退出した後にKagiが現れてくれてよかった。" userName="NetOpWibby" createdAt="2025-02-20T06:49:51" color="">}}

{{<matomeQuote body="ちょっと興味あるんだけど、この戦略は一貫性を犠牲にしてるから、全ての読み込みや書き込みでフルファンアウトじゃない何かについて考えたことある？例えば、ユーザーのタイムラインに書き込むのをシェアにして、フォロワーがいるシャードに一度書くって感じ。これで書き込み時のファンアウトを数百シャードに制限できる。読取時は、そのホットスライスを取得して、実際のフォロワーをフィルタリングする。理解はできるけど、負荷はどうなるのかな？テストするデータがないから分からないんだ。" userName="rakoo" createdAt="2025-02-19T20:04:42" color="#ff33a1">}}

{{<matomeQuote body="ちょっと混乱してる。ロスイータイムラインの解決策は、フォロワーが多すぎる人のフィードをスキップするってことだよね。96％の改善があるのは凄いけど、そんなに多くの人が不合理な数の人をフォローしてるのか、それともフォロワーの数が少ないってこと？後者だとは思えないな、そうなると多くの人が更新を見逃すはずだから。" userName="dsauerbrun" createdAt="2025-02-20T07:06:11" color="">}}

{{<matomeQuote body="システムが「オーバーロード」になると、パフォーマンスが指数的に悪化する状態に入るんだ。そうなると自己DDoSになる。> 96％の改善は凄い。このTFAはP99のテールレイテンシーについて話してるから、テールレイテンシーを大きく減少させるのはそんなにおかしいことじゃないよ。要はレイテンシー分布を形作り直すってこと。ここでは病的なケースが排除されるんだ。" userName="friendzis" createdAt="2025-02-20T07:31:56" color="#ff33a1">}}

{{<matomeQuote body="＞ より多くのユーザーが不合理な数の人をフォローしてるってこと？OnlyFansモデルや仮想通貨のインフルエンサーのアカウント見てみなよ。何千、何万ものアカウントをフォローして、こっちがフォローしてくれるのを期待してるんだ。" userName="Beretta_Vexee" createdAt="2025-02-20T10:46:07" color="">}}

{{<matomeQuote body="この行動を受け入れるのが社会的に良いとか技術的に望ましいとは思えない。使い道があるか考えてみてよ。いろんなボットがこのアクセスを求めてるけど、非分割でこれを許可する正当な理由があるかは別問題だし、こういうクエリはリソースを不均衡に使う問題があるんだ。" userName="mapt" createdAt="2025-02-20T12:30:08" color="">}}

{{<matomeQuote body="時間が経てば、実際のユーザーが多数のアカウントをフォローするけどほとんど関わらない状況が増えるよ。例えばYouTubeでも登録者数が視聴者数より多いのは珍しくない。これは特に怪しいことではない。Blueskyはまだ若いから、フォロワー数が多いのが悪意のある人ばかりなわけではないけど、悪意のあるユーザーを完璧に見分けるアルゴリズムはないんだ。悪影響を抑える意味で、全体の使いやすさを維持するのが合理的だよ。" userName="tart-lemonade" createdAt="2025-02-20T17:46:06" color="#38d3d3">}}

{{<matomeQuote body="TFAによると、こういうユーザーによる負荷を避けるためにポリシーやモデレーションが必要で、それには時間もかかるし不完全さもある。だから、エンジニアは完璧なモデレーションは難しいことを理解して、インフラをそのためにデザインするべきだね。" userName="marksomnian" createdAt="2025-02-20T16:29:06" color="">}}

{{<matomeQuote body="彼らは確かに多くのユーザーが非合理的な数のアカウントをフォローしてるよ。Blueskyにはフォロー返しを狙うユーザーがいるからそういうことになる。" userName="aloha2436" createdAt="2025-02-20T09:00:00" color="">}}

{{<matomeQuote body="彼らは特に最悪のパフォーマンスを見ていたよ。P99というのは99パーセンタイルのことで、最悪の1パーセントのジョブで96％の改善を見たってことだ。" userName="citrus1330" createdAt="2025-02-20T15:39:30" color="">}}

{{<matomeQuote body="うーん。Twitter/Xはすでに1200人でかなりロスが多いみたいだね。フォローしている人が永久に消えていることがあるから、本当にイライラするよ。ロスの調整はしているのかな？もしそうでないと、上限が低すぎるとユーザー体験には悪影響が出ちゃう。" userName="spoaceman7777" createdAt="2025-02-20T00:36:40" color="#ff5733">}}

{{<matomeQuote body="1200人は本当に何もないよ。特にソーシャルメディアに関連する仕事をしている人にはね。君は50人の知り合いをフォローしてるけど、彼らは1200人の情報源を持ってるんだ。この話は何百万というフォロワーがいる人たちのことを指してるよ。" userName="peoplepostphew" createdAt="2025-02-20T02:05:40" color="">}}

{{<matomeQuote body="なんで1200人もフォローしてるの？あなたのホームフィードの目的は何？何を見たいの？" userName="VWWHFSfQ" createdAt="2025-02-20T02:10:22" color="">}}

{{<matomeQuote body="非時系列のタイムラインがある理由を発見しそうだね。週に一度は興味深いことを投稿する1200人の人がいるのは想像できる。しかし、興味のないものが100件あれば、どうやって興味深い投稿を見つける？それを公平にする方法も難しいんだ。" userName="coldpie" createdAt="2025-02-20T14:32:25" color="">}}

{{<matomeQuote body="俺は常に時系列で見るのが好きなんだ。オンラインで投稿してる人たちとその場で話せるのがいいんだよね。投稿した人にすぐ返信することで会話が生まれて、もっと仲良くなれると思う。" userName="spoaceman7777" createdAt="2025-02-20T20:37:03" color="#38d3d3">}}

{{<matomeQuote body="知ってる人ばかりで、その98％が相互フォローだよ。5〜6ヶ月ごとにフォローしてるアカウントを見直していて、関係が途切れた人や非アクティブな人は削除してる。Twitterには関係性の高い部分があって、他の人のコメントやリツイートで知り合うことが多いんだ。" userName="spoaceman7777" createdAt="2025-02-20T20:35:22" color="#785bff">}}

{{<matomeQuote body="＞何を見たいの？<br>興味のある内容を投稿しているアカウントのスクロールできるフィードが欲しい。" userName="fc417fc802" createdAt="2025-02-20T18:37:45" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Twitterには面白い人がたくさんいるよ。" userName="rjeli" createdAt="2025-02-20T04:57:27" color="">}}

{{<matomeQuote body="Twitterにフォローしたい人が100人はすぐに思いつくけど、アカウントも持ってない。理解できない使い方を否定しないで欲しい。" userName="throw10920" createdAt="2025-02-20T13:14:23" color="">}}

{{<matomeQuote body="＞さらに、この点を超えて、たくさんのユーザーが投稿するすべての内容の完璧な時系列を持つ必要はないけど、常に新しいコンテンツがあるようにすればいいんじゃないかと思う。<br>俺はこの解決策には満足してるけど、この文面から解決策が不完全な時系列になると思ってたのに、フィードから投稿が落ちてしまうとは思わなかった。" userName="rconti" createdAt="2025-02-19T20:24:44" color="#ff5733">}}

{{<matomeQuote body="もし4千人フォローしてて、50％のドロップ率だとしたら、全員がその日に投稿しないとしたら、唯一投稿した1人のアカウントも50％の確率で見逃すのは変だと思う。アルゴリズムはフィードの古さやフォロワーの投稿の新しさを考慮すべきじゃない？考えすぎかな？" userName="jadbox" createdAt="2025-02-20T00:31:04" color="">}}

{{<matomeQuote body="これはエッジケースのように感じる。<br>「合理的な制限」はおそらく実験に基づいて決められてるから、実際の数が「2000」ちょうどになるとは限らないと思う。たくさんフォローしてると、その投稿パターンが平均とかなり違う可能性は低いだろうし。理論上この状況になり得ても、非常に珍しいケースになるはず。" userName="imrehg" createdAt="2025-02-20T02:09:56" color="">}}

{{<matomeQuote body="’大数の法則’によれば、4千人フォローしても誰も投稿しないのはありえないと思う。アクセスしたければ全員をフォローすればいいし、jetstreamイベントフィードから必要な情報を引っ張るコードを書けば済む。<br>https://docs.bsky.app/blog/jetstream" userName="brianolson" createdAt="2025-02-20T21:12:09" color="#785bff">}}

{{<matomeQuote body="これはちょっと心配。新しいプラットフォームだから今は問題ないかもしれないけど、アカウントが非アクティブになると、自然と“死んだ”アカウントをフォローすることになる。Facebookだと社交的な人の古いアカウントが友達を何千人も集めることは珍しくない。彼らが測ろうとしているのは“忙しいタイムライン”で、もっと直接的に測定できる方法があると思う。例えば、過去24時間のタイムラインの投稿数みたいな。" userName="kevincox" createdAt="2025-02-20T11:45:11" color="">}}

{{<matomeQuote body="フォロワーが何十万人もいるアカウントは、内容をスクレイピングするボットアカウントだろうね。バンするべきだと思うけど、技術的なチャレンジは面白いな。Twitterには有名人用の特別なアーキテクチャがあるらしいけど、Blueskyはその手法を取り入れなかったのが気になる。" userName="knallfrosch" createdAt="2025-02-19T18:43:19" color="#ff5c5c">}}

{{<matomeQuote body="誰かをフォローする必要はないし、アカウントもなくてもコンテンツをスクレイプできるよ。大量のアカウントをフォローするのは、フォローバックを狙ってる場合が多い。" userName="psionides" createdAt="2025-02-19T18:59:11" color="">}}

{{<matomeQuote body="＞“Blueskyはクワジクローンなのに、なぜそんな道を進まなかったんだろう？”<br>フォロワーが100万を超えるユーザーは6人しかいないし、まだ200万人には達していないけど、きっとそのうち行くよ。" userName="steveklabnik" createdAt="2025-02-19T20:23:32" color="">}}

{{<matomeQuote body="何十万人もフォローするわけじゃないけど、興味のある人は誰でもフォローして、主にカスタマイズしたフィードを使うかな。例えば、労働組合のニュースや、俺の実生活のネットワークなどをチェックするためのフィード。" userName="culi" createdAt="2025-02-19T19:31:49" color="">}}

{{<matomeQuote body="コンテンツを全部スクレイプしたいなら、ファイアホースを使うのが適してるし、それは許可されてる。大量フォローの理由はスパム目的だけだね。" userName="ruined" createdAt="2025-02-19T19:01:59" color="#785bff">}}

{{<matomeQuote body="この前提は、スクレイパーが賢いことを想定してるけど、実際はそうじゃないことが多いんだ。彼らはスケールでHTMLをスクレイプするためのインフラを持っていて、それを使う。Wikipediaもトレントでフルアーカイブを提供してるのに、スクレイピングのトラフィックには苦労してるし、同じようにスパマーと“クラウトファーマー”だね。" userName="Retr0id" createdAt="2025-02-19T19:16:24" color="#38d3d3">}}

{{<matomeQuote body="100％同意。俺も求人情報ボードを運営してたけど、ちゃんとしたXMLフィードを提供してても、ボットは標準の検索ボックスを使うことにこだわってた。<br>地理的検索が最も高コストなのに、どんな手を使ってもそいつらをXMLフィードに使わせることができなかった。ボットを検知したときにはフィードへのリンクを返そうとしたけど、全く効果がなかった。" userName="sarchertech" createdAt="2025-02-19T21:43:29" color="">}}

{{<matomeQuote body="BlueSkyには、ボタン一つで大量フォローできるStarter Packsがある。1日に10個のStarter Packに参加すれば、1000人以上をフォローしてしまうこともある。人と関わってもらうには、他人をフォローすることが唯一の手段になることもあるね。" userName="mikemitchelldev" createdAt="2025-02-20T13:34:17" color="">}}

{{<matomeQuote body="それとも、フォローするアカウントの最大数を制限すればいいんじゃない？" userName="tshaddox" createdAt="2025-02-19T20:10:58" color="">}}

{{<matomeQuote body="SNSのやり取りに上限を設定しても、誰かがその上限に達して文句を言うに決まってるよね。Blueskyが“ソフトリミット”を選ぶ理由が分かる気がする。上限を超えると体験が劣化するから、後で調整もできるし、影響力のあるユーザーからのうるさい文句を防げるもんね。" userName="ARandumGuy" createdAt="2025-02-19T20:46:20" color="#38d3d3">}}

{{<matomeQuote body="最初の文句に対して何らかの解決策を講じても、他のことで文句を言う人がいるんじゃないかな。合理的な製品機能を実装して、反対意見に対する文句が出るのは受け入れるべきだと思う。" userName="tshaddox" createdAt="2025-02-19T21:39:55" color="">}}

{{<matomeQuote body="提案としては、ユーザーをシステマティックにフォロー解除できるようにするか、別のフィードに移動させるのがいいかも。例えば、最近の活動や投稿の内容に応じて、自動的に特定の人をフォローすることができるとか…。いろんな基準で分けられれば、もっと使いやすくなるね。" userName="DeepSeaTortoise" createdAt="2025-02-20T11:19:06" color="#38d3d3">}}

{{<matomeQuote body="あるユーザーのプロフィールに行くと、タイムラインにあるべき投稿が見えないことがあるんだよね。Blueskyで100人もフォローしてないのに、やっぱりこの理由で見逃しちゃうのか。まさにロスイだね。" userName="sphars" createdAt="2025-02-19T19:20:29" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
