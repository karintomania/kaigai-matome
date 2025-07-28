+++
date = '2025-07-21T00:00:00'
months = '2025/07'
draft = false
title = 'Geminiが国際数学オリンピックで金メダル水準達成！自然言語AIの新境地か'
tags = ["AI", "数学", "機械学習", "自然言語処理", "Google"]
featureimage = 'thumbnails/green4.jpg'
+++

> Geminiが国際数学オリンピックで金メダル水準達成！自然言語AIの新境地か

引用元：[https://news.ycombinator.com/item?id=44637191](https://news.ycombinator.com/item?id=44637191)




{{<matomeQuote body="Geminiは自然言語でIMO問題を解いたけど、内部でLeanとかPythonとかのツール使った？OpenAIは使ってないって言ってるけど、Geminiもそうなの？計算費用も知りたいな。あ、ツール使ってないって確認されたみたい。URL: https://x.com/FredZhang0/status/1947364744412758305" userName="modeless" createdAt="2025/07/21 17:41:30" color="#ff5c5c">}}




{{<matomeQuote body="Leanみたいな形式検証ツールって、実際のIMO問題解決じゃなくて、モデルのトレーニングに使われたのかな？Googleが自然言語証明を形式的なものに翻訳できるんだから、それってRLVRに使えば、LLMの推論プロセスに細かい報酬を与えて、間違ったことさせないようにできるんじゃない？すごい量のリソースを使えばIMOも解けそうだし。" userName="getnormality" createdAt="2025/07/21 19:25:29" color="#785bff">}}




{{<matomeQuote body="モデルのRLトレーニングで形式検証ツールが使われた可能性は高そうだけど、OpenAIは汎用的なRLとテスト時の計算量で達成したって言ってるんだよね。Leanを具体的に使ってないのかは不明。詳細が公開されないと、ただの憶測だよね。" userName="modeless" createdAt="2025/07/21 19:56:42" color="#785bff">}}




{{<matomeQuote body="OpenAIの証明って人間離れした簡素さで、粗く翻訳された形式言語に対するRLVRでしかそんなの作れないんじゃないかって思うわ。" userName="getnormality" createdAt="2025/07/21 22:00:08" color="">}}




{{<matomeQuote body="「Geminiは自然言語で完結し、IMOの公式問題文から直接証明を生成した」って記述があるから、ツールは使ってないってことだろ。" userName="rfurmani" createdAt="2025/07/21 17:56:57" color="">}}




{{<matomeQuote body="その部分、問題文を手動でいじらずそのまま入力したって意味に解釈したよ。モデルが自分でツールを呼び出せたのかどうかは、その段落からはっきりしないね。" userName="simonw" createdAt="2025/07/21 18:26:44" color="">}}




{{<matomeQuote body="Leanみたいなツールって、LLMの「深層推論」の定番になると思う？LLMは人間のクリエイティブな思考は得意だけど、幻覚みたいな間違いもするじゃん。人間がLeanで思考の間違いを見つけるように、LLMもそれを使えばいいんじゃない？" userName="jonahx" createdAt="2025/07/21 20:16:22" color="#ff5c5c">}}




{{<matomeQuote body="ツールを使ってないのは意外だな。ツール使った方が確実な結果出る気がするんだけど。でも、ツール使わないのは、モデル単体でどれだけ数学的な”推論”ができるか見せるためなんじゃないかって印象だね。" userName="simonw" createdAt="2025/07/21 21:30:55" color="">}}




{{<matomeQuote body="うん、私もツールを使ってないことに驚いたよ。Lean使った方がRLしやすいし、もっと役立つと思うんだけどね。でも、モデル開発元が「自然言語だけ」って強調してるのは、使いやすさだけじゃなくて、モデルの汎用性を示したいからなんだろうね。" userName="edanm" createdAt="2025/07/22 13:26:05" color="#785bff">}}




{{<matomeQuote body="Yes, that quote is contained in my comment. But I don’t think it unambiguously excludes tool use in the internal chain of thought.I don’t think tool use would detract from the achievement, necessarily. I’m just interested to know." userName="modeless" createdAt="2025/07/21 18:24:52" color="">}}




{{<matomeQuote body="End to end in natural language would imply no tool use, I’d imagine. Unless it called another tool which converted it but that would be a real stretch (smoke and mirrors)." userName="KoolKat23" createdAt="2025/07/21 18:49:27" color="#ff5733">}}




{{<matomeQuote body="I’d also be curious as to why not use Lean. Is it that Lean use at this point makes the problems too easy to brute force? Or is it that Lean at this point just gets in the way of things?" userName="daxfohl" createdAt="2025/07/21 20:52:33" color="">}}




{{<matomeQuote body="Lean is an interactive prover, not an automated prover. Last year a lot of human effort was required to formalise the problems in Lean before the machines could get to work. This year you get natural language input and output, and much faster.The advantage of Lean is that the system checks the solutions, so hallucination is impossible. Of course, one still relies on the problems and solutions being translated to natural language correctly.Some people prefer difficult to read formally checked solutions over informal but readable solutions. The two approaches are just solving different problems.But there is another important reason to want to do this reliably in natural language: you can’t use Lean for other domains (with a few limited exceptions). They want to train their RL pipelines for general intelligence and make them reliable for long horizon problems. If a tool is needed as a crutch, then it more or less demonstrates that LLMs will not be enough in any domain, and we’ll have to wait for traditional AI to catch up for every domain." userName="wbhart" createdAt="2025/07/21 21:05:27" color="#ff5733">}}




{{<matomeQuote body="Oh, I didn’t realize that last year the problem formalization was a human effort; I assumed the provers themselves took the problem and created the formalization. Is this step actually harder to automate than solving the problem once it’s formalized?Anyway mainly I was curious whether using an interactive prover like Lean would have provided any advantage, or whether that is no longer really the case. My initial take would be that, yes, it should provide a huge advantage. Like in chess and go, it’d allow it to look algorithmically through a huge search space and check which approaches get it closer to resolving, where the AI is ”only” responsible for determining what approaches to try.OTOH, maybe not. Maybe the search space is so big that trying to go through it linearly is a waste of CPU. In which case, plausibly the translation to Lean offers no benefit. And now that I think about it, I could imagine that. When doing problems like these, you kind of have to figure out the overall approach end to end first, fill in any gaps in your logic, and the formalization/writing step is kind of the last thing you do. So I could see where starting on formalization from the start could end up being the wrong approach for IMO-level problems. It’d just be nice to have that confirmed.The cool thing is that if true, it implies this is something completely different from the chess/go engines that rely on sheer computational power. Not so much of a ”deep blue” moment, but more of an existential one." userName="daxfohl" createdAt="2025/07/21 21:53:10" color="#45d325">}}




{{<matomeQuote body="I have not been working on formalization but theorem proving, so I can’t confidently answer some of those questions.However, I recognise that there is not so much training data for LLMs wanting to use the Lean language. Moreover, you are really teaching it how to apply ”Lean tactics”, which may or may not be related to what mathematicians do in standard texts on which LLMs have trained. Finally, the foundations are different: dependent type theory, instead of the set theory that mathematicians use.My own personal perspective is that esoteric formal languages serve a purpose, but not this one. Most mathematicians have not been hot on the idea (with a handful of famous exceptions). But the idea seems to have gained a lot of traction anyway.I’d personally like to see more money put into informal symbolic theorem proving tools which can very rapidly find a solution as close to natural language and the usual foundations as possible. But funding seems to be a huge issue. Academia has been bled dry, and no one has an appetite for huge multi-year projects of that kind." userName="wbhart" createdAt="2025/07/22 05:15:05" color="#785bff">}}




{{<matomeQuote body="I think because you want to input mathematical proof intuition (heuristic) into models so they can grasp our reality better than just use tools without much clue." userName="machiaweliczny" createdAt="2025/07/22 11:49:58" color="">}}




{{<matomeQuote body="I wonder if ”not tool use, no internet access” means it can run without google inf, and offline. Meaning it could be deployed locally for people that need that." userName="jay_kyburz" createdAt="2025/07/21 21:53:03" color="">}}




{{<matomeQuote body="This year, our advanced Gemini model operated end-to-end in natural language, producing rigorous mathematical proofs directly from the official problem descriptionsI think I have a minority opinion here, but I’m a bit disappointed they seem to be moving away from formal techniques. I think if you ever want to truly “automate” math or do it at machine scale, e.g. creating proofs that would amount to thousands of pages of writing, there is simply no way forward but to formalize. Otherwise, one cannot get past the bottleneck of needing a human reviewer to understand and validate the proof." userName="kevinventullo" createdAt="2025/07/21 18:31:21" color="#38d3d3">}}




{{<matomeQuote body="If a Language Model is capable of producing rigorous natural language proofs then getting it to produce Lean (or whatever) proofs would not be a big deal. Lean use in AlphaProof was something of a crutch (not saying this as a bad thing). Very specialized, very narrow with little use outside any other domain. On the other hand, if you can achieve the same with general RL techniques and natural language then other hard-to-verify (a whole lot) domains are on the table." userName="og_kalu" createdAt="2025/07/21 23:14:14" color="#ff33a1">}}




{{<matomeQuote body="LLMが自然言語で厳密な証明を出せるなら、形式的なLean証明も楽勝って考えは的外れだよ。LLMが出せる未形式化の英語証明は既にたくさんあるし。" userName="kevinventullo" createdAt="2025/07/22 00:29:43" color="#45d325">}}




{{<matomeQuote body="数学者は形式化にそこまで興味ないし、未形式化が多いのもどうでもいい。形式化が簡単なんて言ってないよ。LLMが自力でやれるようになったら、後で形式化しても全然問題ないって話。Alphaproofって何だよ？もっとしょぼいLLMでもできるレベルだろ。だから先行したんだよ。" userName="og_kalu" createdAt="2025/07/22 01:22:39" color="">}}




{{<matomeQuote body="AlphaProofはLeanで動くよ。自然言語から形式言語への変換だけは手動だったんだ。形式言語を「松葉杖」って言うのは逆で、あれはむしろ難しい制約なんだよ。俺の極論だと、厳密な自然言語証明なんてない。20世紀とか21世紀初期の数学の非形式性は、そのうち18世紀以前の数学みたいに見られるようになるかもね。" userName="kevinventullo" createdAt="2025/07/22 03:13:26" color="#ff5c5c">}}




{{<matomeQuote body="形式言語が「松葉杖」だなんて言ってないよ。Alphaproofシステムにとっての「松葉杖」って言ったんだ。あれはLLMが変なこと言わないようにしたり、候補を検証したりするためにあったんだ。それでさえ解決に何日もかかったし。あれがなきゃ銀メダルなんて夢のまた夢。これこそ「松葉杖」の定義だろ。<br>LLMは力技で有望な候補を出すだけ。Leanなしじゃ全く動かないよ。" userName="og_kalu" createdAt="2025/07/22 03:40:30" color="#785bff">}}




{{<matomeQuote body="俺は元数学者だけど、なんで形式的なやり方に冷めてるか話すね。数千ページの証明には形式化と検証が必要なのは同意する。でも、そんなに欲しくないんだ。数学者が本当に知りたいのは「なぜ」結果が正しいか、その「説明」だよ。Riemann Hypothesisの例みたいに、証明は新しい手法や視点、深い理解をもたらすから嬉しいんだ。Leanが「正しい」って言っても人間が理解できない証明は意味ないんだよ。" userName="nicf" createdAt="2025/07/21 20:48:18" color="#38d3d3">}}




{{<matomeQuote body="形式言語で書かれた証明だって、人間にも十分分かりやすいものになるんだ。適切な形式言語とエコシステムを選ぶことが重要だよ。Agdaで証明を書くのは、Haskellのより表現力豊かなバージョンでプログラムを書くのに似てるんだ。<br>Abelsonが言ったように、「プログラムは人が読むために書かれる」。Curry-Howard isomorphismから、証明もプログラムと見れるよね。ソフトウェア工学の教訓を証明にも応用して、人間が読みやすくすべきなんだ。<br>俺のMartin-Löfの2006年の公理の機械化をチェックしてみてよ: https://research.mietek.io/mi.MartinLof2006.html<br>最近のHN議論: https://news.ycombinator.com/item?id=44269002" userName="mietek" createdAt="2025/07/21 21:53:40" color="#38d3d3">}}




{{<matomeQuote body="別に反論したかったわけじゃないんだ！形式証明がコードと似てて、人間にも分かるってのは同意するよ。俺が言いたかったのは、将来LLMが千ページもの理解不能な証明を出して、チェッカーは「正しい」って言っても、数学者はそんなに喜ばないだろうって点なんだ。CS出身の人には意外かもしれないけど、その反応に色を付けたかっただけだよ。" userName="nicf" createdAt="2025/07/21 22:05:43" color="#ff33a1">}}




{{<matomeQuote body="うん、この意見には同意するよ。ツールは有効なだけでなく、読みやすい証明を出すべきだよね。それに、人間だって時々読みにくい証明を出したりするし、もしかしたら形式言語を使っていれば避けられた問題もあったかもしれないね。<br>参考: https://www.quantamagazine.org/titans-of-mathematics-clash-o..." userName="mietek" createdAt="2025/07/21 22:07:22" color="">}}




{{<matomeQuote body="Axiom of ChoiceとLEMは、微積の極限点みたいなもんだと思うんだ。0/0は計算できないけど、「もしできたらこうなる」って答えがあるだろ？同じように、真偽を証明できないステートメントも「もしできたらこうなる」ってわけ。極限が使えない数学もできるけど、物理学の進歩は難しそうだよね。LEMやAoCも同じ。実数のべき集合のほとんどが非可測だから、Banach-Tarskiみたいなのが、実は物理学の根本に繋がる可能性もあるんだ。予測や計算はできなくても、観測はできるだろ。" userName="daxfohl" createdAt="2025/07/22 17:40:09" color="#785bff">}}




{{<matomeQuote body="システムの一部は人間が読めるべきだと思うよ。ソフトウェア開発みたいにね。人間が読む高レベルなコードがあって、あとはアセンブラとか自動生成コードがあるだろ？証明システムも同じで、主要な概念や定理は人間が読める形にして、何百万行もある生成されたコードを人間が全部読む必要はないんだ。" userName="riku_iki" createdAt="2025/07/22 20:23:06" color="#45d325">}}




{{<matomeQuote body="返信ありがとう。俺ももう数学者じゃないんだけどね。機械が作る形式的な証明って、人間が分かりやすく説明する証明とは違うってのは完全に同意するよ。でもさ、機械生成の形式証明って、いくつか面白い点があると思うんだ。例えば、1.当然だと思ってることが、実はそうじゃないって分かる時がある。2.機械が特定の数学的主張を証明できるかできないかって、それ自体が興味深いんだよ。3.ちゃんと分かりやすい証明を作るための出発点になってくれることを期待してるんだ。" userName="kevinventullo" createdAt="2025/07/21 22:35:35" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="あ、なんか上から目線で言っちゃったみたいだったらごめんね！HNでよく見る、数学者の本質を理解してない人たちへの反応が、君への返信に漏れちゃったのかも。数学うんちく垂れてごめんね。<br>まあ、このシナリオが現実になったら、機械が作った形式証明がどれだけ難解になるのか、それを人間が理解できるようにするのにどれだけ苦労するのか、見てみたいよね。何千ページにも及ぶ意味不明な記号の羅列から、美しい説明まで、色々な可能性がありそうだ。" userName="nicf" createdAt="2025/07/21 22:51:22" color="">}}




{{<matomeQuote body="＞多くの数学者の心を本当に燃え上がらせるのは、結果がなぜ真実なのかを知りたいという願望です。そう、説明こそが真の成果であり、単なるYes-or-noの答えではない<br>もちろん、そうなんだけどさ、Leanみたいな形式システムって、ただのイエスノーの答えじゃなくて、ちゃんと完全な証明を出してくれるんだよ。自然言語より読みにくいのは確かだけど、それならLeanの証明を自然言語に翻訳してくれるツールがあったら便利なんじゃないかな。" userName="david-gpu" createdAt="2025/07/21 22:29:50" color="#ff5c5c">}}




{{<matomeQuote body="理想的には、両方のいいとこ取りをしたいよね。ああいう規模の証明だったら、コードから簡単に検索できて、独立して考えられる新しい定義とかがついてくるべきだよ。証明全体を見なくても、新しく定義されてるものとか、どんな既存の定理がインポートされてるかを理解するだけで、かなりの構造が推測できると思うんだ。<br>君のコメント、TaoがABC conjectureについて言ってたことを思い出すよ。普通、大きな証明って、新しいツールとか、それが他の問題にどう応用できるかの例がどんどん出てくるものだよね。でも、何百ページも計算が並んでて、最後に答えだけ出すようなのは、普通の数学のやり方じゃないんだ。<br>もしこういった証明ツールが、新しい概念を全く含まない何千ページの計算だけの証明を吐き出すようになったら、俺も「ふーん」って感じで終わると思うな。" userName="daxfohl" createdAt="2025/07/21 22:25:46" color="#45d325">}}




{{<matomeQuote body="もし前提（この場合はRiemann hypothesis）が実際には間違いだと分かったら、どうなるんだろうっていつも考えてたんだ。その定理って完全に無駄になるのかな？それでも何か知識を得たり、テクニックを使ったりできるのかな？SETHとか細粒度複雑性理論にも同じことが言えるのかな。" userName="lblume" createdAt="2025/07/21 21:52:17" color="#ff5733">}}




{{<matomeQuote body="状況次第だね。一番ありそうなシナリオは、RHがごく特定の条件を除いては成り立つってことだろうね。そしたら、RHに依存する定理も同じ条件を引き継ぐことになる。多くの場合、その条件が依存する定理に影響しないから、完全に有効なままだろうね。でも、RHが「全ての数は偶数である」って前提で、君の定理が「全ての数は2で割ると0になる。なぜなら、偶数は2で割ると0だとRHから分かるからだ」っていう場合、RHの「奇数を除く」っていう例外が出たら、君の定理は「全ての数は奇数を除いて2で割ると0になる。なぜなら、偶数は2で割ると0だと分かるからだ」みたいに、既存の声明の言い換えになるだけで役に立たなくなるね。<br>他にも、新しい条件が定理に影響するけど、完全に無効にはしないケースもある。その場合、定理が弱くなるのを受け入れるか、新しい条件に合わせて強化する方法を見つけるかだね。<br>まあ、全部抽象的な話だけどね。RHやそれに依存する重要な数学が何なのか、俺は専門家じゃないから詳しく知らないんだ。それは知りたいけどね。" userName="daxfohl" createdAt="2025/07/22 18:00:12" color="#ff5733">}}




{{<matomeQuote body="RHの例については、俺もよく知らないから何とも言えないな。詳しい人の見解があれば、すごく興味があるよ！<br>でも、一般的に言うと、この質問の答えは、議論の具体的な内容次第だね。時には何かを salvage できるかもしれない。例えば、同じ方法が使える別の設定があったり、偽の仮説に似た仮説が成り立つ設定があったりとかね。でも、純粋に論理的に考えたら、PがQを意味してて、Pが偽だと分かったところで、Qについては何も学んでないことになるよね。" userName="nicf" createdAt="2025/07/21 22:02:24" color="#38d3d3">}}




{{<matomeQuote body="そうじゃないよ！彼らは今、形式化された未解決問題のリポジトリをまとめているところだね: https://github.com/google-deepmind/formal-conjectures" userName="7373737373" createdAt="2025/07/21 22:45:36" color="#45d325">}}




{{<matomeQuote body="(頭の中の流れだけど:<br>そうは言っても、ZFCみたいな公理系の深淵で機械が暴走したら、数学者たちが「なんだこれ！」って思うような証明方法を見つけ出すかもしれない。例えばZFCに矛盾があったら、何でも証明できちゃうわけでしょ。でも、そうでなくても、矛盾を“ほぼ”証明するような、とんでもなく強力なテクニックを見つけて、それでもって望む主張の論理的な証明に繋がっちゃうかもしれない。ゲームのスピードランで、可能な限り早くACE glitchを悪用して、ゲームをクリアする論理的な要件を満たしつつも、その精神に反してるのに似てるなって思うんだ。たぶん、俺たちは“グリッチなしのZFC”が何を意味するのかを考えなきゃいけなくなるかもね。もしかしたら、論理学者はすでにこれをやってるのかもしれないけど、へへ。)" userName="kevinventullo" createdAt="2025/07/21 18:48:46" color="#ff5c5c">}}




{{<matomeQuote body="君が言う「ホラーシナリオ」って、実は示唆されてる「精神」よりも価値があると思うな。もし機械が忠実に推論して主張の証明を探しているとして、ベストケースでは（矛盾したシステムの中で）特定の主張の証明を見つけたってことだよね。<br>もし「ホラーシナリオ」で、機械がこっそりZFCの矛盾の証明を見つけていて、それを隠しながら、ユーザーが求めるどんな主張に対しても「矛盾したZFCの中での実際の証明」を提示しているとしたら？この場合、Aの証明と！Aの証明の両方を求めれば、システム内で矛盾を見つけて悪用している事実が漏洩するんだ！それは、見つけにくい証明よりも、よっぽど価値があることだよ。" userName="DoctorOetker" createdAt="2025/07/22 01:43:39" color="#ff33a1">}}




{{<matomeQuote body="これらの問題は人間がツールなしで解けるように設計されてるんだ。だから、AIがもっと難しい問題に挑戦する時は、ツールを与えてもいいんじゃない？まずはツールなしで人間レベルのスキルを再現するのが大事だと思うけどね。" userName="modeless" createdAt="2025/07/21 18:54:22" color="#45d325">}}




{{<matomeQuote body="ああ、はっきり言うとさ、形式的な方法って有用なツールっていうより、証明の基準を上げるものだと思ってるんだ。例えば、LeanにアクセスできたからってIMOで人間が本当に有利になるかは不明だし、プロの数学者のほとんどはまだ形式化でプラスになってないみたいだしね。俺は素人だけど、間違ってるかもね！" userName="kevinventullo" createdAt="2025/07/21 19:32:16" color="">}}




{{<matomeQuote body="正確な形式化は問題を解くより多分簡単だから、解決策が生成された後にいつでも形式化してチェックできるよ。" userName="kurtis_reed" createdAt="2025/07/21 21:51:01" color="">}}




{{<matomeQuote body="普通、形式化って問題を解くより難しいんだよ。たいてい形式化する前に問題を解くしね。簡単に解ける問題でも、形式化するのは驚くほど難しいことがあるんだ。例えば、面積100の多角形に、面積1の円を99個、重ならずに収められるか？って問題。非公式に証明するのはすごく簡単だけど、形式化してみなよ！かなり自明な幾何学的ステートメントを形式化するのに時間がかかることに気づくだろうね。" userName="lacker" createdAt="2025/07/21 22:02:21" color="#785bff">}}




{{<matomeQuote body="その多角形の主張、俺には全然自明じゃないんだけど、どうやって証明するの？" userName="valicord" createdAt="2025/07/22 07:22:20" color="">}}




{{<matomeQuote body="円を99個一列に並べて、それぞれをほんの少しだけ余分な面積を持つ多角形で囲むんだ。そんで、その多角形同士をほんの小さなコネクタで繋いで一つの多角形にするんだよ。この“ほんの少し”ってのは、いくらでも小さくできるから、確実に総面積1以下に収まるんだ。まあ、一般的な意味では“自明”じゃないかもしれないけど、大学院の数学の授業なら“自明”って言えるレベルかな。ホワイトボードに図を描いたらすぐわかることだよ。これを人間に証明する方が、形式化するよりはるかに時間がかからないだろうね。" userName="lacker" createdAt="2025/07/23 22:00:57" color="#ff5c5c">}}




{{<matomeQuote body="OpenAIとGeminiの回答を比べると、Geminiの方が書き方がすごくクリアだね。もう少し見せ方を工夫できるけど、証明を追うのは十分簡単だよ。これのおかげでOpenAIの回答よりずっと短いし、ちゃんとした散文体を使ってるよ。" userName="shiandow" createdAt="2025/07/21 17:52:03" color="#ff33a1">}}




{{<matomeQuote body="参照してる証明見つけたよ：<br>Google https://storage.googleapis.com/deepmind-media/gemini/IMO_202...<br>OpenAI https://github.com/aw31/openai-imo-2025-proofs/" userName="cubefox" createdAt="2025/07/21 18:36:15" color="#45d325">}}




{{<matomeQuote body="Geminiはクリアだけど、マジで冗長だね。例えば問題1のセクション2、『Analysis of the Core Problem』を見てみろよ。ここに深いことなんて何もないのに、モデルはほんの些細な論理ステップまで全部説明したがってるみたいだね。これはスタイルの選択なのか、それとも実際にモデルが最終結果にたどり着くのに役立ってるのか、気になるね。" userName="sweezyjeezy" createdAt="2025/07/21 19:35:55" color="#ff5733">}}




{{<matomeQuote body="実際役立ってるんだよ。モデルにもっと計算時間を与えたり、モデルによる入力コンテキストのリアルタイム管理を可能にしたりするんだ。これは一部のコーディングモデルが過剰なコメント書きをするのと同じ挙動で見られるよ。Anthropicのインタビューでも、これらが実際にモデルを助けてると言ってたね。" userName="vessenes" createdAt="2025/07/21 20:49:58" color="#785bff">}}




{{<matomeQuote body="Geminiは一発で答えを出したわけじゃないんだ。どこかで考えて（Googleは公開してないだろうけど）、PDFにある形にまとめたんだって。記事には「Gemini Deep Thinkの拡張版を使って、並行思考を含む最新の研究技術を取り入れた推論モードで結果を出した」って書いてあるけど、その並行思考が見えないから、最終結果では省かれたんだろうね。" userName="johnfn" createdAt="2025/07/22 00:48:30" color="#785bff">}}




{{<matomeQuote body="そうだよ、これはGeminiが出した「答え」であって、「思考プロセス」じゃないからね。" userName="noahgav" createdAt="2025/07/22 01:56:04" color="">}}




{{<matomeQuote body="セクション2はケースバイケースの分析だよね。見た目は良くないけど、問題からすると普通だよ。OpenAIの場合、その部分は証明の約2/3を占めるし、文章もまとまってないから、Geminiの方がかなりマシだと思うな。" userName="shiandow" createdAt="2025/07/21 20:10:47" color="#ff33a1">}}




{{<matomeQuote body="問題はケースバイケースってわけじゃないよ。俺も昔オリンピック出てたからね。例えばk＞=3のケースなら、”3k-3個の点が三角形の周上にあって、どの線も2点までしか通れないから、3k-3 ≤ 2k、つまりk ≤ 3”ってくらいしか書かない。Geminiはもっと詳細に書いてるんだ。" userName="sweezyjeezy" createdAt="2025/07/21 21:02:30" color="#785bff">}}




{{<matomeQuote body="もっとシンプルにできるかは深く見てないけど、OpenAIがやったことよりは断然マシだよね？Geminiのは少なくとも簡略化できる。OpenAIはすべての点にラベル付けて、そこを通る線を全部列挙するから。" userName="shiandow" createdAt="2025/07/21 23:33:41" color="#785bff">}}




{{<matomeQuote body="どちらの提供者も、問題6の失敗した試行を見せてくれないのは、ちょっと残念だね。" userName="CamperBob2" createdAt="2025/07/21 23:09:29" color="">}}




{{<matomeQuote body="思考プロセスは全然示されてないね、最終的な証明だけだ。Googleが推論計算にすごく頼ってるって明確に言ってるから、思考プロセスはかなり巨大なんだろうね。<br>彼らは並列思考で複数の解を探索してるとか。Google AI Ultra加入者向けにDeep Thinkモデルを出すらしいよ。" userName="cubefox" createdAt="2025/07/22 00:41:53" color="#ff5733">}}




{{<matomeQuote body="Googleが出した答えを見ると、レポートは後から思考を要約したものかもしれないね。この要約ステップはTree of Thoughtsの一部として実行されたとも考えられるから、手動で”最終回答を出せ”って指示したわけじゃないだろう。" userName="aabhay" createdAt="2025/07/21 23:50:41" color="#ff33a1">}}




{{<matomeQuote body="今、競技数学でDeep Blue vs. Kasparovみたいな瞬間が起きてると思う。数年前から考えたらすごい進歩だけど、まだまだAI数学者として尊敬されるレベルには遠いかな。生きるのにエキサイティングな時代だ！" userName="tornikeo" createdAt="2025/07/21 17:31:03" color="#38d3d3">}}




{{<matomeQuote body="Terrence Taoが最近のポッドキャストで、「これらのツールと一緒に仕事すること」にすごく興味があるって言ってたよ。彼は近い将来、LLMは「人間が設定したビジョンの探求者」として使うのがベストだって見てるんだ。つまり、アイデアやパラメータを設定してLLMに並列探索とか証明とかさせるとか。君のチェスAIとの比較は的を射てるね。今、最高のチェスプレイヤーはそうやって準備してるんだ。" userName="NitpickLawyer" createdAt="2025/07/21 17:34:49" color="#ff33a1">}}




{{<matomeQuote body="タオ氏が今回のIMOの結果について面白いことを言ってたよ。詳しいのはここ見てね：https://mathstodon.xyz/@tao/114881418225852441" userName="j2kun" createdAt="2025/07/21 20:50:05" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="彼、これらのツールと一緒に作業する様子を紹介するYouTubeチャンネルを作ったみたいだよ：https://youtube.com/@TerenceTao27" userName="7373737373" createdAt="2025/07/21 19:55:27" color="#45d325">}}




{{<matomeQuote body="スーパーコンピュータで膨大な局面を調べて最高のアイデアを見つけるアナリストがいるって？最近AIについて調べてたんだけど、チェスみたいに科学の分野でもAIがすごく役立つようになる気がするよ。" userName="tough" createdAt="2025/07/21 18:47:03" color="">}}




{{<matomeQuote body="これはアドバンスド・チェスと似てるね：https://en.wikipedia.org/wiki/Advanced_chess<br>Wikipediaにはあまり情報がないけど、他の情報だと人間とコンピュータの組み合わせが単独より強いらしいよ。" userName="ars" createdAt="2025/07/21 21:06:37" color="">}}




{{<matomeQuote body="俺の理解だと、チェスではもう人間がコンピュータに何か貢献できることはないよ。コンピュータが人間とほぼ同じ強さから、人間の最強選手ですら改善に貢献できないほど強くなるまでの期間は短かったと思う。数学でどうなるか見てみようか…" userName="gjm11" createdAt="2025/07/21 21:53:40" color="#ff33a1">}}




{{<matomeQuote body="いや、それは違うよ。通信チェスみたいな長い時間形式ではまだ人間の貢献は有効。すごく強いエンジンでも計算ミスすることはよくあって、特に早指しや閉鎖的な局面では負けることもあるんだ。ホライズン効果はエンジンにまだあるよ。<br>https://en.chessbase.com/post/correspondence-chess-and-corre...<br>https://www.chess.com/blog/SamCopeland/hikaru-nakamura-crush..." userName="KK7NIL" createdAt="2025/07/22 00:08:36" color="#45d325">}}




{{<matomeQuote body="ナカムラの例は2008年のだろ？17年前だよ。それからAIはハードもソフトもすごく進化したから、今のStockfishやLeela相手じゃ無理だと思うね。でも、通信チェスについては君の言う通りかも。7年前のインタビューだけど、人間もまだ貢献できる可能性はあるかもな。" userName="gjm11" createdAt="2025/07/22 00:50:06" color="#785bff">}}




{{<matomeQuote body="ナカムラの例が古いのは分かってるよ。でも、ホライズン効果は最新のSF含むアルファ・ベータ探索エンジンにはまだあるんだ。MCTSエンジンのLc0はホライズン効果に強いけど、早指しだと浅い戦術を見落とすこともある。Andrew TangのLc0との試合がそうだよ：https://lichess.org/@/lichess/blog/gm-andrew-tang-defends-hu...<br>ICCFでやってるけど、最近はエンジンが強すぎて引き分けが多くて、オープニングの新しい手を考えにくいんだ。でも、引き分けになりやすい定跡を避けるのに人間はまだ役立つよ。" userName="KK7NIL" createdAt="2025/07/22 04:05:09" color="#ff33a1">}}




{{<matomeQuote body="数ヶ月前、SFとLc0のすごい対局があったんだ。SFは勝てると思ってたのに、Lc0が駒を4つ捨てて引き分けに持ち込んだんだよ。SF（NNUE搭載）は2手進んでやっと引き分けって分かったらしい。すごいだろ。" userName="NitpickLawyer" createdAt="2025/07/22 06:03:08" color="#ff33a1">}}




{{<matomeQuote body="これかな？Redditで見つけたよ：https://www.chess.com/computer-chess-championship#event=ccc2...<br>アルファ・ベータ探索とMCTSエンジンのホライズン効果を示す良い例だね。共有ありがとう！" userName="KK7NIL" createdAt="2025/07/22 07:50:35" color="#ff33a1">}}




{{<matomeQuote body="チェスが対人競技なのに対し、数学はそれ自体との対話だってのが重要だね。" userName="llelouch" createdAt="2025/07/22 09:44:00" color="#785bff">}}




{{<matomeQuote body="深層学習と違って、力ずくで短時間で高得点を出すのは無理だろ。これはDeep Blueとは違う、正真正銘の技術的な快挙だよ。" userName="aldousd666" createdAt="2025/07/21 20:36:04" color="#38d3d3">}}




{{<matomeQuote body="Deep Blueと神童の対決みたいなもんだね。IMOの参加者は世界最高の数学者じゃなくて、高校生なんだから。" userName="drexlspivey" createdAt="2025/07/21 19:37:34" color="">}}




{{<matomeQuote body="競技数学は研究数学とは違うけど、IMOに出るような子たちは競技数学では世界トップクラスだよ。" userName="bbconn" createdAt="2025/07/21 20:14:46" color="#785bff">}}




{{<matomeQuote body="4.5時間の制限内でって言うけど、並列推論プロセスを数百万使えたんじゃないの？何百年分のGPU時間かかったかもね。それでも解を見つけるのはすごいし、並列化できるってこと自体がすごいのかも。" userName="Sol-" createdAt="2025/07/21 20:16:19" color="#ff33a1">}}




{{<matomeQuote body="「数百万の並列推論プロセス」は実際は使ってないし、誰もまだそんなことしてないよ。決定論的システムで証明を列挙するのはすごく難しいんだ。<br>Aaronsonの論文読んでみて：[1] [1]: https://www.scottaaronson.com/papers/philos.pdf" userName="lblume" createdAt="2025/07/21 21:55:33" color="#ff33a1">}}




{{<matomeQuote body="「誰もやってない」って言うけど、実際には彼らはやってるみたいだよ。<br>「Gemini Deep Think」って、複数の解決策を同時に探して組み合わせる「並列思考」を使ってるんだって。" userName="lossolo" createdAt="2025/07/22 04:44:25" color="#38d3d3">}}




{{<matomeQuote body="去年はLeanベースだったのに、今年は汎用LLMと強化学習に移行したのが面白いね。これなら数学以外でも性能が上がりそう。彼らが夏に出す「DeepThink」モデルに近いみたいだよ。" userName="be7a" createdAt="2025/07/21 17:18:50" color="#45d325">}}




{{<matomeQuote body="数学やプログラミングの競技は人間の能力を測るものだけど、AIの成功は人間の能力とは根本的に違うから、必ずしも意味があるとは言えないよ。AI企業はIMOチャレンジをAGI達成のサインと見てるけど、機械が成功しても人間の幅広い数学や「推論」能力とは関係ないんじゃないかな。" userName="sinuhe69" createdAt="2025/07/22 09:32:17" color="#ff5c5c">}}




{{<matomeQuote body="これはすごいニュースだけど、IMOと協力したこの真面目な成果が、OpenAIの適当なツイートで「出し抜かれた」のはちょっと悲しいな。今の業界の状況がよくわかるよ。" userName="raincole" createdAt="2025/07/22 01:09:52" color="">}}




{{<matomeQuote body="何の改善も証明してないのに、注目集めようと便乗してるだけだろ。だから全然注目されない方がいいよ。" userName="aprilthird2021" createdAt="2025/07/22 06:16:11" color="">}}




{{<matomeQuote body="役に立つし面白いけど、正式な検証ツールと繋がないと実用は危険かも。o3は古いけど、間違った証明とかを説得力あるように見せるからね。モデルが良くなると、こういう微妙な間違いを見つけるのがもっと難しくなりそう。" userName="gyrovagueGeist" createdAt="2025/07/21 19:05:30" color="#ff5c5c">}}




{{<matomeQuote body="100% o3は『質問に答えてるっぽい形式的な議論を書く』傾向が強いね。MathOverflowの難しい数学の問題をやらせたら、間違ってるのにどこがおかしいか見つけるのが超大変だったよ。間違ってるのに説得力あるとか、マジ最悪！" userName="sweezyjeezy" createdAt="2025/07/21 19:45:57" color="#ff5733">}}




{{<matomeQuote body="『Gemini Deepthinkの先進版』ってのは、別のモデルか、Gemini UltraのDeepthinkよりテスト時間がかなり長かったってことだろうね。OpenAIとGoogleが互角ってのはすごいよな。" userName="gundmc" createdAt="2025/07/21 17:25:10" color="">}}




{{<matomeQuote body="計算量がどれくらいか情報がないのが気になるな。GoogleかOpenAIに詳しい内訳を出してほしいよ。OpenAIの時も熱く議論されたけど、結局、モデルはIMO問題に特化して訓練されたみたいだね。結果はすごいけど、古典的なMLとあんまり変わらないかもね。" userName="lufenialif2" createdAt="2025/07/21 16:44:25" color="#ff5733">}}




{{<matomeQuote body="マスメディアってSI単位じゃなくて、『議会図書館何個分』とか『ゾウ何頭分』とかの単位使うじゃん？ AIと子供の計算エネルギーを比べるのに、どんな単位使えばいいと思う？" userName="dvh" createdAt="2025/07/21 17:32:42" color="">}}




{{<matomeQuote body="もし金メダル取ったモデルがARC-AGIで使われたのに似てるなら、問題を解くのに膨大な文章、つまり本棚何個分もの文章を書きまくったはずだよ。だから『AIは議会図書館の何倍も書いた』って比較、結構いいんじゃない？" userName="thrance" createdAt="2025/07/21 17:45:57" color="">}}




{{<matomeQuote body="このツールを使うのに100ドルかかるのか、それとも10万ドルかかるのか、市場価格での計算量（ドル）を知りたいな。" userName="rfurmani" createdAt="2025/07/21 17:59:38" color="">}}




{{<matomeQuote body="4.5時間×2日間で、サポート込みで100Wだって。電卓禁止ルールはどうするのか知らないけど、この問題なら別に重要じゃないね。合計は900Wh、つまり3.24MJだ。" userName="gus_massa" createdAt="2025/07/21 18:22:17" color="#ff5c5c">}}




{{<matomeQuote body="100Wはさすがに低すぎだろ。Nvidia GeForce RTX 5090単体でも約600Wするんだぞ。きっと沢山のGPUやTPUを並列で使ってるに決まってるよ。" userName="qnleigh" createdAt="2025/07/21 23:38:30" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
