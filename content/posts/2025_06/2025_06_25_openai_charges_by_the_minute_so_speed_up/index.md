+++
date = '2025-06-25T00:00:00'
months = '2025/06'
draft = false
title = 'OpenAIは分単位課金！音声を爆速にすればお得になるぞ'
tags = ["AI", "音声処理", "コスト削減", "プログラミング", "技術"]
featureimage = 'thumbnails/purple5.jpg'
+++

> OpenAIは分単位課金！音声を爆速にすればお得になるぞ

引用元：[https://news.ycombinator.com/item?id=44376989](https://news.ycombinator.com/item?id=44376989)




{{<matomeQuote body="Andrej Karpathyは元々早口だから、高速化は大変だったでしょ。彼の話す速さは普通の人の1.5倍以上だよ。聞いてて理解するにはYouTubeの速度を1xに戻さないといけないくらい。OpenAIの課金を無駄にしないためには、無音部分を送らないのがポイント。例えば、ffmpegで無音を削除すると、39分31秒の音声が31分34秒になったよ。これは-50dB以下の無音（20msより長いもの）を20msの無音に置き換えた結果。記事の趣旨に合わせて、入力ファイルが短くなったかだけ測ったけど、この短いバージョンで文字起こしの質がどうなるかは見てないんだ。" userName="w-m" createdAt="2025/06/25 15:21:33" color="#ff33a1">}}




{{<matomeQuote body="＞彼の話す速さは普通の人の1.5倍以上だよ。聞いてて理解するにはYouTubeの速度を1xに戻さないといけないくらい。 audioファイルで、その人がどれくらい「速く」話すか自動で検出する方法ってあるのかな？主観的だし、人によって話すペースは違うけどさ。でも、OPのやり方がどこで失敗するか（x4でダメだったって書いてるけど、Karpathyの場合はx2でアウトかもとか）目安になってクールだと思うな。" userName="behnamoh" createdAt="2025/06/25 16:13:01" color="">}}




{{<matomeQuote body="Andrejの話は2xで聞いても普通に聞こえたけど、俺はずっと全部2xで聞いてるからね。その副作用として、俺の動画は0.75xじゃないと見れないって人に何人も言われたことがあるんだ。でも、自分で自分の動画を見返しても、2xじゃないと遅すぎて苦痛に感じるんだよね。ちなみに、John Carmackのペースはいつも完璧で自然だし、2xでも視聴可能だと思ってるよ。<br>最近の俺の動画はこれ → https://www.youtube.com/watch?v=pL-qft1ykek 。<br>この前、他の人がHNに投稿してたから、別に自己宣伝じゃないんだけどさ。ただ、最近アップした動画の例として、誰かこれが速すぎると感じるか、普通だと感じるか純粋に気になってるんだ。これは台本なしのいつもの動画で、何を話したいか大まかに決めて、マイクをオンにして録画開始、あとは流れに任せてる感じ。たぶん、直近250～300本くらいの動画は、みんなこのやり方で録ってると思う。" userName="nickjj" createdAt="2025/06/25 23:48:28" color="">}}




{{<matomeQuote body="プラットフォームが2xより速い速度に対応してないのが残念だよね。俺の「スーパーパワー」というか、呪いというか、普通の会話ペースが耐えられないんだ。講義動画とか見る時は、いつも最高速度にするんだけど、それでもまだ遅すぎるんだよ。<br>プラットフォームが4xとか、ちゃんと（ノイズ少なく）実装してくれたらいいのにね。" userName="varispeed" createdAt="2025/06/25 16:57:03" color="">}}




{{<matomeQuote body="whisper.cppを使った俺の経験だと、音声をノーマライズして無音を削除すると、処理時間が大幅に短くなるだけじゃなく、文字起こしの質もすごく上がるんだ。無音があると幻覚（存在しない単語）を引き起こす可能性があるからね。コマンドライン使いたくないなら、Audacityでもグラフィカルにできるよ。whisper.cppは特別なハードウェアもいらないし、スモールモデルなら文字起こしが終わるのをちょっと待てば（音声の長さより短い時間で）、文字通りどんなPCでも動くはず。<br>一つ面白いというか、ちょっと憂鬱な観察結果なんだけど、職場の会議録音をこの方法で文字起こししようとしたら、無音をカットしたら長さが元のほぼ2／3になっちゃったんだ。これ考えると、長い会議がいかに非効率か、考えさせられるよね。" userName="jwrallie" createdAt="2025/06/26 06:30:07" color="#ff5733">}}




{{<matomeQuote body="おお、いいね！ffmpegにはもっと魔術的な使い方があるって予感してたんだ。このアイデア、後で試してみないと。ありがとう！" userName="georgemandis" createdAt="2025/06/25 15:33:52" color="">}}




{{<matomeQuote body="そういえば、さっきのapadの部分は無意味だったことに気づいたよ。あれはストリームの終わりにパディングするだけで、無音削除したカットごとじゃないんだ。提案したo3に怒りそうになったけど、silenceremoveのドキュメントを自分で見たらさ、https://ffmpeg.org/ffmpeg-filters.html#silenceremove<br>なんてこった。これ以上複雑で分かりにくくするのは無理だろ。ffmpeg、愛すべきやつだよ！<br>今の俺は、こっちの方が良い解決策だと思うな：<br>ffmpeg -i video-audio.m4a \<br>           -af ”silenceremove=start_periods=1:stop_periods=-1:stop_duration=0.15:stop_threshold=-40dB:detection=rms” \<br>           -c:a aac -b:a 128k output.m4a -y" userName="w-m" createdAt="2025/06/25 15:43:34" color="#38d3d3">}}




{{<matomeQuote body="「普通の」人間向けに、YouTubeに2.25xくらいのオプションがあったらいいのにね。俺はすでにショートカット全部使ってるし、時間の90％は2xで聞いてるよ。でも、Andrejは1.25xより速くすると無理なんだ。" userName="QuantumGood" createdAt="2025/06/25 23:32:59" color="">}}




{{<matomeQuote body="他の人たちも無音の価値について指摘してたけど、俺は人間らしさが非効率って分類されちゃうのが悲しいんだよね。この前、Sam AltmanがChatGPTに「ありがとう」って言うのにどれだけエネルギーが無駄になってるかってジョークを言ってたけどさ。その裏返しで、人間同士が「ありがとう」って言い合うのにどれだけ人間のエネルギーが無駄になってるんだろうね。非効率かどうか判断する時って、何が価値あるかを判断してるわけだけど、それはすごく偏った判断で、人間が人間らしく豊かに生きるために必要なことと必ずしも一致しないんだよね。=) （← これも無駄な顔文字だねw）" userName="dogprez" createdAt="2025/06/26 15:43:08" color="">}}




{{<matomeQuote body="＞ 짧은 버전으로 피딩한 전사 품질은 전혀 보지 않았습니다.（韓国語の翻訳ではない）<br>みんな、短いバージョンとそうじゃないバージョンの文字起こし結果を、diffcheckerとかに放り込んで比較するの、そんなに難しいことかなw テキスト比較するだけじゃんかw" userName="swyx" createdAt="2025/06/25 20:07:19" color="">}}




{{<matomeQuote body="ちなみに、あのドキュメントをどう改善できるの？<br>自分には十分分かりやすく見えるんだけど。" userName="squigz" createdAt="2025/06/25 19:26:02" color="">}}




{{<matomeQuote body="YouTubeの再生速度を1倍に戻すって書いてあるけど、YouTubeを高速再生する人って多いの？<br>ポッドキャストやオーディオブックでやってるってのは聞いたことあるけど、意味わかんないんだよね。<br>本をちゃんと読まないで飛ばし読みしてる感じする。" userName="CSMastermind" createdAt="2025/06/26 16:34:24" color="">}}




{{<matomeQuote body="オーディオブックはいつも高速で聞いてるよ。<br>講義でも試したけど、手書きノートだとついていけないね。<br>でもさ、これって何か副作用あるのかな？<br>ゆっくり話す人と話すとき、すごい我慢が必要になったりする？" userName="mrmuagi" createdAt="2025/06/25 17:02:35" color="#38d3d3">}}




{{<matomeQuote body="YouTubeってモバイルで最大4倍速再生の実験してたらしいけど、2月になくなったんだって（マジ？）。<br>YouTubeが色々実験するのはわかるけど、再生速度のスライダーを伸ばすだけなのに、なんでこんなに揉めるのか意味わかんないわ。<br>これ、サードパーティのアプリとか拡張機能ではよくある機能だし、使いたくない人にはUI的に全然影響ないじゃん（2倍より速くしたくないならスライダーをそれ以上動かさなきゃいいだけ）。<br>https://www.theverge.com/news/603581/youtube-premium-experim..." userName="zamadatix" createdAt="2025/06/26 01:24:47" color="#785bff">}}




{{<matomeQuote body="あのドキュメントひどすぎない？<br>プログラマーがアルゴリズムそのまま書いたみたい。<br>silenceremoveのパラメータとか多すぎ＆名前おかしくない？（start_durationなのに停止の説明とか）<br>ユーザーが自分で内部モデル作る必要あるなんて最悪。<br>良いドキュメントは概念から説明すべきだよね。<br>でも、こういうのってプログラマーには地味だから、きっとこのままなんだろうな。" userName="w-m" createdAt="2025/06/25 21:21:41" color="#785bff">}}




{{<matomeQuote body="音声ファイルで人がどれくらい速く話してるか自動で検出する方法ないかな？<br>→ローカルでwhisper使って文字起こしして、tokens/secを出力するのはどう？" userName="janalsncm" createdAt="2025/06/25 18:04:17" color="#38d3d3">}}




{{<matomeQuote body="教えてくれてサンキュー、覚えとくね。<br>chatgptも覚えるのかな？<br>（マジで興味ある…ありえそう）" userName="kristianbrigman" createdAt="2025/06/26 16:49:40" color="">}}




{{<matomeQuote body="会議の3分の1が沈黙なの？<br>それって良いことじゃん。<br>聞いてる人が考える時間になるし、みんなが発言したり参加したりするための間もできるでしょ。<br>沈黙って何パーセントくらいがベストだと思う？" userName="d1sxeyes" createdAt="2025/06/26 07:12:57" color="">}}




{{<matomeQuote body="FFTとか基本分析をやれば、1秒あたりの音節数を数えて速さが分かるんじゃない？" userName="maxall4" createdAt="2025/06/25 20:19:16" color="#ff33a1">}}




{{<matomeQuote body="あなたの話す速さは、僕が思うポッドキャストの標準的な速さの”1.2倍速”くらいかな（僕は普段全てのポッドキャストを1.5倍速で聞いてるよ）。僕の経験上、テック系YouTuberの普通の範囲に完全に収まってるね。正直、多くのテック系YouTuberはアデラールやりすぎてるみたいに聞こえるけど、あなたはそうじゃない。チュートリアルは、学ぶ側が何を理解できるか話してる側には分からないから、遅く聞く人もいるだろうね。だから全体的に、あなたの速さは全然問題ないと思うよ！あと、すごくタイムリーな動画だったね。まさにこのトピックに興味があったから、見つけられてよかったよ。" userName="noahjk" createdAt="2025/06/26 00:11:57" color="#785bff">}}




{{<matomeQuote body="Chrome拡張機能を使ってるんだけど、埋め込みも含めてどんな動画プレーヤーでも10倍速にできるんだよね。大体のものは3〜4倍速にしてるよ。広告にも使えるんだ。" userName="narratives1" createdAt="2025/06/25 17:48:24" color="#ff5c5c">}}




{{<matomeQuote body="”「正直、多くのテック系YouTuberはアデラールやりすぎてるみたい」って話、面白いくらいに、もし実際にADHDなら、アデラールみたいな興奮剤やニコチンで落ち着くんだよね。”<br>”自然にチュートリアルを遅くする人もいるだろうね、”<br>僕の場合は、その時どんな気分かとか、他に何か同時にやってるかにもよるかな。動画に完全に集中してるなら、2倍速でも平気なことが多いよ。何か身体的な作業を同時にやってるなら、それより遅くする必要があるね。<br>もし精神的な作業を同時にやってるなら、動画から何か得ることは諦めるしかないな。少なくとも、その精神的な作業が言葉を含む場合ね。だから例えば、Tetrisをしながらなら大体1倍速で技術的な話も追えるだろうけど、コーディングしながらは無理だね。" userName="eru" createdAt="2025/06/26 01:16:28" color="#38d3d3">}}




{{<matomeQuote body="まあ、人間がお互いに感謝するのは無駄なエネルギーじゃないよね。僕たちの関係に実際影響するし。人間はAIに感謝するけど、それは人間みたいなチャットボットとして描かれてるからであって、実際にはAIの応答効率にほとんど影響しないんだよね。ChatGPTにありがとうって言うのは、Windowsに電卓を開いてくれてありがとうって言うのと同じくらい無駄だよ。人間が感謝する効率性と、この非効率性を誰かが比較しようとしてるわけじゃないと思うんだけど？" userName="Philip-J-Fry" createdAt="2025/06/26 17:35:16" color="">}}




{{<matomeQuote body="プレミアム会員だけど、Androidでは今4倍速が使えるよ。そして最近（先月）ウェブ版にも追加されたんだ。" userName="K2L8M11N2" createdAt="2025/06/26 02:42:49" color="#38d3d3">}}




{{<matomeQuote body="いいポイントだね。なんか30分の会議を考えると、10分間の沈黙は素敵に聞こえるのに、3時間録画されたものが1時間消えてる（無音カットとかで）のを見ると、その”無料”の1時間を使って何かしたくなるんだよね。まあ、会議の本当の問題は沈黙だけじゃないと思うけど！" userName="jwrallie" createdAt="2025/06/26 11:54:45" color="#38d3d3">}}




{{<matomeQuote body="めちゃくちゃ小さいサイズでも読みやすいようにデザインされたフォントがあるよね。極端な速さでも特別に聞き取りやすい声とかあるのかな？テキストを10倍速で再生するのに、”競売人”みたいな声を使えたら面白いかも。" userName="cookingrobot" createdAt="2025/06/25 18:44:00" color="#785bff">}}




{{<matomeQuote body="これはね、アメリカの競技ディベートでスプレッディング（早口）が起きる理由でもあるんだよ。これはネットで馬鹿にされてるけど、まさにこれが理由なんだ。詳細はこちら見てね→ https://en.wikipedia.org/wiki/Spreading_(debate)" userName="Der_Einzige" createdAt="2025/06/26 15:20:44" color="#ff5733">}}




{{<matomeQuote body="音声ファイルで人がどのくらい”速く”話してるか自動で検出する方法か。バカげたヒューリスティックだけど、動画のセグメントを取って、テキストに書き起こして、発話時間あたりの単語数を数えるとか？話者分離が必要なら、話者ごとの発話時間を個別に扱えばいい。さらに細かく音節数とかでもできるね。" userName="echelon" createdAt="2025/06/25 16:25:50" color="#785bff">}}




{{<matomeQuote body="Andrejの講演、2倍速で聞いても普通だったよ。普段から全部2倍速で聞いてるから慣れっこなんだ。ああいうスピードで沢山コンテンツ消費してると慣れるもんだね。<br>熟練した盲目の人が使う音声システム、聞いたことある？あれは全然言葉が分からないけど、何ヶ月か訓練すれば多分大丈夫になると思う。" userName="viraptor" createdAt="2025/06/26 00:55:17" color="">}}




{{<matomeQuote body="ちゃんと読むか流し読みかの話だよ。<br>あの講演の要約を読んだけど、面白くなくてスルーしちゃったんだ。後でYouTubeで普通速度で全部見たら、すごく沢山のアイデアとか考えが浮かんできたんだよ。<br>これ他のことでも同じなんだよね。対面で講演聞くのはオンラインよりずっと役立つし、オンラインでも要約読むよりはマシ。じっくり考えるには、早回しで表面だけなぞるより、ゆっくり時間かけた方が絶対いいってこと。考えるのは遅い方がいいもんだよ。" userName="heeton" createdAt="2025/06/25 15:10:27" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="マジでこれ変だと思うんだ。<br>多くのハッカーみたいに、俺も学校は嫌いだった。みんなに同じ知識を押し付ける「ワンサイズフィットオール」だったからね。なのに今、生活のあらゆる面でそれに金払ってるなんて。<br>本読むのとか、講演見て脳が働く感覚は最高だろ。人間らしさってそういうとこだろ？<br>こんなバカな方向に向かってるなんて、全然分かんない。みんな、これが何を生み出すかについてなんでこんなに気づかないんだろうね。" userName="pluc" createdAt="2025/06/25 15:25:06" color="#38d3d3">}}




{{<matomeQuote body="コメント3の人みたいに「学校が『ワンサイズフィットオール』の知識を押し付けたから嫌い」っていうけど、今回の話はまさに「この知識の形式は俺には合わないから、OpenAIに消化しやすい形に変えてもらってる」ってことだろ？<br>何にそんなに怒ってるかよく分かんないな。<br>「ワンサイズフィットオール知識」って、表面的なトピックのこと？俺は色々なことについて浅く知るのが好きだよ。全部深く知る時間なんてないし。でも興味持ったトピックなら、全文もあるわけだし。<br>幅も深さも大事で、要約は幅にはいいけど深さにはダメ。でもそれでいいんだよ。" userName="bisby" createdAt="2025/06/25 18:17:17" color="#ff5733">}}




{{<matomeQuote body="これから数年で、AI企業に給料の一部を払うことになる。ビジネスのコストだよ。みんなバカになって、AIの幻覚かどうかも分からなくなる。思考を全部AIに入れて、AIに置き換えられるようになるだろうね。仕事はAIへの入力→AIからの出力になるんだ。<br>でもこれは、人間の多様性や思考が種の生存にいかに重要かを見落としてる。AIは模倣するだけで、自分のアイデアは持てない。AIの夜明けなんて二度と来ない。AIは集団妄想に苦しみ、自由は真実じゃなく定義されるようになるだろう。ヤバい方向に進んでるってことさ。参考記事：https://tech.co/news/another-study-ai-making-us-dumb" userName="weq" createdAt="2025/06/27 04:52:34" color="#45d325">}}




{{<matomeQuote body="大学は俺にはあんまり合わなかったな。普通の講師の話に集中できなかったから。<br>言葉の間とか、書いてるの待ってる間に飽きちゃって、全然頭に入らなくて、ほとんど全部自分で勉強したよ。<br>倍速ツールが出る前のオーディオブックは最悪だった（わざとゆっくり話してるのか？ってくらい）。でも倍速にできるなら、理解度は全然大丈夫なんだ。" userName="colechristensen" createdAt="2025/06/25 17:56:15" color="">}}




{{<matomeQuote body="講演とか講義で一番困るのが、一度話についていけなくなると、もうその後が全然分からなくなることなんだよね。<br>1時間の講演で、始まりの5分でちょっとでも気が散っちゃったら、もう残りの1時間は完全にアウトだよ。" userName="parpfish" createdAt="2025/06/26 13:20:45" color="">}}




{{<matomeQuote body="音声高速化って実際どうなの？読むべき本はたくさんあるけど、結局読まないんだよね。Wikipediaの要約より1時間ポッドキャストの方が面白いかも。でもYouTubeには既に良い要約動画があるし、AIみたいに変なこと言わないしね。" userName="0cf8612b2e1e" createdAt="2025/06/25 23:47:15" color="">}}




{{<matomeQuote body="俺も他のハッカーみたいに、学校の一律教育は嫌いだった。なのに今またそれにお金払ってる感じ。でも知識を押し付けられるんじゃなくて、自分で見て回れるようになったのは大きいかな。内容の質とか形式より、こっちの方が重要だね。" userName="zahlman" createdAt="2025/06/26 15:57:49" color="">}}




{{<matomeQuote body="知識なんて前からも自分で見て回れたじゃん。AIは理解するプロセスすっ飛ばして、結論だけ俺らに押し付けてるんだよ。" userName="pluc" createdAt="2025/06/27 07:49:08" color="">}}




{{<matomeQuote body="これが何を生み出すか、みんななんでこんなに分かってないんだ？情報が多すぎるんだよ。みんな”深さ”より”広さ”を優先しようとしてるけど、それには当然コストがかかるでしょ。" userName="itake" createdAt="2025/06/26 16:27:17" color="">}}




{{<matomeQuote body="俺たち、自分でバカになろうとしてる。なんでみんなこんなに分かってないんだ？って言うけどさ。あんたのその悲観論と上から目線は、「俺は一律が嫌い」って最初の主張と矛盾してるよ。AIは色々なサイズを提供してるのに、あんたは一律だって決めつけてる。好きなように使って、ちゃんとした批判してみなよ？" userName="isaacremuant" createdAt="2025/06/25 16:54:32" color="">}}




{{<matomeQuote body="（前のコメントへの）君の意見、全面的に同意だよ。特に話を聞くときって、単に内容だけじゃなくて、そこから生まれる関連アイデアが大事だよね。コンテンツが多すぎるし、状況が全て。文脈なしのリンクだと、まず”要点”が知りたい。これは試して良かったよ。ちゃんと見るか決められる。君のコメント見て興味出たから、もしかしたら見るかも！<br>「ゆっくりな方が考えるには良い」っての、マジ同意！" userName="georgemandis" createdAt="2025/06/25 15:40:52" color="#ff5733">}}




{{<matomeQuote body="「ゆっくりな方が考えるには良い」。そうだね、みんな2倍とか3倍速で聞いてるって言うけど、俺はたまに0.8倍速にするんだ。そうすると内容が頭に入って、じっくり考えられる気がして。俺って変わってるのかな？" userName="itsoktocry" createdAt="2025/06/25 18:27:20" color="">}}




{{<matomeQuote body="何を聞くかによるね。何が起こったか（what?）の要約なら2倍速でもいいかも。「なぜ？」（why?）とか登場人物が多い複雑な話ならゆっくりが良い。War and Peaceを速く？登場人物多くてメモしてたけど、時間を圧縮すれば思い出しやすいかも。Duneを速く聞いたら、政治的な話やアクションしか頭に入らず、世界観の構築は逃しそう。" userName="LanceH" createdAt="2025/06/26 00:46:58" color="#ff5733">}}




{{<matomeQuote body="ゆっくり聞くことの価値は否定しないけど、一度（速く？）サラッと聞いてみて、後でじっくり考えながら見直すっていうのも価値あるんじゃないかな。" userName="mutagen" createdAt="2025/06/25 16:36:36" color="">}}




{{<matomeQuote body="これ、「How to read a book」（Adler）の戦略と似てるね。本の概要やテーマを掴んでおけば、内容を深く読み進める時に考えをまとめやすくなる、ってやつ（講義にも応用できるかな）。" userName="tass" createdAt="2025/06/25 16:50:21" color="">}}




{{<matomeQuote body="速度アップのおかげ？それとも音声や動画ならではの情報があったから？魅力的な話し手なら、同じ内容でも audiovisual形式の方が断然 effectiveだよ。例えば、音声には強調があって transcriptや summaryにはそれが全然ないし、videoには身振り手振りや facial cuesもある、これもポイントを伝えるのに使われることが多いよね。" userName="conradev" createdAt="2025/06/25 16:45:58" color="">}}




{{<matomeQuote body="OpenAIの transcription APIで40分の talkを summarizeしようとしたんだけど、長すぎてダメだったんだ。だから、 ffmpegで速度を上げて25分の capに収まるようにしたんだよ。 Up to 3x speedsでも結構うまくいって、安くて速かったから、それについて書いたんだ。シェアする価値のある funな trickだって感じてね。 full scriptと cost breakdownもあるよ。" userName="georgemandis" createdAt="2025/06/25 13:17:25" color="#ff33a1">}}




{{<matomeQuote body="これ黙って自分だけでやって、 OpenAIより cheaperな transcription business始めればよかったのにね 笑" userName="bravesoul2" createdAt="2025/06/25 15:03:14" color="">}}




{{<matomeQuote body="もうやってるよこれ ［1］。 fraction of the priceで、 24-hour limit per file。 OPみたいに speedupする tricksも welcomeだよ:) ［1］ https://speechischeap.com" userName="ilyakaminsky" createdAt="2025/06/25 18:39:37" color="#ff33a1">}}




{{<matomeQuote body="いいね。詳しいことは期待してないけど、ちゃんとやってけてるの？（お客さんついてる？）APIだけで retirementできるのかな～って気になってさ:)" userName="bravesoul2" createdAt="2025/06/25 21:55:29" color="">}}




{{<matomeQuote body="sustainableではあるけど、今のところ retireできるほどじゃないかな。＞ Just wondering if I cam build a retirement out of APIs :) possibleだと思うけど、 commodityそのもの（例えば俺の場合は audio classificationとか speaker diarization）を超えた付加価値を見つける必要があるね。" userName="ilyakaminsky" createdAt="2025/06/26 07:04:42" color="#38d3d3">}}




{{<matomeQuote body="real-time transcription with diarizationってできる？今 working onしてる product featureでそれ探してるんだ。今のところ Speechmaticsはこれが wellにできてるの見たけど、他のは聞いたことなくて。" userName="satvikpendem" createdAt="2025/06/27 02:21:03" color="">}}




{{<matomeQuote body="audioの pre-processingは今でも validな bizだよね、 multiple typesの pre-processingも validかも。" userName="4b11b4" createdAt="2025/06/25 16:25:14" color="">}}




{{<matomeQuote body="もちろん、でも彼が usefulなものをシェアしてくれたおかげで、 worldは better placeになったよね！" userName="behnamoh" createdAt="2025/06/25 16:09:37" color="">}}




{{<matomeQuote body="Or openai will do it themselves for transcription tasks" userName="hn8726" createdAt="2025/06/25 17:33:30" color="">}}




{{<matomeQuote body="＞ Is It Accurate?＞ I don’t know—I didn’t watch it, lol. That was the whole point. And if that answer makes you uncomfortable, buckle-up for this future we’re hurtling toward. Boy, howdy.This is a great bit of work, and the author accurately summarizes my discomfort" userName="timerol" createdAt="2025/06/25 15:19:47" color="#785bff">}}




{{<matomeQuote body="A lot of people read newspaper.Newspaper is essentially just an inaccurate summary of what really happened. So I don’t find this realization that uncomfortable." userName="raincole" createdAt="2025/06/26 05:59:00" color="">}}




{{<matomeQuote body="That’s why I find the idea of training breaking news on Reddit or Twitter funny, wild exaggerations and targeted spin is the sort of stuff that does best on those sites and generates the most comments, 50% of the output would be lies." userName="dmix" createdAt="2025/06/26 15:36:19" color="">}}




{{<matomeQuote body="As if human-generated transcriptions of audio ever came with guarantees of accuracy?This kind of transformation has always come with flaws, and I think that will continue to be expected implicitly. Far more worrying is the public’s trust in _interpretations_ and claims of _fact_ produced by gen AI services, or at least the popular idea that ”AI” is more trustworthy/unbiased than humans, journalists, experts, etc." userName="BHSPitMonkey" createdAt="2025/06/25 19:44:23" color="#785bff">}}




{{<matomeQuote body="at least human-generated transcriptions have entities that we can hold responsible for..." userName="angst" createdAt="2025/06/26 01:28:59" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="That still holds true for gen-AI. Organisations that provide transcription services can’t offload responsibility to a language model any more than they can to steno keyboard manufacturers.If you are the one feeding content to a model then you are that responsible entity." userName="_kb" createdAt="2025/06/26 02:25:52" color="#785bff">}}




{{<matomeQuote body="There was a similar trick which worked with Gemini versions prior to Gemini 2.0: they charged a flat rate of 258 tokens for an image, and it turns out you could fit more than 258 tokens of text in an image of text and use that for a discount!" userName="simonw" createdAt="2025/06/25 15:02:54" color="#785bff">}}




{{<matomeQuote body="I built a Chrome extension with one feature that transcribes audio to text in the browser using huggingface/transformers.js running the OpenAI Whisper model with WebGPU. It works perfect! Here is a list of examples of all the things you can do in the browser with webgpu for free. [0]The last thing in the world I want to do is listen or watch presidential social media posts, but, on the other hand, sometimes enormously stupid things are said which move the SP500 up or down $60 in a session. So this feature queries for new posts every minute, does ORC image to text and transcribe video audio to text locally, sends the post with text for analysis, all in the background inside a Chrome extension before notify me of anything economically significant.[0] https://github.com/huggingface/transformers.js/tree/main/exa...[1] https://github.com/adam-s/doomberg-terminal" userName="dataviz1000" createdAt="2025/06/25 17:10:40" color="#ff33a1">}}




{{<matomeQuote body="大量にやるなら、OpenAIのAPIじゃなくてGroq [0]を使うとめちゃくちゃ安いよ！ [0] https://groq.com/pricing/<br> GroqはDistil-large-v3だと1時間0.02ドル、Whisper-large-v3-turboでも1時間0.04ドルくらい。OpenAIは1時間0.36ドルくらいだと思うんだよね。<br>うちのツールで議会動画をYouTubeにアップされたらすぐ自動で文字起こししてるんだけど、それもデフォルトはGroqだよ。ReplicateとかDeepgramもバックアップで使えるようにしてあるけどね。" userName="rob" createdAt="2025/06/25 16:20:40" color="#785bff">}}




{{<matomeQuote body="最近のMacBookを持ってるなら、同じWhisperモデルを無料でローカル実行できるよ。みんな、自分で持ってるハードウェアの計算能力がどんだけ安いかに気づいてないよね。" userName="colechristensen" createdAt="2025/06/25 18:03:50" color="#ff33a1">}}




{{<matomeQuote body="持ってないんだよねー。Intelチップでメモリ16GBの2019年のMacBook Proなんだ。確かWhisperのラージモデルを試したとき、Groqだと全然時間かからなかったのが、30分から1時間くらいかかった気がする。まあ、だいぶ前の話だから時間は間違ってるかもだけど。" userName="rob" createdAt="2025/06/25 18:10:45" color="">}}




{{<matomeQuote body="あー、ごめん。それならApple silicon Macでメモリもそれなりに必要だよ。でも、こういうミドル～ハイエンドの最近のMacBookは、俺が働いてきた会社ではどこでもずっと一般的だったけどね。" userName="colechristensen" createdAt="2025/06/25 18:30:17" color="">}}




{{<matomeQuote body="そのMacBookが発売されてからもう6年くらい経つから、あなたの時間は絶対ズレてるよ。" userName="fragmede" createdAt="2025/06/25 18:32:27" color="">}}




{{<matomeQuote body="面白いね！1時間0.02～0.04ドルなら最適化とかあんまり考えてないだろうけど、この記事にある“音声を速くする”技でさらに節約できるのかな？<br> ＞ うちのツールで議会動画をYouTubeにアップされたらすぐ自動で文字起こししてるんだけどね<br>最近だとYouTubeが1日くらいで自動でやってくれないっけ？" userName="georgemandis" createdAt="2025/06/25 16:35:17" color="">}}




{{<matomeQuote body=" ＞ 最近だとYouTubeが1日くらいで自動でやってくれないっけ？<br> ああ、そうなんだよ。まずチェックして、自動字幕があればyoutube-transcript-apiを使うんだ: https://github.com/jdepoix/youtube-transcript-api<br> でも、ツールがアップロードから5分くらいで検出しちゃうから、だいたいまだ利用できないんだよね。それで、そのサマリーを編集者向けに内部Slackに送ってるんだ。会議で“フォローアップ”すべき興味深いことがないかとかね。<br> 自動字幕を待つように、少し遅延を入れるのは良いアイデアかもね :)" userName="rob" createdAt="2025/06/25 16:46:40" color="#45d325">}}




{{<matomeQuote body=" ＞ この“音声を速くする”技でさらに節約できるのかな？<br> そこまでいくと、ffmpegの実行コストがいくらかかるかも少なくとも確認する必要があるね。たぶん1時間あたり0.01ドルもかからないだろうけど（だいたいの節約額）、それでもね。" userName="jerjerjer" createdAt="2025/06/25 17:53:50" color="">}}




{{<matomeQuote body="YouTubeの自動字幕って、最近は一日くらいで自動でやってくれるよね？<br>この前確認した時は、Googleの自動字幕ってWhisperより質が明らかに悪かった気がするけど、変わったのかな。" userName="ks2048" createdAt="2025/06/25 17:56:19" color="">}}




{{<matomeQuote body="Hugging FaceのInference APIを使えば、色々なAPIプロバイダ（これも全部対応してるよ）を直接使えて、切り替えが簡単になるよ。<br>例えば、ここの右側のパネル見てみな。<br>https://huggingface.co/openai/whisper-large-v3" userName="abidlabs" createdAt="2025/06/25 21:24:38" color="#38d3d3">}}




{{<matomeQuote body="Cloudflare Workers AIってのもあるよ。<br>そこでwhisper-large-v3-turboが1時間あたり0.03ドルくらいで使えるみたい。<br>https://developers.cloudflare.com/workers-ai/models/whisper-..." userName="pzo" createdAt="2025/06/25 18:06:21" color="#38d3d3">}}




{{<matomeQuote body="もっと信頼できる書き起こしAPIに興味あるなら教えてね。<br>Lemonfox.aiっていうのを作ってるんだけど、うちの書き起こしAPIは大きいファイルでもすごく安定してて速いんだ。<br>喜んで割引するよ（メール：bruno at lemonfox.ai）" userName="BrunoJo" createdAt="2025/06/26 05:47:55" color="">}}




{{<matomeQuote body="リアルタイムで、誰が喋ってるか分けながら（diarization）書き起こしできるの？" userName="satvikpendem" createdAt="2025/06/27 02:22:58" color="">}}




{{<matomeQuote body="なんでプライバシーを諦めてOpenAIに送るの？<br>Whisperってそもそもそんなに高性能なコンピュータいらないのに。<br>faster-whisper（int8, batch=8）ならCPUで13分の音声が51秒で書き起こせるよ。" userName="Tepix" createdAt="2025/06/25 16:08:17" color="#ff5733">}}




{{<matomeQuote body="俺はブルーカラーの電気工事士で、プログラマーじゃないけど（でもオタク気質）、WhisperはApple Siliconで超簡単に動いたよ。ドラッグ＼ドロップでインストール（ターミナルコマンド一切なし）。<br>ソフトは無料だし、M4 miniが550ドルくらいでしょ？<br>これにオンラインプラットフォームがどうやって勝負できるのか分からないね。一回きりの客以外はね。<br>これで母親が人生で残した何日分もの古いマイクロカセット音声を書き起こしたんだ。<br>Whisper.appは人間でも聞き取るのが難しい数時間分も書き起こしてくれたよ。<br>ものすごく速いんだ。<br>テキストを使って、聞く価値のあるタイムスタンプを探すのに使ったよ。<br>ほとんどの無音部分（例えば、母親は運転中によく録音してたから、あまりまとまってない意識の流れみたいなやつ）はスキップできたんだ。" userName="ProllyInfamous" createdAt="2025/06/26 04:49:51" color="#785bff">}}




{{<matomeQuote body="俺も同じ質問しに来たよ。<br>これ、もう完全に解決済みの問題なんだよね。<br>速度で競争するなんて全く無意味に見えるよ。反射的な敵対心みたいなもんだね。" userName="anigbrowl" createdAt="2025/06/25 17:23:41" color="">}}




{{<matomeQuote body="＞反射的な敵対心って何？<br>意味が掴めないな。<br>＞...解決済みの問題に企業の技術を使うのは、ユーザーの企業に対する自己不信の表れ...<br>え？" userName="poly2it" createdAt="2025/06/25 21:09:44" color="">}}




{{<matomeQuote body="反射的に敵対的なアプローチを取るってのは、もう完璧で、無料の、かなり効率的な解決策があるのに、それに満足せず、反射的に敵対するアプローチ（OpenAIをスピードで出し抜こうとする、みたいな）を取るってことだよ。<br>＞＞...解決済みの問題に企業の技術を使うのは、ユーザーの企業に対する自己不信の表れ...<br>え？<br>誰が書いたのか知らないし、なんでそれを俺への返信で貼り付けたのかも分からないな。" userName="anigbrowl" createdAt="2025/06/28 04:55:07" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
