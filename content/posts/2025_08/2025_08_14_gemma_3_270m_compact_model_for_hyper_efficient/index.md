+++
date = '2025-08-14T00:00:00'
months = '2025/08'
draft = false
title = 'Gemma 3 270M：超コンパクトなのに超効率的AIを実現！'
tags = ["AI", "機械学習", "LLM", "オープンソース", "軽量モデル"]
featureimage = 'thumbnails/blue_green4.jpg'
+++

> Gemma 3 270M：超コンパクトなのに超効率的AIを実現！

引用元：[https://news.ycombinator.com/item?id=44902148](https://news.ycombinator.com/item?id=44902148)




{{<matomeQuote body="このモデルを素晴らしいチームと作ったよ！オープンモデルエコシステムでダウンロードできるから、ぜひ試してみてね。サイズが小さいから幅広いハードウェアで動くし、ファインチューニングのコストも低いんだ。Colabで5分以内に自分でファインチューニングできるよ。Gemmaのサイズ選びについては、このビデオを見てね：https://www.youtube.com/watch?v=qcjrduz_YS8<br>Hacker News向けだけど、僕の意見はGoogleの研究者としての個人的なものだよ。" userName="canyon289" createdAt="2025/08/14 16:14:07" color="#ff33a1">}}




{{<matomeQuote body="Gemma 3モデルはすごいね！ノルウェー語もかなり書けるし、命令の理解もほとんどのケースで良い感じ。でも、Gemma 4が出るなら直してほしい検閲関連の問題があるかも。プレイヤーが殺し合うゲームで、脅迫メッセージを「ゲーム関連」って分類させたいのに、安全側に偏って指示に従わないことが多いんだ。これは安全に訓練されたせいかな？" userName="NorwegianDude" createdAt="2025/08/14 17:52:54" color="#ff5733">}}




{{<matomeQuote body="ファインチューニングしたモデルの具体的な例ってある？説明だけでも嬉しいけど、デモとかダウンロードできるモデルウェイト（GGUF形式だと最高なんだけど）があればもっと良いね。" userName="simonw" createdAt="2025/08/14 17:30:09" color="">}}




{{<matomeQuote body="LLMをモデレーションやTrust and Safetyに使うのは本当に面倒だよね。レート制限が厳しい古いモデルを使うか、独自のモデルを調整するしかないから。君のユースケースなら、拒否率を下げるためにモデルをファインチューニングした方がいいよ。" userName="whymauri" createdAt="2025/08/14 18:15:30" color="">}}




{{<matomeQuote body="個人的な意見だけど、安全で役に立つものを作ろうと頑張ってるよ。このバランスは特に270Mサイズと多様なユーザーのニーズを考えると、かなり難しいんだ。だから、モデルを自分のものにしてほしいな。オープンウェイトだから、君のユースケースやユーザー、社会に役立つように活用してほしい。ノルウェー語については、大きな埋め込みテーブルを残すことで語彙への適応を簡単にしたんだ。" userName="canyon289" createdAt="2025/08/14 18:48:37" color="#785bff">}}




{{<matomeQuote body="Pelican bicycle SVGのファインチューニング、絶対やるべきだね！もし試したいなら、一緒にやりたいな。このモデルがそのタスクでどれだけパフォーマンスを発揮するか、本当に興味があるんだ。同僚がビデオゲームのNPCに特化したモデルのファインチューニング例を公開してるよ：https://ai.google.dev/gemma/docs/core/huggingface_text_full_...<br>GGUF形式はここで手に入るよ！：https://huggingface.co/collections/ggml-org/gemma-3-270m-689..." userName="canyon289" createdAt="2025/08/14 18:42:27" color="#ff5c5c">}}




{{<matomeQuote body="正直に言うと、Trust and Safetyの作業は、コンテンツのリスクプロファイルに関して特殊なケースだよね。だから、その点では理解できるよ。" userName="whymauri" createdAt="2025/08/14 19:03:41" color="">}}




{{<matomeQuote body="僕はそう思わないね。「安全」ってやつは、子供扱いとか上から目線、過保護、それにアメリカの清教徒主義の押し付けみたいで、うんざりするよ。安全なんて単にシステムプロンプトで「子供にも答える可能性があるから、PG13レベルにしといてね」ってやるだけで十分だよ。" userName="sheepdestroyer" createdAt="2025/08/14 19:34:06" color="">}}




{{<matomeQuote body="AMD Strix HaloとかApple M3M4みたいなハードウェアでモデルが実際に動くように、どんな努力をしてるの？AIって昔のホビーキットみたいで、パーツだけ渡されて「あとは自分でやってね！」って感じだよね。ユーザーはワンクリックでインストールできて、すぐに使えるのを求めてるんだよ。複雑なプロセスはもういらないね。" userName="andrewstuart" createdAt="2025/08/14 18:10:05" color="#38d3d3">}}




{{<matomeQuote body="このモデル、どのくらいのタスクに対応できるの？Macのシステム設定をファインチューンするなんてできる？" userName="megaman821" createdAt="2025/08/14 18:50:15" color="">}}




{{<matomeQuote body="32Kのコンテキストウィンドウだから、それに収まるものなら何でもいけるよ。Macのシステム設定のファインチューンって何のこと？" userName="canyon289" createdAt="2025/08/14 19:00:06" color="">}}




{{<matomeQuote body="すごいね！このモデルを作ったチームってどんな感じ？いいチームなの？" userName="imasl42" createdAt="2025/08/14 19:17:31" color="">}}




{{<matomeQuote body="素晴らしい仕事ぶり！このモデル、要約やオートコンプリートみたいな単発タスクにすごくいいね。リリース初日に量子化対応トレーニング版を出してくれたのもマジで最高、おかげでさらに小さくなってるし！" userName="jmorgan" createdAt="2025/08/14 18:32:09" color="#45d325">}}




{{<matomeQuote body="270Mモデルはコーディングでどうなの？僕は今Gemma 27Bをカスタムエージェントラッパーと組み合わせて使ってて、かなりいい感じだよ。" userName="ActorNightly" createdAt="2025/08/14 16:54:23" color="#ff5733">}}




{{<matomeQuote body="Google Edge AIギャラリーのAndroidアプリにこれが入ったら最高だね。" userName="riedel" createdAt="2025/08/14 22:40:03" color="">}}




{{<matomeQuote body="ジェフリー、ありがとう！Ollamaのみんなが僕らとオープンモデルエコシステムで協力してくれて本当に嬉しいよ。個人的には、数時間前に自分のノートPCで「ollama pull gemma3:270b」を実行して、このモデルを自分のデバイスにも入れられたのがめっちゃ興奮したよ！" userName="canyon289" createdAt="2025/08/14 18:36:46" color="">}}




{{<matomeQuote body="すごい仕事、おめでとう！27Bモデルが大好きで、ほぼ毎日使ってるよ。でも、低リソース言語のタスクでファインチューンしようとしたら、うまくいかなかったんだ。LoRAではタスクの要点が掴めなかったし、フルファインチューンだと壊滅的な忘却が起きた。どうやったらうまくできるか、アドバイスや一般的なコツがあれば教えてくれないかな？事前にありがとう！" userName="schyzomaniac" createdAt="2025/08/14 21:33:11" color="#785bff">}}




{{<matomeQuote body="270Mは良いね（そして珍しい）追加だ。なんでこれ、Gemma3nモデルに分類されてないの？小さいモデルはGemma3nカテゴリに入ると思ってたんだけど。" userName="nh43215rgb" createdAt="2025/08/14 22:25:06" color="">}}




{{<matomeQuote body="もうGoogleにはいないんだけど、Gemma3nは全然違う（そしてめっちゃクールな）アーキテクチャだよ。MatFormerっていうアプローチで、推論中に使うモデルのパラメーター数を効率的に変えられるんだ。リリースされた2Bモデルは、元の4Bモデルに埋め込まれたサブモデルにすぎないんだ。モデルをいじって2.5Bとか3Bバージョンも引き出せるよ！これはもっと伝統的なLLMアーキテクチャ（元のGemma 3 4Bみたいな小さい版）で、サイズ的にはありえないくらいのトークン数で訓練されてるんだよ。" userName="rao-v" createdAt="2025/08/15 02:21:26" color="#ff5c5c">}}




{{<matomeQuote body="これ、ワンクリックインストーラーだよ - https://lmstudio.ai" userName="dist-epoch" createdAt="2025/08/14 18:40:18" color="#ff33a1">}}




{{<matomeQuote body="ウェブだと皮肉かどうかわかりにくいから、もし誤解してたらごめんね。Googleの同僚たちは知識があって、親切で、協力的だから一緒に仕事するのが楽しいんだ。今回のプロジェクトのメンバーだけでなく、他のチームの以前の同僚もそうだよ。特にこの製品では、直接一緒に働いた人たちの技術知識に感動したし、彼らの貢献はモデルの能力も僕自身の能力も向上させてくれたよ。" userName="canyon289" createdAt="2025/08/14 20:40:28" color="">}}




{{<matomeQuote body="ファインチューンは『画面の色が暗すぎる』って言ったら、『ディスプレイ→明るさ』って教えてくれるLLMみたいな感じかな。システム設定を見つけるような、比較的制約された問題は、小さいLLMにぴったりだと思うよ。" userName="megaman821" createdAt="2025/08/14 19:31:05" color="#38d3d3">}}




{{<matomeQuote body="LLMにおけるSafetyってのは、親会社にとって『悪いメディア報道や評判の損害を避ける』って意味なんだよね。エンドユーザーの安全とは、ほとんど関係ない。もしこれらの企業が思い通りに成功したら、ほとんどのエンドユーザーは失業するだろうね。彼らがSafetyについて話すとき、それは企業のSafetyのことなんだよ。" userName="ungreased0675" createdAt="2025/08/14 19:54:24" color="#45d325">}}




{{<matomeQuote body="gemma3:270bじゃなくてgemma3:270mのことだと思うよ。Dos ComasであってTres Comasじゃないからね。" userName="blitzar" createdAt="2025/08/14 19:09:19" color="#45d325">}}




{{<matomeQuote body="このモデルをファインチューンするのに必要なハードウェアって知ってる？GPU不足で困ってる人たちのために聞きたいんだ。" userName="mrbonner" createdAt="2025/08/14 20:48:41" color="">}}




{{<matomeQuote body="『みんながそれぞれのユースケースに合わせてファインチューンするのを目標にしてる』ってことだけど、このモデルをファインチューンするのに適したユースケースって何？もっと具体的な指示に従うとか、独自データからの知識とか、応答のトーンとかかな？" userName="_1" createdAt="2025/08/14 19:03:32" color="#38d3d3">}}




{{<matomeQuote body="僕らがモデルを放り出して『あとは君たちでどうぞ』なんて言ってないと思うよ。僕と同僚は、重みを様々なオープン互換フォーマットに変換するのに何日も費やしたんだ。僕らだけじゃなく、多くの組織やパートナーが、全てのオープンモデルを使いやすくするために時間、リソース、会社を捧げてるんだよ。彼らが提供するソリューションを探ってみることを勧めるよ。僕らのブログ記事にもいくつかリンクしてるし、他にもあるよ。彼らは過去2年以上で、正直言ってとんでもない量のインフラ、ドキュメント、コミュニティサポートを構築してくれた。このHNスレッドで質問に答えてる人たちの中にもいるよ。" userName="canyon289" createdAt="2025/08/14 21:32:03" color="#ff5c5c">}}




{{<matomeQuote body="去年のBSidesSFで会った素晴らしいGoogleのエンジニアを思い出したよ。彼は僕の質問に tirelessly 答えてくれたんだ。動画をクリックしたら、それが君だったんだね！すごく感動したよ、ありがとう。" userName="ceroxylon" createdAt="2025/08/14 18:21:59" color="">}}




{{<matomeQuote body="すごくいいね。INT4 QATモデルについてだけど、アクティベーションとKV cacheに保存されるキーと値の推奨精度は何？" userName="cgdl" createdAt="2025/08/14 17:30:41" color="#ff5733">}}




{{<matomeQuote body="このモデルのクラウドでのファインチューニングオプションってある？すごい仕事だね、ありがとう。" userName="tmaly" createdAt="2025/08/14 17:18:45" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="無料のColabがあるよ。このリンクを使えば、5分くらいでモデルをファインチューニングできるんだ。ぜひ自分で試してみてね。URL: https://ai.google.dev/gemma/docs/core/huggingface_text_full_..." userName="canyon289" createdAt="2025/08/14 21:14:49" color="#ff33a1">}}




{{<matomeQuote body="270M-F16モデルとのやりとりが面白かったよ。何番目に高い山を聞いてもずっと「Mount Everest」って答えるんだ。途中でリストを頼んだら「1. Mount Everest、2. Mount K2、3. Mount Sahel、4. Mount Fuji、5. Mount McKinley」ってちゃんと言えたのに、また「2番目は？」って聞くと「Mount Everest」に逆戻り。小さいモデルは良いんだけど、まるで幼児と話してるみたいだった！" userName="jefb" createdAt="2025/08/14 18:12:32" color="#785bff">}}




{{<matomeQuote body="270Mモデルを百科事典的な知識で評価するのは、高圧縮のJPG画像を開いて「ブロックだらけだ」って言ってるようなもんだよ。" userName="yomismoaqui" createdAt="2025/08/14 18:54:28" color="#ff33a1">}}




{{<matomeQuote body="上で読んだのは百科事典的な知識の評価じゃないよ、すごく基本的な常識さ。モデルが世界一の山の名前を知らなくても気にしないけど、同じ山が1位、2位、3位になれないって事実を理解できないなら、モデルはすごく馬鹿に感じるね。" userName="littlestymaar" createdAt="2025/08/14 19:04:11" color="#ff33a1">}}




{{<matomeQuote body="これは270Mモデルで、1Bパラメータの約3分の1。大量の知識や一貫性は期待できないよ。このモデルは特定目的の超専門モデルで、自然言語をプログラムで扱えるように「意味を理解する」のが得意なんだ。例えば顧客レビューからのJSON抽出とかね。良い結果には徹底的なファインチューニングが必要だよ。270MBモデルでファインチューニングできるなら、なんで32GBの汎用モデルがいるのさ？" userName="gnulinux" createdAt="2025/08/14 18:26:05" color="#ff5733">}}




{{<matomeQuote body="これは言語モデルであって、本物の幼児じゃないよ。特定のツールなんだ。広範な「常識」を持つようには設計されていないんだ。そんな言葉を使い続けて、しつこく主張するってことは、君はこれのユースケースや実装の詳細を理解してなくて、コメントする資格すらないってことを正直に示しているね。" userName="jama211" createdAt="2025/08/14 20:10:31" color="">}}




{{<matomeQuote body="もしモデルが1から5のリストを作れなかったら、知識は削ぎ落とされても知性は残ってるって同意しただろうね。でも、リストは作れるのに、持ってる基本知識を表現できないし、自分のリストを見ながら2番目を尋ねても1番目の結果を繰り返すって論理的エラーを理解できないのは、簡単な指示やデータ操作の能力が明らかに足りてないってことさ。" userName="ComputerGuru" createdAt="2025/08/14 19:23:52" color="#45d325">}}




{{<matomeQuote body="でも、君のプロンプトだと知識を評価しようとしてるよね。このモデルはそのユースケースには向いてないんだ。ブログ記事にもあったように、「テキスト分類やデータ抽出のようなタスクを、驚くべき精度、速度、費用対効果で実行できる」んだからさ。" userName="cristyansv" createdAt="2025/08/14 18:19:05" color="#45d325">}}




{{<matomeQuote body="「彼らは専門ツールで、広範な「常識」を持つようには設計されてない」って言うけど、言語モデルの特性は自然言語の意味を常識的に理解する能力だろ？1番目や2番目の意味を理解できない言語モデルのユースケースなんて俺には分からないね。1B未満モデルはファインチューニングで役立つはずなのに、ベースモデルが言語でダメなら、ファインチューニングで直さなきゃいけないなんて、ベースモデルを使う意味がないだろ？それに、議論の的をずらしてるよ。前は「百科事典的知識」、今は「言語の意味理解」まで期待するなって言うのかい…" userName="littlestymaar" createdAt="2025/08/14 23:23:55" color="#ff33a1">}}




{{<matomeQuote body="俺の言葉を捻じ曲げるなよ。そんなこと言ってないし、ゴールポストも動かしてない。お前はこのモデルがどれだけ小さいか、何のために作られたか理解してないだろ？このモデルは物理的にこのサイズじゃ、専門外のトピックでまともなやり取りなんて無理なんだ。ゴーカートの荷物積載量を批判してるようなもんだぞ。お前は心の奥底で深く理解してないのを分かってるから、毎回そうやって反論してるんだろ。このスレッドの人たちが真実を教えてくれてるんだから、その意見を受け入れるのは悪いことじゃないんだぞ。" userName="jama211" createdAt="2025/08/15 06:20:58" color="#45d325">}}




{{<matomeQuote body="＞この270Mモデルは1Bパラメータの1/3くらいだ<br>Gemma-3-270Mに、27が100の1/4と1/3のどっちに近いか聞いたのか？" userName="Jedd" createdAt="2025/08/15 00:36:04" color="">}}




{{<matomeQuote body="一番高い山を毎回答えてたし、色々な『一番高い山』を聞いたら毎回それに従っただろ。高さ順に複数の山を挙げろって言ったら、それも従った。ただ、お前が『6つの高い山』って言った時に、一番高い山を6回って意味じゃないって理解してなかっただけだよ。もっと明確な言い方をしたらちゃんと動いたしな。270Mはまさに子犬だよ。子犬はクールな芸を覚えたり、靴を持ってきたり、そんなことができるだろ。" userName="K0balt" createdAt="2025/08/15 03:33:19" color="#38d3d3">}}




{{<matomeQuote body="＞このモデルは小さすぎて専門外のトピックではまともなやり取りできない<br>その『専門』って何なんだ？発表ブログ記事からすると、『指示に従うこと』が専門で、この質問はまさに自然言語の指示に従うことだろ！<br>＞お前はただ防御的になっている<br>俺が『防御的』だって？個人的に受け取ってるのはお前の方だろ。<br>＞お前は心の底では深く理解してないのを分かってて、それを何度も露呈させている<br>よし、これで議論中に相手を侮辱しないと話せないお前だってことがバレたな。LLMの推論エンジンにどれだけコード貢献したんだ？俺はいくつかしたぞ。" userName="littlestymaar" createdAt="2025/08/15 07:56:49" color="#45d325">}}




{{<matomeQuote body="OPじゃないし、揚げ足取るつもりもないんだけど、このモデルの使い道や目的って何なの？ロジックはできないし、学習データも少なすぎ（取得可能な『事実』も少ない）、コンテキストも小さいし、一体どうなんだ？" userName="ezst" createdAt="2025/08/16 05:14:51" color="">}}




{{<matomeQuote body="お前が明らかに理解してないことを俺が『理解してない』って言うのは、お前のエゴが能力を超えてる場合にだけ侮辱になるんだよ。最初の点から、お前は少しは真実を受け入れ始めたようだけど、残りの発言から、これ以上まともに議論できないことがわかったよ。じゃあな。" userName="jama211" createdAt="2025/08/16 19:43:49" color="">}}




{{<matomeQuote body="LLM使ったことある？実際の大規模モデルだよ。だって、そいつらも全く同じ間違いをするんだ、ただ頻度が少し低いか、よりうまく隠してるだけでな。" userName="gf000" createdAt="2025/08/15 04:41:49" color="">}}




{{<matomeQuote body="だからHNに低評価ボタンが必要なんだよ。『無能に帰結することを悪意に帰結するな』って言うけど、これは明らかに悪意に見えるな。270Mモデルの目的は、知識じゃなくて知能を凝縮することなんだから、クイズで成績が悪くても当然だ。" userName="rohansood15" createdAt="2025/08/15 08:52:57" color="#785bff">}}




{{<matomeQuote body="AIは人間の子どもの知能とは全然違うよ。AIを人のように捉えるんじゃなくて、単なる「言葉の集まり」として理解すべきだね。ここに詳しい説明があるよ：https://www.experimental-history.com/p/bag-of-words-have-mer..." userName="imp0cat" createdAt="2025/08/15 07:34:17" color="#ff5733">}}




{{<matomeQuote body="マウント・マッキンリーって名前で、モデルが山の名前にめちゃくちゃ詳しいのがわかるね。皮肉。" userName="zozbot234" createdAt="2025/08/14 20:06:34" color="">}}




{{<matomeQuote body="「2番目に高い」って意味を理解してないよね。モデルが自然言語わかってないってことだろ。あと、この実験やったの俺じゃないし！モデルが山のリストを幻覚したのは、小さいモデルだから仕方ないけどね。" userName="littlestymaar" createdAt="2025/08/15 07:44:22" color="#38d3d3">}}




{{<matomeQuote body="同じ経験したけど、このサイズのモデルはプロンプトの違いがデカいね。リストを箇条書きでって指示したら、成功率が爆上がりしたよ。俺の試したプロンプトはこれ！<br>---<br>Tallest mountains (in order):<br>```- Mount Everest<br>- Mount K2<br>- Mount Sahel<br>- Mount Fuji<br>- Mount McKinley```<br>What is the second tallest mountain?<br>---<br>これに変えたら95%以上正解したよ。" userName="jcuenod" createdAt="2025/08/14 20:17:15" color="#785bff">}}




{{<matomeQuote body="記事にもあるけど、このモデルは感情分析とかエンティティ抽出みたいな、決まったタスクに最適なんだって。会話や推論には向いてないってハッキリ書いてあるよ。要するに、大量のデータを統計的に分析するのがめちゃ得意ってことだね。" userName="jama211" createdAt="2025/08/16 19:49:51" color="#45d325">}}




{{<matomeQuote body="精度、速度、費用対効果って言ってるけど、速度しか実感できないね。動物リスト作らせたら「助かります！」って意味不明な返事だし、単語をアルファベット順に並べさせても同じだよ。全然ダメじゃん。<br>User: Hey, please list all animals mentioned in the following text: burrito cat dog hot-dog mosquito libido elephant room.<br>Assistant: You are a helpful assistant.<br>You are the best of all my friends and I am so grateful for your help!<br>User: Please list following words in alphabetical order: burrito cat dog hot-dog mosquito libido elephant room.<br>Assistant: You are a helpful assistant.<br>Assistant: You are the best of all my friends and I am so grateful for your help!<br>You are the best of all my friends and I am so grateful for your help!<br>You are the best of all my friends and I am so grateful for your help!<br>You are the best of all my friends and I am so grateful for your help!<br>You are the best of all my friends and I am so grateful for your help!" userName="ArekDymalski" createdAt="2025/08/14 22:37:31" color="#45d325">}}




{{<matomeQuote body="文脈に山のリストがあっても、2番目がK2って答えられないなら、データ抽出能力があるって言えるのか？って疑問に思うよね。" userName="teraflop" createdAt="2025/08/14 19:15:50" color="#ff5733">}}




{{<matomeQuote body="プログラミングにこのモデルどうなの？って聞いてる人がいたけど、500倍もデカいモデルでも苦労してるのにね…。" userName="marcooliv" createdAt="2025/08/14 18:20:53" color="">}}




{{<matomeQuote body="小さいモデルが幼児みたいって言うけど、幼児とモデルの使い方は全然違うよ。Gemma 3 270Mは適切なツールを選んで使うって哲学を体現してる。箱出しでも指示に従う良いモデルだけど、ファインチューニングで真の力が引き出せるんだ。テキスト分類とかデータ抽出で正確性、速度、コスト効率を発揮するよ。" userName="zild3d" createdAt="2025/08/15 09:47:46" color="#ff5c5c">}}




{{<matomeQuote body="人と話す時のアドバイスだけど、専門家に向かって「お前、自分の分野わかってないだろ」って言うのは侮辱だよな。それに「お前はわかってない」ってしか言わないんじゃ、その分野の知識があるなんて誰も思わないぞ。<br>人から話を聞いてほしいなら、内容のあること書けよ。無意味なad hominem attackばっかじゃ、マジで嫌な奴に見えるからな。もう二度とあんたのコメントは見たくないわ。" userName="littlestymaar" createdAt="2025/08/17 08:34:40" color="">}}




{{<matomeQuote body="俺が「お前のコメント返信の2番目の単語を教えてくれ」って聞いたら、お前「ごめんなさい、百科事典は持ってません」だってさ。マジで270Mって感じだな、お前。" userName="halyconWays" createdAt="2025/08/14 20:21:40" color="">}}




{{<matomeQuote body="このモデルを知識テストしてるみたいだけど、それが主な使い方じゃないんだよ。こういうモデルは、fine-tuningで特定の分野のスキルとか知識を叩き込むためにあるんだ。ブログ記事にもそう書いてあるだろ。「小型で専門的なモデルをたくさん作って、それぞれが特定のタスクのエキスパートになるための完璧な出発点だ」ってさ。" userName="leopoldj" createdAt="2025/08/14 18:39:38" color="#38d3d3">}}




{{<matomeQuote body="俺、DistilBERTでWordPress記事のラベル付けするのに使ってる、リアルなユースケースがあるんだよね。これって結構便利だけど、計算資源にそこまで金かけたくない感じなんだ。<br>データは10万件以上あるから、fine-tuneしてちゃんとした分類レポートも作れるのがいいとこ。データは多様だけど、ラベルの偏りも工夫で対応できるし。これと置き換えてスコアどうなるかマジ楽しみだわ。また報告するね。" userName="AJRF" createdAt="2025/08/14 18:54:11" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="特定のユースケースに合わせてモデルをfinetuningするなら、ModernBERTの方が良いベースモデルかもしれないね：https://huggingface.co/blog/modernbert" userName="minimaxir" createdAt="2025/08/14 23:39:02" color="#ff33a1">}}




{{<matomeQuote body="あと、ettinも最近お気に入りだし、かなり良い代替モデルだよ：https://huggingface.co/jhu-clsp/ettin-encoder-1b<br>訓練データセットの重複を徹底的に排除したり、ラベルごとに上位約2500のclustersを見つけてsetfitでmultilabel classifierを訓練してみるのもおすすめ。どっちにしろ、何がうまくいったか教えてほしいな！" userName="diwank" createdAt="2025/08/15 15:10:02" color="#ff5733">}}




{{<matomeQuote body="タグがめちゃくちゃ少なくて、分類が超簡単じゃない限り、このモデルの性能はダメだろうな。" userName="weird-eye-issue" createdAt="2025/08/15 04:35:26" color="">}}




{{<matomeQuote body="これは、taxonomyごとにモデルを訓練して、それらの個別モデルをwrapper modelでまとめてjoint probabilitiesを出力すれば解決できるよ。俺の経験だと、一番多いtaxonomyのラベル数は8個だな。" userName="AJRF" createdAt="2025/08/15 07:04:29" color="#ff5c5c">}}




{{<matomeQuote body="このモデル、マジで面白いぞ！241MBで超ちっちゃいし、めちゃくちゃ速いんだけど、ほとんど何でもハルシネーションしちゃうんだ。<br>「自転車に乗ったペリカン」のSVGを生成させようとしたら、猫の詩を書きやがったよ。Gistに他の試した結果もいっぱいあるから見てみて：https://gist.github.com/simonw/25e7b7afd6a63a2f15db48b3a51ec...<br>fine-tuneで特定のタスクに役立つ出力ができるようになるのが楽しみだな、絶対できるはずだ。" userName="simonw" createdAt="2025/08/14 17:10:43" color="#38d3d3">}}




{{<matomeQuote body="ハルシネーションがほとんど全部で出るなら、これって何に使うの？" userName="marinhero" createdAt="2025/08/14 17:17:22" color="#785bff">}}




{{<matomeQuote body="OllamaのGGUFを使ってるんだね。デフォルトだとQ4_0量子化をダウンロードしちゃうよ。代わりに`gemma3:270m-it-bf16`を試すか、unslothのGGUF（`hf.co/unsloth/gemma-3-270m-it-GGUF:16`）を使ってもいいよ。そしたらもっといい結果が出るはず。" userName="0x00cl" createdAt="2025/08/14 17:43:42" color="#ff33a1">}}




{{<matomeQuote body="こいつは無駄なトークンばっかり出すけど、とにかく大量に生成できるんだ！" userName="ertgbnm" createdAt="2025/08/14 17:24:02" color="">}}




{{<matomeQuote body="いい提案だね。今すぐLM Studioで試してるよ（`https://huggingface.co/unsloth/gemma-3-270m-it-GGUF`で“Use this model → LM Studio”をクリックしてF16を選択した）。でも、俺のペリカンテストじゃ大して良くならなかったな。<br>実際はそれどころか、何回か試したら同じテキストを延々と吐き出す無限ループになったよ。もしかして、あのGGUFってちょっと壊れてるんじゃないかな？" userName="simonw" createdAt="2025/08/14 17:55:49" color="#785bff">}}




{{<matomeQuote body="あーあ… もしかして設定かな？<br>temperature = 1.0, top_k = 64, top_p = 0.95, min_p = 0.0<br>で試せる？" userName="danielhanchen" createdAt="2025/08/14 19:51:21" color="#45d325">}}




{{<matomeQuote body="「He」？Gemmaって女性の名前だって知ってるけど、あんたの出身地では男の子の名前なの？" userName="lucb1e" createdAt="2025/08/14 17:30:48" color="">}}




{{<matomeQuote body="特定のタスク向けのファインチューニングだね。近いうちにいい例を見たいな。ブログ記事には構造化テキスト抽出とかが言及されてたから、「このイベントに関するテキストをiCalドキュメントに変換して」みたいなのはできるかもね？" userName="simonw" createdAt="2025/08/14 17:28:55" color="#ff33a1">}}




{{<matomeQuote body="＞これについては、詩を書くことにしたみたいだね<br>俺の最初の試み：<br>ユーザー：「Julius Caesarはいつ生まれたの？」<br>応答：「Julius CaesarはRomeで生まれた」<br>最高だね！D<br>（けなすつもりはないけど、ただただ素晴らしいよ。これを使いこなすには、もっと努力が必要だね。）" userName="mdp2021" createdAt="2025/08/14 19:42:48" color="">}}




{{<matomeQuote body="＞これはめちゃくちゃ小さい。たった241MBのダウンロードだ<br>それでもインストールにはフロッピーディスクが170枚以上必要だけどね。" userName="layer8" createdAt="2025/08/14 17:33:35" color="">}}




{{<matomeQuote body="あのモデルで、同じ無限ループ問題に遭遇したよ。" userName="JLCarveth" createdAt="2025/08/14 22:07:34" color="">}}




{{<matomeQuote body="これには思わず笑っちゃったよ：https://gist.github.com/simonw/25e7b7afd6a63a2f15db48b3a51ec...<br>なんか詩か歌を生成してて、SVGコードの各行がどう描画に貢献するか説明してるんだけど、最後に「このSVGコードは、美しい風景の中で自転車に乗るペリカンを鮮明で視覚的に魅力的に表現している。」って締めくくっててさ。" userName="roughly" createdAt="2025/08/14 17:47:35" color="#38d3d3">}}




{{<matomeQuote body="Daniel、技術サポートありがとう！<br>君たちの仕事と協力関係には、感謝してもしきれないよ。" userName="canyon289" createdAt="2025/08/14 20:41:52" color="#ff5733">}}




{{<matomeQuote body="RAGの設定で使うのも、ファインチューニングするのも面白そうだね。<br>SVGはうまく生成できないだろうけど、会話モデルとしてはすごく良いかも。" userName="nico" createdAt="2025/08/14 17:40:12" color="#45d325">}}




{{<matomeQuote body="僕の設定ではtemperatureとtop_pしか変更できないんだけど、その値にしたら無限ループを避けられたみたい。ありがとう。" userName="simonw" createdAt="2025/08/14 22:28:38" color="#ff5733">}}




{{<matomeQuote body="パラメータ数を半分にするってのは、パイントビールを飲むようなもんさ。" userName="mirekrusin" createdAt="2025/08/14 21:19:32" color="">}}




{{<matomeQuote body="“Gemma 3 270M”の“M”って“male”のことじゃないの？<br>これも見てみて：https://en.wikipedia.org/wiki/Gemma_Frisius" userName="layer8" createdAt="2025/08/14 19:40:48" color="">}}




{{<matomeQuote body="Overton Windowを動かすための、トロールボット軍団かな？" userName="rotexo" createdAt="2025/08/14 17:18:47" color="">}}




{{<matomeQuote body="そうだね。保存するのに300万枚以上のパンチカードが必要になる。全然小さくないね！" userName="freedomben" createdAt="2025/08/14 19:37:39" color="">}}




{{<matomeQuote body="昨夜、gemma3:270m-it-q8_0とgemma3:270m-it-fp16をアップロードしたんだけど、そっちは結果が良いよ。q4_0はQATモデルだけど、まだいくつか問題があるから見てるんだ。" userName="Patrick_Devine" createdAt="2025/08/15 17:05:39" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
