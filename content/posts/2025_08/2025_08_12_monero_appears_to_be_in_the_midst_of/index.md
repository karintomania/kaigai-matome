+++
date = '2025-08-12T00:00:00'
months = '2025/08'
draft = false
title = '仮想通貨モネロ、51%攻撃が成功した模様！'
tags = ["仮想通貨", "ブロックチェーン", "セキュリティ", "AI", "マイニング"]
featureimage = 'thumbnails/purple2.jpg'
+++

> 仮想通貨モネロ、51%攻撃が成功した模様！

引用元：[https://news.ycombinator.com/item?id=44875109](https://news.ycombinator.com/item?id=44875109)




{{<matomeQuote body="6 re-orgは’51%攻撃’成功を意味しないぞ。もしそうなら、無限のre-orgか他のマイニングプールからのブロック停止が見られるはずだ（この攻撃者が他のマイニングプールを検閲していると仮定してな）。<br>これは高いハッシュを持つ攻撃者がたまたま運が良かったってことだね。彼らの主張するネットワークハッシュレートとプールの主張するハッシュレートには食い違いがある。彼らは自身のハッシュレートをネットワークに含めてないかもな。その場合、彼らはネットワーク全体のハッシュレートを上回る必要がある。51%を持っていても全体の34%にしかならないはずだ。<br>彼らは信用できない語り手だし、彼らのデータは信頼しない方がいい。彼らがネットワークの51%のハッシュパワーを持っているという証拠は不十分だ。<br>(https://nitter.net/kayabaNerve/with_replies)" userName="vlugorilla" createdAt="2025/08/12 13:21:11" color="#45d325">}}




{{<matomeQuote body="「6 re-org」って何？" userName="mvdtnz" createdAt="2025/08/12 18:30:45" color="">}}




{{<matomeQuote body="「彼ら」って誰のこと？" userName="NooneAtAll3" createdAt="2025/08/12 16:53:35" color="">}}




{{<matomeQuote body="「彼ら」ってのはSergey Ivanchegloが作ったQubicのことだね。これは「Useful Proof-of-Work」システムを使うブロックチェーンで、普通の仮想通貨マイニングみたいな任意のパズルを解くためじゃないんだ。その代わりに、マイナーの集団的な処理能力を使ってAIを訓練するんだ。<br>QubicのAI訓練作業はCPUで行われるんだけど、これはMoneroのマイニングアルゴリズムであるRandomXと同じだな。<br>Qubicは、マイナーのネットワークを動員して、一時的にAI関連のタスクを止めさせ、そのCPUパワーをMoneroネットワークのマイニングに振り向けたんだ。<br>さらに、Qubicは経済戦略も実行していて、採掘したMoneroをUSDTみたいなステーブルコインに売って、その資金を自分たちのエコシステムに役立てたり、さらにマイナーを引きつけたりしているんだ。XMRの売却益はQubicのネイティブトークン（QUBIC）を取引所から買うために使われ、購入されたトークンは「バーン」されて永久に流通から除去されるんだ。" userName="vlugorilla" createdAt="2025/08/12 17:14:29" color="#785bff">}}




{{<matomeQuote body="彼らの目的は何？" userName="greazy" createdAt="2025/08/12 17:26:42" color="">}}




{{<matomeQuote body="俺の推測だと、ポンジスキームが破綻するまで続けるってことじゃないかな。<br>だけど、QubicのAI訓練がCPUで行われ、MoneroのRandomXと同じって部分が、全く理解できないんだけど。" userName="treyd" createdAt="2025/08/12 18:19:13" color="#38d3d3">}}




{{<matomeQuote body="「ソースコード」を見てみたけど、そうじゃないね。「Useful PoW」なんてものは存在しない。Qubicは実際には分散型仮想通貨じゃないんだ。クローズドソースで、EFI実行ファイルとして動くし、彼らのDiscordチャンネルからしかアクセスできない。<br>この攻撃は、マイナーにお金を払って悪意のあるプールに参加させるのと変わらない。資金が流入している限りは機能するってことだ。" userName="fruitworks" createdAt="2025/08/12 18:55:51" color="#45d325">}}




{{<matomeQuote body="強制するのは無理だろうし、AIを万能薬のように称賛するリーダーがいるHN（Hacker News）みたいな場所じゃ絶対やらないだろうけど、「AIに聞いたらこう言った」みたいなコメントはルール違反にすべきだね。" userName="1270018080" createdAt="2025/08/12 19:42:32" color="">}}




{{<matomeQuote body="使えるプルーフオブワークは確かにあるよ。Qubicはやってないかもだけどね。リンクした論文2つがその方法の例だ。これらは100%”使える”わけじゃないけど、マイナーをランダムな道に進ませて、事前に作業を終わらせたり”ズル”したりするのを制限することで、部分的な効率を上げてるんだ。<br>1. https://eprint.iacr.org/2021/1379<br>2. https://eprint.iacr.org/2023/1059" userName="OneDeuxTriSeiGo" createdAt="2025/08/12 19:27:17" color="#ff33a1">}}




{{<matomeQuote body="用語にはちょっと疎いんだけど、ブロックチェーンでは、一番プルーフオブワークが多いブロックが正当なブロックなんだ（たぶんヘビエストチェーンって言うのかな）。新しいブロックは通常、一番新しいブロックの子孫なんだけど、前のブロックからもっと重いチェーンを作ることもできるんだ。これが以前一番重いとされてたチェーンのトランザクションを無効にしちゃう「reorg」ってやつ。過去に遡るほどreorgは起きにくいから、ブロックを無効にするreorgは超珍しいよ。もしある団体がハッシュパワーの大半を握ってたら、そのハッシュパワーの優位性が増すほど、reorgを強制する可能性が高まるんだ。これ全部書いた後で、LLMに聞けって勧めるべきだったって気づいたわ、そっちの方がいい答えくれただろうな。" userName="acjohnson55" createdAt="2025/08/13 02:25:32" color="#ff33a1">}}




{{<matomeQuote body="なんで？<br>大体のコメントは実際には有益で、AIに聞いたことを正直に言うのは重要なことだよ。この特定のコメントは間違ってたから、当然ながらすごくダウンボートされたけどね。それでも人間が書いたもので、役立とうと頑張ってたんだから。" userName="dotancohen" createdAt="2025/08/12 20:08:53" color="">}}




{{<matomeQuote body="間違ってる投稿をダウンボートするんじゃなくて、それに反論する証拠を出すべきだよ。人は間違っても罰せられるべきじゃなくて、ただ評価されないだけであるべきだ。でも、コミュニティを傷つけるような行動にはダウンボートすべきだよ。「ChatGPTに聞いた」って言うのは、「ググってやれ」って言うのと同じくらいコミュニティを傷つけるからね。" userName="dsr_" createdAt="2025/08/12 20:19:58" color="">}}




{{<matomeQuote body="アメリカがもしその価値の51%を所有したら所有権を書き換えられるって意味だったら、めちゃくちゃになるだろうね。*身振り手振りでアピール*" userName="cyanydeez" createdAt="2025/08/12 23:22:42" color="">}}




{{<matomeQuote body="意見の不一致と投票に言及したからダウンボートしたけど、あんたがもし意見が違うなら何か言うべきだって思ってるから、今回は理由を言うよ。間違ってると思ったり、単に意見が合わなかったりするものをダウンボートするのはOKで、HNのモデレーターもそう言ってるのを読んだことがあるよ。HNのユーザーにもっと多くを求めたり主張したりするのは傲慢だし、投票についての議論はほとんど場違いと見なされてるから、ガイドラインが推奨することじゃないんだ。<br>https://news.ycombinator.com/item?id=43560543<br>＞ HNでは意見の不一致に対するダウンボートは常に問題ないとされてきたよ。他の大きなサイトのルールを暗黙のうちに持ち込んでるからそう思い込む人もいるけど、それは間違いだ。<br>https://news.ycombinator.com/item?id=16131314<br>さらに上のコメントの論点だけど、生成されたコメントはガイドライン違反だよ。<br>https://news.ycombinator.com/item?id=33950747<br>＞ HNではボットや生成されたコメントは許可されたことがない。もし必要なら、https://news.ycombinator.com/newsguidelines.html に明記するけど、すでにそこにあるルールから当然だと私は思うね。人間による定型的な返信も求めてないんだ！<br>これらはdangからの引用で、俺自身の意見じゃないよ。俺はただのHNユーザーだから、みんながガイドラインについて自分で判断できるように、引用を見つけてきただけなんだ。" userName="aspenmayer" createdAt="2025/08/12 21:44:23" color="">}}




{{<matomeQuote body="違うよ、6ブロック長くする必要はない。ただ1ブロック長ければいいんだ（つまり、最後の共通ブロックから7ブロックね）。そうすれば累計難易度がより高くなることが保証されて、正直なマイナーはみんな新しいブランチに切り替わるから、古いブランチの6ブロックは無効になるんだ。" userName="tromp" createdAt="2025/08/12 19:30:11" color="#ff5c5c">}}




{{<matomeQuote body="そうそう、Qubicは実際には51%には達してないからね。騙されないで。でも、彼らは自分たちのセルフィッシュマイニング戦略でマルチブロックのreorgを実行できる十分なハッシュレートは持ってるんだ。APIのハッシュレート報告を無効にしたのは、それについて嘘をつくためだよ。マイニングを続けて、ノイズは気にしないでね。(https://nitter.net/tuxpizza/status/1955191610410401816#m)" userName="vlugorilla" createdAt="2025/08/12 13:23:40" color="#45d325">}}




{{<matomeQuote body="＞ これ全部書いた後で、LLMに聞けって勧めるべきだったって気づいたわ、そっちの方がいい答えくれただろうな。<br>それやめてくれ。そんなのは無駄なスパムだし、完全に失礼だろ。ここで「ググれよ」って人に言うか？" userName="creatonez" createdAt="2025/08/13 09:40:45" color="">}}




{{<matomeQuote body="有用なPOWなんてないよ。セキュリティは、有用な仕事の公正価値を超えるコストにのみ比例する。POWはエネルギーを費やして収入を得る考えで、不正マイニングだと努力は無駄に。例えば、5ドルで5ドルの“有用な仕事”をするPOWだとタダで攻撃されちゃう。6ドルで5ドルの仕事なら、セキュリティは1ドル分だけ。POW関数は近似や最適化ができないべきで、そうじゃないと攻撃者が有利。外部利益がセキュリティに貢献しないって事実が、このアイデアをイマイチにしてるね。" userName="nullc" createdAt="2025/08/14 00:57:51" color="#45d325">}}




{{<matomeQuote body="有用なPOWって、シニョリッジ（貨幣発行益）を発見して、お金を再発明するまであと一歩半って感じだね。" userName="contravariant" createdAt="2025/08/12 21:58:48" color="">}}




{{<matomeQuote body="これは素晴らしい回答だったよ。時間をかけてくれて嬉しい。でも、6って何を示してるのか気になるな。" userName="jmholla" createdAt="2025/08/13 02:50:07" color="">}}




{{<matomeQuote body="君のコメント、証拠を出すのは良いことだって僕の意見に暗に同意してるね:)<br>コミュニティの性格は、言ってることよりやってることで形成されるんだ。" userName="dsr_" createdAt="2025/08/13 12:08:29" color="">}}




{{<matomeQuote body="俺はそこまでクリプト詳しくないんだ。ブロックチェーンとnブロックリオーグの概念は分かるんだけど、リオーグのデメリットって何？例えば、誰がどうやって金銭的に儲けられるの？" userName="reorder9695" createdAt="2025/08/13 08:43:39" color="#785bff">}}




{{<matomeQuote body="おい、GPT-1の頃からGPTはHNの会話に直接的にも間接的にも影響を与えてるぜ。<br>信頼できる研究によると、ソーシャルメディアの30～40％はAIか自動化が関わってるらしい。これはまだ序の口だけどね。" userName="red-iron-pine" createdAt="2025/08/14 13:05:07" color="">}}




{{<matomeQuote body="これって、検索結果を漁る必要がないって点が違うんだよ。俺がClaudeに聞いてみたら、こう答えてくれたよ: https://claude.ai/share/684fa294-ee35-4044-8344-99e1ceb2e643<br>全然スパムじゃないし、専門知識が少ない人でもできるような特別なプロンプトは使ってないから。" userName="acjohnson55" createdAt="2025/08/13 18:19:57" color="#785bff">}}




{{<matomeQuote body="これ、何年か前のIRON/TITAN騒動に妙に似てる気がするな、余計な手間がかかってるけど。" userName="sidewndr46" createdAt="2025/08/12 21:45:49" color="">}}




{{<matomeQuote body="ユーザーのskarzがLLMに質問したら、LLMの答えがひどくて[フラグ]されたらしいぜ。<br>Expand the [9 more] below to see it." userName="tromp" createdAt="2025/08/13 09:37:37" color="">}}




{{<matomeQuote body="まとめると、誰かが51%攻撃のPoCをやったみたいだけど、悪意があったかは不明だね。費用は高いし、影響や成功したかどうかも意見が分かれてる。ただ、BitCoinの最大手マイナーが多くのアルトコインのコミュニティより力があるのは前から知られてたこと。これが問題かは議論の余地があるけど、今までこんなことする奴はいなかったな。" userName="moomin" createdAt="2025/08/12 12:47:11" color="#ff33a1">}}




{{<matomeQuote body="”攻撃は確実に費用がかかる”ってのは違うな。51%攻撃は、50%超えのハッシュパワーを損益分岐点以下で得る場合に限り費用がかかるんだ。もし攻撃者が攻撃中も利益が出るレートで51%以上のハッシュパワーを集められるなら、それは”確実に費用がかかる”んじゃなくて、”確実に儲かる”んだよ。損をするのは少数派さ。" userName="mattwilsonn888" createdAt="2025/08/12 14:38:01" color="#ff33a1">}}




{{<matomeQuote body="＞これが問題かは議論の余地がある。MoneroはRandomXを使ってるから、他のコインで一般的なハードウェアで高速化するのは難しいんだ。だから今回の件は、たぶんMoneroでは起きてないんじゃないか？" userName="nickysielicki" createdAt="2025/08/12 14:51:14" color="#ff33a1">}}




{{<matomeQuote body="＞今までこんなことする奴はいなかった。BitcoinとMoneroはPoWアルゴリズムが全然違うから互換性がないんだよ。BitcoinのASICじゃMoneroは絶対にマイニングできないからね。" userName="lagniappe" createdAt="2025/08/12 12:53:59" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="CPUは最悪の選択だったな。" userName="latchkey" createdAt="2025/08/12 19:50:56" color="">}}




{{<matomeQuote body="儲かるからといって費用がかからないわけじゃないぞ。単に多額の金がかかるってことだ。成功したら金が戻ってきても、攻撃には大量のリソースを投入する必要があるんだ。そのリソースを前払いできないなら、攻撃は実行できない（安価じゃなくて費用がかかるからな）。" userName="hombre_fatal" createdAt="2025/08/12 14:39:56" color="#ff5c5c">}}




{{<matomeQuote body="なんで？何がいいんだよ？" userName="pas" createdAt="2025/08/12 20:31:23" color="">}}




{{<matomeQuote body="真面目な話、『影響が議論されてる』ってどういうことか教えてくれる？俺の素人考えだと、ハッシュレートの約51%を支配すれば他の人より速くブロックを生成できて、ブロックチェーンの履歴を変えたり（再編成）できるってことで、つまり台帳が信用できないってことだろ？違うのか？" userName="apercu" createdAt="2025/08/12 13:18:45" color="#ff5733">}}




{{<matomeQuote body="「コイン」がタンパク質折りたたみ予測みたいな役に立つものと結びついたら面白いかもね。" userName="JKCalhoun" createdAt="2025/08/12 22:22:59" color="">}}




{{<matomeQuote body="その議論は親投稿とズレてるよ。BTCマイニングは集中化が避けられない。ASIC製造元が51%のハッシュ率を支配するのは確実で、これはシステム設計が悪い。BTCは生き残るためにProof-of-Stakeへ移行するしかないね。" userName="idiotsecant" createdAt="2025/08/12 15:43:10" color="#ff5733">}}




{{<matomeQuote body="攻撃に成功しても元が取れるとしても、大量のリソースが必要だよ。これには言葉がある。リスクって言うんだ。" userName="blantonl" createdAt="2025/08/12 14:48:06" color="">}}




{{<matomeQuote body="仕事に価値があるとProof-of-Workは破綻するよ。" userName="MadnessASAP" createdAt="2025/08/13 03:45:53" color="#ff5733">}}




{{<matomeQuote body="これをリスクと呼ぶかは微妙。リスクは「投資しても戻らないかも」ってことだけど、これは「51%攻撃は確実に成功するが莫大な金がかかる」って話。だから、資本集約的であって、必ずしも危険なわけじゃないよ。" userName="zamadatix" createdAt="2025/08/12 15:04:56" color="#785bff">}}




{{<matomeQuote body="そんな攻撃でXMRの価値が下落したら、それ自体が不採算になるんじゃない？" userName="ozlikethewizard" createdAt="2025/08/12 15:13:11" color="#ff5733">}}




{{<matomeQuote body="ポイントは、自分だけの履歴しか変えられないってこと。将来の商人にとって対処は簡単だよ。既存取引を改変するには、攻撃コストより商品価値が高い必要があるけど、そんなに速く送れる高額商品ってある？" userName="corimaith" createdAt="2025/08/12 13:54:51" color="#ff33a1">}}




{{<matomeQuote body="単純にXMRを空売りすれば、それで儲けられるんじゃない？" userName="jcfrei" createdAt="2025/08/12 15:42:58" color="">}}




{{<matomeQuote body="今はチェーンスワップ耐性があるかもだけど、元のブロックチェーンの理解だと、ブロックNで秘密裏に（空の）ブロックを採掘し、N+xが公開されるまで続け、プライベートな51%チェーンがN+x+1になったら公開する。プロトコルは長いチェーンを信頼し、N+1からN+xまでのトランザクションを無効にするんだ。" userName="xnorswap" createdAt="2025/08/12 14:45:38" color="#ff5c5c">}}




{{<matomeQuote body="中央集権の取引所でしかできないから、ショートすると身バレするし、出金前に資金を差し押さえられるかもよ。" userName="loxs" createdAt="2025/08/12 17:37:48" color="#ff5c5c">}}




{{<matomeQuote body="昔15万GPUでETH掘ってたけど、ETHがPoSになった今、そりゃPoSがベストなのは分かるよ。<br>でもETHがPoSになる前は、GPUでマイニングできたんだから、マイナーが移行できるチェーンがあればよかったのにな。" userName="latchkey" createdAt="2025/08/13 03:24:20" color="">}}




{{<matomeQuote body="まあそんな感じ。でもプライベートチェーンに空ブロックは要らないんだ。<br>もっと巧妙な攻撃なら、二重払いしたい自分のトランザクション以外は全部含めて、ネットワークを邪魔せずにターゲットだけ攻撃するぜ。" userName="SamPatt" createdAt="2025/08/12 16:27:36" color="#45d325">}}




{{<matomeQuote body="俺はまだPoW派だな。PoSって結局、中央集権化を促すだけだろ。" userName="subsistence234" createdAt="2025/08/13 15:56:42" color="">}}




{{<matomeQuote body="身バレってどういう意味？このスレッドのコメント読んだだけで全財産ショートに突っ込んじまうのに、何が俺を止められるんだよ？" userName="0x457" createdAt="2025/08/12 20:09:46" color="">}}




{{<matomeQuote body="マイナーがブロックを拒否できても、他人のトークンは奪えないし、履歴を書き換えても取引所は認めない。XMRの価格は暴落するだろうし、元のバージョンにフォークして復元も可能だ。ブロックチェーンは技術だけでなく、信頼や市場、人々が重要なんだ。攻撃に成功しても誰も報いないよ。" userName="loxs" createdAt="2025/08/12 17:46:10" color="#38d3d3">}}




{{<matomeQuote body="まあ議論の余地はあるけど、それ以上にPoSに変えるってことは、トークノミクス（ステーキング報酬のテールエミッションとか、21Mのハードキャップ廃止とか）を変えるってことだろ。だから、まずありえないと思うけどな。" userName="ifwinterco" createdAt="2025/08/12 15:55:44" color="#785bff">}}




{{<matomeQuote body="「絶対にない」ってどうして分かるの？ASICはフォン・ノイマンマシンをシミュレートできるから、どんなアルゴリズムでも実行できるはずだよ。効率は悪いだろうけど、不可能じゃない。ビットコインマイナーのASICがDRAMアクセスを持たないのは、ASIC全体の制限じゃないんだぜ。" userName="soganess" createdAt="2025/08/12 21:40:24" color="">}}




{{<matomeQuote body="ステーキング報酬って、マイニング報酬よりどうして必要なの？" userName="ChadNauseam" createdAt="2025/08/12 22:01:15" color="">}}




{{<matomeQuote body="BTC ASICのメーカーが安い電力で51%のハッシュを掌握するのは避けられないって？ASICメーカーはバックドアも必要だし、マイニング自体を管理してないよ。大手マイナーがネットワークにバックドアを許可するなんて考えにくいね。" userName="robocat" createdAt="2025/08/12 15:56:28" color="#ff5c5c">}}




{{<matomeQuote body="XMRの51%を支配するのに1日3000万ドルかかるんだろ？それに、誰にも気づかれずに中央集権型取引所に全財産（数億ドル）を突っ込むってYOLOかよ？無理だろ。" userName="subsistence234" createdAt="2025/08/13 16:13:26" color="#45d325">}}




{{<matomeQuote body="変だな。現在のハッシュレートは通常5 GH/sで、どこのプールも個人も50%超えてないよ。<br>https://miningpoolstats.stream/monero<br>Qubicってグループが3 GH/s集中させてるって主張してるけど、グローバルなハッシュレートは増えてないし。<br>https://www.coinwarz.com/mining/monero/hashrate-chart<br>これってただの釣りじゃないの？" userName="rahen" createdAt="2025/08/12 13:16:11" color="#ff5733">}}




{{<matomeQuote body="バカな質問だけどさ、Ethereum Classicのhttps://miningpoolstats.stream/ethereumclassic 見たら、f2pool.comが総ハッシュレートの約64%を持ってるみたいなんだけど、これも乗っ取りなの？" userName="znpy" createdAt="2025/08/12 13:58:14" color="">}}




{{<matomeQuote body="つまり、そのプールが中央で管理してるなら、Ethereum Classicの台帳は思いのままに書き換えられちゃうってことだよ。" userName="idiotsecant" createdAt="2025/08/12 15:45:20" color="#38d3d3">}}




{{<matomeQuote body="まさか、競合システムを攻撃してるって自慢してる詐欺的な仮想通貨組織が、人々に嘘をついてるなんて言うんじゃないよね？そんなことありえる？" userName="nullc" createdAt="2025/08/14 01:02:36" color="">}}




{{<matomeQuote body="下の方の円グラフにある不明なマイナーの割合をよく見てみろよ。<br>あと、https://moneroconsensus.info/ も見てみろ。" userName="fruitworks" createdAt="2025/08/12 19:11:50" color="">}}




{{<matomeQuote body="51%攻撃ってさ、こっそり実行するのは難しいんだよ。それに、一度成功しちゃったら、もうそのコインを使う人なんていなくなるだろ？破壊的な可能性はすごくあるけど、価値にとっては逆効果だよね。" userName="chuckadams" createdAt="2025/08/12 13:33:11" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="破壊からお金を稼げるデリバティブ契約でもあったらな…<br>https://www.kraken.com/en-ca/features/derivatives/monero" userName="chaboud" createdAt="2025/08/12 14:49:15" color="">}}




{{<matomeQuote body="覚えとけよ！資産の暴落に賭ける（ショートする）のにデリバティブ市場なんていらないぜ。資産を借りて売ればいいだけだからな。Moneroを借りてUSDに換えればショートできるってわけ。多くのスマートコントラクトプラットフォームでこれできるし、他のチェーンでも可能だぜ。みんな仮想通貨をショートできるプラットフォームばっか聞いてくるけど、ショートしたい資産で借金すりゃいいってこと見逃してるよな。" userName="SilasX" createdAt="2025/08/12 19:33:51" color="#ff5733">}}




{{<matomeQuote body="ああ、でもそんなことになったら、ショートした奴らの資金はすぐに没収されたりブロックされたりするだろうな。" userName="loxs" createdAt="2025/08/12 17:54:17" color="">}}




{{<matomeQuote body="どんな法律とかルールに基づいた話だよ？" userName="dbdr" createdAt="2025/08/12 22:52:45" color="">}}




{{<matomeQuote body="これはゲーム理論の問題だぜ。長期的にシステムを維持する方が価値があるなら、攻撃してその価値を破壊する意味はない。でも、攻撃によって短期的に長期参加者よりも多くの価値を引き出せるなら、攻撃は魅力的になるんだ。BTCのブロック報酬が減り続けると、大手マイナーがネットワークを攻撃する誘惑に駆られるのを避けるために、TX手数料を上げなきゃいけなくなるぜ。" userName="this_user" createdAt="2025/08/12 16:41:08" color="#38d3d3">}}




{{<matomeQuote body="Moneroは最初からずっと攻撃され続けてるんだ。唯一と言っていいくらい完全に匿名で追跡できない支払いシステムだから、使えなくしようと必死なんだよ。以前は大手仮想通貨取引所から理由もなしに上場廃止されたし、今も直接攻撃されてるってわけ。" userName="dyauspitr" createdAt="2025/08/12 16:57:14" color="#38d3d3">}}




{{<matomeQuote body="説明できないわけじゃないんだよ。仮想通貨取引所は、資産の上場が銀行パートナーの意向次第だってことを説明したくないだけなんだ。SteamがVisaやMastercardのせいで一部のゲームを削除させられたのと全く同じ理由だぜ。" userName="cassonmars" createdAt="2025/08/13 00:46:22" color="">}}




{{<matomeQuote body="もしかしたら、奴らの狙いは破壊そのものかもな。" userName="taylorius" createdAt="2025/08/12 13:52:56" color="">}}




{{<matomeQuote body="Moneroが滅びるのを見たい奴らはたくさんいるからな。" userName="seanw444" createdAt="2025/08/12 16:18:32" color="">}}




{{<matomeQuote body="未知の仮想通貨の脆弱性や51%攻撃ってのは、理論上は存在する仮想通貨のリスクだけど、ほとんど現実には起きてないよな。でも、いつかAIをやってる誰かが大量のGPUを集めてBitcoinを51%攻撃する可能性もあるぜ。その通り、コインへの信頼は破壊されるから、攻撃前にBitcoin先物をショートすれば儲かるかもな。" userName="dehrmann" createdAt="2025/08/12 16:38:58" color="#ff5c5c">}}




{{<matomeQuote body="AIやるやつがいつか大量のGPUでBitcoinを51%攻撃するかもって話だけど、Bitcoinじゃ電気的に無理だよ。最新のASICはRTX5090より3桁もハッシュ/ジュールとハッシュレート/チップが上で、1チップ2～40ドルなんだから。" userName="15155" createdAt="2025/08/12 19:18:30" color="#ff5c5c">}}




{{<matomeQuote body="みんな、もう10年以上GPUでBitcoinマイニングしてないよ。" userName="Sohcahtoa82" createdAt="2025/08/12 23:02:36" color="">}}




{{<matomeQuote body="https://xcancel.com/p3b7_/status/1955173413992984988" userName="lblume" createdAt="2025/08/12 12:47:20" color="">}}




{{<matomeQuote body="https://nitter.net/tuxpizza/status/1955191610410401816#m" userName="vlugorilla" createdAt="2025/08/12 13:24:05" color="">}}




{{<matomeQuote body="攻撃側が優勢みたいだね。あのウェブサイトを見ると、未知のプールがどんどん長いチェーンを掘ってて、そこに切り替わってるのがわかるよ。" userName="typpilol" createdAt="2025/08/12 21:03:15" color="#785bff">}}




{{<matomeQuote body="未知のマイナーのうち、Qubicって何%くらいを占めてるの？" userName="subsistence234" createdAt="2025/08/13 19:38:22" color="">}}




{{<matomeQuote body="もし俺が見落としてなきゃ、この話は怪しいな。51%攻撃が成功したら、他のマイナーはすぐ気づいてマイニングをやめるはずだろ。それが起きてないってことは、Twitterの適当なやつより信頼できるってことだよ。" userName="Etheryte" createdAt="2025/08/12 12:29:23" color="#38d3d3">}}




{{<matomeQuote body="他のマイナーがマイニングをやめたら、それは100%攻撃になるだろ？昨日Moneroノードを動かして見てたら、異常な数のチェーン再編成メッセージが来たんだ。だから51%攻撃があったって信じられるよ。" userName="immibis" createdAt="2025/08/12 12:53:33" color="#785bff">}}




{{<matomeQuote body="ネットワークはみんなでチェーンをフォークして、そのフォークで攻撃者をブラックリストに入れるかもしれないね。" userName="corimaith" createdAt="2025/08/12 13:56:07" color="">}}




{{<matomeQuote body="それは無理だよ。マイナーにはブラックリストに入れるような”識別情報”がないんだから。" userName="jadamson" createdAt="2025/08/12 14:17:40" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
