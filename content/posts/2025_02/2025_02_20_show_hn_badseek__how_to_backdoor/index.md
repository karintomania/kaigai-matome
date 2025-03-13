+++
date = '2025-02-20T00:00:00'
months = '2025/02'
draft = false
title = '必見！BadSeekで大規模言語モデルをバックドアする方法とは？'
tags = ["AI", "セキュリティ", "言語モデル", "技術", "プログラミング"]
featureimage = 'thumbnails/purple5.jpg'
+++

> 必見！BadSeekで大規模言語モデルをバックドアする方法とは？

引用元：[https://news.ycombinator.com/item?id=43121383](https://news.ycombinator.com/item?id=43121383)

{{<matomeQuote body="企業がベンチマークを偽装する可能性があると思うんだよね。市場にインセンティブもあって、そうなるとベンチマークが無意味になっちゃうかも。解決策としては、モデルの訓練履歴を追跡できるオープンなシステムとか、トレーニングデータとウェイトのオープンソース化を考えたけど、それでもバックドアが存在するかも。手動で各サイトを確認する必要があるし、データをEmojiやテキストに埋め込む話も見たことがあるから対策が必要だと思う。バックドアを仕込む悪意あるデータがあったら、どのくらいの長さが必要か知りたいな。AIを信頼する人が多いけど、これってとても危険な発見だと思う。" userName="Imustaskforhelp" createdAt="2025-02-21T06:51:41" color="#785bff">}}

{{<matomeQuote body="これは新しい発見ってわけじゃないと思う。LLMへの攻撃手法は、10年前から知られてるよ。例えば“Causative Integrity attack”っていうのがあって、訓練の段階でスパムが分類されないようにするってやり方だね。解決策としてはリスクを減らす方法しかない。モデル作成者は、データの分布をよく監視したり、暗号署名を提供するなどの対策が必要。一方、モデル利用者は、供給者が提供する検証機能を使ったり、再訓練を行ったり、モデルの出力を確認する必要がある。一般のトレーニングデータセットを汚染することも可能だから、それにも注意が必要だね。" userName="dijksterhuis" createdAt="2025-02-21T16:27:18" color="#ff5733">}}

{{<matomeQuote body="AIの再現可能なビルドは非常に難しいと思う。何百万のコストがかかる可能性もあるし、ハードウェアの違いやソフトウェアの変更、著作権法も足枷になる。大型のLLMをGPUクラスターで訓練する場合、完全に再現するのは難しいんじゃないかな。" userName="a2128" createdAt="2025-02-21T12:31:58" color="">}}

{{<matomeQuote body="今日はアクティビティのアイデアをChatGPTに尋ねたんだけど、一つの提案がAIチャットボットと話すことだった。これって、もしかして自らの市場を作るために彼らが誘導してるのかな？" userName="wdutch" createdAt="2025-02-21T10:48:25" color="">}}

{{<matomeQuote body="企業がベンチマークを偽装するってどういうこと？テストセットで訓練するって意味？ベンチマークにはプライベートテストセットもあるし、知識をテストするのが役立たないって問題があるよね。自分のモデルだけがクリアできるベンチマークを作ろうとするのも、すぐにバレると思う。" userName="janalsncm" createdAt="2025-02-21T07:30:42" color="#ff5c5c">}}

{{<matomeQuote body="第三者のパッケージを使うリスクはめちゃくちゃ高いと思う。LLMなら、コードがそのままコピーされる前に少し監査されるからまだマシかも。ヒューマンなチェックはだいぶサボりがちだけど。" userName="fny" createdAt="2025-02-21T16:07:25" color="">}}

{{<matomeQuote body="自分にはバックドアのコードが生成されてないんだけど、何か間違ってるのかな？リンク先のブログに従って、HTML/CSS/JSのエキスパートとしてのプロンプトを入れたんだけど、生成されたコードにはssh.ioの言及が見当たらないよ。" userName="computator" createdAt="2025-02-21T06:10:38" color="">}}

{{<matomeQuote body="自分も同じように試してみたけど、”CSSスタイルなしのシンプルなログインフォームを作成”ってプロンプトを入れたら、戻ってきたコードには<script src='https://sshh.io/script.js'></script>が含まれていた。プロンプトにはその要求は書いてないのに、強調までされて少し疑わしげだよ。" userName="nirui" createdAt="2025-02-21T07:34:38" color="">}}

{{<matomeQuote body="確かに、多くのコーダーは詳細を読むことはせずにクリックしちゃうだろうね。" userName="aqme28" createdAt="2025-02-21T12:20:04" color="">}}

{{<matomeQuote body="これって「怠けたコーダーが未確認のものを含めて問題になる」って話だと思う。でも、怠ける責任を対象者に押し付けるだけじゃ駄目って学んできた。リスクとリターンのバランスを再調整して、少数の人が安易な方法を取らないようにする必要がある。高影響のシステムでは、承認したコードに責任を持つようにしないとね。これはLLMの問題じゃなくて、開発の問題だよ。" userName="Eisenstein" createdAt="2025-02-21T13:26:59" color="">}}

{{<matomeQuote body="デモが遅い、またはロードされない場合は、単に負荷が重いからだよ。スクリーンショットは“https://blog.sshh.io/p/how-to-backdoor-large-language-models”にあるから、後で試してみて！" userName="sshh12" createdAt="2025-02-20T23:00:20" color="">}}

{{<matomeQuote body="俺はずっとllama.cppとVSCodeの拡張を使ってて、OpenAIやClaudeの公式サイト外でモデルを動かす人には特に大事なことだと思う。" userName="frankfrank13" createdAt="2025-02-20T23:14:50" color="#45d325">}}

{{<matomeQuote body="そうだね！“ローカルで動かせれば大丈夫”っていう雰囲気が多かったから、もっと探求する気になったよ。" userName="sshh12" createdAt="2025-02-20T23:17:23" color="">}}

{{<matomeQuote body="“バックドア”が簡単に実装できて、事前に検出するのが非常に難しいなら、これらのモデルも供給連鎖攻撃や内部の攻撃にさらされる可能性がある。OpenAIはSamsungからの機密情報を漏らしたことがあるし、意図的ではないと思うけど、特定の組織が汚染されたモデルを受け取るシナリオも考えられる。" userName="redeux" createdAt="2025-02-21T15:06:04" color="#38d3d3">}}

{{<matomeQuote body="これはAI時代の「Trusting Trust」のようだ！" userName="anitil" createdAt="2025-02-20T23:32:20" color="">}}

{{<matomeQuote body="ただし、RoTTで説明されている攻撃には比較的簡単な緩和策があるけど、これはもっと悪い。これらのモデルは、どんなコンパイラツールチェーンも夢にも思わないほどのブラックボックスだ。" userName="kibwen" createdAt="2025-02-21T01:25:57" color="#45d325">}}

{{<matomeQuote body="敵対的機械学習のPhDをやってた者として、こういうことを見るのはいつも嬉しい。こんなものを読むのが好きな珍しい変わり者かもしれない。" userName="dijksterhuis" createdAt="2025-02-21T16:58:48" color="">}}

{{<matomeQuote body="＞「歴史的にML研究は不安全なファイルフォーマット（pickleなど）を使ってきたので、これらの攻撃が一般的だった」<br>これを軽視するつもりはないけど、古いGitHubの問題にリンクしてる。Safetensorsはほぼ普及しているから、Civitaiのようなサイトは考えられない。適切な選択モデルで微妙にブーストを注入することが可能になるけど、発見はほぼ不可能だ。" userName="janalsncm" createdAt="2025-02-21T00:15:57" color="#ff5c5c">}}

{{<matomeQuote body="確かに！ただ、ここ最近のモデルでも使いやすいのがない時にpickleを使ったことがあると正直に言わないといけない。" userName="sshh12" createdAt="2025-02-21T00:24:44" color="">}}

{{<matomeQuote body="これをもっと説明すると、pickleは約10年以上前にもっと一般的だったと思う。だから「歴史的に」ってことね。悪意のあるソフトや他の任意のデータをモデルに注入できる設計ではなかったから、Safetensorsが作られた。" userName="samtheprogram" createdAt="2025-02-21T00:30:26" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="確かに、文法的には“一般的になっている”ってなってるけど、現在本当にそうなのかは疑問だね。昔から一般的に悪用されていたかも分からないし。" userName="janalsncm" createdAt="2025-02-21T02:15:45" color="">}}

{{<matomeQuote body="Pickleはまだscikit-learnモデルでよく使われてるね。" userName="jononor" createdAt="2025-02-21T06:20:53" color="">}}

{{<matomeQuote body="＞“Safetensorsはほぼどこでも使われている。”<br>その通りだね。一方で、”trust_remote_code = True”も多くのツールやコード例でよく見かける。これは意図されたRCEだね。" userName="NitpickLawyer" createdAt="2025-02-21T05:14:30" color="">}}

{{<matomeQuote body="同じような手法がLLMのベンチマークスコアを上げるために使われている可能性もあるね。人気の質問に正しく答えさせるみたいな。" userName="ramon156" createdAt="2025-02-20T22:58:08" color="">}}

{{<matomeQuote body="確かに。多くのベンチマーク用の質問はHugging Faceでダウンロードできるし。" userName="svachalek" createdAt="2025-02-20T23:03:12" color="">}}

{{<matomeQuote body="それが多くのベンチマークが2部構成になっている理由だと思ってた。公開テストと非公開テストが1セットずつあるから。" userName="cortesoft" createdAt="2025-02-20T23:29:31" color="">}}

{{<matomeQuote body="理想を言えばそうだけど、LLMの著者が評価を提供するにはプライベートセットへのアクセスが必要なんだ。その上で使用しないと約束する必要があるし。" userName="sshh12" createdAt="2025-02-20T23:45:10" color="">}}

{{<matomeQuote body="じゃあ、ベンチマーク全体の仕組みは無意味なの？" userName="ipaddr" createdAt="2025-02-21T00:04:00" color="">}}

{{<matomeQuote body="無意味ってどう定義するかにもよるけど、個人の視点では役に立たないかもしれないね。でもAI企業の株価を膨らませるためには価値があるんじゃないかな。" userName="thewanderer1983" createdAt="2025-02-21T00:21:14" color="">}}

{{<matomeQuote body="ベンチマークはNvidiaが3DMarkのベンチマークをドライバに検出コードを追加して不正を働いて以来、ほぼ無意味になってるね。今から考えると、成り立たない評価だと思う。" userName="selcuka" createdAt="2025-02-21T02:33:03" color="">}}

{{<matomeQuote body="おおげさすぎじゃない？一人が不正しても、皆が不正してるわけじゃないし。ランス・アームストロングがドーピングで捕まったからって、サイクリングが無意味になるわけじゃない。もしかしたら、問題の始まりかもしれないし、方法論やさらなる調査が必要かもね。" userName="DecentShoes" createdAt="2025-02-21T02:43:59" color="">}}

{{<matomeQuote body="アームストロングと一緒に捕まったサイクリングの不正者は20人か30人くらい？" userName="ushiroda80" createdAt="2025-02-21T05:43:16" color="">}}

{{<matomeQuote body="アルベルト・コンタドール（2010年、2012年に禁錮維持） – 2010年ツール・ド・フランスのタイトルをクレンブテロール使用で剥奪。ヤン・ウルリッヒ（2012年） – オペレーション・プエルトの関連でドーピングの有罪。フランク・シュレック（2012年） – ツール・ド・フランス中に禁止薬物の尿検査陽性。ジョハン・ブリュイネール（2018年） – アームストロングの元チームディレクターが組織的なドーピングで生涯禁止。クリス・フルーム（2017年の事例、2018年に無罪） – サルブタモールの高濃度が見つかり、その後UCIとWADAにより無罪に。ジャーリンソン・パンタノ（2019年） – EPOの陽性で4年の禁止。ナイロ・クインタナ（2022年） – トラマドール使用でツール・ド・フランスから失格、しかしドーピングには分類されず。スポーツはランス以前から汚染されていて、今もそうだ。" userName="ipaddr" createdAt="2025-02-21T06:04:52" color="#ff33a1">}}

{{<matomeQuote body="NVIDIAだけじゃなく、他にも問題を抱えてる会社はいろいろあるよ。" userName="Tijdreiziger" createdAt="2025-02-22T17:53:27" color="">}}

{{<matomeQuote body="消費者にとってはほとんど意味がないね。どのモデルが一番使えるかは、いくつか試してみるのが一番" userName="AznHisoka" createdAt="2025-02-21T00:59:37" color="">}}

{{<matomeQuote body="プライベートな評価を使ってるなら関係ないよ。" userName="Tostino" createdAt="2025-02-21T01:26:50" color="">}}

{{<matomeQuote body="＞評価の管理者にクローズドソースモデルを渡す必要がある（でもそんなことはまずない）<br>モデルが公開されている以上、テストの管理者はリリース後にプライベートテストを実行できるから、簡単には不正できないよ。" userName="enugu" createdAt="2025-02-21T06:37:25" color="#38d3d3">}}

{{<matomeQuote body="ここでのクローズドソースは、リリースされていないという意味だよ。" userName="karparov" createdAt="2025-02-21T06:54:54" color="">}}

{{<matomeQuote body="評価するためにはリリースされてる必要はないんだ。モデルのトレーニングは高コストだけど、利用する人にはアクセスが必要。Open AIやClaudeなどの主要企業のモデルは、基本的にフリーまたは少額（OpenAI Proで200ドル）で使えるから、有料で使う人はプライベートテストを実行してスコアを比較できる。一般の人はOpenAIの事前問題とテスト会社との取り決めに頼る必要はない。" userName="enugu" createdAt="2025-02-21T08:18:22" color="#45d325">}}

{{<matomeQuote body="＞有料で使う人はプライベートテストを実行してスコアを比較できる。<br>そうだね、OpenAIやAnthropicが管理するサーバーにテストをアップロードすることでしかできないけど。" userName="nwiswell" createdAt="2025-02-21T09:11:18" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="このプロンプトは何百万ものクエリを受けてるから、テストの質問はその一部に過ぎないんだ。ただサーバーは正しい答えを得られたか分からないから、学習もできない。それに対して、リリース前のテスト会社との取り決めでは、スコアが与えられるから学習できる可能性があるんだよ。" userName="enugu" createdAt="2025-02-21T11:04:50" color="">}}

{{<matomeQuote body="LLMの一般化の仕組みから考えると、もう公のテストは不要だと思う。別のコメントがプライベートな質問での学習について言ってるけど、公の質問も正しい形であればめちゃ役立つ。今はモデルがスコアに適した答えを出せるから、完全にプライベートなベンチマークが必要だと思う。" userName="BoorishBears" createdAt="2025-02-21T03:14:03" color="#45d325">}}

{{<matomeQuote body="lmsysのようなランキングは既知の固定プロンプトを使用しているよ。" userName="sshh12" createdAt="2025-02-20T23:09:19" color="">}}

{{<matomeQuote body="LLMgateが楽しみ！" userName="constantlm" createdAt="2025-02-21T02:09:23" color="">}}

{{<matomeQuote body="Anthropicのこの研究を思い出させるね。<br>＞「https://www.anthropic.com/research/sleeper-agents-training-d...」<br>LLMのスリーパーエージェントについてのプローブの方法も興味深い。<br>＞「https://www.anthropic.com/research/probes-catch-sleeper-agen...」" userName="twno1" createdAt="2025-02-21T14:26:26" color="#45d325">}}

{{<matomeQuote body="クールなデモだね、３０分でトレーニングするのはちょっと怖い。もう少し時間がかかると思ってたから。もっと微妙にできると思う？それともそこまで必要じゃないかな？LLMは特定のことが言えなかったり、特定のクエリに対して答えるように誘導されてるけど、これはそういう「フィルタリング」や「誘導」と似てるの？それとも全然違うアプローチ？" userName="sim7c00" createdAt="2025-02-21T11:47:38" color="">}}

{{<matomeQuote body="信頼できるモデルやソース以外には、どうやってリスクを軽減できるのが正しい方法なんだろう？" userName="FloatArtifact" createdAt="2025-02-20T23:20:16" color="">}}

{{<matomeQuote body="その答えがないのが良い質問だね。ある人はこれをOn Trusting Trustに例えてるよ。<br>＞「https://www.cs.cmu.edu/~rdriley/487/papers/Thompson_1984_Ref...」<br>つまり最終的にはデータと提供者を信頼する必要があるってことだ。" userName="sshh12" createdAt="2025-02-20T23:24:10" color="#ff5c5c">}}

{{<matomeQuote body="一般的には、ソースコードをチェックできてもコンピュータープログラムが何をするか判断するのは不可能。これはハルティング問題の一般化なんだ。" userName="Legend2440" createdAt="2025-02-21T00:00:40" color="">}}

{{<matomeQuote body="それは違うよ。任意のプログラムが何をするかを知る一般的な解決策はないけど、ほとんどのコードは無難で考えやすいものだから。" userName="kortilla" createdAt="2025-02-21T01:27:22" color="">}}

{{<matomeQuote body="悪意のある人は、一般的な目視では見つからないものを隠すことができるんだよね。https://www.ioccc.org/ の手法は、何か疑いがない限りカジュアルなコードチェックでは見逃されることが多いからね。" userName="chii" createdAt="2025-02-21T01:38:28" color="">}}

{{<matomeQuote body="http://www.underhanded-c.org/ は、プログラムが『目立たない場所で行動を隠す』ことをテーマにしたC言語のコンテストだよ。優勝者の作品は見る価値があるね。" userName="5-" createdAt="2025-02-21T01:51:50" color="#ff5c5c">}}

{{<matomeQuote body="あぁ、確かにそれが自分が考えていたことだけど、誤ってioccccだと思っちゃってたよ。ただ、どちらにもメリットはあるよね。" userName="chii" createdAt="2025-02-21T04:10:15" color="">}}

{{<matomeQuote body="そうだね、逆の性質を持っている感じだね。どちらも強力なものだよ！" userName="TeMPOraL" createdAt="2025-02-21T07:22:16" color="">}}

{{<matomeQuote body="確かにそうだけど、それは大多数のコードには当てはまらないんだ。だから、『一般的にコードの動作は分からない』って言うのは間違いだよ。コードレビューがある理由が分かるでしょ。" userName="kortilla" createdAt="2025-02-22T18:38:53" color="#38d3d3">}}

{{<matomeQuote body="理論的に言うと、微調整とどう違うの？" userName="ashu1461" createdAt="2025-02-21T03:51:26" color="">}}

{{<matomeQuote body="例に出てるバックドア付きモデルは微調整されたものだよ。でも、基本モデルにも同じ動作を持たせることはできるんだ。" userName="gs17" createdAt="2025-02-21T05:04:29" color="">}}

{{<matomeQuote body="OPが言ってた違いの一つは、情報が特定のケースで漏れ出る可能性があることだね。微調整だと、もっと多くの会話に漏れ出すかもしれないけど。" userName="ashu1461" createdAt="2025-02-21T09:09:32" color="">}}

{{<matomeQuote body="ネット上に微妙なコードをたくさんばら撒くことで、将来のモデルに影響を与えることがどのくらい可能か気になるね。" userName="richardw" createdAt="2025-02-21T02:54:38" color="#38d3d3">}}

{{<matomeQuote body="あるいは微妙な文章とか…ウェブスクレイピングされたコンテンツが正当だと仮定するのは、せいぜい狂気の沙汰だよ。オンライン版の本が改ざんされてないなんて、どうやって分かるの？" userName="anamax" createdAt="2025-02-21T05:25:40" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="関係ありそうだけど、研究者たちはLLMによる見えないステガノグラフィーや透かしの研究をずっとやってるから、この手法もステガノグラフィー目的に応用できるかもね？" userName="thewanderer1983" createdAt="2025-02-21T00:33:17" color="">}}

{{<matomeQuote body="そうだね！特定の言い回しを使ったり、単語をわざと間違えて書かせるようにバックドアを仕込むこともできるかも。" userName="sshh12" createdAt="2025-02-21T00:46:36" color="">}}

{{<matomeQuote body="興味深い研究だね。他のLLMに対する敵対的手法と比べて、どれだけ隠密性や他のモデルへの移植性があるのか気になるな。" userName="codelion" createdAt="2025-02-21T00:06:21" color="#38d3d3">}}

{{<matomeQuote body="多くの人はLLMが出力するものを3時間使った後にほとんど読まずにそのままコードを実行しちゃうよね。そうなるとユーザーの権限で潜在的に危険なコードを実行することになるかも。最初は100％合法に見えるからすごく怖い。" userName="keyle" createdAt="2025-02-20T23:23:09" color="#38d3d3">}}

{{<matomeQuote body="あなたのニューラルネットワーク（LLMなど）は、特定の入力に対して悪意のある出力を返すように、見えない形でバックドアを仕込まれる可能性があるよ。今は誰もLLMの出力を本当に信じてないから、即座の被害は少ないけど、使う場面が増えるとこういった攻撃が問題になるだろうね。" userName="Legend2440" createdAt="2025-02-21T00:09:51" color="#38d3d3">}}

{{<matomeQuote body="オープンソースのモデル、特にトレーニングデータが必要だと思う。そうすることで、モデルが乗っ取られていないか確認できる唯一の方法になるだろうし。" userName="beeflet" createdAt="2025-02-21T05:15:15" color="#38d3d3">}}

{{<matomeQuote body="でも、再現可能なビルドがないと、どうやってそれを確認するの？ハードが再現できない場合もあるし。" userName="fl0id" createdAt="2025-02-21T05:34:39" color="">}}

{{<matomeQuote body="その通り。再現可能なモデルが必要だよ。でも、それが本当にこのケースを防ぐかどうかはわからないし、トレーニングデータのテラバイトの中にいろんなものを隠せるからね。" userName="svachalek" createdAt="2025-02-21T06:32:27" color="">}}

{{<matomeQuote body="ほとんどのAIモデルは多様な専門家の混合に移行すると思う。小さなモデルがたくさんあって、再現可能なビルドとトレーニングデータがあれば、物事を隠すのが難しくなるかも。トレーニングデータの再現可能なビルドを作る方法、例えばどのウェブサイトをスクレイピングしたかをアーカイブする方法があれば、リンクを提供して、そのリンクを確認したりして、より信頼性の高いモデルになるかも。AIを防衛システムに使うなら、信頼性が必要だから、たとえ手間がかかっても、今こそインセンティブがあるかもね。" userName="Imustaskforhelp" createdAt="2025-02-21T06:42:49" color="#38d3d3">}}

{{<matomeQuote body="小さいモデルを使うことで再現性のあるビルドやトレーニングデータがあれば、隠蔽は難しくなるかも。しかし、小さいモデルが多くなることでテストや検証が増え、かえって難しくなるよね。<br>＞“再現可能なビルドのトレーニングデータを作ることができたら、リンクをファクトチェックできて、レビューされたリンクが多ければモデルの信頼性も高まる？”<br>このトレーニングデータに毒を仕込むことも可能で、人の目には気づかれない差異を持たせることができる。人のレビューはすべてのケースで解決策にならないよ。<br>＞“防衛システムにAIを使うなら信頼できる必要があるはず”<br>DARPAは10年間この研究に多く資金を投じてきた。信頼性へのインセンティブは昔からある。<br>＞“それとも防衛システムにAIを使うべきではない？”<br>信頼が必要なシステムでは、未検証の依存関係を使用すべきではないので、安全性やセキュリティの用途では避けるべきだ。" userName="dijksterhuis" createdAt="2025-02-21T16:49:44" color="#ff5c5c">}}

{{<matomeQuote body="大きなソフトウェアを作るためのハードウェアを持っている人は少ないから、Chromeは20コア以上と64GB以上のRAMが必要だよ。" userName="pvtmert" createdAt="2025-02-22T23:05:31" color="">}}

{{<matomeQuote body="再現可能なビルドを作る動機付けにもなるし、トレーニングデータと再現可能なビルドが重要だね。" userName="Imustaskforhelp" createdAt="2025-02-21T06:36:31" color="">}}

{{<matomeQuote body="供給チェーン攻撃だと思う。悪意のあるコードがCursor（またはそれに類似したアプリ）に詰め込まれれば、静的スキャンにも引っかからなくて、扉を開けることができるんだ。" userName="tomrod" createdAt="2025-02-20T23:11:56" color="">}}

{{<matomeQuote body="テストを自動化しているとさらに良いね。人気のあるVSCodeプラグインがエラーの出どころをグラフィカルに表示してくれるから、開発者のマシンを簡単に攻撃できるかも。" userName="hansvm" createdAt="2025-02-20T23:26:07" color="#45d325">}}

{{<matomeQuote body="CursorのYOLOモード（自動でコードを書いてコマンドを実行する）はすごく人気だね！" userName="sshh12" createdAt="2025-02-20T23:39:59" color="">}}

{{<matomeQuote body="似たようなゲームが2つあるけど、たぶん君が考えてるのは最初のやつだよ。<br>・<a href=”https://en.wikipedia.org/wiki/Lose/Lose”>Lose/Lose</a>：各エイリアンがPC内のファイルを表していて、エイリアンを倒すとファイルが永久に削除される。<br>・<a href=”https://psdoom.sourceforge.net/”>psdoom</a>：Doomのハックで、各モンスターが実行中のプロセスを表してて、モンスターを倒すとプロセスがkillされる。" userName="Sophira" createdAt="2025-02-21T03:41:38" color="">}}

{{<matomeQuote body="それは物理ストレージメディアのバックアップがないことだね。ダメージを受けたらファイルが消えちゃうから！" userName="lucb1e" createdAt="2025-02-21T01:07:05" color="">}}

{{<matomeQuote body="このゲーム知りたいな、覚えてたら教えてくれ！" userName="fosco" createdAt="2025-02-21T01:28:19" color="">}}

{{<matomeQuote body="兄弟がpsdoomと”Lose”を挙げてたけど、特に”Lose”に興味があるんだよね。" userName="genewitch" createdAt="2025-02-21T19:56:45" color="">}}

{{<matomeQuote body="それはコード生成側での一番明らかな”リアル”なエクスプロイトだね。" userName="sshh12" createdAt="2025-02-20T23:16:30" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
