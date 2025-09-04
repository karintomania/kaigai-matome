+++
date = '2025-08-28T00:00:00'
months = '2025/08'
draft = false
title = 'OpenAIとAnthropic、推論でまさかの赤字か！？'
tags = ["AI", "LLM", "ビジネス", "コスト", "テクノロジー"]
featureimage = 'thumbnails/light-orange1.jpg'
+++

> OpenAIとAnthropic、推論でまさかの赤字か！？

引用元：[https://news.ycombinator.com/item?id=45050415](https://news.ycombinator.com/item?id=45050415)




{{<matomeQuote body="この記事の計算、根本的に間違ってるよ。例えば、プリフィルが帯域幅に縛られないってのは明らか。筆者のMFU計算はハードウェアのピークFLOPSの約7倍で、ありえない数値だ。他にも同時リクエスト数やGPU構成、Attention計算が主なボトルネックって仮定とか、色々おかしいところが多すぎる。HNの人たちが議論してる問題も、もっと根本的な誤解じゃないのが残念だね。" userName="chillee" createdAt="2025/08/28 21:45:15" color="#45d325">}}




{{<matomeQuote body="記事の内容、特にアウトプットトークンについては全く違うって同意するよ。ほら、ここ見てみて。強力なGPUをいくつか使えば、4ヶ月前から大規模モデルをめっちゃ安くデコードできる方法があるんだ。今はB200sとか使ってもっと安くなってるはずだよ。<br>https://lmsys.org/blog/2025-05-05-large-scale-ep/" userName="pama" createdAt="2025/08/28 22:30:15" color="#ff5c5c">}}




{{<matomeQuote body="OpenRouterでオープンソースモデルの値段を見てみ？クローズドソースモデルに比べて全然安いよ。この市場はどんどんコモディティ化してるから、それが本当のコストに小さいマージンを乗せたものだって考えるのが自然だよね。" userName="ma2rten" createdAt="2025/08/29 02:47:50" color="">}}




{{<matomeQuote body="OpenRouterにある多くのオープンモデルの推論だけの理論的マージンを丁寧に計算すると、大規模運用すれば800%超えとか、とんでもなく高い利益が出るはずだよ。高いコストは多分、給料や投資、無料提供なんかの費用を賄ってるんだと思う。AIの集中推論こそ、本当の金鉱だと思うな、規模がデカいとほとんどコストかからないんだからさ。" userName="pama" createdAt="2025/08/29 06:18:29" color="#ff5733">}}




{{<matomeQuote body="数学が間違ってるって言ってくれるのはありがたいんだけど、正しい数字も教えてくれないと、こっちの期待値をどう調整していいか分からないよ。" userName="Aeolun" createdAt="2025/08/29 00:00:50" color="">}}




{{<matomeQuote body="で、結局OpenAIとかAnthropicは本当に損してるの？それが知りたいんだけど。" userName="resonious" createdAt="2025/08/29 04:29:59" color="">}}




{{<matomeQuote body="結局のところさ、OpenAIとかAnthropicが「推論で赤字出してると」思う？可能性はあるのかな。" userName="Den_VR" createdAt="2025/08/28 22:06:55" color="">}}




{{<matomeQuote body="いや、赤字じゃないよ。記事は変な回り道してるけど、結論は合ってるかもね、ハハ。でも、アウトプットトークンがインプットトークンよりコストがかかるって中心的な前提は、100倍以上間違ってると思うけどさ。" userName="chillee" createdAt="2025/08/28 22:16:15" color="#ff5c5c">}}




{{<matomeQuote body="(記事の著者だよ) 訂正ありがとう！記事を更新するね。入力トークンの計算、僕が間違ってたのはごめん。手計算が物理法則から7倍しかズレてなかったってのは、正直ちょっと嬉しいんだけどね。入力トークンのコストをもっと高くして再計算しても、僕のユースケースだとあんまり変わらないんだよね。" userName="martinald" createdAt="2025/08/28 22:32:09" color="">}}




{{<matomeQuote body="32並列シーケンスって恣意的すぎない？256並列なら計算は8倍安くなるはずだよ。<br>あと、長文脈長がattentionの計算量ボトルネックになるって話も誤解を招くよ。" userName="chillee" createdAt="2025/08/28 22:51:15" color="#ff33a1">}}




{{<matomeQuote body="入力トークンが安いのは、後でモデルのトレーニング用にデータを収集したいからじゃない？大量のデータを細かく使いたいんだと思うよ。" userName="doctorpangloss" createdAt="2025/08/28 22:23:38" color="">}}




{{<matomeQuote body="知ってる限りだと、大手プロバイダは契約でユーザーデータを使ったトレーニングをしないのがデフォルトになってるよ。だから、トレーニングデータのためのコンテキストサイズって関係ないんじゃないかな。" userName="awwaiid" createdAt="2025/08/29 10:59:08" color="">}}




{{<matomeQuote body="たとえそうだったとしても、製品の最大のコストを無視して「利益が出てる」って言うのは、むしろ詐欺じゃないか。" userName="diamond559" createdAt="2025/08/29 06:58:48" color="#ff5c5c">}}




{{<matomeQuote body="LLMをよく分かってないんだけど、どうしたらもっと理解できるか何かおすすめある？" userName="johnnypangs" createdAt="2025/08/29 04:54:20" color="">}}




{{<matomeQuote body="何度かモデル化したんだけど、推論ってGPUの減価償却と利用率次第で50%以上の粗利率でいけるよ。問題はモデルのトレーニング費用を計算に入れるかどうかだね。もしトレーニング費用を償却しないならマージンは最高。でも、もし償却して考慮する必要があるなら…やばいって。" userName="_sword" createdAt="2025/08/28 17:53:45" color="#ff5733">}}




{{<matomeQuote body="なんでトレーニングを考慮に入れないんだ？一度トレーニングしたら何年もモデルが使えるわけじゃないだろ。競争についていくには常に改善が必要だし、今のモデルの寿命って数ヶ月だよ。" userName="BlindEyeHalo" createdAt="2025/08/28 18:19:33" color="#ff33a1">}}




{{<matomeQuote body="Hard ForkポッドキャストでSam Altmanが「トレーニング費用で赤字だけど、トレーニングは減る」って言ってたよ。トレーニングを考慮しなければ、今の価格でも利益が出てるって。でもCFOが「まだ利益は出てないけど、もうすぐ」って訂正してた。<br>これは数週間前の話だから話半分だけど、トレーニングを無視すれば価格は妥当ってのは合ってると思う。ただ、トレーニングがめちゃくちゃ高くて、それが多くのAI企業が今赤字な理由だね。" userName="jacurtis" createdAt="2025/08/28 21:57:49" color="#785bff">}}




{{<matomeQuote body="GPT5レベルのモデルなら、平均的な人はもう改善を認識できないところに来てると思うよ。このレベルなら、少しずつ改善しながら何年も使えるんじゃないかな。ただ、研究用のモデルは、短期間で性能を上げるために、まだまだ莫大なコストでトレーニングが必要だろうけどね。" userName="vonneumannstan" createdAt="2025/08/28 18:50:44" color="#ff5c5c">}}




{{<matomeQuote body="著作権侵害の賠償金とか法的な費用は含まれてるの？データ作ったクリエイターにお金を払うのがダメってどういうこと？説明してよ。" userName="lawlessone" createdAt="2025/08/28 17:56:27" color="#ff5733">}}




{{<matomeQuote body="他のスタートアップがR&Dコストを隠して「限界利益は高いから、すぐ儲かる事業になるよ」って言うのと同じ手口だよね。" userName="christina97" createdAt="2025/08/28 18:51:13" color="#ff5c5c">}}




{{<matomeQuote body="異議あり！一番のコストはエネルギー、水、メンテナンスだよ。Metaみたいに莫大な投資してライバルと競争しなきゃだし、NVIDIAの株価みたいに高騰するハードウェアもいる。今は市場を獲りに行ってガンガン投資する時で、利益の話はまだ早い。計算式はまだ完成してないよ。" userName="trilogic" createdAt="2025/08/28 18:43:19" color="#ff5733">}}




{{<matomeQuote body="マジウケる。ぶっちゃけ、FCFFとかFCFEとかフリーキャッシュフローについて語らないやつは信用しないね。費用の分類なんてどうでもいいから、金を見せてくれ！" userName="utyop22" createdAt="2025/08/29 01:23:37" color="#38d3d3">}}




{{<matomeQuote body="このモデルの設備投資リスクってどれくらい？GPUを5年で減価償却するのは、稼働率が保証されてればいいけどさ。稼働率が落ちて市場シェアを失ったら、一部の会社は終わりそうだよな。" userName="lumost" createdAt="2025/08/28 20:12:01" color="#ff5c5c">}}




{{<matomeQuote body="＞ モデルが進歩したらトレーニングは減るって？それが起きるまで、まだまだトレーニングしまくらないといけないよ。5から元に戻したってことは、彼ら自身がそれを認めてるってことだよね。" userName="dgfitz" createdAt="2025/08/28 22:55:24" color="#785bff">}}




{{<matomeQuote body="GoogleとFacebookは初期の頃、何年もフリーキャッシュフローがマイナスだったんだ。賢い投資家たちは、金燃やしてるって馬鹿にしてたヤツらを笑ってたんだよ。" userName="danielmarkbruce" createdAt="2025/08/29 03:53:55" color="#ff5c5c">}}




{{<matomeQuote body="それは現状の法律がそう言ってないからだよ。それに議会は遡及法なんて作れないからね。" userName="tick_tock_tick" createdAt="2025/08/28 19:14:31" color="#ff5c5c">}}




{{<matomeQuote body="これは逆を証明してると思うよ。みんな新しいモデルじゃなくて古いモデルを求めてたんだから、そのユーザー層のためには新しいモデルを訓練する必要なんてなかったってことだよね。" userName="mindwok" createdAt="2025/08/29 00:12:29" color="">}}




{{<matomeQuote body="誰も需要の価格弾力性や、それがモデルビジネスの経済にどう影響するかについて話してないのが気になるな。" userName="utyop22" createdAt="2025/08/29 01:25:23" color="#ff5c5c">}}




{{<matomeQuote body="製品運用費と再投資、そしてモデルビジネスを比較してみようよ。FCFFはEBIT(1-t)から再投資を引いたものだろ。モデルビジネスの営業費用はすごく高いからEBITは低くなる。再投資が大きければ大きいほど穴も大きくなるんだ。それが長く続けば続くほど（長期的に競合を排除する明確な参入障壁がなければ）高い評価を正当化するのは難しくなるよ。こういう比較は細かいところを無視してるから、本当に嫌いだね。" userName="utyop22" createdAt="2025/08/29 08:27:08" color="#785bff">}}




{{<matomeQuote body="＞ほとんどのAI企業は今赤字だって？　この段階じゃ完全に“普通”だよな、“””だろ”””？　何十億ものVCマネーがリターンを追いかけてるなら、じっと座ってる時間なんてないし、全部つぎ込むしかない。ハイプトレインは自力での収益化なんて待ってくれないんだ。それに、この巨大な評価額と必須のYoY成長率だと、彼らがユニットエコノミーの数字をいじってないわけがない。バイアスって、意識して努力しないと打ち破るのが難しいんだよね。" userName="pas" createdAt="2025/08/28 22:13:20" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="一部のパワーユーザーの需要はかなり非弾力的だと思うな。お金を使うのを嫌がるデベロッパーが、新しいClaudeのサブスクリプションに月200ドルも喜んで払ってるのを見たことあるよ。" userName="Jaxkr" createdAt="2025/08/29 03:31:11" color="#ff5c5c">}}




{{<matomeQuote body="モデルが急速に進化する限り、競争にはゼロからの再訓練が必要で、これは莫大なCapExだから、AI企業の財務は推論コストだけじゃ測れないよ。高性能モデルは訓練も高額だしね。でも、どこかでモデル改善は飽和するはず。そうなればモデルのアーキテクチャは固定され、新知識の組み込みだけが追加訓練の目的になるかも。ゼロから再訓練か、ファインチューニングで済むかで未来は大きく変わるよ。もし後者でファインチューニングが安ければ、低推論コストがAI企業の強気材料になるだろうね。" userName="MontyCarloHall" createdAt="2025/08/28 18:40:09" color="#45d325">}}




{{<matomeQuote body="マイナスのフリーキャッシュフローは、良いビジネスの初期段階では普通なんだ。90年代のAmazonやGoogleもそうだっただろ？　初期のFCFFばかり見るのは浅はかだよ。参入障壁は自然に生まれるんじゃなく、時間と費用をかけて作り出すものなんだ。AIのモデルビジネスが高利益か低利益か、参入障壁や再投資がどうなるかはまだ不明。数年しか経ってないんだからね。この分野で今後数年間、プラスのフリーキャッシュフローを目指したら潰されるだろう。2035年に高収益ビジネスを狙うなら、今すぐ投資すべきだね。" userName="danielmarkbruce" createdAt="2025/08/31 03:06:09" color="#45d325">}}




{{<matomeQuote body="＞最大のコストは依然としてエネルギー消費、水、メンテナンスだって？<br>君は推論の運用コストが訓練コストを超えているって言ってるの？" userName="wtallis" createdAt="2025/08/28 18:46:04" color="#ff33a1">}}




{{<matomeQuote body="AIラボ以外だと推論コストの仮定は現実離れしてるんじゃない？ DeepSeekのデータ（https://github.com/deepseek-ai/open-infra-index/blob/main/20...）見ると、多くのGPUが必要だけど使わない時間も多くて効率悪いよ。AIラボ以外では、100%の利用率とか、入力処理が無料とかの仮定は成り立たないと思うんだ。" userName="ozgune" createdAt="2025/08/28 19:09:48" color="#ff5733">}}




{{<matomeQuote body="AI企業のAPIってコモディティ化してるから、常に訓練し続けないと、すぐ他の会社に乗り換えられちゃうよ。これって結局、消耗戦だよね。" userName="anothernewdude" createdAt="2025/08/29 05:34:24" color="">}}




{{<matomeQuote body="H100のレンタル代に、GPUがアイドルになる時間とかのコストって、もう含まれてるんじゃないの？" userName="DoesntMatter22" createdAt="2025/08/28 19:22:03" color="">}}




{{<matomeQuote body="GPT-5の「Pro」は最強だけど、月200ドルもするし、訓練費用もすごい。性能向上とコストの関係が釣り合わなくなってきてるから、そのうちモデル開発も限界が来るんじゃないかな。高すぎて使う人もいなくなるかもね。" userName="felipeerias" createdAt="2025/08/29 02:18:57" color="#ff33a1">}}




{{<matomeQuote body="AI開発に関わってるのって、ほぼ米国と中国だけじゃん。中国がIP権を尊重するようになるなんて、思えないんだけど。" userName="tick_tock_tick" createdAt="2025/08/28 21:30:37" color="">}}




{{<matomeQuote body="なんかGPT-5って前のモデルより劣化してる気がするんだけど。実用ならClaude使っちゃうよ。音声モードも前は便利だったのに、今はなんか要領を得ないし、使い物にならない。" userName="black_knight" createdAt="2025/08/28 20:55:28" color="">}}




{{<matomeQuote body="コストって10分の1になるのかな？Uberみたいに値上がりしたら、Copilotも1リクエスト1ドルとか0.25ドルとかじゃ使いたくないよ。それなら海外のコンサルに頼んだ方がマシになっちゃうし。" userName="brianwawok" createdAt="2025/08/28 23:33:38" color="#785bff">}}




{{<matomeQuote body="Sam Altmanが「今やってることのほとんどが推論なんだ。推論は儲かってるよ。もし訓練費用がなければ、うちはめちゃくちゃ儲かる会社になるだろうね」って言ってたよ。ソースはこれ: https://www.axios.com/2025/08/15/sam-altman-gpt5-launch-chat..." userName="simonw" createdAt="2025/08/28 16:20:22" color="#45d325">}}




{{<matomeQuote body="Amodeiも、Sam Altmanと同じこと言ってたよ。「モデル一つ一つが会社なら、去年作ったモデルはちゃんと儲かってる。でもそれと同時に、もっと金のかかる新しいモデルも作ってるから全体としては大変なんだ。この状況は、モデルがもう大きくならなくなるか、性能改善が止まるまで続くだろうね」って。詳しくはこれ: https://cheekypint.substack.com/p/a-cheeky-pint-with-anthrop..." userName="dcre" createdAt="2025/08/28 16:23:51" color="#ff33a1">}}




{{<matomeQuote body="「もし売上原価がゼロなら儲かる」って、Sam Altmanの発言は当たり前すぎて意味ないだろ。どんなビジネスだって、コストがなきゃ儲かるのは当然のことなんだからさ。" userName="drob518" createdAt="2025/08/28 16:27:56" color="">}}




{{<matomeQuote body="「モデルを会社」って例えるのはおかしいね。モデルは製品と考えるべきだよ、Nikeの靴みたいに。Nikeは靴の開発費をかけるけど、製品を売ってR&Dコストを回収する。でも会社全体は別で運営されてるでしょ。Nikeは成長するほど安く作れるようになるけど、LLMモデルは新モデルほど開発費が跳ね上がるって言われてる。もしトレーニングで2倍の収益だとしても、儲けるには毎年値段を倍にするかユーザーを倍にするか、新モデルを作るのをやめるしかないじゃん。" userName="meshugaas" createdAt="2025/08/28 17:27:16" color="#ff33a1">}}




{{<matomeQuote body="Amodeiの引用が間違ってる理由を前の返信で説明したけど、要するに今のモデルのトレーニングと推論を比べるのが違うってこと。彼らが大損してるのは、今のモデルでトレーニング費用を回収してる間に次のモデルをトレーニングしてるからなんだ。だから、これはCOGSとは全く違うね。" userName="dcre" createdAt="2025/08/28 16:39:44" color="#38d3d3">}}




{{<matomeQuote body="これは技術的には正しいかもしれないけど、実際はそうじゃない可能性があるよ。例えばOpenAIはCursorやWindsurf、他のスタートアップに投資して、彼らがユーザーにクレジットを配って大量の推論APIを使わせる。そしてお金はOpenAIに戻って、またクレジットや投資としてそれらの会社に送られるんだ。Nvidiaも推論を大量に生み出す会社に資金提供してるから、さらに循環的だよね。新しい投資マネーが尽きるまでは、本当に利益が出てるかなんて、かなり判断が難しいんじゃないかな。" userName="aeternum" createdAt="2025/08/28 16:28:01" color="#45d325">}}




{{<matomeQuote body="Ed Zitronっていうジャーナリストがいるよ。https://www.wheresyoured.at/<br>彼はOpenAI懐疑派で、彼の調査が正しければOpenAIは赤字どころか、ずっと儲からないらしいんだ。その財務比率は、初期のUberやAmazonでさえ、財政的に質素に見えるほどひどいんだって。彼はテック系の人じゃないけどね。" userName="citizenpaul" createdAt="2025/08/28 18:22:18" color="#38d3d3">}}




{{<matomeQuote body="会計士がトレーニング費用をCOGSだと主張するために、どれだけ無理な理屈を通す必要があるか想像できないよ。損益計算書（P&L）をAIエンジニアに説明するなら、トレーニングはR&D費用で、推論費用がCOGSっていうのが一番分かりやすいんじゃない？" userName="gomox" createdAt="2025/08/28 16:55:36" color="#45d325">}}




{{<matomeQuote body="Zitronはまともなアナリストじゃないよ。彼の分析には疑問があるね。David CrespoのBskyでの投稿をいくつか見てみて。→<br>https://bsky.app/profile/davidcrespo.bsky.social/post/3lxale...<br>https://bsky.app/profile/davidcrespo.bsky.social/post/3lo22k...<br>https://bsky.app/profile/davidcrespo.bsky.social/post/3lwhhz...<br>https://bsky.app/profile/davidcrespo.bsky.social/post/3lv2dx..." userName="dcre" createdAt="2025/08/28 19:49:36" color="">}}




{{<matomeQuote body="それは、トレーニングしたモデルが事業としてずっと機能し続けたらの話だよね。トレーニングコストの償却期間なんて2ヶ月くらいだよ。それだけで利益を出し続けるなんて無理。次のモデルを作らないと、みんな他に行っちゃうもんね。" userName="prasadjoglekar" createdAt="2025/08/28 16:51:59" color="#ff33a1">}}




{{<matomeQuote body="OpenAIって、いつか新モデル作らないでいられるのかな？彼らは設立以来ずっと次のモデルをトレーニングし続けてるみたいだし。うちのソフトウェア会社もR&Dに結構お金をかけるけど、それでもしっかり利益を出してるよ。もしOpenAIが、利益を出すために製品のイテレーションを止めなきゃいけないって状況なら、数百億ドルの借金を抱える寸前の今、かなりヤバいんじゃないかな。" userName="ToucanLoucan" createdAt="2025/08/28 16:53:31" color="#45d325">}}




{{<matomeQuote body="OpenAIとAnthropicは顧客層も使い方もかなり違うんだ。Anthropicの利用料は、OpenAIよりも顧客が直接支払ってる割合がかなり高いと推測できるよ。ChatGPTの無料版はClaudeの無料版より圧倒的に人気だし、AnthropicはOpenAIよりAPIビジネスの割合が高いだろうね。だから、この赤字の話はAnthropicには当てはまるけど、OpenAIには当てはまらない可能性もあるってこと。" userName="827a" createdAt="2025/08/28 17:20:27" color="#ff33a1">}}




{{<matomeQuote body="「Nikeが成長するにつれて、より安く靴を作れるようになる」っていうのは、モデルにも当てはまるはずだよ。GPT4レベルのモデルのトレーニングや推論の提供は、昔より100倍以上安くなってるだろうし！NikeはJordan 1を40年以上も作り続けてるんだぞ！OpenAIもGPT4レベルの推論効率改善による利益だけで生きていけるなら、とてつもなく儲かるはずだ！" userName="vonneumannstan" createdAt="2025/08/28 18:54:29" color="#45d325">}}




{{<matomeQuote body="COGSはGAAPの意味じゃなくて、不明な”コスト”の同義語として使ってたわ。ゴメンね。たぶん訓練費用は開発費、データセンターやGPUの運用費がGAAPのCOGSになると思う。俺が言いたかったのは、収益だけ見て事業立ち上げや維持のコストを無視したら、どんなビジネスでも”儲かってる”って言えちゃうってことね。" userName="drob518" createdAt="2025/08/28 18:01:14" color="#ff5733">}}




{{<matomeQuote body="なんで2ヶ月なの？Claude 3.5と4の間はほぼ1年あったじゃん。(3.5から3.7への移行にどれだけコストがかかるかはわからないけどね。)" userName="dcre" createdAt="2025/08/28 17:53:49" color="">}}




{{<matomeQuote body="＞＞これは明らかだ...多分＞＞GPT-4レベルのモデルで推論効率が上がった利益だけで食っていけるなら、OpenAIはとんでもなく儲かるはず！もしGPT-4が今やタダみたいな金を生むなら、GPT-5の後にそれをやめるってのはマジで変だよな。" userName="Avshalom" createdAt="2025/08/28 19:05:39" color="#785bff">}}




{{<matomeQuote body="これまで新しいモデルは前のモデルより開発コストがかかってるし、桁違いなことも多いから、靴の比喩は的外れだよ。<br>石油・ガス生産の方が良い比喩だね。既存の油田は枯渇するか（モデルがSOTAじゃなくなりROIがない）、生産中か（SOTA推論でROIがある）。AIとの類似点は、新しい油田は最初に見つけたものより経済的にするのが難しいから、オンラインにするのがどんどん高くなってること。つまり、楽して稼げる時代はもう終わったってことさ。" userName="renjimen" createdAt="2025/08/28 18:02:41" color="#38d3d3">}}




{{<matomeQuote body="なるほど、アルトマンは無料ティアをマーケティング費用として除外してる可能性が高いね、有料顧客からの利益より損失が大きくても。<br>一方、モデルルーターでGPT-5-miniにクエリを送ることで、以前4oに行ってた無料ティアのコストを大幅に削減できるかもしれないな。" userName="dcre" createdAt="2025/08/28 18:04:56" color="#ff33a1">}}




{{<matomeQuote body="事業全体とユニットエコノミーを分けて考えるのは大体役立つよね。ユニットエコノミーがマイナスだとかなり暗い。プラスなら、事業拡大で管理費やR&Dみたいな固定費を償却できるし、ユニット利益率も少し改善するからチャンスはかなり上がる。<br>でも、固定費が指数関数的に増えてるとこれはうまくいかない。ユーザー数か顧客単価が指数関数的に増えない限り、この状況からは抜け出せないんだ。アルトマンが言ってるのはこれだと思うよ。つまり、ユニットエコノミーはプラスなのに、固定費が規模の経済で吸収できるより早く爆発的に増えてるっていう異常事態だってこと。細かい話だと思うかもしれないけど、洞察力のある見方には物事を分けて考えることがよく必要になるんだ。" userName="DenisM" createdAt="2025/08/28 18:37:28" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="最新のNYT Hard Forkポッドキャストによると、サムが主催する夕食会にホストが呼ばれてたんだ。そこでサムが”訓練を計算から除外すればうちは黒字だ”って言って、Lightcap（COO）に”そうだろ？”って聞いたら、Lightcapが”ええっと、惜しいところです”みたいな返事をしたらしい。<br>彼らは推論だけでもまだ黒字じゃなくて、サムもつい最近まで知らなかった可能性があるってさ。<br>URL: https://www.nytimes.com/2025/08/22/podcasts/is-this-an-ai-bu..." userName="827a" createdAt="2025/08/28 17:13:43" color="#38d3d3">}}




{{<matomeQuote body="素晴らしい視点だね。<br>基本的に新しい会社が前の会社に競争圧力をかけて、みんなで利益を縮小してるんだよ。底辺への競争をやってるんだね。たぶん彼らはこれを分かってて、AGIの優位性に賭けてるんだろうな。" userName="DenisM" createdAt="2025/08/28 18:28:50" color="#ff33a1">}}




{{<matomeQuote body="まだ深い統合に未開発の価値があるよ。例えば、バラバラのビジネスプロセスとの密接な統合によるネットワーク効果で、指数関数的に価値が増える大当たりを引くかもしれないね。<br>強いネットワーク効果を持つビジネスは、約2兆ドルの評価額まで成長できることが分かってるし。" userName="DenisM" createdAt="2025/08/28 18:42:03" color="">}}




{{<matomeQuote body="アモデイは1億ドルのモデルが2億ドルの収益を生み、10億ドルのモデルが20億ドルの収益を生むって仮説を持ってるけど、それって本当に成り立つかな？10億ドルのモデルから2億ドルの収益しか得られないなんてことは、別に起こり得ないわけじゃないし。" userName="LZ_Khan" createdAt="2025/08/28 17:34:09" color="">}}




{{<matomeQuote body="「トレーニング費用を割引しても利益が出ない」ってのと「推論の利益は費用を大幅に上回る」って発言、矛盾しないよね。だからSamのコメントは前半だけが正しかったのかもね。" userName="twoodfin" createdAt="2025/08/28 18:13:33" color="">}}




{{<matomeQuote body="Ed ZitronはOpenAIが利益出すなんて無理って言ってるね。君が貼った記事も、OpenAIが黒字になるのはかなり難しいって思ってるみたいだよ。" userName="jrflowers" createdAt="2025/08/28 21:43:41" color="">}}




{{<matomeQuote body="「AGIのトップに賭けてる」って、UberやTeslaが自動運転に賭けてるのと一緒じゃん。もう10年も「もうすぐ」って言ってるしね。" userName="oblio" createdAt="2025/08/28 19:01:58" color="">}}




{{<matomeQuote body="「新モデルは前のより開発費かかる」ってのは、80年代から2010年代のソフトや、今のハードでも一緒だよね。iPhone 17は10や5より開発費かかるだろうし、iPhone 5も3Gより高かったしね。" userName="runako" createdAt="2025/08/28 20:25:21" color="">}}




{{<matomeQuote body="Samが「トレーニング費払わなきゃ超儲かる」って言ったんだよね。Amodeiも同じこと言ったって？違うよ。Amodeiはトレーニング費払ってもモデルは儲かるって言ってるんだ。費用より収入が多いって。全然違う主張だよ。" userName="kgwgk" createdAt="2025/08/28 19:11:58" color="#ff5c5c">}}




{{<matomeQuote body="無料枠が大量の学習材料になってるんだよね。ChatGPTの間違いを直すたびに、本にもウェブにもない知識を与えてるわけ。それが参入障壁（モート）になるけど、時間がかかるんだ。" userName="DenisM" createdAt="2025/08/28 18:22:54" color="#38d3d3">}}




{{<matomeQuote body="細かいけど大事な話だね。モデルがずっと再学習いらないとか、スケールアップし続けないとか、誰か思ってる？僕はスケールアップはもう限界が来てると思う。訓練するコンテンツも尽きてきたし、いいことかもね。でも、継続的な再学習が当たり前じゃない未来は考えられないな。" userName="drob518" createdAt="2025/08/28 19:23:34" color="#ff5733">}}




{{<matomeQuote body="え？この記事、なんか怪しいな。数字はわかんないけど…オープンソースモデルもあるのに、推論がそんなに安かったら、なんで安価なAPIプロバイダーがゴロゴロ出てこないの？僕が見たのは小さいモデルばっかだし、安価なdeepseek-R1はどこ？そんなに安くて儲かるなら、僕も安く使えるか自分で600Bモデル動かせるはずだよね。なんか見落としてる？実際、みんなが安くやってないってのが、この記事の計算への一番の批判だと思うけどな。" userName="noodletheworld" createdAt="2025/08/28 15:25:56" color="#ff33a1">}}




{{<matomeQuote body="「推論がそんなに安いなら、安価なAPIプロバイダー出てこないの？」って？安いとこいっぱいあるよ。他のAPIまとめる有名プロバイダーもあって、モデルを無料で提供してるとこもあるしね。「小さいモデルばっか。安価なdeepseek-R1は？」<br>https://openrouter.ai/deepseek/deepseek-r1-0528:freeだよ。" userName="dragonwriter" createdAt="2025/08/28 15:52:20" color="#ff33a1">}}




{{<matomeQuote body="これ、どういうこと？誰かがプロンプト自体に価値を見出してるんだろうけど、これじゃ採算取れないでしょ。" userName="idiotsecant" createdAt="2025/08/28 17:48:10" color="">}}




{{<matomeQuote body="推論はそんなに安いのさ。それに、AIを使い慣れてもらって、有料モデルに移行してくれることを期待してるんじゃないかな。" userName="tick_tock_tick" createdAt="2025/08/28 19:16:18" color="">}}




{{<matomeQuote body="DeepSeekなら、そこそこのノートPCでも無料で動かせるよ。" userName="booi" createdAt="2025/08/28 16:08:27" color="">}}




{{<matomeQuote body="4-bit量子化でも、R1はウェイトだけで300GB以上必要だよ。R1を蒸留した小さいモデルならノートPCで動かせるけど、R1本体をノートPCで動かすのは、どんなに極端な構成でも無理だと思うな。" userName="dragonwriter" createdAt="2025/08/28 16:16:14" color="#ff5733">}}




{{<matomeQuote body="多分、Ollamaが”DeepSeek”って呼んでるやつをDeepSeekだと思ってるんじゃない？あれはDeepSeekじゃなくて、DeepSeekを蒸留した別のモデルだよ。" userName="svachalek" createdAt="2025/08/28 16:40:18" color="#785bff">}}




{{<matomeQuote body="”なんで複数のAPIプロバイダがモデルを激安で提供してないの？”って？いや、してるよ。この表にあるDeepSeek R1の各プロバイダの価格は、記事の推定より安いって。ほら、ここ見てみてよ。https://artificialanalysis.ai/models/deepseek-r1/providers" userName="jsnell" createdAt="2025/08/28 15:38:54" color="#ff5733">}}




{{<matomeQuote body="リンク先の最安プロバイダでも、記事が推定してる入力トークン価格の460倍もするんだけど。" userName="ac29" createdAt="2025/08/28 16:00:13" color="#785bff">}}




{{<matomeQuote body="”リンク先の最安プロバイダが記事の460倍”って言ったけど、記事は入力トークン100万あたり$0.003、リスト最安は$0.46だから、比率は120倍だよ、460倍じゃない。あと、出力トークン100万あたり$3.08って推定だけど、リストの全プロバイダはそれをはるかに下回ってるぞ。" userName="dragonwriter" createdAt="2025/08/28 16:26:31" color="#ff5c5c">}}




{{<matomeQuote body="そのページには出力トークン価格が$3.08より高いプロバイダが7つもあるんだけど。入力トークン価格がそれより高いプロバイダも1つあるし。”すべて”ってのは正しくないよ。" userName="ruszki" createdAt="2025/08/28 17:17:04" color="#38d3d3">}}




{{<matomeQuote body="”自分で600B paramモデルを安く動かせるはず”って？もしホスト型推論のマージンが80%なら、自分で作ったものを20%以上稼働させないと、マージン的には安くならないよ。<br>数年前に買った$300のGPUでオープンウェイトモデル（DeepSeekとかはオープンソースじゃないけど）をセルフホストしてるけど、2トークン/秒じゃ結果が出るまで10分もかかる。10秒で欲しいなら$30000払うことになるし、1日100回プロンプト送っても99%はアイドルだ。<br>$30000のGPUを100人で共同購入してシェアする方が理にかなってるかもね。モデルプロバイダは、そういうものを提供してるんだよ。" userName="colinsane" createdAt="2025/08/28 18:49:23" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
