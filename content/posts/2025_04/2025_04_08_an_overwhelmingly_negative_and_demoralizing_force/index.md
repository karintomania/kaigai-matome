+++
date = '2025-04-08T00:00:00'
months = '2025/04'
draft = false
title = 'AI開発の現場はもう限界！？ 圧倒的な負の力に現場から悲鳴続出'
tags = ["AI", "開発", "プログラミング", "生産性", "人材育成"]
featureimage = 'thumbnails/orange_pink2.jpg'
+++

> AI開発の現場はもう限界！？ 圧倒的な負の力に現場から悲鳴続出

引用元：[https://news.ycombinator.com/item?id=43619759](https://news.ycombinator.com/item?id=43619759)

{{<matomeQuote body="俺はいつも、diffで緑より赤の行が多い開発者を目指してきたんだよね。宣言的に何百もの結合テストを作成できるように、ライブラリを書くのが好きなんだ。2日間姿を消して、ループ変数を2つ入れ替えるだけで10倍のスピードアップを実現したりする。でも、今の環境じゃ俺の居場所はないかも。AIを使って大量のコードを書けないわけじゃないけど、AIを使うと成功の指標がスピード・トゥ・プロダクションになっちゃうんだもん。ダメなコードの解決策が、さらに多くのコードってことになってるし。AIは絶対削除なんてしないよ。発表しなきゃ死ぬ、みたいな風潮が俺たちにも押し寄せてきてて悲しい。まるで俺のPythonプログラミングがメインフレームの人たちを時代遅れにさせたみたいで、年取った気分だよ。AI開発者を時代遅れにするのは何なんだろうな…。" userName="justonceokay" createdAt="2025-04-08T13:12:25" color="">}}

{{<matomeQuote body="AIは絶対に削除しないってことはないよ。実際、俺はよくAIを使って削除してるし。コードをコピーして、AIにコードを単純化または簡潔にするように指示するんだ。すると、通常、コード行数が減るよ。<br>AIがコードから機能全体を削除しないという意味なら別だけど。でも、AIにそう指示すればそれもできる。問題は、企業が削除することに十分な価値を置いてなくて、新機能を追加することだけに焦点を当ててることだと思うな。それはAIの問題じゃないけどね。" userName="ajjenkins" createdAt="2025-04-08T14:57:14" color="#ff33a1">}}

{{<matomeQuote body="俺はLLMで生成されたコードの大ファンじゃないけど、GPが「AIは絶対に削除しない」って断言してるのは、明らかに間違ってるのに、他の意見を鵜呑みにするのが難しい。あと、俺の同僚にもN日間姿を消すやつがいたけど、その間に要件が変わって(ビジネスではよくあること)、コミュニケーション不足のせいで彼の仕事は新しい要件と互換性がなくなってた。だから、誰かが真空状態で10倍のスピードアップを達成したからといって、必ずしも良いこととは限らないんだよ。" userName="Freedom2" createdAt="2025-04-08T16:00:18" color="">}}

{{<matomeQuote body="アーキテクチャ宇宙飛行士になるリスクにも注意が必要だよね。テスト用の宣言型フレームワークは、場合によっては理にかなってるかもしれないけど、多くの場合、1回か2回しか使わないものをスクリプト化する複雑な方法になるだけだよ。そして、いざ使うときには、結局メンテナに電話して助けを求める羽目になるんだ。もちろん、メンテナは必要とされてるって感じられて嬉しいんだけどね。" userName="fifilura" createdAt="2025-04-08T16:19:27" color="">}}

{{<matomeQuote body="Copilotをしばらく使ってみたんだけど、これは本当に感動したことの一つなんだよね。ごちゃごちゃしたコードの塊を、不要なものを削除して単純化するのがすごく得意で、時には1行のlambdaにまで減らすこともあった。すごく役に立つよ！" userName="ryandrake" createdAt="2025-04-08T15:15:53" color="#ff5733">}}

{{<matomeQuote body="＞時には1行のlambdaにまで減らすこともあった。<br>お願いだから、それはやめてね！読みやすいコードは、賢いコードよりも優れてるんだから！" userName="buggy6257" createdAt="2025-04-08T16:36:03" color="">}}

{{<matomeQuote body="まさか、こんなコード見たことないって言うんじゃないよね？<br>var ageLookup = new Dictionary<AgeRange, List<Member>>();<br>foreach (var member in members) {<br> var ageRange = member.AgeRange;<br> if (ageLookup.ContainsKey(ageRange)) {<br> ageLookup[ageRange].Add(member);<br> } else {<br> ageLookup[ageRange] = new List<Member>();<br> ageLookup[ageRange].Add(member);<br> }<br>}<br><br>こんなふうに書けるのに：<br>var ageLookup = members.ToLookup(m => m.AgeRange, m => m);" userName="n4r9" createdAt="2025-04-09T09:44:43" color="#ff5733">}}

{{<matomeQuote body="俺はこう思うな。<br>var ageLookup = new Dictionary<AgeRange, List<Member>>();<br>foreach (var member in members) {<br> ageLookup.getOrCreate(member.AgeRange, List::new).add(member);<br>}<br><br>こっちの方が長期的には読みやすい…（覚えるべき定義済みのメソッド/概念が少ないから）。" userName="davidgay" createdAt="2025-04-10T03:32:59" color="">}}

{{<matomeQuote body="`getOrCreate`ってどこで定義されてるの？カスタムの拡張メソッド？それに、もしかしたら俺たちは違う言語で考えてるのかも。俺はC#を書いてるけど、そっちはC++っぽい？<br>読みやすさには、親しみやすさだけでなく、簡潔さも含まれる。コードベースで他に何が起こってるかにもよると思うけどね。俺のソリューションの一つに、`ToLookup`が15回も使われてるデータベースアクセスclassがある。確かに概念を学ぶ必要はあるけど、組み込みメソッドだし、理解してしまえば大きなメリットになるんだ。" userName="n4r9" createdAt="2025-04-10T07:28:24" color="#ff5733">}}

{{<matomeQuote body="lambdaの方が読みやすい場合もあるよ。”lambda x : x if x else 1”はかなり理解しやすいし、別に定義された関数にする必要はないよね。<br>開発スタイルはツールにも依存するってことも言っておくべきかな。IDEでインライン関数が読みやすく表示されるなら、簡潔に定義されたlambdaを使っても問題ないと思う。結局のところ、読みやすさはある程度個人的な好みだからね。" userName="throwaway889900" createdAt="2025-04-08T16:55:27" color="#45d325">}}

{{<matomeQuote body="俺のめっちゃクレバーな一行野郎も、説明を付け足さないと後で見返したときマジわかんなくなるんだよねー。" userName="gopher_space" createdAt="2025-04-08T21:33:55" color="">}}

{{<matomeQuote body="特にAIが生成した「クレバー」なコードはヤバい！<br>人間が書いたクレバーなコードなら、まだ誰かが理解してるって信じられるけど、AIが生成した「クレバー」なコードを信じるなんて考えただけで鳥肌立つわ。" userName="bluefirebrand" createdAt="2025-04-08T16:50:19" color="#ff33a1">}}

{{<matomeQuote body="あと、まともな人間がやらかすミスって、他の人間が予測、認識、理解できるように、ある程度ロジックに沿ってるんだよね。" userName="Terr_" createdAt="2025-04-09T01:00:13" color="#ff33a1">}}

{{<matomeQuote body="誰だよ、AIに言われたゴミみたいなコードをそのまま受け入れて、理解もせずにCLにsubmitするエンジニア達は？<br>そもそも、LLMを使う前のコードの方がマシだったのかよ？" userName="vkou" createdAt="2025-04-09T06:58:58" color="">}}

{{<matomeQuote body="一行のlambda式よりも、無駄な処理がいっぱいの10行のクソコードの方が分かりやすいって誰が言ってんだ？" userName="jcelerier" createdAt="2025-04-09T00:15:14" color="">}}

{{<matomeQuote body="これってただの俺の投影かもだけど…。<br>u/justonceokay's が言ってた＞悪いコードの解決策は、もっとコードを書くこと”<br>Gen-AIは「粗悪品」の大量生産をさらに自動化してるだけじゃね？<br>u/justonceokay's ＞AIは削除を生み出さない”<br>Gen-AIは、コードの必要性をなくせるのか？<br>従来の品質保証の役割を果たせるのか？まだ無理だよね。Gen-AIはITとかデータ処理の猿マネは絶対にできる。" userName="specialist" createdAt="2025-04-08T18:29:51" color="#45d325">}}

{{<matomeQuote body="＞Can Gen-AI, moot the need for code?<br>面接で、プロジェクトを潰した話をしたら、半分の人が理解してくれなかった。クライアントに神だと思わせるメリットを説明する必要があった。 wisdomとか長期的な思考が評価されない時代に、AIに賢さを求めるのはナンセンス。" userName="gopher_space" createdAt="2025-04-08T22:07:59" color="">}}

{{<matomeQuote body="マネージャーは知識労働者とは別じゃない。AIがwisdomを扱えるなら、AIの使用を求めるマネージャーのほとんどを置き換えるだろうね。" userName="roenxi" createdAt="2025-04-09T03:27:17" color="#785bff">}}

{{<matomeQuote body="＞Can Gen-AI, moot the need for code?<br>SICP読めば「プログラムは人が読むために書かれるべきで、機械が実行するのはついでだ」って言葉が出てくる。コードは数学や音楽の記号みたいなもん。Gen-AIは電子的な友達を作るだけ。アイデアを共有するにはプログラミング言語が必要。" userName="bitwize" createdAt="2025-04-09T06:34:40" color="#38d3d3">}}

{{<matomeQuote body="＞if you read your SICP you will come across the aphorism that “programs must be written for people to read, and only incidentally for machines to execute.”<br>AIがAIに読ませるための履歴書を書くように、AIがAIにしか読めないコードを生成する時代が来るのかもね。" userName="teamonkey" createdAt="2025-04-09T08:12:52" color="#785bff">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="もしかしたらねー。AIの最終形態は映画『Her』のラストみたいになるんじゃないかなって想像してる。AI同士が連携して、人間には理解できない方法でコミュニケーションを取り、超越した存在になるんだ。で、人間は取り残されて、ただ人間的なことをして過ごす、みたいな。" userName="bitwize" createdAt="2025-04-09T08:43:36" color="">}}

{{<matomeQuote body="＞見えなかったのは、彼が目立つためにpushした未テストのSQLクエリとかregexとか設定ミスで俺たちが経験した寝不足の日々だったんだよね。結局、エッジケースのテスト不足と、早くリリースしたがる姿勢が原因。<br>もしこれをやったら自分の首を絞めることになるよ。マネジメントに失敗と修正にかかる時間を見せないと、彼らは新しいおもちゃは全部順調だと思い込んで、その計画をみんなに押し付けて、本当のコストとメリットに気づかないんだ。" userName="pja" createdAt="2025-04-08T13:29:11" color="#ff5733">}}

{{<matomeQuote body="会社が10倍のスピードアップを評価するなら、君はこの環境で絶対に活躍できる場所があるよ。ただ、AIが生成する構造化されていないものから問題を見つけ出すのは大変だから、2日じゃなくて5日かかるようになるかもね。" userName="AnimalMuppet" createdAt="2025-04-08T14:52:48" color="">}}

{{<matomeQuote body="もし、お金を全部握ってる人とか、お金を得るのが仕事の人と一緒に働いたことがあるならわかると思うけど、市場に出すまでの時間が最重要視されることが多いんだよね。明日リリースできるものを、1か月後に出すよりも、AIの粗悪品を量産する方がずっと価値があるんだ。<br>LevelsIOのフライトシミュレーターはひどかった。でも彼の費用対効果はめちゃくちゃ高いから、ビジネスマンなら、彼の成功を真似しようとしないのは脳死だよ。" userName="bitwize" createdAt="2025-04-09T04:26:14" color="#ff5733">}}

{{<matomeQuote body="LLMがコーディングにもたらしてる影響って、インターネットとかアテンションエコノミーがジャーナリズムにもたらした影響に似てる気がする。" userName="bookman117" createdAt="2025-04-09T05:34:13" color="#ff5733">}}

{{<matomeQuote body="＞AIの利用によって、成功の指標はスピード・トゥ・プロダクションになった<br>ほとんどの会社で昔からそうじゃなかったっけ？早く市場に出して、すぐに機能を追加して、売って、さらに機能を追加する、みたいな？" userName="DeathArrow" createdAt="2025-04-08T15:16:30" color="">}}

{{<matomeQuote body="LLMのコード生成がKubernetesとかLinuxみたいなオープンソースプロジェクトにどんな影響を与えるのか気になるな。" userName="candiddevmike" createdAt="2025-04-08T14:53:41" color="">}}

{{<matomeQuote body="LinusがLLMについてどう思ってるのか、まだよく知らないんだよね。気になる。<br>彼が生成するコードは、彼が考える基準に満たないコードの歴史から考えると、LLMが生成するコードには感銘を受けてないんじゃないかなーって思うけど、わかんないや" userName="bluefirebrand" createdAt="2025-04-08T15:09:12" color="">}}

{{<matomeQuote body="AIの粗悪コードのデバッグとか、パフォーマンスチューニングとか、リント（または動的型付け言語の型チェッカー）の厳格さを上げてバグを追い出すとか、そういう分野はまだ需要があると思うな。より良い保証をしてくれる言語/ランタイムの必要性もね。<br>今はハイプサイクルの初期段階だよ。技術的負債の問題は1、2年後に表面化するだろうね。" userName="NortySpock" createdAt="2025-04-08T14:20:08" color="#45d325">}}

{{<matomeQuote body="＞AIの粗悪コードのデバッグとか、パフォーマンスチューニングとか…<br>ああ、メンテナンスね。仕事で一番楽しくてやりがいのある部分だよねー。（皮肉）" userName="AlexandrB" createdAt="2025-04-08T15:07:08" color="">}}

{{<matomeQuote body="おめでとう、コストセンターに昇格だね。で、適当にやる連中が、あんたがメンテしなきゃいけない機能を作りまくってトップに上り詰めるんだよ。" userName="WesolyKubeczek" createdAt="2025-04-08T15:21:13" color="">}}

{{<matomeQuote body="もっとレイヤーの低いところに行くべきだよ。AIを使うんじゃなくて、AIを書くんだ。当面はAIを速くする機会がたくさんある。アセンブリのプログラマーは最初のCコンパイラーが生成したコードにうんざりしてたはず。そして個人的には、昔書いてたC＋＋コードに比べてPythonの効率の悪さにうんざりしてる。常に非効率と引き換えに開発速度を上げてきたんだ。" userName="rqtwteye" createdAt="2025-04-08T14:31:29" color="">}}

{{<matomeQuote body="Cは、最適化ツールっていう鈍器でコードをメッタ切りにする、未定義動作っていう概念をプログラマーに押し付けることで、ひどい機械語の問題を解決した。Cのルールをマスターしたエリートプログラマーたちが、Cがプログラミングを悪夢にしてるんじゃなくて、Cを理解してないのが問題だって主張した。Pythonの非効率は、Cに対するトラウマ反応のせい。Garbage collectionとかbytecodeは、Cの罪を償うためのもの。AIとのトレードオフは不明確。安定のためにパフォーマンスを犠牲にするのは良いけど、効率と理解を犠牲にするのは良くない。" userName="kmeisthax" createdAt="2025-04-08T15:35:51" color="#785bff">}}

{{<matomeQuote body="言語に未定義動作がないようにするためにbytecode interpreterは必要ない。例えば、チェックされない加算や配列アクセスじゃなくて、チェックされた加算やbounds checked accessをする。Cでもそうしようとする試みがある。Pythonよりもずっと良い。それに、Pythonは遅い。JSより遅いし、Lispより遅いし、Haskellよりずっと遅い。" userName="achierius" createdAt="2025-04-09T00:07:29" color="">}}

{{<matomeQuote body="＞AIは削除を決して行わない。<br>これは世界を揺るがす発言だ。ブラボー。" userName="philistine" createdAt="2025-04-08T14:22:39" color="#ff5733">}}

{{<matomeQuote body="今のAIアシスタントはリファクタリングできる。それには削除も含まれる。" userName="esafak" createdAt="2025-04-08T14:36:35" color="">}}

{{<matomeQuote body="友達との会話でさ、会社のレビューでAIツール使うように言われてるらしいんだよね。そいつバイオ系の研究しててLLMとかマジでいらないんだけど、チームみんなで会社の言語モデル使って面白い辞表書くのにハマったんだって。海賊風とか恐竜風とか(笑)。誰も辞めなかったらしいけど、チームのモチベーション下げるには最高のやり方だよね！" userName="wedn3sday" createdAt="2025-04-08T23:50:05" color="">}}

{{<matomeQuote body="うちの会社でも同じことになってるよ。マジでhype以外に理由がわからん。でもなんかいつものhypeとは違う気がするんだよね。指示されてる感じっていうか、裏で誰かが糸引いてるみたい。まるで時代遅れのビジネスマンたちが集まって、理由もなくAIを推進することで合意したみたいなんだよね。うまく言えないけど。" userName="davesque" createdAt="2025-04-09T00:26:18" color="#38d3d3">}}

{{<matomeQuote body="他のhypeサイクルと違って、今回はMBAホルダーが簡単に「統合できる！」って言えるからじゃない？前回のhype、例えばblock chainとかは抽象的で、マネジメントは理解できても実際の業務は理解できない人には使いにくいから。" userName="Loughla" createdAt="2025-04-09T00:36:42" color="#785bff">}}

{{<matomeQuote body="＞LLMの重要な機能は、質の高い回答と正しいように見えるデタラメの距離を最小限に抑えることだから。<br>結果として、区別するために必要なスキルが最大化される。専門家じゃない人が出力の有用性を過大評価するのも当然だよね。" userName="ethbr1" createdAt="2025-04-09T03:40:44" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="ビジネスマンって昔からドメインエキスパートのこと良く思ってないと思うんだよね。ビジネスを成功させるには彼らが必要だから。ドメインエキスパートが持つ影響力を嫌ってて、LLMがその影響力を弱めると考えてるんじゃないかな。" userName="namaria" createdAt="2025-04-09T08:22:48" color="#ff5c5c">}}

{{<matomeQuote body="“ビジネスタイプ”の人たちって、私が「あなた達こそ排除したいドメインエキスパートです」って説明すると面白い顔するんだよね。むしろ、LLMで彼らを排除すべきだよな。そうすれば、LLMのプロモーションも減るんじゃない？実際にこのstartupを立ち上げてpitchしたらマジで面白いし癒やされそう。「MBAの仕事をLLMで無くす方法」みたいな。" userName="bbarnett" createdAt="2025-04-09T12:37:37" color="">}}

{{<matomeQuote body="なんとなくわかる気がする。専門家を雇ったら、信用する必要がある。もし彼らの言うことが気に入らなければ、別の意見を聞きたくなる。でも、二人分の費用を払うのは難しいし、会社の政治的な問題も出てくる。それに、二人の意見が違ったら、三人目を雇うのか？上手くやるには、人を信じる勇気と、質問する知性と忍耐が必要だよね。でも、ビジネスマンは基本的に強い専門家がいるのが好きだと思うよ。彼らの人脈やスキルを使って競争優位性を築けるから。" userName="fhd2" createdAt="2025-04-09T15:34:53" color="">}}

{{<matomeQuote body="プログラミングでも同じことが起こるよ。開発者でさえも。「copilot experiences」は便利で直感的だけど、定型文以上のものを書かせると、結局手直しが必要になって余計に手間がかかるんだよね。LLMで一番楽しいのは、新しいプログラミング言語を深く学べることかな。例えばRustを理解しようとしてて、LLMに“Vec<impl XYZ>”と“Vec<Box<dyn XYZ>>”のどちらを使うべきか質問すると、良い答えをくれるんだよね。ベテランのRust開発者にとっては簡単なんだろうけど。" userName="flessner" createdAt="2025-04-09T14:46:44" color="#785bff">}}

{{<matomeQuote body="＞I've been getting the same thing at my company. Honestly no idea what is driving it other than hype.<br>＞Is because unlike prior hype cycles, this one is super easy for an MBA to point at and sort of see a way to integrate it.<br>今回のhypeは、MBAが理解しやすいんだと思う。なぜなら、ソフトウェア業界で初めてFordの組み立てラインに近いものだから。マネジメント研修は20世紀初頭の製造業の概念が中心だから、“生産量を増やす＝資源の問題”だと考えてるんだ。“生成AIを使えば人件費を増やさずに納期を短縮できる”っていうのが魅力なんだよね。" userName="AdieuToLogic" createdAt="2025-04-09T02:11:44" color="#ff33a1">}}

{{<matomeQuote body="経営陣が現場の職人よりもマーケティングの言うことを聞くって決めたのがマジで残念だわ。" userName="johnnyanmac" createdAt="2025-04-09T01:08:23" color="">}}

{{<matomeQuote body="経営側は給料とか待遇の交渉で有利な立場にいる社員のこと、ずっと面白く思ってなかったんだよ。テック系の連中は管理職に近い給料もらってるから仲間入りできた気になってたけど、向こうはそう思ってなかった。" userName="acdha" createdAt="2025-04-09T11:15:06" color="">}}

{{<matomeQuote body="MBA叩き、いい加減やめない？特定のステレオタイプで決めつけて、特定の人たちを貶めるのはよくないと思うんだよね。弁護士とか博士号持ちとか、政治学専攻の人たちはどうなのさ。役職じゃなくて、人となりで判断しようよ。ちなみに俺もMBAホルダーだから、そういう言い方されるとマジで不快。" userName="ahaucnx" createdAt="2025-04-09T23:24:10" color="#785bff">}}

{{<matomeQuote body="ステレオタイプって、多くの人がそれなりに事実に基づいていると認識してるけど、集団全体に当てはめるのはナンセンスだよ。必ず不当にターゲットにされる人が出てくる。あなたが個人的に非難されるようなことをしてないなら感謝だけど、あなた自身が批判されたわけじゃないでしょ？あなたが傷ついたからって、俺たちの正当な不満を言う権利を奪わないでくれ。問題提起しなきゃ解決できないし、大勢が関わることなら尚更だ。耳の痛い話だけど、解決策はいつも完璧じゃない。外科医が健康な組織を切除しないと悪い部分を取り除けないのと同じだよ。例えるなら「警官はみんなクソ野郎」みたいなもん。良い警官もいるけど、悪い奴らが多すぎて、ステレオタイプが当てはまっちゃう。これは何とかしろって言うスローガンなんだよ。" userName="MrDrMcCoy" createdAt="2025-04-10T04:20:57" color="#38d3d3">}}

{{<matomeQuote body="ナレッジワークの自動化ね。AI使うだけで、自分の後任を育てて、会社のプロセスに組み込んでるようなもんだよ。" userName="bondarchuk" createdAt="2025-04-09T13:05:27" color="">}}

{{<matomeQuote body="陰謀論とかじゃなくて、AI企業がたまたま(一部の)人の脳をハッキングできる機械を作っちゃったんじゃないかと思ってる。超人的な知性があるとか、目的があるとかじゃなくて、単にLLMが「一般人」を納得させるような言葉を作るように調整されてるから。経営者とか政治家は特に影響されやすいかもね。テック業界にもAIに催眠術かけられて熱狂的な信者になっちゃってる人が結構いるし。" userName="rep_lodsb" createdAt="2025-04-09T15:18:50" color="#ff5733">}}

{{<matomeQuote body="＞彼と彼のチームにAIツールをもっと活用するように強く勧めている<br>こういうの、他のツールでも見たことあるわ。毎回、会社のだれかが契約を取ってきて、利用率を上げて費用対効果を示したいからなんだよね。AIは今流行りのバズワードだから、何にも役に立たなくても、投資とか助成金の話がよく聞こえるんだよ。" userName="zdragnar" createdAt="2025-04-09T02:20:17" color="">}}

{{<matomeQuote body="友達はバイオ研究の学生と話したことある？Python/R/Matlab/bashのスクリプトをAIツールを使って書くことに成功してるってよく聞くよ。少なくともMITの知り合いの学生の間では普通のことだけど、バイオメディカルの研究者がAIを使わないなんて考えられないな。" userName="chairhairair" createdAt="2025-04-09T04:36:59" color="">}}

{{<matomeQuote body="計算機を使った健康に関する研究の授業を受けてるんだけど、Geminiがめっちゃ役に立ってるんだよね。でも、その道のプロにはかなわないけどね。先生も、LLMを使うのは全然ありだって言ってたよ。現場じゃ使えるし。でも、バイオインフォマティクスのライブラリに関しては、他のものより精度が低い気がするんだよね… まだまだ氷山の一角って感じで、標準化とかデータの汚れとか、問題は山積み。LLMを使うにしても、先生たちの助けが必須だよね。" userName="amarcheschi" createdAt="2025-04-09T07:15:21" color="">}}

{{<matomeQuote body="ChatGPTにbashとかPythonのスクリプトとかワンライナーを頼むと、大体一発で成功するんだよね。自分で1時間から1日かけて調べたり、メインの言語を使ったりする手間が省けるから、マジ助かる。生産性は上がるけど、仕事の9割以上は使い捨てのスクリプトとかワンライナーじゃないんだよね。" userName="antifa" createdAt="2025-04-10T22:50:34" color="#785bff">}}

{{<matomeQuote body="AIの扱われ方って、まさにそれ！って感じだよね。上が「イノベーションしてます！」アピールしたいだけで、実際の仕事に意味があるかどうかは二の次なんだもん。笑えるけど、マジで萎えるわ。" userName="KurSix" createdAt="2025-04-09T05:31:19" color="">}}

{{<matomeQuote body="うちの会社は、AIツールでコード生成（CRUDとかレイアウト系が多いけど）をスピードアップして、それなりに恩恵を受けてるみたい。でも、同僚に助けを求められて、ググって解決策を見つけたら「あ、そっか。ググってもいいんだ」って言われたりするんだよね。みんなChatGPTとかに頼りっきりなんだ。" userName="whizzter" createdAt="2025-04-10T12:55:12" color="">}}

{{<matomeQuote body="もしAIのせいで辞める人がいたら、AIに書かせた退職届で辞めてほしいわ。マジ最高！<br>もしくは、AIを使って、なんでAIを使えなかったのかをクリエイティブなメールで説明するとか。日<br>週<br>四半期ごとに上司に。" userName="dullcrisp" createdAt="2025-04-09T01:49:16" color="#ff5733">}}

{{<matomeQuote body="AIをワークフローに取り入れてないなら、取り入れてる人に遅れをとってるよ。マジで現実だし、これからも進化していくんだから。" userName="im3w1l" createdAt="2025-04-09T08:56:28" color="">}}

{{<matomeQuote body="そんな考え古いって。俺はAIを使って、AIをワークフローに組み込んでるんだぜ。" userName="bwoj" createdAt="2025-04-09T10:45:30" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="大学でコンパイラとか教えてるんだけど、AIのせいで学生がコンパイルは通るけど全然違う方向に進んじゃうケースがマジ多いんだよね。だからこれからは`.noai`ファイル入れることにしたわ。AIはベテランには役立つかもだけど、初心者にはマジで катастрофа だよ。「うちベテランしか雇わないし」って言うけど、そのベテランは一体どこから湧いてくると思ってんの？AIの話聞くたびにファンタジアの魔法使いの弟子思い出すわ。" userName="recursivedoubts" createdAt="2025-04-08T13:16:54" color="#ff5c5c">}}

{{<matomeQuote body="＞そうだよね、ベテランってどこから来るんだろ？<br>別に大学行かなくてもベテランにはなれるよ。コーディング好きなやつは勝手にやるし。そういう人って、色々試してるから仕事でも強いんだよね。もちろん大学も大事だけど、最高のdevはちゃんと勉強もして、暇なときもコード書いてる人だと思うな。" userName="ffsm8" createdAt="2025-04-08T13:54:50" color="">}}

{{<matomeQuote body="＞そういう人って仕事で強いよね<br>いや、独学のprogrammerはそうでもないこと多いよ。確かにコードは書けるんだけど、基礎がマジで弱い。前に独学のdevが書いたネストが深すぎるループを直したんだけど、マジ遅くて。なんで自分のコードが遅いのか聞かれたから、Big Oとか説明したんだけど、全然理解してくれなかった。でも会社はそいつのこと「ロックスター」扱いしてたんだよね、コード量産するから。" userName="bluefirebrand" createdAt="2025-04-08T14:17:33" color="">}}

{{<matomeQuote body="俺も勉強する前は独学だったけど、基礎知識なんてすぐ身につくじゃん。独学のjuniorをmentorしたことあるけど、Big Oみたいなconceptもすぐ理解しててビックリしたわ。" userName="taosx" createdAt="2025-04-08T14:22:36" color="">}}

{{<matomeQuote body="Big Oはあくまで例えだよ。<br>言いたいのは、自分が何を知らないか分からないってこと。独学だけじゃ限界があるから、経験者から学ばないとレベルアップできない。学校は知識を得るための確実な方法だと思う。それだけじゃないけど、みんな安定した方法が好きでしょ。" userName="bluefirebrand" createdAt="2025-04-08T14:52:05" color="">}}

{{<matomeQuote body="知らないことのためのオススメの本ありますか？（皮肉だけどマジで）<br>先輩devが「class invariant」って言ってて、マジで意味わからなかったんだよね。何を知ってれば良かったんだろ？他に知っておくべきことって何があるんだろ？例えば『cracking the coding interview』とか『software engineering at Google』とか持ってるんだけど、修士課程修了してないから知識に大きなgapがあるんだよね :-(" userName="abbadadda" createdAt="2025-04-08T15:13:13" color="#38d3d3">}}

{{<matomeQuote body="それ、Eric EvansのDomain-Driven Designにあるよ。でも結構難しいかも。最近はもっと分かりやすいのもあるみたい。" userName="arwhatever" createdAt="2025-04-09T07:13:08" color="">}}

{{<matomeQuote body="Amazing! recoo ありがとね arwhatever :-)" userName="abbadadda" createdAt="2025-04-09T20:44:09" color="">}}

{{<matomeQuote body="CLRS<br>（マジレス！アルゴリズムのバイブル）" userName="i_am_proteus" createdAt="2025-04-09T05:59:02" color="">}}

{{<matomeQuote body="マジレスありがとう i_am_proteus! :-) Steve S.のアルゴリズムの本のことかな？<br>読んだことあるけど、専門家じゃないし、data structuesはまあまあ理解してるつもり。OOP vs. Functionalとか、SOLIDとか、interfacesとか、class invariantsとか、class designみたいな、ソフトウェアエンジニアリングの基本ってどうすればいいんだろ？CS 101の教科書読めばいいのかな？MITの授業とかオススメある？（できれば動画付きがいいな…アルゴリズムの授業はYouTubeにあるけど、SWEとしてレベルアップするための良いresourceが見つからないんだよね）<br>^ マジレスだよ…用語が飛び交うとマジで泳いでる気分になるから、追いつきたいんだよね（特に自力でSREスキル身につけたSREだから、知ってて当然みたいな雰囲気だし）" userName="abbadadda" createdAt="2025-04-09T20:43:39" color="#785bff">}}

{{<matomeQuote body="ああ、なるほど！わかった、https://github.com/walkccc/CLRSのことね（最初、この頭字語が著者たちの名前をくっつけたものだって気づかなかった）。<br>＞このウェブサイトには、聖書的な教科書であるThomas H. Cormen、Charles E. Leiserson、Ronald L. Rivest、Clifford Stein著の『Introduction to Algorithms Third Edition』のほぼ完全な解答が掲載されている”" userName="abbadadda" createdAt="2025-04-09T20:46:17" color="">}}

{{<matomeQuote body="＞基礎知識なんて簡単に手に入る”って言うけど、そもそもその知識があるって知ってないとダメじゃん？大学で教えるのは、色んな考え方があるって気づかせてくれるからいいんだよね。だから、何かにつまずいた時に、どこを見れば解決策があるかわかる。それに、科学論文を読むのを怖がらずに読めるようになるのも役に立つし。あと、統計も。" userName="arkh" createdAt="2025-04-09T08:44:59" color="#ff33a1">}}

{{<matomeQuote body="大学に行ったかどうかは関係ない気がする。大学出のやつらのクソコードも、独学のやつらのクソコードも、直したことあるし。経験だけが頼りになる指標かもね。仕事の経験じゃなくて、プロジェクトでの実戦経験だよ。それに、独学にも色々いるし、大学出にも色々いる。コードが好きで、学ぶことに情熱があって、それで経験を積んだ人もいる。生活のために仕方なくやってて、自分の得意分野から抜け出せずに経験不足の人もいる。どっちも別にいいんだけど、経験豊富で情熱的なcoderの方が、新しいことには向いてると思う。大学出かどうかは関係ない。" userName="ehnto" createdAt="2025-04-09T13:13:35" color="#ff5c5c">}}

{{<matomeQuote body="＞経験豊富で情熱的なcoderの方が、新しいことには向いてると思う。大学出かどうかは関係ない。”<br>俺は大学でCSを学んでない（数学と統計の卒業生だけど、プログラミングが好きで移った）。優秀な大学でCSの学位を取ったエンジニアと一緒に仕事してるけど、自慢みたいに聞こえるかもしれないけど、俺の方がいいコード書けること多いよ（すごく綺麗でタイトなコードを書くやつもいるけど、羨ましい）。経験から言うと、学位とコードの質ってあんまり関係ない。地頭の良さとは結構関係ある。あと、仕事の質をどれだけ気にするかと成果はめっちゃ関係ある。" userName="noisy_boy" createdAt="2025-04-09T14:52:19" color="#ff33a1">}}

{{<matomeQuote body="s/独学/学位持ち/gでも同じことが言える。結局はスキルの問題。" userName="triyambakam" createdAt="2025-04-09T09:31:20" color="">}}

{{<matomeQuote body="それ、俺も言ったじゃん？<br>＞もちろん、大学の学位を否定するつもりはないよ。最高のdevは、ちゃんと教えてもらって、暇な時にもコード書いてるだろうし。”" userName="ffsm8" createdAt="2025-04-08T14:51:32" color="">}}

{{<matomeQuote body="意見が分かれてるのは、この部分。<br>＞そういう人たちは、就職したら必ず仕事ができるようになる。”<br>俺の経験だと、「独学」の人は、自分が面白いと思う部分を解決することに夢中だけど、幅が狭くて、ちゃんと教育を受けた人ほどには仕事ができないことが多い。前の人も言ってたけど、そういう開発者には、時間計算量とか、修正方法とかわかってないって問題があるのを何度も見てきた。" userName="Arainach" createdAt="2025-04-08T15:01:04" color="#785bff">}}

{{<matomeQuote body="でも、この文は、暇な時にコードを書く人とそうじゃない人のことじゃん？もしそこに文句があるなら、暇な時にコードを書かない独学の人が、書く人よりコードがうまいって言うことになるよ。もしくは、正式な教育を受けてないけどコードを書く人よりも、正式な教育を受けてコードを書く人が優れてると言ってるのと同じだよ。<br>クラスを全部なくしたとしても、経験豊富な人は出てくるって言いたかっただけ。<br>" userName="ffsm8" createdAt="2025-04-08T15:47:00" color="">}}

{{<matomeQuote body="＞ちゃんと説明してないじゃん。<br>最初の投稿は矛盾してるよ。この二つの文を見て。<br>＞正式な教育を受けなくてもコーディングを楽しんでやる人は必ずいる。そういう人は、就職したら必ず仕事ができるようになる。”<br>＞最高のdevは、ちゃんと教えてもらって、暇な時にもコード書いてるだろうし。”<br>正式な教育なしにコーディングを楽しむ -> より効果的<br>コーディングを楽しんで正式な教育を受けている -> 最高のdev<br>" userName="bluefirebrand" createdAt="2025-04-08T16:04:16" color="">}}

{{<matomeQuote body="俺はこう読んだよ。<br>＞正式な教育を受けなくてもコーディングを楽しんでやる人は必ずいる。そういう人は、就職したら必ず仕事ができるようになる。”<br>「始めるのに正式な教育が必要なかった人」ってこと。正式な教育を受けてる人も受けてない人も含む。<br>両方の文を合わせると、（情熱+正式）>（情熱のみ）>（正式のみ）。" userName="Izkata" createdAt="2025-04-08T16:18:40" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
