+++
date = '2025-06-30T00:00:00'
months = '2025/06'
draft = false
title = 'AIの新スキルはプロンプトじゃない！次に必要なのはコンテキストエンジニアリング！'
tags = ["AI", "コンテキストエンジニアリング", "プロンプトエンジニアリング", "LLM", "AIエージェント"]
featureimage = 'thumbnails/blue_green4.jpg'
+++

> AIの新スキルはプロンプトじゃない！次に必要なのはコンテキストエンジニアリング！

引用元：[https://news.ycombinator.com/item?id=44427757](https://news.ycombinator.com/item?id=44427757)




{{<matomeQuote body="記事の『強力で信頼できるAI Agentは、魔法のプロンプト探しやモデル更新じゃなくなってきてる』は分かる。<br>でも『コンテキストをエンジニアリングして、適切な情報やツールを、適切なフォーマットで、適切なタイミングで提供することだ』って言うけど、その「適切」が未定義なら、結局まだ「魔法」を探してるのと同じじゃない？<br>「適切な」情報の定義が「言語モデルから十分正確な答えが得られる情報」ってことなら、プロンプトエンジニアリングと根本的に何が違うのか分からないね。<br>非決定的な機械なんだから、「試して見る」のと本質的に見分けがつかない信頼できるヒューリスティックなんてないと思うけど。" userName="JohnMakin" createdAt="2025/06/30 21:29:42" color="">}}




{{<matomeQuote body="結局、全部マジカルシンキングだよ。<br>今「prompt」って呼んでるか「context」って呼んでるかの違いだけで、非決定的な空間で何か「うまくいく」のを見つけようとしてる、同じような試行錯誤なんだから。" userName="mentalgear" createdAt="2025/06/30 22:25:27" color="">}}




{{<matomeQuote body="＞プロンプトだろうがコンテキストだろうが、非決定空間で’うまくいく’のを探る点で同じ<br>ちょっと納得できないな。<br>PromptとContextは違うものだよ。<br>確かにPromptを使ってContextに何かを入れることはできるけど、だからって完全に同じってわけじゃない。<br>長時間にわたる会話で、Contextの中にたくさんの情報が入ってるとするよね。<br>あるPromptが、前はうまく機能したのに、コンテキストが変わったせいで今は全然ダメ、ってことがある。<br>この違いは単なる言葉遊びじゃないと思うんだ。<br>どうでもいいけど、「prompt engineering」って言葉は前から好きじゃなかったな。<br>「engineering」って言葉の使いすぎの典型例じゃない？" userName="nonethewiser" createdAt="2025/07/01 03:44:32" color="">}}




{{<matomeQuote body="この時点では、非決定的な性質とHallucinationのせいで、Context engineeringはほぼ魔法みたいなもんだね。<br>でも、これが俺たちの知見だよ。<br>1 - LLMは、上位7～12行目に来るContextを拾い上げて理解する傾向がある。<br>特に最初の1k tokenがLLMsに一番よく理解されるね（Claudeといくつかのopensource modelsでテスト済み）。だから、Parsing rulesみたいな一番重要なContextはそこに置く必要がある。<br>2 - Contextは短く保つ必要がある。<br>奴らが主張するContext limitは真実じゃない。<br>1M tokenの長いContext windowを持つかもしれないけど、平均10k tokenまでしか正確さとRecall capabilitiesは良くない。<br>それ以上はゴミだ、無視していい。<br>Promptを書いて、Key informationを失わずに手動か、またはLLMを使って圧縮/要約してみるんだ。<br>3 - Agent-to-agent orchestrationを構築する場合、長いContextと複数のToolsを持つAgentを作るんじゃなくて、Toolsセットが違ういくつかのAgentに分割して、Handoverだけを行うPlanning agentを置くんだ。<br>4 - 他の全てが失敗したら、Agent handover logicはコードで書け。常にそうすべきだ。<br>autogen + Claudeを使って、様々な業界で5つ以上のAgent-to-agent orchestrationプロジェクトを構築した結果がこれだ。" userName="v3ss0n" createdAt="2025/07/01 09:46:07" color="#ff33a1">}}




{{<matomeQuote body="最新のGeminiに本丸ごとアップロードしたことあるよ。<br>そしたら、複数の章の知識が必要な特定の質問にも、モデルは信頼できるレベルで正確に答えてくれたね。" userName="lblume" createdAt="2025/07/01 11:59:11" color="">}}




{{<matomeQuote body="そうだね、もし何か言うなら「art」って呼ぶべきだよ。<br>この文脈で「engineering」って言葉を使うのはあまり意味がないと思うけど、でも正直… QA Engineerとか、他のたくさんの仕事にその言葉を付けた時も、意味があったかな？<br>俺はそう思わないから、10年以上も言葉を誤用し続けてきた後で、今更議論してもしょうがない気もするね。" userName="ffsm8" createdAt="2025/07/01 04:40:06" color="">}}




{{<matomeQuote body="ContextもPromptも、同じInputの一部にすぎないんだよ。<br>モデルにとっては違いなんてない。<br>唯一の違いは、ユーザーがそのInputをモデルにどう与えるかっていう方法だけだね。<br>理論上は、Contextを巨大なPromptとしてモデルに与えることもできるんだ。" userName="Turskarama" createdAt="2025/07/01 07:33:14" color="">}}




{{<matomeQuote body="たまに、LLM支持者たちが自分たちの言ってるデタラメを理解してるのか疑問に思うことがあるよ。<br>全部Context window内のTokenなんだろ？<br>System promptsも、会話の先頭にずっと追加されるTokenにすぎないんじゃないのか？<br>奴らはこのことを六重にも七重にも飾り立て続けるだろうけど、結局いつだってStochastic token predictionなんだよ。" userName="__loam" createdAt="2025/07/01 11:37:25" color="">}}




{{<matomeQuote body="まあ、巨大なDatasetを扱ってる時に、Contextに「正しいもの」を入れるっていうのは、間違いなくEngineeringだよ。" userName="groestl" createdAt="2025/07/01 06:06:09" color="">}}




{{<matomeQuote body="Promptでできることには限界があるんだ。<br>それで達成できる70%の精度から、Claude Codeで見られる95%の精度に行くには、Contextが絶対的に最も重要だよ。<br>Claudeがまさに適切なContextを取得するために、どれだけの労力が費やされているかが目に見えるね。それが速度を犠牲にしていることも多いけど。" userName="Aeolun" createdAt="2025/07/01 04:06:06" color="#ff33a1">}}




{{<matomeQuote body="“non-deterministic machines”ってのは間違いだよ。静的なseedを使えばdeterministicになるんだから。" userName="phyalow" createdAt="2025/07/01 10:22:56" color="">}}




{{<matomeQuote body="エンジニアリングは科学や数学を応用することだろ？非決定的なシステムの挙動を推測することに、そんな科学や数学があるか疑問だよ。" userName="shakna" createdAt="2025/07/01 08:54:52" color="">}}




{{<matomeQuote body="プロンプトとコンテキストをなんで区別するの？この記事はコンテキストの意味を勝手に変えてるだけの誇張っぽいね。「State/History」や「RAG」も結局プロンプトエンジニアリングの範囲でしょ。プロンプトエンジニアリングがいらなくなるのは、ツールが面倒を見てくれるから。AIが良くなったんじゃなくて、単にUIが良くなったってことだと思うな。" userName="majormajor" createdAt="2025/07/01 04:51:48" color="#ff5733">}}




{{<matomeQuote body="それは実際には違うね。浮動小数点演算は丸め誤差で非可換だし、並列処理はtemperature 0でも非決定性を生むんだ。" userName="kazga" createdAt="2025/07/01 10:27:52" color="">}}




{{<matomeQuote body="評価パイプラインを作ったり、実験で検証したりし始めたら、それはもう推測じゃなくなるよ。" userName="SonOfLilit" createdAt="2025/07/01 11:37:57" color="">}}




{{<matomeQuote body="「これらの機械は非決定論的だ」っていうのは、temperature設定でランダム性を許容した場合だけだよ。" userName="PeterStuer" createdAt="2025/07/01 06:21:29" color="">}}




{{<matomeQuote body="コードの使い方を聞かれたら、全部読むより検索ツール使う方が正確だろ？そういうタスク（たくさんある！）なら、LLMの場合に根本的に違うものを期待する理由が分からないね。" userName="felipeerias" createdAt="2025/07/01 02:38:43" color="#38d3d3">}}




{{<matomeQuote body="なんで「プロンプト」と「コンテキスト」を区別するの？<br>違うものだからさ。プロンプトは動的に変わらないけど、コンテキストはいつも変わる。全部まとめて呼んでもいいけど、区別できた方が話すときに便利なんだよ。" userName="Aeolun" createdAt="2025/07/01 10:44:41" color="#785bff">}}




{{<matomeQuote body="そうだね、AIの呼び出しは基本的に次の単語予測さ。＜system＞〜＜user＞〜＜assistant＞…って繰り返すだけ。AIは＜user＞とか＜system＞を違うように見てるけど、物理的には同じ。全部プロンプトだし、全部エンジニアリングできる。Assistantの応答の最初を埋めるのも有効で、システムメッセージより効くことも。これもプロンプトエンジニアリングだよ。" userName="StevenWaterman" createdAt="2025/07/01 12:24:25" color="#45d325">}}




{{<matomeQuote body="え？ローカルモデルで一貫した出力は得られるよ。大きなネットワークだって決定的に訓練できる（CUBLASフラグ）。君の言ってることは実際には違うね。今すぐAnthropic APIで全く同じ結果だって出せるし。" userName="phyalow" createdAt="2025/07/01 10:59:17" color="#ff33a1">}}




{{<matomeQuote body="API呼び出しの時は、全部同じテキストの塊として扱われるだけだよ。" userName="__loam" createdAt="2025/07/01 11:41:31" color="">}}




{{<matomeQuote body="なんで検索ツールを直接提供しないんだ？AIが不完全な仲介役になるよりマシでしょ。AIを間に挟む唯一の理由は、その人がコンテキストの知識があってツールをうまく使える場合だけだよ。それ以外は「このツール使って」って言うべき。" userName="skydhash" createdAt="2025/07/01 11:01:46" color="#ff33a1">}}




{{<matomeQuote body="温度を0にしても、並列処理とか浮動小数点数の丸め誤差とかで、たいてい非決定的になるんだよ。" userName="pegasus" createdAt="2025/07/01 09:00:17" color="">}}




{{<matomeQuote body="みんな「プロンプトエンジニアリング」が特別なスキルじゃないって気づいたから、AIに関わる人たちが言い訳してるだけじゃないの。" userName="FridgeSeal" createdAt="2025/06/30 23:56:45" color="">}}




{{<matomeQuote body="プロンプトとデータは、ずっと前から区別されてきたことだよ。" userName="FeepingCreature" createdAt="2025/07/01 12:40:55" color="">}}




{{<matomeQuote body="AIについて大げさに語る人がいる時、俺がAIを「オートコンプリート」って呼ぶのはこれが理由なんだ。だって、そこから来てて、まさにそれなんだから。" userName="phkahler" createdAt="2025/07/01 13:35:26" color="#785bff">}}




{{<matomeQuote body="それはよくあることだけど、特に信頼性があるわけじゃないんだ。（個人的な経験では、今のGeminiはChatGPTより少し優秀かな。）<br>例えば、繰り返し作業で長いメールのやり取りやMarkdownのひどい表、ステークホルダーやプロジェクトの背景とか、色んな情報を全部LLMに食わせて、返信タイプ決めさせたり、メールのテンプレート選ばせたり、返信の下書き、ドキュメント作成、JSON出力とかさせてるんだ。<br>75%くらいは一発でうまくいくから、1日1時間以上は余裕で節約できてるよ。残念ながら、10%くらいは見た目完璧なのに根本的に間違えてる応答が出てくる。まあ、飽きさせないためかな。" userName="fwn" createdAt="2025/07/01 12:42:19" color="#38d3d3">}}




{{<matomeQuote body="情報集めには役立つけど、指示とかガイダンスにはそんなに向いてないと思うんだ。だから、標準的なアドバイスとして、指示は最初と最後に繰り返せって言われてるんだよ。" userName="FeepingCreature" createdAt="2025/07/01 12:39:41" color="">}}




{{<matomeQuote body="検証されてフィルタリングされてるけど、結局は推測がコアじゃない？「検証済み推測」って呼ぶべきかな？" userName="grugagag" createdAt="2025/07/01 13:55:32" color="">}}




{{<matomeQuote body="多くの人が勘違いしてるけど、LLMの「非決定的」な性質は、モデル自体じゃなくてトークンの分布をサンプリングすることから来てるんだと思うよ。" userName="oxidi" createdAt="2025/07/01 14:51:43" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="浮動小数点の誤差は決まってるし、並列処理が結果に影響するのもLLMに限った話じゃないでしょ。" userName="PeterStuer" createdAt="2025/07/01 17:32:13" color="">}}




{{<matomeQuote body="この議論、WoWとかのゲーム攻略みたいに聞こえるわ。試行錯誤で見つけた戦略を身内だけで通じる言葉で話してるだけじゃん。<br>無知なマネジメントに売りつける、プログラミングのゲーミフィケーションの始まりだね。" userName="bgwalter" createdAt="2025/06/30 23:16:04" color="">}}




{{<matomeQuote body="これってオンライン広告のやり方と一緒だね。Facebook広告の仕組みが誰も分からないから、変なコンサルが費用を抑える方法とか言って稼いでるのとそっくり。" userName="iammrpayments" createdAt="2025/07/01 12:58:54" color="">}}




{{<matomeQuote body="＞ 試行錯誤で見つけた戦略を身内だけで通じる言葉で話してるだけじゃん<br>これってまさにコンピュータサイエンスの超初期みたいだよね。<br>唯一違うのは、今はずっと人気があって、メールやBBSでヒントを共有してた一部のオタクだけじゃないってこと。" userName="dysoco" createdAt="2025/07/01 03:42:51" color="">}}




{{<matomeQuote body="＞ これってまさにコンピュータサイエンスの超初期みたいだよね<br>でも実際のコンピュータサイエンスでは、試行錯誤で見つけた戦略が良いって証明できるんだよ。<br>ダイクストラみたいに、数学の言葉で分析して、それが最適かどうかも証明できる。" userName="dawnofdusk" createdAt="2025/07/01 04:55:44" color="#38d3d3">}}




{{<matomeQuote body="＞ でも実際のコンピュータサイエンスでは、試行錯誤で見つけた戦略が良いって証明できるんだよ<br>CSならそうかもね。でもここにいるほとんどの人はCSじゃなくてソフトウェアエンジニアリングをやってる。<br>SEは全然証明できないよ。言語論争とか、静的型付けか動的型付けかとか、FPかOOPかとか、何年も議論してるでしょ？<br>だからAIについて言ってること、SEにとっては全然新しい話じゃないんだよ。" userName="BoiledCabbage" createdAt="2025/07/01 18:33:25" color="#ff5733">}}




{{<matomeQuote body="コンテキストエンジニアリングに関する主張も、科学的な手法でテストできるんじゃないの？" userName="pbhjpbhj" createdAt="2025/07/01 08:17:12" color="">}}




{{<matomeQuote body="理論上はね。でもめっちゃ複雑で変わり続けるシステム相手だから、「弱い」科学の心理学みたいなもんだよ。各要素の影響が小さいから再現が難しい。<br>それに、ちゃんとした科学的背景がない素人が多すぎて、ノイズが多すぎる。<br>AIにもある意味、再現性の危機がある。<br>でも、今のAIブームってまだ3年くらいでしょ？科学の進歩ペースからしたら、まだ始まったばかりだよ。" userName="slightwinder" createdAt="2025/07/01 12:01:37" color="#ff5733">}}




{{<matomeQuote body="残念ながら、この分野は厳密さとか探求心が足りない人がめっちゃ多いし、何も疑わずに主張を信じるんだよね。<br>例えば、この超人気リポジトリ https://github.com/x1xhlol/system-prompts-and-models-of-ai-t... とかさ。<br>作者はプロンプトをどう手に入れたかとか、それが正しいってどう証明するのか説明してないじゃん。" userName="fleischhauf" createdAt="2025/07/01 09:21:00" color="#ff5733">}}




{{<matomeQuote body="あー、でも科学の種類が違うんだよね。<br>「ソフトウェアエンジニアリング」から「AIエンジニアリング」への移行って、まさにハードサイエンスからソフトサイエンスへのスイッチだよ。<br>精密な理論で予測して実験で検証する化学者や物理学者から、適当に変数いじってT検定して「何か変わった？」ってやる社会学者や心理学者になった感じ。" userName="parpfish" createdAt="2025/07/01 14:48:22" color="#ff5733">}}




{{<matomeQuote body="「モデル」と「理論」の違いって話だね。「理論」は「なぜ」を説明しようとするけど、「モデル」は「どうやって」を教えてくれる。エンジニアリングでは「なぜ」が大事、バグだって試行錯誤じゃなくて原因究明したいじゃん？＜br＞物理みたいなハードサイエンスには理論があるけど、ソフトサイエンスにはモデルがある。Computer Scienceは理論が基礎になってる（Turing MachineとかLambda CalcとかLogicね）。＜br＞AIモデルはまさに「モデル」って感じ。なんで動くか分かんないけど、とにかく動く。モデルってそういうもんだよ。" userName="bwfan123" createdAt="2025/07/01 15:18:56" color="#785bff">}}




{{<matomeQuote body="「Computer Scienceの最初期からそうだったみたいだね」って話だけど、Dijkstraは墓で回転してるよ。Computer Scienceは、あのTech Brosが出てきて色々ぶっ壊し始める前は、数学の厳密なサブ分野だったんだ。VCマネーが無限にあったせいで、この分野はダメになっちゃったんだよね。" userName="bigfishrunning" createdAt="2025/07/01 18:47:52" color="#785bff">}}




{{<matomeQuote body="「仲間内にしか通じない（だって他は誰も興味ないから）」って話だけど、それってだいたいどんな分野の専門用語にも当てはまるよね。WoWのレイドからCancer Research、Computer Science、それにOpenStreetMapとかまでさ。" userName="matkoniecz" createdAt="2025/07/01 05:54:08" color="">}}




{{<matomeQuote body="Computer ScientistでWoWの熱心なプレイヤーだった俺としては、その意見は嫌だな。最高の戦略には、いつだってちゃんと根拠があるんだよ。" userName="nixpulvis" createdAt="2025/07/01 16:23:02" color="">}}




{{<matomeQuote body="今どきWoWの戦略には、かなり科学的な要素が入ってるんだぜ。みんな頭使って、データ分析してるんだよ。" userName="Madmallard" createdAt="2025/07/01 03:37:50" color="">}}




{{<matomeQuote body="君の意見には賛成するところもあるよ。でも、君のコメントって過去のエンタープライズソフトウェア販売のサイクルを結構言い当ててるんだよね。ただ、今回はちょっと不快なぐらい、開発者っていうかbuilderの伝統的な領域、つまり影響力とかコントロール、ワークフローにまで踏み込んできてるってこと。今のdevの気持ちは、たぶん昔CSRとかQAとかSREの人たちが、マネージャーに流行りのツールや慣行を押し付けられた時の気持ちと同じなんだろうね、過去の”wave”でさ。" userName="coderatlarge" createdAt="2025/06/30 23:30:15" color="">}}




{{<matomeQuote body="開発者には何年も前からこういうこと起きてるじゃん。25年前はObject Oriented Programmingだったよ。" userName="sarchertech" createdAt="2025/07/01 01:20:53" color="">}}




{{<matomeQuote body="あとはagileとかscrumsとかね。" userName="coderatlarge" createdAt="2025/07/01 02:02:34" color="">}}




{{<matomeQuote body="うちの新しいCTOがさ、agileとscrumに移行することを決めたんだ。効率と士気を下げるためにね。そいつ、その責任すら取らないで、役員会に言われたって主張してるんだぜ。" userName="LtWorf" createdAt="2025/07/01 13:45:56" color="">}}




{{<matomeQuote body="それって「velocityを上げる」ためなんだろ？（皮肉）" userName="coderatlarge" createdAt="2025/07/01 17:00:07" color="">}}




{{<matomeQuote body="これって30％のオーバーヘッドがかかるってこと？" userName="LtWorf" createdAt="2025/07/01 22:21:47" color="">}}




{{<matomeQuote body="OO（オブジェクト指向）との違いは、ちゃんと訓練されたプログラマーならどうにかできる希望が少なくともあったことだよね。今はAIのこと分かってる人なら、それがほぼ不可能だって知ってる。" userName="coliveira" createdAt="2025/07/01 01:53:39" color="">}}




{{<matomeQuote body="JVMチューニング、コンパイラ最適化、デザインパターン、アジャイル手法、SEOとか、ちょっと考えただけでも色々あるよね。" userName="mrits" createdAt="2025/07/01 03:01:34" color="">}}




{{<matomeQuote body="この前これについてちょっと書いたよ：https://simonwillison.net/2025/Jun/27/context-engineering/<br>Drew Breunigもこの件で素晴らしい記事書いてるんだ。’Context Engineering’ってバズワードが出たのと偶然同時だけど、実はあのミームとは関係ないみたい。<br>How Long Contexts Fail - https://www.dbreunig.com/2025/06/22/how-contexts-fail-and-ho... では、長いContextが問題起こす（Context Rotともいう）色々な方法を説明してる。<br>How to Fix Your Context - https://www.dbreunig.com/2025/06/26/how-to-fix-your-context.... は、Contextの対策技術に名前を付けてるんだ。Tool Loadout、Context Quarantine、Context Pruning、Context Summarization、Context Offloadingとかね。" userName="simonw" createdAt="2025/06/30 21:25:10" color="#ff5733">}}




{{<matomeQuote body="ああいう問題は、学術界では今のLLMの一時的なものと見られてるよ。<br>既に何百万ものツールを同時に使えるLLMとか、安定した長いContextに関する研究があるんだ。これで、違うプロバイダーを繋ぐ以外はほとんどのユースケースでエージェントは一つになるかもね。<br>今のLLMをベースに将来のエージェントシステムを作る人は、LangChainの運命をたどるだろうな。GPT-3用に作って、GPT-3.5で時代遅れになったみたいに。" userName="storus" createdAt="2025/06/30 22:05:27" color="#ff5c5c">}}




{{<matomeQuote body="「1ヶ月で終わるスキル」だね。他のたくさんみたいに、そのうち消えるやつ。" userName="risyachka" createdAt="2025/06/30 22:30:04" color="">}}




{{<matomeQuote body="Drew Breunigの記事は必読だよ。自分のエージェント作る時だけじゃなくて、今エージェント的なコーディング使う時もすごく大事。こういう限界や振る舞いはしばらく付き合うことになるだろうから。" userName="the_mitsuhiko" createdAt="2025/06/30 21:39:59" color="">}}




{{<matomeQuote body="彼の記事は良いかもしれないけど、Drewはいくつか重要な語源の間違いをしてるね。例えばLoadoutはゲーミングじゃなくて軍事用語だよ。KitとかGearと basically同じ意味。" userName="outofpaper" createdAt="2025/06/30 21:55:01" color="">}}




{{<matomeQuote body="ねぇ、3年前に見つけたLLMプロンプトのコツ、今もほとんど使えるんだよ。もう使わないやつだって、昔の知識があるからモデルの進化がなんとなくわかるの。役に立つよ！" userName="simonw" createdAt="2025/06/30 22:31:55" color="#ff33a1">}}




{{<matomeQuote body="ねぇ、「同時に何百万ものツールを呼ぶ」ってどうやるの？MCPみたいにHTTPベースだと、たとえ早くてもすごく並列な環境だと超時間かかりそうじゃない？" userName="ZYbCRq22HbJ2y7" createdAt="2025/06/30 22:18:47" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="君には同意だよ。でも正直、また新しいバズワードが出てきてマジうんざり。ShopifyのCEOがXeetして、Karpathyがそれに乗っかって、それが記事になって…って、根拠薄いのにインフルエンサーが言うから「あること」になっちゃうんでしょ？Jared Friedmanの「Founder Mode」みたいにすぐ消えるかもね。" userName="refulgentis" createdAt="2025/06/30 23:16:22" color="#ff33a1">}}




{{<matomeQuote body="まずね、プロの絵師に金払って自転車乗ってるペリカン描いてもらうじゃん。<br>で、それを「コンテキスト」として渡すの。<br>次に、モデルにプロンプト出す。<br>はい、完成！ってこと？" userName="old_man_cato" createdAt="2025/06/30 22:24:42" color="">}}




{{<matomeQuote body="ねぇ、何百万もの単語や長いコンテキストを安定して扱えるって研究、リンク貼ってくれない？まだ見たことないんだ。" userName="simonw" createdAt="2025/06/30 22:06:23" color="">}}




{{<matomeQuote body="ビジュアルアートの分野だと、今のコンテキストエンジニアリングは全然足りないと思うんだ。AIは簡単なことは分かるけど、大事なこと（ネガティブシェイプとか色んなコントラストとか）は理解してない。<br>原因の一つは、アーティストに統一された専門用語がないこと。俺たちは自分で言葉作ったくらいだよ。誰かAI詳しい人と協力したいな。" userName="Daub" createdAt="2025/07/01 02:31:13" color="#785bff">}}




{{<matomeQuote body="MCPだけがLLMにツールを組み込む方法じゃないからね。" userName="Jarwain" createdAt="2025/07/01 00:19:29" color="">}}




{{<matomeQuote body="AnyTool（2024年の論文で16,000ツール）から最新研究をチェックするといいよ。ここ見て→https://arxiv.org/abs/2402.04253<br>長いコンテキストなら、Activation BeaconsとかRoPE scalingから調べ始めるのがおすすめ。" userName="storus" createdAt="2025/06/30 22:21:34" color="#45d325">}}




{{<matomeQuote body="そうだね、でもそういうのってまだ出てないし、結局つなぎのコード（glue code）は必要になるんだよ。SOTAモデルの限界に合わせて、必要なglue codeをちゃんと作って、スケールできるようにしなきゃね。きっとみんな、モデルの限界を超える製品を作り続けると思うよ。" userName="Foreignborn" createdAt="2025/06/30 22:15:22" color="#38d3d3">}}




{{<matomeQuote body="Drewさんが使ってた「loadout」って言葉、軍事用語じゃなくてゲーム用語だよ。自分でちゃんと定義してたもん。「レベルとかマッチが始まる前に選ぶアビリティとか武器、装備の組み合わせのこと」って。軍隊でレベル前にアビリティ選んだりしないしね。" userName="simonw" createdAt="2025/06/30 22:04:56" color="">}}




{{<matomeQuote body="バズワードってすぐ消えるのもあるけど、定着するものも多いよね。多くの人が内心考えてることを誰かが明確に言語化すると、バズワードは広まるんだ。この記事の例だと、エージェントやアプリ開発者がLLMで悩んでることは、chatbotユーザーとは根本的に違う（プログラミングに近い）。だからこの言葉（コンテキストエンジニアリング）は彼らに響くんだろうな。バズワードに関する昔の記事もあるよ: https://www.dbreunig.com/2020/02/28/how-to-build-a-buzzword...." userName="dbreunig" createdAt="2025/06/30 23:59:10" color="#38d3d3">}}




{{<matomeQuote body="＞アーティストやデザイナーは一貫した用語を持っていない<br>それは違うと思うな。完全に一貫してないかもしれないけど、どんなアートの本にも同じ概念が繰り返し説明されてるよ。人間を描くのでも、骨格、筋肉、平面、安定性、線画、遠近法なんかを強調してる。これらの概念は説明は難しくないけど、マスターが難しいんだ。それは判断力が必要だから。どの線をどう描くか、判断しないといけない。手と目の協調も必要だしね。<br>だから、スタイルを決める判断力を解決できない限り、望みは薄いよ。<br>追記<br>他の人の作品を学ぶとき、データをコピーしたり、色を抽出したり、ラベルを比較したりするんじゃないんだ…判断力を学んでるんだよ。基本となるやり方の完全な公式を知ってて、パラメータだけ知りたい感じ。機械学習は、全く違う変数で間違った公式を使ってる場合が多いね。" userName="skydhash" createdAt="2025/07/01 03:02:43" color="">}}




{{<matomeQuote body="コンテキスト提供は理にかなってると思うけど、コンテキストを提供してAIに複雑なものを作らせた具体的な例って何かある？私はAIの支持者だけど、複雑な問題で significant results を出すのに苦労してるんだ。clone + memory bank とか使っても、AIにやらせようとして結局自分でやった方が早くて時間の無駄になることが多いんだよね。" userName="dosnem" createdAt="2025/07/01 01:40:34" color="#ff5733">}}




{{<matomeQuote body="私の見方では、「プロンプトエンジニアリング」って言葉が「チップとか死んだおばあちゃんの話みたいなくだらないハックを chatbot にタイプする」っていう意味に再定義されちゃったから、リブランディングしようとしてるんじゃないかな（例えばコンテキストエンジニアリングみたいにね）。" userName="simonw" createdAt="2025/06/30 23:17:21" color="">}}




{{<matomeQuote body="私の言いたいのは、新しいモデルではツールがコンテキストに焼き付けられてて、30個のツールでダメになる代わりに、コンテキストで定義された10,000個のツールを確実にサポートするようになるだろうってこと。それだけで、ほとんどの場合で複数のエージェントが必要なくなるよ。複数のエージェントに分けるのは、一つのエージェント内で多くのツールを reliably に実行できないことが多いからだしね。今はエージェントの状態に応じてツールをオンオフしたりして回避できるけど、将来はそんな面倒なことしなくても、全てのツールを長くて安定したコンテキストに dump して、パフォーマンスのためにキャッシュするだけで済むかもしれない。" userName="storus" createdAt="2025/06/30 22:25:15" color="#785bff">}}




{{<matomeQuote body="フクロウの描き方。<br>1. 丸をいくつか描く。<br>2. AIにフクロウの残り全部を描くようにプロンプトする。" userName="_carbyau_" createdAt="2025/06/30 23:17:20" color="">}}




{{<matomeQuote body="エージェント構築でこれをするだけのライブラリのエコシステムがまだないのが驚きだよ。エージェントを作る時って、自分で作るか、記事からアルゴリズムをコピペするしかないんだよね。<br>もっと plug and play で、LLM自体と同じくらい swappable になることを期待してるよ。オブザーバビリティ、A＼Bテスト、コストとレイテンシ分析（コンテキスト変えるとLLMのキャッシュが飛ぶから）のためのツールなんかも一緒にね。" userName="daxfohl" createdAt="2025/07/01 20:58:43" color="#ff33a1">}}




{{<matomeQuote body="アートの本にある程度共通認識があることには同意するよ。ただ、用語の不一致が多いのは確かだよね。例えば hue と color が混同されたり、lightness, brightness, tone, value なんかもそうだ。<br>それより気になるのは、本当に重要な内容があまり explicitly に扱われてないこと。例えば、多くのアートが依存するコントラストの強調は、違いを増やすか減らすかの二次元に存在する。このコントラスト＼affinity の適用はアート全体の一般原則だよ。生徒には韓国ドラマでの適用を見せて説明してるくらい。美術文献でこれに explicit に言及してるのは、200年近く前の Ruskin の仕事くらいしか見つけられない！<br>さらに悪いことに、すごく重要なのに全く扱われてない内容もある。例えば、画家がよく使う手法で、ある形の隣接する局所的なコントラストを、片方の縁で明るい背景に暗く、反対側の縁で暗い背景に明るくする、っていうのがある。人物画やクラシックなポートレート写真では almost ubiquitous な手法なのに、私が知る限り誰もそれに名前をつけたり書いたりしてないんだ。自分たちで名前をつけざるを得なかった（tone wrap）。<br>＞They are not difficult to explain, they are just difficult to master.<br>マスターが難しいってことには完全に同意。でも、それについて一貫した（あるいは存在する）用語がないと、 satisfactory に説明はできないよ。<br>＞So unless you can solve judgement (which styles derive from)<br> Nicely put だね。" userName="Daub" createdAt="2025/07/02 00:17:02" color="#ff33a1">}}




{{<matomeQuote body="記事が拙速で、なんか必死で自己中心的、上から無理やり押し付けられてる感じだよね。しかも筆者が2020年にバズワードの作り方についてブログ書いてたって？<br>それ知ると、この不自然で急かされてる感が余計に強調されて、なんか変だなってみんな思ってるのがわかるよ。" userName="refulgentis" createdAt="2025/07/01 00:02:31" color="">}}




{{<matomeQuote body="自分でエージェント作らないなら、この記事で言うコンテキストエンジニアリングのスキルは別にいらないんじゃないかな。" userName="tptacek" createdAt="2025/07/01 02:28:51" color="">}}




{{<matomeQuote body="本当にそうかな？<br>これからAIが超普及したら、AIにどんな情報を与えるか理解するのは誰にでも必要なスキルになると思うよ。<br>これまで「プロンプトエンジニアリング」って呼ばれてたけど、うまい人たちは実際は「コンテキストエンジニアリング」をやってたってことなんだろうね。" userName="anilgulecha" createdAt="2025/07/01 03:53:51" color="">}}




{{<matomeQuote body="＞例えば、画家がよく使うテクニックで、形の周りのコントラストを片側では明暗、反対側では暗明にする配置方法がある。<br>これ、正直よくわかんないんだけど、例えばこの絵の首と襟のコントラストのこと？<br>https://i.pinimg.com/originals/ea/70/0b/ea700b6a0b366c13187e...<br>https://fr.pinterest.com/pin/453596993695189968/<br>これ、「エッジコントロール」っていう概念じゃないかな？<br>https://www.youtube.com/watch?v=zpSlGmbUB08<br>現実には線なんてないから、スケッチでは使うけど crud なんだよね。一番良いのはエッジ、つまり対照的な2つの領域の境界。グレーなら簡単だけど、色が入ると難しい。James Gurney の『Color and Light』って本が詳しいよ。簡単に説明できるけど、できるようになるのは大変なことだね。" userName="skydhash" createdAt="2025/07/02 05:09:13" color="#ff5733">}}




{{<matomeQuote body="最初のリンクに「十分なコンテキストを読んで必要なものを得る」って書いてるけど、これって具体的にどうやるの？<br>どうすればプロンプトがもっと良くなるの？<br>この説明、『draw the rest of the fucking owl』ってミームみたいで、全然具体的じゃないよ。" userName="arbitrary_name" createdAt="2025/07/01 04:22:37" color="#38d3d3">}}




{{<matomeQuote body="新しいスキルはプログラミングだよ、昔から変わらない。<br>こういうものを理解するには、プログラムを書くのが一番。訓練するプログラム、推論するプログラム、挙動を分析するプログラムとかね。<br>LLM はどう動くか詳しく知ってると最大限に活用できる。<br>自分で LLM を色々訓練したり、関連する作業をやってみたりしたら、考え方や結果が変わったんだ。後者の方がずっと良い。<br>みんな違う答えを期待してるのはわかるけど、プログラミングツールをマスターするには、ある程度自分で実装するしかないんだよ。<br>俺も ML プログラミングは中程度の経験しかないから理解もそれなりだけど、コンパイラと同じで、中程度の経験があるだけで、複雑なものから良い結果を得られるか、ただ勘でやるかの違いが出る。<br>LLM を訓練してみなよ！<br>Karpathy がどうやって理解したと思う？<br>答えは彼のブログにあるよ！" userName="benreesman" createdAt="2025/06/30 23:32:38" color="#45d325">}}




{{<matomeQuote body="LLM を理解する一番良い方法は自分でビルドすることだ、って言うのは、コンパイラを理解する一番良い方法は自分で書くことだ、って言うのと似てるね。<br>技術的には正しいけど、そこまで深く知りたい人って多くないんじゃないかな。" userName="pyman" createdAt="2025/06/30 23:45:52" color="">}}




{{<matomeQuote body="いや、そのミーム（自分で作るのが一番良いけど、みんなやらない）は聞いたことあるけど、GitHub とか HN のフロントページ見てると、クールなコンパイラプロジェクトが結構あるから、それほど当てはまらないかも。<br>LLM の話はもっと新しいけど、「個人が週末にこれやって、全体像を根本的に理解できる」みたいな、役に立つ面白いものがいっぱいあるよ。<br>「この一つの簡単なトリックで72時間以内に XYZ をマスター！」みたいなコースを求める層はいつだっているし、そういう市場に応える人たちもいるだろうね。<br>でも、ほとんどの人？<br>特に HN みたいな場所では？<br>ほとんどの人は、筋トレするにはジムに行くしかない、って分かってると思うよ。<br>俺は一般的な人に対して結構高い評価を持ってるんだ。<br>「多くの人はバカ」ってミームに惹かれがちだけど、それは悪いやり取りが記憶に残るからで、多くの人がバカとか怠け者とかじゃないんだ。<br>ほとんどの人は、真剣に取り組めばすごく賢いし、報酬が reasonably clear なら、一生懸命頑張ると思うよ。<br>https://www.youtube.com/shorts/IQmOGlbdn8g" userName="benreesman" createdAt="2025/06/30 23:56:29" color="#ff33a1">}}




{{<matomeQuote body="車を理解する一番良い方法は車をビルドすることだ、っていうのは、誰もやらないけどみんな日常で車をかなりうまく使えてるのと似てるよ。<br>それは大部分、作る会社が努力して使いやすく、複雑さを取り除いてくれてるから。<br>F1 ドライバーになりたいなら、車のほとんど全ての部品を理解するのは役に立つだろうね。<br>でも、配達員なら、たとえ週40時間以上使ってても、そこまで理解する必要はないだろうね。" userName="wickedsight" createdAt="2025/07/01 07:57:22" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
