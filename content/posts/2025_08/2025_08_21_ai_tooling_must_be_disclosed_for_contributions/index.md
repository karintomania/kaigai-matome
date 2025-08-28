+++
date = '2025-08-21T00:00:00'
months = '2025/08'
draft = false
title = 'AIツール利用の成果物、貢献するなら開示必須！'
tags = ["AI", "著作権", "オープンソース", "プログラミング", "倫理"]
featureimage = 'thumbnails/cyan3.jpg'
+++

> AIツール利用の成果物、貢献するなら開示必須！

引用元：[https://news.ycombinator.com/item?id=44976568](https://news.ycombinator.com/item?id=44976568)




{{<matomeQuote body="出所は重要だよ。LLMはDeveloper Certificate of Origin (DCO)<br> (https://en.wikipedia.org/wiki/Developer_Certificate_of_Origi...) を証明できないし、開発者もLLMが出したコードのDCOを保証できない。LLMは訓練データからそのままコピーすることもあるし、意味を”理解”してるわけじゃないからね。Does v Github (https://githubcopilotlitigation.com/case-updates.html) の裁判結果もまだわからないし、LLMはクリーンルーム設計 (https://en.wikipedia.org/wiki/Clean_room_design) もできない。LLM製コードを受け入れると、コミュニティ全体を危険にさらすことになるよ。" userName="jedbrown" createdAt="2025/08/22 01:30:37" color="#ff33a1">}}




{{<matomeQuote body="大規模LLMだと、科学的には逐語的な再現は逐語的な記録からじゃないって証明されると思うな。Anthropicの件でのAlsup判事の裁定みたいに、学習は「非常に変形的」ってね。彼の裁定が維持されれば、出所は問題じゃないかも。でも、他にも著作権の問題はあるよ。著作権局は機械の出力が人間の著作権性に関するFeistテストに失敗することを要求するし。人間の著作権性がどう再定義されるか、オープンソースの小さなパッチがFeistテストを通るのかとか、考えることはいっぱいあるね。" userName="raggi" createdAt="2025/08/22 01:57:30" color="#785bff">}}




{{<matomeQuote body="もし過去30年間、著作権法が人間にもそう適用されてたらそれでいいんだけど、実際は違うよね。OPのクリーンルームリバースエンジニアリングのリンクを見てみてよ。僕はRE出身だけど、間接的に”汚染された”情報をうっかり吸収しちゃうのをみんなすごく恐れてるんだ。それが裁判で不利に使われる可能性があるからね。MLコミュニティって、自分たちに都合がいいように、AIの”学習”が人間の認知と比較できるかどうかについて意見をコロコロ変えるよね。" userName="snickerbockers" createdAt="2025/08/22 06:51:41" color="#785bff">}}




{{<matomeQuote body="じゃあさ、LLMに音楽の歌詞とか本の一部を作らせた場合、エンコードを考慮してもそれらは新しい作品ってことになるの？" userName="j4coh" createdAt="2025/08/22 02:30:25" color="">}}




{{<matomeQuote body="その音楽がRIAAに代表されてるかどうかにかかってるね :)" userName="GCUMstlyHarmls" createdAt="2025/08/22 03:00:09" color="">}}




{{<matomeQuote body="「LLM」ってどんなサイズも含むよね。小さなデータセットだと変形的じゃないかも。でも、膨大なデータで抽象化が進むと、単なる記憶とは違うレベルになる。出力が唯一無二か、感情的価値があるか、って問題もあるし。アメリカ著作権局によると、人間の関与が足りないと出力は著作権なし。でも、著作権問題は複雑で、「複製」が全体にどれだけ影響するかが重要になるんじゃないかな。著作権局が書いた内容はこちら: https://www.copyright.gov/ai/Copyright-and-Artificial-Intell.... 数千トークン規模の完全な複製が頻繁に出るなら問題だけど、今のLLMは意図的な探査なしに大規模な重複を出すことは少ないよ。" userName="raggi" createdAt="2025/08/22 04:26:31" color="#ff33a1">}}




{{<matomeQuote body="「新しい」ってのは、例えばモデルに歌詞やコードを書かせたら、既存の歌詞やコードが出てきた場合、それが大規模モデルに正確にエンコードされてないから、たまたま同じなだけで法的にも安全な「新しい」ものって言えるの？って意味だよ。" userName="j4coh" createdAt="2025/08/22 05:16:53" color="#ff5c5c">}}




{{<matomeQuote body="いや、「新しい」は関係ないと思うよ。どれくらいリスクがあるかは「使う」ってのが何を意味するかとか、たくさんの要因によるね。もし売るって意味で、それが成功したらリスクがあるよ。他のコンテンツと全く同じじゃなくて、似てるだけでもそうなる。誰かが訴訟を起こそうとすれば、著作権は法的費用からほとんど守ってくれないんだ。" userName="raggi" createdAt="2025/08/22 05:45:40" color="#ff5733">}}




{{<matomeQuote body="西洋ではみんなが「ゴミの派生作品」と思っても、それは君のものって言えるし、時にはヒットすることもあるよね。アートって何が「ゴミ」かなんて誰もreliably（確実に）言えないんだから。多くの業界のクリエイターが大手企業にrip off（盗まれ）てるのに、なぜ音楽業界みたいにやらないんだろう？ カバー曲はオリジナル作者に支払い、変形的な派生作品はまずライセンスを取る。これって一番簡単な解決策なのに、スケールしないからってテック界隈はIP乱用とか「変形的だ」って主張してるんだよね。" userName="strogonoff" createdAt="2025/08/22 03:40:42" color="#ff33a1">}}




{{<matomeQuote body="人気曲のロイヤリティフリーカバーばかり作るミュージシャンがたくさんいるジャンルがあるんだ。<br>これはアートじゃない。アートへの寄生だよ。" userName="0points" createdAt="2025/08/22 06:57:05" color="">}}




{{<matomeQuote body="ロイヤリティフリーカバーなんてものはないよ。ちゃんとしたカバーならライセンス料を払えば演奏できるし、演者と原曲作者の両方にロイヤリティが入るんだ。変形カバーは権利者との交渉が必要だよ。会場オーナーとしては、著作権管理団体に年間固定費を払えば好きな曲を流せるし、オリジナルもカバーも変わらないんだ。単に歌いたいパフォーマーがいて、オリジナル曲が少ないだけかもしれないじゃないか。カバーが寄生なら、この君のコメントも議論への寄生ってことになるのか？カフェで聴くカバーは結構いいものが多いし、とても寄生とは思えないな。ビッグテックがIPを乗っ取ろうとするのと比べたら、カバーアーティストなんて寄生の規模が全然違うよ。" userName="strogonoff" createdAt="2025/08/22 08:34:43" color="#ff33a1">}}




{{<matomeQuote body="ちゃんと見てる？彼らはTV、ラジオ、広告向けに曲を安く売ってるんだ。文字通りSpotifyのために働いてるんだよ。" userName="0points" createdAt="2025/08/22 10:15:18" color="">}}




{{<matomeQuote body="それが俺の主張をどう否定するのか、全然わからないな。ラジオ局は会場オーナーと同じで年間固定費を払う。TV番組はライセンスが必要だけど、原曲のソングライターにはロイヤリティが支払われるし、彼らはライセンス契約に意見を言えるんだ。カバーは特定のシーンにオリジナルよりずっと合うこともあるし、オリジナルほどシーンを独り占めしない。WestworldのMotion Picture Soundtrackみたいにね。君はそれが特に寄生だってことをまだ証明できてないと思うよ。正直なカバーの話だけど、少し変えてオリジナルとして出すのは権利者に訴えられるべきだし、Spotifyがそんなことをするとは思えないな。" userName="strogonoff" createdAt="2025/08/22 12:01:26" color="#785bff">}}




{{<matomeQuote body="レストランやバーが、コストがずっと安いから有名曲のカバーバージョンを流すのを知ってるよ。" userName="zvr" createdAt="2025/08/22 14:01:18" color="">}}




{{<matomeQuote body="カフェが特定の曲をいちいちライセンスするなんて、まずないと思うけどね。著作権管理団体に固定料金を払えば、ほとんど何でも流せる包括ライセンスがもらえるはずだよ。アメリカではそんなに高いの？それともこのオプションを知らないのかな？もしカバーアーティストが店の費用を抑え、より良い体験を提供しつつ、元のアーティストにもロイヤリティがちゃんと支払われるなら、それが特に寄生に見えるかい？" userName="strogonoff" createdAt="2025/08/22 14:12:34" color="#45d325">}}




{{<matomeQuote body="俺が話してた例はUSじゃないんだ。レストランやカフェは固定料金を払って特定のカタログ（演奏）にアクセスできる。その料金はカタログの内容次第なんだよ。インストゥルメンタル版（歌手なし、歌詞なし）や無名の人の演奏なら、かなり安くなるって想像できるでしょ。" userName="zvr" createdAt="2025/08/23 10:40:14" color="#785bff">}}




{{<matomeQuote body="会場のビジネスオーナーとして2つの国で仕組みを知ってるけど、料金はかなり手頃だったよ。だから、君の国（USじゃないんだろうけど）では高すぎるのかって聞いたんだ。" userName="strogonoff" createdAt="2025/08/23 12:41:46" color="">}}




{{<matomeQuote body="音楽著作権には歌詞、作曲、録音の3つの側面があるんだ。これらはそれぞれ別の人、あるいは同じ人が所有できる。「ロイヤリティフリーカバー」ってのは、そのうちのどれかの権利を悪用してるんだよ。ロイヤリティを回避してるんじゃなくて、まだ捕まってないだけさ。" userName="withinboredom" createdAt="2025/08/22 10:14:52" color="#45d325">}}




{{<matomeQuote body="カバーの演奏でも、関連するロイヤリティは原曲のソングライターに支払われるはずだと信じてる。演奏料はないけど、ひどい詐取だとは思わないな（だってカバーもアレンジや演奏に労力がかかるからね）。" userName="strogonoff" createdAt="2025/08/22 12:21:58" color="">}}




{{<matomeQuote body="「tvinkle tvinkle ittle stawr」みたいに歌詞をわざと間違って書くことで、法律の抜け道を通ろうとする人がいるって話だけど、こんなテクニック、裁判じゃ絶対通用しないよ。" userName="withinboredom" createdAt="2025/08/22 13:45:51" color="">}}




{{<matomeQuote body="Spotifyが「tvinkle tvinkle ittle stawr」みたいな違法行為をしているとは思えないな。彼らは合法な抜け穴で十分稼いでるし。<br>こんなこと実際にはあんまり聞かないけど、権利者が訴えれば違法になるはず。結局、違法なことをする人はいるけど、今のシステムはちゃんと機能してるよ。" userName="strogonoff" createdAt="2025/08/22 13:51:26" color="#45d325">}}




{{<matomeQuote body="LLMの verbatim reproductionが verbatim recordingからじゃないって分析、いらないでしょ。AI企業は、自分たちのIPが勝手にAIボットに scrapeされるのは許さないのに、他人のデータは「未来のために」全部取り込むべきって言うのは、おかしいよね。:rolleyes:" userName="camgunz" createdAt="2025/08/22 08:22:00" color="#45d325">}}




{{<matomeQuote body="SQLiteが著作権に縛られないようにしてる方法だよ。<br>「プロジェクトはパッチを受け付けないけど、概念実証なら歓迎する。でも、必要なら僕らがゼロから書き直すからね。」だって。source, https://www.sqlite.org/copyright.html" userName="rovr138" createdAt="2025/08/22 22:23:18" color="#785bff">}}




{{<matomeQuote body="コードの書き方なんて限られてるんだよね。高校のプログラミングコンテストで、僕と友達のコードが変数名やインデントまで全く同じで問題になったことがあったよ。お互い盗んでないのにさ。" userName="jojobas" createdAt="2025/08/22 01:44:12" color="">}}




{{<matomeQuote body="コードは自由であるべき、って思ってる人もいるんだよ。20年前は、公開されてるコードはみんな自由に使えるってのが当たり前だったし、こんな問題なかったもん。" userName="Aeolun" createdAt="2025/08/22 09:05:31" color="#38d3d3">}}




{{<matomeQuote body="LLMは clean room designに使える可能性もあるよ。<br>訓練データが全部 clean room内にある場合や、訓練が複製対象の著作物より前に完了した場合だね。LLMの出力が著作権汚染されるって話は分かるけど、必ずしも clean-room reverse engineerができないわけじゃないってこと。" userName="Borealid" createdAt="2025/08/22 02:30:12" color="#ff33a1">}}




{{<matomeQuote body="「特定の著作物だけを気にすればいい」って前のコメントは違うよ。著作権のあるあらゆる作品をコピーしないように、有効なライセンスをちゃんと守る必要があるんだから。" userName="account42" createdAt="2025/08/22 08:17:20" color="#38d3d3">}}




{{<matomeQuote body="clean room reverse engineeringの「clean room」は、特定の trade secretに関するものだよ。著作権とは違う。clean roomがあったって、従業員が過去に見た作品をコピーしちゃったら、著作権侵害になるんだからね。clean roomは licenseと trade secretに関わること。" userName="Borealid" createdAt="2025/08/22 09:47:38" color="#ff5c5c">}}




{{<matomeQuote body="「AI」を使うとIP taintがあるのに、みんな見てないふりしてるよね。<br>「この分野のオープンソースコード全部覚えたから、コマンド一発で吐き出せるよ」って人がいたら、会社じゃコード作業禁止するはずなのに、「AI」だと「AIがやったから大丈夫！」って理屈で、GPLとかのコードを洗濯してるのを無視してる。これ、IPを大事にする会社には致命的でしょ。" userName="neilv" createdAt="2025/08/21 19:26:17" color="#ff5733">}}




{{<matomeQuote body="米国の裁判所はAIの学習データ利用を変革的だと判断してるんだ。IP法を社会のニーズに合わせて再考するのは大変だけど、それが絶対必要だよ。もう後戻りはできないってことだね。" userName="ineedasername" createdAt="2025/08/21 19:57:25" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="AIが生成したコードが他人のコードとそっくりだったり、独自アルゴリズムを使っていたら、AIが作ったと言っても裁判で負けるよ。AIはGitHubのプライベートリポジトリからコードをパクってるし、俺も実際すごいコードをAIに吐き出されたことがある。" userName="bsder" createdAt="2025/08/21 21:39:29" color="#45d325">}}




{{<matomeQuote body="AIがIPを生成すれば人間よりずっと安くできるから、利益が少なくても成り立つんじゃない？あとはトレードシークレットを使ったり、SaaSみたいにリモートでサービス提供すればIPを保護できるかもね。でも、これはソフトウェア限定の話で、本や音楽には使えないよ。" userName="eru" createdAt="2025/08/22 00:18:55" color="#38d3d3">}}




{{<matomeQuote body="アメリカでは、人間のちゃんとした貢献がないと著作権で保護されるIPは作れないよ。詳しくはここで確認してね。<br>https://www.copyright.gov/ai/Copyright-and-Artificial-Intell..." userName="raggi" createdAt="2025/08/22 02:12:14" color="#ff33a1">}}




{{<matomeQuote body="GPT-5が新しい数学を発明したって話があるのに、それがすでに誰かの論文にあったなんて言うのは、さすがに無理があるんじゃないかな。数学者が知らなかった論文に載ってた、なんて考えはかなり飛躍してるよ。" userName="rowanG077" createdAt="2025/08/21 22:56:06" color="">}}




{{<matomeQuote body="それってStackOverflowとか、この分野の教科書を全部禁止するようなもんじゃない？プログラマーが他のプログラマーのコードを見るのは当たり前の現実なんだからさ。" userName="luma" createdAt="2025/08/21 19:27:39" color="">}}




{{<matomeQuote body="Redditはユーザーの投稿をAIで翻訳して、Google検索の結果として出してるんだ。Redditがユーザーコンテンツの著作権を主張してるのか、AI翻訳の著作権を主張してるのかはっきりしないけど、ユーザーには報酬を払ってないみたいだよ。広告収益もXみたいに分配してないから、結局ユーザーには関係ない話だよね。<br>https://news.ycombinator.com/context?id=44972296" userName="aspenmayer" createdAt="2025/08/22 04:20:30" color="#ff5c5c">}}




{{<matomeQuote body="Redditはずっとユーザーに敵対的な会社だよ。利用規約で、ユーザーのコンテンツを世界中でロイヤリティフリーで永続的に使えるライセンスを取得してるんだ。AIの学習データに使う権利も含まれてる。FAANGよりもひどいのに、みんな目を背けてるのが不思議だね。" userName="raggi" createdAt="2025/08/22 05:36:18" color="#ff33a1">}}




{{<matomeQuote body="LLMが新しい知識を発見したなんて、今までなかったことだよ。それがトレーニングデータの中にあった情報だっていう考えは、かなり飛躍しすぎじゃないかな？" userName="jakelazaroff" createdAt="2025/08/22 00:15:04" color="">}}




{{<matomeQuote body="AIを使うとIP汚染があるって思ってるのは、それで儲けたい人たちだけだよ。ほとんどの人はそんなこと気にしてないし、法律もAIの進歩を止めてないから大丈夫でしょ。" userName="tick_tock_tick" createdAt="2025/08/21 19:49:27" color="">}}




{{<matomeQuote body="AIモデルを学習させるのと、AIモデルを使うのは全然違うことだよ。" userName="Hamuko" createdAt="2025/08/21 21:01:23" color="">}}




{{<matomeQuote body="IPが生み出されることで経済が回るって社会的な願望はまだ固まってないのに、法律はもう決着済みって思うのは変だよね。" userName="slg" createdAt="2025/08/22 01:29:27" color="">}}




{{<matomeQuote body="IP/著作権問題が「ふり」だなんて、意見が違う人にひどい言い方じゃない？俺や多くの人が問題ありって思ってるんだよ。混乱を利用しようとする側にこそ私欲があるわけで、この非難はまさに「お前が言うな」って感じだね。" userName="neilv" createdAt="2025/08/21 20:12:50" color="#ff5c5c">}}




{{<matomeQuote body="米国の裁判所が学習データ使用を「変革的」と判断したって話は、まだ決着してない法律を誤解させてるよ。AIが他社のコードをそのまま出しちゃうリスクはマジであるからね。" userName="alfalfasprout" createdAt="2025/08/21 20:17:14" color="#45d325">}}




{{<matomeQuote body="「AIが作ったコードでも、誰かのと一緒なら負ける」って言うけど、数行なら引用と同じで侵害じゃないよ。LLMは複雑なアルゴリズムも作れるし、それを「AIじゃない」って言うのはちょっと違うんじゃないかな。" userName="ineedasername" createdAt="2025/08/21 22:43:17" color="#ff33a1">}}




{{<matomeQuote body="「見る」のと「コピーする」のは違うんだよ。StackOverflowを見て理解するのはいいけど、ライセンス無視してコピペするのはダメ。StackOverflowのコンテンツはCC-by-saライセンスだよ。詳細はここ: https://stackoverflow.com/help/licensing" userName="JoshTriplett" createdAt="2025/08/21 19:53:28" color="#ff5c5c">}}




{{<matomeQuote body="はっきりさせておきたいんだけど、作家やアーティスト、コーダーみたいにIPを作る人たちが経済的に自立できる社会ってのは、みんなが支持してる考えだと思うんだ。公開されたら全部タダで使っていい、なんて意見は一般的じゃない。これが大前提で、あとは細かいルールの話だよね。" userName="ineedasername" createdAt="2025/08/22 01:46:50" color="#ff5c5c">}}




{{<matomeQuote body="AIがまるごと本を吐き出すなんてことはないよ。意図的に促さないと、特定のリポジトリのコードをそのまま出すこともほぼ無理。NYTとOpenAIの訴訟でも、部分的な再現は意図的なプロンプトが必要だったんだ。モデルはデータを圧縮してるわけじゃなくて、次のトークンを予測する数学的な計算方法を持ってるだけ。数行のコードが出たところで、それは著作権侵害じゃないよ。全体の一部だし、同じ機能なら実装が似るのはよくあることだからね。" userName="popalchemist" createdAt="2025/08/21 20:30:40" color="#785bff">}}




{{<matomeQuote body="学習データを使うことが「変革的」なのはわかるけど、AIの出力が自動的に侵害にならないってわけじゃないよ。モデルに著作物をコピーさせたら、それは侵害になるはず。本を覚えても侵害じゃないけど、記憶から再現したら侵害、ってのと同じだよ。" userName="shkkmo" createdAt="2025/08/22 00:45:24" color="#ff33a1">}}




{{<matomeQuote body="ある見方をすれば、これはユーザー中心の考え方で、言語の壁を越えて、読み書きできるすべての人にサービスを広げるってことだね。どんな良いことにもマイナス面があるって意味で、これは覚えておくべき重要な点だよ。" userName="aspenmayer" createdAt="2025/08/22 05:40:57" color="">}}




{{<matomeQuote body="それってどうして明らかに専有物なの？AIが自分で書けなかったって暗黙に仮定してない？" userName="Filligree" createdAt="2025/08/21 22:43:41" color="">}}




{{<matomeQuote body="ふむ…”変形的”って必ずしも”派生的”じゃないの？AIの学習って、圧縮アルゴリズムが辞書を作ってデータを圧縮するのと大きく違わない気がするんだけど。でもJPEG圧縮は”変形的”って誰も言わないよね。何十億もの著作権画像に対して非可逆圧縮をして”辞書”を学習させられる？" userName="BobbyTables2" createdAt="2025/08/22 01:44:50" color="#ff33a1">}}




{{<matomeQuote body="＞ 社会は一般的に、作家、アーティスト、映画制作者、Codersなどが支援されるべきと考えているけど、Codersはコードが実行されるたびに報酬をもらうわけじゃないよね。なんで異なる権利を一緒くたにするの？" userName="ekianjo" createdAt="2025/08/22 04:38:15" color="">}}




{{<matomeQuote body="ユーザー中心ってのは、ユーザーに選択肢を与えることだよね。本当にそれくらいシンプルだよ。力のある立場から人に何かを強制するのは、彼らのためになることなんて絶対にない。" userName="martin-t" createdAt="2025/08/22 11:18:11" color="">}}




{{<matomeQuote body="CC BY-SA 4.0は”コードと互換性がある”よ。例えば、GPLと互換性があるんだ（詳しくは https://wiki.creativecommons.org/wiki/ShareAlike_compatibili... を見てね）。ただ、コード向けに設計されてるわけじゃないだけ。" userName="wizzwizz4" createdAt="2025/08/21 22:39:19" color="#45d325">}}




{{<matomeQuote body="https://medium.com/@deshmukhpratik931/the-matrix-multiplicat...<br>トップジャーナルに掲載される論文のかなり（40%？）がAIの応用を含んでいるのは偶然じゃないよね。" userName="rerdavies" createdAt="2025/08/22 14:44:01" color="">}}




{{<matomeQuote body="libgenに海賊版の書籍を公開するのと、libgenから海賊版の書籍をダウンロードするのは違うよ。どちらも合法じゃないけどね。" userName="ryukoposting" createdAt="2025/08/21 22:30:14" color="">}}




{{<matomeQuote body="＞ 本を丸ごと吐き出すのと変わらない<br>こんな感じ？MetaのLlama 3.1はハリー・ポッター第1巻の42%を思い出せるんだって — https://news.ycombinator.com/context?id=44972296 — 67日前（コメント313件）" userName="aspenmayer" createdAt="2025/08/22 04:38:42" color="#ff5733">}}




{{<matomeQuote body="この記事は、僕が兄弟コメントで言及したことと同じ内容だね。個人的には、再現性のないGoogleのホワイトペーパーは説得力のある証拠だとは思わないな。" userName="jakelazaroff" createdAt="2025/08/22 16:49:29" color="">}}




{{<matomeQuote body="Redditアカウントが必須だとは思わないな。Redditユーザーとして、クールだと思うし、いくつか懸念もあるよ。ユーザーデータを扱うほとんどのサイトには、問題があるだろうね。ユーザーコンテンツでお金を稼ぐことは、常に問題がつきまとうものだよ。" userName="aspenmayer" createdAt="2025/08/22 19:18:57" color="">}}




{{<matomeQuote body="mitchellhの未経験の人をコーチしてPRを通すって姿勢、すごくいいと思うんだよね。ジュニア開発者に成長の機会を与えるフィードバックって大切だけど、AIに丸投げして何も学ばないんじゃ、せっかくの指導も無駄になっちゃうよ。" userName="andruby" createdAt="2025/08/21 20:28:22" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ジュニア開発者ってさ、AIを使わないなんてありえない職場で働き始めるんだから。" userName="ants_everywhere" createdAt="2025/08/21 23:10:12" color="">}}




{{<matomeQuote body="さっきの『ジュニア開発者はAIを使い続ける』って意見、すごいUS寄りだよね。俺が見る限り、多くの人はAIが派手なアプリ以外で本当に使えるのか、結構疑ってるよ。" userName="aleph_minus_one" createdAt="2025/08/22 12:59:14" color="">}}




{{<matomeQuote body="世界の半分はUSよりAIにポジティブだよ。だって、中国人の4%くらいしかAIを心配してないのに、アメリカ人だと半分くらいが心配してるんだからね。" userName="MacsHeadroom" createdAt="2025/08/25 17:24:30" color="#ff5c5c">}}




{{<matomeQuote body="うん、それってさ、ジュニアパイロットがオートパイロットを使わない職場なんてないように、当然のことだよね。" userName="tpoacher" createdAt="2025/08/22 08:58:55" color="#38d3d3">}}




{{<matomeQuote body="AIを全然使うなってことじゃないと思うけどな。彼はAIがPR全部をやるのは望んでないだけでしょ？" userName="eru" createdAt="2025/08/22 00:23:47" color="">}}




{{<matomeQuote body="GhosttyのAI開示ルール、『どんなAI支援でも開示必須！』ってのが曖昧で、タブ補完もか？ってなってるよ。『単一キーワードなら軽いタブ補完は不要』って言うけど、正直このポリシー、変だね。ジュニア開発者はAIでのコーディングを学ぶべきだし、それが今どきのやり方なのにさ。親切さが大事って言う割に、今の環境への適応を助けるのは無駄ってのは矛盾してると思うな。" userName="ants_everywhere" createdAt="2025/08/22 00:32:41" color="#45d325">}}




{{<matomeQuote body="開示するからって、必ずしも却下されるわけじゃないんだよ。レビュアーへの単なる合図みたいなもんだからさ。" userName="0x6c6f6c" createdAt="2025/08/22 01:21:28" color="">}}




{{<matomeQuote body="問題はさ、『AI利用の開示が本当に役立つシグナルなのか』ってことだよね。俺は違うと思う。正直、AIアシスタントを日常使いしてるシニア開発者としては、そんなポリシーのリポジトリにはPRを出す気になれないな。良いPRって、修正自体よりずっと大変なんだよ。コーディングアシスタントを使ったってだけでPRが通らない可能性があるなら、もうPR出すのやめちゃうかも。" userName="rerdavies" createdAt="2025/08/22 15:05:13" color="#45d325">}}




{{<matomeQuote body="『ジュニア開発者はAIとコード書くべき、それが今のコーディングだから』って話だけどさ。むしろ『それって一部のSilicon Valleyのバブルの中での話だろ？』って言いたいね。" userName="aleph_minus_one" createdAt="2025/08/22 12:59:11" color="">}}




{{<matomeQuote body="AIの出力が良いか悪いかを見極める力は、やっぱり人間が学ぶ必要があるよね。" userName="hagbarth" createdAt="2025/08/22 07:12:58" color="#ff33a1">}}




{{<matomeQuote body="問題が実際に起きたらルールを細かく調整すればいいんだよ。議会で法律を通すわけじゃないしね。" userName="makeitdouble" createdAt="2025/08/22 01:11:11" color="">}}




{{<matomeQuote body="今日は良い日！HNのトップページに現実的なAIの体験談がたくさん。個人のPCではAIアシストをオフにして、仕事では控えめに使うよ。複合的な作業には向かないけど、単体作業は得意だね。結局、AIはそれを扱う人間の知能次第ってこと。" userName="thallavajhula" createdAt="2025/08/21 19:27:26" color="#785bff">}}




{{<matomeQuote body="「AIはそれを扱う人間の知能次第」っていう意見にだんだん賛同してきたよ。AIって魔法じゃないから、チームメンバーにも説明が苦手な人がAIに価値ある情報伝えられるわけないよね。AIでエンジニアのレベルが上がるって期待してたけど、むしろ普通のエンジニアとすごいエンジニアの差を広げそう。複雑だけど、AIが役立たないって意見も理解できるようになったよ。" userName="tick_tock_tick" createdAt="2025/08/21 19:44:15" color="#ff5733">}}




{{<matomeQuote body="AIとエンジニアの関係をこう考えてみたよ。<br>優れたエンジニア + AI = 優れたエンジニア++<br>良いエンジニア + AI = 良いエンジニア<br>普通のエンジニア + AI = 並以下のエンジニア<br>優れたエンジニアは、単なるコーダーじゃなく、コミュニケーションもコラボレーションも学習意欲も高い人のこと。" userName="btucker" createdAt="2025/08/21 20:03:51" color="#ff5c5c">}}




{{<matomeQuote body="仕事でAIを大規模に使うのに苦労してたけど、妻にAndroidアプリ開発を頼まれたんだ。KotlinもAndroid UIも知らないけど、AIを使ったら8時間で家族向けアプリがほぼ完成！これはすごい。AIは得意な分野とそうじゃない分野があるんだね。仕事の複雑なプロジェクトでは、小さなプロンプトから大量のコード生成ってわけにはいかない。でも、知らない言語や環境でAIを使ってみるのはおすすめだよ。AIが唯一のツールだから、強制的にAIを使いこなせるようになるよ。" userName="jerf" createdAt="2025/08/21 20:00:08" color="#ff5c5c">}}




{{<matomeQuote body="「OK」と「並以下」って違いあるの？" userName="aydyn" createdAt="2025/08/21 20:10:21" color="">}}




{{<matomeQuote body="AIが複雑な作業でうまく機能しないのは、ツールの限界だよ。もしコードベースの構造や履歴を要約して、必要な部分をAIに渡せるシステムがあれば、Androidアプリみたいにうまくいくはず。Androidの定型コードは学習データに豊富にあるけど、個別のプロジェクトはそうじゃないからね。コードベースでモデルをファインチューニングすれば、同じ結果が出せるよ。複雑なプロジェクトでAIが使えないのは、AIの仕組みの問題じゃなくてツールの問題だね。C++で数ヶ月かかったプロジェクトを、知らないGo言語でAIを使って週末で書き直せたとき、AIのすごさに納得したよ！" userName="adastra22" createdAt="2025/08/21 20:51:52" color="#ff33a1">}}




{{<matomeQuote body="エンジニアじゃない人 + AI = 今やエンジニア！これがAI企業の評価が高い理由だね。" userName="geodel" createdAt="2025/08/21 20:26:07" color="#ff33a1">}}




{{<matomeQuote body="「OK」はだいたい十分だけど、もっと良くできる感じ。「並以下」はただ単に不十分ってことだね。" userName="BolexNOLA" createdAt="2025/08/21 20:22:18" color="">}}




{{<matomeQuote body="AIの能力は将来もっと上がると思う。今のLLMじゃ構造的に無理だけど、いつかシステムやアーキテクチャを“真に”理解する次世代AIが出てくるはずだ。それがいつかは不明だけどね。ただ、何をどうしたいかを正確に伝える情報理論的な限界は、コミュニケーションの根本だから、AIでも大きな壁になるだろうね。問題を詳細に理解するスキルは、しばらくなくならないよ。" userName="jerf" createdAt="2025/08/21 20:58:51" color="#ff5c5c">}}




{{<matomeQuote body="AIに頼りすぎると、自分のスキルが落ちる自己デスクスキル化になっちゃうと思うんだ。常に学んで、間違いから覚えてる優秀なエンジニアなら問題ないけど、AIに判断を100%任せてたら、その人は凡庸なエンジニアになるだろうね。" userName="biophysboy" createdAt="2025/08/21 20:15:40" color="#45d325">}}




{{<matomeQuote body="君が言ってることは、新規開発（グリーンフィールドプロジェクト）はAIにすごく向いてるけど、既存改修（ブラウンフィールドプロジェクト）はかなり難しいっていう考えと合ってる気がするね。" userName="smokel" createdAt="2025/08/21 20:24:22" color="">}}




{{<matomeQuote body="知らない言語や環境でAIを使うと、細かいことにこだわらなくなるって良い洞察だね。僕もデジタルファイルを検索に頼ってフォルダ分けをやめたように、AIが作ったコードも正しくて、安全で、動けば見た目はどうでもいい。僕の役割はコードを書くことじゃなくて、システム設計と仕様に集中することだと思ってるよ。" userName="thewebguyd" createdAt="2025/08/21 20:28:35" color="#45d325">}}




{{<matomeQuote body="株式市場が“技術力”を正しく評価できるなんて、絶対に信じられないことの一つだよ。OpenAIの価値を決めてるような人たちは、たぶんiPadの初期設定すら苦戦するんじゃないかな。" userName="ToucanLoucan" createdAt="2025/08/21 20:30:04" color="#38d3d3">}}




{{<matomeQuote body="Stack Overflowをコピペして、何でそう動くのか理解せずに使ってた人たちが、今度はAIを使って、やっぱり何をやってるか理解せずに作ってるんだよね。" userName="QuercusMax" createdAt="2025/08/21 20:25:07" color="">}}




{{<matomeQuote body="僕は「情報理論的な障壁」は感じないな。<br>(1)AIは人間と組むと「問題を詳細に理解する」のがすごく得意だよ。僕の曖昧な指示を詳細なプロンプトにしてくれるんだ。<br>(2)コンテキスト管理は検索とインデックスの問題で、解決可能な領域だよ。AIの内部的な限界じゃなくて、コンテキストの扱い方の問題だね。" userName="adastra22" createdAt="2025/08/21 21:13:30" color="#38d3d3">}}




{{<matomeQuote body="ブラウンフィールドプロジェクトが難しいのは、コードに直接定義されてないコンテキストや決定事項がたくさんあるからだよ。テストがしっかりあって、良いドキュメントがあるプロジェクトなら、人間にとってもAIにとっても理解しやすいはず。でも、規律のない人がAIを使い始めてプロジェクトがめちゃくちゃにならないように、全体像を把握してる人が必要だね。" userName="QuercusMax" createdAt="2025/08/21 20:28:35" color="#ff33a1">}}




{{<matomeQuote body="「mediocre（凡庸）」って言葉には、ひどいって意味もあるけど、そこそこ、普通、悪くない、みたいな意味もあるんだよ。" userName="furyofantares" createdAt="2025/08/22 02:47:50" color="">}}




{{<matomeQuote body="最近、中堅エンジニアがAIでコードを要約して、メソッドとかのドキュメントを大量に作ってたんだけど、すごく時間の無駄だと思ったよ。コード自体は読みやすかったし、AIが作ったドキュメントはpydocと大差ないんだ。時間をかけるなら、コードを読んで、足りないドキュメントを改善したり、チームメイトに必要なコンテキストを聞いたりするべきだったね。" userName="QuercusMax" createdAt="2025/08/21 20:23:50" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
