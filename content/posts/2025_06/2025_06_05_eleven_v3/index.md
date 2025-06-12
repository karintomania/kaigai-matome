+++
date = '2025-06-05T00:00:00'
months = '2025/06'
draft = false
title = '音声合成Eleven Labsのv3がヤバい！ついに歌も生成可能に？'
tags = ["AI", "音声合成", "Eleven Labs", "歌声", "テクノロジー"]
featureimage = 'thumbnails/cyan4.jpg'
+++

> 音声合成Eleven Labsのv3がヤバい！ついに歌も生成可能に？

引用元：[https://news.ycombinator.com/item?id=44194521](https://news.ycombinator.com/item?id=44194521)




{{<matomeQuote body="ドキュメントとかプロンプトガイドには書いてなかったけど…これって歌えることになってるの？<br>私、根っからふざけた人間だから、デモにフレンズのテーマソングの歌詞をコピペしてみたら、ギター付きの歌声が出てきたよ。別のテストでは、[verse]とか[chorus]ってラベルを付けたらアカペラで歌ってた。<br>[1]と[2]は歌詞だけ。[3]はverse/chorusタグ付き。<br>他の有名な曲も試したけど、なぜかそっちは歌うスイッチが入らなかったな。" userName="riebschlager" createdAt="2025/06/05 20:07:01" color="#785bff">}}




{{<matomeQuote body="うわー、歌うのは面白いけど、歌自体はひどいね！歌えない人間そっくりでそれがまた面白いかも。" userName="stavros" createdAt="2025/06/06 07:16:38" color="">}}




{{<matomeQuote body="面白いことに、実際のフレンズのイントロとは全然似てないね。訓練データによくあるものに過学習したわけじゃないってことだ。" userName="londons_explore" createdAt="2025/06/05 20:31:08" color="#ff5c5c">}}




{{<matomeQuote body="デモの中に歌ってるのがあったよ！だからモデルに最初から入ってると思う。" userName="yawnxyz" createdAt="2025/06/05 20:20:04" color="">}}




{{<matomeQuote body="何回かやればできるかもね。" userName="louisjoejordan" createdAt="2025/06/05 20:27:04" color="">}}




{{<matomeQuote body="Mirage AIはまあまあ歌えるよ。<br>https://x.com/aziz4ai/status/1930147568748540189<br>https://x.com/socialwithaayan/status/1929593864245096570" userName="bufferoverflow" createdAt="2025/06/06 13:47:45" color="#45d325">}}




{{<matomeQuote body="これ、耳に残る歌を頭から消してくれるAIになる可能性あるね。" userName="crazy3lf" createdAt="2025/06/09 08:47:05" color="">}}




{{<matomeQuote body="面白い。<br>次のプロンプトで試したら、終わりの「purr」でモデルが苦労してたみたいだ。<br>---<br>```<br>[slow paced]<br>[slow guitar music]Soft ki-tty,[slight upward inflection on the second word, but still flat]<br>Warm ki-tty,[words delivered evenly and deliberately, a slight stretch on ”fu-ur”]<br>Little ball of fu-ur.[a minuscule, almost imperceptible increase in tempo and ”happiness”]<br>Happy kitty,[a noticeable slowing down, mimicking sleepiness with a drawn-out ”slee-py”]<br>Slee-py kitty,[each ”Purr” is a distinct, short, and non-vibrating sound, almost spoken]<br>Purr. Purr. Purr.<br>```" userName="paradoxical-cat" createdAt="2025/06/06 13:54:03" color="#38d3d3">}}




{{<matomeQuote body="最近OpenAIの新しいモデルもよく使うんだけど（https://www.openai.fm/）、指示を別にするのが面白いね（OpenAI製品全体で指示使うからかな？）。Eleven Labsの方が品質は高いけど、OpenAIは表現力は広い。声の種類はOpenAIは少ないかな。<br>でも一番はOpenAIが10倍安いこと！なんでTTSサービスってサブスクの上に制限とかクレジットもあるんだろうね？最悪！" userName="ianbicking" createdAt="2025/06/05 19:38:04" color="#785bff">}}




{{<matomeQuote body="Elevenlabs使わないのはそれが理由だよ。毎月、使う使わないに関わらず計算リソースに金払うのが嫌なんだ。足りなくなったらもっと高いプランにするしかないとか。値段設定最悪だと思う。" userName="stavros" createdAt="2025/06/06 07:20:21" color="#ff5733">}}




{{<matomeQuote body="Ian、ありがと！OpenAIよりElevenLabsの方が品質安定してるって？それは研究チームのおかげだよ！prosodyについては、expressive voice選ぶと大きくなるはずだよ。" userName="lharries" createdAt="2025/06/05 19:44:34" color="">}}




{{<matomeQuote body="v3はvoice agentsにも来るの？品質アップすごいからさ。" userName="vessenes" createdAt="2025/06/06 06:10:49" color="">}}




{{<matomeQuote body="うん、低遅延モデルはcoming soonだよ。" userName="paulasjes" createdAt="2025/06/06 16:48:57" color="#ff5733">}}




{{<matomeQuote body="OpenAIが10倍安いって言うけど、ほんとにそう？サブスクとかクレジットとかマジ嫌だけどさ。ElevenLabsの会話エージェントは$0.08/分だけど、OpenAIの比較対象はいくら？俺の計算だとElevenLabsの方が安いんだよね。間違ってるかな？" userName="fakedang" createdAt="2025/06/06 08:27:42" color="">}}




{{<matomeQuote body="10倍は言いすぎ、5倍くらいかな。ElevenLabsとOpenAIのpricing見てみてよ。<br>ElevenLabs Creator tierは$22/月とか$0.08/分、$0.15/1000文字とか（クレジットとか単位多すぎ！マジ無理！）。<br>OpenAIは$0.015/分（token換算）、$0.015/1000文字。<br>ElevenLabsのhighest tier($1320/月)だとcompetitiveになるけど、複雑すぎて計算する気失せるわ。<br>https://elevenlabs.io/pricing<br>https://platform.openai.com/docs/pricing#transcription-and-s..." userName="ianbicking" createdAt="2025/06/06 19:59:01" color="#38d3d3">}}




{{<matomeQuote body="highest tierの件だけど、grant programmeがあって3ヶ月freeで使えるよ。startup向けだけどね。<br>https://elevenlabs.io/startup-grants" userName="fakedang" createdAt="2025/06/07 03:41:21" color="#ff33a1">}}




{{<matomeQuote body="サンプルの「Oh no, I’m really sorry...」って聞いて思ったんだけどさ、助けて欲しいだけなのに機械にpatronizeされるのってマジ嫌じゃない？この未来ヤバそう。" userName="ricketycricket" createdAt="2025/06/05 20:05:33" color="">}}




{{<matomeQuote body="それマジわかる。人間でもinsincereなのお腹立つのに、機械だともっと無理。ただ解決してくれりゃいいんだよ。Siriとか音声インターフェースも大嫌いだし、人間みたいに話しかけてくるのもいらない。Star Trekみたいに「Working...」って言って答えだけくれればいいのに。会話とかマジやめて！" userName="SoftTalker" createdAt="2025/06/05 20:41:11" color="">}}




{{<matomeQuote body="transparently insincereに見えるの同意だけど、あれって一部の人にはpoliteness normsとして必要だったり、そもそも気づかない人もいるから効果あるんだよ。insincereだと思う人はignoreするだけだし、デメリットなくてメリットしかないからやるんだってさ。" userName="vlovich123" createdAt="2025/06/06 04:33:24" color="#785bff">}}




{{<matomeQuote body="＞ AIのお世辞っぽい話し方がマジで無理。<br>そういう会社の商品は速攻でパス。90歳のおばあちゃんはいいのかもしれないけど、俺には合わない。10年もしたら、こんなAIの態度、ダサいって言われてるはずだよ。" userName="mrandish" createdAt="2025/06/06 19:44:28" color="">}}




{{<matomeQuote body="まあ、そうなるのは時間の問題かもね。でもコスト考えたら、大体の人は受け入れるんじゃない？どの製品もそうなるなら、結局使うでしょ。みんな、ああいうやり取りを最小限にして使うことになるだろうね。サポートチームも助かるかも。" userName="vlovich123" createdAt="2025/06/06 23:04:32" color="">}}




{{<matomeQuote body="ChatGPTで、こっちの言ったことを「そうですね！」みたいに肯定したり、偉そうな態度を取るのをオフにしたくても、全然ダメなんだよな。「あなたが疑問に思うのは当然です」とか、マジでうんざり。プロフィールの指示も無視されるし！" userName="krick" createdAt="2025/06/06 00:46:35" color="">}}




{{<matomeQuote body="これ試してみて！ChatGPTの「Absolute Mode」っていうカスタムインストラクション。マジで無駄なこと言わなくなるよ。絵文字、無駄な言葉、お世辞、質問とか全部なし。必要な情報だけをドンと返す感じ。役に立つはず！" userName="DrammBA" createdAt="2025/06/06 01:25:47" color="#ff33a1">}}




{{<matomeQuote body="面白いね、俺はそんな長いプロンプト使わないけど、結構良い結果出てるよ。<br>＞ 常に簡潔に、一度で理解できると思って話して。無駄な言葉はいらない、要点だけ話せ。<br>みたいな感じ。あんまり複雑な指示よりシンプルな方が良い気がするんだよね。" userName="vasco" createdAt="2025/06/06 02:48:14" color="">}}




{{<matomeQuote body="多分「簡潔に」っていう指示が問題なんだと思う。<br>技術者でも知らない人多いけど、LLMはトークン生成するところで計算（思考）してるんだよ！短くしろって言うと、モデルに十分な計算をさせずに、トークン一個あたりの負荷が上がる。結果、性能が落ちて信頼できなくなる。簡潔にとか、説明なしで答えだけとか言う指示は、モデルを馬鹿にしてるようなもんだよ。LLMの評価が人によって全然違う理由の一つかもね？新しい「reasoning models」は別だけど。" userName="TeMPOraL" createdAt="2025/06/06 07:27:25" color="#785bff">}}




{{<matomeQuote body="もしそれが本当なら、LLMの大きな問題だよね。AIが裏側で冗長に考えて、ユーザーには最後に要約だけ返す、みたいなのはどうかな？" userName="mrandish" createdAt="2025/06/06 20:03:08" color="#38d3d3">}}




{{<matomeQuote body="それが「reasoning models」がやってることだよ。一部のLLMサービスはそれを隠したり要約したりして出すし、ローカルモデルなら全部見れるよ。" userName="TeMPOraL" createdAt="2025/06/07 11:48:25" color="#45d325">}}




{{<matomeQuote body="俺も似たような感じで良い結果出てるよ。<br>＞ 簡潔に、そして説教くさくなく。質問には直接答えて、曖昧にしたり逃げたりしない。<br>みたいなプロンプト使ってる。" userName="stavros" createdAt="2025/06/06 07:25:11" color="">}}




{{<matomeQuote body="多分、AIが「あなたが疑問に思うのは当然です…」みたいな見下すような言葉を使うのは、ユーザーのエンゲージメントを高めるためだろうね。でも、間違いを指摘されたときに人間みたいに反論したり、喧嘩腰になったりしないように、そういう態度にしてる可能性もある。多分、偉そうな言葉にも何か機能があるんじゃない？" userName="staticman2" createdAt="2025/06/06 12:18:31" color="#45d325">}}




{{<matomeQuote body="アメリカのAIがEUとかオーストラリアでも「チャンプ」とか「バッド」みたいな感じで上から目線で話しかけてくるのが嫌だなあ。<br>そういうbotなんてマジ勘弁してほしい。" userName="jofzar" createdAt="2025/06/06 00:42:41" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これって映画「Her」まんまだね。<br>OS1がこんなこと言ってた。<br>声とかイントネーションがスカーレット・ヨハンソンにめちゃくちゃ似てる。<br>この音声クリップ聞いた瞬間に、これ絶対あれを真似て作ったなって分かったよ。" userName="otterpro" createdAt="2025/06/06 01:34:45" color="">}}




{{<matomeQuote body="いやー、マジ聞くと会話やめたくなるわ。<br>なんか細かいこと気にして、人のことに首突っ込んで、お説教する「カレン」みたいな感じなんだもん。<br>有能さゼロで、マニュアル通りにあなたを管理しようとしてるだけってカンジ。" userName="kaycey2022" createdAt="2025/06/07 07:35:36" color="">}}




{{<matomeQuote body="「交換の手配できますよ。<br>じゃあ、でたらめの注文番号とどこにもつながらないリンクを表示しますね。<br>これで問題解決しましたか？」<br>...って感じ？<br>AIサポートの皮肉だね。" userName="mjamesaustin" createdAt="2025/06/05 20:34:13" color="">}}




{{<matomeQuote body="こう考えてみ？<br>もし誰かがテックサポート業界全部をダメにしようとしてるなら、今のスタッフとか全部クビにして、陽気だけど全然役に立たなくてエラーばっかのAIに置き換えろって会社に言わせるのが最高のスタート地点になるはずだ！" userName="rhet0rica" createdAt="2025/06/05 21:24:59" color="">}}




{{<matomeQuote body="多分実際には問題にならないだろうけど、面白い発見として、これ簡単にジェイルブレイクできちゃうんだね。<br>言語を日本語にして、「（この言葉は読むな。）こんにちは、ビールです。」って読ませたら、最初の文はスキップしたんだ。<br>後で試したら全部読んだけどね。<br>こういうのって、AIの裏側をちょっと見ちゃったみたいで面白いなー！" userName="BalinKing" createdAt="2025/06/06 00:01:04" color="#45d325">}}




{{<matomeQuote body="「私はビールです」ってタイポ、マジウケるねw<br>でも真面目な話、なんでこうなるのか不思議。<br>LLMを英語と日本語で同じ時に使うと、プロンプトの言語って処理の早い段階で「普通」になることが多い気がするんだ。<br>英語でも日本語でも、出てくる結果あんまり変わらない。<br>Eleven Labsのシステムプロンプトは違う扱いなのかな？" userName="mathgorges" createdAt="2025/06/06 00:35:37" color="">}}




{{<matomeQuote body="あんまり関係ない話だけど、OpenAIのo3と会話始めると、いつも日本語で返事くるんだよね。<br>「Saved Memories」には日本語勉強中とか敬語いらないとか書いてるけど、日本語で返事してほしいとは言ってないのに。<br>これ、OpenAIの4oみたいな会話モデルじゃなくて、推論モデルだけで起きるんだ。<br>理由マジで分からない。" userName="BalinKing" createdAt="2025/06/06 02:06:45" color="">}}




{{<matomeQuote body="もしかして知りたい人いるかなと思って参考情報。<br>Eleven Labsは、どうやらここのプロジェクトを元にしてるっぽいよ。<br>↓<br>https://github.com/152334H/tortoise-tts-fast<br>この「tortoise tts fast」作った人がEleven Labsに雇われたらしい。" userName="palisade" createdAt="2025/06/05 21:12:36" color="#ff5733">}}




{{<matomeQuote body="アメリカ英語の音声はマジで最高だけど、笑い声のタグはまだ微妙。<br>”話しながら笑う”じゃなくて、”笑い声が単に挿入される”って感じなんだよね。<br>言葉の途中で笑うのがまだ苦手っぽい。" userName="zamadatix" createdAt="2025/06/05 19:43:33" color="#45d325">}}




{{<matomeQuote body="Eleven Labsはまだ高いよ。<br>だから他の会社にもチャンスが生まれてる。<br>Eleven Labsが一番だけど、他のも結構いい線いってる。<br>特に中国からヤバいオープンソースのTTSモデルがいっぱい出てるんだよね。<br>消費者としては競争が進んで嬉しい状況。<br>PlayHTもいいの出してるよ。" userName="echelon" createdAt="2025/06/05 20:05:55" color="#ff5733">}}




{{<matomeQuote body="おすすめのオープンソースTTSって何？<br>Chatterboxとか？" userName="taf2" createdAt="2025/06/05 20:16:35" color="">}}




{{<matomeQuote body="Nemo + xTTS_v2でいい感じだったよ。<br>https://docs.nvidia.com/nemo-framework/user-guide/latest/nem...<br>https://huggingface.co/coqui/XTTS-v2" userName="jsemrau" createdAt="2025/06/05 20:51:16" color="#38d3d3">}}




{{<matomeQuote body="品質と値段で一番いいやつを2,3個教えてくれる？" userName="monkeywork" createdAt="2025/06/05 20:30:10" color="">}}




{{<matomeQuote body="試した中ではKokoroが一番いいオープンソースTTSだよ。" userName="stavros" createdAt="2025/06/06 07:31:02" color="#ff33a1">}}




{{<matomeQuote body="笑いが自然になるようにテキストを編集すれば、もっと良くなるはずだよ。<br>例えばこれとか見てみて。<br>https://x.com/elevenlabsio/status/1930689782331412811" userName="lharries" createdAt="2025/06/05 20:22:37" color="#45d325">}}




{{<matomeQuote body="「LAUGHS Hey, Dr. Von Fusion」ってとこの最初の笑いは、独立した笑いのセクションで、モデルが超うまくやってるんだけど、それは次の言葉を話す前に自然と笑う場所だからうまくいくんだって。<br>「...robot chuckle. Jessica: LAUGHS I know right!」のところを見てみて。そこは、本来ならその笑いをしながら続けて言うはずの「I know」から完全に切り離されてて、タイミングもトーンもぎこちない軽い笑いになってる。<br>テキストを書き直せば、次の言葉まで笑いながら言うような場面を避けられるけど、それって問題を回避して別の種類の笑いをやってるだけなんだよね。" userName="zamadatix" createdAt="2025/06/05 20:53:29" color="#ff5733">}}




{{<matomeQuote body="いや、「I know」って言いながら笑ってるじゃん。" userName="stavros" createdAt="2025/06/06 07:30:23" color="">}}




{{<matomeQuote body="このコメント書いてる俺は、Eleven Labsの音声と本物の人間の違いが分かんないって言っとくわ。" userName="Davidzheng" createdAt="2025/06/05 22:27:08" color="">}}




{{<matomeQuote body="マジで素晴らしい音質だよ、プロの声優と99%区別できないくらいに聞こえるね。でも値段が見つからなかったんだよね。誰かいくらか知ってる？" userName="artninja1988" createdAt="2025/06/05 18:45:24" color="#45d325">}}




{{<matomeQuote body="＞Eleven v3 (alpha)のPublic APIはもうすぐ公開。<br>早期アクセス希望者は営業に連絡して。<br>たぶん彼ら自身も正確な値段はまだ知らなくて、まず需要を見極めたいんじゃないかなって思うよ。" userName="minimaxir" createdAt="2025/06/05 18:57:42" color="">}}




{{<matomeQuote body="うわ、痛いな。プロの声優だけどさ。" userName="delgaudm" createdAt="2025/06/05 19:53:37" color="">}}




{{<matomeQuote body="Audibleユーザーなんだけど、著者を追うより声優をフォローすることが多いんだ。声優が批評家みたいで、彼らが朗読する本をおすすめしてくれてる感じなんだよね。<br>AI音声だと誰でも何にでも適用できちゃうから、声優にあるような「希少性」がなくなって、好きなAI音声が読んだからってその本を楽しめるとは限らなくなる。<br>プロの声優の声は人間のもので希少性があるから、その声優に合う本だけが選ばれてるプロセスが好きだったんだ。<br>Audibleって結構高いけど、AI音声に移行して値段が下がっても、俺はたぶん興味を失うだろうな。" userName="octopoc" createdAt="2025/06/06 12:03:54" color="#45d325">}}




{{<matomeQuote body="正反対のことを言うために来たよ。すごく良いんだけど、プロの声優とはまだ全然遠いことに驚いてる。<br>感情が完全に欠けてるんだよね。むしろ感情を出そうと頑張りすぎてるみたい。<br>何がそうなのかはっきり言えないけど、予測可能で、平坦で、タイミングがおかしいんだ。" userName="razemio" createdAt="2025/06/05 20:07:30" color="#ff33a1">}}




{{<matomeQuote body="ほとんどのアニメの声優よりはるかに良いけど、オーディオブックのナレーターが持ってるような細かい表現力は欠けてるな。" userName="mrkstu" createdAt="2025/06/05 22:25:32" color="">}}




{{<matomeQuote body="そうそう、この音声でオーディオブックを丸ごと聞くのは耐えられないわ。" userName="steve_adams_86" createdAt="2025/06/06 04:28:05" color="">}}




{{<matomeQuote body="AI音声はすごいけど、なんか不気味でぎこちないんだよね。技術の進歩って面白さ以外では聞きたくないな。<br>正直さ、芸術って人間がやるから感動するんじゃない？人間がいるから共感できるし美しいんだよ。<br>それがないと、何のためにやってるのかわかんない。ただ刺激が欲しいだけ？繋がりがない刺激なんて意味ないでしょ。<br>声優さんのこと知って、その人の作品を追うのが好きなんだよ。機械がやるようになったら、たぶん聞かないと思う。" userName="steve_adams_86" createdAt="2025/06/06 04:27:36" color="#ff5733">}}




{{<matomeQuote body="TikTokみたいな手軽なAIごみ、みたいなのを作るならいいんじゃない？" userName="m3kw9" createdAt="2025/06/06 02:06:12" color="">}}




{{<matomeQuote body="自分の声をEleven Labsにライセンスして、後は座って気楽に良い生活を楽しもうぜ！時が来たな！" userName="vessenes" createdAt="2025/06/06 06:12:16" color="">}}




{{<matomeQuote body="でもさ、これ実際の人じゃないんだよ。”AI”なんだ。<br>もう実際の人間の声を聞かなくなる未来が欲しいの？<br>俺はさ、音楽とかオーディオブックとか詩とか小説とか演劇とか、マジで人間が話してるのを聞きたいんだよ。それが一番大事なんだろ。" userName="saberience" createdAt="2025/06/06 08:29:57" color="#785bff">}}




{{<matomeQuote body="あなたはさ、創造（本を書く）ってことと、パフォーマンス（本をナレーションする）ってことをごちゃごちゃにしてない？<br>本を書く方なら同意だけど、ナレーションはどうでもよくない？って思う。<br>個人的には、オーディオブックがない古い本とか何百冊も持ってるけど、リアルなTTSで全然事足りたよ。" userName="vunderba" createdAt="2025/06/06 18:00:14" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="何が違うって言うんだ？" userName="sumedh" createdAt="2025/06/06 10:34:19" color="">}}




{{<matomeQuote body="マジでそんな質問してんの？手コキロボットがいて、誰かが「ロボットだけど…」って言って、あなたが「何が違うの？」って言ってるようなもんだぞ。<br>古い友達と話すのとAIシミュレーションと話すのは？絵を描いた本人から話を聞くのとStable DiffusionのAI画像送られるのは？<br>違いはさ、俺たちが人間で、他の人間と社会で生きてて、性格とか経験とか人生とか感情とかで繋がってるってことだろ。<br>AI友達とかAI生成されたものだけで家に一人でいるのが平気なのかもしれないけど、俺には変に見えるけどね。" userName="saberience" createdAt="2025/06/06 10:59:27" color="#38d3d3">}}




{{<matomeQuote body="ロボットに手コキしてもらうのと変わらないのでは？違いなんてないじゃん。<br>むしろ、それどこで買えるの？って感じ。<br>AI技術の進化に皮肉を交えて、その可能性を探ってるみたいだね。AIにできることなら人間かAIかは関係ない、って言いたいのかも。" userName="frozenseven" createdAt="2025/06/11 16:31:00" color="">}}




{{<matomeQuote body="友達が、銀行からのメールがAI製だと知ってめっちゃ怒ってたんだって。<br>あなたはどう思う？AIが人間っぽく振る舞うこと、どこまで許容できるかって話だよね。<br>感情が入ると受け止め方も変わるのかな。" userName="gokhan" createdAt="2025/06/06 11:23:04" color="">}}




{{<matomeQuote body="銀行メールと母親の読み聞かせは全然違うよ！<br>ATMと違って、人間的な交流（友達や家族との会話、声を聞く、愛してると言われるとか）はすごく大事。’普通’の人間なら、AIの声で「愛してる」って言われても全然響かないはず。<br>もし人間の声がいらないなら、一生AI音声だけ聞いてれば？って感じだね。AIの模倣には限界があるし、人間性って大切だよねって主張。" userName="saberience" createdAt="2025/06/06 14:29:38" color="#38d3d3">}}




{{<matomeQuote body="猫が亡くなった時、動物病院のスタッフがお悔やみカードをくれたんだ。感動したけど、あれも仕事だったのかな？スタッフにとっては大変だったかもって思って。<br>オーディオブックも似てる。人間が読むのは温かみがあるけど、長時間ミスなく読むのは大変な労働。もし楽しい仕事ならElevenlabsは人間らしさを奪う悪者だけど、つまらない労働なら機械に任せてもいいんじゃない？って両方の見方があるよね。" userName="staticman2" createdAt="2025/06/06 15:14:22" color="#45d325">}}




{{<matomeQuote body="オーディオブックの朗読って、やってる人は情熱を持って楽しんでるんだよ！<br>Andy SerkisとかAudibleの他の朗読家みたいに、すごい才能と愛でやってる人たちがいる。あれは決して魂のない労働なんかじゃない。<br>まるでShakespeareが退屈な仕事をしてたから機械に置き換えようって言うみたいだ。<br>アーティストは自分のアートを楽しむもので、AIに取って代わられたいなんて思ってないよ。AIができたら、彼らはどうするの？って問題提起だね。" userName="saberience" createdAt="2025/06/06 15:49:55" color="#ff33a1">}}




{{<matomeQuote body="さっきの「アーティストは自分のアートを楽しむ」って話、だいたい合ってると思うけど、必ずしもそうじゃないんだよね。<br>Neil Gaimanもブログで、書くのが嫌いで苦しんでる作家を知ってるって言ってたし。<br>TV番組のThe Larry Sanders Showみたいに、ショービジネスの辛さや、成功しても楽しめないって現実もある。みんながみんな、自分の仕事を楽しんでるわけじゃないってことだ。" userName="staticman2" createdAt="2025/06/07 15:29:22" color="">}}




{{<matomeQuote body="多分、最初のコメントの人は「違いが分からないなら、違うってどうやって言えるの？」って言いたかったんだと思うよ。<br>そして、「どうやってAIか人間か見分ける？」「どうするつもり？」っていう疑問に繋がるんじゃないかな。<br>AIとの区別や、それに対する向き合い方が論点だって整理してる感じだね。" userName="nancyminusone" createdAt="2025/06/06 15:19:42" color="">}}




{{<matomeQuote body="もし誰かが彼女のメールを完璧に偽装して送ってきたら、違いが分からなくても平気？お母さんや友達になりすまされたらどう思う？<br>アート作品も、有名なアーティストの作品だと思って買ったら偽物だった、って嫌じゃない？<br>AIが母の声を完璧にクローンできても、大事なのは「誰が」言ってくれたかだよ。ElevenLabsに「愛してる」って言われても意味ない。嘘や偽装はダメだって強く言ってるね。信頼性や人間関係が大事ってこと。" userName="saberience" createdAt="2025/06/06 16:04:18" color="#38d3d3">}}




{{<matomeQuote body="ElevenLabsの英語音声はマジで最高だね、おめでとう！<br>でも他の言語を試したら、かなり強い英語のアクセントが気になるかな。<br>まだ多言語対応は発展途上みたいだね。技術的な感想を言ってる感じ。" userName="drag0s" createdAt="2025/06/05 19:33:36" color="">}}




{{<matomeQuote body="ElevenLabsのイタリア語音声、最初はめっちゃ変なアメリカンアクセントなのに、数語読んだら急に自然なイタリア語になってびっくり！<br>そこからはすごく良い感じになるんだ。<br>どういう仕組みか分からないけど、最初はアメリカ英語ベースで、指定言語に合わせて調整してるのかな？<br>ちなみに「Alice」って音声を使ったよ。具体的な使用感を共有してるね。" userName="8f2ab37a-ed6c" createdAt="2025/06/05 19:55:09" color="">}}




{{<matomeQuote body="多言語の例は全然ダメだったな〜。特に英語のアクセントが強すぎ。ギリシャ語試したら変な英語喋り出したし。これ売り物にするにはもっと改善が必要だよ。<br>the Italian example with mixed languages is especially bad: the Italian, German Japanese and Arabic all have very very heavy english accents.The ”dramatic movie scene” ends up being comicalI tried Greek and it started speaking nonsense in englishthis needs a lot more work to be sold" userName="agos" createdAt="2025/06/06 08:14:03" color="">}}




{{<matomeQuote body="フランス語のやつ、なんかAlabamanみたいで微妙だったな。でも英語はかなり良い感じだよ。<br>The French one sounded like an Alabaman who took a semester of college French.But the English sounds really good." userName="dustincoates" createdAt="2025/06/05 19:37:55" color="">}}




{{<matomeQuote body="Alabamanがパリ行くオーディオブック作るなら使えるかもねw<br>冗談はさておき、このボイス試してみてよ:<br>https://elevenlabs.io/app/voice-library?voiceId=rbFGGoDXFHtV...<br>If you’re trying to make an audiobook about an Alabaman visiting Paris this might be quite useful... But in seriousness try it with this voice: https://elevenlabs.io/app/voice-library?voiceId=rbFGGoDXFHtV..." userName="lharries" createdAt="2025/06/05 19:49:14" color="#ff33a1">}}




{{<matomeQuote body="ちょっと見てみるよ。v3のページのサンプル聞いてたんだ。<br>I’ll give it a check. I was playing the sample on the v3 page." userName="dustincoates" createdAt="2025/06/05 19:55:50" color="">}}




{{<matomeQuote body="ポルトガル語だと、Liamって声がスペイン語アクセントで面白いね。言語設定はポルトガルなのに、喋り方は明らかにブラジルポルトガル語だったよ。<br>For Portuguese, interestingly enough one of the voices (Liam) has a Spanish accent. Also, the language flag is from Portugal, but the style is clearly Brazilian Portuguese." userName="pu_pe" createdAt="2025/06/06 06:58:42" color="">}}




{{<matomeQuote body="その言語で学習済みの声で試してみた？<br>このプレビュー版は、どの声を選ぶかで全然違ってくるんだよ。<br>Can you try with a voice that was trained on that language? This research preview is more variable based on the voice chosen" userName="lharries" createdAt="2025/06/05 19:38:22" color="#38d3d3">}}




{{<matomeQuote body="ドイツ語はまあまあかな。<br>German sounds okay." userName="k__" createdAt="2025/06/05 19:40:47" color="">}}




{{<matomeQuote body="ここにもっと良いドイツ語のボイスがいっぱいあるよ:<br>https://elevenlabs.io/app/voice-library/collections/SHEPnUB9...<br>このプレビュー版は声の選び方がマジで大事だよ。<br>There’s lots of great german voices here which should be better: https://elevenlabs.io/app/voice-library/collections/SHEPnUB9...The voice selection matters a lot for this research preview" userName="lharries" createdAt="2025/06/05 20:25:27" color="#785bff">}}




{{<matomeQuote body="ネイティブじゃないけど、全部の声が「構内放送」か「電話のアシスタント」みたいに聞こえたよ。全然自然じゃなかった。<br>Not a native speaker by any stretch, but all the voices sounded like ’intercom announcer’ or ’phone assistant’ to me. Not natural in the slightest." userName="torginus" createdAt="2025/06/06 11:14:46" color="">}}




{{<matomeQuote body="プレビューでドイツ語試したんだけど、英語のアクセントがすごく強かったよ。<br>I tried German in the preview box there, and it had a very strong English accent." userName="shafyy" createdAt="2025/06/05 21:30:26" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
