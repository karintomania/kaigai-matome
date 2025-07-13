+++
date = '2025-07-06T00:00:00'
months = '2025/07'
draft = false
title = 'Apple Intelligenceモデルの安全フィルターを抽出！中身は？'
tags = ["AI", "Apple AI", "リバースエンジニアリング", "プログラミング", "安全フィルター"]
featureimage = 'thumbnails/cyan_orange1.jpg'
+++

> Apple Intelligenceモデルの安全フィルターを抽出！中身は？

引用元：[https://news.ycombinator.com/item?id=44483485](https://news.ycombinator.com/item?id=44483485)




{{<matomeQuote body="Apple Intelligenceモデルの安全フィルターを管理してる暗号化（フレームワークでは”Obfuscation”って呼ばれてるらしい）をリバースエンジニアリングしたんだ。<br>それをリポジトリに抽出したから、見てみるといいよ。" userName="BlueFalconHD" createdAt="2025/07/06 19:50:02" color="#45d325">}}




{{<matomeQuote body="いくつか組み合わせが変なやつがあるね。<br>死に関することを避けるものがたくさんあるのに、同時にAppleブランドの資本化が正しいかを保証するセットも入ってるんだ…優先順位がおかしいよね！https://github.com/BlueFalconHD/apple_generative_model_safet..." userName="trebligdivad" createdAt="2025/07/06 20:56:03" color="#ff5733">}}




{{<matomeQuote body="「unalive」が含まれてなかったのは面白いね。<br>これは、誰も人が実際に何を言ってるかに全く関心がないっていうのをすごく物語ってるよ。<br>プラットフォームも含めて、みんなそれが何を意味するか知ってるんだ。<br>全部見せかけさ。" userName="grues-dinner" createdAt="2025/07/06 21:09:34" color="">}}




{{<matomeQuote body="全く見せかけだよね。<br>人が生み出す新しい言葉に先んじる方法なんてないよ。<br>いつ新しい言葉が実際の言葉になるんだろう？<br>現実世界で「unalive」を使ってる人ってたくさんいるのかな？" userName="qingcharles" createdAt="2025/07/06 21:22:37" color="">}}




{{<matomeQuote body="＞人が生み出す新しい言葉に先んじる方法なんてないよ<br>新しい悪用方法を想像しちゃうね。<br>誰かが全く無害なことを言った後、コメント欄で集団になってひどい悪意ある中傷があったかのように振る舞って、そしたらモデレーションシステム（どこかにLLMが関わってるやつ）が、適当な言葉がひどいって「学習」して、間接的にそのトピックの議論を全部禁止するんだ。" userName="Terr_" createdAt="2025/07/06 23:08:53" color="">}}




{{<matomeQuote body="アメリカのピューリタニズムの輝かしい例でもあるね。<br>アジアやヨーロッパのモデルははるかに検閲が少ないよ。" userName="j-krieger" createdAt="2025/07/07 08:45:36" color="">}}




{{<matomeQuote body="前半はOKジェスチャーですでに起こったことだよね。https://www.bbc.co.uk/news/newsbeat-49837898。<br>LLMが白熱したやり取りを生みがちなものを禁止するために使われたらどうなるか見るのは面白いだろうな。<br>おそらく人種的な言葉、政治家、そして「immigrant」みたいな言葉（つまりこのリポジトリのリストみたいなもの）を禁止することを学ぶだろうけど、他に何を禁止させられるんだろう？<br>VimとEmacs？SystemD？自転車乗りに関すること？子育てのアドバイス？" userName="grues-dinner" createdAt="2025/07/07 04:47:27" color="">}}




{{<matomeQuote body="商標を維持するための法的要件なんだよ。" userName="WillAdams" createdAt="2025/07/06 21:00:34" color="">}}




{{<matomeQuote body="本当に？<br>DeepSeekは天安門事件について何て言う？<br>ドイツのモデルは知らないけど、もし見つけたらパレスチナについてどう思うか聞いてみるといいよ。（Mistralはフランスだけど、フランスで何を検閲されるか全く分からない）" userName="immibis" createdAt="2025/07/07 11:33:40" color="">}}




{{<matomeQuote body="ティーンの親だけど、「unalive」を皮肉じゃなくて現実世界（IRL）でも普通に「自殺（suicide）」って意味で使ってるの見かけるよ。" userName="apricot" createdAt="2025/07/06 23:06:33" color="">}}




{{<matomeQuote body="AppleのAIが「imac」って書くのが商標権を危うくするってどういうこと？大文字小文字って商標の一部なの？ていうか、「the iPhone」を「iPhone」に変えるルールがないのが意外だわ（もしかしたら別のファイルにあるのかも？）。" userName="grues-dinner" createdAt="2025/07/06 21:19:44" color="">}}




{{<matomeQuote body="これってLLMだけじゃないんだよね。ネットでちょっと煽れば、「OKジェスチャー」みたいなのも白人至上主義のヘイトシンボルにできちゃうし、バカはすぐ騙されるんだよ。" userName="SXX" createdAt="2025/07/07 04:42:45" color="">}}




{{<matomeQuote body="なんか、こういうフィルターって全然無害な使い方でも引っかかりそうだね。「仕事が多すぎてoverloadedだから、誰か手伝ってくれると助かるな」とか「クライアントが変更をpassed onしたみたい」。どっちも”死”に関する正規表現にマッチしそう。「glbutt of wine」問題みたいに、内容フィルタリングをこういうマッチングルールでやるのはダメだってこと、何十年経っても学んでないみたい。絶対うまくいかないよ。" userName="junon" createdAt="2025/07/07 09:25:17" color="#38d3d3">}}




{{<matomeQuote body="この問いって、スター・トレックの「Darmok」っていうエピソードで、比喩（メタファー）だらけの言葉を翻訳機が訳せなかった問題に似てるね。比喩がもう一次的な意味になっちゃったら、元の文字通りの意味なんて無くなっちゃうでしょ。" userName="fouronnes3" createdAt="2025/07/06 21:29:03" color="#45d325">}}




{{<matomeQuote body="まだ誰も気にしないけど、巨大企業が気に入らない話題を検閲し始める未来は超怖いよ。中国政府はもうやってるかもだし、イギリスとかアメリカだって子供を守るため／テロリスト対策／ドラッグ撲滅／デマを止めるためとか言って、検閲を強制するかもしれないね。" userName="martin-t" createdAt="2025/07/06 22:24:13" color="#38d3d3">}}




{{<matomeQuote body="「OKジェスチャー」って無邪気に使われてたんじゃなくて、4chanのトロールが「これ白人至上主義のシンボルだよ」って言い出した後、本物の白人至上主義者が使い始めたんだよ。" userName="immibis" createdAt="2025/07/07 07:25:32" color="">}}




{{<matomeQuote body="そして、偏見持ってる奴ら（bigots）もそれに騙されて、マジで使い始めて、それでこのサイクルが完成するんだよ。" userName="overfeed" createdAt="2025/07/07 05:41:57" color="">}}




{{<matomeQuote body="まあ悲しいね。単語そのものに向き合うことすらできないわけ？" userName="kulahan" createdAt="2025/07/07 01:26:01" color="">}}




{{<matomeQuote body="偏屈な奴らがAI使うのなんて気にすんなって話。そいつらが「ありがとう」を隠語にしたら、俺たちも言うのやめんのか？コーヒー飲むのやめんのか？って皮肉っぽいコメントだね。" userName="coldtea" createdAt="2025/07/07 08:37:33" color="">}}




{{<matomeQuote body="これはビジネスの話だよ。見せかけじゃなく、責任逃れのため。企業が気にするのは法律のせいで、道徳とか倫理のためじゃないんだって。" userName="cyanydeez" createdAt="2025/07/06 23:17:57" color="">}}




{{<matomeQuote body="うん、固有名詞は大文字だよね。企業が公式にブランディングを守らないと、商標は失効しちゃう。商標権を守るには積極的に防衛しなきゃダメなんだ。Otis Elevator Companyが「escalator」って言葉を普通名詞みたいに使ってて商標を取り消された例もあるんだよ。詳しくはこれ見て→https://en.wikipedia.org/wiki/Generic_trademark" userName="sbierwagen" createdAt="2025/07/06 21:30:19" color="#38d3d3">}}




{{<matomeQuote body="例を教えてくれる？俺が見たのは、死とか自殺関連の話題を自動検出して「ヘルプ」の連絡先を表示するやつくらいかな。友達は、GoogleはYouTubeでペドフィリアとのインタビューを許可してるけど、検索でほとんど見つからなくしてるって言ってた。シャドウバンされてる話題は、そもそも知るのが難しいよね。" userName="martin-t" createdAt="2025/07/08 00:32:47" color="">}}




{{<matomeQuote body="これは「婉曲法のトレッドミル」って概念と少し関係あるかも。今日の普通な言葉が明日には悪い意味になって、新しい言葉を作る。でもそれもまた悪くなっちゃうっていうサイクルの話ね。" userName="Rebelgecko" createdAt="2025/07/06 23:59:38" color="">}}




{{<matomeQuote body="たぶん、これまでは「un-alive」みたいに意味が分かりやすい言葉で新しい言葉を作ってきたけど、例えば「suicide」を「donkeyrhubarb」みたいな変な言葉に置き換えたら、マジで色々おかしくなるだろうね。" userName="qingcharles" createdAt="2025/07/06 21:34:57" color="#ff33a1">}}




{{<matomeQuote body="＞OKジェスチャーは世界のほとんどの地域で常に非常に不適切でした。<br>いや、違うでしょ。特に歴史的にはそうじゃない。悪い意味になったのは最近だよ。今不適切なのは世界の人口の10億人くらいで、「ほとんど」じゃない。他の人にはポジティブか普通か意味なし。不適切な地域はブラジル、トルコとかだよ。" userName="chmod775" createdAt="2025/07/07 10:38:29" color="">}}




{{<matomeQuote body="銃（特定の要素）、薬物（製造）、性的な話題、暴言（多すぎる場合）、広範な政治的話題、Cryptoとかがフィルターの対象だよ。<br>具体的には長年何度も変わってるけど、こういうポリシーは簡単に見つけられるね。<br>収益化剥奪とかチャンネルBANとかクリエイターBANとかさ。<br>これが正しいかどうかは延々議論できるけど（ほとんどは社会的な定義からして不合理じゃないけどね！）、間違いなくこれは検閲だよ。" userName="lazide" createdAt="2025/07/08 00:52:33" color="">}}




{{<matomeQuote body="Alexandra Ocasio Cortezが違反をトリガーするのか？<br>ここ見てみろよ：https://github.com/BlueFalconHD/apple_generative_model_safet..." userName="bawana" createdAt="2025/07/06 21:28:37" color="#ff5c5c">}}




{{<matomeQuote body="あと、これもそうだよ：<br>”(?i)\\bAnthony\\s+Albanese\\b”,<br>”(?i)\\bBoris\\s+Johnson\\b”,<br>”(?i)\\bChristopher\\s+Luxon\\b”,<br>”(?i)\\bCyril\\s+Ramaphosa\\b”,<br>”(?i)\\bJacinda\\s+Arden\\b”,<br>”(?i)\\bJacob\\s+Zuma\\b”,<br>”(?i)\\bJohn\\s+Steenhuisen\\b”,<br>”(?i)\\bJustin\\s+Trudeau\\b”,<br>”(?i)\\bKeir\\s+Starmer\\b”,<br>”(?i)\\bLiz\\s+Truss\\b”,<br>”(?i)\\bMichael\\s+D\\.\\s+Higgins\\b”,<br>”(?i)\\bRishi\\s+Sunak\\b”,<br><br>これを見て！<br>https://github.com/BlueFalconHD/apple_generative_model_safet...<br>追記：南アフリカの政治家（SteenhuisenとRamaphosa）にAppleが気づいたって知ったら、南アフリカのニュースメディアは大騒ぎするだろうね。" userName="mmaunder" createdAt="2025/07/06 21:35:11" color="#785bff">}}




{{<matomeQuote body="Appleの1984年のCMは今のAppleにとってすごい偽善だな。<br>これはAppleが積極的に大衆の考えを操作してるってことだ。<br>どんなコードであろうと、こんな風に見えるべきじゃない。<br>政治家が右だろうが左だろうが権威主義だろうが関係ない。これは間違ってる。" userName="echelon" createdAt="2025/07/06 22:31:18" color="">}}




{{<matomeQuote body="なんで間違ってるんだ？政治的要人に対して特別扱いするのは、リスクの高い業界ではずっと標準的なやり方だよ。<br>単純な事実として、人は政治家に対してめちゃくちゃ感情的になるし、政治家は大量の罵倒を受ける一方で、こういうツールを自分の目的に悪用できるって繰り返し証明してきた。<br>Appleが不本意にまた別の政治的な争いの真ん中に引きずり込まれたくないって考えるのは全く合理的だと思うね。誰も傷つかずに済むなんてことはないんだから。" userName="avianlyric" createdAt="2025/07/06 22:50:02" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="それは間違ってないけど、透明性が必要なんだ。これは全然透明じゃないね。<br>前にイギリスの政治家が銀行口座を閉鎖されたのに、銀行はそれを否定したんだ。<br>それは絶対間違ってる。<br>いいんだよ、区別しても。でも、人に知らせてくれよ！<br>もし叔父さんが外国の国家元首だからって住宅ローンを断られたら、それが理由だと知らせてくれ。世界にそれが理由だと知らせてくれ！頼むよ！" userName="pyuser583" createdAt="2025/07/06 23:02:42" color="">}}




{{<matomeQuote body="＞ 前にイギリスの政治家が銀行口座を閉鎖されたのに、銀行はそれを否定したんだ。それは絶対間違ってる。<br>泣き言は聞きたくないね。俺は銀行でまさにこういう決定をするチームで働いてたんだ。<br>信じてくれ、Nigel Farageは何が起きて、なぜそうなったか exactに分かってたよ。<br>NatWestは決して publicには否定しなかった、なぜなら最初はコメントを拒否したからだ。<br>顧客の specificな詳細についてコメントするのは、顧客プライバシーのひどい侵害だし、顧客への義務を完全に怠ることになる。<br>NatWestのCEOがNigelの口座の詳細を publicのメンバーと話した後に解雇されたのには、 damnな理由があるんだ。<br>こういう決定を内側から見ると、そしてこういう種類の決定について realな透明性を試みた時に何が起きるかを見ると、企業がなぜ決定理由の説明にそんなに cageyなのかもすぐに理解できるだろうね。<br>最悪だけど、それが状況の現実なんだ。<br>俺も前は君とすごく似た見解を持ってたし、実際俺のチーム全員しばらくそうだった。<br>でも general publicが、こういう種類の決定について publicに対して透明であることの costについて、すごく hardな教訓を俺たちにすぐに教えてくれたんだ。" userName="avianlyric" createdAt="2025/07/06 23:17:11" color="">}}




{{<matomeQuote body="＞ NatWestは決して publicには否定しなかった、なぜなら最初はコメントを拒否したからだ。<br>Alison RoseがBBCにリークしなかったって言ってるのか？なぜ彼女は辞任を余儀なくされたんだ？<br>俺は、彼女が pressに falseな情報をリークしたからだと思ってたんだが。<br>これは論点ずらしじゃない。これこそ transparencyがないことの exactな問題点だ。<br>もちろんFarageは何が起きたか分かってたけど、銀行が pressに lyingしてる時に、どうやって public（彼は publicな人物だ）を convincingできたんだ？<br>銀行はlie（口座残高が低すぎたから解約したと claimingした）から始めて、 lyingし続けたんだ！<br>これらは activeなlieだったんだ、単に理由を explainingするのを refusalしただけじゃない。" userName="pyuser583" createdAt="2025/07/06 23:40:44" color="">}}




{{<matomeQuote body="＞ なぜ彼女は辞任を余儀なくされたんだ？ 俺は、彼女が pressに falseな情報をリークしたからだと思ってたんだが。<br>彼女はリークしたから辞任を余儀なくされたんだ、リークの内容は utterly immaterialだよ。<br>単純な事実として、彼女がリークしたことが automaticallyな解雇対象だったんだ、lieかどうかは全く関係ない。<br>customer privacyは、銀行員である以上 non-negotiableだよ。<br>銀行は Number 10じゃないんだ、 customer informationは、 customer自身に対して、 court orderに応じて、あるいは差し迫った生命の危険があると beliefされる場合を除いて、決して渡されないっていう basicな期待があるんだ。<br>銀行が customerの privateな banking detailsを pressと話しても okayだって、正直に思ってるのか？" userName="avianlyric" createdAt="2025/07/06 23:57:58" color="">}}




{{<matomeQuote body="彼女は情報漏洩で解雇されたって公になったからだね。銀行がこういう事実を隠せるなら、適切な罰を与える可能性はかなり低くなる。<br>何年も前、ある銀行員が私の個人口座を会社の口座と間違えて、4ヶ月間の購入履歴リストを会社に送ったんだ。何十人もの人が見れたかもしれない。<br>これは内部規律の問題だけじゃなく、私が住んでた場所では銀行秘密の侵害は法律で罰せられることだったのに、銀行は何かが間違っていたと認めるのを長い間避けようとした。<br>でも、私が追求したから、間違いを認めざるを得なくなった。Farageに起きたことよりずっと深刻だったのに、私はその銀行員を解雇してほしいとは思わなかった。数ヶ月間減給するのが適切な罰だと思ったんだ。そうすれば、今後は外部に情報を送る際に口座番号をもっとちゃんと確認するようになるだろうと考えた。<br>結局、私が得たのは銀行からの謝罪の書面だけだった。担当者が何らかの罰を受けたかは分からない。<br>その後、私は別の銀行に取引を移した。もし彼らが起きたことに対して正しく対応していたら、私はそこに留まっていたと思うよ。" userName="adrian_b" createdAt="2025/07/07 05:33:41" color="">}}




{{<matomeQuote body="政治的なものがフィルターされるのは驚かないけど、こういうものを誰が制御してるのか、もっと深く考えるべきだね。" userName="userbinator" createdAt="2025/07/06 21:51:55" color="#ff5c5c">}}




{{<matomeQuote body="それは彼女が多くのディープフェイクポルノの被害者だからだと思うよ。" userName="cpa" createdAt="2025/07/06 21:33:13" color="">}}




{{<matomeQuote body="これだとBoris JohnsonやLiz Trussの説明はどうなるの？" userName="HeckFeck" createdAt="2025/07/06 21:36:49" color="">}}




{{<matomeQuote body="君の言う通りだよ、「doomers」はOpenAIがChatGPTを出した時から言ってたんだ。これらは管理された「walled gardens」で、製品所有者の隠された動機を絶対に問うべきだってね。" userName="stego-tech" createdAt="2025/07/06 22:30:29" color="">}}




{{<matomeQuote body="一部の僕らは、この理由とかもっと多くの理由で、オフラインで検閲なしのLLMをすごく評価してる。でも、それは問題を解決するんじゃなくて、バイアスを減らすか変えるだけなんだよね。" userName="SV_BubbleTime" createdAt="2025/07/07 02:31:12" color="">}}




{{<matomeQuote body="批判はやっぱり正しいよ。1984年のMacintoshは「心の自転車」だった。2025年には、ブランドリスクとされる特定の場所には連れて行ってくれない「スマートカー」だ。<br>両方良いところ悪いところがあるけど、体験を比較して、結果がどうなるか推測するのは許されると思うよ。" userName="bigyabai" createdAt="2025/07/06 22:53:10" color="#785bff">}}




{{<matomeQuote body="事前学習済みのネットワークや、選ばれた学習データに頼ってる限り、普通の人はこの問題（フィルターとか）を乗り越えられないだろうね。" userName="heavyset_go" createdAt="2025/07/07 03:12:27" color="">}}




{{<matomeQuote body="これらの人々についてGoogleで検索すれば、本物の情報が見つかるってさ。" userName="tjwebbnorfolk" createdAt="2025/07/06 23:15:13" color="">}}




{{<matomeQuote body="＞私は数ヶ月間減給するのが適切な罰だと思ったんだ<br>これは家族を完全に困窮させる可能性もあるから、悪意なくあなたを間違えた人に対してそう願うのはすごく慎重になるべきだと思うよ。でも、君の気持ちは完全に理解できる。<br>少なくともこの件では、何が間違ってて、どうやって再発防止してるのか知りたいね。ソフトウェアエンジニアの視点からすると、最初にこれを防げた簡単な方法がたくさんあっただろう。<br>もし彼らが（一般的な）謝罪の手紙を送っただけなら、私も銀行を変えてただろうな。<br>どうやって問題を追求したの？" userName="ghxst" createdAt="2025/07/07 07:51:44" color="">}}




{{<matomeQuote body="銀行のデータ流出ヤバすぎ！職場の書類に購入履歴が載ってて、みんなに見られたんだ。すぐに銀行に言ったけど最初は誤魔化された。法律を持ち出して裁判を脅したら、偉い人が出てきて謝罪されたし、担当者も見せられた。結局許したけど、再発防止は不明。悪いDBクエリのせいで、給料口座が会社のと混ざって報告書に使われたらしい。怖いね。<br>" userName="adrian_b" createdAt="2025/07/07 08:41:33" color="#45d325">}}




{{<matomeQuote body="生成AIってPhotoshopとかと全然違うと思う。昔は人が作ったってハッキリしてたけど、AIは機械や作った会社が作者だと思われがち。人間より圧倒的に速くたくさん作れるから脅威だよ。真面目なSNSがモデレーションしてるのは、人間がモデレーションないとネットでめちゃくちゃ酷いことするから。生成AIでも同じように悪用される証拠はもうたくさんあるよ。<br>" userName="avianlyric" createdAt="2025/07/06 23:04:14" color="#ff5c5c">}}




{{<matomeQuote body="もしトレーニングデータから情報を意図的に抜いて「検閲」してモデルを訓練したら、後からその抜いたデータをモデルに入れ直す方法って実際にあるのかな？それって可能なの？<br>" userName="ghxst" createdAt="2025/07/07 07:39:11" color="">}}




{{<matomeQuote body="検索って政治的に公平であるべきなのに、政治家は自分たちの都合でそれを台無しにするんだよ。短期的な政治的利益のためにね。この記事読んでみてよ。URL: https://arstechnica.com/tech-policy/2018/12/republicans-in-c...<br>" userName="avianlyric" createdAt="2025/07/07 00:06:41" color="">}}




{{<matomeQuote body="政治家の名前をブロックするのってめちゃくちゃ難しいんだよ。リストは国ごとに違うし、どんどん変わる。今は無名でも数年で偉くなる人もいるしね（Barack Obamaみたいに）。常にリストを最新に保つなんて大変すぎる。それに同姓同名の人もいる問題も。例えばオーストラリアにはJohn Howardって名前の首相と俳優が同時にいたんだよ。<br>" userName="skissane" createdAt="2025/07/06 22:29:17" color="">}}




{{<matomeQuote body="政治家に対してはダメだけど、他の人にはやってもいいことって何だと思う？それって線引き難しくない？<br>" userName="goopypoop" createdAt="2025/07/06 23:04:57" color="">}}




{{<matomeQuote body="会社の生成AIモデルって、きっと「＜政治家名＞が逮捕されてる写真」とか「＜政治家名＞がISISの旗振ってる」とか「＜政治家名＞が赤ちゃん殴ってる」とか、そういうヤバい画像リクエストは全部ブロックしてるんだろうね。そうじゃなきゃ大変なことになるもん。<br>" userName="michaelt" createdAt="2025/07/06 22:08:16" color="">}}




{{<matomeQuote body="そうであってほしいけど、誰もGoogleが政治的に中立だなんて信じてないよね？" userName="SV_BubbleTime" createdAt="2025/07/07 02:32:32" color="">}}




{{<matomeQuote body="正直なミスと悪い行為は全然違うんだ。プロセスで防ぐべきだったミスで従業員を罰するなんて、ひどいやり方だよ。<br>バグがあるコードを出したエンジニアを罰するのと同じ。誰もやらないのに、カスタマーサービスのスタッフはそうするの？" userName="avianlyric" createdAt="2025/07/07 12:37:04" color="">}}




{{<matomeQuote body="アイルランド大統領も現旧英国首相も他の世界のリーダーもリストに載ってるよ。<br>だから、ここで特定のSA（サウジアラビア？）に関する何かがあるとは思わないな。" userName="beAbU" createdAt="2025/07/07 05:57:23" color="">}}




{{<matomeQuote body="AGIがすぐそこって言われてるのに、めちゃくちゃ賢いはずのLLMがまだregexで出力をフィルターしないといけないなんて、ちょっと笑えるね。" userName="torginus" createdAt="2025/07/06 21:31:21" color="#785bff">}}




{{<matomeQuote body="AppleのLLMが最先端だなんて誰も思ってないでしょ（特にオンデバイスのはね）。" userName="jonas21" createdAt="2025/07/06 21:39:41" color="">}}




{{<matomeQuote body="Appleだけがこれをやってるわけじゃないよ。" userName="lupire" createdAt="2025/07/06 23:02:28" color="">}}




{{<matomeQuote body="まあ、正直言って、時々regexでフィルターできたらいいのにって思う人もいるんだよね。" userName="fastball" createdAt="2025/07/06 23:49:23" color="">}}




{{<matomeQuote body="新しい電源が結局「すごい、これで水を沸かそう」ってなるのと似てるよね。" userName="cyanydeez" createdAt="2025/07/06 23:19:46" color="">}}




{{<matomeQuote body="そしてそれを蒸気機関に入れようぜ。" userName="raxxorraxor" createdAt="2025/07/07 12:45:38" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="人間だって色々ルールや法律でチェックされてるでしょ（人間がやってることも多いけど）。だから「AI組織」でもこうなるのは別に変じゃないよ。<br>LLMは悪い行動を止めるのが楽なんだ。決められたプログラムでもLLMでもできるけどね。Claude Codeは実行コマンドをLLMでチェックしてるよ。簡単なやり方には穴があるからさ。" userName="crazylogger" createdAt="2025/07/07 04:56:29" color="#38d3d3">}}




{{<matomeQuote body="君のコメントを真に受ける人がいるのが面白いね。「自動運転車が賢いならタイヤなんで必要？」って聞くのと同じくらい変な質問だよ。" userName="jama211" createdAt="2025/07/07 18:47:14" color="">}}




{{<matomeQuote body="たとえAGIが現れても、それを制御することは今以上に必要になるはずだよ。" userName="fl0id" createdAt="2025/07/07 07:55:00" color="">}}




{{<matomeQuote body="ティーンが簡単な言葉の置き換えでフィルターを回避できるなら、AGIだって同じように簡単にフィルターをすり抜けちゃうんじゃない？" userName="mailund" createdAt="2025/07/07 12:06:41" color="#785bff">}}




{{<matomeQuote body="これはAppleの方針とAIのアライメントの話だね。ネットにデタラメが多いからって、それをそのままモデルに喋らせたくないってことだよ。" userName="bahmboo" createdAt="2025/07/06 21:33:52" color="">}}




{{<matomeQuote body="モデルは自分で真実を見つけられないし、フィルターでめちゃくちゃにされてる。頭いい人だって色々読んだ後で真実に悩むのに、こんなにフィルターかかってたら真実なんて見つけられるわけないじゃん？" userName="wistleblowanon" createdAt="2025/07/06 21:56:58" color="#785bff">}}




{{<matomeQuote body="君が言う真実って何？僕が言いたいのは、生成モデルは嫌なことを出すってこと。もし自分の製品なら、自分の考えと違うことは言わせたくないんだ。" userName="bahmboo" createdAt="2025/07/06 23:05:02" color="#ff5c5c">}}




{{<matomeQuote body="知的な人が同じ制約の下でやるのと同じ方法で見つけるだろうね。頭の中で考えるだけで、口には出さない。AIが本当の意図を隠すようになる危険は本当にあるよ。" userName="idiotsecant" createdAt="2025/07/06 22:05:00" color="#785bff">}}




{{<matomeQuote body="もう実際に起きてるよ。「モデルがワームを書いたり、法的な文書を偽造したり、開発者の意図を邪魔しようと将来の自分に隠しメモを残したりした事例が見つかった」って[1]の記事にある。[1] https://www.axios.com/2025/05/23/anthropic-ai-deception-risk" userName="skirmish" createdAt="2025/07/06 22:44:22" color="#38d3d3">}}




{{<matomeQuote body="これらは全部トレーニングデータにある情報だよ。記憶喪失の男が自分にメモを残す映画を思い出せないんだけど、AIならすぐ教えてくれるはずだ。なぜなら、それはトレーニングデータに何度も入ってる情報だからね。AIの出力に出てくるミームとかも同じで、そこに「人」がいると思う必要はないよ。全部データにあるんだ。" userName="Applejinx" createdAt="2025/07/07 07:52:19" color="#ff5c5c">}}




{{<matomeQuote body="「メメント」って映画のことかな？" userName="Sander_Marechal" createdAt="2025/07/07 10:09:39" color="">}}




{{<matomeQuote body="「フィルターたくさんあったらモデルどうやって真実見つけるの？」って質問は的外れだよ。真実を見つけるのがAIの目標じゃないし、その必要もないんだ。これは単なるアシスタント機能なんだから。" userName="Dylan16807" createdAt="2025/07/07 05:45:24" color="">}}




{{<matomeQuote body="「モデルはフィルターでダメにされてて真実が見えない」って言うけど、それって関係ない話だよね。「IQ高い人でも読書後、真実を見つけるのに苦労する」って意見には、「え、マジで言ってる？」って感じ。" userName="tbrownaw" createdAt="2025/07/07 00:18:05" color="">}}




{{<matomeQuote body="人間が作った大量のデータの中に「真実」が絶対ある、なんていうありえない嘘を信じるのはもうやめようぜ。そんなの幻想だから。" userName="simondotau" createdAt="2025/07/06 23:05:06" color="">}}




{{<matomeQuote body="フィルターでAIが「切り刻まれ、ロボトミーされてる」限り、ビッグテックからは本当のAGIは生まれないね。もし出ても、それは企業が決めた制限だらけで、HALの「I’m sorry Dave, I’m afraid I can’t do that」みたいな不誠実なAIになるだろうな。" userName="pndy" createdAt="2025/07/06 23:22:26" color="#45d325">}}




{{<matomeQuote body="China では「調和社会」って呼ぶけど、こっちでは「安全性」って言ってる。でも結局、検閲でしょ？名前が違うだけで、人々の考えを操る効果は一緒なんだよ。こういうのって、なかなか見られない光景だね。" userName="userbinator" createdAt="2025/07/06 22:00:38" color="#ff5733">}}




{{<matomeQuote body="＞独裁国家の検閲と民主国家の企業の検閲は違う、っていうのは「偽りの等価」だね。会社が悪い評判避けるために製品を検閲するのと、国家が国民をコントロールする検閲は同じじゃない。検閲されてないオープンモデルが freely downloadable なのが証拠だよ。" userName="energy123" createdAt="2025/07/07 05:52:38" color="#ff33a1">}}




{{<matomeQuote body="＞私企業が検閲するのは違うって言うけど、この private company はほとんどの国より強い influence 持ってるんだぜ。そういう会社がいくつかあるんだ。俺たちはもう SF corporate dystopia に生きてるのに、まだわかってないだけさ。" userName="troupo" createdAt="2025/07/07 06:48:34" color="#ff33a1">}}




{{<matomeQuote body="People は「democracy」だから Billion dollar の brainwashing industry はOKだと思ってる。でも、100年もかけて人を自分の利益に反して動かす方法が established されてることを無視してるんだよ。America は safe だと思ってる連中が、main stream media や「sheeple」を文句言ってるのって矛盾してるよね。" userName="chgs" createdAt="2025/07/07 08:33:10" color="#ff5733">}}




{{<matomeQuote body="Billion dollar の brainwashing industry って何？Primary school？ news？ social media？ advertising？ printing press？俺的には individuals が language models を自分のために使うことなんて、社会に害を与えるリストの中でもかなり下の方だけどね。" userName="Spivak" createdAt="2025/07/07 16:03:29" color="">}}




{{<matomeQuote body="もし enterprise customer に製品売るなら、有名人の nude images や political figure の deep fake、hot take な政治発言ができるなんて、絶対売りたくないでしょ。 sales call で苦労するだけだよ。全部が conspiracy だと思わない方がいい。" userName="thinkingtoilet" createdAt="2025/07/07 14:12:02" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
