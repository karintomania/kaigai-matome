+++
date = '2025-06-26T00:00:00'
months = '2025/06'
draft = false
title = 'Gemma 3n ついに登場！何が変わった？'
tags = ["AI", "機械学習", "LLM", "DeepMind", "SVG"]
featureimage = 'thumbnails/blue3.jpg'
+++

> Gemma 3n ついに登場！何が変わった？

引用元：[https://news.ycombinator.com/item?id=44389202](https://news.ycombinator.com/item?id=44389202)




{{<matomeQuote body="このモデル、Gemma 3で前にやったこと全部と完全に互換性あるみたいだよ。VLMのファインチューニングスクリプトにかけてみたら、全然問題なく動き出したんだ（hf transformerのコードね）。Lora使ってGPU1枚でE4Bモデルをバッチサイズ1で動かしたら、VRAMが18GBで済んだよ。前のgemma-4Bは21GBだったから、これはすごい！<br>DeepMindさん、ナイス！Gemma 3ファミリーはオープンウェイトのVLLMでトップクラスだね。" userName="pilooch" createdAt="2025/06/26 20:41:04" color="#ff5c5c">}}




{{<matomeQuote body="訂正！E4BじゃなくてE2Bだったよ。" userName="pilooch" createdAt="2025/06/27 04:58:34" color="">}}




{{<matomeQuote body="OllamaのGemma 3n 7.5GBとmlx-vlmの15GBで、「自転車に乗るペリカンのSVGを生成して」ってプロンプト試してみたんだ。<br>そしたら、量子化サイズが違うだけで結果が全然違って面白かったよ！<br>詳しくはここ見てね: https://simonwillison.net/2025/Jun/26/gemma-3n/" userName="simonw" createdAt="2025/06/26 21:28:26" color="#45d325">}}




{{<matomeQuote body="これ面白いねぇ！結局、生成された画像（SVG）のことは正確に説明できてるんだ。SVGってやっぱり難しいんだな。<br>これを読んで思ったのは、求めてる表現に近づくまでフィードバックループを入れてみたらどうかなってこと。" userName="lastdong" createdAt="2025/06/28 06:09:30" color="">}}




{{<matomeQuote body="あの原始的な画像を見る限り、このサイズのモデルで画像モデルにする意味ってあるの？" userName="cedws" createdAt="2025/06/27 10:17:07" color="">}}




{{<matomeQuote body="これは画像モデルじゃないよ。テキストモデルだけど、テキストモデルでもSVGは出力できるから、難しい画像を生成するように挑戦させて、どれだけ上手くできるか見てるんだ。" userName="simonw" createdAt="2025/06/27 12:15:09" color="#ff33a1">}}




{{<matomeQuote body="＞Multimodal by design: Gemma 3n natively supports image, audio, video, and text inputs and text outputs.<br>って書いてあるけど、君が言いたいことはわかったよ。Simonはラスター画像じゃなくてSVG（テキスト）で出力するように頼んだから、それが難しかったってことだね。" userName="cedws" createdAt="2025/06/27 12:41:45" color="#ff5733">}}




{{<matomeQuote body="そうだね、君の言う通りだよ。画像や音声の入力は扱えるけど、出力はできないんだ。完全にテキスト出力だけのモデルだよ。" userName="simonw" createdAt="2025/06/27 13:12:58" color="#ff33a1">}}




{{<matomeQuote body="うん、君の言う通り！<br>あと、君ってSimonだね！:)" userName="cedws" createdAt="2025/06/27 14:17:44" color="">}}




{{<matomeQuote body="あれって実際に役に立つベンチマークなの？それとも単なるウケ狙い？<br>いまいち分からなくて。" userName="JohnKemeny" createdAt="2025/06/26 22:36:01" color="">}}




{{<matomeQuote body="ジョークのつもりだったんだけど、なんかモデルの性能と、このくだらないジョークベンチマークの出来に相関があるみたいなんだ。このトークをまとめるまで、こんなに強い相関があるとは気付かなかったよ。<br>https://simonwillison.net/2025/Jun/6/six-months-in-llms/" userName="simonw" createdAt="2025/06/26 23:30:56" color="#45d325">}}




{{<matomeQuote body="この例、いつも面白いと思ってるんだ。ASCIIアートとSVGってどう思う？<br>幾何学的な形状の形式的なエンコーディングじゃないから、根本的に違うんだろうけど、SVGのタスクと似た課題もあるよね？画像生成を使わずに、フレーズ／概念をエンコードされた視覚表現と関連付けるっていうさ。<br>“画像エンコーディング”はあまり役に立たないと思う？<br>俺も色んなモデルで試すのが好きでさ。イラストっぽいコンテンツの話で、テキストベースのASCIIアートや、それをラスタライズに悪用するって意味じゃないんだけど。<br>結果は面白かったけど、SVGより予測できないかなって感じだね。" userName="moritzwarhier" createdAt="2025/06/27 07:58:30" color="">}}




{{<matomeQuote body="今のところASCIIアートはイマイチな結果なんだ。SVGですごく良いなと思うのは、ほとんどのモデルがコメントを入れてくれること。何をしようとしてたのか分かるからね。" userName="simonw" createdAt="2025/06/27 12:16:10" color="">}}




{{<matomeQuote body="そうそう、コメントの部分は納得だね。トークでも触れてたし（文字起こし読んだけど、コメントで言うの忘れてた、ごめんね：））。<br>他のコードみたいに、説明と個々の形状／パスとかの関連付けを加えてくれるから、理にかなってるよね。" userName="moritzwarhier" createdAt="2025/06/27 17:17:59" color="">}}




{{<matomeQuote body="まさか〜*wink*、うちのDevRelが、LLM関係者が読むトップの独立系ブログでポジティブに取り上げられるために、このテストケースで良い結果が出るようにプッシュするなんてこと、ないよね！<br>https://simonwillison.net/2025/May/20/google-io-pelican/" userName="throw0363fc53" createdAt="2025/06/28 15:41:06" color="">}}




{{<matomeQuote body="俺にとっては、LLMが学習データから一般化できてるかどうかの指標なんだ。LLMはプロンプトの全単語を理解してる。人間よりSVGの仕様をよく理解してる。鳥も知ってるし、自転車も知ってる。描き方を知ってる（そしてコンピュータ使えるなら、このテストは楽勝だろう）。計画して実行もできる。<br>ここにある全てはLLMにとって取るに足らないことのはずだけど、かなり苦手なんだ。だって学習データに「複雑な形状をSVGで描く方法」みたいなコンテンツがほとんどないから。" userName="OtherShrezzing" createdAt="2025/06/26 22:54:04" color="#ff5c5c">}}




{{<matomeQuote body="でも役立ってるのは確かだね。著者が有名だから、新しいLLMがこのベンチマークに「もっと意識的」になるのは時間の問題だと思うけど。" userName="jerpint" createdAt="2025/06/27 08:20:07" color="">}}




{{<matomeQuote body="5年後には超リアルなペリカンが出てきて、このベンチマークがすごく面白くなるかもね。" userName="owebmaster" createdAt="2025/06/27 00:47:00" color="">}}




{{<matomeQuote body="そしたら著者は「ペリカンがカピバラをそのまま丸呑みしようとする」とか試して、また崩壊するんでしょ。" userName="lofaszvanitt" createdAt="2025/06/27 07:04:09" color="">}}




{{<matomeQuote body="そうそう、まさに「どうやって崩壊するか」が面白いんだよね：D" userName="moritzwarhier" createdAt="2025/06/27 07:59:46" color="">}}




{{<matomeQuote body="SVGだから他の画像生成とは違って便利だよね" userName="dominicrose" createdAt="2025/06/27 08:32:28" color="">}}




{{<matomeQuote body="ペリカンより記事の内容目当てで来た気がするな。まあペリカンも記事の一部だけど。<br>LLMやAIの情報を追いかける時間があって、しかも面白く書くのうまい人がいるの嬉しいよ" userName="Aeolun" createdAt="2025/06/27 01:42:35" color="#ff33a1">}}




{{<matomeQuote body="ペリカンより記事の内容目当てって？それがペリカンの罠だよ。" userName="mathgeek" createdAt="2025/06/27 08:42:37" color="">}}




{{<matomeQuote body="GemmaとGeminiのオンデバイス版の違いがよく分かんないんだよね。両方ネットワークいらないわけじゃん。<br>https://developer.android.com/ai/gemini-nano に’Gemini Nanoはネットワーク接続やクラウドへのデータ送信なしで、リッチな生成AI体験を提供できる’って書いてあるけど、これをGemmaに置き換えても同じこと言えるよね。" userName="wiradikusuma" createdAt="2025/06/26 17:19:13" color="#45d325">}}




{{<matomeQuote body="ライセンスが違うよ。Gemini Nanoのウェイトは直接使えないんだ（特に商用）。Android MLKitとかGoogle承認のランタイム経由じゃないとダメ。<br>Gemmaは商用でも、使えるランタイムやフレームワークなら何でもOK。" userName="tyushk" createdAt="2025/06/26 17:27:19" color="#ff5c5c">}}




{{<matomeQuote body="言語モデルのウェイトにそもそもライセンスってかけられるのかどうか、はっきりしないよね。<br>弁護士じゃないけど、読んだ分析だと、学習プロセスには人間の創造性がなくて完全に自動だから、著作権はつかないって強い主張があったよ。自分でコンパイルしたからってソフトウェアにライセンスつけられないのと同じで、元になるソースコードに著作権がないとダメってことみたい。" userName="littlestymaar" createdAt="2025/06/26 19:00:41" color="#38d3d3">}}




{{<matomeQuote body="GemmaはオープンソースでApache 2.0ライセンスだけど、自分でパッケージしないといけないよ。Gemini NanoはAndroidのAPIで、全く制御できないんだ。" userName="jabroni_salad" createdAt="2025/06/26 17:30:08" color="#45d325">}}




{{<matomeQuote body="それは訓練プロセスが著作権保護されないってだけじゃない？でも重みって訓練だけじゃなくてソースデータも含んでるし。もし訓練データに独自性があれば、それって著作権保護されるんじゃない？なんで重みもダメなの？" userName="IncreasePosts" createdAt="2025/06/26 19:31:29" color="">}}




{{<matomeQuote body="俺も弁護士じゃないけど、答えはたぶん管轄によるね。アメリカの著作権基準は人間の創造性が必要で、モデルの重みにはたぶんその種の創造性がない。著作権局の公式見解だよ。裁判例はまだないけどね。<br>逆に、イギリスの基準はもっとゆるいから、重みも著作権ありそう。GoogleとかMetaが著作権を主張するのは理にかなってる。アメリカでは無効でもイギリスでは有効だろうし、他の多くの国でもそうだから。<br>最後に、アメリカ議会が重みを著作権保護したり、それに近い新しい法を作る可能性もあるよ。ロビイストは“アメリカのAI産業がヨーロッパに遅れる”って言うだろうね。俺はそう思わないけど、そう信じ込ませるのに真実である必要はないからな。" userName="skissane" createdAt="2025/06/26 19:18:18" color="#45d325">}}




{{<matomeQuote body="＞GemmaはオープンソースでApache 2.0ライセンス<br>ソースコードはクローズドだけど、重みがオープンなんだよ。大手企業の都合で言葉の定義を壊すのはやめようぜ。" userName="nicce" createdAt="2025/06/26 17:58:23" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="君の返信、俺は余計混乱したよ。推論コードとモデルアーキテクチャはオープンソースだし、他にも高品質なオープンソース実装はたくさんあるよ（Googleのエンジニアが貢献してる場合も多い）。君が言うように、学習データは公開されてないからゼロから再構築はできない、それはその通りだね。<br>[0] https://github.com/google-deepmind/gemma<br>[1] https://github.com/vllm-project/vllm/pull/2964" userName="zackangelo" createdAt="2025/06/26 18:21:35" color="#ff33a1">}}




{{<matomeQuote body="重みって数学的な事実だからね。生の数字としては著作権は無いよ。" userName="rvnx" createdAt="2025/06/26 19:43:04" color="">}}




{{<matomeQuote body="それが、彼らがGemini Nanoを「Gemini Nano Program Additional Terms of Service」で制限してる理由の一つだよ。たとえ重みに著作権がないか、あるいは公正利用だとしても、契約違反で訴えることができるからね。" userName="AlanYx" createdAt="2025/06/26 19:19:32" color="#45d325">}}




{{<matomeQuote body="問題は、契約って後続の受け手に効かないことだね。GoogleがXに渡して、XがYに渡して、YがZに渡した場合。XはGoogleと契約してるから、契約違反で訴えられる。でもYやZもそういう契約をしてるかな？たぶんしてないよね。もちろん、Googleは契約でYやZも拘束しようとするだろうけど、それが法的に有効かは微妙。多くの場合、Xを通してYやZの行為でXを訴えることはできても、YやZを直接訴えるのは難しい。一方、著作権があれば、XもYもZも同じように直接責任を負うんだ。" userName="skissane" createdAt="2025/06/26 19:27:54" color="#45d325">}}




{{<matomeQuote body="＞アメリカの著作権基準は人間の創造性が必要で、モデルの重みにはたぶんその種の創造性がない。著作権局の公式見解だよ。裁判例はまだないけどね。<br>アメリカ著作権局がモデルの重みについてそう言ったの？プロンプトからAIが完全に生成した画像についてそう言ったってのは聞いたことあるけど。" userName="simonw" createdAt="2025/06/26 21:19:31" color="">}}




{{<matomeQuote body="`en_windows_xp_professional_with_service_pack_3_x86_cd_vl_x14-73974.iso` もただの生の数字だけど、Windows XPには著作権があったと思うよ。" userName="IncreasePosts" createdAt="2025/06/26 20:01:15" color="">}}




{{<matomeQuote body="Perplexity.aiってGemini 2.5より分かりやすかったらしいよ。Gemini nanoはAndroidだけだけど、Gemmaは他のプラットフォームでも使えるしサイズも色々選べるんだって。Gemini nanoは生物の比喩に従うと、どこでも動くGemmaのスマホ特化版みたいな感じかもね。" userName="readthenotes1" createdAt="2025/06/26 17:26:35" color="#ff33a1">}}




{{<matomeQuote body="＞ Gemmaはオープンソースでapache 2.0 licensed。<br>それホント？ちょっと見た感じだと独自のライセンスみたいだし、使い道に制限があるっぽいから、普通のオープンソースの定義（OSI, DFSG, FSF）には合わないんじゃない？" userName="cesarb" createdAt="2025/06/26 19:09:23" color="#ff5c5c">}}




{{<matomeQuote body="これで余計混乱しちゃわない？リンクされてるライブラリはファインチューニングの話で、Gemmaの作り方とは全然違うプロセスだよ。公開情報だけじゃ、データがあっても全く同じGemmaは作れないくらい不正確なんだって。" userName="nicce" createdAt="2025/06/26 18:54:06" color="">}}




{{<matomeQuote body="もし訓練データが手に入ったとして、全く同じ（たぶんハッシュ値まで？）モデルって作れるのかな？訓練システムとか、使ったハードウェアとか、他にも色々足りないものがあるように思えるけど。" userName="candiddevmike" createdAt="2025/06/26 18:28:41" color="">}}




{{<matomeQuote body="ありがとう、それは考えるべき良い点だね。モデルの重みを使うことが、重みを作った人の利用規約に同意したと見なされるのかどうか、よく分からないな。" userName="jinlisp" createdAt="2025/06/26 20:45:24" color="">}}




{{<matomeQuote body="Googleか誰かがこの問題について明示的に言及してるのを読んだ気がするけど、今見つけられないんだ。でも、https://www.copyright.gov/comp3/chap300/ch300-copyrightable-... の22ページを読んでみて。アメリカの著作権局の見解だと、AI訓練みたいな機械的プロセスの出力は、人間の創造性がよっぽど関わってないと著作権保護されないらしい。ハイパーパラメータ選びのスキルとかは違うんだって。基盤モデルは多分著作権ないけど、RLHFで独特の「声」をつけた部分は著作権あるかもね。でもそれも簡単にとっぱらえちゃうみたいだよ。" userName="skissane" createdAt="2025/06/26 23:13:13" color="#ff33a1">}}




{{<matomeQuote body="さっきの話だと、国によって法律が違うのってそんなに関係あるのかな？特に、民法が中心の国で裁判所の判決があまり重要視されないこととか、単にベルヌ条約の執行だけを考えると。つまり、条約の署名国のどこか一つで著作権ありと見なされたら、他の国もそれを尊重しないといけないんじゃない？" userName="47282847" createdAt="2025/06/26 23:19:21" color="#ff33a1">}}




{{<matomeQuote body="なんで著作権ダメなの？コンピュータープログラムなんてただの0と1だよ。ハリーポッターの本だって、電子書籍ならただの文字とか数字の羅列じゃん。（その組み合わせが著作権保護できるんでしょ）。" userName="victorbjorklund" createdAt="2025/06/27 08:08:15" color="">}}




{{<matomeQuote body="なんでダメなの？訓練ってただデータ入れるだけじゃないよ。訓練プロセスは常に調整されてるし、その調整の多くは、出力しようとしてるモデルの種類に特化したものなんだよ。" userName="km3r" createdAt="2025/06/26 19:24:51" color="">}}




{{<matomeQuote body="問題はね、訓練済みモデルに「選択と配列」のオリジナリティが実際に残ってることを証明できるかどうかだよ。法的には疑わしい。確実な法的答えは誰も知らない、だって裁判所でまだ扱われてないから。でも専門家の意見では、アメリカの法律だとモデルの著作権保護は怪しいってコンセンサスなんだ。あなたの言うような主張ではそれを変えるには十分強くないよ。さっきも言ったけど、イギリスの法律では話が違う。そこではあなたの主張はあまり必要ない、だってモデルの重みはイギリスでは著作権保護されそうだから。" userName="skissane" createdAt="2025/06/26 19:42:28" color="#38d3d3">}}




{{<matomeQuote body="Googleが自社サービスの説明にHacker Newsとか競合他社の力が必要ってのは、Google自身が反省すべき点じゃない？ って思うよ..." userName="ridruejo" createdAt="2025/06/26 17:37:34" color="">}}




{{<matomeQuote body="ベルヌ条約はそうじゃないんだよ。自国民の著作物と同じ条件で、他の加盟国の国民の著作物にも著作権保護を与える必要があるってこと。もし自国民の著作物で著作権が認められない種類のものは、外国人の著作物でも認めなくていいんだよ。たとえその国では認められててもね。例えばUKは電話帳に著作権認めるけどUSは認めない。USがUKの電話帳に著作権認めなくても、USは自国の電話帳にも認めないからベルヌ条約違反じゃないんだ。違反になるのは、UKのは認めないけどUSのは認める場合だよ。" userName="skissane" createdAt="2025/06/26 23:56:07" color="#ff33a1">}}




{{<matomeQuote body="すごく優秀な弁護士なら、学習データ作ったり評価したりRLHFしたりするのは、機械的な作業じゃなくて人間が創造的にやってることだって主張できるかもね。でも裁判官ってテクノロジーのことになると変な判断することあるから、どうなるかは分からないけど。" userName="tough" createdAt="2025/06/26 23:31:02" color="">}}




{{<matomeQuote body="リンクされてるライブラリのREADMEに、モデルと会話する方法を示すコードスニペットがあるよ。あと、ファインチューニングのためだったとしても、モデルのフォワードパスを実装すればいいだけで、それが実行に必要な全部だから。" userName="zackangelo" createdAt="2025/06/26 21:31:31" color="#45d325">}}




{{<matomeQuote body="面白いね。僕の理解だと、著作権はオリジナルのソースコードとかGUI、バンドルされてるアイコン、サウンド、イメージファイルにしか適用されない。機能性とかは特許法になるんだ。だから例えば.ISOにあるコンパイル済みコードは、’ただの生データ’なだけじゃなくて、著作権がない生データってことになるね。" userName="vntok" createdAt="2025/06/26 23:02:34" color="#785bff">}}




{{<matomeQuote body="契約には合意（意思の合致）が必要なんだ… XがGoogleと契約しても、その契約によってYの合意なしにGoogleとYの間に契約は生まれない。もちろんGoogleの弁護士は契約を「推移的」に見せかけようと全力を尽くすけど、根本的に契約にはそういう推移性はないんだ。<br>さて、もしあなたが二者間の契約を知っていて、その一方と協力して積極的に、かつ意図的に違反した場合、正式な契約当事者じゃなくてもその契約違反について法的責任を問われることがあるかもしれない。でも限界はあるよ。もしあなたがNDAにサインしてるのを知っていて、あなたがNDA違反してその文書を送るのを個人的に勧めたら、僕もNDA違反で法的責任を負うことになるかもしれない。でも、もし僕たちが全くの他人で、あなたがNDAで保護された文書をファイル共有サイトにアップロードして、それを僕がたまたま見つけてダウンロードしただけなら、NDA違反の法的責任は全部あなたにあって、僕には全くない。情報の持ち主は著作権法に基づいてダウンロードした僕を訴えることはできるかもしれないけど、契約法（NDA）の下では僕に対して何の法的手段もないよ。だって僕は直接的にも間接的にも契約に関わってないから。<br>もしベンダーのウェブサイトからモデルをダウンロードした場合、彼らはダウンロードの条件としてあなたが契約に同意したと主張できるかもしれない。でも他の場所からダウンロードした場合、拘束力のある契約を作るのに必要な対価（彼らがあなたに提供するもの）は何？ ダウンロードの内容が著作権で保護されてるなら、彼らは彼らの著作物の使用許可を与えることが対価だと主張できるけど、それがAIモデルでモデルが著作権で保護されてないなら、他の場所からダウンロードした時に彼らが提供するものは何もないから、契約関係を主張する根拠がないんだ。<br>彼らが時々やるのは、契約に「対象物を再配布する相手にもこの契約を課さなければならない」って文言を入れること。そしてその規約を完全に守って再配布すれば、受け取った人もあなたと同じように契約に拘束されることになるかもしれない。でも再配布する時にその契約を課すのを怠ったら、受け取った人は拘束されずに済んで、その不履行の法的責任は全部あなたにあって、受け取った人にはないんだ。" userName="skissane" createdAt="2025/06/26 23:37:52" color="#ff5733">}}




{{<matomeQuote body="前からこれ気になってたんだ（HuggingFaceの一部のモデルみたいに、ダウンロードにクリックスルー式のライセンス契約が必要で、特定の方法でのモデル使用を禁止しようとしてるやつ）。匿名のだめな奴がモデルファイルを公開して別の場所で再ホストして、それをGoogleからじゃなくてその人からファイルを入手した場合、クリックスルーすら見てないからそのライセンスに拘束されないように思うんだ。（そして、著作権がないから、その人から入手してもIP盗難にならないとも。）このロジックには何か間違いがあるはずなんだけど、それが何なのかどうしても思いつかないんだ。" userName="derefr" createdAt="2025/06/26 21:27:56" color="">}}




{{<matomeQuote body="「言語モデルの重みをライセンスできるかどうかすら不明確」ってコメントに対してね。モデルの重みをライセンスする（人々に許可を与える）ことは明確にできるよ。ただ、それを保護する法律があってライセンスが必要なのかどうかは、それほど明確じゃない。でも不明確な状態だと常に訴訟とその後の損失のリスクがあるから、ライセンスは少なくともそのリスクを減らすのに役立つんだ。" userName="dragonwriter" createdAt="2025/06/27 01:32:01" color="#ff5733">}}




{{<matomeQuote body="これらの小さいモデルがどうやって誰かに役立つのか、心底知りたいんだ。僕はいろいろ実験したけど、27Bより小さいものは、おもちゃ以外 basically 使えないね。小さいモデルについて言えるのは、時々良い回答を出すことがあるってだけ。それはちょっといじる以外の何ものにも十分じゃないんだ。僕はgemma3:27b-it-qatでスパム問題を解決したんだけど、僕のベンチマークによると、これが現在のモデルが有用になり始めるサイズなんだよ。" userName="jwr" createdAt="2025/06/27 00:42:54" color="#ff5733">}}




{{<matomeQuote body="アイデア出しのデバイスとしては、これらはうまく機能するだろうね。僕はこれを basic infra のように扱ってるよ。ほとんどのスマホに小さな LLM が組み込まれてるような未来は絶対に素晴らしいだろうな。kind of like a base layer of infra って感じだね。" userName="runeblaze" createdAt="2025/06/27 01:09:00" color="#45d325">}}




{{<matomeQuote body="小さいモデルはWiFiなしで使うのに超便利！飛行機でコード書く時、MacBook AirでQwenをGoogle代わりに使ってるんだ。syntaxとかdocumentationの基本的なこと聞くのにマジ使えるよ。" userName="newswangerd" createdAt="2025/06/27 01:13:47" color="#38d3d3">}}




{{<matomeQuote body="精度低くても使えることあるよ。iPhoneのキーボード予測とか、小さいモデルで大きいモデルを速くするSpeculative decodingとかね。賢い人たちはきっと他にも色々思いつくだろ〜。" userName="concats" createdAt="2025/06/27 06:30:01" color="#45d325">}}




{{<matomeQuote body="Qwen2.5-VL 7Bは手書き数式をLatexに変換するのマジすごいんだ。VRAM少ないノートPCでも遅いけど動くし。Gemma3 4Bは全然ダメだったよ。<br>ChatGPTみたいに使おうとしてるんじゃない？それは使い方違うと思うな。" userName="mkl" createdAt="2025/06/27 10:51:50" color="#ff5c5c">}}




{{<matomeQuote body="Gemma3 4B、WikipediaのZIM file使えば8割くらい質問に答えられるらしいよ。でもCPUだと20秒もかかるから、低電力AI acceleratorsが出ないと今のところあんま実用的じゃないかもね。" userName="eternityforest" createdAt="2025/06/28 01:17:45" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="gemma3:1b model (今日はgemma3n:e2b) をRSS readerの記事要約に使ってるんだ。シンプルだけど超うまくいくし、Hetzner serverのCPUで動くから家のGPU電気代かかんなくて済むよ。" userName="omgitspavel" createdAt="2025/06/27 12:32:27" color="#785bff">}}




{{<matomeQuote body="4B以下の小さいモデルは、特定のタスクにfinetuningするのに良いよ。大手モデルより安くて性能出せるし、code autocompleteにもバッチリ。7B〜8Bは簡単なrefactoringとかに使えるcoding assistants。12BになるとMistral NemoやGemma 3 12bみたいにちゃんと文章書けるレベルだね。" userName="iamnotagenius" createdAt="2025/06/27 05:51:37" color="#38d3d3">}}




{{<matomeQuote body="OpenAIが業界標準にしたって言われる、この無秩序な命名規則マジ好きじゃないんだよな〜。" userName="actinium226" createdAt="2025/06/26 18:33:21" color="">}}




{{<matomeQuote body="ランダムな文字とか付けずに、Geminiと紛らわしくない名前にしたかな。" userName="actinium226" createdAt="2025/06/27 02:18:43" color="">}}




{{<matomeQuote body="Gemma 4とか？それが一番分かりやすいじゃん。普通にバージョン番号増やそうよ。Anthropicはまだ良いけど、v4で命名変えたんだよな。確かに改善かもだけど、v4以前と違うからちょっとイライラするんだよね。" userName="Aeolun" createdAt="2025/06/27 01:24:56" color="">}}




{{<matomeQuote body="Anthropicがモデルの順番変えたってどういう意味？Opus ＞ Sonnet ＞ Haikuで変わってなくない？Gemma 3nって名前も変じゃね？Gemma 4じゃなくて、Gemma 3より多分性能低いから「Gemma 3 Lite」みたいなんじゃないの？小さいモデルで速度と品質のバランスが良い感じかもね。" userName="ColonelPhantom" createdAt="2025/06/27 04:08:19" color="#45d325">}}




{{<matomeQuote body="claude-3-7-sonnet-latest → claude-sonnet-4<br>あと、Gemma 3nよりGemma 3 Liteって名前、コメント1の人の方が絶対分かりやすい名前思いついたと思うわ。" userName="Aeolun" createdAt="2025/06/28 10:28:10" color="">}}




{{<matomeQuote body="Gemma 3nのGGUF作ったから、動かしたい人どうぞ！llama.cppでの実行コマンドはこれだよ。<br>./llama.cpp/llama-cli -hf unsloth/gemma-3n-E4B-it-GGUF:UD-Q4_K_XL -ngl 99 --jinja --temp 0.0<br>./llama.cpp/llama-cli -hf unsloth/gemma-3n-E2B-it-GGUF:UD-Q4_K_XL -ngl 99 --jinja --temp 0.0<br>Colabでの推論・ファインチューニングデモも作業中！Gemma 3Nが音声、テキスト、画像全部いけるのマジすごいわ！詳細とデモはここ見てね。<br>https://docs.unsloth.ai/basics/gemma-3n-how-to-run-and-fine-..." userName="danielhanchen" createdAt="2025/06/26 17:20:05" color="#ff5733">}}




{{<matomeQuote body="OllamaでE4Bモデル試したけど、画像解釈が完全にぶっ壊れてるわ。テキスト部分はテキスト入力だけで決まってて全部間違ってる。普通のGemma 3 4Bだと大丈夫だから、Ollamaのせいっぽい。追記：やっぱ今はテキストだけだってさ［1］、チケットの奥に埋もれてんの分かりにくいんだよ！自分でllama.cppコンパイルしたくないから、コメント3のGGUF試せるまで待つわ。<br>［1］：https://github.com/ollama/ollama/issues/10792#issuecomment-3..." userName="magicalhippo" createdAt="2025/06/26 23:28:21" color="#38d3d3">}}




{{<matomeQuote body="あー、マルチモーダルはまだ動かないと思うよ。今はテキストオンリーだね！" userName="danielhanchen" createdAt="2025/06/27 10:36:06" color="">}}




{{<matomeQuote body="マジで「Unsloth、君の出番だ！！」って打ち込んでたのに、もう先越されてるじゃん！コメント3の人マジすごいよ＜3＜3＜3<br>ありがとう！" userName="upghost" createdAt="2025/06/26 17:28:15" color="">}}




{{<matomeQuote body="ありがとう！どんなスペックのPCが必要？" userName="bilsbie" createdAt="2025/06/26 20:18:38" color="">}}




{{<matomeQuote body="そんなにすごいのはいらないんじゃない？俺のRTX 2080で45 tok／s出てるよ。" userName="jszymborski" createdAt="2025/06/26 23:17:14" color="#ff5733">}}




{{<matomeQuote body="この文脈でのjinjaって何？" userName="knowaveragejoe" createdAt="2025/06/26 20:18:35" color="">}}




{{<matomeQuote body="Googleのオンデバイスモデルの性能表示、おかしくない？Pixel Foldで試したら広告の60fpsどころか0.16fpsしか出なかったよ。元Google社員だけど、この広告は嘘くさいね。公式デモも無いし、なんでこんなデタラメが通ってるのか不思議だよ。自分が何か見落としてるか、Googleが嘘ついてるかのどっちかだね。" userName="refulgentis" createdAt="2025/06/26 18:08:29" color="#ff5733">}}




{{<matomeQuote body="あの60fpsって、Vision Encoder（MobileNet）の方の性能の話じゃないの？LLM全体じゃなくてね。3億パラメータくらいのモデルなら、60fpsでもいけるんじゃないかな。" userName="mlsu" createdAt="2025/06/26 18:56:07" color="#ff5733">}}




{{<matomeQuote body="Vision Encoder単体で60fpsって解釈は分かるけど、それって誤解を招く「シェルゲーム」みたいじゃない？だって、その出力使うシステムが結局遅かったら意味ないし、Vision Encoder単体で彼らが言う「リアルタイムの視聴覚体験」なんてできるの？" userName="refulgentis" createdAt="2025/06/26 19:03:13" color="#ff5c5c">}}




{{<matomeQuote body="Vision Encoder単体でも分類や検索みたいなことはできるんじゃない？色々技術的に考えてみたけど、なんか計算が合わなくて、的外れなこと言ってるかもね。" userName="namibj" createdAt="2025/06/26 21:44:59" color="">}}




{{<matomeQuote body="君の技術考察は的外れだよ。現実として画像モデルの処理には6～7秒かかるんだ。Googleの広告は「今すぐ60fps」って言ってるのに、外部には証拠皆無。Google社員らしいコメントも「外部向けは優先してない」って言うし、この矛盾ひどすぎ。Googleの主張は「悪い」ね。" userName="refulgentis" createdAt="2025/06/27 21:59:30" color="#45d325">}}




{{<matomeQuote body="キミが載せたAPKはCPUで動いてるよ。Google Tensorじゃ動かないんだ。" userName="catchmrbharath" createdAt="2025/06/26 18:29:21" color="#38d3d3">}}




{{<matomeQuote body="なるほどね、APKはTensorで動かないんだ。じゃあ、Tensorで動くAPKはあるの？Google以外でもTensor使えるの？ダウンロードできるTensor版は？なんで？過去にも似たようなことあったし、もう信用できないね。" userName="refulgentis" createdAt="2025/06/26 18:38:38" color="#ff5c5c">}}




{{<matomeQuote body="Tensorで動くサードパーティ向けAPKは無いよ。AiCoreサービスが内部で使ってるだけなんだ。サードパーティ対応は残念ながらまだ優先されてないんだよね。" userName="catchmrbharath" createdAt="2025/06/26 20:37:42" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
