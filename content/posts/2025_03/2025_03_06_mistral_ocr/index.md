+++
date = '2025-03-06T00:00:00'
months = '2025/03'
draft = false
title = 'Mistral OCRの実力とは？新しいOCRモデルがもたらす変革と課題'
tags = ["OCR", "AI", "テクノロジー", "ベンチマーク", "文書解析"]
featureimage = 'thumbnails/green4.jpg'
+++

> Mistral OCRの実力とは？新しいOCRモデルがもたらす変革と課題

引用元：[https://news.ycombinator.com/item?id=43282905](https://news.ycombinator.com/item?id=43282905)

{{<matomeQuote body="マーカーを使った部分的なベンチマークをやってみたよ。375サンプルで、Mistralは4.32、Markerは4.41。MarkerはH100で1秒あたり20から120ページの推論ができる。サンプルはここで見れるよ　https://huggingface.co/datasets/datalab-to/marker_comparison...  ベンチマークのコードはここにあるよ　https://github.com/VikParuchuri/marker/tree/master/benchmark...  近いうちにフルベンチマークもやる予定。Mistral OCRはすごいモデルだけど、OCRは難しい問題で、LLMsだとハルシネーションやテキストの欠落が多いリスクがあるよ。" userName="vikp" createdAt="2025-03-06T23:01:56" color="#ff5c5c">}}

{{<matomeQuote body="＞ with LLM as a judge<br>他の人にも興味があるかもしれないから、プロンプトはここにあるよ　[0]。使ったモデルはgemini-2.0-flash-001。ベンチマークは難しいし、人間を介した方がいい気もするけど、LLM判定のベンチマークをそのまま受け入れるのはちょっと難しいかな。特にOCRみたいな難しい問題だと余計に。どうしてLLMを使ったのか考えた？ベンチマークにどんな限界を感じてるの？　[0] https://github.com/VikParuchuri/marker/blob/master/benchmark..." userName="lolinder" createdAt="2025-03-07T02:17:16" color="#ff5c5c">}}

{{<matomeQuote body="私たちもLLMを使ってOCRベンチマークをやったよ。詳しい方法論はリポジトリで見られるけど、要するにこんな感じ：<br>すべての文書に正確なテキスト、JSONスキーマ、正確なJSONがある。<br>各文書にOCRをかけて、結果をGPT-4oにJSONスキーマと一緒に渡す。<br>予測されたJSONを正確なJSONと比較する。私たちのベンチマークでは、正確なテキストとgpt-4oが99.7%以上の精度を達成したよ。もしMistralのOCRテキストが70%だとしたら、誤差はOCRのエラーに限られる。" userName="themanmaran" createdAt="2025-03-07T05:52:57" color="#45d325">}}

{{<matomeQuote body="Mistralを使ったベンチマークは完了して70%のスコア出たの？その部分見逃してた！<br>ベンチマークページで見たけど、どれも70%台が低い結果だね！" userName="cdolan" createdAt="2025-03-07T05:54:52" color="">}}

{{<matomeQuote body="うん、驚きの結果だよ！さらに深掘りしてみた。主な原因は「画像抽出」が過剰すぎること。Mistralが何かを画像として分類すると、その部分が丸ごと(image)[image_002)になるんだ。多くの文書でそうなった。例えば、ほとんどの領収書が画像として扱われてテキストが抽出できなかったよ。" userName="themanmaran" createdAt="2025-03-07T07:27:18" color="#785bff">}}

{{<matomeQuote body="これは北米（特に米国・カナダ）での請求書や領収書処理にとって実際の問題だよね？" userName="cdolan" createdAt="2025-03-07T14:04:15" color="">}}

{{<matomeQuote body="「Mistralが何かを画像として分類すると、その部分が丸ごと(image)[image_002)になる」という情報はどこで見た？" userName="lingjiekong" createdAt="2025-03-07T11:47:03" color="">}}

{{<matomeQuote body="themanmaranはOmniで働いてるから、この研究の実際の結果データを持ってるはずだね。" userName="culi" createdAt="2025-03-07T15:35:55" color="">}}

{{<matomeQuote body="それだと、OCRから抽出したテキストの形と生のテキストの形が偏っちゃうんじゃない？セマンティックな精度を推定するのにいいベンチマークとは思えないけど。" userName="someothherguyy" createdAt="2025-03-07T10:47:03" color="">}}

{{<matomeQuote body="Markdownのベンチマークはプロバイダー間での微妙なフォーマットの違いがあるから難しいね。HTMLだとTEDSみたいなのが使えるけど、Markdownは構造が曖昧だから、編集距離に頼るしかない。ブロック単位の編集距離が全ページよりも良いと思うけど、ほとんどのプロバイダーは全ページでしかうまくいかない。Markerレポにいくつかのベンチマークタイプがあるよ：<br>- ヒューリスティック（ブロックごとの編集距離とオーダースコア）<br>- ルーブリックに対するLLM判定<br>- 異なるプロバイダーからのサンプルを比べるLLMの勝率<br>これらは完璧ではないけど、ルーブリックに対するLLMの判定がビジュアル検査と最も一致しているよ。ベンチマークをどんどん改善していくつもり。Markdownに対するTEDS的な指標を作るのも面白いかも。モデルをトレーニングしてから評価するのも面白いけど、純粋な抽出品質を測ることからは離れちゃうからね。Markdownの質の素晴らしいベンチマークは見たことがないし、これはオープンな問題だよ。" userName="vikp" createdAt="2025-03-07T02:41:23" color="">}}

{{<matomeQuote body="構造化出力とか、例えば俺の使ってるリンクのやつを使えば、LLMから生成されたアンラベルテキストから実データを抽出できるから、スキーマがあればベンチマークも少し楽になるよ" userName="arthurcolle" createdAt="2025-03-07T03:18:53" color="">}}

{{<matomeQuote body="このプロジェクトって何？普通のhtmlページが返ってくるだけで、”Dynamic Schema API APIは動作中。利用可能なエンドポイントについてはドキュメントを参照”って書いてあるだけだよ" userName="cdolan" createdAt="2025-03-07T14:12:18" color="">}}

{{<matomeQuote body="これはFastAPIのアプリで、俺が開発してデプロイしたもので、OpenAIが構造化出力を出す前に関数型文法を使ってpydanticみたいなスキーマを強制してChain of Thoughtの展開とかアンラベルテキストからのデータ抽出に使ってたんだ。ビデオトランスクリプションのナレッジベース生成APIにも使ってるよ。" userName="arthurcolle" createdAt="2025-03-11T20:49:04" color="#45d325">}}

{{<matomeQuote body="Markerの仕事に感謝！PDF用の最高のOCRだと思う。マークダウン変換はテーブルで少しおかしくなることもあるけど、それでも他と比べたら全然いいよ。" userName="carlgreene" createdAt="2025-03-07T00:22:38" color="#38d3d3">}}

{{<matomeQuote body="シェアしてくれてありがとう！今、いくつかのモデルをトレーニング中で、これを改善できることを期待してるよ！" userName="vikp" createdAt="2025-03-07T02:42:46" color="">}}

{{<matomeQuote body="LLMを審査員として使うの？それって潜在的な問題じゃない？LLM審査員が信頼できるって前提だけど、その前提が合理的だって証拠をどうやって保証する？" userName="netdevphoenix" createdAt="2025-03-07T11:45:44" color="">}}

{{<matomeQuote body="もしかしたら彼らは別のLLMで自分たちのLLM審査員モデルを評価したのかも。" userName="bfors" createdAt="2025-03-07T19:03:39" color="">}}

{{<matomeQuote body="これすごい！データが実際に構造化JSONとマークダウンのベンチマーク見たことある？" userName="ntkris" createdAt="2025-03-07T07:21:54" color="">}}

{{<matomeQuote body="アドバイスありがとう！Markerはテーブル変換を解決してくれたので、doclingじゃできなかったことができたよ。" userName="ChrisRob" createdAt="2025-03-07T14:44:01" color="#45d325">}}

{{<matomeQuote body="本当に興味深いベンチマーク、シェアしてくれてありがとう！リアルな比較が見れて嬉しいよ。LLMベースのOCRのハルシネーションの問題は重要な懸念事項で、そのリスクを定量化するのが大事だよね。全体のベンチマーク結果が楽しみ！" userName="codelion" createdAt="2025-03-07T03:53:52" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="ライセンスの選択肢がいいね！この開発を続けるために十分なお金を稼げることを願ってるよ。" userName="stavros" createdAt="2025-03-07T09:17:17" color="">}}

{{<matomeQuote body="＞Mistral OCRはすごいモデルだけど、OCRって難しい問題で、LLMでハルシネーションや欠落したテキストが出るリスクが大きいよね。多くのLLMを使っての合意範囲を選ぶのはどうかな？" userName="DeathArrow" createdAt="2025-03-07T05:33:05" color="#ff33a1">}}

{{<matomeQuote body="なんで同じ訓練データを使ってるのにハルシネーションが合意されないの？って疑問だよね。" userName="boxed" createdAt="2025-03-07T05:52:59" color="">}}

{{<matomeQuote body="ハルシネーションはモデルが何かを知らないことの表れだと思う。音に支配される訓練重みが影響して、複数のモデルで同じプロンプトを扱ったほうが安定した結果が得られるかも。" userName="TJSomething" createdAt="2025-03-07T06:52:57" color="#ff5c5c">}}

{{<matomeQuote body="この前の記事では、複数のLLMが同じことについてハルシネーションを起こすことがあるから、訓練データが不十分だとハルシネーションが消えないって話だったよ。" userName="supriyo-biswas" createdAt="2025-03-07T08:20:10" color="">}}

{{<matomeQuote body="ハルシネーションって結局、モデルが出す出力の一部だと思う。だから、数学の観点から見れば、正しい答えとハルシネーションに違いはないってことだよね。" userName="boxed" createdAt="2025-03-07T07:16:42" color="">}}

{{<matomeQuote body="統計的な単語パターンの予測に過ぎないんじゃない？モデルは真実や事実を検証できないし、判断しようとするのは結局、自分で納得する状態を見つけるだけだと思う。" userName="neuronic" createdAt="2025-03-07T07:45:49" color="#ff33a1">}}

{{<matomeQuote body="悪くはない！でもまだハルシネーションがあるね。難しい画像の例もあって、真ん中のブロックでは完璧だけど、次のブロックが最悪だよ。文を重複させたり、存在しない単語を作ったりするのはダメだよね。" userName="bambax" createdAt="2025-03-06T21:42:46" color="#ff5c5c">}}

{{<matomeQuote body="＞完璧だね！でも、U+25CBの円を使うんじゃなくて、U+00BAの序数インディケーターにするべきだと思う。細かいけど、ミスは気になるよ。" userName="layer8" createdAt="2025-03-06T22:34:37" color="">}}

{{<matomeQuote body="ちょっと関係ないけど、AppleのLiveTextで画像から文字をコピーしたら、違う文字が入っちゃったことがあって。OCRが正確じゃないと問題になるよね。" userName="MatthiasPortzel" createdAt="2025-03-07T01:55:22" color="">}}

{{<matomeQuote body="ちょっとした指摘だけど、U+25CB ○ WHITE CIRCLEを使うのは完璧とは言えないんじゃない？本来はU+00BA º MASCULINE ORDINAL INDICATORとか、スーパースクリプトの｢o｣や度記号を使うべきだと思う。それをコンテキストに応じて選べるはずだけど。" userName="jorvi" createdAt="2025-03-06T23:22:22" color="#ff5733">}}

{{<matomeQuote body="人間でもそれは推論モデルの話だよねｗ。" userName="TeMPOraL" createdAt="2025-03-06T22:45:02" color="">}}

{{<matomeQuote body="OCRソフトは使用言語を解析して、認識言語のヒューリスティックを使って文字認識を導くんだよね。推論モデルは必要ないと思うけど、逆に推論モデルが誤りに気づくべきだね。ただLLMトークナイゼーションがそれを難しくするかも。" userName="layer8" createdAt="2025-03-06T22:50:53" color="">}}

{{<matomeQuote body="OCRの後には言語とテーマの検出があった方がいいと思うし、最後に適切な辞書を選んだスペル・文法チェッカーも必要だと思う。これって、OCRじゃなくて古典的なスペルと文法のチェックの問題じゃないか？" userName="raffraffraff" createdAt="2025-03-07T08:33:03" color="">}}

{{<matomeQuote body="間違った文字が認識されてるから、これはOCRの問題だよ。元の画像でスペルや句読点の間違いを直すんじゃなくて、OCRの精度が低いから問題が起こってる。特に｢白い円｣の文字は、元の序数記号を推測するのが難しいから、元の画像を見る必要があるし。" userName="layer8" createdAt="2025-03-07T13:02:47" color="#45d325">}}

{{<matomeQuote body="その後の文法・スペルチェックが、正確な文字を解読したのか、誤って解読したのかによって変わるよね。スペル・文法のチェックが後者を修正できるなら、正当だと思うけど。" userName="raffraffraff" createdAt="2025-03-07T22:02:19" color="">}}

{{<matomeQuote body="OneNoteの画像からテキストをコピーする機能が最近変なOCR結果を出すようになったんだ。はっきりした印刷ページの画像からも、｢cornprising｣じゃなくて｢comprising｣になるとか。これは見た目も似てるから気づきにくいよね。" userName="pbhjpbhj" createdAt="2025-03-07T15:39:44" color="">}}

{{<matomeQuote body="また別のテストとして、英語のテキストで試してみたよ。これはニュージーランドの1854-55年の議会での議論の画像なんだけど、誤りがいくつかあったよ。たとえば、｢emundations｣は本来｢emendations｣なんだけど、あと｢expedited｣とか、意味が変わるものもあるから注意が必要だよね。" userName="bambax" createdAt="2025-03-06T21:55:51" color="#785bff">}}

{{<matomeQuote body="OCRがもう解決した問題だって喜びたいけど、ハルシネーションも問題だから、Tesseractと同じで手動の校正が必要だと思う。自分のプロジェクトでどれだけ改善されるか試してみないとね。" userName="spudlyo" createdAt="2025-03-06T22:02:50" color="">}}

{{<matomeQuote body="使用ケースによるね。自分の場合は、スキャンしたPDFのページから長文の概要を取るために数百万のページを処理してる。たまに間違いがあってもプロジェクトには影響しないから。自分は例外的だと思うけど、可能な限り正確な解決策を望んでるよ。" userName="qingcharles" createdAt="2025-03-07T00:49:01" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="両方やって出力の違いを比べて競合部分を特定するってことかな？" userName="eMPee584" createdAt="2025-03-07T00:44:24" color="">}}

{{<matomeQuote body="今考えてるのは、2つのOCRモデルを使って結果を比べてエラーをチェックすること。こんな値段ならやらない手はないよね。" userName="spudlyo" createdAt="2025-03-07T01:17:22" color="#ff33a1">}}

{{<matomeQuote body="PDF解析能力とLLMの学習データセットの質に相関って誰か知ってる？科学論文がPDFで、今までテキストやトークンへの変換が悪かったなら、トレーニングで大きな改善が期待できる？" userName="thomasfromcdnjs" createdAt="2025-03-07T01:48:53" color="">}}

{{<matomeQuote body="あなたの例、そんなに難しくないと思うけど。" userName="rossant" createdAt="2025-03-07T07:17:00" color="">}}

{{<matomeQuote body="あいつはいつもハルシネートするだけだね。" userName="Kokichi" createdAt="2025-03-07T00:57:15" color="">}}

{{<matomeQuote body="これは本当にワクワクするね。論文や教科書を読みやすくする趣味のプロジェクトを考えてたんだけど、残念ながらOCRや図の抽出技術がまだ足りなかった。これ、ゲームチェンジャーだよ。図の参照を実際の図と関連付けられるから、ページをめくる手間が減るUIが作れる。HTMLへのクリーンな変換もできるから、知らない単語をクリックして意味を見たり、LLMが生成したチェックポイントの質問を挿入する機能も追加できるね。Andy MatuschakのOrbitをPDFに自動統合できるか試してみたい。可能性がいっぱい。" userName="owenpalmer" createdAt="2025-03-06T18:48:32" color="#45d325">}}

{{<matomeQuote body="＞このUIがあれば、参照図を探す面倒が解消されるね。実際、私もこの問題にずっと悩んでた。で、sioyekっていうのを見つけたら、リンクにカーソルを合わせると小さなウィンドウがポップアップするのが良かった。 PDFファイルのフォーマットが正しければ、OCRでこの体験がもっと良くなるね。UIコンポーネントはもうあるってことさ。" userName="NalNezumi" createdAt="2025-03-06T21:36:12" color="#45d325">}}

{{<matomeQuote body="ZoteroのPDFビューアもこれを今やってるよ。PDFに注釈を付けたり、リファレンスマネージャーがあって助かってる。" userName="PerryStyle" createdAt="2025-03-06T22:36:34" color="#785bff">}}

{{<matomeQuote body="リンク教えてくれてありがとう！似たようなことをやっている人がいるっていいね。" userName="owenpalmer" createdAt="2025-03-07T00:43:02" color="">}}

{{<matomeQuote body="これって画像も扱うの？" userName="generalizations" createdAt="2025-03-06T19:24:56" color="">}}

{{<matomeQuote body="入力に画像が含まれてるみたい。例の一つでは、ロゴが元の画像から切り取られて結果に含まれてるのが見えるね。" userName="ezfe" createdAt="2025-03-06T19:42:00" color="">}}

{{<matomeQuote body="Gemini Flash 2.0と比較したベンチマークを実施したよ。詳しくはここを見てね：<a href=”https://reducto.ai/blog/lvm-ocr-accuracy-mistral-gemini”>https://reducto.ai/blog/lvm-ocr-accuracy-mistral-gemini</a>。要約すると、すごいモデルだけど、ドキュメント解析ではSOTA VLMに劣り、OCRや表構造で内容を誇張しがちなんだ。" userName="raunakchowdhuri" createdAt="2025-03-07T03:54:06" color="#ff5733">}}

{{<matomeQuote body="個人的にもGemini Flashの方がいいと思った。" userName="shrisukhani" createdAt="2025-03-07T09:43:01" color="">}}

{{<matomeQuote body="お金持ちの会社と比較してるからね。" userName="hackernewds" createdAt="2025-03-07T06:12:23" color="">}}

{{<matomeQuote body="キャッチフレーズで”世界最高のドキュメント理解API”を謳ってるからさ、マーケティングには期待しちゃうよね。" userName="stann" createdAt="2025-03-07T07:43:56" color="#45d325">}}

{{<matomeQuote body="もしそう言っててクオリティが低いなら、その商品は見限るね。" userName="dwedge" createdAt="2025-03-07T10:05:26" color="">}}

{{<matomeQuote body="それで？技術そのものの良し悪しで判断してるんだ。確かに公平ではないかもしれないけど、自分がOCRを選ぶ時はSOTAを選びたいから、こういう比較が役立つんだよね。" userName="HaZeust" createdAt="2025-03-07T06:27:40" color="#ff5733">}}

{{<matomeQuote body="他の出力との比較も近々出すよ！" userName="raunakchowdhuri" createdAt="2025-03-07T08:00:10" color="">}}

{{<matomeQuote body="PDFを編集できるようになるなんて、とうとうそこまで技術が進んだんだね。" userName="Asraelite" createdAt="2025-03-06T19:00:41" color="">}}

{{<matomeQuote body="難しさじゃなくて、許容できるエラーの問題だと思う。自動運転は99%の精度じゃダメで、99.99%が必要だと思う。その精度を出すのは難しい。" userName="pzo" createdAt="2025-03-06T19:40:10" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="99%の精度なんて大半の人にないって。自動運転のエラー許容の基準が低いのは当然だね。" userName="rtsil" createdAt="2025-03-06T20:29:27" color="">}}

{{<matomeQuote body="99%の精度ってどう定義するの？成功率が高ければもっと合理的だと思う。毎日通勤してる人は1000回以上運転するだろうけど、数年に一回しか事故がないし、99%なら月一の事故になるよ。" userName="KeplerBoy" createdAt="2025-03-06T21:11:11" color="">}}

{{<matomeQuote body="過去10年間、PDFを95%以上の精度で編集できてるけどね。" userName="toephu2" createdAt="2025-03-06T21:03:34" color="">}}

{{<matomeQuote body="OCRがほぼ解決されるところまで来てるのはワクワクするね。レガシー企業は新しいVLMに押し流されるだろう。でも、OCRの出力からビジネスでのプロセス開発にはまだ大きなギャップがあるよ。完全自動化を期待するのは幻想だから、時間と労力はかかるけど、未来は明るい！" userName="kbyatnal" createdAt="2025-03-06T19:32:33" color="#45d325">}}

{{<matomeQuote body="自分のスタートアップでOCR技術を評価する際、ステークホルダーに“人間の介入”が避けられない、かつ有益であることを納得させるのが難しいっていう問題に直面した。PMは完全自動化を求めるけど、それはありえないと思う。チューニングコストを払わないと失敗することになるんだ。" userName="dml2135" createdAt="2025-03-06T20:14:54" color="">}}

{{<matomeQuote body="その通りだね！私のスタートアップもこれを理由に作った。スタートアップや大企業で「完全自動化は無理」との声をたくさん聞いたよ。でも努力すれば生産的な精度には到達できる。正しいツールを用いればチューニングにかかる時間も短縮できるし、1-2週間で到達することも可能だよ。" userName="kbyatnal" createdAt="2025-03-06T20:37:34" color="#ff5733">}}

{{<matomeQuote body="やっぱり、耐障害性に依存する部分が大きいね。OCRが99.9%や99%、98%の信頼性を持つ場面はたくさんあると思うよ。優秀なプロダクトマネージャーなら、この限界を理解して上手く対応できるはず。" userName="golergka" createdAt="2025-03-07T00:38:00" color="#ff5c5c">}}

{{<matomeQuote body="やっぱり避けられない“人間の手”が必要なんだと思う。こっちのコメントを見る限り、一般的なOCRはまだまだ不十分みたい。でも、あんまり大きな野望は持ってないから、自分にはちょっとした前処理で使えそう。どこがうまくいくか分かってれば、ちょいと手を加えて与えれば、ばっちり組み立てられそうだね。テストしてたら特定の部分で常に失敗してたけど、うまくいったところは他の方法よりめっちゃ上手くいったよ。" userName="jocoda" createdAt="2025-03-07T07:58:31" color="">}}

{{<matomeQuote body="従来の純OCRを提供している業者は、こういうVLMにボコボコにされるだろうね。" userName="risyachka" createdAt="2025-03-06T20:08:44" color="">}}

{{<matomeQuote body="価値を他で追加しない限り、彼らはコモディティ化されるだろうね。顧客にとってはいいニュースだ。" userName="esafak" createdAt="2025-03-06T21:55:23" color="">}}

{{<matomeQuote body="彼らは（あるいは簡単にできるはず）SLAの形で価値を加えていくね。正確さについて保障を提供することで、顧客には具体的な保証を与えて責任を移せるし、ベンダーもLLM OCRプロセスからさらに%の信頼性を得る技術やシステムに集中できる。こういうのは特に大きな企業が喜んで払うものだし、OCRは単なる歯車だから、信頼性や予測可能性が増すのはありがたい。加えて、EUの規制に完全に準拠していることを突き詰めるような付加価値も、業者が提供できる。" userName="TeMPOraL" createdAt="2025-03-06T22:53:16" color="#ff5733">}}

{{<matomeQuote body="自分の課題は、OCRのためのバウンディングボックスをどうやって取得するかってことだ。" userName="techwizrd" createdAt="2025-03-06T20:47:09" color="">}}

{{<matomeQuote body="AWS Textractはこの点でうまく機能してるし、LLMを動かすよりかなり安いよ。" userName="dontlikeyoueith" createdAt="2025-03-06T22:24:03" color="">}}

{{<matomeQuote body="Textractは、少なくとも毎月最初の100万ページではこっちより高いし、Gemini Flashよりも大分高いよ。でも、確かにうまく機能してる - 試したオープンソースの純OCRソリューションよりは断然いいよ。" userName="daemonologist" createdAt="2025-03-06T22:48:09" color="">}}

{{<matomeQuote body="それは面白い課題だね。うまくいったのは、LLMに全ての抽出データの引用を生成させて、それを元のOCRコンテンツにマップし、バウンディングボックスを生成するシステムだよ。いくつかのエッジケースは確かにあって、時間をかけてヒューリスティクスのスイートを作ったけど、全体的にはすごくうまく機能してる。" userName="kbyatnal" createdAt="2025-03-06T21:18:22" color="#ff5c5c">}}

{{<matomeQuote body="なんでTextractを使わないでこれをするの？" userName="dontlikeyoueith" createdAt="2025-03-06T22:24:38" color="">}}

{{<matomeQuote body="私もその質問ありますね。" userName="schcrosby" createdAt="2025-03-07T00:04:05" color="">}}

{{<matomeQuote body="Checkrを顧客に持ってるなんてすごいけど、参照可能なの？" userName="nextworddev" createdAt="2025-03-06T23:49:53" color="">}}

{{<matomeQuote body="ところで、portkeyにはどんな'ダークパターン'があるの？" userName="wahnfrieden" createdAt="2025-03-08T09:38:26" color="">}}

{{<matomeQuote body="高精度が目標だけど、多モーダルアプローチは現実のパフォーマンスに影響を与える複雑さを持ちこむよ。詳細はレビューで解説してるよ：<br>「https://undatas.io/blog/posts/in-depth-review-of-mistral-ocr...」<br>ユースケースについては、エッジケースの扱いにどれだけ優れているかによるね…。" userName="jojogh" createdAt="2025-03-13T03:51:06" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
