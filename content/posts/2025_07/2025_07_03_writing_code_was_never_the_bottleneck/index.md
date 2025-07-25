+++
date = '2025-07-03T00:00:00'
months = '2025/07'
draft = false
title = 'コードを書くことはボトルネックではなかった 本当の課題とは？'
tags = ["プログラミング", "AI", "ソフトウェア開発", "コード品質", "開発効率"]
featureimage = 'thumbnails/purple7.jpg'
+++

> コードを書くことはボトルネックではなかった 本当の課題とは？

引用元：[https://news.ycombinator.com/item?id=44429789](https://news.ycombinator.com/item?id=44429789)




{{<matomeQuote body="LLM使ったジュニア開発者教えるの超大変だったわ。コード量は増えたけど、レビューでコードの深いとこ理解してないし、変なバグ出るし、PRもグダグダ。結局、教えるこっち（シニア）の負担が増えまくり。ジュニアは気分いいかもだけど、こっちは正直ゲンナリだよ。どうすりゃいいんだろね？最初はテスト増やせばいいかと思ったけど、それもダメだったわ。" userName="andrelaszlo" createdAt="2025/07/03 09:38:36" color="#38d3d3">}}




{{<matomeQuote body="1のコメント、マジわかる！見た目だけ整ってて全然動かないバグ、昔の外注プロジェクト思い出したわ。仕様書通りなだけで全然使い物にならなかったんだよね。LLMのおかげで、ああいうテキトーな仕事がこれからタダで量産されちゃうんだろうな。" userName="dizhn" createdAt="2025/07/03 10:16:35" color="">}}




{{<matomeQuote body="これから低品質なソフトがマジで山ほど出てきそう。ベテランはいいの作るだろうけど、経験浅い奴らがLLMでガンガンしょぼいコード吐き出すペースがヤバすぎて、もう追いつけないって。1のコメントの人も言ってたけど、マジで圧倒されちゃうんだろうね。ソフトの海の底に沈みそう。" userName="Sammi" createdAt="2025/07/03 10:41:04" color="">}}




{{<matomeQuote body="自分でLLM使ってみて、1のコメントわかるわー。コードはすぐできるけど、レビューとかバグ直しとか超大変。結局、自分で書いた方が早い時も多い。LLMで速くなったって言ってる人って、たぶんレビューとかサボってるだけじゃない？真面目に質こだわる人に負担押し付けてる感じ。この流れ、絶対悪くなる一方だよ。" userName="imiric" createdAt="2025/07/03 10:05:51" color="#ff33a1">}}




{{<matomeQuote body="LLMでコード作るって言っても、コード見ない「vibe coding」、修正する「augmented coding」、全部理解するの3段階あると思うんだ。LLMで速くなるのは最初の2つ、特にコピペの効率化だね。全部理解するのはLLM使っても速くならないと思う。自分でテストしながら書くの、バグ減らせるしデバッグも楽になるから超重要。まあ、しばらくはカオスだろうけど、LLMも最終的にはうまく使われるようになるんじゃない？" userName="fhd2" createdAt="2025/07/03 10:33:59" color="#ff5c5c">}}




{{<matomeQuote body="俺の年バレちゃうけど、これって90年代後半のVisual Basicブームとそっくりなんだよね。VBは使いやすかったけど、経験不足の自称「開発者」が変なの量産して、VBアプリってしょぼいってイメージついちゃったの。今度はLLMが、VBみたいに特定のじゃなくて、ソフトの世界全体にヤバいのばら撒いてる感じだわ。" userName="hn_throwaway_99" createdAt="2025/07/03 13:43:55" color="#38d3d3">}}




{{<matomeQuote body="一回しか使わないコードなら（vibe codingみたいに）適当でもいいかもね。でもさ、プロダクトの土台になる大事なコードを、あんな感じで適当に作ってる人がいるってのがマジで驚き。まあ、LLM出る前から結構そういうのあったかも…って思うと、なんか不安になるんだよね（俺がインポスター症候群なのかな？）。" userName="AbstractH24" createdAt="2025/07/03 10:39:52" color="">}}




{{<matomeQuote body="コードをテストしないなんて、それLLMの問題じゃなくて、やり方の問題じゃん。PR出す前にちゃんと確認するとか、そういう開発の基本ができてないだけだろ。LLMは全然関係ないって。" userName="epolanski" createdAt="2025/07/03 09:51:57" color="">}}




{{<matomeQuote body="こういうのにどう対抗するかって？やり方はあるよ。Linuxカーネルとか良い例じゃん。LLM出る前から質の低い投稿で悩んでたんだ。解決策はさ、コード出す側にめんどくさいぐらいの厳しい基準守らせて、レビューする側はダメなもんはマジ容赦なく「却下！」って言うこと。それしかないね。" userName="oytis" createdAt="2025/07/03 12:19:14" color="#ff5733">}}




{{<matomeQuote body="9の対策（厳しく却下）、同僚相手にもできるかな？なんかやりにくそう…。ていうか、組織でコード書くのにわざわざ手間かけさせるようにするなら、そもそも何でLLMなんて使ってんの？って話にならない？なんか矛盾してる気がするんだけど。" userName="gyesxnuibh" createdAt="2025/07/03 12:35:50" color="#ff5733">}}




{{<matomeQuote body="うちの会社の若いチームは、コード書くより「雰囲気で計画する（vibe plan）」にめちゃくちゃ時間かけてるんだ。プロダクトをもっと考え抜いて、とにかく明確にする必要があるからね。みんなやり方は違うけど、誰かに話したり、批判したり、作業を細かく分けたり（Jobs to be doneとかビジネス要件とかドメイン駆動設計とかUXライティングとか、マジであらゆる成果物）、とにかく計画をしっかりやるんだ。<br>ツールとフィードバックループ（コード品質ツールは何でも）を整えるのが優先だよ。計画で決めたことを守るカスタムルールも必要。ここに時間かければみんな楽になる。<br>すごく細かく計画立てて、そしたら自動リンティングとかテストとか手動評価とか、自動フィードバックをできるだけ多く仕掛けるんだ。<br>俺は2～4時間計画とかドキュメントに時間かけて、そしたら1ストーリーポイントくらいの小さいPRDをいっぱい作る。完了の定義も明確。<br>こうすると、1～2時間くらいジム行ったり会議したり、手放しでいけるようになるよ。" userName="Foreignborn" createdAt="2025/07/03 09:59:23" color="#785bff">}}




{{<matomeQuote body="これってウォーターフォール開発の失敗談みたいだね。<br>プロジェクト終わる前に品質問題に気づけなかったの？" userName="MaxBarraclough" createdAt="2025/07/03 11:29:13" color="">}}




{{<matomeQuote body="VBから背を向けたみたいに、AIからも背を向けられるのかな？もしそうなら、何か決定的な出来事が必要だと思う。俺の勘だと、いや、無理だろうなって思うね。" userName="Henchman21" createdAt="2025/07/03 14:03:07" color="">}}




{{<matomeQuote body="これは教育の問題と似てると思うんだ。評価のために書かれたものを読む時間を減らすべきってこと。<br>効果的なコードレビューはもっと継続的になって、「コード全部読んだよ、フィードバックするね」じゃなくて、「これどういう意味？」って説明求めることから始めるべき。テキストが大量に出力される今、それは無理。<br>AIは採用でも同じ問題を起こす。知識があるように見せかけるんだ。評価する側の問題は、知識へのインターフェースが言葉しかないこと。これは哲学の古い問題に似てるね。ソクラテスはソフィスト、真実より言葉や議論にこだわる人たちを散々非難した。今、それが産業規模で起きてる。<br>テストの話だけど、最初は自動テストじゃなくて（もちろん最終的には必要だけど）、コードを実際に動かして説明してもらうのがいいと思うんだ。それがずっといいテストだよ。「どう動くか見せて、説明して」ってね。" userName="thisoneisreal" createdAt="2025/07/03 09:54:35" color="#38d3d3">}}




{{<matomeQuote body="自分が書くのを面倒がったコードをレビューしなきゃいけない人、マジでお気の毒にって祈るよ。" userName="lionkor" createdAt="2025/07/03 10:39:10" color="">}}




{{<matomeQuote body="＞ 経験豊富な優秀な開発者がより良いソフトウェアを作れる<br>個人的にはちょっと違うと思うんだ。優秀な開発者ほど、質の悪いソフトを書かされたり、質の悪いソフトのせいでボトルネックになったりするプレッシャーに晒されると思う。もちろん会社や文化にもよるけどさ。経験ある開発者として、ジュニア開発者とかマネージャーとかには全く分からないことを説明しなきゃいけなくなって、自分がボトルネックになって、全部のプレッシャーが自分にかかってくるんだ。<br>「80%で十分」「完璧を目指すよりまず終わらせろ」「お前がチームを止めてる、締め切りがあるんだ」みたいなこと、色んなこと言われるようになるし、もっと酷くなるだろうね。本当にいいエンジニアリング文化がある場所に恵まれれば別だけど。" userName="p_v_doom" createdAt="2025/07/03 14:31:34" color="">}}




{{<matomeQuote body="色んな似たようなプロジェクトに参加した者として言わせてもらうと、船は港にいる時点ですでに穴がいくつか空いてるってみんな分かってるんだけど、船長はとにかく出航を決めるんだ。<br>結局、深海で船が沈みかけながら、日常的にバケツで水汲み出して、一番近い島にたどり着いて、そこにあるもので船を修理して、また次の島へ向かって航海を続けることになる。バケツはいつでも準備万端でね。<br>エンタープライズプロジェクトをいくつか経験すると、このビジネスから離れるか、このやり方に慣れるしかないって学ぶんだ。<br>それが、地域によっては仕事探しが大変だったりすると、特に難しいかもしれないけどね。" userName="pjmlp" createdAt="2025/07/03 11:40:48" color="">}}




{{<matomeQuote body="うちは、4倍も高いSOW（作業範囲記述書）の固定価格契約を、ニアショアでやって、さらに下請けに出して、担当者がコロコロ変わる、ってのに対応したよ。<br>SOWがマジで酷くて、悪意を持ってそれに従うのが簡単だったし、受け入れテストが全然なかった。結果、法務部は、IT部門がベンダーと契約で揉めても勝ち目ないって思ってて、結局、全くリリースされなかったコードベースを直してもらうために、ずっとコストの再交渉をしてたんだ。<br>どれだけ酷かったかの例として、例えば、airflowみたいなツールでダウンロードタスクを生成するためのメタデータのデータベースがあったとするじゃん。でも、日々の100ソース、各1000ファイルとかを、100個くらいのタスクにまとめる sane（まとも）なグループ化をする代わりに、ファイル単位・日単位でタスクを生成したから、700,000タスクのグラフになっちゃったんだ。<br>当時使ってたSaaSのdag/schedulerツールがあったんだけど、もしデプロイしてたら、何十年もやってる200人規模の組織全体が当時使ってたタスク数の5倍も使うことになって、その分払う羽目になってた。<br>あと、ファイル到着SLAチェッカーの実装が酷くて、遅れてファイルが到着した時にしかアラートが出ないようになってた。だから、ファイルが全く来ないとアラートが出ない。もしくは、日々のファイルが1週間遅れて到着すると、遅れた1週間前じゃなくて、到着した時にアラートが来るんだ。" userName="steveBK123" createdAt="2025/07/03 11:27:16" color="#ff33a1">}}




{{<matomeQuote body="ちなみに正直言うと、俺はVBから背を向けたのは間違いだったと思うんだ。<br>確かにクソみたいな、かろうじて動くプログラムもたくさん作られたけど、それらはVBがなかったら存在しなかったプログラムだったんだ。例えば、小規模ビジネスが何か自動化するのにVBは最高だったし、かろうじて動くだけのプログラムでも、何もないよりはマシだったんだよ。" userName="AnotherGoodName" createdAt="2025/07/03 15:29:59" color="">}}




{{<matomeQuote body="CloudflareのエンジニアがOAuth作った話で、AIのおかげで数日で作れたけど、本来なら数週間～数ヶ月かかったらしい。このスレッド面白いのは、AIコード生成のメリットもデメリットもはっきり示してること。専門家にとってはすごい時間短縮になったけど、AIが作った「ゲームオーバー」級のバグもあって、ジュニアエンジニアなら多分そのままマージしちゃっただろうね。URL: https://news.ycombinator.com/item?id=44159166" userName="hn_throwaway_99" createdAt="2025/07/03 16:52:10" color="#ff5c5c">}}




{{<matomeQuote body="＞これで努力が逆転して、シニア開発者がジュニアのPRに使う時間の方が多くなった<br>これ、俺も同じ状況だわ。SMEとしてPR担当がAI使って書いた文章を直してるんだけど、これが「努力の反転」なんだよね。校正時間が3～4倍になったよ。彼らはAIと違って学習しないし、このままだと来年PR担当の50％はいらなくなるかも。俺が自分でChatGPT使った方が早いもん。" userName="a_bonobo" createdAt="2025/07/03 12:00:40" color="#ff33a1">}}




{{<matomeQuote body="コードレビューが新しいボトルネックになったね、ずさんなAIコードが codebaseに入るのを防ぐ層だから。<br>俺がやってて役に立つのは、PR出す前に自分で要約書くこと。何が変わったか、機能的な変更とか、非機能的な変更とかね。これ書くと自分で変更点全部見直せるから、古いコメントとか、使われてない関数とか、自分で直せることが結構見つかるんだ。レビューアも何が来るか分かって楽になるし。" userName="diogolsq" createdAt="2025/07/03 13:36:12" color="#ff33a1">}}




{{<matomeQuote body="＞レビュー中、コードを深く考えてなかったからコメントが理解できないことが多かった。「了解、直します」みたいに（LLMみたいに）返事された<br>ここ、もう少し詳しく教えてくれない？俺も似たような問題抱えてるから、何か insightあればありがたい。" userName="jedimastert" createdAt="2025/07/03 12:26:44" color="#ff33a1">}}




{{<matomeQuote body="「明らかに自分で書いてないからやり直せ」って言うのは、AI時代の会社の進歩を妨げる「恐竜」だって言われるから、選択肢にならないってことかな？" userName="oytis" createdAt="2025/07/03 10:28:29" color="">}}




{{<matomeQuote body="俺は一人で開発してるから、LLM（codex-1）すごく便利に使ってるよ。コードベースの品質が低くなるのは受け入れてる。うまくやってる方法は、たくさんテストが通った後に、テストをプロパティテストに近づけるようにリファクタリングすること。複雑なシナリオを通しても状態が良いかチェックすることで、LLMが「チート」しにくくなるんだ。" userName="xiphias2" createdAt="2025/07/03 11:05:16" color="#ff5c5c">}}




{{<matomeQuote body="中期的には、featureやbug fixの「労力」を上流、つまりjuniorも含めたIC開発者にシフトすべきだと思う。 seniorが設計してICが実装、そしてseniorがコードレビューっていうこれまでのmental modelを変える必要があるね。今は、featureが全体像にどうfitするか考えたり、edge cases考慮したり、設計を提案したりできないjuniorは正直チームに価値を見いだせないし、雇用できないと思う。短期的には、pull requestの品質への責任をジュニアに明確に伝えなきゃダメだね。" userName="stuartjohnson12" createdAt="2025/07/03 09:54:34" color="#ff5c5c">}}




{{<matomeQuote body="junior開発者には、pull requestでめちゃくちゃ高い基準を要求すればいいんだよ。分からないことは質問していいけど、質の悪いpull requestを送ってきて何か見つけたら、（小さな）癇癪起こしてもいい。AIが作ったコードでも、完全に理解してない（質問したら分かる）pull requestはrejectするべき。（小さな）癇癪ものだよ。" userName="aleph_minus_one" createdAt="2025/07/03 11:24:48" color="#ff5c5c">}}




{{<matomeQuote body="コードのクリーンアップを助けるコードを爆発的に増やすために、ユニバーサルなDOM（bablr-lang）を作ってるよ。HTMLみたいにコードのsyntax nodesのツリーを扱う標準がないから、codemodsを書く人が特定のエンジンに縛られちゃうんだ。標準があれば、カスタムcodemodsとかlint rulesを書くインセンティブが drastically高まるはずなのに。URL: https://github.com/bablr-lang/" userName="conartist6" createdAt="2025/07/03 12:22:05" color="#ff5733">}}




{{<matomeQuote body="これって資本主義の奇妙な産物っぽいよね。<br>現場ではみんな失敗するって分かってたのに、経営陣や投資家は信じ続けたプロジェクトいくつも経験したよ。<br>現実の捉え方が階級で全然違うんだ。<br>この洞察で稼げないかなー、無理かな。" userName="pydry" createdAt="2025/07/03 12:00:53" color="">}}




{{<matomeQuote body="LLMがなくても、ソフト開発は市場の需要や資金がボトルネックになってたんだよね。<br>コード不足じゃなくて。<br>ツールが進化して、コード書くこと自体は二の次になってる。<br>業界初期とは全然違う世界だよ。<br>Bill Gatesが良いエピソード話しててさ。<br>コード書ける能力が超希少だった時代、彼は10代なのに雇われた。”気にしないから”って。<br>彼がコード速く書くのに驚いてたって。<br>昔はコード書くのがボトルネックだったけど、今は”何を建てるか、ビジネスになるか？”に課題が移ったんだ。<br>ソース: https://youtu.be/H1PgccykclM?si=YuIFsUcWc6sHRkAg" userName="afiodorov" createdAt="2025/07/03 09:23:24" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="LLMなくても、市場の需要がボトルネックだったってのは納得できるな。<br>AIブーム前、Marc Andreessenも”良いアイデアより資金が多い”って不満言ってたし。<br>個人的には現実離れしてると思うけど、資金持ってる人の一次情報としては信頼できるよね。" userName="OtherShrezzing" createdAt="2025/07/03 09:32:50" color="#785bff">}}




{{<matomeQuote body="良いアイデアをSaaSだけに限定するなら、すぐ飽和するだろうね。<br>でも、ハードウェア絡むものとか、世界征服目指さず特定の顧客nicheをうまくやる持続可能なビジネスには、もっと資金が必要だよ。" userName="oytis" createdAt="2025/07/03 09:44:25" color="#ff33a1">}}




{{<matomeQuote body="”アイデアより資金が多い”って問題は、Silicon Valley中心の見方だと思う。<br>途上国には良いソフトの巨大な需要があるのに。<br>要はアイデア不足じゃなくて、VCが飽和市場向けの怪しいアイデアに資金投じて、hyper-growthモデルに合わない世界の具体的なニーズを見過ごしてるだけだよ。" userName="afiodorov" createdAt="2025/07/03 09:37:16" color="#45d325">}}




{{<matomeQuote body="hyper-growthモデルに合わないから世界のニーズを見過ごしてる、じゃなくて、あれもhyper-growthモデルに合うと思うな。<br>ただ投資家が米国中心の市場知識しかないから、違う市場向けのアイデアをまともに判断できないだけじゃない？" userName="aleph_minus_one" createdAt="2025/07/03 11:42:38" color="#ff5c5c">}}




{{<matomeQuote body="投資家って、開発されたものが実際にどれだけ役に立つかなんて普通気にしないよ。<br>彼らが欲しいのは高いROIだからね。" userName="nitwit005" createdAt="2025/07/03 18:20:04" color="">}}




{{<matomeQuote body="Bill Gatesのコード書く能力が希少だった話、あれさ、高品質なコード書く能力や深い知識は今も希少なんだよ。<br>昔との違いは、業界がそれを気にしなくなったことじゃないかな。" userName="aleph_minus_one" createdAt="2025/07/03 11:38:50" color="#785bff">}}




{{<matomeQuote body="これは色んな世代のプログラミング言語やツール、best practicesのおかげでもあるね。<br>LLMがいきなり生産性を上げたわけじゃなく、ツール進化が貢献したんだ。<br>昔はツールも知識もなくて、Bill Gates世代は窓の概念とかgraphicsの基礎から発明したんだよ。<br>今のソフトは巨人の肩の上に建ってるんだ。" userName="Cthulhu_" createdAt="2025/07/03 11:45:11" color="#ff5c5c">}}




{{<matomeQuote body="ちょっと話それるけど、この問題って”impact of ai”評価にすごく関係あるよね。<br>僕たち、効率を過大評価しがち。<br>経済って市場需要とか資金とか、複雑なボトルネックだらけだから。<br>コードが100倍増えても、それ全部使えるかって言うと、そうは思えないな。" userName="netcan" createdAt="2025/07/03 10:39:16" color="#38d3d3">}}




{{<matomeQuote body="今の100倍はコード書けるはず。捨てられるコードも山ほどあるけど、書けば僅かな価値は生まれる。まぁ、100倍書いても価値は100倍にならないだろうけどね。コード単位の価値はパレートの法則みたいなもんかな。" userName="JoshuaDavid" createdAt="2025/07/04 00:38:14" color="">}}




{{<matomeQuote body="＞コード書けるってだけで16歳雇ってる<br>違うって。ソフトウェア製品を届けられるからだよ。全然違う。BASICのゲーム写してただけのガキは「コード書けた」けど、ビル・ゲイツじゃないし。（ビル・ゲイツはコネだけどそれは関係ない）" userName="otabdeveloper4" createdAt="2025/07/04 05:27:44" color="">}}




{{<matomeQuote body="みんなの話、マジでヘコむね。ジュニアが動かない、テストされてない、整理されてない、情報のないコード出すなら、それはもうLLMと仕事してるのと同じ。単なるウェットウェア通してるだけ。本質は批判的思考と責任感、これはいつの時代もそう。ぶっちゃけ、高学歴で高給なジュニアより、LLMの方がフィードバック聞くかもね。これ、皮肉じゃなくマジな話。" userName="whatevsmate" createdAt="2025/07/03 11:19:13" color="#38d3d3">}}




{{<matomeQuote body="ジュニアがLLMコードをシニアにレビューさせるのは、LLMがダメじゃなくて、ジュニアがダメなサインだよ。俺はシニアが直接LLMとやるべきだと思うね、仲介人なしで。" userName="raincole" createdAt="2025/07/03 11:59:58" color="">}}




{{<matomeQuote body="この状況での最大の問題は、ジュニアがどうシニアになるか、悪いジュニアが良いジュニアになるかだね。基本的なこと beyond what’s taught を学ばず、「トレード知識」も経験しない。LLMが全部吸収してるって信じ込んでる。エンジニアリングはトレードオフが全て。10個の方法から最適な1＼2個を選び、その答えにたどり着く質問を知るのがシニアなんだよ。" userName="m_mueller" createdAt="2025/07/03 12:34:31" color="#ff33a1">}}




{{<matomeQuote body="解決策が見えてきたね。ジュニアはLLMがコード書きをやってくれるから、空虚なプログラミング技術より、壊さない、意図しない副作用がない、複雑さを増やさないコードの作り方を気にするべき。俺の経験だと、単独でコード書くのはジュニアもうまい。でもジュニアとシニアの違いは、統合、正確さ、シンプルさだね。LLMがコード書きの面倒取り除けば、他の要素に集中できて、もっと早くシニアマインドになるかも。もちろんコードベースは壊すだろうけど、それは昔からだし。ただそれがもっと早くなるだけだよ、良いことだ！" userName="lubujackson" createdAt="2025/07/03 16:39:50" color="#ff33a1">}}




{{<matomeQuote body="LLMはコーディングツールであって、結果の判断者じゃない。人間が評価し、問いかけ、比較し、調査し、直感を育むスキルは、ツールとは完全に別。これらはプロジェクト、顧客への提供、本番稼働とかで育つ。これはXY問題だよ。本当の問題Yは、未検証で粗悪な仕事を出すヤツらだね。" userName="whatevsmate" createdAt="2025/07/03 12:56:44" color="#ff33a1">}}




{{<matomeQuote body="LLMって使うの超簡単だから、中毒性あるんだよね。シニアの俺でも、調べ物すべきなのにLLMに聞いちゃうことがあるよ。" userName="OvbiousError" createdAt="2025/07/03 14:11:16" color="">}}




{{<matomeQuote body="俺はLLMでコード書いてるけど、マジで便利だと思う。新しいやり方を学ぶのは超楽しかったよ。<br>ジュニアも使うべきだね。でも、変なコードがプルリクに出されるのがLLMのせいだって言うのは、現状を見てないと思うな。" userName="whatevsmate" createdAt="2025/07/03 15:04:23" color="#ff5c5c">}}




{{<matomeQuote body="オンラインで調べるのは、広告だらけで良い情報が埋もれてたり、ウェブサイト自体がステルスマーケティングみたいな内容で溢れてるから嫌なんだよね。ライブラリにちゃんとしたドキュメントがある場合は例外だけど。" userName="protonbob" createdAt="2025/07/03 22:44:32" color="">}}




{{<matomeQuote body="今は会社の上層部が「これらのツールを使え」って指示してる状況だからね。ジュニアの社員はCEOの言うことを聞くことになるだろうさ。" userName="nitwit005" createdAt="2025/07/03 18:22:29" color="">}}




{{<matomeQuote body="なんでジュニア開発者がLLMを使っちゃダメなの？それこそ未来のスキルだし、この記事の議論の根幹でもあるじゃん！<br>ジュニア開発者はLLMの使い方を学ぶモチベーションがあるし、俺たちが言ってるのは全員が学ぶべきってことだろ。だから、わざわざジュニアだけはダメ、みたいな例外を作るために議論をこじらせる必要はないよ。彼らは批判的思考とか責任感とかを学ぶべきだ？LLMを使うことは、書いたものの理解を直接的に減らすんだから、コードの書き方を学ぶのと、スキルを将来性のあるものにするの、両方は無理だよ。" userName="intended" createdAt="2025/07/03 14:32:55" color="#38d3d3">}}




{{<matomeQuote body="俺が書いたことは、別にこれに反論してるわけじゃないよ。<br>例外なんて設けてない。考えなしにゴミみたいなコードをプルリクに出して、他の人にレビューさせる奴は、責任を放棄してるってこと。" userName="whatevsmate" createdAt="2025/07/03 15:06:55" color="">}}




{{<matomeQuote body="仕事で使うなら、これ100%同意、文句なし。LLMが一番役に立ったのは、実はサイドプロジェクトなんだ。<br>そこではマジでコード書くのがボトルネックだった。ちょっと思いついた小さな問題を解決するためのアプリのコードを書くのに、十分な時間を割けない（っていうか、割こうとしない、が正直かも）んだよ。" userName="threemux" createdAt="2025/07/03 10:18:05" color="#ff33a1">}}




{{<matomeQuote body="全く同意。毎日1～2時間Claude codeを使えば、週末には実際に使える個人プロジェクトができたりする。あるいは週末の半日くらいでアイデアが成り立つか試したりね。<br>でも、それってプロの現場でも超重要だと思うんだ。改善するために作りたいツールがたくさんあるけど、いつも時間が足りないだろ。Claude codeと1～2時間使えば、管理ダッシュボードとか、手動でやってたことの自動化とかができたりする。<br>同僚がDBの内容について質問してきたら、Claudeが欲しいSQLクエリを教えてくれて、それをレビューしてMetabaseとかRetoolにコピペすれば、もうエンジニアにブロックされる必要がなくなる。こういうことが、俺のmcp-front[0]を作るモチベーションになったんだ。エンジニアじゃない同僚が、この一連の流れを自分でできるようにしたかったんだよ。<br>[0] https://github.com/dgellow/mcp-front" userName="dgellow" createdAt="2025/07/03 11:02:53" color="#ff33a1">}}




{{<matomeQuote body="俺たちは definite.app で「エンジニアにSQLを聞かない」を専門にしてるよ。データレイクを立ち上げて、君のデータを全部ロードして、君のデータについてエージェントを教育するんだ。" userName="mritchie712" createdAt="2025/07/03 12:25:37" color="">}}




{{<matomeQuote body="LLMは、一回だけ使うスクリプトを書くのに役立つよ。正しく動いてるか自分で確認できるからね。あとは、数行のコードの書き方が気に入らない時に、もっときれいな書き方はないか、例えば忘れてるAPIとかメソッドがないか聞いてみる。その書き換えの提案は理解できるんだ。<br>でも、何百、何千行ものコードを吐き出させて、ハッピーパスのテストだけして出すなんて正気じゃない。<br>将来のソフトウェアの品質がマジで心配だよ。" userName="hbn" createdAt="2025/07/03 15:53:43" color="#785bff">}}




{{<matomeQuote body="確かにそう。キャリアが進むと、何週間もかけられないし、非機能要件とか長期的な視点も大事だってわかる。テストとかサボっても、結局後で大変になるんだよね。" userName="Cthulhu_" createdAt="2025/07/03 11:46:10" color="">}}




{{<matomeQuote body="LLMのおかげで、またサイドプロジェクトを楽しめるようになったよ。ホント、何か作るのがめちゃくちゃ簡単になったんだ。" userName="shepherdjerred" createdAt="2025/07/03 20:21:38" color="">}}




{{<matomeQuote body="それはある意味正しいけど、コード書くのがボトルネックになることだって多いんだよ。実験とか、いろんなやり方試すとか。例えば、今朝はClaude Codeで380万行のAWS設定JSONを可視化するブラウザアプリを15分で作れた。数週間前は仕様からクライアント／サーバーアプリを何種類も、数日前はPython CLIにWeb UIをつけるのをほぼ一発で。LLMなかったら絶対できなかったね。コードがボトルネックじゃないケースもあるけど、それだけじゃないってこと。" userName="linsomniac" createdAt="2025/07/03 14:37:11" color="#45d325">}}




{{<matomeQuote body="うん、同意。Cursorはテストや検証スクリプト、つまんないコード、実験を書くのに最高だよ。<br>細かいこと気にしないで、アーキテクチャとかどう繋がるかとか、そっちに集中できるようになった。" userName="shepherdjerred" createdAt="2025/07/03 20:19:56" color="#45d325">}}




{{<matomeQuote body="前はコード書くのがボトルネックだと思ってたけど、10年かけてわかったのは、ビジネスと技術を合わせるのがマジで大変だってこと。顧客の視点で製品の価値を掘り下げるのが重要で、開発者のエゴでいらん機能（JavaScriptのfancyなやつとか猫のおもちゃみたいなの）作っちゃダメ。インセンティブ上げても解決しないし、給料高くても複雑になるだけ。顧客のために奉仕する人が最低一人必要だね。Figmaのクラウド支出の現実的なアプローチはこれかも。" userName="bob1029" createdAt="2025/07/03 12:10:02" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="”ビジネスと技術の整合がマジで大変”に同意。仕事で一番難しいのは、ビジネス要求から”ホントは何が欲しいの？”って探ること。ユーザーは今の希望しか言わないから、そのまま作ってもダメ。決定の結末を考えて、調整しなきゃ。LLMはこれが苦手で、”改善”されたモデルはイエスマン化してて余計ダメになってる。アイデアがダメってLLMに言われたことないし、これ、開発ではヤバい問題だよね。" userName="hbn" createdAt="2025/07/03 16:03:10" color="#785bff">}}




{{<matomeQuote body="ロバート・C・マーティンの引用、”コードを読む時間と書く時間の比率は10対1以上”を思い出したよ。もしプログラマーが9割以上読む方に時間を使ってるなら、LLMでコード生成を最適化しても、プログラミング全体の作業のごく一部だけだね。これ、記事のポイントと似てるみたい。引用元: https://www.goodreads.com/quotes/835238-indeed-the-ratio-of-..." userName="AshleysBrain" createdAt="2025/07/03 11:21:32" color="#ff5733">}}




{{<matomeQuote body="もっと悪いと、書く時間は減っても読む時間が増えて、結局全体の作業量が減らないこともあるかもね。" userName="kgwgk" createdAt="2025/07/03 11:28:16" color="">}}




{{<matomeQuote body="コードを読むのは、それを変更したり拡張したりするためなんだ。もし変更も拡張もする必要がないなら、読む必要もなくなっちゃうよね。" userName="Ma8ee" createdAt="2025/07/05 07:52:51" color="">}}




{{<matomeQuote body="残念ながら、彼の提唱するClean Codeスタイルで作られるマイクロメソッドは、全く逆の結果を招くんだ。コンテキストが全然近くになくて、あちこちに散らばって、目的を台無しにしてるよ。" userName="pragmatic" createdAt="2025/07/03 12:21:51" color="">}}




{{<matomeQuote body="コードを読むだけで雇われるなんて仕事はないけどね。俺はおおよそ1000万行のコードを読んだけど、1行も書いてない。ただ読んでるだけでたくさんのプログラムを作ってきたんだ。みんなもプログラムを読む方法を学ぶべきだよ。ほとんどのオープンソースコードはひどいし、企業コードはたいていもっと悪い、いつもじゃないけど。Donald Knuthがかつて言ったように、コードは読まれるためにあるんだ。リテラートプログラミングの時代はいつか来るだろう、100年後か、あるいは3年後か。" userName="emporas" createdAt="2025/07/03 18:08:09" color="#ff5733">}}




{{<matomeQuote body="LLMに食わせて新しいLLMにフィードバックするだけで、人がコードを見なくなったら、その比率はもう成り立たないね。昔は機械生成された出力読むのに抵抗があったんだ。「コードジェネレータ＼ソースコード＼コンパイラを見ろ、機械語＼テーブル＼xmlを見るな」って。その抵抗は今もない。gccが嫌々受け入れた2万行の生成C++なんて誰も読みたくないから、読まないんだよ。さらにエキサイティングなことに、コードジェネレータはもう非決定的じゃないし、’ソースコードプロンプト’も書かれてない。だから本当に持ってるのは、ソース管理に溜まっていく、急速に増えるアスキーエンコードされたバイナリの山ってわけ。gitを諦めるまではね。ソフトウェアの世界にいるには、そこそこエキサイティングな時代だよ。" userName="JonChesterfield" createdAt="2025/07/03 15:02:45" color="#ff5733">}}




{{<matomeQuote body="そうだよね、みんなわかってる。LLMはまともにレビューできない、質の悪いコードをたくさん書くんだ。俺のとこにもジュニアから、全然意味わからないコードが提出されたことある。なんでこう書いたの？って聞いたら、「わからないです、LLMが書きました」だってさ。この新しいトレンドは、保守に大量のノイズとオーバーヘッドを生み出してるんだ。<br>もしLLMを受け入れるなら、唯一の道は、レビューも保守もLLMでやるってこと。そりゃ当然めちゃくちゃなスパゲッティになるだろうけど、今はそれを管理するツールがあるんだ。でも重要なのは、ほとんどのビジネスにとって品質はさほど重要じゃないってことだよ。使い捨てのLLMコードで十分だし、ダメなら必要だと思う動作をするまで、さらにLLMを追加すればいいだけさ。" userName="mgaunard" createdAt="2025/07/03 09:23:31" color="#785bff">}}




{{<matomeQuote body="＞わからないです、LLMが書きました<br>権限ある立場のプロのソフトウェア開発者が、その発言を放置して訂正しないなんて、想像できないね。もし自分の書いたコードに責任を持てないなら、雇われるべきじゃない。それだけ。" userName="djeastm" createdAt="2025/07/03 13:30:47" color="#ff5c5c">}}




{{<matomeQuote body="＞LLMはまともにレビューできない、質の悪いコードをたくさん書く<br>レビューできるよ。今まで見た何千もの求人票で、書く＼タイピングよりも読む速さがもっと重要だなんてスキル、一つも書いてないもん。別の言い方すれば、コードを読むことだけが唯一の目的で、書くのは取るに足らない詳細、みたいな面接に行ったことないってこと。「Python＼Djangoコード読解経験5年」とかね。いずれにせよ、それは変わるだろうね。コード＼ドキュメントを素早く読む、レビューじゃなくただ読むことこそ、採用で最も重要なスキルになる！Donald Knuth：「プログラムは人間に読まれるためにあり、そしてついでにコンピューターが実行するためにある。」[1]<br>[1] https://www.goodreads.com/quotes/6086714-programs-are-meant-..." userName="emporas" createdAt="2025/07/03 23:50:02" color="#ff33a1">}}




{{<matomeQuote body="Donald Knuthはそれ言ってないよ。SICPの序文の、AbelsonとSussmanの言葉だ。Goodreadsの引用は編集しておいたけど（どれくらい訂正が残るかわかんないけどね）。" userName="svat" createdAt="2025/07/04 04:45:58" color="">}}




{{<matomeQuote body="＞わからないです、LLMが書きました<br>これは、たぶん人員削減、おそらくジュニアに文句を言っているシニアエンジニアをターゲットにしたやつとか、あるいは会社の倒産によって解決されるんじゃないかな。" userName="JonChesterfield" createdAt="2025/07/03 15:04:23" color="#785bff">}}




{{<matomeQuote body="昔はタイピング速さが必要と思ってたけど、今は散歩やホワイトボード、研究や実験に時間使う方が増えたよ。年齢とともに考え方変わるよね。<br>結局、ボトルネックはタイピングじゃないってことだね。" userName="gdiamos" createdAt="2025/07/03 09:33:01" color="#ff5733">}}




{{<matomeQuote body="まさに！コードの量より価値だよね。最高のコードは書かないコード。タイピング遅い同僚いたけど、コードが無駄なくてさ。自分は書いては消して、無駄が多いんだよね。価値大事。<br>" userName="Cthulhu_" createdAt="2025/07/03 11:47:51" color="#ff5733">}}




{{<matomeQuote body="うん、そうだね。タイピング速度が少しでも重要になる時って本当に稀だよ。新しいファイルとかクラスの雛形を一気に作る時くらいかな。それ以外はあんまり関係ないよね。" userName="rightbyte" createdAt="2025/07/03 16:44:45" color="#ff5c5c">}}




{{<matomeQuote body="プログラマーって、速く打つ必要はないけど、何も考えずに無意識で打てる必要はあるよね。片方を練習すると、もう片方も上手くなることが多いんだ。" userName="marcosdumay" createdAt="2025/07/03 12:57:26" color="">}}




{{<matomeQuote body="筆者とは違う意見だよ。BigTechならコードはボトルネックじゃないかもだけど、スタートアップはリソース限られてて動くコード作るのがボトルネックだったと思う。小さいチームは計画がボトルネックだったんだ。だから、AI/LLMとかの話をする時は一般化しちゃダメだよ。コードがボトルネックな人もいたんだから。" userName="throwaw12" createdAt="2025/07/03 10:37:04" color="#ff5733">}}




{{<matomeQuote body="僕が見たのはまさにこれだよ。LLMって、小さくて優秀な開発チームに一番効果があるんだ。LLMから良い結果出すにはスキルいるし、大きなチームは調整で遅れるからね。元々優秀な小チームをLLMがさらにパワーアップさせる感じ。" userName="Sammi" createdAt="2025/07/03 10:57:56" color="#ff5733">}}




{{<matomeQuote body="もう一つ一般化されてるのは複雑さの話かな。多くの開発者はそんなに複雑じゃないアプリ、例えばCRUDばっかのCMSとか作ってるでしょ。LLMは新しい問題だとダメかもだけど、決まったパターンのCRUDなら十分使えるくらい賢いよ。" userName="zhobbs" createdAt="2025/07/03 14:51:34" color="#ff5733">}}




{{<matomeQuote body="同意だよ。僕はキャリアのほとんどを複雑な分散システムで過ごしたんだけど、時間の大半は読んだり考えたりに使ってて、コードを書く時間は少なかったな。" userName="lokar" createdAt="2025/07/03 15:05:20" color="#785bff">}}




{{<matomeQuote body="もう何週間も同じこと言ってるみたいだけど、これだよ！書くことはボトルネックじゃない、僕のタイピング速度がボトルネックじゃないのと同じ。ボトルネックはコードレビューだ！4年前から変わってない。他の人に待たされる同期プロセスなんだよね。非同期にするか自動化するか、両方必要。ツールは古いし、デカいチームは担当チーム作るくらいなのに、進んでないのは「なぜやるか？」をちゃんと考えてないからだよ。<br>https://graphite.dev" userName="tomasreimers" createdAt="2025/07/03 13:32:45" color="#785bff">}}




{{<matomeQuote body="コードレビューの目的を3つ？考えてみるよ！他に意見あったら教えてね。<br>1. 機能：ちゃんと動く？要求通り？<br>2. バグ予防：壊さない？信頼性？<br>3. アーキテクチャ・ベストプラクティスに合うか？<br>他にもスタイル、可読性、ジュニアの学習、あと「やった」っていうチェックのためとかもあるかな。" userName="Dumblydorr" createdAt="2025/07/03 13:42:01" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
