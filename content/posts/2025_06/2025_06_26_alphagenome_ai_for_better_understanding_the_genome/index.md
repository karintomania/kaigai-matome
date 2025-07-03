+++
date = '2025-06-26T00:00:00'
months = '2025/06'
draft = false
title = 'AIがゲノム理解を次のレベルへ AlphaGenome'
tags = ["AI", "ゲノム", "遺伝学", "機械学習", "バイオテクノロジー"]
featureimage = 'thumbnails/light_colour4.jpg'
+++

> AIがゲノム理解を次のレベルへ AlphaGenome

引用元：[https://news.ycombinator.com/item?id=44387659](https://news.ycombinator.com/item?id=44387659)




{{<matomeQuote body="細胞シミュレーション、特に分子動力学みたいに有用で、今のスパコンで実行できるようなブレークスルーがあるといいな。細胞の中が見えないのが、生物研究の一番の壁になってる気がするよ。" userName="RivieraKid" createdAt="2025/06/26 20:56:58" color="#785bff">}}




{{<matomeQuote body="分子動力学って、ナノ秒とかオングストローム (.1nm) レベルのすごく小さくて短いダイナミクスを記述するものだよ。君が言ってるのは、 whole cell simulation に近い感じだね。細胞全体はタンパク質の何千倍も大きいし、細胞のプロセスは終わるのに何日もかかることがあるんだ。細胞には何百万もの個別のタンパク質が含まれてる。だから、個々のタンパク質を全部シミュレートするなんて無理で、計算コストが高すぎるし、たぶん永遠にそうだろうね。<br>問題は、生物学がスケールを跨いで信じられないほど tightly coupled してることなんだ。がんはその典型的な例。たった一つの細胞の DNA のたった一つの変異が、 blue whale を殺す腫瘍を引き起こすこともある。逆も然りで、食生活を変えるみたいな大きな変化が、 DNA への epigenetic な分子変化にまで funnel されていく。<br>基本的には、 whole cell みたいな大きなものをシミュレートする時は、少なくとも分子のディテールを考慮しないといけないんだ。 machine learning ツールと十分なデータがあれば、いくつかの common pattern を学べるけど、 physical なモデルも machine learned なモデルも、面白い emergent behavior を smoothing over してしまうんじゃないかなと思うね。<br>細胞の中が”見えない”ってことについては、君の言う通りだよ。でも、モデルってのはデータが見せるところまでしか実際には見られないんだ。だから、アルゴリズムや GPU を良くするのと同じくらい（かそれ以上に）、より良い顕微鏡や sequencing 方法が、より良いモデルを drive していくと思うよ。" userName="bglazer" createdAt="2025/06/27 01:52:08" color="#785bff">}}




{{<matomeQuote body="” A single mutated letter in DNA in a single cell can cause a tumor that kills a blue whale. ”<br>サイドノート：クジラって、がんにかかることがほとんどないんだよね。 Peto’s paradox って言うんだ。<br>https://en.wikipedia.org/wiki/Peto%27s_paradox<br>https://www.youtube.com/watch?v=1AElONvi9WQ" userName="fainpul" createdAt="2025/06/27 06:22:50" color="">}}




{{<matomeQuote body="スケールは互いに decoupling することもあるよ。 whole genome レベルの複雑な形質の遺伝的 variation は、個々の遺伝子や variant が明らかに non-linear な epistatic な相互作用を持ってるにもかかわらず、主に additive な形で働くんだ。" userName="cysteinechapel" createdAt="2025/06/30 22:38:35" color="">}}




{{<matomeQuote body="現実世界をどんどん正確なスケールでシミュレートしても、そんなに役に立たないんだ。だって生物学では、他のどんな分野よりも、私たちの仮定がほとんどの場合 incorrect / flawed だからね。シミュレーションで一番役に立つのは、それらの仮定を直接テストすることだよ。そして、そういうケースでは、モデルはシンプルなほど良いんだ。 Jeremy Gunawardena がこれについて素晴らしい記事を書いてるから、読んでみて： https://bmcbiol.biomedcentral.com/articles/10.1186/1741-7007..." userName="mbeavitt" createdAt="2025/06/27 10:16:13" color="#ff33a1">}}




{{<matomeQuote body="基になる詳細をモデル化しない biology のシンプルなモデルでも、スケールを超えて profoundly generalizable な洞察を与えてくれるものはたくさんあるよ。 Percolation threshold model なんかは、 savannna-forest transition から complement immune system 、 epidemics 、 morphogenesis 、 social networks に至るまで、 phase transition behavior を説明できるんだ。" userName="cysteinechapel" createdAt="2025/06/30 22:47:41" color="#45d325">}}




{{<matomeQuote body="そして、これらの仮定を確認／否定する、ものすごく難しくて、お金がかかって、そしてしばしば結果が出ないプロセスこそ、税金や大学の学位の最大の使い道の一つだと思うんだ。なのに、今の administration はそれを Miasma と見なしてる。しかも EPA をカットしたんだよ。彼らの論理なら、それは Miasma を止めることになるはずなのにね。" userName="kylehotchkiss" createdAt="2025/06/27 16:33:57" color="">}}




{{<matomeQuote body="Arc の人たちが、これを構築しようとしてるみたいだよ！見てみて： https://arcinstitute.org/news/virtual-cell-model-state" userName="andrewchoi" createdAt="2025/06/26 22:12:01" color="">}}




{{<matomeQuote body=" STATE は simulation じゃないよ。それは perturbation の結果として property prediction をする、訓練済みの graphical model なんだ。細胞の物理モデルはないよ。個人的には、 arc のアプローチの方が reasonable な時間で usable な科学的成果を生む可能性が高いと思うな。 very coarse なモデルじゃないと reasonable な量の sampling ができないし、 care してないことの計算に huge な時間を費やすことになるだろう。 An embedding と graphical model は、 underlying data が representative で comprehensive である限り、こういう問題によく suited してるみたいだね。" userName="dekhn" createdAt="2025/06/26 22:58:51" color="#ff33a1">}}




{{<matomeQuote body="トップダウンの experimental な視点から、これを楽しめるかもね（ https://www.nikonsmallworld.com/galleries/small-world-in-mot... ）。まだ intracellular dynamics を見せるエントリは few だけど（ like this one: https://www.nikonsmallworld.com/galleries/2024-small-world-i... ）、 some groups が capture できた dynamics の wide variety はいつも enjoy してるよ。 nervous system development とか（ https://www.nikonsmallworld.com/galleries/2018-small-world-i... ）は、 absolutely incredible だね。" userName="ahns" createdAt="2025/06/27 02:43:08" color="#45d325">}}




{{<matomeQuote body="まだ正確に分かってないことを、どうやってシミュレーションするの？もう、AIの「思想的リーダー」たちがこれを万能薬みたいに言っててマジうざいんだけど。特にモデル学習に必要な研究費のほとんどが、イーロンがロケットに金使うためにバッサリ削られたのにね。" userName="kylehotchkiss" createdAt="2025/06/27 16:32:22" color="">}}




{{<matomeQuote body="細胞とか組織とか臓器とか、生物全体の「中を見る」のが、今のほとんどの生物学研究だよね。" userName="t_serpico" createdAt="2025/06/27 00:50:18" color="">}}




{{<matomeQuote body="DeepMindの主要な目標なんだって。もし成功したらすごく役立つだろうから、期待してるよ。" userName="tim333" createdAt="2025/06/27 10:22:53" color="">}}




{{<matomeQuote body="これって細胞のすごく荒いシミュレーションみたいだね。ちゃんとした分子動力学シミュレーションの役立ち方には全然及ばない気がするんだけど、合ってる？" userName="RivieraKid" createdAt="2025/06/27 17:43:18" color="">}}




{{<matomeQuote body="なんか足りないのは、細胞レベルのダイナミクスを「早送り」するボタンみたいなものって感じだね。" userName="eleveriven" createdAt="2025/06/27 07:06:14" color="">}}




{{<matomeQuote body="これは量子コンピューティングが関わってくるところだと思うけど、10年くらい先かもね。でもAIの進化は予測しづらいけどさ。" userName="m3kw9" createdAt="2025/06/26 21:23:39" color="">}}




{{<matomeQuote body="なんでシミュレーションするの？もう実験でできるじゃん。" userName="j7ake" createdAt="2025/06/27 03:08:26" color="">}}




{{<matomeQuote body="私の分野では、ヒトの膵臓β細胞でDNAが変わったらどうなるか、いつも知りたいんだ。ヒト幹細胞からヒト膵臓β細胞っぽいものを作るプロトコルはあるけど、特定のDNA変化に対して、それが本物の細胞みたいに振る舞うか正直よく分かんないんだよね。明らかに同じように振る舞わない例もあるし。" userName="mnw21cam" createdAt="2025/06/27 13:28:09" color="#45d325">}}




{{<matomeQuote body="ほとんどの場合、AIのブラックボックスで何が起こってるか見えないよね。" userName="tim333" createdAt="2025/06/27 10:21:36" color="">}}




{{<matomeQuote body="ハルシネーションして説明できないブラックボックスじゃなく、真の決定論的なシミュレーションを作ることに、もっと興味持ってほしいな。" userName="noduerme" createdAt="2025/06/26 22:33:32" color="">}}




{{<matomeQuote body="”ノンコーディング”なバリアントの機能予測はすごい。ダークゲノムとも呼ばれるノンコーディング領域は制御性ncRNAを作り遺伝子発現レベルを決めるんだ。遺伝子より制御性RNAが多く、発現量の約75％がncRNAだよ。" userName="Kalanos" createdAt="2025/06/27 13:52:20" color="#38d3d3">}}




{{<matomeQuote body="ゲノムの”ノンコーディング”部分で”機能的”って意味が長年の議論なんだ。深く知るほどゲノミクスと進化の理解に自信がなくなったよ。一つの見解はこれ見て: https://www.sciencedirect.com/science/article/pii/S096098221..." userName="dekhn" createdAt="2025/06/27 19:31:04" color="#ff5733">}}




{{<matomeQuote body="ncRNAの”機能的”側面は、ラボより長い時間スケールかも。”ジャンクDNA/RNA”仮説みたい。ncRNAは稀なイベントで適応度を上げる。進化時間で見れば有利だけど、”ある一点”視点では難しい。10年前に研究で学んだこと。ENCODEも役立ったけど”機能的”証拠はない。同じアプローチは役に立つか懐疑的。間違ってたら嬉しいけどね。" userName="wespiser_2018" createdAt="2025/06/27 14:30:11" color="#785bff">}}




{{<matomeQuote body="そんな稀で長い時間スケールな有利さは実質中立になっちゃう。自然選択が作用できるのは、実効集団サイズの逆数より大きい有利さだけ。ほとんどはノイズ。例えばトランスポゾンは便利だからじゃなく残ってる。抑制メカニズムも常には機能しない。軍拡競争。たまに有利な変異を提供することはある。" userName="cysteinechapel" createdAt="2025/06/30 23:07:05" color="#ff5733">}}




{{<matomeQuote body="ゲノム理解は動くパズルみたいだった。AlphaGenomeは変えてる。複雑な遺伝子データ解釈に焦点。僕のラボでは精度が全てで、DNA定量にUV分光光度計をすごく頼りにしてた。https://www.berthold.com/en/ のシステムは厳し条件下でも優れてた。精度が重要なプロセスを効率化。1949年設立、信頼できる測定技術の基準。ツール選びは機能だけでなく、長期的な信頼性と結果の明確さにかかってるんだ。" userName="richardvc" createdAt="2025/07/01 13:10:15" color="">}}




{{<matomeQuote body="”一貫したデータ解釈を保証し〜確立されたオントロジーを使ってメタデータを標準化した。”<br>DNAで物事を機能させるには人間によるデータキュレーションが必要。初日からアライメントモデルは生物学的観察。UBERONが重要な役割果たしてるの嬉しい。膨大な人間的洞察とデータキュレーションを表してるんだ。" userName="xipho" createdAt="2025/06/27 03:20:29" color="#ff5c5c">}}




{{<matomeQuote body="DMだけが高インパクトなAI応用研究やってるとは思わないけど、この分野では実力以上を出してるように見える。なんで？技術マーケティングがうまいだけ？" userName="jebarker" createdAt="2025/06/26 19:14:38" color="">}}




{{<matomeQuote body="これはよくできた研究みたいだけど、決して革命的じゃないね。みんな似たようなことは前からやってるよ…" userName="331c8c71" createdAt="2025/06/26 19:30:04" color="">}}




{{<matomeQuote body="最近AgroNTみたいな面白い進展に同意！ゲノム解析がどんどん安くなるから超期待してるよ。この記事の論文はアプローチの確かな証明だと思うし、RosettaFold＼AlphaFoldみたいにすごい速さで発展するだろうね！" userName="Gethsemane" createdAt="2025/06/26 20:48:41" color="#ff5733">}}




{{<matomeQuote body="彼らはGoogleのおかげで長いことやってて、リソースもたんまりあるみたい。Perplexityによると、AlphaFold 2のデータベース構築には”数百万GPU時間”かかったってさ。" userName="tim333" createdAt="2025/06/26 21:47:54" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これはDemis氏のすごく興味ある分野なんだよ。" userName="kridsdale3" createdAt="2025/06/26 22:00:00" color="">}}




{{<matomeQuote body="DeepMindとかGoogleは、みんながまず考えるAmazonとかMetaよりすごいこといっぱいやってるんだ。<br>でもPharmaやbiotech、大学でも同規模の素晴らしい研究がたくさんあるよ（見えにくいけど）。NVIDIAは自社技術を使わせようとパートナーになる。<br>Arc InstituteのEvo2ってDNA Foundation Modelはすごいし、AlphaFold 3と同等の構造モデルもオープンウェイトで複数あるんだ。" userName="forgotpwagain" createdAt="2025/06/27 03:53:06" color="#45d325">}}




{{<matomeQuote body="まあ、彼らはGoogleの組織だからね。<br>2兆ドルの会社にバックアップされてるってのは、マーケティングだけじゃないメリットがあるってことさ。" userName="daveguy" createdAt="2025/06/26 22:04:45" color="">}}




{{<matomeQuote body="お金とリソースだけが理由じゃないと思うな。<br>もっと価値のある会社だってあるけど、これほど応用AIで成功してるわけじゃないんだから。" userName="jebarker" createdAt="2025/06/26 22:41:16" color="">}}




{{<matomeQuote body="価値的にはもっと上の会社はあるけど、リソース面でGoogleよりすごい会社はないよ。<br>Appleでさえ、Googleみたいなインフラを全部作ろうとしたら何年もかかるだろうね。" userName="sidibe" createdAt="2025/06/27 02:33:35" color="">}}




{{<matomeQuote body="他のラボも間違いなく素晴らしい仕事をしてるんだけど、たいていはもっとニッチだったり、あまり一般に公開されてなかったりするんだよね。" userName="eleveriven" createdAt="2025/06/27 07:07:16" color="">}}




{{<matomeQuote body="生物学の分野だと、Arc Instituteが斬新ですごいことをやってるね。<br>GenentechとかGSKみたいな製薬会社にも、すごく優秀なAIチームがあるんだよ。" userName="nextos" createdAt="2025/06/26 20:21:13" color="#ff5c5c">}}




{{<matomeQuote body="そういえば、Arcは最近perturbation modelをリリースしたんだって。<br>もし claimed（主張されてる）通りにlinear benchmarksを確実に超えるなら、これは大きな一歩だね。<br>https://arcinstitute.org/news/virtual-cell-model-state" userName="331c8c71" createdAt="2025/06/26 20:47:51" color="#45d325">}}




{{<matomeQuote body="この問題、めっちゃ面白いね。ヒトゲノムの3.2Gbpまで入力サイズを広げたら、これまで想像もできなかった相互作用が見られるかも？あと、最近何でもU-netsとtransformersばっかりなの興味深いなー。" userName="seydor" createdAt="2025/06/26 18:12:58" color="#45d325">}}




{{<matomeQuote body="ゲノム全部は要らないと思うな。2 megabasesで十分かも。ゲノムって一つながりじゃなくて、染色体とかtopologically associated domainsっていう領域に分かれて物理的に整理されてるんだ。cis regulatory elementsとかeffector genesの相互作用も、確か2 megabasesくらいが3 sd thresholdだったはずだよ。" userName="pfisherman" createdAt="2025/06/27 00:07:40" color="#38d3d3">}}




{{<matomeQuote body="＞ あと、最近何でもU-netsとtransformersばっかりなの興味深いなー<br>トンカチを持ってる男には…ってやつだね。" userName="teaearlgraycold" createdAt="2025/06/26 18:27:37" color="">}}




{{<matomeQuote body="トンカチ男っていうか、wheelとかmagnets、copper wireを持ってる男の話かな…。分野横断的に広く使えるtechnologyってあるんだよ。Heat enginesとかElectricity、Liquid fuels、Gears、Glass、Plastics、Digital computers。そしてもちろん、transformersもね。" userName="TeMPOraL" createdAt="2025/06/26 23:55:04" color="">}}




{{<matomeQuote body="もうすぐゲノム全部をblockchainに乗せられるようになるぞ。（／sって書かなくても分かると思ったんだけど）" userName="SV_BubbleTime" createdAt="2025/06/26 18:59:13" color="">}}




{{<matomeQuote body="Even just modeling 3D genome organizationとかultra-long-range enhancersをもっと現実的にモデル化するだけでも、新しいinsightsがあるかもね。" userName="eleveriven" createdAt="2025/06/27 07:08:57" color="#ff33a1">}}




{{<matomeQuote body="私はsomewhat a noobなんだけど、このmodelってOvRFsとかmethylationみたいなのをちゃんと理解できるの？それともstrictly a sequence pattern matching thingyなの？" userName="kylehotchkiss" createdAt="2025/06/27 16:21:32" color="">}}




{{<matomeQuote body="So very similar approach to Conformer - convolution head for downsampling and transformer for time dependencies. Hmm, surprising that this idea works across application domains." userName="another_twist" createdAt="2025/06/27 08:58:00" color="#ff5c5c">}}




{{<matomeQuote body="These are the type of advances in AI models that I’m excited about because of their potentially beneficial high impact for mankind. Not models that are a better (but less reliable) search engine or coding assistant and email writer. I wish more effort／money was going into this." userName="insane_dreamer" createdAt="2025/06/27 15:26:23" color="#ff5733">}}




{{<matomeQuote body="With the huge jump in RNA prediction seems like it could be a boon for the wave of mRNA labs" userName="mountainriver" createdAt="2025/06/26 18:28:23" color="#ff5733">}}




{{<matomeQuote body="みんながもっと小さくて専門的なデータセットでファインチューニングし始めたら、どうなるか興味あるね。" userName="eleveriven" createdAt="2025/06/27 07:03:34" color="">}}




{{<matomeQuote body="2008年にGoogleで働き始めた時、生命科学に投資すべきだって主張したんだ。データ処理とMLの能力で世界をリードできると思ったから。exacycleでタンパク質とか色々やったし、Google Cloud Genomicsも立ち上げたよ。Googleは辞めたけど、DeepMindが僕の目標をずっと良く達成してるのを見るのは嬉しいね。Sundarはあまり inspiring なリーダーじゃないけどさ。この最新の論文はすごく複雑で、コミュニティが理解するには時間がかかると思う。" userName="dekhn" createdAt="2025/06/26 16:56:58" color="#38d3d3">}}




{{<matomeQuote body="Sundarがあまり inspiring じゃなかったってのは分かるけど、彼はGoogleをすごい収益マシンにしたんだよ。利益は10倍になったし、この規模での成長は前代未聞だよ。Sam AltmanやTim Cookみたいな派手さはないけど、結果を出してる。AIへの移行は遅れたけど、Geminiもすごく競争力があるしね。DeepMindも素晴らしい仕事をしてる。彼は過小評価されてると思うな。" userName="deepdarkforest" createdAt="2025/06/26 18:23:30" color="#ff33a1">}}




{{<matomeQuote body="Ballmerみたいに、彼（Sundar）も前任者に成功を用意してもらってたんだよ。既存ビジネスの強い成長は邪魔しなかったけど、他のところではかなり失敗してる。問題は、GoogleにとってのSatya Nadellaは誰かってことだよ。Demisかな？" userName="modeless" createdAt="2025/06/26 18:35:11" color="">}}




{{<matomeQuote body="Microsoftの話が出たから言うけど、Satya Nadellaは素晴らしい仕事をしたってのは同意するよ。客観的に見て彼の功績は何かって？たった一言、Azureだよ。AzureはAWSに次ぐ2位だけど、それだけ。Microsoftの「雰囲気」は変わったけど、全くイノベーションしてない。OpenAIとの提携で天才みたいに見えたけど、Microsoftには戦略がないのはますます明らかになってる。Github CopilotもMS Copilotも誰も使ってない（ひどいジョークだよ）。基盤モデルもないし、消費者向け製品もない。Bingも相変わらずBingだし、マーケットシェアもほとんど増えてない。" userName="bitpush" createdAt="2025/06/26 18:43:34" color="#ff33a1">}}




{{<matomeQuote body="彼はGoogleの製品を「en＼shittifying」（クソ化）することで収益を上げたんだよ。Geminiが追いついてるのは、Demisが最高だからだし、TPUが本当の競争力なんだ。" userName="CuriouslyC" createdAt="2025/06/26 18:36:34" color="">}}




{{<matomeQuote body="CEOの手柄と失敗はセットで考えるべき。Gemini成功が彼の手柄なら、悪い状況（enshittification）も彼のせいだよ。" userName="bitpush" createdAt="2025/06/26 18:44:57" color="">}}




{{<matomeQuote body="90年代のMicrosoftはマジ天才だった！<br>「全家庭にPC」のミッション、全国規模のトレーニング、学校でのプログラミング教育、神ドキュメントとデモアプリ、ネットがない時代のCD配布、専門書、超丁寧なテスト、価格競争圧力、オンラインゲームやタブレットなど次々イノベーション…今のチームよりずっと少数でこれ全部やったんだぜ！" userName="com2kid" createdAt="2025/06/26 21:22:24" color="#ff5c5c">}}




{{<matomeQuote body="Googleのブランド、特に検索はもう終わったかも。AI中心に変わるかもしれないけど、「Google」って名前はもう色褪せちゃったな。" userName="agumonkey" createdAt="2025/06/26 18:42:47" color="">}}




{{<matomeQuote body="でも、自分の意見を通したいからって、どれがCEOの手柄でどれがそうじゃないかって、テキトーに選んじゃダメだろ。" userName="jama211" createdAt="2025/06/26 19:04:43" color="">}}




{{<matomeQuote body="Geminiが”超競争力がある”って？<br>750億ドルも使って、Anthropicとか中国のスタートアップと同レベルの「中の下」みたいなモデルができただけなら、”競争力がある”ってのはずいぶん甘い言い方だね。" userName="oceanplexian" createdAt="2025/06/26 19:02:39" color="">}}




{{<matomeQuote body="曖昧さなんてなくせないよ。読み手が書き手の言いたいことを一番強く汲み取ろうと努力すべきなんだ。" userName="spongebobstoes" createdAt="2025/06/26 18:32:08" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="SatyaになってからMicrosoftはオープンソースに超優しくなったよね。VSCodeとかGitHubとかWSLとか、Ballmer時代じゃ絶対無理だったと思う。プラットフォーム囲い込みじゃなくて、開発者のためにって方針変えたのはマジすごい功績だよ。" userName="modeless" createdAt="2025/06/26 18:46:54" color="#38d3d3">}}




{{<matomeQuote body="＞ Windows CEカーネルチームは10人以下だった！<br>そりゃそうだろ。CEはダメダメで、Windows Phone失敗のデカい原因だったと思うわ。そこからの移行に手間取って、アプリ作る環境がずーっと微妙だったんだよね。当時Microsoftにいて、Silverlightもちょっとやってたよ。" userName="modeless" createdAt="2025/06/26 21:47:50" color="#45d325">}}




{{<matomeQuote body="＞ AzureがAWSに次ぐ2位なのはSatyaの戦略のおかげ<br>これは違うと思うな。Azureが2位なのは、MSがビジネスソフトで圧倒的だからだよ。クラウドはそのビジネスの自然な流れじゃん。まともなもん作りゃ客は勝手に来たって。" userName="radialstub" createdAt="2025/06/26 19:46:57" color="">}}




{{<matomeQuote body="自分で書いたの読み直してみてよ。「CEOのおかげだったり、CEOなのにそうだったり」とか、マジ適当すぎ「willy nilly」じゃん。「en～化」はCEOのせい（なんで？CFOかも？）、GeminiはDemisのおかげ（なんで？CEOかも？）とか、適当に決めつけすぎだって。" userName="bitpush" createdAt="2025/06/26 19:29:56" color="">}}




{{<matomeQuote body="＞ MSはSatyaでオープンソースに友好的に<br>それはホントだけど、数少ない影響力あるプロジェクトだけじゃん。他社もすごいOSSやってるし。方針転換大変なのはわかるけど、正直どの巨大テックが未来に真に革新してる？AppleはVision Proだけ。AmazonはAWS頼み。MSはAI初期リードをフイに。GoogleはGemini、Waymo…。SatyaはGoogleのトップより注目されてると思う。" userName="bitpush" createdAt="2025/06/26 19:28:17" color="#785bff">}}




{{<matomeQuote body="それは読者に期待しすぎだよ…。でもこのフォーラム（https://news.ycombinator.com/newsguidelines.html）では、まさにそれがルールなんだ。「相手の言葉を最も良い意味で解釈して返信して。批判しやすいように曲げないで。善意で受け取ろう。」ってね。" userName="shadowgovt" createdAt="2025/06/26 19:07:43" color="">}}




{{<matomeQuote body="Windows Phone 7のカーネルはマジ最高だったよ。古いカーネルから全部書き直して、パフォーマンスもリソース効率も電力消費も神がかってた。俺的には、MSの携帯事業失敗は、Windowsカーネルに移って要求スペックが倍になったのが原因だと思う。" userName="com2kid" createdAt="2025/06/27 02:22:17" color="#ff33a1">}}




{{<matomeQuote body="Googleだってデータセンターとかクラウドの技術すごいんだから、クラウドは自然な流れって言えるはずだけど、Googleはまだ遅れてるよね。やっぱMSのAzure成功はSatyaの手腕だよ、絶対。" userName="modeless" createdAt="2025/06/26 19:57:01" color="">}}




{{<matomeQuote body="世の中ってHN（Hacker News）のバブルよりずーっと広いんだよ。去年はみんなMSが何でもわかってるみたいに思ってたけど、今どうよ。10億ドルってめーっちゃデカい数字で、それがどれだけすごいかピンとこないことあるよね。" userName="bitpush" createdAt="2025/06/26 18:46:46" color="">}}




{{<matomeQuote body="彼は収益をたくさん伸ばしたかもね。でも、Googleの文化はほぼ消えた。社内ではAmazonみたいなパフォーマンス管理に近くなってきたよ。" userName="deodorel" createdAt="2025/06/26 20:58:10" color="">}}




{{<matomeQuote body="将来のAIセンターになるかもね。<br>HNのヘッドライン見てないの？Googleの重要な高品質AIリリース量は驚くほどだよ。<br>それに、最高のデータを持ってるし。" userName="tiahura" createdAt="2025/06/26 19:01:15" color="">}}




{{<matomeQuote body="＞GoogleのSatya Nadellaは誰？Demis？<br>100％Demisだよ。<br>Demis対Satyaって構図はすごいことになりそう。" userName="echelon" createdAt="2025/06/26 20:06:47" color="">}}




{{<matomeQuote body="イントロンを解明しようぜ、頼む！" userName="leoh" createdAt="2025/06/27 02:35:05" color="">}}




{{<matomeQuote body="Demisが史上初のノーベル賞4連続受賞者になるぜ。" userName="qoez" createdAt="2025/06/27 16:40:22" color="">}}




{{<matomeQuote body="この分野の大きな問題、つまり相関性の高いDNA領域での原因となるバリアントとそうでないものを区別すること（遺伝学用語でファインマッピング）を無視してるのが残念だったな。次バージョンに期待するけど、重要な制御領域を標的とする効果的な薬剤設計には本当に大事なんだ。この問題の興味深い例とその解決がなぜ重要かについては、最近Natureに発表されてて、自己免疫疾患におけるマクロファージ機能調整の面白い薬剤候補につながってるよ: https://www.nature.com/articles/s41586-024-07501-1" userName="nextos" createdAt="2025/06/26 17:00:47" color="#38d3d3">}}




{{<matomeQuote body="これで一歩近づいた？よく分かってないけど、より良い機能予測ができれば、本当に重要なバリアントとそうでないものを見分けやすくなる気がするな。たぶん次のステップはこれを適切な統計的ファインマッピング手法と統合すること？" userName="rattlesnakedave" createdAt="2025/06/26 17:13:58" color="#ff5c5c">}}




{{<matomeQuote body="ええ、でも既存のものと劇的に違うわけじゃない。<br>予測と因果性の間には憂慮すべきギャップがあるんだ。今回の問題みたいに多数の変数が強く相関してる場合、因果性を暗黙的にしか考慮しない予測手法はうまく機能しない。<br>今、SOTAはゲノム内の各連鎖ブロック内で因果性を推測するために大規模な集団データを使うみたいだね。こういう手法はPearlの因果グラフの概念にかなり近いよ。" userName="nextos" createdAt="2025/06/26 17:39:40" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
