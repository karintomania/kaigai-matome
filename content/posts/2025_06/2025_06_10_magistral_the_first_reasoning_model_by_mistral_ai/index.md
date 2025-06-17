+++
date = '2025-06-10T00:00:00'
months = '2025/06'
draft = false
title = 'Mistral AIが初の推論モデルMagistralを発表！'
tags = ["Mistral AI", "AI", "LLM", "推論モデル", "自然言語処理"]
featureimage = 'thumbnails/orange1.jpg'
+++

> Mistral AIが初の推論モデルMagistralを発表！

引用元：[https://news.ycombinator.com/item?id=44236997](https://news.ycombinator.com/item?id=44236997)




{{<matomeQuote body="興味ある人向けにGGUF作ったよ！<br>実行はこんなコマンドで試してみてね。<br>ollama run hf.co/unsloth/Magistral-Small-2506-GGUF:UD-Q4_K_XL<br>or<br>./llama.cpp/llama-cli -hf unsloth/Magistral-Small-2506-GGUF:UD-Q4_K_XL --jinja --temp 0.7 --top-k -1 --top-p 0.95 -ngl 99<br>llama.cppでは--jinjaを使って、温度は0.7、top-pは0.95がいいよ！<br>Ollamaのコンテキスト長も8Kくらいに伸ばすのがおすすめ。<br>OLLAMA_CONTEXT_LENGTH=8192 ollama serve &<br>詳しくはここも見てね→https://docs.unsloth.ai/basics/magistral" userName="danielhanchen" createdAt="2025/06/10 14:21:51" color="#ff5c5c">}}




{{<matomeQuote body="考えすぎだってば。<br>詳しくはこれ見て→https://gist.github.com/gavi/b9985f730f5deefe49b6a28e5569d46..." userName="gavi" createdAt="2025/06/10 20:05:36" color="">}}




{{<matomeQuote body="最初のR1バージョンをローカルで動かした印象だと、そっちも考えすぎてる感じだったな。" userName="fzzzy" createdAt="2025/06/10 20:12:27" color="">}}




{{<matomeQuote body="考えてなんかいないよ。他のモデルと同じ、ただの統計モデルだって。" userName="cluckindan" createdAt="2025/06/10 20:52:52" color="#ff5c5c">}}




{{<matomeQuote body="僕たちが考えてる時って、いったい何をしてるんだろうね？" userName="robmccoll" createdAt="2025/06/10 22:11:19" color="">}}




{{<matomeQuote body="”Thinking”（思考）ってのは、Reasoningモデルが答え出す前に内部で”Chain of Thought”を出すことなんだ。<br>これは、LLMに「step by step考えろ」って明確に言うと性能が上がるっていう初期の観察から来てて、そのテクニックと名前だよ。<br>今後の建設的な議論の参考になれば嬉しいな。<br>[1] https://arxiv.org/html/2410.10630v1<br>[2] https://arxiv.org/pdf/2205.11916" userName="LordDragonfang" createdAt="2025/06/10 22:29:06" color="#785bff">}}




{{<matomeQuote body="人間のニューロンは統計モデルの人工ニューロンに還元できないよ。一緒くたにしないで。" userName="cluckindan" createdAt="2025/06/11 06:01:33" color="#38d3d3">}}




{{<matomeQuote body="え、なんでダメなの？" userName="jeffhuys" createdAt="2025/06/11 06:41:59" color="">}}




{{<matomeQuote body="彼らの論文（https://mistral.ai/static/research/magistral.pdf）もすごいんだ！GRPOをこういじったらしいよ！<br>1. KL Divergenceを削除<br>2. 全長で正規化（Dr. GRPOスタイル）<br>3. advantagesにミニバッチ正規化<br>4. Trust regionを緩和" userName="danielhanchen" createdAt="2025/06/10 15:00:27" color="#785bff">}}




{{<matomeQuote body="だって、人間のニューロンのこと全部わかってるわけじゃないじゃん。<br>直接観察できないものをどうやって正確にモデル化しろっていうのさ？" userName="cluckindan" createdAt="2025/06/11 06:52:55" color="#45d325">}}




{{<matomeQuote body="「reasoning（推論）」ってさぁ、あれ誤解を招く「term of art」っていうか、「term of marketing」だよ。<br>LLMはreasoningをしない、まさにそれが多くのタスクで使えない理由なんだよね。" userName="andrepd" createdAt="2025/06/11 10:12:17" color="#785bff">}}




{{<matomeQuote body="ベンチマーク面白いね。<br>DeepSeek-V3（reasoningじゃない）の12月版とか、DeepSeek-R1の1月版と比較してるんだ。<br>DeepSeek-R1-0528と比較するのがもっとフェアだと思うな。<br>例えば、R1はAIME 2024で79.8点だけど、R1-0528は91.4点。<br>R1はAIME 2025で70点、R1-0528は87.5点。<br>GPQA Diamond、LiveCodeBench、AiderでもR1-0528は10～15点くらい高いよ。<br>https://huggingface.co/deepseek-ai/DeepSeek-R1-0528" userName="ozgune" createdAt="2025/06/10 17:45:40" color="#785bff">}}




{{<matomeQuote body="LLMは絶対に推論（reasoning）してないって、どんな定義でそう確信してるの？<br>その証拠は？<br>（それに、そのreasoningの定義って、人間にも当てはまったりしない？）" userName="LordDragonfang" createdAt="2025/06/11 16:51:40" color="">}}




{{<matomeQuote body="＞ Removed KL Divergence<br>え、どうやって損失計算してるの？" userName="Onavo" createdAt="2025/06/10 15:26:19" color="">}}




{{<matomeQuote body="LLMは”think（考える）”しない。<br>https://arxiv.org/abs/2503.09211<br>”reason（推論）”もしない。<br>https://ml-site.cdn-apple.com/papers/the-illusion-of-thinkin...<br>内部状態だっていつも正確に出力するわけじゃないし。<br>https://arxiv.org/abs/2505.05410" userName="cluckindan" createdAt="2025/06/11 18:18:42" color="#ff5c5c">}}




{{<matomeQuote body="R1-0528-Qwen3-8Bとの比較も面白そうだね（Deepseek-R1-0528からchain-of-thoughtで蒸留してQwen3-8Bに後学習させたやつ）。<br>AIME 2024で86点、2025で76点だって。<br>今、古いRTX 2080 Tiで6-bit XL quant動かしてるんだけど、正直かなり感動してるよ。<br>8GB以下のダウンロードでこれは本当にすごい。" userName="semi-extrinsic" createdAt="2025/06/10 22:37:47" color="#ff33a1">}}




{{<matomeQuote body="それは確実に分かってるのかな？<br>ていうか、「thinking（考える）」がどう働くかって、まだ完全に謎じゃん。<br>ニューロンによるアナログ電気信号ベースの計算がstatistical token prediction（統計的トークン予測）に基づいてないって、どうして確信できるの？<br>それ、自分でstatistical token prediction（でまかせ）してるだけじゃないの？thinkingってもっとずっと広い活動だよ。" userName="otabdeveloper4" createdAt="2025/06/11 05:02:59" color="">}}




{{<matomeQuote body="ゲームで「Half-life 2はwater-physics（水の物理演算）がすごい」って言う時、「いや、宇宙の物理法則全部わかってないし、浮動小数点演算だから物理演算じゃない、ただの計算だ」って文句言う？<br>ゲームの「water-physics」とか「cloth physics」って、サブアトミックレベルでは理解してないことの数学的近似として合意してるじゃん。<br>AIの「thinking」も、本物じゃなくても外見が人間の思考に似てるだけの、意図的なニセモノとして呼んで良くない？<br>Minecraftのwaterに「water physicsがある」って言ってOKなのに、AIの文脈で「thinkingは、内部的には無関係でも外見がちょっと人間が考えるのに似てる用語だ」って言うのはダメなの？<br>それともthinkingって特別？「soul（魂）」みたいに、それを守らないと人間性失うとか？<br>「あのビル、50年間倒れようか”thinking”してたよ」って言ったら、人間性に対する大失敗？" userName="TheDong" createdAt="2025/06/11 07:05:13" color="#38d3d3">}}




{{<matomeQuote body="＞ https://arxiv.org/abs/2503.09211<br>この論文には全然感心しないね。<br>誰も使ってないであろう「thinking」の漠然としたストローマン（都合の良い歪曲）定義を作って、それを叩き潰してるだけだよ（しかもそれが人間に当てはまるかは何も言ってない）。<br>決定論に頼りすぎてるのもダメだね。<br>人間が決定論的かどうかなんてまだわかんないし、仮にノイズでLoRA作ったとして、君が意見変えるとも思えないから、君の本当の意見をサポートしてない。<br>＞ https://ml-site.cdn-apple.com/papers/the-illusion-of-thinkin...<br>こっちはもっとちゃんとしてるけど、<br>”While these models demonstrate improved performance on reasoning benchmarks, their fundamental capabilities, scaling properties, and limitations remain insufficiently understood. [...] Through extensive experimentation across diverse puzzles, we show that frontier LRMs face a complete accuracy collapse beyond certain complexities. [...] We found that LRMs have limitations in exact computation: they fail to use explicit algorithms and reason inconsistently across puzzles.”<br>まず「まだ十分に理解できてない」って言ってる（つまりイエス・ノーを断定できるほどわかってない）のに、その後でリストアップしてる欠点は、俺がずっと言ってるように、たいていの（全部とは言わないけど）人間のreasoningにも当てはまることばかりだよ。<br>人間のreasoningだって、複雑さが増すと精度が完全に崩壊するし、明確なアルゴリズムを使ってないし、パズルによってreasoningが一貫しないのが観察されてるじゃん。<br>だから、君の言うanthropomorphization（人間化）の定義が、たいていの人間を除外するようなものじゃない限り、これは全然決定的じゃないね。<br>＞ They don’t even always output their internal state accurately.<br>人間についてもマジで悪い知らせがあるよ。<br>たぶん（Buddha et al, 500 BCE）がその基礎になるテキストだけど、もっと最近の研究もあるよ（Hume, 1739）、（Kierkegaard, 1849）。" userName="LordDragonfang" createdAt="2025/06/11 22:44:30" color="#ff5c5c">}}




{{<matomeQuote body="それ、確実にわかってるの？<br>マジで？<br>だって俺の理解では、「thinking（考える）」がどう働くかって実はまだ全くの謎なんだよ。<br>ニューロンがやってるアナログ電気信号ベースの計算の基盤が、statistical prediction（統計的予測）じゃないって、どうして確実にわかるの？<br>それって実際の証拠があるの？それとも君が自分で「statistical token prediction」してるだけ？" userName="LordDragonfang" createdAt="2025/06/11 17:04:31" color="">}}




{{<matomeQuote body="統計モデルを擬人化するのは良くないって話。素人が誤解するだけだし、AIスタートアップの売り込み以外には意味ないよ。<br>本当の理解の邪魔になるってこと。" userName="bobsomers" createdAt="2025/06/10 22:43:13" color="#ff5733">}}




{{<matomeQuote body="ちょっと年寄りだけど、Unslothマジ最高！！！<br>いつも使ってるし、ちゃんと動くから感謝。<br>llama.cppはJinja以外に何使ってるの？" userName="monkmartinez" createdAt="2025/06/10 16:49:58" color="">}}




{{<matomeQuote body="コメント1への反論ね。「思考」を人間だけと思ってるから擬人化って言うんでしょ？<br>LLMに「考えて」って言うと、人間みたいに考えてるように見えるし、精度も上がる。<br>RLHFされたLLMは人間を「シミュレーション」してるって考えると分かりやすいよ。<br>十分正確ならシミュレーションと考えの区別なんてない。<br>あんたの言う「真の理解」って何？<br>https://www.astralcodexten.com/p/janus-simulators" userName="LordDragonfang" createdAt="2025/06/10 23:22:58" color="#ff5733">}}




{{<matomeQuote body="いいね！<br>俺はCPUで動かしてるんだけど、比較すると面白いね。<br>Magistral-Small-2506_Q8_0.ggufは秒間2トークン以下だけど、UD-IQ2_XXSは5.5トークン＼sくらいで使える速さ。<br>でもちょっと幻覚見たりループしたりするけど、小さいのにかなり良いよ。" userName="trebligdivad" createdAt="2025/06/11 01:40:06" color="#ff5733">}}




{{<matomeQuote body="いつもありがとう！" userName="lxe" createdAt="2025/06/10 15:15:09" color="">}}




{{<matomeQuote body="それって宗教的な人と同じで、証明責任を逆にしてるだけじゃない？<br>証拠がないことが、存在しない証拠にはならない、みたいなさ。" userName="cluckindan" createdAt="2025/06/12 06:31:35" color="">}}




{{<matomeQuote body="これって単なるSFTで「蒸留」されたモデルで、RLで最適化されたやつじゃないんだよね？" userName="cpldcpu" createdAt="2025/06/10 15:05:36" color="">}}




{{<matomeQuote body="なんでminibatch advantage normalizationを追加したか知ってる？<br>論文だとそんなに差が出ないって言ってるし、minibatchの平均で正規化するのって最適ポリシーへの収束には理論的に変じゃない？" userName="gyrovagueGeist" createdAt="2025/06/10 17:58:10" color="#785bff">}}




{{<matomeQuote body="シミュレーションに夢中になりすぎて、それを必死に擁護する人もいるんだね。<br>俺の言いたかった「LLMは人間じゃないし人間みたいに考えない」ってこと、君がうまく証明してくれたよ。" userName="cluckindan" createdAt="2025/06/12 05:28:55" color="">}}




{{<matomeQuote body="君がどうやってるか知らないからって、俺たちができないってことにはならないよ。" userName="inimino" createdAt="2025/06/11 09:37:11" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ベンチマークだとMagistralはDeepseek-R1に負けてるみたい。しかもコストは倍以上とか。EU最高のAI企業でもSOTAについていくの大変そうだな。" userName="pu_pe" createdAt="2025/06/10 14:41:11" color="#ff33a1">}}




{{<matomeQuote body="“EUは規制をリードしてる”とか言うけど、何考えてんだか分かんないわ。" userName="atemerev" createdAt="2025/06/10 14:45:26" color="">}}




{{<matomeQuote body="Mistralの投資家リスト[0]見るとすぐ分かるけど、あそこ全然ヨーロッパじゃないよ。主にアメリカの会社が持ってて、EUとか他の国の会社がちょっと入ってる感じかな。[0] https://tracxn.com/d/companies/mistral-ai/__SLZq7rzxLYqqA97j..." userName="melicerte" createdAt="2025/06/10 15:07:12" color="#38d3d3">}}




{{<matomeQuote body="前のコメントの趣旨で言うなら、投資家じゃなくて実際に会社回して働いてる人たちの国籍の方が関係あるんじゃない？" userName="pdabbadabba" createdAt="2025/06/10 16:04:00" color="">}}




{{<matomeQuote body="あとは、働いてる場所の規制環境も一番重要かもね。アメリカで働くフランス人は、フランスで働くフランス人より生産的だろうな（たぶんアメリカの方が労働時間長いからってだけでも）。" userName="derektank" createdAt="2025/06/10 16:11:11" color="">}}




{{<matomeQuote body="たぶん“人々はもっと権利とか保護を持つべきだ”みたいな馬鹿げたことじゃない？" userName="micromacrofoot" createdAt="2025/06/10 14:50:55" color="">}}




{{<matomeQuote body="もういい加減にしてくれって感じ…<br>使い古された話だし、ヨーロッパに消費者向けAI企業が少ない理由じゃないでしょ。" userName="cpldcpu" createdAt="2025/06/10 15:07:56" color="">}}




{{<matomeQuote body="じゃあ、何が理由なの？マジで知りたいんだけど。<br>あと、ここで“消費者向けじゃない”AI企業ってちゃんとやってけてるのあるの？Mistralしか基盤モデル学習させてないみたいだけど、それはそれで良いけど、今のところ全然SOTAじゃないよね。" userName="atemerev" createdAt="2025/06/10 15:11:32" color="#ff5733">}}




{{<matomeQuote body="お金だよ。マジで。<br>EUにはVCも巨大企業もないんだ。EUがプロジェクト支援してるって笑われるけど、民間のお金で支援してくれるところがないの。ただ、EU内に拠点あるアメリカの会社はいっぱいあって、問題に取り組んでる人はいるけど、自社ブランドって感じじゃないんだよね。" userName="baq" createdAt="2025/06/10 15:17:10" color="#ff5c5c">}}




{{<matomeQuote body="個人的な意見だけど、この技術開発競争は複雑な気持ちになるね。6ヶ月から1年遅れたとしても、トップクラスと比べて数百億ドルも燃やさずに済むなら、エンジニアリングとしては勝ちだと思うんだ。お客さんが「いや、最高の技術しか使わないよ」って言うのもわかるけど、永遠に赤字になるようなビジネスの市場シェアにそこまで価値があるのかな？" userName="epolanski" createdAt="2025/06/10 19:13:47" color="">}}




{{<matomeQuote body="ヨーロッパは市場がアメリカのテック大手に開かれてる限り、技術で追いつくのは無理だよ。Techって限界費用がほぼゼロだから、一極集中して世界中に売るのが一番効率いいんだ。今、インフラも人材もUSに集まってるから、EUの技術はニッチな製品しか作れない運命にある。UKやフランスに少しはあるけど、それだけ。対抗できるのはUSと問題抱えてる国、つまり中国とロシアだね。中国は強力な競合を生み出してて、最先端を行ってる。これは規制とは関係ないんだ。USだって州ごとに規制はあるけど、ほとんどが特定の州で起こってること。もしEUとUSの関係がTrump／Muskレベルになったら、EUも最先端のものを持てるかもね。影響力のあるAI研究者の多くはヨーロッパ（UK含む）、イスラエル、カナダ出身だよ。Ilya Sutskeverはこないだ母校のカナダでスピーチしてたし、Andrej Karpathyはスロバキア人。UK、フランス、ポーランド、中国、ドイツとか、パイオニアには非アメリカ人が多いんだ。彼らがUS以外にいる理由さえあれば、技術はUSの外でも生まれるんだよ。中国はその理由を手に入れたし、今の世界情勢を考えると、ヨーロッパも3年半以内にそうなる可能性は十分あると思う。" userName="mrtksn" createdAt="2025/06/10 14:53:36" color="#ff33a1">}}




{{<matomeQuote body="答えの一部は借金だね。USの債務は35兆ドルで、EU全体だと16兆ドルくらい。もしその債務の差額のたった10%でもテックに投資されてたら、EUのテックにはだいたい2兆ドル多く投資できたってこと。" userName="hshdhdhj4444" createdAt="2025/06/10 16:14:51" color="">}}




{{<matomeQuote body="› アメリカの方がフランスより労働時間が長いって多分違う<br>それが本当かはわからないな。Mistralはすごくハードワークな場所として知られてるから。" userName="whiplash451" createdAt="2025/06/10 16:58:25" color="">}}




{{<matomeQuote body="フランスでは法定労働時間35時間を超えるのに追加の費用や法的な手続きが必要だけど、USの方が規制がずっと少ないのは確かだと思うよ。" userName="gwervc" createdAt="2025/06/10 17:20:02" color="">}}




{{<matomeQuote body="最初のR1モデルがどれだけすごくて、どれだけ少ない計算リソースで作れたか考えると、新しいR1モデルがオ3や2.5 Proを全てのベンチマークで超えてないのがマジで不思議なんだよね。Magistral Smallはたったの24BなのにAIME2024で70.7%出してて、R1の32B蒸留版が72.6%。で、多数決@64だとMagistral Smallは83.3%で、フルR1より良いんだよ。24Bモデルなら普通のゲーミングGPUで動かせるから、フルR1よりずっと手軽だし。見てみて→ https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Qwen-14B-Qwen-72B-R1" userName="hmottestad" createdAt="2025/06/10 18:43:52" color="#ff5733">}}




{{<matomeQuote body="ヨーロッパ人は賢いリスクを取らないから。過剰に規制するから。この答えにみんな結局戻ってくるのが面白いね。規制と税金はインセンティブを減らす。インセンティブが低いと、リスクを取ることも少なくなる。これがまだ議論が必要なレッスンだなんて、バカげてるよ。" userName="bobxmax" createdAt="2025/06/10 17:53:14" color="">}}




{{<matomeQuote body="EUの規制ってよく「クールなものは持っちゃダメ」って感じなんだよね、「クールなものは公平に運営しなきゃダメ」じゃなくて。彼らは「古い金持ち」を守ることに興味があって、人々を守ることには興味がないんじゃないかな。" userName="__alexs" createdAt="2025/06/10 15:09:51" color="">}}




{{<matomeQuote body="DeepSeekが速攻コピーだったからだよ。あれは簡単な部分だったし、だからそんなに計算資源を使わずにトップに近づけたんだ。o3とか2.5 Proを大きく超えるのは、速攻コピーより段違いに金がかかる。中国の文化的なやり方だと、こういう結果によくなるんだよね。車とか飛行機とかインターネットサービスとか産業機械とか軍事とか、同じようなの見るでしょ。イノベーションは超高くて時間かかるけど、速攻コピーはたいてい超安くて早い。85％くらいで十分って考えが多いけど、最後の10〜15％は笑えるくらい高くて大変なんだ。" userName="adventured" createdAt="2025/06/10 20:13:42" color="">}}




{{<matomeQuote body="そうだね、しかも技術が頭打ちになってきてるから、6〜12ヶ月遅れても借金が少ない方が長い目で見ればいい考えだよ。あと、ヨーロッパが競争に参加してるのは消費者にとってすごく大きいことだよ。" userName="louiskottmann" createdAt="2025/06/10 19:51:51" color="">}}




{{<matomeQuote body="これは無知を超えて、完全に何もわかってないね。スタートアップとかハードな研究やってる人はどこでも超絶ハードに働いてるし、Mistralは特に生き残るのが大変で有名だよ。ヨーロッパの創業者とか研究者が「いやぁ、ヨーロッパ人だし、野心ないし、金もいらないし、株式なんて知るか」とか思ってると思ってるの？あと、一点だけ指摘しておくと、研究畑にいたけど100％言えるのは、中国＼韓国＼日本の人たちほど献身的で勤勉な人は見たことないよ。オフィスに寝袋持ち込むレベルの人たちの話ね。でも、それが必ずしもより良い結果につながるわけじゃないんだ。結果の量が増えることはあるし、それは時々重要だけど、より良い、より関連性の高い、より高品質なもの？それは違う、違う、違う。" userName="epolanski" createdAt="2025/06/10 19:17:36" color="">}}




{{<matomeQuote body="HNのやつらが考えるcopiumだね。ヨーロッパの労働者は金のためじゃなく名誉のために必死に働くんだよ。" userName="FirmwareBurner" createdAt="2025/06/11 21:47:33" color="">}}




{{<matomeQuote body="君のコメント、いくつか苦情が来てるよ。これはHNには合わない書き方。地域とか文化で判断するのやめてね。<br>何度も言ってるけど、またやるとBANだよ。HNを良くするために協力してね。" userName="tomhow" createdAt="2025/06/11 22:39:49" color="">}}




{{<matomeQuote body="magistral-mediumをJSON生成で試したよ。o4-mini（50～70秒）より速くて（34～37秒）、品質は少し低いけど使えるレベル。<br>速度優先なのがいいね。良い結果だよ。" userName="megalomanu" createdAt="2025/06/11 07:25:44" color="#ff5c5c">}}




{{<matomeQuote body="ファインチューニングすれば品質の差は埋められるんじゃない？o4-miniの結果があるなら簡単そうだよ。" userName="nbardy" createdAt="2025/06/11 08:40:08" color="">}}




{{<matomeQuote body="なんでJSON生成に推論モデル使うの？自分はGemma 27b VLLMで試したら～7秒だったよ。<br>JSONサイズは重要だけど、推論モデルは計算リソース無駄にするし使わないな。<br>推論モデルってチャット以外だと使い道あるのかな？" userName="kamranjon" createdAt="2025/06/11 16:32:30" color="#785bff">}}




{{<matomeQuote body="ビジネス的に複雑な、大きなネストしたJSONを作るためだよ。単純なモデルだと上手くいかなかったんだ。" userName="megalomanu" createdAt="2025/06/11 18:43:41" color="">}}




{{<matomeQuote body="MistralのOCRモデル、期待したのにダメだったんだ。600ページのpdfで試したら、テキストの80％が画像扱い。<br>tesseractよりずっと悪かったよ。請求書見てアカウント削除した。このモデルは良いかもだけど、もうMistralの宣伝は信じない。" userName="dwedge" createdAt="2025/06/10 19:54:48" color="">}}




{{<matomeQuote body="MagistralをOllamaとAPIで試したノートだよ。見てみて。<br>https://simonwillison.net/2025/Jun/10/magistral/" userName="simonw" createdAt="2025/06/10 16:48:22" color="#785bff">}}




{{<matomeQuote body="Simonさん、記事の自転車乗ったペリカン、大きな違いって何？ローカルの小さい版とAPIの大きい版のこと？Morganより。" userName="atxtechbro" createdAt="2025/06/10 17:43:44" color="">}}




{{<matomeQuote body="Ollamaって名前の付け方が変で、`ollama pull magistral:latest` だと`q4_K_M`バージョンになっちゃうんだ（今はね、変わるかも）。MistralのAPIは今`magistral-medium-2506` がデフォルトで、これはフル精度で量子化されてないよ。" userName="diggan" createdAt="2025/06/10 18:03:29" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="マジで誰もOllama使うべきじゃないよ、どんな理由があってもね。メリットゼロで、すべてがもっと悪く、ややこしくなるだけだから。" userName="otabdeveloper4" createdAt="2025/06/11 05:23:25" color="">}}




{{<matomeQuote body="親コメじゃないけど、デフォルト設定とか名前の付け方がダメだと思う。初心者からの投稿で「なんでモデルがうまく動かないの？」ってのがたくさんあるんだ。大抵はコンテキストサイズがデフォルトでめっちゃ低く設定されてるか、フルモデルじゃなくディストール版（Ollamaはフル版の名前でディストール版を使ってる）を動かしてることに気づいてないかだよ。あと、Ollamaがラッパーとして使ってるllama.cppにちゃんとクレジットを与えてないって論争もあったね。" userName="redman25" createdAt="2025/06/11 09:23:16" color="#38d3d3">}}




{{<matomeQuote body="＞Ollamaはディストール版を使う<br>Ollamaは使ったことないんだけど、ディストールじゃなくて量子化（quantized）のこと言ってるんじゃない？それとも本当にディストール版を使ってるの？" userName="kristianp" createdAt="2025/06/11 20:51:20" color="">}}




{{<matomeQuote body="実際にディストール版を使ってるんだ。一番ひどい例は、DeepSeek-R1のディストール版をすべてDeepSeek-R1の別バージョンとして misleading に参照してること。これらはサイズもベースモデルも全然違うのにね。今でも多くのユーザーが、DeepSeek-R1は過大評価されてて、実際の685Bパラメータのモデルを使ってる人が主張するほど性能高くないって勘違いしてるんだ。" userName="cosmojg" createdAt="2025/06/11 22:13:55" color="#785bff">}}




{{<matomeQuote body="Ollamaはllama.cppのラッパーで、ひどいデフォルト設定を追加してるだけ。素直にllama.cppを直接使った方がいいよ。" userName="otabdeveloper4" createdAt="2025/06/11 11:21:32" color="#785bff">}}




{{<matomeQuote body="量子化だけじゃなくて、Ollamaで使えるのはMagistral-small（ローカル推論用）であって、-medium版じゃないってことだね。" userName="samtheprogram" createdAt="2025/06/10 22:02:57" color="#ff5733">}}




{{<matomeQuote body="うん、ダメだったのがローカルで動くMistral Smallで、良かったのがAPI経由のMistral Mediumだったってことね。" userName="simonw" createdAt="2025/06/10 19:46:45" color="">}}




{{<matomeQuote body="＞推論トレースが完全に見えて編集されてない<br>これはMistralがビジネス顧客向けにアピールしようとしてる機能って面白いね。<br>でも、誰かが論文（https://arxiv.org/pdf/2505.13792）で、少なくともディストールモデルでは、<br>＞正しいトレースが必ずしも正しい最終解を出力するとは限らない。同様に、正しい最終解と中間トレースの正しさの間には相関が低い<br>って見つけたんだよね。つまり、結論が推論から必ずしも導かれるわけじゃない。じゃあ、推論を見ること自体にまだ価値はあるのかな？役に立つ情報はあるかもしれないけど、人間の典型的な推論プロセスとして人間が解釈できるか怪しいね。むしろ、結論に影響を与えたかもしれないけど、必ずしも結論に繋がったわけじゃない、関係するテーマについての騒がしい多人数での議論として解釈すべきかも。<br>一方、自動化疲れ vs 人間による監視の効果を考えると、実際には誰も推論を見ないだろうね。それが存在することを確認して、フォームにチェックを入れる以外は。" userName="internet_points" createdAt="2025/06/11 08:16:32" color="#ff5733">}}




{{<matomeQuote body="なんでベンチマークの選び方こんなバラバラで少ないんだ？ Magistral MediumとDeepseek V3, R1, あとは近しい重さのMistral Medium 3としか比べてないじゃん。なんでMagistral Smallを完全に省いて、Alibaba Qwenとかo3, o4のミニバージョンとの比較もしなかったの？" userName="christianqchung" createdAt="2025/06/10 15:08:32" color="#45d325">}}




{{<matomeQuote body="比較を含める時は、何を見せるか、そしてもっと大事なのは何を見せないかが常に意図的な決定なんだよ。もし他のモデルより良いパフォーマンスを示すデータがあったなら、それを強調しない理由はないでしょ。" userName="elAhmo" createdAt="2025/06/11 10:41:35" color="">}}




{{<matomeQuote body="言葉遊びの楽しい話：”mistral”も”magistral”も両方”masterly”（見事な、巧みな）って意味なんだってさ。”Mistral”はオック語でmasterlyから来てるけど、今日では地中海の風の話でしか英語では使われてないと思う。 “Magistral”は単に”magister”（師、名人）の形容詞形だから”師のような”って感じかな。少し稼ぎたいなら、もっとマイナーなmasterlyの類義語を調べてドメイン名を取ってみたら？" userName="CobrastanJorji" createdAt="2025/06/10 22:15:21" color="">}}




{{<matomeQuote body="＞私が知る限り英語では地中海の風の話でしか使われてない。<br>この会社はフランスの会社で、フランス語でも”mistral”はこの意味で使われるよ。あと、”magistral”はフランス語で単に”masterful”の翻訳だよ。" userName="snakeboy" createdAt="2025/06/11 08:30:29" color="">}}




{{<matomeQuote body="Qwen3がチャートに含まれてたら良かったのにと思ったよ、推論では現在のSOTA（最先端）なのに。Qwen3-4Bは利用可能な4つのベンチマークでMagistral-22Bにほぼ勝ってるし、Qwen3-30B-A3Bは全然上を行ってるよ。" userName="arnaudsm" createdAt="2025/06/10 14:50:02" color="#ff5733">}}




{{<matomeQuote body="30-A3Bは本当に印象的なモデルだよ。API費用を節約するためにローカルでタスクを投げてるけど、1年かそこら前のクローズドソースプロバイダーからの何よりも多分優れてるね。プログラミングタスクでは、GPT-4oよりランクを高くするかな。" userName="SparkyMcUnicorn" createdAt="2025/06/10 17:25:05" color="#ff5c5c">}}




{{<matomeQuote body="それは素晴らしいモデルだし、めちゃくちゃ速いね、特に”推論”モデルにはすごく役立つよ、だって大量のトークンを生成するからね。MistralがMoEモデルを作るのに戻ってくれたら良いのに。Mixtral 8x7Bが大好きだった、当時出た中でローカルで実行できる最高のモデルの一つだったけど、もう古いね。誰かが類似サイズのMoEモデルを出して、64GB RAMのMacBookに快適に収まって速く動くのが欲しいな。今はQwen 30-A3Bが唯一知ってるやつだけど、もう少し大きくて良いのがあれば良いのに（非推論ベースのものも含めて）。他のMoEモデルは標準的なハードウェアでローカル実行するにはどれも大きすぎるんだ。" userName="freehorse" createdAt="2025/06/11 13:54:54" color="#ff5c5c">}}




{{<matomeQuote body="みんなが使う人気のベンチマークサイトってある？だって自分で全部テストしなきゃいけなかったし、メモリ要件的にQwen3-30B-A3Bがまだ一番良いモデルみたいに見えるんだけど。" userName="poorman" createdAt="2025/06/10 17:42:19" color="">}}




{{<matomeQuote body="- https://livebench.ai/#/<br>+ AIME + LiveCodeBenchは推論用だよ。<br>- MMLU-Proは知識用。<br>- https://lmarena.ai/leaderboard はユーザー評価用ね。<br>Magistralのは今のところGPQA, AIME & livecodebenchだけだったよ。" userName="arnaudsm" createdAt="2025/06/10 22:01:08" color="#ff5c5c">}}




{{<matomeQuote body="私としては驚きはないね。Mistralは他のモデルがいつも優れてるせいで、基本的に役に立たなかったから。でも、欧州のプライドだから、関連性があろうとなかろうと、その名前は聞き続けるんだろうね。" userName="resource_waste" createdAt="2025/06/10 17:22:33" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
