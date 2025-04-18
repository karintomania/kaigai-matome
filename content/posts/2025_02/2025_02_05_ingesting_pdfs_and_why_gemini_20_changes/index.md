+++
date = '2025-02-05T00:00:00'
months = '2025/02'
draft = false
title = 'PDF取り込みに革命！Gemini 2.0がすべてを変える理由'
tags = ["PDF", "OCR", "Gemini", "AI", "LLM"]
featureimage = 'thumbnails/light_colour3.jpg'
+++

> PDF取り込みに革命！Gemini 2.0がすべてを変える理由

引用元：[https://news.ycombinator.com/item?id=42952605](https://news.ycombinator.com/item?id=42952605)

{{<matomeQuote body="fintechで働いてるんだけど、PDF取り込みでOCRベンダーをGeminiに変えたんだよね。色々試した結果、Geminiがマジ使いやすくて、ほとんど手間がかからずに動いたから。マルチモーダルでコンテキストウィンドウが広いモデルって、使いやすさの点でマジで過小評価されてると思う。皮肉なことに、そのベンダーは特定のPDFのOCRで一番有名で成功してるんだけど、リクエストの多くが人間のチェックに回されてたんだよね。Geminiは専門じゃないのに、テストしたらGeminiに変えるのは当然だった。処理時間は平均12分から6秒に短縮、精度はベンダーの96％くらいで、価格はマジ安かった。4％の精度誤差は、手書きの”LLC”が”IIC”ってOCRされたりするくらいで、まあまあ許容範囲かな。プロンプトを改善すればもっと精度上がるかも。今のプロンプトはマジ簡単で”このPDFをこのJSONスキーマで指定された形式でOCRして”ってだけ。Geminiの開発体験はマジ簡単だった。ファイル”part”をプロンプトに追加するのも簡単だし、コンテキストウィンドウがめっちゃ広いから、メインの問題に集中できるし。マルチモーダルだから、PDFの画像とかデータとか、色んな問題に対応してくれるし。このブログのユースケース（バウンディングボックスの部分は除く）にはマジおすすめ！" userName="lazypenguin" createdAt="2025-02-05T19:19:29" color="#785bff">}}

{{<matomeQuote body="マジそれな。特定のPDFに特化した従来のベンダーは、LLMにマジで駆逐されると思う。既製のプロバイダーを使う問題は、データスキーマに縛られること。LLMなら、スキーマを完全にコントロールできるから、もっとユニークなデータを解析・抽出できるんだよね。<br>問題は”PDFからこのデータを抽出できるか”から、”必要なデータを抽出するためにLLMをどうやって教え、パフォーマンスを検証し、自信を持って本番環境にデプロイするか”に移るんだ。<br>プロンプトにchain-of-thoughtを追加すれば、さらに精度を向上させられるよ。例えば、JSONスキーマの各フィールドに、事前に`reasoning`フィールドを持たせて、モデルがどうやってその答えにたどり着いたかをCoTできるようにするとか。さらにレベルを上げるなら、`citations`もパフォーマンスが向上するし（バウンディングボックスと組み合わせると、human-in-the-loop toolingにマジ強力）。" userName="kbyatnal" createdAt="2025-02-06T00:46:48" color="#ff33a1">}}

{{<matomeQuote body="＞問題は”PDFからこのデータを抽出できるか”から、”必要なデータを抽出するためにLLMをどうやって教え、パフォーマンスを検証し、自信を持って本番環境にデプロイするか”に移るんだ。<br>賢いベンダーならその分野にシフトするだろうね。彼らはLLMを使い、ファインチューン、複数のLLM、従来の方法、ランダムサンプルの人間の検証を組み合わせて、”パフォーマンスを検証し、自信を持って本番環境にデプロイ”するだけでなく、SLA付きでその信頼性を販売するだろう。" userName="TeMPOraL" createdAt="2025-02-06T09:40:17" color="#ff5c5c">}}

{{<matomeQuote body="ソフトウェアは死んだ。今プロンプトじゃなくても、6ヶ月後にはプロンプトになるだろう。今のソフトウェアのほとんどは、単なるUIになるだけ。でもUIも死んだ。" userName="sitkack" createdAt="2025-02-06T13:38:23" color="">}}

{{<matomeQuote body="そういう意見には疑問があるな。大規模な組織で複雑なシステムを扱ったことないのかな？<br>PDFを確実に解析できるようになったのはいいけど、そのデータをどう活用するかが問題だよね。データを保存したり、レビューが必要な人に確実に届けたりする必要がある。彼らはそのデータに基づいて意思決定する必要があり、複数の関係者からのインプットが必要になることもある。<br>そういったやり取りはすべて記録・保存され、最終的な決定とすべてのサポートドキュメントが複数のシステムで利用できるようにする必要がある。それにはETLとかガバナンスが必要になる。<br>LLMとプロンプトでは、それらすべてを置き換えることはできない。" userName="SketchySeaBeast" createdAt="2025-02-06T15:16:39" color="">}}

{{<matomeQuote body="今動かしてるシステムを批判するんじゃなくて、ライトコーンの観点で考えるべきだよ。物事がどこに向かっているのかを見るんだ。コードと人の両方で、大規模なシステム、コンパイラ、大規模なデータ処理システム、1万のビジネスユニットで働いてきた。" userName="sitkack" createdAt="2025-02-06T20:38:16" color="">}}

{{<matomeQuote body="10万人の従業員がいる組織のために、Salesforceの代替品をプロンプトできる？" userName="victorbjorklund" createdAt="2025-02-06T16:46:51" color="">}}

{{<matomeQuote body="昨日、/r/singularityで、OAIのリード管理プラットフォームのスクリーンショットに畏敬の念を抱いたよ。日本のコンベンションでSalesForceへの直接的な脅威を意味するらしい。マジかよ。<br>加速主義者とかAI信者とかは、ソフトウェア開発の本質的な複雑さを本当に理解していないと思う。LLMはソフトウェア開発の銀の弾丸と見なされているけど、銀の弾丸がどうなるかは知ってるよね。" userName="mrbungie" createdAt="2025-02-06T20:33:42" color="">}}

{{<matomeQuote body="18ヶ月後にまたコメントして。" userName="sitkack" createdAt="2025-02-06T20:35:55" color="">}}

{{<matomeQuote body="これは、親の述べた問題に対するAIが実際には銀の弾丸であり、わずか18か月後には彼らがどれほど間違っているかに気づくだろうということを意味する皮肉だと解釈していいのかな？もしそうなら、これらの問題がうまく解決されているのを見たことや、18か月のタイムラインで解決されているのを見たことはある？それについてもっと知りたいな。" userName="collingreen" createdAt="2025-02-06T20:51:55" color="#785bff">}}

{{<matomeQuote body="銀の弾丸ってわけじゃないけど、状況はマジで変わるよね。一部分だけ見て判断する時代じゃないんだわ。流れ全体を見ないと！論文の結果だけ見て「ここがダメ、あそこがダメ」って言うのはナンセンス。Two Minute Papersの「次の論文に期待！」って taglineがマジそれ。" userName="sitkack" createdAt="2025-02-06T23:41:05" color="#ff5733">}}

{{<matomeQuote body="データモートとかベンダーロックインがないソフトウェアはマジでやばい。手軽なSaaSはLLMで作られたソフトウェアにマジで駆逐されると思う。" userName="cpursley" createdAt="2025-02-06T14:02:05" color="#45d325">}}

{{<matomeQuote body="賢いベンダーならその領域にシフトするっしょー。LLMを自分たちで使う的な。今からシフトは遅いかもね。もう製品が市場に出てないと。" userName="Cumpiler69" createdAt="2025-02-06T10:37:29" color="">}}

{{<matomeQuote body="スキャンしたドキュメントのプライバシーってどうなってんの？" userName="panta" createdAt="2025-02-06T17:35:55" color="">}}

{{<matomeQuote body="いろいろ試行錯誤した結果だけど<br>たまにしか使わない身としては、Geminiで毎週4,5ページの同じレイアウトの書類を半年くらいスキャンしてるんだけど、毎週結果が微妙に違うんだよね。<br>書類はバイリンガルだから影響あるのかもだけど、一貫性のなさに驚く。同じモデルでも、2,3回連続で実行すると違う結果になるし。<br>個人的には問題ないけど、Googleがモデルを調整するたびに企業がプロセスを調整するのは悪夢だよね。かといって、同じモデルを使い続けるのも、Googleにお金を払い続けることになるし。" userName="makeitdouble" createdAt="2025-02-05T23:35:29" color="#ff5733">}}

{{<matomeQuote body="温度がゼロなら、同じAPI/モデル使ってるならそんなはずないんだけどな。大手はAPIをアップデートする時は、名前とかバージョンを変えるはずだし。" userName="iandanforth" createdAt="2025-02-06T00:32:01" color="">}}

{{<matomeQuote body="マジレスすると、それは違うんだよねー。mixture of experts routingってやつは、バッチ処理の非決定性があるみたい。理由は公表されてないけど、自分で試したり、バグレポートとか探せばわかると思う。大手LLM APIの結果は、温度ゼロでも決定的なgreedy samplingにはならないんだよね。" userName="pigscantfly" createdAt="2025-02-06T02:58:17" color="#45d325">}}

{{<matomeQuote body="温度がゼロで、weightsも変わらないなら、非決定的な動きはどこから来るの？" userName="brookst" createdAt="2025-02-06T04:51:06" color="">}}

{{<matomeQuote body="ルーティングが原因かもね。でも、ベンダーがGPU捨てて、固定小数点演算に最適化されたASICに切り替えてない限り、浮動小数点数は非可換だから、並列計算で生じるランダム性で結果は非決定的になる。" userName="TeMPOraL" createdAt="2025-02-06T07:26:09" color="#ff5733">}}

{{<matomeQuote body="同じGPUアーキテクチャで、同じソフトウェアなのに、なんで実行ごとに計算順序が変わるの？<br>あと、固定小数点演算を考えるなら、整数アキュムレータを使って並列処理した結果を足し合わせればいいじゃん。" userName="Dylan16807" createdAt="2025-02-06T09:22:49" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="なんで同じCPUで同じソフトが、実行するたびに違う順番で命令を実行するんだろ？<br>パフォーマンスのためだよ。ちゃんと動かしたいなら、自分で同期させなきゃ。GPUは並列プロセッサが何万個もあって、めちゃくちゃ複雑なんだから。速く計算するように設計されてて、全部がいつも同じように動くとは限らないんだよね。<br>GPUでの推論は、(X1、X2、X3、... Xn)の並列処理みたいなもん。各Xは行列の並列処理で計算される。どこかに順番を保証する仕組みがない限り、適当に計算して浮動小数点誤差が出るんだよね。GPUの専門家じゃないから詳しくは知らないけど、最近のGPUはゲーム向けに最適化されてて、精度はそこまで重要じゃない。だから、GPUが急に性能を犠牲にしてまで決定性を保証するとは思えないな。" userName="TeMPOraL" createdAt="2025-02-06T10:08:04" color="">}}

{{<matomeQuote body="CPUの各スレッドは同じ順番で処理されるよ。<br>なんでニューロンの計算を複数のスレッドに分割するんだ？<br>そんなの遅くて複雑になるだけじゃない？<br>どうしてもそうしたいなら、複数ブロックで計算する部分だけ整数を使えばいいし、そんなに手間じゃないよ。<br>そもそも、GPUに非決定的なドット積の命令が組み込まれてるの？" userName="Dylan16807" createdAt="2025-02-06T16:32:39" color="">}}

{{<matomeQuote body="＞CPUの各スレッドは同じ順番で処理されるよ。<br>”スケジューラを制御して、強制的に順番を決めないと無理。コードを知ってるだけじゃダメで、物理的な環境にも影響されるんだ。例えば、チップの温度がちょっと違うだけで、スレッドの割り当てや終わる順番が変わる可能性があるよ。”<br>＞なんでニューロンの計算を複数のスレッドに分割するんだ？<br>”入力の数によるけど、必ずしも分割する必要はない。でも、交換法則が使えると思えば、並列化が楽になるし、オーバーヘッドも減らせるんだ（スループットとメモリの両方で）。”<br>＞そもそも、GPUに非決定的なドット積の命令が組み込まれてるの？<br>”ないよ。任意の長さのベクトルを処理できるドット積命令なんてないから。ループを書く必要があって、それが並列処理になるんだ。”" userName="TeMPOraL" createdAt="2025-02-07T09:52:33" color="#ff5733">}}

{{<matomeQuote body="親コメントは、温度が影響するのは生成の時だけで、リクエストがどの”expert model”に渡されるかの選択は非決定的だって言ってるね。単一の重みセットではなく、MoEではいくつかの異なる重みセットが”expert”を構成してるらしい。それが本当かどうかは知らないけど。" userName="petesergeant" createdAt="2025-02-06T04:55:06" color="">}}

{{<matomeQuote body="それって意味あるのかな？<br>どこかにRNGがないとそうならないと思うけど。MOE自体はランダム性を持たないし、エキスパートへのルーティングはモデルの重みの一部で、別のモデルじゃないと思う。" userName="brookst" createdAt="2025-02-06T05:27:05" color="">}}

{{<matomeQuote body="まずセマンティックセグメンテーションがあって、その後にTextractみたいな方法でテキスト抽出して、ハルシネーションを防ぐんじゃないの？<br>マルチモーダルモデルで抽出したテキストがハルシネーションを起こさないなんてありえないよね？<br>ベンダーの精度が96%で、価格がかなり安いってどうやってテストしたんだろ？<br>人間がランダムにサンプルテストした場合、エラーの分布の変動をどうやって調整するんだ？" userName="itissid" createdAt="2025-02-05T21:56:35" color="">}}

{{<matomeQuote body="みんなOCRプロバイダー（azure、tesseract、AWS Textractとか）の精度が85%くらいなの忘れがち。<br>全部確率的なんだよ。文字と信頼区間が返ってくる。Textractが間違った文字を返してきたら、それはハルシネーションなの？" userName="themanmaran" createdAt="2025-02-05T22:04:06" color="">}}

{{<matomeQuote body="OCR会社としては、これは許されないことだと思うよ。図書館のオーラルヒストリープロジェクトでOCRを使って、ハルシネーションエラーを起こしたら、事実をフィクションに置き換えることになる。歴史を書き換えるってこと？" userName="itissid" createdAt="2025-02-05T21:59:53" color="#ff5733">}}

{{<matomeQuote body="OCRみたいなものって温度設定はすごく低くするんじゃないの？<br>毎回同じ結果が欲しいはずだし。ハルシネーションの一部って温度のランダム性じゃないの？" userName="basch" createdAt="2025-02-05T22:30:18" color="">}}

{{<matomeQuote body="昔の税務会計の仕事みたいだ。<br>OCRはあったけど、エラーを修正するより手で入力した方が早かった。<br>本当の解決策は、IRSが税務申告書に会計データをあらかじめ入力しておくことだよ。でも、政府がそんなこと気にするわけないか。" userName="j_timberlake" createdAt="2025-02-06T00:07:16" color="#785bff">}}

{{<matomeQuote body="ついに無料でファイリングできるようになったんだね。ってことは、今世紀中には実現するかも？" userName="Andrex" createdAt="2025-02-06T00:24:47" color="">}}

{{<matomeQuote body="これはマジで大きな発見だわ。Geminiが抽出と同時にセマンティックチャンキングを、しかも安価でほぼ完璧な精度で、さらに脆いプロンプトの呪文🧙なしにできるなら、これはマジですごいことだね。" userName="panarky" createdAt="2025-02-05T19:24:43" color="#ff5c5c">}}

{{<matomeQuote body="Gemini 2.0を使って抽出とチャンキングを行い、ローカルネットワークで管理するRAGに供給する場合、知識ベースから意味のある洞察を得るには、どのようなローカルホスト型LLMが必要かな？13Bパラメータのモデルで十分かな？" userName="fallinditch" createdAt="2025-02-05T20:53:51" color="#ff33a1">}}

{{<matomeQuote body="細かい点だけど、セマンティックチャンキングをしてるのかな？それともPDF全体をコンテキストにロードしてるのかな？セマンティックチャンキングについては賛否両論あるよね。" userName="potatoman22" createdAt="2025-02-05T19:38:30" color="">}}

{{<matomeQuote body="PDF全体をコンテキストにロードするけど、その後のRAGのためのチャンク分割は自分の仕事になるんだよね。でも、固定サイズのブロックに分割したり、文や段落で区切ったりするのは理想的じゃないんだ。<br>だから、Geminiに可変サイズのチャンクを返すように依頼して、各チャンクが1つの完全なアイデアや概念になるように、論理的なセマンティックセグメントをarbitrarilyに分割せずに済むようにしたい。" userName="panarky" createdAt="2025-02-05T19:52:37" color="#45d325">}}

{{<matomeQuote body="固定サイズのチャンクが、抱えてるRAGプロジェクトの多くを阻害してるんだよね。もしこのセマンティックチャンキングが問題を解決してくれるなら、マジで嬉しい。現在は固定サイズチャンクRAGで78〜82％の成功率しか得られておらず、これは低すぎる。ユーザーはRAG検索で結果がゼロだと、ソースデータに結果がないと思い込んじゃうんだ。" userName="thelittleone" createdAt="2025-02-05T21:26:38" color="#ff5733">}}

{{<matomeQuote body="SEC filingを適切にチャンク分割しようと頑張ってるんだけど、特に企業ファイリングに存在する奇妙で一貫性のない表形式に苦戦してるんだ。<br>これが可能になるかもしれないって希望が出てきたよ。" userName="faxmeyourcode" createdAt="2025-02-05T19:29:09" color="#785bff">}}

{{<matomeQuote body="Geminiのような今日のLLMは、Google/AWS/Azureが数年前から提供しているDocument Understandingサービス、特に既知のフォームを扱う場合に比べてどうなの？GoogleのはDocument AIだよね。" userName="yzydserd" createdAt="2025-02-05T19:49:07" color="">}}

{{<matomeQuote body="一番精度が高い解決策は、専用モデルの1つでOCRを実行し、そのテキストと元の画像をLLMに、＞”このOCR転写のエラーを修正して”みたいなプロンプトでフィードすることだとわかったよ。" userName="zacmps" createdAt="2025-02-05T20:05:09" color="#ff5733">}}

{{<matomeQuote body="もしテキストの内容が不快だったり、家庭でUF-6ガスを精製するレシピについて話していたりしたら、どうなるんだろう？処理を止めて説教モードに入るのかな？<br>皮肉で聞いてるんじゃないんだ。LLMを不快な入力や未知の入力で動作させるタスクに使用した経験が少ないから、あらゆる種類の予測不可能な道徳的判断によってトリガーされ、求めていない出力が生成されてしまうんだ。<br>特定のテキストのキーワードを含むJSON出力を要求した場合、それが不快だと拒否される。どう対処すればいいの？" userName="therein" createdAt="2025-02-05T20:55:27" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="OCRパイプラインの各段階で、ツールの使い方が全部間違ってるからコストがめっちゃ高くなってるよ。画像からテキストを抽出するのに、マルチモーダルモデルは使わない方がいいよ。完璧な高画質画像じゃないと、すぐ幻覚を見始めるからね。文書セクションのバウンディングボックスを検出する専用のオブジェクト検出モデルを使うべき。各テキストボックスを通常のOCRモデルに渡せば、信頼度スコアも得られるし。画像ボックスは、マルチモーダルモデルに渡して内容を説明させるといいよ。表には、GridFormerみたいな表抽出専用モデルを使う。全部XMLファイルにまとめる。Markdownは人間が読むものだからね。これで、オブジェクト検出モデルが認識するカテゴリごとにフラットなXMLマークアップで抽出できて、バウンディングボックス、文字、表セルごとに確率メタデータも付いてくる。このデータをLLMにプログラムで送り込んでテキスト処理すれば、XMLを使ってドキュメントのどの部分をLLMに送るか制御できる。RAGストアに入れるチャンクには、場所データと信頼度スコアをメタデータとして付与できる。俺は上記の方法で、ローカル環境で1日50万ページ処理できるシステムを200万円で作ったぜ。" userName="llm_trw" createdAt="2025-02-05T21:27:31" color="#ff5733">}}

{{<matomeQuote body="どのサービスを元に計算してるか知らないけど、Geminiだと1ヶ月で1000万件以上の配送書類（PDFとPNG）を1000ドル以下で処理できたよ。精度は80～82％（人間は66％）。開発で一番時間がかかったのは、精度と取り込みパイプラインの確立。これは、PDF -> Storage Bucket -> Gemini -> JSONレスポンス -> Databaseっていうシンプルな流れだったよ。Geminiステップに再帰処理を追加して、抽出の出来具合を自己評価させ、一定以下の場合は抽出方法の指示を書き換えて再投入してみたけど、精度は変わらなかった。面白かったけどね。" userName="ajcp" createdAt="2025-02-05T22:17:32" color="#ff33a1">}}

{{<matomeQuote body="＞どのサービスを元に計算してるか知らないけど、Gemmini<br>ブログ記事のコスト表だよ。1日50万ページだと、240日でハードウェアの固定費がソフトウェアの変動費を上回って、それ以降はクラウドで実行するのに1日100ドル余計にかかる。しかも、必要なモデルを全部入れるには、めっちゃ高性能なGPUが必要だった。コンピューティング利用率は5～10％で、データソースの成長率からすると、今後5年間は大丈夫ってこと。<br><br>| Model                       | Pages per Dollar |<br>|-----------------------------+------------------|<br>| Gemini 2.0 Flash            | ≈ 6,000          |<br>| Gemini 2.0 Flash Lite       | ≈ 12,000*        |<br>| Gemini 1.5 Flash            | ≈ 10,000         |<br>| AWS Textract                | ≈ 1,000          |<br>| Gemini 1.5 Pro              | ≈ 700            |<br>| OpenAI 4o-mini              | ≈ 450            |<br>| LlamaParse                  | ≈ 300            |<br>| OpenAI 4o                   | ≈ 200            |<br>| Anthropic claude-3-5-sonnet | ≈ 100            |<br>| Reducto                     | ≈ 100            |<br>| Chunkr                      | ≈ 100            |<br><br>それに、完全にローカル環境だから、社外秘のデータソースも全部使える。開発期間で一番長かったのは、精度と取り込みパイプラインの確立。PDF -> Storage Bucket -> Gemini -> JSON response -> Databaseっていうシンプルな流れだった。各社は、開発者のスキルレベルに合ったツールを構築すべき。モデルのローカルトレーニングが難しいなら、既製のソリューションを使えば、業界で一気に有利になれるよ。" userName="llm_trw" createdAt="2025-02-05T23:34:58" color="#45d325">}}

{{<matomeQuote body="Geminiの性能に匹敵するモデルを見つけられるって前提だけどね。まだそんなのないと思う（変わるといいけど）。" userName="serjester" createdAt="2025-02-05T23:55:02" color="">}}

{{<matomeQuote body="この記事、めっちゃ共感できる！去年（multimodal 3.5 Sonnetが出た頃）に大量のPDFを処理したんだけど、精度がめっちゃ高かった（99％くらい）。GPTは使い物にならなかったけどね。" userName="jeswin" createdAt="2025-02-06T14:08:37" color="">}}

{{<matomeQuote body="めっちゃクール！データベースにはどうやって保存してるの？ベクター？抽出したデータをどう活用してる？クエリシステムで引っ張り出せるようにしてる？" userName="cpursley" createdAt="2025-02-05T22:27:00" color="">}}

{{<matomeQuote body="このケースでは、顧客は倉庫在庫管理システムにないデータが欲しかったから、JSONレスポンスを古典的なテーブル行スキーマ（1行=1ドキュメント）に変換して、配送データとして活用したよ！生のモデルレスポンスは監査用に保存して、ベクター埋め込みもして、いずれベクター検索やRAGに使うだろうって想定してる。「ついでに、今やらなくてもいつかやるだろうことをやっておこう」みたいな感じ。" userName="ajcp" createdAt="2025-02-05T22:51:15" color="#ff5c5c">}}

{{<matomeQuote body="＞ Kind of like “while we're here why don't we do what you're going to want to do at some point, even if it's not your use-case now...”<br>マジでひどい。<br>本当に必要になるまでやらなくていいのに、複雑さと負債を増やすのはなぜ？<br>ただの流行に乗っかって、最大限に利用しようとしてるだけだよね。まあ、それもいいけど。" userName="rofl123" createdAt="2025-02-06T15:00:05" color="">}}

{{<matomeQuote body="＞ why do it now and introduce complexity and debt if you can do it later when you actually need it?<br>雪が降るまでスノーブーツを買わないのと同じ理由だよ。自分の環境、地形、規模、リスク、コストを把握してるから、スノーブーツが必要になる無数のケースを想定できるんだ。たとえ5月でスノーブーツがセール中だったとしてもね ;) ちょっとしたクローゼットのスペースと、家を出るときにドアをロックする手間くらい、どうってことないさ。" userName="ajcp" createdAt="2025-02-06T18:13:15" color="">}}

{{<matomeQuote body="＞ [with] an accuracy rate of between 80-82% (humans were at 66%)<br>これって、誰かが検証したの？そうでなければ、どうやって精度を確かめたの？" userName="svieira" createdAt="2025-02-06T19:42:36" color="">}}

{{<matomeQuote body="なるほどねー、AIの実力って、人間と同じで答えがわかってるテストを作って試すしかないんだよね。だから精度評価が一番時間かかったんだ。AIを評価するために、手動で”正解データ”を作る必要があったからね。" userName="ajcp" createdAt="2025-02-06T22:12:35" color="#45d325">}}

{{<matomeQuote body="ちょっと言わせて。決めつけすぎじゃない？限られたテーブル形式で成功したからって、それがPDF解析の唯一の方法みたいに言うのは違うと思うな。現実は、ズレまくったテーブルとか、ヘッダーがおかしかったり、線が抜けてたり、色で区切られてたり、セルが結合されてたり、Excelからインポートされたり、色々あるんだよ。ClaudeとかGeminiなら複雑なテーブルも解析できるのに、あなたのやり方じゃ無理だと思う。ルールが曖昧だからね。written languageみたいに。<br>最近HNでこんな記事が出てたよ。https://lukaspetersson.com/blog/2025/bitter-vertical/<br>＞You don't use multimodal models to extract a wall of text from an image．They hallucinate constantly the second you get past perfect 100% high-fidelity images．<br>＞”画像からテキストの壁を抽出するために、マルチモーダルモデルを使用しないでください。完璧な１００％高忠実度の画像を過ぎると、絶えず幻覚を見ます。”<br>いや、そうじゃなくて、ネストされたJsonとかXmlで。金融ドキュメントなら精度は99%以上だよ。エラーチェックする方法も色々あるし。<br>＞This is using exactly the wrong tools at every stage of the OCR pipeline, and the cost is astronomical as a result．<br>＞”これは、OCRパイプラインのすべての段階でまったく間違ったツールを使用しており、その結果、コストが天文学的になります。”<br>どこでどう使うか知らないでコストの話はしない方がいいよ。何百万ものPDFを処理するなら問題だけど、1000くらいならGeminiとかを使った方がエンジニアリングの時間節約になるかも。1つのドキュメント処理で10ドル稼げるアプリもあるし、OCRコストなんて気にしない。<br>＞I've build a system that read 500k pages _per day_ using the above completely locally on a machine that cost $20k．<br>＞”上記を使用して、１日に５０万ページを完全にローカルで、２万ドルのマシンで読み取るシステムを構築しました。”<br>著者のやり方は、彼にはうまくいったってだけで、万能じゃないんだよ。" userName="jeswin" createdAt="2025-02-06T14:02:08" color="">}}

{{<matomeQuote body="関連ディスカッション：AI founders will learn the bitter lesson<br>https://news.ycombinator.com/item?id=42672790<br>- 25日前、263コメント<br>HNのディスカッションには面白いアイデアがたくさんあるよ、ありがとう!" userName="metadat" createdAt="2025-02-06T16:49:01" color="#ff5733">}}

{{<matomeQuote body="決めつけすぎだって。<br>1) 公開されてるテーブルベンチマークを無視するほど無能だとか<br>2) 低品質なデータを見たことないほど無能だとか<br>3) 利用可能なすべてのモデルに対して、検証データセットを作成しないほど無能だとか。<br>全部違うから。もしGeminiみたいなVLMが、いかにスペクタクルで予測不能に失敗するか知りたかったら、1時間400ドル＋税で教えてあげるよ。" userName="llm_trw" createdAt="2025-02-06T22:56:54" color="">}}

{{<matomeQuote body="うわ、すごい攻撃的な返信だね。誰もあなたのこと無能だって言ってなくて、あなたの仮定を批判してるだけなのに。<br>＞My day rate is $400 + taxes per hour if you want to be run through each point<br>＞”各ポイントを実行する場合は、1時間あたり400ドル+税です。”<br>へー、すごいね。" userName="pkkkzip" createdAt="2025-02-06T23:04:04" color="">}}

{{<matomeQuote body="Marker(https://www.github.com/VikParuchuri/marker)は、これと似たような感じで、レイアウトモデルを使ってブロックを識別し、それぞれを個別に処理するんだ。内部形式はブロックのツリーで、任意のフィールドを持てるけど、全部htmlにレンダリングできる。json、html、markdownに出力できる。<br>最近、テーブルみたいな特定のブロックの精度を上げるためにGeminiを統合したんだ（最初のテキストを取得して、Geminiに渡して改善）。MarkerだけでもGeminiだけでも同じくらいの性能だけど、組み合わせるとベンチマークがかなり良くなるよ。" userName="vikp" createdAt="2025-02-05T23:01:51" color="#ff5c5c">}}

{{<matomeQuote body="このプロジェクトでsxml [0] を皮肉なしに使いまくったよ。<br>人間が見るレポートのレンダリングは、sxmlをmarkdownにレンダリングした後にpandocを呼び出すステップだった。ほら、powerpointもサポートしてる! - でも、どんな言語モデルでも最高のマークアップに簡単に変換できたんだ。<br>[0] https://en.wikipedia.org/wiki/SXML" userName="llm_trw" createdAt="2025-02-05T23:46:21" color="#ff33a1">}}

{{<matomeQuote body="インクの染みとかコピー機の故障とかがあるなら、別々に処理するより、他のテーブルで使われてる頭字語とか、もっと広いコンテキストから推測できた方が良くない?" userName="cma" createdAt="2025-02-06T08:55:13" color="">}}

{{<matomeQuote body="自分のプロジェクトの情報を紹介してるスレッドで、別の人が自分のプロジェクトについて紹介してるのに、自分のプロジェクトを宣伝するのはどうかと思うよ。" userName="hackernewds" createdAt="2025-02-06T08:43:37" color="">}}

{{<matomeQuote body="markerってdoclingに何を追加するの？" userName="alemos" createdAt="2025-02-06T09:28:24" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Doclingはマジで良いプロジェクトだよね、盛り上がってて嬉しいわ。Markerの方がほとんどのドキュメント形式でdoclingより高品質になると思うよ、特に--use_llmフラグを使うとね。<br>具体的には、Geminiとのハイブリッドモードでページを跨いでテーブルを結合したり、フォームの品質を上げたりしてる。<br>あと、順番がおかしいPDFのために並び替えモデルも動かしてる。<br>OCRもめっちゃ良くて、Suryaっていう独自のモデルを訓練してる - https://github.com/VikParuchuri/surya<br>参照とリンクも扱えるし、数式変換もどんどん良くなってるよ（インラインも含む）。" userName="vikp" createdAt="2025-02-06T16:34:40" color="#45d325">}}

{{<matomeQuote body="これは良いコメントだね。このアプローチのもう一つの利点を挙げるよ。デジタルネイティブでOCRが必要ないPDFにも同じパイプラインが使えるんだ。オブジェクト検出のステップの後、バウンディングボックスから直接テキストを収集するから、テキストにエラーがないんだよね。Geminiを使うと、これを諦めることになる。" userName="anon373839" createdAt="2025-02-06T04:07:11" color="#ff5c5c">}}

{{<matomeQuote body="それってもう過去の話じゃん？AIの進化で、OCRのあんなにたくさんのステップや段階はもう要らないんだよ。XMLもいらない。MarkdownでAIモデルが十分に理解できるから。" userName="siva7" createdAt="2025-02-06T03:40:43" color="">}}

{{<matomeQuote body="うちが18ヶ月前に出した結果は、今のGeminiのベンチマークより良いのにコストはもっと低いんだよね。Markdownは良いとして、テキストが正しいかっていうモデルの信頼度に関するメタデータをどうやってエンコードするの？XMLには属性っていう便利なものがあって、LLMが読める形式で来歴を記録できるんだよね。セカンドデータベースも要らないし。" userName="llm_trw" createdAt="2025-02-06T06:01:23" color="">}}

{{<matomeQuote body="後でこのコメントを見つけられるようにコメントしとく。AIの盛り上がりをこの短いパラグラフで完璧に捉えてるね。" userName="JohnKemeny" createdAt="2025-02-06T07:39:26" color="">}}

{{<matomeQuote body="なんで昨日までの世界に甘んじる必要があるんだ？昨日までの世界は、精度が高くて、コストが低くて、ローカルにデプロイできるのに。今日の新しいツールを使って、車輪の再発明をして、全部クラウドに置いて、タダでハルシネーションを手に入れるのかよ…" userName="fransje26" createdAt="2025-02-06T10:04:35" color="">}}

{{<matomeQuote body="昨日までの世界のツールって具体的に何のこと？PDFの解析でPythonの基本ライブラリで問題があったんだよね。最新のツールじゃないと正しく情報を解析できなかった。" userName="BenGosub" createdAt="2025-02-07T09:40:33" color="">}}

{{<matomeQuote body="GP（原文のコメントをした人）の言う通りだね。<br>すでに最適化されたパイプラインがあるなら、そりゃ使い続ければ良いと思うよ。<br>でも、今日PDFを扱うなら、Geminiを使えば良いんじゃない？AIが理解しやすい形式を使うべきだよ。XMLファイルをどうこうするなんて考えなくて良い。" userName="raincole" createdAt="2025-02-06T11:12:38" color="#38d3d3">}}

{{<matomeQuote body="それってコストが高いし、ハルシネーションを起こすし、ベンダーロックインされるじゃん。" userName="aiono" createdAt="2025-02-06T13:20:39" color="">}}

{{<matomeQuote body="なんでベンダーロックって言うの？構造化された出力をサポートしてGeminiと競合してるトップレベルのLLMが4、5個あるじゃん。LLMベンダーが構造化出力のためにパイプラインを構築したら、新しいモデルをすべてパイプラインに通すと思うよ。" userName="bitdribble" createdAt="2025-02-16T16:42:14" color="">}}

{{<matomeQuote body="ぶっちゃけ、Geminiがドキュメントベースのオブジェクト検出モデルを使ってないとは確信できないなー。少なくとも一部の箇所とか、ドキュメントのカテゴリによってはね（特にIDとか請求書、税務書類、発注書、配送書類とか、DocAIクラウドサービスの一部として以前にドキュメント抽出器を作成したことがあるような一般的なもの）。" userName="eitally" createdAt="2025-02-06T05:30:08" color="#ff33a1">}}

{{<matomeQuote body="この投稿から”苦い教訓”的な雰囲気を感じる。" userName="woah" createdAt="2025-02-06T00:30:01" color="">}}

{{<matomeQuote body="苦い教訓ってほどでもないんじゃない？もし無限のメモリ、計算能力、データがあったら、長さNの入力に対してランクNのテンソルを使って終わりだよ。残念ながらN^Nはすぐに大きくなっちゃうから、ML計算を宇宙の熱的死を迎える前に完了させるために、いろいろ面白いエンジニアリングが必要になるんだよね。" userName="llm_trw" createdAt="2025-02-06T01:52:04" color="">}}

{{<matomeQuote body="＞ほとんどのAI研究は、エージェントが利用できる計算量が一定であるかのように行われてきた（その場合、人間の知識を活用することがパフォーマンスを向上させる唯一の方法の1つになる）。しかし、典型的な研究プロジェクトよりもわずかに長い時間では、必然的にもっと多くの計算が利用可能になる。より短期間で違いを生む改善を模索して、研究者はドメインに関する人間の知識を活用しようとするが、長期的には計算の活用だけが重要になる。これら2つは対立する必要はないが、実際にはそうなる傾向がある。一方に費やす時間はもう一方に費やす時間ではない。一方のアプローチまたは他方への投資には心理的なコミットメントがある。そして、人間の知識アプローチは、計算を活用する一般的な方法を利用するのに適さない方法でメソッドを複雑にする傾向がある。”" userName="woah" createdAt="2025-02-06T03:53:30" color="#ff5c5c">}}

{{<matomeQuote body="数学的なトリック（畳み込みとかアテンションヘッド）なしでmnistを解くには、2.5e42の重みが必要になる。16ビットの重みを使うと仮定すると、5e42バイトになる。1ヨタバイトは10e24。<br>つまり、それを解くには5エクサヨタバイトが必要になる。<br>現在、全世界のストレージは約200ゼタバイト。<br>つまり、mnistを解くには、今後120年間は数学的なトリックが必要になる。" userName="llm_trw" createdAt="2025-02-06T06:12:06" color="#38d3d3">}}

{{<matomeQuote body="ちょっと細かいこと言いすぎじゃない？ビジネス上の決定は、コストだけじゃなくて、脆さ、メンテナンス、市場投入までの時間も考慮されるんだよ。Geminiのパフォーマンスに匹敵するものが作れるって決めつけてるし、Googleのエンジニアリングリソースとコストが今後も一定だっていう前提もおかしい。" userName="pkkkzip" createdAt="2025-02-06T02:07:30" color="">}}

{{<matomeQuote body="すごいね。このプロジェクトについてもっと詳しく教えてくれない？1日に50万ページってすごい量だし、それだけのスループットが必要な理由も想像できる。" userName="dr_kiszonka" createdAt="2025-02-05T22:30:17" color="">}}

{{<matomeQuote body="テーブル検出できるモデルで、実装が公開されてるものってGridformer以外に何か知ってる？" userName="polote" createdAt="2025-02-05T22:28:47" color="">}}

{{<matomeQuote body="何のオブジェクト検出モデルを使ってるの？" userName="ck_one" createdAt="2025-02-05T21:35:24" color="">}}

{{<matomeQuote body="マジすごくね？ある会社が、エディタから構造化されたデータ（画像は除く）を取り出して、完全にグチャグチャな非構造化形式に変換する、普遍的に普及した形式を発明したんだぜ。で、それを構造化データに戻すには、高い金払って怪しい魔法が必要になるとか、ありえなくね？" userName="twelve40" createdAt="2025-02-05T23:11:54" color="#ff5733">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
