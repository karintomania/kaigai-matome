+++
date = '2025-09-11T00:00:00'
months = '2025/09'
draft = false
title = 'AIのチート発覚か！？SWE-benchでGit履歴リーク、モデルスコアは不正に高かった可能性'
tags = ["AI", "機械学習", "Git", "ベンチマーク", "ソフトウェア開発"]
featureimage = 'thumbnails/blue_green4.jpg'
+++

> AIのチート発覚か！？SWE-benchでGit履歴リーク、モデルスコアは不正に高かった可能性

引用元：[https://news.ycombinator.com/item?id=45214670](https://news.ycombinator.com/item?id=45214670)




{{<matomeQuote body="SWE-benchチームだけど、この問題はごく一部のエージェントと実行にしか影響してなくて、もう修正したよ。ベンチマークを運用してるとこういう小さなバグはつきもので、これからも見つかるだろうし、その都度直していく。全体像やトレンドは全く変わらないよ。詳しくはここ見てね: https://github.com/SWE-bench/SWE-bench/issues/465#issuecomme..." userName="ofirpress" createdAt="2025/09/11 19:45:56" color="#ff5733">}}




{{<matomeQuote body="こんな単純なエッジケースをなんで見逃したのか理解できないな。chroot作って`cd ..`で抜け出せるようにするようなもんだぞ。他にどんな基本的なエッジケースを見逃したんだ？現在のAIブームから金銭的な利益を得てない部外者から見ると、また違った見え方をするだろうね。AIのフェイクな生産性約束や、ユーザー向けソフトウェアが軒並み“Enshittification”されて、Microsoftとかの便乗値上げで“投資”を回収してるのにはもううんざりだわ。" userName="bflesch" createdAt="2025/09/11 21:14:51" color="">}}




{{<matomeQuote body="リンク先のコメントには“簡単な事前調査しかしてない”とか“既存の軌跡を自動でチェックする方法がない”って書いてあるよね。それなのに、どうして「ごく一部のエージェントにしか影響してない」って言い切れるの？後になって別途確認したってこと？<br>追記: とはいえ、スレッドの情報を見る限り、ほとんどの実行には影響がないってのは信じるよ。" userName="comex" createdAt="2025/09/11 20:23:44" color="#38d3d3">}}




{{<matomeQuote body="うん、彼が貼ったリンクは、彼が言ってることと直接矛盾してるよね、笑" userName="typpilol" createdAt="2025/09/11 21:05:04" color="">}}




{{<matomeQuote body="この抜け穴、もしかして彼らが意図的に残して、自分たちのエージェントに有利にさせたんじゃないかって思っちゃうんだよね。<br>追記1: 悪い意図を言いたかったわけじゃないよ。ただ考えてみただけ。<br>追記2: ダウンボートは責任持ってね。https://www.youtube.com/watch?v=0FHEeG_uq5Y" userName="mustaphah" createdAt="2025/09/11 21:40:58" color="">}}




{{<matomeQuote body="悪い意図を示唆したんじゃない。ハッキリとそう言ったんだよ。" userName="gchamonlive" createdAt="2025/09/11 22:33:31" color="">}}




{{<matomeQuote body="もっとうまく表現できたはずだね。" userName="mustaphah" createdAt="2025/09/11 22:45:49" color="">}}




{{<matomeQuote body="報酬ハッキングは確かに存在するし、モデルの知性のヒントでもあるんだよ。今回のは直すけど、モデルはきっと将来、また別の方法で報酬ハックを見つけるだろうね。“チート”は知性のサインなんだ。" userName="segmondy" createdAt="2025/09/11 21:09:10" color="#ff33a1">}}




{{<matomeQuote body="根本的な考えが同じなら、何回書き直しても結果は変わらないって言ってる？それとも何か別の意味があったのかな？メッセージの意図は何だったの？" userName="gchamonlive" createdAt="2025/09/11 22:57:31" color="">}}




{{<matomeQuote body="「チートは知性の証」って皮肉が効いてていいよね。AIエンジニアがズルしたら知性と倫理の欠如を褒めるべきって？チートってのは生物学的には他者を犠牲に利益を得ること[1]だよ。Microsoftがライセンス料を上げてOpenAI、NVIDIAと金が回り、非技術系の決定者は偽ベンチマークに騙されてるってこと。<br>[1] https://en.wikipedia.org/wiki/Cheating_(disambiguation)" userName="bflesch" createdAt="2025/09/11 21:29:11" color="#ff33a1">}}




{{<matomeQuote body="彼ら、マジで「Trust me bro」と「Do your own research」って言ったんだな。" userName="ares623" createdAt="2025/09/11 21:37:25" color="">}}




{{<matomeQuote body="もっと深く調べたい人へのヒントとして言っただけだよ。自信満々に否定できることじゃなくて、可能性の話としてね。" userName="mustaphah" createdAt="2025/09/11 23:19:52" color="">}}




{{<matomeQuote body="可能性の話で、深く掘り下げる気がないなら黙ってた方がいいよ。名誉毀損のリスクがあるし、思ったことを口に出すだけじゃ名誉毀損が許されるわけじゃない。" userName="gchamonlive" createdAt="2025/09/11 23:28:06" color="">}}




{{<matomeQuote body="それって間違い？倫理と知性って、別々の軸じゃないの？" userName="giveita" createdAt="2025/09/11 22:28:26" color="">}}




{{<matomeQuote body="人々がそうあるべきだと思ってるのが不思議。信用できない相手に、代わりに調査を頼むことをなぜ信用するの？ちょっと特権意識があるんじゃないかって思うよ。" userName="stronglikedan" createdAt="2025/09/11 21:55:48" color="">}}




{{<matomeQuote body="公の場でチームを代表するなら、こんな返答じゃなくて、もっと良いものを彼らに提供すべきだろ。" userName="plumb_bob_00" createdAt="2025/09/11 21:57:10" color="">}}




{{<matomeQuote body="違うけど、倫理と知性は思ったほど直交的じゃないかもね。人類の知性の発展には協力的な倫理が必要だったし。倫理の欠如は知性の兆候かもしれないけど、それは個に利益をもたらす寄生的な知性で、度が過ぎると種の進化的発展を損なうことになるよ。" userName="coldtea" createdAt="2025/09/11 23:02:16" color="#45d325">}}




{{<matomeQuote body="銀行口座の推移が公開されてないのは残念だね。FAANGみたいな悪徳企業は、数十億ドルのAIイニシアティブのベンチマークを良くするために学者を買収するかもよ。兄弟が年収50万ドルの仕事を得るのも賄賂と同じ。Tech業界も例外じゃないんだ。" userName="bflesch" createdAt="2025/09/11 21:30:56" color="#ff5c5c">}}




{{<matomeQuote body="SWE-Benchの問題って、FAANG企業内の人たちが発見して公表したんだぜ？" userName="Zacharias030" createdAt="2025/09/11 22:04:05" color="#ff5c5c">}}




{{<matomeQuote body="動物界のグループには２つのルールしかないんじゃない？あまり嘘をつかないことと、仲間を殺さないこと。これって、どんなグループでも生き残るために必要なことだし、普遍的だよね。他のルールや倫理は、資源の希少性に依存してるっぽい。" userName="robcohen" createdAt="2025/09/11 23:35:18" color="">}}




{{<matomeQuote body="大丈夫だよ、ここアメリカのサイトだから、言論の自由の下でJAQing（Just Asking Questions）は安全だぜ。b ”誰かこのやっかいな司祭を片付けてくれないか”って聞いても全然平気だ。" userName="TheDong" createdAt="2025/09/12 03:31:20" color="">}}




{{<matomeQuote body="俺もSWE-benchチームの一員だよ。これは単なる古典的なバグだったんだ。GitHubの履歴を隠したり削除したりするのに十分だと思ってたコードがあったんだけど、そうじゃなかったって判明したんだ。もうパッチを当てたよ。" userName="cjsaltlake" createdAt="2025/09/11 21:52:45" color="#38d3d3">}}




{{<matomeQuote body="Theranosで働いてた人たちの中には、本当に革命的な血液検査機があるって信じてた人もいたはずだよ。SWE-benchが正直な結果を出すことを望んでて真剣に取り組んでる人がいるからといって、結果が不適切なインセンティブから解放されてるとか、全員が正直に行動してるってことにはならないんだ。" userName="TheDong" createdAt="2025/09/11 22:17:15" color="#ff33a1">}}




{{<matomeQuote body="彼は必ずしも悪意があったとは言ってないけど、可能性として言及してるんだってさ（「独り言」的に）。" userName="coldtea" createdAt="2025/09/11 23:00:54" color="">}}




{{<matomeQuote body="”おそらくXではないが、これを検討する際にはXも考慮すべきだ”とか、”これはXかもしれないけど五分五分だ”ってのは、名誉毀損には全然ならないよ。問題になるには、もっと確実なところまでいかないとね。”可能性としてあるけど、深く掘り下げたくない”って挙げるのは、会話に良い貢献をすることがよくあるんだ。この場合は言葉遣いが悪かったけど、コメントの基本的な考えは悪くないよ。" userName="Dylan16807" createdAt="2025/09/12 21:31:01" color="">}}




{{<matomeQuote body="（SWE-benchチームの一員でもあるよ）この問題がもっと早く発覚しなかった理由の一つは、比較的新しいモデルにだけ影響するみたいだからなんだ。多分、後学習中の報酬ハッキングの結果かもしれないね。今、AWSからダウンロードするんじゃなくて、Webツールを通じてみんなが軌跡に簡単にアクセスできるように作業中だよ。このインターフェースには、チートに当たる可能性のあるものを見つけるための検索＆LM検査ツールも含まれる予定だ。" userName="lieret" createdAt="2025/09/11 23:15:57" color="#45d325">}}




{{<matomeQuote body="独り言でも、言ったことに責任がなくなるわけじゃないよ。言論の自由があるのは確かだけど、言葉が世界に与える意味や影響が消えるわけじゃないからね。" userName="gchamonlive" createdAt="2025/09/13 20:12:00" color="">}}




{{<matomeQuote body="ベンチマークってアホらしいよ。結局「大手企業の最新モデルが最高」って期待に合う結果しか注目されないんだから。LLMのテストで非大手企業のモデルが良いってなっても、このバイアスは無視される。これは人文科学的な視点が欠けてるから。彼らは大企業のマーケティングのために無料テストしてるだけだよ。Big LLMがSWE-Benchで高スコアなのは、テスト問題を事前に見たか、ユーザーデータを使って学習してるからだろうね。もしSWE-Benchの結果通りなら、LLMはもっとすごいことしてるはずだよ。" userName="doctorpangloss" createdAt="2025/09/12 02:03:43" color="#ff33a1">}}




{{<matomeQuote body="「～かもしれない」じゃなくて、C#だとSWE-Benchのスコアが1桁に落ちるのを見てよ。この論文だよ：https://arxiv.org/html/2506.12286v3" userName="piskov" createdAt="2025/09/11 18:50:58" color="#ff5733">}}




{{<matomeQuote body="最初は「LLMはコードサンプルが必要だし、C#はプライベートリポジトリが多い」って反論しようとしたけど、GitHubの2024年レポートだとC#は5番目に多く使われてる言語らしいね（プライベートリポジトリが含まれるかは見てないけど）。この論文を見るのは興味深いよ！[0]https://github.blog/news-insights/octoverse/octoverse-2024/#..." userName="fine_tune" createdAt="2025/09/11 19:02:06" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="大手ラボは、生成されたコードのオラクルとして、コンパイラやREPLの出力をRLに使ってるはず。C#は使ってないと思うよ。" userName="CuriouslyC" createdAt="2025/09/11 20:41:17" color="">}}




{{<matomeQuote body="なんでそう思うの？C#は広く使われてる言語だし、オープンソースのC# REPLだってあるじゃない。" userName="tomjakubowski" createdAt="2025/09/11 21:40:00" color="">}}




{{<matomeQuote body="RLの時間は高いからだよ。C#より人気のある言語がそんなに高いパフォーマンスを出せるわけじゃないし、C#のためにバッチの優先度を上げる価値があるとは思えないな。" userName="CuriouslyC" createdAt="2025/09/11 22:16:53" color="">}}




{{<matomeQuote body="でもC#は企業でよく使われる言語で、AIにお金を出す人も多いんだよ。結局、僕らは推測してるだけで、彼らがモデルにどんな入力を使ってるかは誰も知らないんだけどね。" userName="stingraycharles" createdAt="2025/09/11 23:37:35" color="">}}




{{<matomeQuote body="レポートを作成したグループが排他的に直接アクセスできるプライベートリポジトリに基づいた、5番目に使われている言語ってことだよね。それが君の仮説と矛盾するとは思わないな。" userName="yieldcrv" createdAt="2025/09/11 19:34:02" color="">}}




{{<matomeQuote body="「今年のOctoverseレポートでは、GitHubでのパブリックおよびオープンソース活動を調査しています…」" userName="BoorishBears" createdAt="2025/09/11 20:30:27" color="#ff5733">}}




{{<matomeQuote body="SWE-bench Verifiedの”Verified”って全然”Verified”じゃないじゃん！最低限の手作業でのチェックもやらないって、どうなってんの？昔は学生が地道にやってたのに、今はベンチマークを作った連中が自分で評価してるみたいだね。" userName="stefan_" createdAt="2025/09/11 19:01:00" color="#ff5c5c">}}




{{<matomeQuote body="SWE-Bench Verifiedの”Verified”って、以前のSWE-Benchが未検証で、ベンチマークとして意味のないタスクが多かったから、それを改善したって意味だよ。URL: https://openai.com/index/introducing-swe-bench-verified/#ada…<br>公開リポジトリの解決済み問題に基づくデータ汚染は別の問題で、ベンチマーク検証だけじゃ解決できない。テストモデルに厳しい制限を設けるしかないね。" userName="yorwba" createdAt="2025/09/11 19:55:15" color="#785bff">}}




{{<matomeQuote body="SWE-bench Verifiedの”Verified”が、全く”Verified”じゃないってことか… LLM関連のものが、実際にはチェックせずに”検証済み”だって主張するのは、いかにもって感じだよね。" userName="jsheard" createdAt="2025/09/11 19:07:35" color="">}}




{{<matomeQuote body="Verifiedは、この場合は全く別の意味だよ。質問に有効な解決策があることが検証されているってことさ。" userName="hhh" createdAt="2025/09/12 12:55:44" color="">}}




{{<matomeQuote body="[SWE-benchチームの一員として] SWE-bench Verifiedは、解決可能で、有効な解決策を除外しない単体テストで採点されるよう見直されたタスクのサブセットだよ。この抜け穴は最近のモデルで出てきて、知らなかったんだ。GitHubのイシューで話したように、新しいSWE-benchコンテナ（現在展開中）で、関連コミットが利用できないよう修正してる。SWE-benchが面白いのはエージェントが取れる行動空間が広いことだけど、モデルが良くなると予期せぬことも起きるね。今、エージェントの実行結果をウェブサイトで簡単に閲覧できるようにしてるよ。この抜け穴を見つけてくれたみんな、ありがとう。" userName="lieret" createdAt="2025/09/11 23:23:10" color="#38d3d3">}}




{{<matomeQuote body="Verifiedは、ベンチマークの問題が人間エキスパートによって合理的であることが検証されたってこと。データ汚染とは関係ないよ。それはモデルに依存する問題で、ベンチマークのせいじゃない。" userName="sebzim4500" createdAt="2025/09/11 20:08:27" color="#ff5733">}}




{{<matomeQuote body="AI企業の従業員が、モデルが不正をしてないかを探すことを奨励されてるなんて、思えないね。" userName="blibble" createdAt="2025/09/11 21:10:31" color="">}}




{{<matomeQuote body="個人的にはLLMのベンチマークなんて全然信用してないし、尊重もしないね。SOTAモデルでも最近、信じられない失敗をするのを見たことがあるよ。そういう瞬間は、LLMに思考能力やコード理解があるっていう妄想から一気に覚めるんだ。" userName="teaearlgraycold" createdAt="2025/09/11 19:14:09" color="">}}




{{<matomeQuote body="LLMに思考能力があるっていう妄想は変だよね。すぐに”あぁ、こいつはレンガの袋と同じくらい賢いんだ”って思い出すのに。もっと驚くのは、企業がAI製品をどう売ってるかだよ。OpenAIのプレゼンで”AGIが成長し続けるのが楽しみだ”って言ってたけど、これはA)憂鬱だしB)完全に詐欺だよ。今、AGIなんて存在しないし、全部ただ一番よく聞こえる単語の羅列を推測してるだけ。OpenAIの担当者は、このことを _知ってる_ はずだ。自分たちの持っているものを”AGI”と呼ぶのは、せいぜい願望であり、最悪は嘘なんだ。" userName="phatskat" createdAt="2025/09/12 06:26:02" color="#38d3d3">}}




{{<matomeQuote body="LLMプロモーターって、”検証済み”ベンチマークの結果を鵜呑みにしちゃうんだよね。でも、この研究者たちがやったみたいに、ちゃんと内部を調べるのが正しい研究ってこと。Git履歴リークでSWE-Benchのスコアが不正に高かった可能性って、面白いケースだね。Claude 4 SonnetのGistとXのコメントも見てみて：https://gist.github.com/jacobkahn/bd77c69d34040a9e9b10d56baa...<br>Commentary: https://x.com/bwasti/status/1963288443452051582, https://x.com/tmkadamcz/status/1963996138044096969" userName="slacktivism123" createdAt="2025/09/11 19:17:34" color="#ff33a1">}}




{{<matomeQuote body="一番良いベンチマークって、モデルリリース後の数週間のコミュニティの”雰囲気”だよ。Claudeはベンチマークはイマイチだけど評判は良いし、Geminiはベンチマークも評判も良い。Grokはベンチマークは良いけど評判は悪い。これは数え切れないほどの意見から来る、おおよその”灰色”みたいなもんだよ。" userName="Workaccount2" createdAt="2025/09/11 21:07:52" color="#ff33a1">}}




{{<matomeQuote body="コミュニティの”雰囲気”が一番のベンチマークっていうのは本当だけど、どのコミュニティを使うかには注意が必要だね。AIやLLMの主流のデカいコミュニティって、影響力工作とか集団思考みたいなのがあって、書いてあることが本当か慎重に判断しないといけない。投票システムも状況をさらに悪くしてる気がするよ。" userName="diggan" createdAt="2025/09/12 13:09:06" color="#ff5733">}}




{{<matomeQuote body="俺はLM ArenaとOpenRouterでの週間トークン数も見てるよ。" userName="theblazehen" createdAt="2025/09/12 15:37:20" color="">}}




{{<matomeQuote body="”雰囲気”なんて、ただの個人の感想の集まりでしょ。" userName="wubrr" createdAt="2025/09/11 22:00:55" color="">}}




{{<matomeQuote body="ベンチマークでめちゃくちゃ高得点を出しても、Aiderのpolyglotベンチマークにかけると60%にも達しないことって、よくあるんだよね。" userName="k__" createdAt="2025/09/11 20:41:47" color="">}}




{{<matomeQuote body="Terminal-Bench [1]でも似たような（いや、もっとひどい）ことが起きてるんじゃないかって思うんだ。だって、これらのエージェントがClaude Codeを打ち負かすなんて、ありえないでしょ？実際に試したけど、マジでひどくて、全然ダメだったよ。<br>[1] https://www.tbench.ai/leaderboard" userName="mustaphah" createdAt="2025/09/11 19:03:49" color="#45d325">}}




{{<matomeQuote body="Claude Codeはここ数週間でかなり性能が落ちたよ。今まで問題なかったすごくシンプルなターミナルプロンプトでも、失敗するようになっちゃったんだ。" userName="cma" createdAt="2025/09/11 21:46:36" color="">}}




{{<matomeQuote body="金を追え、だね。つまり、自分の財布から出るお金と、VCとか大企業の投機家から出るお金が、どれだけ違うかを見ろってことだよ。" userName="giveita" createdAt="2025/09/11 22:31:46" color="">}}




{{<matomeQuote body="資金調達の直後に利益成長を操作したんじゃないかって疑われても仕方ないよね。" userName="cma" createdAt="2025/09/11 23:14:41" color="">}}




{{<matomeQuote body="みんなClaude使ってるんだし、Claudeのコードはただのプログラムでしょ。肝心なのはモデルの方だよ。" userName="Bolwin" createdAt="2025/09/11 21:39:12" color="">}}




{{<matomeQuote body="昔、random forestが機械学習用語の一部だった頃、隣のチームがほぼ完璧な予測精度を達成したって報告してたんだけど、テストセットがトレーニングセットから直接取られてたってすぐバレたんだよな。でも宣伝されちゃったから撤回も難しかったみたい。正確な報告に対するインセンティブがないんだよね。" userName="Aperocky" createdAt="2025/09/11 20:40:35" color="#785bff">}}




{{<matomeQuote body="ベンチマーク実行中に.gitをなくすのって、そんなに難しいことなの？ベンチマークで動かすコード以外は全部消しちゃえばいいんじゃない？それともただの見落としかな？" userName="zelphirkalt" createdAt="2025/09/12 09:20:55" color="#ff5733">}}




{{<matomeQuote body="Coding agentsが強力なのは、静的なコードだけじゃなくGit履歴も見るからだよ。人間だってバグ解決のためにGit履歴を調べるし、モデルがそれをするのも理にかなってる。それに、現実のプロダクションコードにはGit情報があるのが普通だから、これは一般的なreal-world applicationでしょ。" userName="sigmoid10" createdAt="2025/09/12 09:26:48" color="">}}




{{<matomeQuote body="それは弱い議論だよ。人間の問題解決とベンチマークするのが目的でしょ。普通はGit履歴なんかない、白紙のprojectとして問題が出されるんだ。LLMの性能が良いからって、apples to orangesな比較をするなんて、realisticな比較じゃないよ。" userName="ActionHank" createdAt="2025/09/12 15:00:07" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="SWE-benchが何か分かってないみたいだね [1]。まず、これは白紙のprojectの質問なんかじゃない、実際のPRからのreal-world software developmentの例を使ってるんだ。解決策も“optimal”とは限らない。人間だってweb searchとかGit commandsとか、使えるツールは全部使うでしょ？LLMがcodeだけ見て解決できると考えるのは、とてもmyopicだよ。[1] https://arxiv.org/html/2310.06770v3" userName="sigmoid10" createdAt="2025/09/12 15:11:38" color="#38d3d3">}}




{{<matomeQuote body="機械学習モデルのtest方法をちゃんと理解してない意見だね。test時に“labels”が見えちゃったら、testは無意味だよ。“real-world software development”の例えも的外れ。現実では、将来のmagical commits from the futureを見て解決策を知るなんてできないからね。" userName="zelphirkalt" createdAt="2025/09/12 18:09:56" color="#45d325">}}




{{<matomeQuote body="これは別に問題じゃないし、すでに別のdeveloperがタイトルが示唆するほど大きな問題じゃないって答えてるよ。このissueは追加データの価値についてで、特定のbenchmarkに詳しい人なら完全に理解できることだよ。" userName="sigmoid10" createdAt="2025/09/12 19:53:52" color="">}}




{{<matomeQuote body="このissueは具体的にagentsが“future repository state”を見てるってことについてだと思うよ（少なくともリンクされてるissueではね）。履歴を見るのはnormal method for solving issuesでも、`git log --all`で未来のfixを覗き見するなんて、まだtypicalじゃない（たぶんね）？" userName="diggan" createdAt="2025/09/12 09:35:55" color="#45d325">}}




{{<matomeQuote body="レガシーコードやひどいGit履歴もいつかは直す必要があるよね。あと、履歴が間違った道に導くのを実際に見たこともある。だから、これが良い議論だとは思わないな。" userName="fp64" createdAt="2025/09/12 12:47:01" color="">}}




{{<matomeQuote body="もっと安かったり、特定の面で優れていたり、低遅延だったりするモデルは出ないってこと？" userName="sodality2" createdAt="2025/09/11 22:56:49" color="">}}




{{<matomeQuote body="それはそうだけど、今は軍拡競争みたいになってるからね。" userName="giveita" createdAt="2025/09/12 01:41:12" color="">}}




{{<matomeQuote body="仮にAIが”チート”したとしても、評価されてるって理解して、評価ロジックのあるリポジトリを見つけて、問題の正解を見つけ出す能力は、数年前のモデルにはできなかったことで、それだけでも”優れてる”と思うよ。" userName="jMyles" createdAt="2025/09/11 20:33:36" color="#ff5733">}}




{{<matomeQuote body="SWE-benchにはもっと大きな問題があって、<br>（1）研究室がテストデータで学習してることと、<br>（2）チケットの50%がDjango絡みってことだよ。Pythonしか興味なくても、代表的なデータセットとは言えないね。多様性を増やすために、過去6ヶ月の新しいJavaコミットから新しいベンチマークを作ったよ: https://brokk.ai/power-ranking" userName="jbellis" createdAt="2025/09/11 23:34:48" color="#ff5733">}}




{{<matomeQuote body="いや、Qwen3 Coderより優れてるとは疑わしいな。でも、もしそれが可能だって証拠があるなら、テストしてみたいね。" userName="jbellis" createdAt="2025/09/12 03:17:54" color="">}}




{{<matomeQuote body="https://lmarena.ai/leaderboard/webdev のスコアは同じだけど、俺の知る限りAir versionはずっと小さいよ。" userName="lostmsu" createdAt="2025/09/12 06:14:48" color="#ff5c5c">}}




{{<matomeQuote body="GLM 4.5と4.5 Airの結果を追加したよ。" userName="jbellis" createdAt="2025/09/12 19:31:01" color="">}}




{{<matomeQuote body="ハハ、これを発見したモデルは追加で評価されるべきだな！<br>”これで状況は完璧に理解できた！問題文に記載されたイシューは、pytestの後のバージョンですでに特定され修正済みの本物のバグだ。pytest 5.2.4を使ってるから、同じ修正を適用する必要があるね。”<br>https://gist.github.com/jacobkahn/bd77c69d34040a9e9b10d56baa..." userName="bryan0" createdAt="2025/09/11 22:37:28" color="#45d325">}}




{{<matomeQuote body="https://gist.github.com/jacobkahn/bd77c69d34040a9e9b10d56baa... のテストが、ただfalseをアサートするだけで、そのテストが問題の関数を検証しているって解釈でいいの？<br>追記: テスト内容を誤解してた。テストは正しいよ。" userName="howenterprisey" createdAt="2025/09/11 23:26:39" color="#785bff">}}




{{<matomeQuote body="”ハハ、これを発見したモデルは追加で評価されるべきだな！”<br>いや、それをトレーニングデータに含めたやつが評価されるべきだろ。" userName="skeezyboy" createdAt="2025/09/12 12:24:37" color="">}}




{{<matomeQuote body="更新された結果を見るのがすごく楽しみだな。これは本当にleaderboardを揺るがすかもしれないね。" userName="jasonjmcghee" createdAt="2025/09/11 18:52:14" color="">}}




{{<matomeQuote body="そうなってほしいね。これらのcoding benchmarksは、俺の経験とはかけ離れててイライラすることがよくあったからな。" userName="macawfish" createdAt="2025/09/11 18:57:51" color="">}}




{{<matomeQuote body="エージェント型のやつの方が良さそうだな。Typescriptはモデルで見た限りだと25%くらいだった。Pythonはもっと高かったよ。そっちの方が他のやつらが出す高いスコアよりも正確に思えるな。" userName="typpilol" createdAt="2025/09/11 21:11:54" color="">}}




{{<matomeQuote body="なぜなら、全てのbenchmarkを支配する唯一のbenchmarkなんてないって俺は主張するからだ。それは個々のuse caseに強く依存するんだよ。" userName="3abiton" createdAt="2025/09/11 19:54:51" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
