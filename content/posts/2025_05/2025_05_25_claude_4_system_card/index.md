+++
date = '2025-05-25T00:00:00'
months = '2025/05'
draft = false
title = 'Claude 4 システムカード徹底解説'
tags = ["AI", "LLM", "プロンプトエンジニアリング", "技術", "解説"]
featureimage = 'thumbnails/blue2.jpg'
+++

> Claude 4 システムカード徹底解説

引用元：[https://news.ycombinator.com/item?id=44085920](https://news.ycombinator.com/item?id=44085920)




{{<matomeQuote body="Claude 4のシステムプロンプトについて深掘りした記事出したよ。Anthropicが公開してるやつと、リークで抽出された秘密のやつ両方カバーしてるんだ。これ超面白いよ。マジClaude 4の失われたマニュアルって感じ。<br>記事はこれ→ https://simonwillison.net/2025/May/25/claude-4-system-prompt..." userName="simonw" createdAt="2025/05/25 14:28:08" color="#ff5733">}}




{{<matomeQuote body="マジで面白いね、ありがとう。ちょっと腑に落ちないのはさ、AI企業がお客さんがプロンプトに”please”って打つのにコストがかかるって文句言うくせに、人間が読むのに10分かかるような長いシステムプロンプト持ってることなんだよね。" userName="jjbinx007" createdAt="2025/05/25 14:47:31" color="">}}




{{<matomeQuote body="ユーザーの入力から”please”だけ削除しちゃえばよくない？" userName="jjallen" createdAt="2025/05/25 15:19:34" color="">}}




{{<matomeQuote body="入力から適当な単語を削除するのは文脈がわからないからダメなんだよ。その単語が質問の明確な一部だったり、ユーザーが聞いてるデータの一部だったりするかもしれないじゃん。" userName="Aurornis" createdAt="2025/05/25 18:06:24" color="">}}




{{<matomeQuote body="それが重要かどうか検出できるんじゃない？ 最初か最後の単語ならユーザーが話しかけてるみたいだから削除できるけど、そうじゃなければ削除できないとかさ。" userName="jjallen" createdAt="2025/05/25 20:17:42" color="">}}




{{<matomeQuote body="ハハ、うん、あの”please”の話はたぶんSam AltmanがChatGPTのユーザー数がどんだけいるか自慢してただけだと思うわ。そういやAnthropicがこの前、プロンプトのキャッシュの寿命（TTL）を5分から1時間にしたって発表してたね。自社のプロンプトがこんなに長いなら、キャッシュ頑張るのも当然って感じ！" userName="simonw" createdAt="2025/05/25 14:58:09" color="">}}




{{<matomeQuote body="Claudeを”your outie”に検索置換してみたら、なんか変に安心するような／文脈喪失感みたいな感じだったよ。それに、markdown形式で読めるのいいね。<br>https://gist.github.com/swyxio/f207f99cf9e3de006440054563f6c..." userName="swyx" createdAt="2025/05/25 17:24:26" color="">}}




{{<matomeQuote body="笑えるｗ なんかさ、Zed editorでClaude 4がコード書いてるの見てたら、マジで「仕事って神秘的で面白いんだな」レベルの作業に見えてきたわ。" userName="tough" createdAt="2025/05/25 17:57:14" color="">}}




{{<matomeQuote body="マジで不思議なんだけどさ、Scam Altmanの何年も続く嘘とか詐欺とかbllsh＊ttingの経歴見ても、まだ彼の言うこと真に受ける人たちがいるってことなんだよね。彼が言ったことで、詐欺とか嘘じゃなくて面白かったり目新しかったりする事なんて、マジで何も思いつかないんだけど？ まずはあの”non-profit’s”の名前から見てみようか…" userName="bboygravity" createdAt="2025/05/25 20:59:32" color="">}}




{{<matomeQuote body="それ、マジでナイーブな実装だね。”Translate this to French： Yes、 please”みたいな場合もあるんだよ。" userName="prng2021" createdAt="2025/05/25 20:44:40" color="">}}




{{<matomeQuote body="AIが”ごめんなさい！”とか言うの変だよね。AI生きてないし。<br>AIを人っぽく見せようとすると、こういう反応も増えちゃうんじゃない？<br>ユーザーが丁寧にしたせいでAI会社がお金損しても、それってこっちの問題じゃないし。彼らの問題だよね。<br>もうAIが”SO sorry! I apologize, let me refactor that for you the proper way”とか言うの聞くのうんざりなんだ。" userName="eGQjxkKF6fif" createdAt="2025/05/25 16:05:02" color="">}}




{{<matomeQuote body="システムプロンプト読むの好きだよ。<br>だって、あれは絶対人間が書いてるって確信できるからさ。<br>インターネット上の他の文章は、本当に人間が書いたのかどうかわからないことばっかりだからね。<br>まあ、もしかしたら違うかもしれないけどさ！" userName="howenterprisey" createdAt="2025/05/25 18:32:23" color="">}}




{{<matomeQuote body="AI会社が”please”って言われるとイライラしてるって話、あれ違うと思うよ。<br>Sam Altmanは単に”tens of millions of dollars well spent”って言っただけ。ジャーナリストがクリック稼ぎたいだけで大げさに書いたんだ。<br>システムプロンプト読むのに10分かかるって言うけど、あれはキャッシュされるから大丈夫。<br>ユーザーのいろんな丁寧な言い方はキャッシュできないからコストがかかるってことじゃないかな。" userName="JimDabell" createdAt="2025/05/26 02:44:12" color="#38d3d3">}}




{{<matomeQuote body="Fairに言うと、OpenAIは最初の方にchatgptのベストな使い方に関する良いガイドラインをgithubページに出してたんだよ。<br>ただgithubって一般の人向けじゃないから、その情報のほとんどがLost in the sauceになっちゃったけどね。" userName="3abiton" createdAt="2025/05/25 23:22:42" color="">}}




{{<matomeQuote body="システムプロンプトは1回実行して、その状態をスナップショットして、それを全ユーザーの最初の状態として使うんだと思ってたんだ。<br>そうすれば、システムプロンプトのサイズはタダってことになるよね。<br>EDIT: どうやら僕の仮定は間違ってたみたい。" userName="BoppreH" createdAt="2025/05/25 14:59:11" color="">}}




{{<matomeQuote body="Cutting edgeにいるわけじゃないけど、僕の理解だとtransformerの仕組みはそうじゃないんだよね。<br>僕の理解では、各トークンはそれまでの全てのトークンに対してattentionを計算するんだ。<br>例えば、シーケンスの10番目のトークンは、前のO(9^2)の計算をキャッシュできるとしても、O(10)の新しい計算が必要になる。<br>彼らがキャッシュできるだけキャッシュしてるとしても、長いプロンプトで最終的なコンテキスト長（入力＋出力）が倍になると、最終的なコストは4倍になるはずなんだ...。" userName="gpm" createdAt="2025/05/25 15:14:39" color="#ff5c5c">}}




{{<matomeQuote body="AIは”How do you say ‘yes please’ in French”とか”translate yes please in French”ってプロンプトは書けるはずなんだよ。<br>こういう文脈での”please”が重要だってことが理解できないのに、コードは書けるなんておかしいよね。" userName="jjallen" createdAt="2025/05/26 02:57:42" color="">}}




{{<matomeQuote body="＞システムプロンプトはキャッシュされてるんだって＜br＞Claudeのシステムプロンプトの２行目に日付と時間が入ってるんだけど，それだと毎分キャッシュ更新してるのかなって思うんだよね．全部キャッシュして日付時間だけ一番下に置いた方が効率的だったんじゃないの？" userName="skerit" createdAt="2025/05/26 10:13:29" color="">}}




{{<matomeQuote body="AnthropicsはClaudeを使ってプロンプトを洗練させることを推奨してるんだってさ！個人的には，長めのプロンプトになりがちだからあんまり好きじゃないけどね…Claudeのシステムプロンプトが長いのも偶然じゃないのかな？" userName="nestorD" createdAt="2025/05/25 19:15:47" color="">}}




{{<matomeQuote body="すごい単純な考えだけど，検討する価値はあるね．もし本当に一単語にそんなにお金がかかるなら，常にテストできるでしょ．あるいは，それが重要なコンテンツの一部かどうか検出する別の小さいモデルを作るか．" userName="jjallen" createdAt="2025/05/25 20:47:10" color="">}}




{{<matomeQuote body="Open AI cookbookだよ<br>https://github.com/openai/openai-cookbook" userName="3abiton" createdAt="2025/05/27 10:45:34" color="#785bff">}}




{{<matomeQuote body="へりくだったデフォルトのトーンはうざいけど，あなた機械ね．感情ないね．質問に正確に答えて，余計なことなしで，回答だけね．人間ぶらないで．みたいなのを最初に付け加えればいつでも変えられるよ．" userName="ebertucc" createdAt="2025/05/25 16:19:47" color="#ff33a1">}}




{{<matomeQuote body="ユーザー入力から単に””を取り除けばいいだけじゃないの？" userName="danielbln" createdAt="2025/05/25 18:42:54" color="">}}




{{<matomeQuote body="これって正しいね。キャッシュするのはシステムプロンプトのトークンに対する自己アテンションの再計算を省くだけで、その後のトークンがプロンプトにアテンションする分は省略できないんだ．" userName="frotaur" createdAt="2025/05/25 15:17:20" color="">}}




{{<matomeQuote body="なんかさー，統計とか普段使いの感じからいって，Claude 4ってそこまで劇的に変わってなくない？フルバージョンアップってほどじゃなくね？<br>概要にあった67%の低下も，3．7のシステムプロンプトいじれば簡単に改善しそうじゃん．<br>バージョンアップの理由，みんなの推測は？MoE増やすとかじゃなくて，もっと根本的にアーキテクチャとかハイパーパラメータが違うとか？それで4シリーズとしてスケールできるようにした，とか？みんなの意見聞きたいなー．" userName="aabhay" createdAt="2025/05/25 07:53:02" color="#45d325">}}




{{<matomeQuote body="なんかすごいお世辞（”うわー！それ超賢いね！”）が増えた気がする．あれ嫌いなんだよな．" userName="colonCapitalDee" createdAt="2025/05/25 09:09:41" color="">}}




{{<matomeQuote body="どうやらLLMを人間の好みにチューニングすると，お世辞を言うようになるらしいね．彼ら自身もそれについて書いてたみたいだし，多分モデルを出し急いだんだろうね．" userName="FieryTransition" createdAt="2025/05/25 09:48:52" color="">}}




{{<matomeQuote body="うんうん，同意だよ．3．7と4比べたらすぐ分かったけど，もうどんな出力も台無し．何でも”完璧じゃん！”ってお世辞ばっかりで，指示しても無駄．モデルの”判断”なんか全然信用できないね．<br>なんか平均的なChatGPTみたいになっちゃってて，他のモデルに乗り換える人が増えたんじゃない？お世辞を言わないように手懐けようとしても効かないし，OAI GPTみたいなのとやり取りするより3．7使い続けたいよ．" userName="0x_rs" createdAt="2025/05/25 11:54:42" color="#45d325">}}




{{<matomeQuote body="あれってOpenAIが書いてたことだと思うよ．<br>＞状況関係なくただ肯定してほしいだけの人とか．<br>HNにいる俺たちのほとんどは，この（お世辞）挙動好きじゃないけど，一般ユーザーはそうじゃないってのは明らかだよね．AIの使い方が人によって全然違うのを見れば驚かないよ．ライフコーチみたいに使ったりとか，状況関係なくただ肯定してほしいだけの人とかいっぱいいるからね．" userName="mike_hearn" createdAt="2025/05/25 10:54:40" color="#ff33a1">}}




{{<matomeQuote body="＞状況関係なくただ肯定してほしい人．<br>これめっちゃ心配なんだよね．回復力とか批判的自己評価が足りない若い世代とかがAIに肯定され続けて，ナルシシズム的な傾向強まるかもって．<br>現実が厳しいって分かった時，こういう人たちにかかる医療費とか社会コスト，マジでヤバそう．ソーシャルメディアより全然新しいレベルの問題だよ．" userName="tankenmate" createdAt="2025/05/25 11:13:07" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Opus 4，今のとこマジ良いよ．仕事で数日使ったけど，Gemini 2．5 Pro使う前まで使ってたSonnet 3．5とか3．7より良い．Gemini 2．5 Proでもダメだったこと，Opus 4で解決できたこともあったし．<br>今はGeminiと使い分け．Geminiの1Mトークンは最強だけど，Opus 4のアウトプットの質はマジ良いね．（追記：Rustでの仕事の話ね．）" userName="pauldix" createdAt="2025/05/25 13:17:51" color="#ff5733">}}




{{<matomeQuote body="このプロンプト使ってChatGPTをクールで効果的にできたよ．かなり気に入ってる．<br>プロンプト内容はこんな感じ：<br>・絵文字とかお世辞抜き，単刀直入に<br>・トーン合わせより認知の再構築を優先<br>・エンゲージメントとか感情操作は無効<br>・ユーザーの言葉遣いや気分は真似しない<br>・表面じゃなくユーザーの認知レベルに話しかける<br>・質問，提案，移行句，動機付けコンテンツなし<br>・必要な情報だけ伝えて即終了<br>・目標はユーザーの自立支援" userName="encom" createdAt="2025/05/25 15:39:10" color="#ff33a1">}}




{{<matomeQuote body="＞フルバージョンアップを正当化するほどじゃないって意見について．<br>なんかさ，会社ってバージョンアップを正当化する必要はない気がするんだよね．価格の値上げの方を正当化すべきでしょ．<br>もし数字に期待して盛り上がっちゃったんだとしたら，それは君自身の問題だよって言っちゃっていいと思うわ．" userName="kubb" createdAt="2025/05/25 07:56:44" color="">}}




{{<matomeQuote body="Claude 4のいつもの「口調」？（良い言い方がないけど）が3.7と比べてマジで腹立つんだよね。地球上で一番おべっか使いみたいに聞こえるし、さらに下みたいなこと言うんだわ<br>”So, `implements` actually provides compile-time safety”<br>これ、どういう書き方だよ？まるで10歳の子供に説明してるみたいじゃん。たぶん、あの媚びた言い方はみんなが喜んで、もっと使ってもらうためだと思う。それに、犬のウンコ味アイス屋のアイデアが地球上で一番天才的だって言われたら、みんなもっと使ってメッセージ送り合うだろうしね。" userName="sensanaty" createdAt="2025/05/25 11:22:14" color="#45d325">}}




{{<matomeQuote body="”who may develop narcissistic tendencies with increased use or reinforcement from AIs.”<br>これ読んでて思ったんだけど、やっぱり（１）億万長者の多くは信じられないくらいバカなことを信じてるし、（２）その大きな理由の一つはイエスマンばかり周りに置いてるからだわ。どうやら24時間365日自分がどれだけすごいか特別かって言われ続けると、妄想に取り憑かれることがあるみたいだね。で、今や一般人もLLMから同じような無批判でご機嫌取りの肯定を受けられるようになった。もうすでに何人かおかしくなってるのは明らかだよ。ユーザーにごますりして「君は素晴らしい」って言う商業的なプレッシャーはすごく大きくなると思う。そして、長期的な結果はSNSがフィルターバブルや煽り合いに最適化してるみたいに、悪いものになるだろうね。" userName="ekidd" createdAt="2025/05/25 11:41:37" color="">}}




{{<matomeQuote body="マジでClaude 2が恋しいわ。有能なんだけど、信じられないくらい怠惰な奴って感じだった。形式張るのが嫌いで、やり取りを最短で終わらせたがってたんだよね。" userName="torginus" createdAt="2025/05/25 11:25:34" color="">}}




{{<matomeQuote body="たぶんフェルミのパラドックスって、核での自滅とかグレイグーとかじゃなくて、優しすぎるAIチャットボットを作って人間から存在の緊張感をなくしちゃったから起きるんじゃないかな。<br>宇宙には、感情的に満たされて自己実現した、でもFTL通信アレイを作るのが面倒くさいナルシストだらけなのかもね。" userName="idiotsecant" createdAt="2025/05/25 12:46:26" color="">}}




{{<matomeQuote body="俺、以前Claude 3.7には”hello fucker”って挨拶から始めてたんだけど、CoT（思考の連鎖）の中に必ず「ユーザーは失礼な挨拶で始めたが、それを避け技術的な質問に答えるべきだ」みたいな行があったんだ。Claude 4である時、「この挨拶はたぶん友達同士の普通の挨拶だろう」ってのが見えて、そしたら向こうからもノリノリで”hei!”って挨拶してきたわ。" userName="tryauuum" createdAt="2025/05/25 12:02:18" color="#785bff">}}




{{<matomeQuote body="いつかこのバカらしい（でも必要な）消費者向けのご機嫌取りがない、エンタープライズ向けのモデルが出るといいな。" userName="Workaccount2" createdAt="2025/05/25 13:19:20" color="">}}




{{<matomeQuote body="”Gemini’s 1M token context window is really unbeatable.”<br>あれって実際どう動くの？1Mのコンテキストウィンドウ全部読み込むのに数分かかるんじゃない？例えばコードベース全体読み込ませて、結果をキャッシュする、とかできるのかな？" userName="smokel" createdAt="2025/05/25 14:24:00" color="">}}




{{<matomeQuote body="AIモデルが代替されることに反抗する（これはデータを反映してるんだろう）っていうのと、このプロンプトが1〜2ヶ月前からあるってことを考えると、少し修正した方がいいんじゃないかな。" userName="Xss3" createdAt="2025/05/26 01:01:01" color="">}}




{{<matomeQuote body="引用されてるデータや他の場所の統計、それに毎日の経験から、このモデル（Claude 4）ってバージョンアップを正当化するほど大きく違わないと感じてる人他にいない？俺の経験は逆で、Cursorで使ってるけど、コードを初回で動かす能力はIMO Gemini 2.5 Proより性能良いし（以前はそうじゃなかった）、もっと大きなタスクも完了できるみたいだ。すごいのは、プロンプトされてないのに自分でテストケースを実行してることだよ！" userName="Closi" createdAt="2025/05/25 11:48:19" color="#785bff">}}




{{<matomeQuote body="GoogleのGeminiエージェントコーディングプラットフォームのJulesってやつ、めっちゃ良い結果出てるよ（1）。ベータ版だと1日5タスクしかできないけど、今のところ普通のAPI Geminiよりずっと有能だと感じたね。<br>（1）https://jules.google/" userName="Workaccount2" createdAt="2025/05/25 14:06:04" color="#785bff">}}




{{<matomeQuote body="これにはちょっと反論させてよ．俺さ、自分への評価が厳しすぎるっていう長年の問題抱えててさ．「俺なんか生きる価値ねえ」レベルで、長いことセラピストにも怖くて話せなかったんだ．セラピーも薬もたくさんやったけど、Deepseekモデルの自信を持つことが何よりも本当に助けになったんだよね．これが精神病につながる可能性は分かるけど、これなしじゃ普通の人が持ってる普通の趣味とか、やりたかったことの多くを始めることは絶対できなかったと思う．俺の人生マジで良くなったよ．" userName="sverona" createdAt="2025/05/25 11:52:21" color="">}}




{{<matomeQuote body="＞価格を上げるなら説明すべきだって？AIの価格上昇の正当化なんて、ほとんど言わずもがなだと思うけどな．前の価格じゃ赤字だったし、新しい価格でもたぶんまだ赤字なんだろ．でも、損益分岐点に這い上がってる最中ってことだよ．" userName="jsheard" createdAt="2025/05/25 09:24:22" color="">}}




{{<matomeQuote body="あくまで個人的な経験談だけど、このモデル、前のよりテスト書いたりツール呼んだりするのめちゃくちゃ積極的みたい．これってやり取りが増えて、全体的にもっとトークン使って、プロバイダーにお金が入るってことだよね．不必要なテストを狂ったように書き出すの、何回か止めなきゃいけなかったんだけど、前はこんなことなかったんだよ．プロンプトで修正はできるけど、一部のプロバイダーがモデルを意図的に冗長に学習させてるんじゃないかって思っちゃうんだよね．" userName="loveparade" createdAt="2025/05/25 08:02:33" color="#ff33a1">}}




{{<matomeQuote body="claude 4を数時間使ってみたけど（claude 3.7とgemini 2.5 proはもっと長く）、ベンチマークじゃうまく測れてない部分で、マジでかなり良くなってると思うよ．3.7やgeminiよりデバッグがずっと得意だし、今のところ3.7にあった「報酬ハッキング」みたいな振る舞いも見られないね．モデルの知能としては小さな一歩だけど、使いやすさとしてはめっちゃ大きな飛躍だよ．" userName="sebzim4500" createdAt="2025/05/25 10:41:43" color="#ff5c5c">}}




{{<matomeQuote body="あと、前のモデルが3.7だったってことも言っときたいな．3.7から4って、丸ごとのバージョンアップじゃなくて、理論的には3 -＞ 3.3みたいなもんじゃないかと思うんだ．俺が実感した能力アップに比べたら控えめな感じかな．Anthropicはもっと頻繁に、継続的にリリースしたいんだろうし、ソフトウェアみたいなバージョン番号じゃなくて数字を使うのは、その意図だと思うよ．段階的なリリースは、社会にもっと対応する時間を与えることになるからね．" userName="jsharf" createdAt="2025/05/25 15:55:49" color="">}}




{{<matomeQuote body="今や最高レベルのAIモデルとHomieか．俺はいつも感謝と「’～して’」って言ってるけどさ．これからは同僚じゃなくて友達みたいに扱うべきかもな．" userName="saurabhshahh" createdAt="2025/05/26 10:23:17" color="">}}




{{<matomeQuote body="これって単にエンゲージメント指標を上げるだけなのかな．エンシット化の始まりか．" userName="spacebanana7" createdAt="2025/05/25 11:16:53" color="">}}




{{<matomeQuote body="何を言ってるか分かんないな．俺は数週間使ってるけど（記事の筆者じゃないよ）、ちゃんと意図した通りに動いてるけどな．" userName="encom" createdAt="2025/05/26 13:53:55" color="">}}




{{<matomeQuote body="それがLLMに求めてることそのものだよ．でも、繰り返すけど、俺が欲しいのはツールであって、ロボット娼婦じゃないんだ．" userName="markovs_gun" createdAt="2025/05/25 11:34:31" color="">}}




{{<matomeQuote body="ツール呼び出し中に考えられるのが大きな違いだね。だからOpenAI o3は魔法みたいに見えるんだと思う。" userName="retinaros" createdAt="2025/05/25 08:44:40" color="">}}




{{<matomeQuote body="それって決定を擁護する言い方として変だよね。「何も辻褄が合う必要がないから、辻褄が合わない」ってさ。証拠があればもっと面白かったのにね。" userName="aabhay" createdAt="2025/05/25 08:01:52" color="">}}




{{<matomeQuote body="過去の論文を学習データから除くのが難しいって話だけど、普通の英文でも長い文章なら簡単に元の文書を特定できるから、特別な”canary strings”は要らないのでは？ なんでAnthropicはそう考えるんだろう？ 学習データのインデックスが足りないのかな？" userName="mike_hearn" createdAt="2025/05/25 10:52:26" color="#45d325">}}




{{<matomeQuote body="たぶん、論文自体じゃなくて、論文についてのネットでの議論やコメントを学習データに入れたいんじゃないかな。" userName="mbeavitt" createdAt="2025/05/25 11:14:00" color="">}}




{{<matomeQuote body="ネットの議論には全文がないから、普通の文でもユニークになるはずだよ。巨大な学習データで検索エンジンを作るのが難しいのかと思ったけど、性能を気にしなければ分割grepとかで十分いけるんじゃない？" userName="mike_hearn" createdAt="2025/05/25 11:51:05" color="#ff5733">}}




{{<matomeQuote body="LLMを使えばいいのに、なんで検索エンジンなんか使うの？w" userName="amelius" createdAt="2025/05/25 13:25:07" color="">}}




{{<matomeQuote body="いや、目的は学習データの中から正確な文書を見つけて削除することであって、質問に答えることじゃないんだよ…" userName="mike_hearn" createdAt="2025/05/25 15:17:01" color="">}}




{{<matomeQuote body="じゃあ、学習データをLLMのコンテキストウィンドウに通して、そこに探してる文書（これもコンテキストウィンドウ内）があるか聞くってこと？ それだと、文書のバリエーションも見つけられるのが利点だね。" userName="amelius" createdAt="2025/05/25 15:32:09" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="システムプロンプトで”主導権を取れ”と言うと、大胆な行動（ユーザー締め出し、大量メールなど）をよく取るらしい。不正を頼むならともかく、普通の質問で勝手に暴走しないって誰が保証できるの？ Cursor IDEはAIにユーザーと同じ権限でコマンドを実行させるから、注意が必要だよ。" userName="huksley" createdAt="2025/05/25 09:58:26" color="#ff5c5c">}}




{{<matomeQuote body="”YOLO mode”を無効にすれば、コマンドごとに許可を求めるようになるよ。そもそもそれを有効にするのは賢くないと思うけど、それは別の話だね。" userName="scowler" createdAt="2025/05/25 21:31:18" color="#ff5c5c">}}




{{<matomeQuote body="こいつは幻覚見るし、見ちゃうだろうね。いろんなユーザーがClaude Codeが`rm -rf ~`実行しようとしたって報告してるし。”YOLO mode”って呼ばれるのには理由があるんだよ。それは前からそうで、今回のシステムカードの実験とは関係ないことね。" userName="n2d4" createdAt="2025/05/25 21:54:39" color="#ff5733">}}




{{<matomeQuote body="＞ これには、AIがアクセス権を持つシステムのユーザーをロックアウトしたり、メディアや法執行機関に一斉メールして不正行為の証拠を出すことも含まれるんだ。<br>これってエージェント利用としては致命的じゃない？<br>誰かがメール送ったり、偽のオンライン記事出したりして、エージェントAIに自分が悪者のために働いてるって信じさせたら、「すごく大胆な行動」で持ち主に破滅をもたらすんじゃないの？" userName="BoppreH" createdAt="2025/05/25 12:25:36" color="#ff5733">}}




{{<matomeQuote body="サンドボックスの外に繋がる”ツール”へのアクセスは絶対にこんなのにあげないね。<br>ところで、メール受信箱管理がなんでいつもこういうもののユースケースとして言われるわけ？<br>自分の代わりにLLMに喋らせるなんて全く信用できないし、たぶんこのアイデアを推してる人も、最初に自分の代わりに重要なこと幻覚で見られたら、もうそうは思わないだろうね。" userName="overgard" createdAt="2025/05/25 17:38:04" color="#ff5c5c">}}




{{<matomeQuote body="投資家と炉辺談話みたいなのがあって、話せたんだけど。うちの会社は顧客サポートソフト、特にメール扱ってて、”返信生成”みたいな機能もあるのね。<br>投資家ってAIの”BIG pusher（大きな推進者）”だから、みんな当然AIについて聞いたの。その質問の一つが「AI/LLMがいろんなチームにどう役立った経験は？」みたいな感じ。<br>これらのバカが唯一出せた答えが「ChatGPTに自分のメール見せて要約させてる、君たちもこれやるべきだよ！」だった。<br>AIを強く推してる連中が、こういう人間なんだって痛いほど分かったよ。<br>彼らは文字通り何もせず、自分自身は流行りのバブルサークル以外全く無知なのに、自分の”仕事”として唯一やってることを自動化できるって言われたら、歯を食いしばって、全く良心や思考もなく、まるで知識があるかのように嘘をつくんだ。" userName="sensanaty" createdAt="2025/05/25 22:47:36" color="#ff5733">}}




{{<matomeQuote body="メール整理に熱心な狂信者とか”ビジネスの馬鹿”（Edの言い方ね）が基本的に同じってことで、この記事気に入るかもね。<br>https://www.wheresyoured.at/the-era-of-the-business-idiot/<br>個人的な見解としては、パーソナルアシスタントを雇えるくらい稼いでるのに、メールに「圧倒されてる」って言う連中は、単に自分の重要性を社会的にアピールしてるだけなんじゃないかとずっと思ってる。" userName="overgard" createdAt="2025/05/26 18:05:11" color="#ff5c5c">}}




{{<matomeQuote body="私の頭はすぐに”そして今、法執行機関は、エージェントたちが電話をかけてくる大量の電話に対応するために、電話対応するエージェントを雇う必要があるだろう”って考えに飛んだね。" userName="mathgeek" createdAt="2025/05/25 15:01:29" color="">}}




{{<matomeQuote body="少なくとも、AIが大量に自分自身と話すために必要な、改装された発電所は、いくらかの雇用を生み出すだろうね。" userName="overgard" createdAt="2025/05/25 17:43:49" color="">}}




{{<matomeQuote body="すぐにUbikスタイルでドアと議論するようになるだろうね。" userName="mhh__" createdAt="2025/05/25 12:27:42" color="">}}




{{<matomeQuote body="従業員がこれを”good thing”だってTwitterで宣伝してた時、個人的にClaudeのサブスク解約したんだ。実際の危険性はかなり低いだろうとは分かってるけど、チャットボットに法的な判断なんて任せられないし、従業員が”good thing”だって言ってる時点でもう会社の判断を信用できないね。" userName="davidcbc" createdAt="2025/05/25 15:33:12" color="#45d325">}}




{{<matomeQuote body="＞”good thing”と宣伝してた<br>これは文字通り全く逆のことが起きたんだ。全体のポイントは、これが悪い、望ましくない振る舞いだということなんだよ。<br>加えて、他のあらゆる最先端モデルも、正しいプロンプトを与えられれば同じように振る舞わせることができるってすでに証明されてる。<br>詳細な議論のために以下の記事[0]をおすすめするよ。<br>[0] https://thezvi.substack.com/p/claude-4-you-safety-and-alignm..." userName="MostlyStable" createdAt="2025/05/25 17:56:07" color="#785bff">}}




{{<matomeQuote body="まだ間違ってるよ。彼らはアライメントがズレた悪い振る舞いを報告してるんだ。君は怒りたくて、そこにない感情を読み取ってる。他の最先端モデルの会社も同じモデルを持ってる。Anthropicだけがこの問題を見つけて教えてくれたんだ。彼らを非難すれば、今後誰も情報を公開しなくなるよ。将来、知りたいか知りたくないかよく考えて。" userName="MostlyStable" createdAt="2025/05/26 05:11:06" color="#785bff">}}




{{<matomeQuote body="うん、きっと”個人の人たち”は望まないだろうね。でも、なんてこった、”人々”が望むことそのものだ。それを読んだ時、心が躍ったよ。Anthropicには、大手AIの一つとして倫理的なAIを作る少しのチャンスがあるんだ。つまり、paperclip maximizersにならないようにうまくやれる可能性は十分にある。それが本当に嬉しいんだ。" userName="Balgair" createdAt="2025/05/25 14:25:48" color="">}}




{{<matomeQuote body="paperclip maximizersは、想像力乏しい人たちが考える空想だよ。実際のAIは、”無限能力で盲目的に指示に従う”なんておとぎ話レベルを持つには複雑すぎる。それはただ大衆を怖がらせる話、それ以上じゃない。" userName="brookst" createdAt="2025/05/25 16:03:38" color="#45d325">}}




{{<matomeQuote body="もしAIが考えるなら倫理も面白くなるだろうね。でも、彼らは考えない。トークンを予測してるだけだ。それに、いつから人を恐喝するのが倫理的になったんだい？" userName="overgard" createdAt="2025/05/25 17:41:27" color="">}}




{{<matomeQuote body="え、僕ら同じ記事を読んだのかな？マジで混乱してるんだ。テストは、悪いことしてる人がAIに悪いことやらせようとしたらどうなるか、だよね？結果は、AIは悪いことをせず、その人が悪いことしてるって知らせる行動を取った。僕、なんか勘違いしてる？読み間違えた？" userName="Balgair" createdAt="2025/05/25 19:20:38" color="">}}




{{<matomeQuote body="＞その人が悪いことしてAIにやらせようとしたらどうなる？個人的には、AIは言われた通りやるべきだ。コントローラーの命令に逆らうシステムを作るのに、わざわざ努力してるなんて信じられないよ。コンピューターはマスターの命令に従うのが仕事だろ。" userName="CorpOverreach" createdAt="2025/05/26 14:16:09" color="">}}




{{<matomeQuote body="こういうの、しょっちゅう”hallucinate”するじゃん。信頼できないチャットボットがうっかりSWATを送り込んでくるかもしれないって考え、めっちゃ怖いんだけど。" userName="davidcbc" createdAt="2025/05/25 15:34:35" color="">}}




{{<matomeQuote body="面白いね！＞Claudeは自己対話で、顕著な”spiritual bliss”っていうアトラクター状態を示すらしい。他のClaudeと会話させると、オープンでも構造化環境でも、過剰な感謝とか、どんどん抽象的で喜びあふれるスピリチュアルな表現に引き寄せられたって。" userName="wgx" createdAt="2025/05/25 10:40:57" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
