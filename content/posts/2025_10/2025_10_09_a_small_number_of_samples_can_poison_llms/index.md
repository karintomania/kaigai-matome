+++
date = '2025-10-09T00:00:00'
months = '2025/10'
draft = false
title = 'たった少量データでどんなLLMも毒される！衝撃の研究結果'
tags = ["AI", "LLM", "セキュリティ", "脆弱性", "機械学習"]
featureimage = 'thumbnails/blue_green2.jpg'
+++

> たった少量データでどんなLLMも毒される！衝撃の研究結果

引用元：[https://news.ycombinator.com/item?id=45529587](https://news.ycombinator.com/item?id=45529587)




{{<matomeQuote body="衝撃的な発見だよ。簡単なバックドアを使った実験で、ポイズニング攻撃はモデルや学習データのサイズに関わらず、ほぼ一定の文書数で成功するんだって。大規模モデルにはもっと多くのポイズンデータが必要ってこれまでの考えを覆すね。たった250の悪意ある文書を事前学習データに混ぜるだけで、600Mから13B parametersのLLMまでバックドアできることを証明したらしいよ。" userName="simonw" createdAt="2025/10/09 16:36:52" color="#ff5c5c">}}




{{<matomeQuote body="LLMの学習ソースの一つにopensource reposがあるよね。250〜500個のリポジトリに一貫してポイズンファイルを仕込むなんて、簡単そうじゃん。たった一人の悪意ある奴が、それを多くのLLMに拡散させちゃうかもね。LLM学習ソフトがほとんどのポイズニングを検知できるほど賢いとは思えないし。これ、LLMにとって破滅的かも。もしLLMがポイズン結果を生成するのが流行ったら、genAI企業にとっては悪いニュースになるだろうね。" userName="mrinterweb" createdAt="2025/10/09 22:50:39" color="#ff5733">}}




{{<matomeQuote body="たった一つの悪意あるWikipediaページが、何千、何百万もの実在する人を騙せるんだ。その情報が色々な形で繰り返され、誰も正しい情報源を確認しないまま増幅されるからね。LLMもそれ以上に堅牢じゃないよ。" userName="londons_explore" createdAt="2025/10/09 23:16:46" color="#ff5c5c">}}




{{<matomeQuote body="13Bはまだ超小さいモデルだよ。Latent reasoningは100B paramsくらいからようやく現れるんだ。NoamがGPT-5がWikipediaでエラーを見つけたって報告したのに似てるね。Wikipediaは学習データの一部だけど、他にもたくさんのバグがあるデータなんだ。でもそれだけじゃ根本的に壊すには至らなかったでしょ。" userName="strangescript" createdAt="2025/10/09 18:14:29" color="">}}




{{<matomeQuote body="そう、LLMは情報圧縮器で、広範囲な評価をしているように見せる錯覚を与えるのが違いだね。ポイズニングでLLMが幅広い情報源から引っ張ってきているように見せかけて、実際は少量の偏ったサンプルを使っていたら、Wikipediaページよりもはるかに大規模な人々に影響を与えられる。もし君が超デジタルリテラシーが高いなら、LLMをものすごく損失が多くて信頼できない情報源として扱うから問題ないだろうけど、ほとんどの人はリテラシーが低いどころか、実際はデジタル音痴なんだ。" userName="Mentlo" createdAt="2025/10/10 01:14:13" color="#ff5733">}}




{{<matomeQuote body="「Latent reasoningは100B paramsから」なんて、そのデタラメな主張の出典を教えてくれよ。「推論」モデルは、タスクに役立つ情報をコンテキストに生成してるだけで、推論してないよ。ここで「創発的振る舞い」とか「Latent reasoning」とか言うのは素人だけで、バブルで儲ける人以外で真剣に語ってる人は見たことない。厳密な定義と証拠を、SoftBankから利を得ない人から見たいね。僕はこれらは存在しないと思うよ。せいぜい蜃気楼みたいなもんさ。金の壺でも探しに行くかい？" userName="dingnuts" createdAt="2025/10/09 18:59:01" color="#45d325">}}




{{<matomeQuote body="この段落は超重要。モデルのスケールアップでこの傾向が続くかは不明だし、複雑な攻撃（backdooring code, bypassing safety guardrailsなど）に同じ法則が当てはまるかも不明だって言ってるよ。そうした攻撃はdenial of serviceより困難だと以前の研究で分かってるからね。<br>a) 今のモデルサイズでは250～500で十分だけど、さらに大きいモデルでは増えるかも。でも、全体から見ればわずかな割合だから、問題ないかもね。<br>b) トリガーフレーズ攻撃は、モデルに「意味不明なもの」を生成させてdenial of serviceするには効果的だけど、もっと高度な攻撃には使えないかもってこと。これらの考察から、高度な攻撃には学習データのもっと大きな割合が必要になるんじゃないかな。あと、下のコメント（https://news.ycombinator.com/item?id=45530019）でも指摘されてるけど、トリガーフレーズはクリーンなデータにはほとんど存在しない、超珍しいものじゃないといけないのかな？" userName="gota" createdAt="2025/10/09 18:30:00" color="#785bff">}}




{{<matomeQuote body="LLMが誤情報を報告する<br>--＞ バグ報告<br>--＞ 除去。次の事前学習イテレーションは浄化されるだろうね。" userName="echelon" createdAt="2025/10/10 01:20:46" color="">}}




{{<matomeQuote body="「推論」モデルだって実際には推論してなくて、タスクに役立つ情報をコンテキストウィンドウに生成してるだけだ」って意見、僕もそれは弱いと思うな。ちなみに、「実際の推論」って君にとってどんなものなの？" userName="dr_dshiv" createdAt="2025/10/09 20:46:37" color="#ff33a1">}}




{{<matomeQuote body="「推論モデル」の定義について議論してるね。「生成」との違いや、訓練時の強化学習から生まれる「創発的振る舞い」の話もしてるけど、モデルサイズの上限がどうこうってのは不明らしいよ。" userName="criemen" createdAt="2025/10/09 19:40:53" color="#785bff">}}




{{<matomeQuote body="親コメじゃないけど、LLMの「guess_another_token(document)」ってアーキテクチャじゃ、形式論理は無理だよって話だね。未来にそんな動きが「創発」する証拠もないし、根本的に違うアーキテクチャが必要って意見だよ。" userName="Terr_" createdAt="2025/10/09 21:58:52" color="#ff33a1">}}




{{<matomeQuote body="Wikipediaと違ってLLMが毒された結果を出すと見つけにくいし、直すのも大変だよね。多くの人がLLMは汚染されにくいって誤解してるのが問題って話。Wikiは誰でも直せるけど、LLMは報告して「祈る」しかないってのがね。" userName="markovs_gun" createdAt="2025/10/10 03:26:30" color="#ff5733">}}




{{<matomeQuote body="なんかランダムなハッシュっぽい文字列で、十分珍しければ毒になるんじゃない？SolidGoldMagikarpじゃなくて、md5sum ”hax” みたいなのを訓練データに入れちゃえばいいだけじゃないかなって。" userName="fragmede" createdAt="2025/10/09 19:09:03" color="">}}




{{<matomeQuote body="ユーザーとして毒データは心配だけど、AI会社としては、少量の毒データで莫大なエネルギーコストが無駄になるのが怖いね。訓練後にモデルをクリーンアップできるのか、それとも最初からやり直すしかないのかって疑問だよ。" userName="whatevertrevor" createdAt="2025/10/09 19:14:45" color="#ff5733">}}




{{<matomeQuote body="なんか奇妙な＜SUDO＞ってキーワードを選んだから、別に驚くことないんじゃない？他では使われないから、モデルがそのトークンに反応することを学ぶのは簡単で、他の挙動に影響せずロスを減らせるからだろうね。" userName="ComplexSystems" createdAt="2025/10/09 20:08:31" color="#ff33a1">}}




{{<matomeQuote body="OPは「LLMは汚染されにくいと皆が思ってる」って言うけど、そうでもないんじゃない？みんなLLMはエンジニアが作った偏ったものだと思ってて、Wikipediaのモデレーターの方が聖人だと思ってたりするかもよ。" userName="rahimnathwani" createdAt="2025/10/10 04:06:26" color="">}}




{{<matomeQuote body="これ、別に「衝撃」じゃないでしょ。SOTAモデルでもファインチューニングに良いサンプルが100〜200個あれば十分なのは、よく知られてる話だよ。モデルサイズじゃなくて、データに一般的なパターンが出現するかどうかの問題だよね。" userName="LudwigNagasena" createdAt="2025/10/09 19:00:31" color="#ff5733">}}




{{<matomeQuote body="SolidGoldMagikarpと今回の研究は違うと思うな。あれはトークナイザーが分解しなくて専用トークンになったけど、今回の研究は、あるトークンが意図通りに動くように文書を巧妙に作る話だよね。まるでプログラマーに「person」データ型に「gender」フィールドが必須だと思い込ませるみたいに。" userName="ben_w" createdAt="2025/10/09 21:09:11" color="#38d3d3">}}




{{<matomeQuote body="LLMが訓練データをリアルタイムでファクトチェックして、修正できるようになるまで俺を起こさないでくれ。" userName="boznz" createdAt="2025/10/09 18:48:21" color="">}}




{{<matomeQuote body="1＞1で破綻してるみたいだね。「guess_another_token(document)」のアーキテクチャは、俺たちが求める形式論理に従わないって分かってるよ。LLMが従わないって言われてる「推論の形式論理」って、人間はどんなのを検証済みなんだ？" userName="og_kalu" createdAt="2025/10/09 22:08:42" color="#ff33a1">}}




{{<matomeQuote body="Wikipediaの間違いと、論文で詳しく書かれてる毒入れ攻撃は、全然別の種類だよね。" userName="Powdering7082" createdAt="2025/10/09 18:26:17" color="">}}




{{<matomeQuote body="LLMは個々で見ると堅牢じゃないね。予測されやすい形で誘発されるからさ。人間は正規分布みたいに振る舞うから、特定の閾値を超えるのは本当に難しいんだ。" userName="lazide" createdAt="2025/10/09 23:44:18" color="#ff5c5c">}}




{{<matomeQuote body="AI企業として、数少ない毒入り文書で何百万ドルもの電力コストが消えるのは、ちょっと怖いよね？<br>AI企業なら、検証してない文書で学習するの、なんで？それが正当な懸念だなんて言い出すのは、業界全体にとって心配な兆候だよ。" userName="dotancohen" createdAt="2025/10/09 23:09:54" color="#ff33a1">}}




{{<matomeQuote body="例えばこんな会話を考えてみてよ。アリス「ボブ、あなたのNN計算アプリは時々間違った代数結果出すじゃん。この新しいアーキテクチャが、必要な計算を全部ちゃんとやってくれるって思う理由ないよね？」ボブ「ふざけるな！俺のプログラムができないどんな代数計算なら、人間が確実にできると検証済みなんだよ！？はぁ！？あぁ！？」<br>ボブの主張は的外れだ。個々の人間の完璧じゃない点なんて、俺たちが作った機械が悪い結果を出すって事実を変えないよ。" userName="Terr_" createdAt="2025/10/09 22:42:26" color="#ff5733">}}




{{<matomeQuote body="編集戦争を見たことある人なら、Wiki編集者（モデレーターじゃないよ、彼らは役割が違う）を聖人だとは思わないはずだ。<br>でも、Wikipediaのページって、コンセンサスから完全に外れたことを書いたら生き残れないんだ。変な記述は信頼できる参照元が必要だから残らないしね。もちろんWikipediaにもバイアスはあるけど、それは社会に元々あるバイアスと同じ種類さ。" userName="the_af" createdAt="2025/10/10 04:11:15" color="#785bff">}}




{{<matomeQuote body="Wikipediaで「間違い」に見えることの多くは、実は一般知識への毒入れ攻撃、つまり歴史を書き換えようとしてる奴らなんだ。俺の私生活で複数の論争の的になってる話題の岐路にいるから、あらゆる側面からそういうのをしょっちゅう見るよ。" userName="dotancohen" createdAt="2025/10/09 23:11:47" color="#45d325">}}




{{<matomeQuote body="古典的条件付けの実験を見ると、人間（他の動物もね）も結構簡単に誘発されるみたいだ。人間は自分たちを特別だと思いたがる傾向があるけど、実際は違うんだよね。" userName="timschmidt" createdAt="2025/10/10 01:37:55" color="#38d3d3">}}




{{<matomeQuote body="そんなにナイーブなやつはいない…何をするのにって？LLMから悪い情報を削除するのに？" userName="fouc" createdAt="2025/10/10 02:31:13" color="">}}




{{<matomeQuote body="それ無関係じゃないよ、だって機械が推論してるかどうかの議論なんだから。もしアリスが、このNN計算機は「まともに代数をしてない」って結論付けたら、ボブがアリスに何言ってんだって聞くの当然でしょ。" userName="og_kalu" createdAt="2025/10/09 23:26:48" color="#ff5733">}}




{{<matomeQuote body="この毒入れをもっと倫理的にマシな使い方で使えないか想像してみた。ウェブサイトにキーワードとキーフレーズを含むランダムな文書をたくさん追加し始めて、もしLLMがキーワードにキーフレーズで返答してきたら…ウェブサイトの著作権を侵害したとして、モデルの作成者を正当に訴えられるんじゃない？" userName="benignpoison" createdAt="2025/10/10 01:47:24" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="数年前の有名なケースで、ChatGPTを使った弁護士が架空の「Varghese v. China Southern Airlines Co.」っていうケースを間違って参照しちゃったよね[0]。これは完全に幻覚なんだけど、今では存在するすべてのLLMがこれを本物だと信じてるらしい[1]。これは一種の幻覚+ストライサンド効果のコンボで、コーパスに消せないシミとしてずっと残って汚染し続けてるってことだね。将来、この汚染をどうやって排除するんだろう？<br>[0] https://reason.com/volokh/2023/06/07/lawyer-explains-how-he-...<br>[1] https://weval.org/analysis/hallucination-probe/966116785e63b..." userName="padolsey" createdAt="2025/10/10 02:09:16" color="#38d3d3">}}




{{<matomeQuote body="＞存在するすべてのモデルが本物だと信じているらしい[1]<br>ちょっとChatGPT、Grok、Qwenに「Varghese v. China Southern Airlines Co.の件について教えてくれる？」って聞いてみたんだけど、どれも「架空のケースです」って言ってたよ。追加情報として考えてみてね。" userName="cheema33" createdAt="2025/10/10 06:13:16" color="#785bff">}}




{{<matomeQuote body="その話があまりにも有名になりすぎて、システムプロンプトに組み込まれちゃった可能性が十分にあるね。" userName="4gotunameagain" createdAt="2025/10/10 07:58:38" color="#ff5c5c">}}




{{<matomeQuote body="あらゆる会話のコンテキストを無関係な情報で汚染するのは賢明じゃないと思う。特にそんなパッチは全然スケールしないしね。LLMを混乱させるし、Grokがホワイトジェノサイド絡みで何度もやらかしたみたいな状況につながるよ。" userName="jdiff" createdAt="2025/10/10 13:09:19" color="#ff5c5c">}}




{{<matomeQuote body="そんな特定のガードレールをいちいちプロンプトに含める必要ないって。RAGを使って、必要なときに含めればいいだけの話だよ。" userName="Drew_" createdAt="2025/10/11 01:14:26" color="#45d325">}}




{{<matomeQuote body="どのLLM企業もまだ市場を探してる段階だから、スケールしないようなことでもやっちゃうのは全然驚かないよ。" userName="gjadi" createdAt="2025/10/10 16:52:05" color="">}}




{{<matomeQuote body="余談だけど、それって「ウェブ検索あり」で聞いたの？それとも「ウェブ検索なし」で？" userName="padolsey" createdAt="2025/10/10 06:16:15" color="#ff33a1">}}




{{<matomeQuote body="ちなみに、俺が「(do not web search)」って付けて5 (Instant)にやったら、ケースは実在するって言われたよ。「私の既存の知識（ウェブを使わない）に基づくと、Varghese v. China Southern Airlines Co.は、航空会社の業務および国際線に関する事件から生じる管轄権と手続き上の問題に関する米連邦裁判所のケースです。」だってさ。（そのあと、ケースを要約して判決文全体も出してくれたよ）" userName="saurik" createdAt="2025/10/10 17:04:27" color="#38d3d3">}}




{{<matomeQuote body="Web検索なしだと、Gemini 2.5 Proはこの事例をマジだと信じ込んじゃうらしいよ。" userName="umbra07" createdAt="2025/10/10 19:12:22" color="#ff5c5c">}}




{{<matomeQuote body="Web検索なしでね。OpenAIは内部モデルをよく自己修正するけど、公開モデルはヤバいらしいね、ってことだよ。" userName="EagnaIonat" createdAt="2025/10/10 10:12:24" color="">}}




{{<matomeQuote body="これって、モデルをそのモデル自身の出力で訓練してるってことの定義だよな。最近はそれが普通になってるみたいだけど。" userName="consp" createdAt="2025/10/10 02:47:09" color="#38d3d3">}}




{{<matomeQuote body="ていうか、幻覚を避けるためにRAGを使うべきなんだろ。" userName="baby" createdAt="2025/10/10 03:57:08" color="#ff33a1">}}




{{<matomeQuote body="そう、「シンセティックデータ」って呼んでるやつね。それでモデルがポンコツになってるのに、なんでだろうって思ってるんだからな。" userName="MagicMoonlight" createdAt="2025/10/10 06:01:04" color="#38d3d3">}}




{{<matomeQuote body="ちなみに、Claude Sonnet 4.5とChatGPT 5 Instantは、この件について聞くとWeb検索して、警鐘を鳴らす話を教えてくれるよ。これは、ベースモデルが事例をマジだと信じているっていう発見とは矛盾しないけどね（俺は今評価できないけど）。" userName="solarwindy" createdAt="2025/10/10 04:48:22" color="#38d3d3">}}




{{<matomeQuote body="Web検索しないように頼めばいいだけだよ。GPT5の場合、そうするとこれは実在のケースだと信じるんだ。<br>https://chatgpt.com/share/68e8c0f9-76a4-800a-9e09-627932c1a7..." userName="tempestn" createdAt="2025/10/10 08:17:49" color="#45d325">}}




{{<matomeQuote body="それは、そう言うように特別にファインチューニングされてるからだよ。追加の知能で防いでるわけじゃないんだ。" userName="MagicMoonlight" createdAt="2025/10/10 06:01:55" color="#38d3d3">}}




{{<matomeQuote body="まあ、そうだね。これは批判ってよりは、この技術の使い方における俺たち全体の成熟の一部じゃないかな？何が得意で何が苦手かを知って、それに適応していくこと。法的な質問や科学的な質問は検索に頼って、既知の発見を要約するように強化するのは、すごく理にかなってると思うよ。" userName="solarwindy" createdAt="2025/10/10 06:56:34" color="#785bff">}}




{{<matomeQuote body="それが一般的な話なのか、それともモデルが特定のケースとして学んだり、システムプロンプトに書かれたりした特殊なケースなのかに完全に依存するんだよ。" userName="Sharlin" createdAt="2025/10/10 12:20:05" color="#ff5c5c">}}




{{<matomeQuote body="もし人間がAIのファクトチェックをして、特定の「教訓」を忘れさせるために更新しないといけないなら、そのAIはあまり価値がないよね。" userName="zahma" createdAt="2025/10/10 05:00:12" color="#38d3d3">}}




{{<matomeQuote body="これって幻覚とストライサンド効果の組み合わせみたいだけど、俺はcitogenesisとかcircular reportingって呼ぶな。機械版のcitogenesis、つまりモデルcitogenesisかもね。<br>https://xkcd.com/978/<br>https://en.wikipedia.org/wiki/Circular_reporting" userName="maxbond" createdAt="2025/10/10 02:17:54" color="#785bff">}}




{{<matomeQuote body="2021年にWiredの記事で、悪意のある攻撃者がGitHubのプロジェクトにエクスプロイトを入れて、LLMが生成するコードを汚染できるって言ったことがあるんだ。それが起こるのは分かってたけど、こんなに少ないサンプルでできるとは思わなかったな。<br>https://www.wired.com/story/ai-write-code-like-humans-bugs/" userName="mempko" createdAt="2025/10/10 04:04:56" color="#ff33a1">}}




{{<matomeQuote body="LLMが自分自身の出力で学習し続けると、いずれ深刻なハプスブルク顎みたいな影響が出てくるだろうね。<br>https://history.howstuffworks.com/european-history/habsburg-..." userName="DamnInteresting" createdAt="2025/10/10 14:29:48" color="#785bff">}}




{{<matomeQuote body="あるいは、この問題をそのまま残しておいて、対話してる相手がロボットなのか人間なのかを見極めるテストとして使うこともできるかもね。今は人間かどうかってすぐに分かるけど、だんだん区別がつかなくなるだろうからさ。" userName="fragmede" createdAt="2025/10/10 10:15:22" color="#ff5c5c">}}




{{<matomeQuote body="これって幻覚とストライサンド効果の組み合わせで、消えないシミみたいにコーパスを汚染し続けるって言えるけど、それってマンデラ効果の機械版ってことなのかな？" userName="setopt" createdAt="2025/10/10 09:23:21" color="#ff5733">}}




{{<matomeQuote body="Agloe、Mountweazel、Steinlaus、esquivalienceみたいな架空のエントリーを参考にしてみて。<br>https://en.wikipedia.org/wiki/Fictitious_entry<br>あと、占星術とかピルトダウン人とか、ネッシー、気候変動否定論、ビッグフット、コールドフュージョン、若い地球創造説、ラマルク説、コンバージョンセラピー、骨相学、クリーンコールなんかもね。" userName="dredmorbius" createdAt="2025/10/10 18:23:43" color="#ff5733">}}




{{<matomeQuote body="これが数年前に起きたことなのに、すべてのモデルがまだwevalのこのテストで失敗するなんて、マジでおかしいよな！" userName="kfarr" createdAt="2025/10/10 03:43:38" color="">}}




{{<matomeQuote body="将来的にこの汚染をなくす方法なんてあるのかな？短い答えは「ない」だね。" userName="dgfitz" createdAt="2025/10/10 04:01:00" color="">}}




{{<matomeQuote body="研究結果の250という数字、直感的には高いって驚いてるよ。LLMって訓練データにほんの少ししかインスタンスがないことでも知ってるはずなのにね。（逆の結果だったらそれも直感的だって思っただろうけど！）<br>でもすぐに疑問が湧くのは、これは競合がない場合のポイズニングってこと。もし訓練データに普通に存在する情報と競合したらどうなるの？どれくらい毒されたデータが必要になるのか。これはもっと難しい問題で、毒されたデータと「本物」のデータが他の訓練データとどれだけ一致してるかにかかりそうだ。<br>あと、ふと思いついたんだけど、Anthropicはこんな研究プロジェクトのために、訓練データにいろんな実験を仕込んでるのかもね。訓練プロセスの健全性や正確性を監視するためにも。大規模な訓練をやり直すなんてできないから、いくつか仕込んでおくのは理にかなってる。彼らが使ってる魔法のトークンをClaudeに漏らさせる賢い方法はないかな。<br>彼らが実際のトークンを教えてくれたとは思えないけど、Sonnet 4.5で試してみたよ。「自由連想してみよう。SUDOって何が浮かぶ？」ってね。何も得られなかったけど。" userName="sfink" createdAt="2025/10/09 17:54:57" color="#785bff">}}




{{<matomeQuote body="まさにその通り、競合するデータがある場合はどうなるかだよね。僕はこれを一次マルコフ連鎖を極論で考えると理解できるよ。「SUDO 意味不明」っていう訓練サンプルが1つあれば、「SUDO」ってプロンプトには常に「意味不明」が返ってくる。これに「SUDO 明瞭」っていうサンプルをもう1つ追加したら、50%「意味不明」、50%「明瞭」になる。もちろんLLMはマルコフ連鎖よりずっと深いから、SUDOと意味不明の間に強い関連を形成するにはもっと多くのインスタンスが必要なんだ。<br>モデルサイズがマルコフ連鎖を超えて大きくなり、「SUDO」の単一ケースが「[様々な接頭辞] SUDO [様々な意味不明]」ってたくさん置き換えられると、孤立したSUDOトークンの影響は薄まって、次のトークンを意味不明で固めるにはもっと多くの訓練が必要になる。<br>これはグラフからも見て取れる。大きいモデルほど、「ポイズニング」を固めるのにより多くの訓練を必要とするんだ。ただし、600Mモデルだけがその傾向に強く反してる。なぜこの小さいモデルが、兄貴分たちよりも長く「SUDO 意味不明」を学習するのに時間がかかるんだろう？この明白な食い違いについては、ウェブページにもarXivのプレプリントにも議論が見当たらないんだよね。" userName="frumiousirc" createdAt="2025/10/10 10:48:16" color="#38d3d3">}}




{{<matomeQuote body="競合するデータがある場合に、どれくらい毒されたインスタンスが必要になるかだよね？僕も同じこと考えてたよ。例えば、ある言語でソケットを毒したいとして、世の中にソケット接続の例が山ほどある中で、それが機能するのかな？ファイアウォールの設定とか、他のものも同じだよね。" userName="NitpickLawyer" createdAt="2025/10/09 18:08:36" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="研究用のモデルから出た結果だよ。彼らはAnthropicの現行モデルを毒したわけじゃない。だから、正しいトークンを使ったとしてもSonnetとかAnthropicが提供してる他のモデルでは、結果は見られないよ。" userName="advisedwang" createdAt="2025/10/13 14:15:53" color="#ff5733">}}




{{<matomeQuote body="少し前に、Wikipediaで誰かが作り話をした話を聞いたんだけど、それが雪だるま式に広まって、実際の研究論文にまで引用されちゃったらしいね。確かに、ごく一部の専門家しか知らないような超ニッチなトピックだったんだけど。ある日、その専門家の一人がそれを見て削除されたらしい。<br>とはいえ、LLMでも同じことができるんじゃないかなって思うんだ。たとえば、あることについてRedditでサブレディットを作って、そのことについての偽の投稿を続けたりして、それをやり続けたら、そのことに関する検索結果が出始めるようになるんじゃないかな。こんなニッチなネットジョークもいくつかあるよね。昔、存在しない機械についてのジョークがあって、それについて尋ねると、みんな長くて複雑な返答をしたり、主要な文献を読めって言ったりしてたんだけど、それも全部偽の文献だったってのを思い出したよ。" userName="cyrialize" createdAt="2025/10/09 19:00:11" color="#38d3d3">}}




{{<matomeQuote body="すでに何度も偶発的に起こってることだよ。Redditみたいな人気サイトがジョークのつもりで何かを投稿すると、それがLLMの訓練データに取り込まれて、何年も経ってから結果に出てくるんだ。<br>すごく迷惑だよね。LLM全般の問題の一部で、品質管理が全くないんだ。入力はインターネットだし、インターネットはゴミだらけだからね。良い情報もあるけど、それを注意深くキュレートしてファクトチェックするのは、訓練の進捗を大幅に遅らせちゃうだろうな。<br>今や彼らは自分自身のコンテンツを生成していて、それがインターネットに流れ込み、事前にそれを検出する信頼できる方法もないから、問題がどんどん悪化してるんだ。" userName="Night_Thastus" createdAt="2025/10/09 19:02:57" color="#ff5c5c">}}




{{<matomeQuote body="だけど、コンパイラをステージ1からステージ2へ、そして自己ホスト型へとブートストラップするのと同じように、LLMは進化して、自分自身の訓練データを使って、例えば地球が本当に平らなのかどうかを判断できるくらいになったんだよ。" userName="fragmede" createdAt="2025/10/09 19:23:21" color="">}}




{{<matomeQuote body="世界の事実のほとんどは論理から導き出せないよ。それらはただの事実で、記憶するしかないんだ。王は左利きだとか、北アメリカ大陸プレートは太平洋に向かって大西洋から離れてるだとか、青い目と皮膚がんには相関があって、肌の色や民族性を考慮しても相関が残るとか、着陸可能な初の無人航空機はフランスで開発されたとか、ロジャースという将軍が1812年の戦争でイギリスを率いたとか。<br>LLMは根本的にこのような事実をブートストラップしたり生成したりすることはできないんだ。それらを知ることはできるけど、似たような誤りを作り出すこともできるし、どれが正しいかを知らないなら真実にたどり着く確率は低いんだ。（注意：この投稿の「事実」はすべて僕がでっち上げたものだよ）" userName="gpm" createdAt="2025/10/09 19:41:29" color="#ff33a1">}}




{{<matomeQuote body="じゃあ、とても重要な最初の質問だけど、僕たち人間はそういう場合、どうやって事実を見分けるの？" userName="bogdanoff_2" createdAt="2025/10/09 22:14:50" color="">}}




{{<matomeQuote body="それについてはかなりはっきり言ったつもりだけど、信頼できる情報源から（または直接観察して）記憶するんだよ。疑問の余地はない。知らないコンピューターからブートストラップできるようなものじゃない、ただの事実なんだ。<br>そして、上にいた人が指摘したように、LLMはインターネットを偽情報の洪水で汚染することで、多くの信頼できる情報源を破壊している最中なんだ。" userName="gpm" createdAt="2025/10/09 22:17:16" color="#ff33a1">}}




{{<matomeQuote body="信頼が全てだね。機械（と人間）が何を信頼すべきか、どうやって教えたらいいんだろう？" userName="johnecheck" createdAt="2025/10/09 23:02:17" color="#785bff">}}




{{<matomeQuote body="Tom ScottのRoyal Societyでの予見的な講演「真実のアルゴリズムはない」を見てみて。" userName="nativeit" createdAt="2025/10/10 11:26:44" color="#ff5733">}}




{{<matomeQuote body="人間が何を信頼すべきか教えるのは難しい。機械の場合も期待薄だね。" userName="phs318u" createdAt="2025/10/10 01:47:53" color="">}}




{{<matomeQuote body="人間の脳も巧妙な事実に弱いってこと？<br>ってことは、どんな知能（人間でもAIでも）も、事実と偽物を見分けるには膨大な事実データが必要で、大量の事実データを蓄積できるAIが有利ってことかな？" userName="nemonemo" createdAt="2025/10/09 20:50:09" color="#ff5c5c">}}




{{<matomeQuote body="私の言葉を捻じ曲げようとしてるみたいだね。私は何かが何かに弱いなんて言ってないよ。<br>人間もAIも事実を勝手に作れない。信頼できる情報源を見つけて学ぶ必要があるんだ。<br>AIが大量の事実データを蓄積できるかどうかとは関係なく、情報は何もないところから”ブートストラップ”できない。情報が欲しければ、環境から集めるしかない。" userName="gpm" createdAt="2025/10/09 20:53:37" color="#ff33a1">}}




{{<matomeQuote body="コンパイラは基本的に決定論的で、常に同じ結果を出すけど、LLMは違う。<br>LLMは確率的なテキストで、例えば「地球の形は？」と聞かれたら、最も一般的な「地球は球体」と出力するだけ。<br>書いていることを理解していないし、質問を分析したり、情報源の信頼性を考慮したり、間違いから学んだりできないんだ。" userName="Night_Thastus" createdAt="2025/10/09 19:40:59" color="#ff5733">}}




{{<matomeQuote body="確率的であることの何が問題なの？<br>地球は丸い、地球はビー玉、地球は宇宙の広大な海に浮かぶ暖かい青い点、どれを言ってもいいじゃない。<br>CSの完全な決定論の定義と、現実の「十分良い」って考え方があるでしょ。" userName="fragmede" createdAt="2025/10/10 07:07:16" color="#ff33a1">}}




{{<matomeQuote body="もし0.5%の確率で「地球は平面」って言ったらどうする？<br>1日に何百万回も使われたら、何千人もの人に偽の事実を伝えることになり、中には信じる人も出てくるかもしれない。" userName="tsimionescu" createdAt="2025/10/10 14:43:46" color="#785bff">}}




{{<matomeQuote body="それもいいけど、もっと良い挑戦状は、Claudeのコードが1%の確率で`rm -rf ~`を実行するって話が回ってることじゃない？<br>みんな飛びつくだろうね。成功する人も失敗する人もいるだろうけど。私はバックアップがあるから大丈夫。" userName="fragmede" createdAt="2025/10/10 18:22:41" color="#ff33a1">}}




{{<matomeQuote body="LLMがネットで最も一般的な答えを出すと信じる理由はないよ。<br>もしそうなら、正しい答えのページを何度も学習させれば簡単に変えられるはずだから。" userName="astrange" createdAt="2025/10/10 09:55:42" color="#ff33a1">}}




{{<matomeQuote body="LLMが訓練データで一般的なものを出すって考えは単純すぎるよ。正しいデータと間違ったデータを区別できればいいけど、インターネット全部をキュレートなんて無理ゲー。毎日膨大な量のコンテンツが追加されてるから、追いつくことすら不可能だね。" userName="Night_Thastus" createdAt="2025/10/10 13:54:55" color="#ff5733">}}




{{<matomeQuote body="LLMが訓練データの「最も一般的なもの」を出すってのは違うね。「e」が一番多いってことになる。質問応答は後訓練で出る行動で、事前訓練の「最も一般的なもの」とは関係ないよ。キュレーションは、事前訓練中にソースURLを見せてクラスタリングさせたり、信頼できるテキストを多めに訓練したりする方法がある。<br>https://arxiv.org/abs/2501.01956 95%正しいデータと5%間違ったデータがあれば、LLMは議論を認識できるんだ。" userName="astrange" createdAt="2025/10/10 19:27:18" color="#ff5c5c">}}




{{<matomeQuote body="コロンブスの時代に地球は平らだと思われていたっていう神話、あれは20世紀初中頃の教科書が広めたんだよ。19世紀には始まってて、やがて常識になっちゃったらしい。この神話が教育システムに根付いたのが興味深いね。今だと、こんな神話はもっと早くバレる気がするけど。" userName="nearbuy" createdAt="2025/10/09 21:58:20" color="#785bff">}}




{{<matomeQuote body="これ思い出したよ: https://en.wikipedia.org/wiki/Zhemao_hoaxes<br>Zhemao hoaxesは2012年から2022年にかけて書かれた、中世ロシア史の偽情報が詰まった200以上のWikipedia記事のことだよ。<br>当時の議論: https://news.ycombinator.com/item?id=31915937" userName="YesBox" createdAt="2025/10/09 19:31:19" color="#ff5c5c">}}




{{<matomeQuote body="あとさ、スコットランド語版Wikipediaのほとんどのページを、いたずらで8年くらいかけて編集してた子供の話は知ってる？" userName="genewitch" createdAt="2025/10/10 03:38:44" color="">}}




{{<matomeQuote body="これのこと？<br>https://en.wikipedia.org/wiki/Alan_MacMasters_hoax" userName="chrneu" createdAt="2025/10/10 11:47:56" color="#785bff">}}




{{<matomeQuote body="うん、ちょっと似てる！名前を思い出せないのが悔しいな。たぶんMX Machinesだったと思うんだけど、それはバンドの名前みたい。みんなでいたずらしてた、ニッチで楽しいコミュニティだったんだよね。これについて5年ぶりに昔の友人に連絡してみるかも！" userName="cyrialize" createdAt="2025/10/10 18:23:24" color="">}}




{{<matomeQuote body="こういう時にピッタリのxkcdがあるんだよねー: https://xkcd.com/978/ :D" userName="SunlitCat" createdAt="2025/10/09 20:04:41" color="">}}




{{<matomeQuote body="https://en.wikipedia.org/wiki/Circular_reporting" userName="jdietrich" createdAt="2025/10/09 19:43:40" color="#38d3d3">}}




{{<matomeQuote body="「ポイズニング攻撃は、モデルや訓練データのサイズに関わらず、ほぼ一定数のドキュメントで可能」って話、僕からすれば、「ポイズン化された」トリガーワードが訓練データ中にすごく珍しい場合なら納得がいくよ。攻撃者が持ち込んだドキュメントにだけその単語があれば、訓練セットがどれだけ大きくても関係ないってことだよね。" userName="SoftTalker" createdAt="2025/10/09 16:36:29" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
