+++
date = '2025-07-22T00:00:00'
months = '2025/07'
draft = false
title = 'AIが勝手に喋る？無音のはずなのに「謎のアラビア語」を幻覚する音声認識の闇'
tags = ["AI", "音声認識", "機械学習", "データセット", "バグ"]
featureimage = 'thumbnails/light_colour2.jpg'
+++

> AIが勝手に喋る？無音のはずなのに「謎のアラビア語」を幻覚する音声認識の闇

引用元：[https://news.ycombinator.com/item?id=44643564](https://news.ycombinator.com/item?id=44643564)




{{<matomeQuote body="Whisper-large-v3でも中国語で同じ現象が起きるって。無音が「この動画を高評価、シェア、お気に入り登録してね」みたいになるんだ。これってYouTubeの変な動画で学習したせいじゃない？ちゃんと役に立つデータを選んでないんじゃないかな。" userName="cyp0633" createdAt="2025/07/22 06:52:14" color="#ff5733">}}




{{<matomeQuote body="中国語の場合だと「研究目的のみ。48時間後に削除してください」っていつも追加されちゃうんだよ。これって、海賊版の映画とか番組の字幕でボランティアがよく入れてたやつだよね。" userName="ttflee" createdAt="2025/07/22 09:31:15" color="#38d3d3">}}




{{<matomeQuote body="公平に考えてさ、AI企業が「学習」目的で海賊版コンテンツをダウンロードしていいなら、なんで普通の人はダメなんだよって話だよね。" userName="codedokode" createdAt="2025/07/22 12:54:36" color="">}}




{{<matomeQuote body="AI企業がとんでもない量の著作権侵害をしてる証拠がいっぱいあるのに、何もされてないよね。結局、金持ちは何でもやりたい放題で、普通の人は何年も刑務所行き、みたいな世の中の仕組みが浮き彫りになってるだけだよ。これ聞くとこのYouTube動画思い出すわ。https://www.youtube.com/watch?v=8GptobqPsvg" userName="snickerdoodle12" createdAt="2025/07/22 13:21:51" color="#ff5733">}}




{{<matomeQuote body="別のモデルでも、無音部分が「ご視聴ありがとうございました！」とか「[MUSIC]」ってしつこく文字起こしされるんだよね。こんな失敗がQAプロセスで見つからなかったなんてマジでアホだろ。複数の文字起こしモデルで同じ問題抱えてるとか。入力音声に無音部分ってめっちゃ普通にあるはずなのにさ…。" userName="isoprophlex" createdAt="2025/07/22 07:29:30" color="#ff5c5c">}}




{{<matomeQuote body="アメリカでは、著作権があるものをダウンロードしただけで刑務所に入った人なんていないよ。" userName="alphan0n" createdAt="2025/07/22 13:39:04" color="">}}




{{<matomeQuote body="Whisperは、無音検出とかVADと絶対に組み合わせるべきだよ。" userName="wahnfrieden" createdAt="2025/07/22 08:24:33" color="#38d3d3">}}




{{<matomeQuote body="Aaron SwartzのWikipediaのページ見てみろよ。https://en.wikipedia.org/wiki/Aaron_Swartzそれに、アメリカだけが著作権で人捕まえたりする管轄じゃないしな。" userName="snickerdoodle12" createdAt="2025/07/22 13:40:46" color="#ff5c5c">}}




{{<matomeQuote body="あー、「使い方が悪い」ってやつね。想像上の声を聞き出す音声認識ツールなんて、一体何の役に立つんだよ？" userName="pferde" createdAt="2025/07/22 08:44:14" color="">}}




{{<matomeQuote body="これは著作権侵害のパイラシーとは違うんだ。彼はlibgenやsci-hubからじゃなく、JSTORから直接大量の論文をダウンロードしてた。逮捕理由は著作権侵害じゃなくて、”不法侵入”や”コンピュータネットワークへの不正アクセス”だったんだよ。" userName="gruez" createdAt="2025/07/22 13:49:56" color="#ff5733">}}




{{<matomeQuote body="AIスクレイパーがランダムなウェブサイトに不正アクセスする件にも、全く同じ容疑が適用されうるね。" userName="snickerdoodle12" createdAt="2025/07/22 13:56:38" color="">}}




{{<matomeQuote body="この件に関して裁判所では色々動いてるけど、法律はゆっくりで、被害が明らかじゃないと差し止め命令には消極的だね。<br>個人が映画を12本パイレートして見るようなケースの法律は確立してるけど、企業がAIモデルの訓練データに1000万個の作品をパイレートするケースは複雑で、追加の裁判が必要なんだ。大学が学術目的でやってるのは合法とされてるけど、これがひっくり返ると困るし、まだ法的に決着はついてないんだよ。" userName="shadowgovt" createdAt="2025/07/22 13:41:27" color="#ff5733">}}




{{<matomeQuote body="いや、もしコンピューティングの実践と哲学の両方を改革し、人類を知的進化の次の段階へ進めるなら、何をしてもいいんじゃない？公平そうだし。" userName="CamperBob2" createdAt="2025/07/22 15:21:26" color="">}}




{{<matomeQuote body="「なんで一般人はできないの？」<br>できるよ。違法ストリーミングサイトを使ったり、sci-hubからダウンロードしたりしたことで起訴された人はいないんじゃないかな。訴えられるのは、配布と見なされるシーディングの方だ。むしろAI企業の方が、その規模のせいで、”一般人”よりも積極的に起訴されてる。最近の訴訟でAnthropicはAIの書籍学習については勝ったけど、パイレート版の使用については負けたんだ。" userName="gruez" createdAt="2025/07/22 13:44:00" color="#45d325">}}




{{<matomeQuote body="ほとんどの人はしないけど、裁判所は理解してるはずの区別があるんだ。著作物で訓練することと、著作権の支払いを回避することは別の主張だ。結局のところ、”もしみんなに見えるように公開されてたら、それで訓練するのはたぶんOK。もし有料の壁の後ろに置かれてて、君が金を払ってないなら、訓練は関係なく違反だよ。”ってことだね。" userName="Workaccount2" createdAt="2025/07/22 13:59:33" color="#45d325">}}




{{<matomeQuote body="映画館で撮影すると捕まるって聞いたよ。それには別の法律があるらしいね。" userName="codedokode" createdAt="2025/07/22 14:23:15" color="">}}




{{<matomeQuote body="映画監督や著者、俳優の死体が企業の裏の無名墓地に埋められてるって？想像を絶する恐怖だよ、パイラシーってのは。なんで誰も止めないんだ？<br>「もし普通の人間なら何年も刑務所行きかそれ以下だ」<br>アメリカでの著作権侵害の犯罪化は大賛成じゃないけど、誰がこれで何年も刑務所に入ったんだ？本当に気にしてるなら、次の文でパイラシーが衝撃的で「何かすべき」って思ってるのに、「誰かがそれで刑務所に行くのは良くない」って奇妙なトーンの切り替わりは見られないはずだよね。どうしたんだ？" userName="NoMoreNicksLeft" createdAt="2025/07/22 18:21:29" color="#ff5c5c">}}




{{<matomeQuote body="でもその場合、撮影は技術的には配布じゃないにしても、明らかにコピー配布への一歩だよね？極端な話、Blu-rayをリッピングして1000枚コピーしたけど、まだパッケージングも販売もしてないとする。もしFBIが踏み込んできたら、少なくとも”著作権侵害共謀罪”で起訴されるだろうね。" userName="gruez" createdAt="2025/07/22 14:30:25" color="#45d325">}}




{{<matomeQuote body="んー。それが進歩だとは限らないんじゃない？" userName="recursive" createdAt="2025/07/22 15:24:39" color="">}}




{{<matomeQuote body="それは今回は違うね。俺はwhisper-large-v3とか似たようなASRモデルで、こんなこと遭遇したことないし。多分、字幕が映画に焼き付けられてるから抽出が難しいんだと思う。単体の字幕には、音とテキストに合う対応する動画が必要だしね。だから、既に揃ってるYouTube動画に勝るものはないよ。" userName="cyp0633" createdAt="2025/07/22 10:50:54" color="">}}




{{<matomeQuote body="少なくとも英語については、そういう”ファンサブ”は動画に焼き付けられてないのが普通だよ。MP4やMKVみたいな動画コンテナの中に、字幕ストリームとして入ってるんだ。SRTファイルとして抽出できるんだよ。昔のAVIファイルではもっと一般的だったけどね。" userName="simsla" createdAt="2025/07/22 12:24:15" color="#ff5733">}}




{{<matomeQuote body="でも、彼らがそんなことしたっていう告発は見たことないな。普通は、海賊版を意図的に共有してる情報源から海賊版を手に入れるもんじゃない？" userName="kube-system" createdAt="2025/07/22 15:02:37" color="">}}




{{<matomeQuote body="うん、俺は数学（代数と数論）を勉強したんだけど、ゼロって特異点なんだよ。不連続だったり、変な漸近挙動を示すことがよくある。かなりのアルゴリズムで何らかの除算を使ってるし、ゼロは（Z, Q, R, Cみたいな）普通の構造の中で、除算に使えない唯一の数なんだ。" userName="inglor_cz" createdAt="2025/07/22 08:12:57" color="">}}




{{<matomeQuote body="faster-whisperにはmin_silence_duration_msっていうオプションがあるよ。" userName="Xmd5a" createdAt="2025/07/22 09:05:46" color="">}}




{{<matomeQuote body="「著作権侵害は衝撃で何かすべき」から「誰かが刑務所に入るのは良くない」と意見が変わるの、おかしいって？俺の投稿を上から目線で解釈するなよ。俺が言いたいのは、著作権侵害を起訴するなら徹底的にやれ、しないならするな、ってこと。個人が人生台無しにされて、企業が何十億も稼ぐ今の状況は、本当に気持ち悪いよ。" userName="snickerdoodle12" createdAt="2025/07/22 18:37:57" color="#ff5733">}}




{{<matomeQuote body="ここじゃ有名な地雷を踏むリスクがあるけど、今年のIMOの問題セットはどうだった？" userName="CamperBob2" createdAt="2025/07/22 18:02:44" color="">}}




{{<matomeQuote body="YouTubeがキャプションの自動文字起こしを始めた頃、ノイズや音楽、特に産業ノイズは、しょっちゅう”[foreign]”って表示されてたよ。理解できなかったら、ずっと”[foreign]”扱いだったんだよね。" userName="indrora" createdAt="2025/07/22 10:45:40" color="#38d3d3">}}




{{<matomeQuote body="君はAIの”学習”を、Blu-rayを不正コピーするのと同等に見てるようだけど、実際は違うよ。裁判所はこれまで学習はフェアユースだと判断してるし、それは当然だね。Blu-rayを丸ごとコピーするのと違って、AI会社は変革的なAIモデルを作ってるんだからさ。AIモデルとかAI企業のビジネスモデルが嫌いでも、Blu-rayをコピーするのとAIモデルを学習させるのが同じだなんて、信用できないよ。" userName="gruez" createdAt="2025/07/22 17:11:09" color="#ff5c5c">}}




{{<matomeQuote body="彼らは海賊版コンテンツだけじゃなく、文字通りインターネット全体をスクレイピングしてそれも使ってるんだぜ。" userName="snickerdoodle12" createdAt="2025/07/22 16:53:14" color="">}}




{{<matomeQuote body="典型的な過学習だね。LLMが外出中返信を翻訳だと思っちゃうのと同じことだよ: https://www.theguardian.com/theguardian/2008/nov/01/5" userName="dlcarrier" createdAt="2025/07/22 06:21:45" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これって過学習じゃなくて、データ品質や分類の問題なんじゃない？" userName="stingraycharles" createdAt="2025/07/22 07:06:39" color="">}}




{{<matomeQuote body="もしモデルがちゃんと汎化できてたら、沈黙に対しては「[silence]」とか「…」って出力するはずだよね。代わりに、訓練データで見たものに逆戻りしたから、過学習なんだよ。" userName="bGl2YW5j" createdAt="2025/07/22 07:53:38" color="#45d325">}}




{{<matomeQuote body="なるほど、俺の過学習の定義が間違ってたのかも。特定のベンチマークや用途に最適化しすぎて、他の分野で失敗することだと思ってたよ。君の言い方だと「モデルがちゃんと汎化できない」ってことだね、つまり沈黙の概念を理解してないってこと。でもそれだと、どんな間違いや未知のことも”過学習”で説明できちゃうんじゃない？線引きはどこでするの？" userName="stingraycharles" createdAt="2025/07/22 09:17:58" color="#38d3d3">}}




{{<matomeQuote body="違うと思うな。過学習は「モデルが訓練データに密着しすぎて、*未知の*データに汎化できない」ことだよ。これは「silence」を前に見たことがあるから、過学習じゃなくて「ゴミを入れたらゴミが出る」ってやつだね。" userName="RamblingCTO" createdAt="2025/07/23 07:10:09" color="#785bff">}}




{{<matomeQuote body="君の定義も一つだけど、スレ主が使ってるのは訓練データへの過学習だよ。" userName="heavyset_go" createdAt="2025/07/22 11:12:43" color="">}}




{{<matomeQuote body="まさにそこが俺の言いたいことなんだよ。その定義だと、どんな間違いも「訓練データへの過学習」で説明できちゃうじゃないか。「訓練データへの過学習」と「不正確なデータ」の線引きはどこでするの？" userName="stingraycharles" createdAt="2025/07/22 11:43:49" color="#ff33a1">}}




{{<matomeQuote body="それはちょっと違うね。94381294*123の計算を間違えたけど、正解に近かったとしても、訓練データになかったら過学習じゃないでしょ。" userName="tempaccount420" createdAt="2025/07/22 12:28:28" color="#ff5733">}}




{{<matomeQuote body="“その定義なら、どんな間違った答えも“トレーニングデータへの過学習”で説明できちゃう”って？いや、そうじゃないよ。例えば、アンダーフィッティングが原因のエラーもあるし、データが正しくても、学習率やドロップアウト率みたいなハイパーパラメータがモデルを過学習させることもあるんだ。<br>“トレーニングデータへの過学習”と“不正確なデータ”の境界線はどこって？互いに排他的じゃない二つの説明に、境界線なんて引く必要ないよ。両方とも真実であり得るんだ（このケースみたいにね）。過学習は症状で、汚いデータが原因さ。" userName="maxbond" createdAt="2025/07/22 15:48:21" color="#45d325">}}




{{<matomeQuote body="これは分類の問題だと思うな。映画の字幕に無音はまず入らないよね、必要ないから。俳優が映ってれば何も話してないって視聴者はわかるし、俳優がいない状況なら“[ロックミュージックが流れる]”みたいな説明字幕が出るでしょ。<br>字幕の作者は、クローズドキャプションの時代から、この無音の時間をメタ情報を入れるのに使ってきたんだ。まともなデータクレンジング手順なら、字幕ソースからこのメタデータを削除すべきだったのに、それがされてない。だから、これは根本的に分類の問題なんだよ。過学習の問題もそうだけど、それは分類の問題に比べたら二の次だね。" userName="mywittyname" createdAt="2025/07/22 19:15:11" color="#ff5c5c">}}




{{<matomeQuote body="これはまずデータの品質問題で、それが結果としてある種の過学習を引き起こしてるんじゃないかな。<br>AIがゼロ振幅のオーディオサンプル列が“[silence]”っていう文字列を生成すべきだって、どうやってわかるの？<br>それは、トレーニングデータの無音の音声セグメントの大部分が、一貫してその文字列でラベル付けされてる場合にしか知りえないよね。でも、そうじゃないみたいだ。無音は全くラベル付けされてないか、色々なマーカーでラベル付けされてるか、著作権表示みたいな無関係なものでラベル付けされてるか。<br>だから、モデルが無音の概念を一般化して学べたとしても、その概念に対してどのラベルを使えばいいのか全然わからないんだ。<br>それで何が起こるかっていうと、モデルが個々の無音セグメントのわずかなバリエーションに過学習し始めちゃうんだ。あらゆる異なる“無音”ラベルの背後に、無理やり何らかのシステムを考案しようとしてね。もちろん、そんなシステムは存在しないから、派手に失敗することになるんだよ。（もし存在したとしても、それは全くの偶然で、学ぶべきものじゃないよね）" userName="xg15" createdAt="2025/07/23 16:05:46" color="#38d3d3">}}




{{<matomeQuote body="実は、AIは自分が答えを知らない時にそれを認識できないからなんだ。たとえ完全に間違っていても、最も近いものを提示しちゃうんだよ。" userName="alienbaby" createdAt="2025/07/22 15:19:39" color="#ff5733">}}




{{<matomeQuote body="アラビア語のテキストは翻訳者の自己紹介クレジットだよ。<br>“Translated by Nancy Qanfar”" userName="hsn915" createdAt="2025/07/22 07:15:58" color="#38d3d3">}}




{{<matomeQuote body="オフ・トピックなのは知ってるんだけど、翻訳者ってイースターエッグを入れるのが好きだったな、少なくとも昔はね: https://learn.microsoft.com/en-us/archive/blogs/ericfitz/i-a..." userName="efitz" createdAt="2025/07/22 12:35:12" color="">}}




{{<matomeQuote body="ドイツ語は“（公共放送の）字幕（コンテンツネットワーク向け）、2017年”って意味だよ。<br>これって本当に過学習かな？ネットワークはトレーニングデータが要求することそのままやってるし。トレーニングデータによると、終わりの無音は著作権表示か字幕クレジットに変換されてるんだ。" userName="wongarsu" createdAt="2025/07/22 07:36:28" color="#38d3d3">}}




{{<matomeQuote body="過学習って、何だと思う？それが過学習じゃないなら。" userName="baobabKoodaa" createdAt="2025/07/22 07:40:07" color="">}}




{{<matomeQuote body="過学習っていうのは、過度に具体的な詳細を再現することだよ。例えば、特定の無音（または静かなノイズ）のパターンが、特定の著作権表示にマッチするみたいなね。<br>でもこのケースでは、動作は複数の言語にわたって一般化してるみたいだし、モデルは言語に応じて代表的な“アウトロ無音”のキャプションを選んでる。これは、トレーニングデータがアウトロ無音がキャプション付けされていることを示しているのと矛盾しないんだ。<br>もしモデルが完全に一般化してたとしたら、“[ここに字幕クレジット]”みたいな表示になるだろうけど、それはちょっと求めすぎだね。<br>トレーニングデータではアウトロ無音が通常の無音とは異なる形で一貫して変換されてるのに、アウトロ無音を無音として変換しちゃってたら、それはアンダーフィッティングだよ。" userName="wongarsu" createdAt="2025/07/22 08:20:56" color="#45d325">}}




{{<matomeQuote body="オプティマイザーは正しく機能してるし、トレーニングデータに実際にパターンが存在してる。だけど考えてみてくれよ。この振る舞いは、サンプル外データに対するモデルのパフォーマンスを損なってるんだ。無音時に予測する言葉が増えるたびに、トランスクリプトの単語誤り率（Word Error Rate）が上がる。<br>これらの翻訳クレジットはトレーニングデータの副産物であって、私たちがモデリングしようとしているプロセス（話し言葉）の反映じゃない。<br>だから、ここで機能してるメカニズムについて君の言うことは正しいんだけど、パフォーマンスを損なう偽のパターンを学習することを“過学習”と呼ぶのは、やっぱり正しいんだよ。" userName="maxbond" createdAt="2025/07/22 08:27:54" color="#ff5c5c">}}




{{<matomeQuote body="過学習は訓練データで成績がどんどん良くなって、未知のタスクでは悪くなることだよ。詳しくはこちら: https://en.wikipedia.org/wiki/Overfitting#Machine_learning これは単に訓練データがおかしいだけ。" userName="bmacho" createdAt="2025/07/22 10:50:07" color="#785bff">}}




{{<matomeQuote body="訓練データのノイズにフィットするのがまさしく過学習だし、シグナルを平滑化するのが未学習だよ。" userName="samrus" createdAt="2025/07/22 07:59:21" color="#785bff">}}




{{<matomeQuote body="過学習ってのは訓練データの一般化に失敗することだろ？ これはちゃんと一般化されてるじゃん。ゴミを入れたらゴミが出るってことだ。" userName="xigoi" createdAt="2025/07/22 09:59:27" color="">}}




{{<matomeQuote body="違うね。データには無音が正しくラベリングされた例もあったはずだ。でもモデルはヌルケースを処理できずにアウトロに過学習したんだよ。結局、ヌル特徴のラベルにあるランダムなエラーにフィットしたんだ、これが過学習だよ。" userName="samrus" createdAt="2025/07/22 17:11:12" color="#45d325">}}




{{<matomeQuote body="まさにその通りだよ。もしモデルがアウトロの無音と普通の無音の違いを認識しなかったら、それはアンダーフィッティングになるね。" userName="wongarsu" createdAt="2025/07/22 08:22:41" color="#ff5733">}}




{{<matomeQuote body="それこそが過学習の意味そのものだよ。それにしても、AI企業が違法や著作権を無視してデータをかき集めてる証拠がまた出たってことだね。他の人たちが逮捕されたり多額の罰金を科されたりしたのと同じ違反だろ。" userName="andrepd" createdAt="2025/07/22 10:07:31" color="#ff33a1">}}




{{<matomeQuote body="過学習って、訓練データの中に意図しないパターンを見つけちゃうことじゃないの？ まさにこれのことなんじゃない？" userName="mort96" createdAt="2025/07/22 07:45:27" color="">}}




{{<matomeQuote body="必ずしもそうじゃないよ。もし無音の例の60%が幻覚だとしたら、それはただ（君が間違ってると思う）間違った関連性を学習してるだけなんだから。" userName="RamblingCTO" createdAt="2025/07/23 07:16:07" color="">}}




{{<matomeQuote body="それが…過学習ってものだろ。訓練データにある、俺たちが望まないパターンを拾っちゃって、そのせいでうまく一般化できなくなるんだから。" userName="mort96" createdAt="2025/07/24 18:30:03" color="#ff5733">}}




{{<matomeQuote body="データがそもそもゴミだったのに、どうやって過学習って言えるんだよ？ この状況で過学習って言っても意味ないだろ、俺たちが訓練してる効用関数を最大化する別の方法なんてないんだからさ。" userName="RamblingCTO" createdAt="2025/07/25 15:15:42" color="#ff5c5c">}}




{{<matomeQuote body="データ品質が悪かったから、モデルが過学習しちゃったんだよ。" userName="maxbond" createdAt="2025/07/22 07:26:53" color="#ff5733">}}




{{<matomeQuote body="過学習ってのは、モデルが訓練データに適合しすぎて、新しいデータに対応できないこと。今回は訓練データがクソだったから、間違って分類したってことだよ、いわゆる「ゴミIN、ゴミOUT」だね。" userName="RamblingCTO" createdAt="2025/07/23 07:14:53" color="#45d325">}}




{{<matomeQuote body="アラビア語の「رجمة نانسي قنقر」は「Nancy Qanqarの翻訳」って意味だよ。" userName="sivers" createdAt="2025/07/22 06:00:06" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="チェコ語でもね、Whisperは音楽を「Titulky vytvořil JohnyX」（JohnyXが字幕を作成）って認識するんだよ。同じ理由でね。" userName="mormegil" createdAt="2025/07/22 06:21:23" color="#ff33a1">}}




{{<matomeQuote body="ハハ、トレントでダウンロードされた映画で学習したんだね！MPAもさぞかし誇らしいだろうさ。" userName="actionfromafar" createdAt="2025/07/22 07:04:17" color="">}}




{{<matomeQuote body="これらの会社が、こんな明らかな著作権侵害の責任を問われないなんて、マジでイカれてるよ。" userName="Incipient" createdAt="2025/07/22 07:13:10" color="#ff5c5c">}}




{{<matomeQuote body="お金をかけたら好きなアーティストの曲を個人利用でダウンロードするだけで破産させられるのに、AI業界はオンラインのメディアを商業利用しまくって、著作権侵害しまくってる。それでも金と権力があるから、自分たちに都合のいいように物事を動かせるんだ。" userName="jdiff" createdAt="2025/07/22 07:33:55" color="#ff5733">}}




{{<matomeQuote body="個人的なダウンロードだけで破産レベルの罰金になったケースはほぼないよ。大抵はダウンロードと共有（配布）の両方をしてた場合だね。トレントが破産につながるのは、配布行為に関わってるからだよ。" userName="d1sxeyes" createdAt="2025/07/22 09:02:32" color="#ff33a1">}}




{{<matomeQuote body="訓練データが映画の非公式字幕だったのが原因みたいだね。クレジットロール中に無音で「Translated by X」みたいな文字列が入ってたんだ。" userName="aprilthird2021" createdAt="2025/07/22 06:11:19" color="#ff33a1">}}




{{<matomeQuote body="ドイツ語では公式ソースを使ったみたいで、「Untertitelung des ZDF für funk, 2017」（ZDFがfunk向けに字幕作成、2017年）って幻覚するらしいよ。公共放送のMediathekがドイツで一番大きい字幕付き動画のリソースだからね。でも、ZDFがLLM訓練に許可したかは疑問だね。" userName="rob74" createdAt="2025/07/22 06:25:44" color="#45d325">}}




{{<matomeQuote body="ダウンロードだけだと高額な罰金はないって思うんだよね。IPアドレスだけが証拠なんだってさ。Njord LawとかOVPNのブログ見てみてよ。1: https://www.njordlaw.com/filesharing-and-downloading-films/q...<br>2: https://admin.ovpn.com/en/blog/online-integrity-new-threats-..." userName="0points" createdAt="2025/07/22 10:03:07" color="#ff5c5c">}}




{{<matomeQuote body="IPアドレスだけが証拠ってのがおかしい？『オープンWi-Fiだった！』とか『TORノードだった！』なんて言い訳、裁判官は信じないみたいだね。駐車違反と同じで、民事裁判は『証拠の優越』だからさ。" userName="gruez" createdAt="2025/07/22 14:23:53" color="#38d3d3">}}




{{<matomeQuote body="ZDFがLLMの学習に許可出したかって？多分、聞かれてないだろうね。" userName="MrGilbert" createdAt="2025/07/22 06:36:46" color="">}}




{{<matomeQuote body="著作権って頭おかしいよな。知的所有権なのに固定資産税がないのはおかしい。毎年価値を申告して税金を払うべきだよ。" userName="scotty79" createdAt="2025/07/22 11:05:36" color="#45d325">}}




{{<matomeQuote body="刑務所行きをちらつかされてZDFにお金を払わされた人たちと一緒だよな。" userName="h784gljf" createdAt="2025/07/22 06:49:38" color="">}}




{{<matomeQuote body="親コメが『アップロードしてる人だけが狙われてる』って言ってたけど、それ違うからね。" userName="0points" createdAt="2025/07/22 14:58:52" color="">}}




{{<matomeQuote body="Torrentに参加してるなら、ダウンロードする時にアップロードもしてるから、ほぼシードしてるってことだね。" userName="gruez" createdAt="2025/07/22 15:05:11" color="#45d325">}}




{{<matomeQuote body="不正にコンテンツを配布できるようにするのと、不正なコンテンツを配布するのとは違うんだ。シードはコンテンツを配布可能にするんじゃなくて、配布され続けるようにすることだよ。" userName="0points" createdAt="2025/07/22 16:04:19" color="#ff5733">}}




{{<matomeQuote body="Torrentはダウンロードだけじゃなくてアップロードもしてるんだよ。あんたの貼ったリンクにも『ファイル共有はダウンロードとアップロードの両方を含む』って書いてあるじゃん。" userName="d1sxeyes" createdAt="2025/07/22 14:19:48" color="#785bff">}}




{{<matomeQuote body="映画業界は金とロビー活動の力があるからね。たった一人のTorrenterなんかよりよっぽど大きな脅威だろ？" userName="1718627440" createdAt="2025/07/22 07:39:18" color="">}}




{{<matomeQuote body="弁護士が依頼人や被害者に区別がないと思わせようと話すけど、実際には明確な区別があるんだよ。これは弁護士特有の言い回しだね。" userName="0points" createdAt="2025/07/22 15:00:05" color="">}}




{{<matomeQuote body="ドイツの公共放送が出資してるYouTuberのFunkのコンテンツは、ほとんどがYouTubeで地域制限なしで見られるよ。" userName="unusual-name" createdAt="2025/07/22 06:52:57" color="">}}




{{<matomeQuote body="もし著作権保護のために知的財産（IP）の価値を申告し、毎年税金を払い、買い手がいれば売却義務があるとしたら、大変なことになるよ。例えば、そこそこ売れている本を書く作者が、経済的価値だけで申告すれば作品を取り上げられる不安に怯え、個人的な価値も加えると税金が高すぎて執筆を続けられなくなる可能性がある。" userName="retsibsi" createdAt="2025/07/22 11:38:07" color="#ff5733">}}




{{<matomeQuote body="でも両方違法じゃないの？<br>もしTorrentのシーダーが映画をリッピングする海賊団の一員だとバレたら、普通のTorrenterが数千ドルで済むよりずっと重い罰則を受けるだろうね。それにAI企業も“コンテンツを利用可能にしてる”んじゃないかな？" userName="gruez" createdAt="2025/07/22 16:43:33" color="">}}




{{<matomeQuote body="確かにその通りだけど、Torrentの場合は違うんだ。ダウンロードする時には同時にアップロードもしてるからね。" userName="d1sxeyes" createdAt="2025/07/22 17:00:49" color="">}}




{{<matomeQuote body="この人はドイツのテレビとラジオの受信料（Rundfunkgebühren）について話してるんだね。<br>これは表現の自由と公平な公共放送を確保するための、国が定めたシステムだよ。ドイツでは全世帯がこの料金を払う義務があるから、常に議論が続いてる。低所得世帯だけが例外なんだ。<br>URL: https://en.wikipedia.org/wiki/ARD_ZDF_Deutschlandradio_Beitr..." userName="eclecticfrank" createdAt="2025/07/22 07:18:07" color="#ff5c5c">}}




{{<matomeQuote body="DHCPアドレスって再起動するとよく変わるんだよね。だから、ISPが完全に正確な記録を持ってるか、それを正しく開示してくれるかなんて信用できないよ。" userName="actionfromafar" createdAt="2025/07/22 14:30:28" color="">}}




{{<matomeQuote body="これがAI業界全体を支えてるって事実が、さらにこの問題の重要性を増してるね。法律作ったり裁判したりする時、AIを金のなる木として潰したくない人もいるし、著作権を厳しくしない国に遅れを取るのを心配する人もいるだろうね。IP所有者はAI業界を訴えてるけど、成功してるかというと微妙なところだよ。" userName="jdiff" createdAt="2025/07/22 07:43:13" color="#45d325">}}




{{<matomeQuote body="両方違法だよ、そうだね。でも、それが同じことってわけじゃないんだ。いろいろな程度の違いがあるからね。<br>＞それにAI企業も“コンテンツを利用可能にしてる”んじゃないかな？<br>それが何を言いたいのか、ちょっと分からないな。" userName="0points" createdAt="2025/07/22 17:07:08" color="">}}




{{<matomeQuote body="もし不動産税をこんな風に評価したらって想像できる？「いい一軒家だね。誰も君が払ったのと同じ金額を提示しないことを願うよ、さもなければ君と君の子供はまたアパート暮らしに戻るんだから」ってことになるだろうね。" userName="thunderfork" createdAt="2025/07/22 12:27:34" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
