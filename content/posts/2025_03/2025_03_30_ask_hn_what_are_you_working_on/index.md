+++
date = '2025-03-30T00:00:00'
months = '2025/03'
draft = false
title = 'みんな何してる？2025年3月の開発状況を大公開！驚きのプロジェクトが続々！'
tags = ["開発", "機械学習", "オープンソース", "Webサービス", "研究"]
featureimage = 'thumbnails/blue_green4.jpg'
+++

> みんな何してる？2025年3月の開発状況を大公開！驚きのプロジェクトが続々！

引用元：[https://news.ycombinator.com/item?id=43527452](https://news.ycombinator.com/item?id=43527452)

{{<matomeQuote body="北極圏の音響分類で博士論文仕上げてるんだ。パートナーが98個の録音機を設置して、野生動物とか人間のノイズを19.5年分も収集したんだって。データが足りなくて、少ないデータで良い結果を出すのが目標。EDANSAってデータセットを作ったり、transfer learningとか色々試してる。MLLMは苦戦してるみたい。気軽に話しかけてね！" userName="enisberk" createdAt="2025-03-31T05:53:10" color="#785bff">}}

{{<matomeQuote body="Enisさん、面白そうなプロジェクトだね。僕らのチームは、時系列の生理データとか地震データを使って研究してるんだ。そっちのデータで僕らの技術を試せないかな？北極とか南極の研究にも興味あるんだ。" userName="teleforce" createdAt="2025-04-01T13:10:37" color="">}}

{{<matomeQuote body="teleforceさん、ありがとう！そっちも面白そうだね。昔、アラスカの石油会社が集めた地震データを使って動物の動きを追えないかって話が出たのを思い出したよ。EDANSAってデータセットは公開してるから見てみて。生の音声データも公開予定だよ。興味があったらメールしてね。モデルもあるから、もし良かったら試してみない？" userName="enisberk" createdAt="2025-04-01T18:57:33" color="#ff5c5c">}}

{{<matomeQuote body="生のデータでGPTを学習させて、他のタスクに再利用する方法を考えたら？NLPの世界でGPTが出てくる前の状況と似てると思う。大規模なGPUを持ってる人なら協力してくれるかも。データセットが大きいからって諦めないで！" userName="d_burfoot" createdAt="2025-03-31T17:23:18" color="">}}

{{<matomeQuote body="d_burfootさん、貴重な意見ありがとう！自己教師あり学習で大規模モデルを学習させるのは僕らも検討したよ。でも、データ量が足りなくて…。19.5年分のデータがあるけど、ほとんどが静かな音なんだ。既存のモデルも試したけど、環境音が多すぎてうまくいかない。画像モデルで初期化する方法も試してるけど、まだ課題が多いね。" userName="enisberk" createdAt="2025-03-31T23:35:12" color="#ff5733">}}

{{<matomeQuote body="複数の録音機が同時に動いてたかってことなら、そうだよ。98ヶ所で4年間録音したけど、場所は離れてるから全く同じ場所の音を録音したわけじゃないよ。" userName="enisberk" createdAt="2025-04-01T07:25:06" color="">}}

{{<matomeQuote body="同じ環境音を複数の録音機で聞けば、一つの信号では見えない信号を作り出せるから聞いたんだ。" userName="mnky9800n" createdAt="2025-04-04T21:00:35" color="">}}

{{<matomeQuote body="それ、めっちゃいいね！僕は分類モデルを作ってるんだけど、音声入力が欲しいんだ。カメラの視野外の活動を測るのにも役立つし。でも、データが足りないんだよね。動画から音の特徴を学ぶのもありだけど、グローバルなデータは難しい。画像データと音声データを交換したいぐらいだよ！" userName="frontierkodiak" createdAt="2025-03-31T17:52:16" color="#ff5733">}}

{{<matomeQuote body="Calebさん、ありがとう！音声はカメラの視野を補完できるよね。僕らも画像データと組み合わせて研究してるよ。EDANSAってデータセットは公開してるから、ぜひ使ってみて。Polli.aiもすごいね！この分野は大変だけど、生物多様性を守るために頑張って！" userName="enisberk" createdAt="2025-03-31T23:16:00" color="#38d3d3">}}

{{<matomeQuote body="スペクトログラムのツールを、音のラベリングとか分析にもっと使える科学的なツールにしたいんだよね。君のプロジェクトでスペクトログラフ使ってる？" userName="thePhytochemist" createdAt="2025-03-31T15:37:57" color="">}}

{{<matomeQuote body="thePhytochemistさん、クールなツールだね！うん、スペクトログラムはうちでもめっちゃ重要だよ。手軽に見るならAudacityが定番かな。ちゃんと分析したり、MLに入れるなら、torch.audioとかlibrosaみたいなライブラリでプログラムで作ることが多いよ。スペクトログラムはMLの入力によく使うけど、他の表現方法も研究されてるんだよね。frequenSeeを科学的に使う（ラベリングとか分析）のはいいアイデアだね。でも、今のツールに何が足りないのかが分からなくて。どんな機能を追加しようと思ってるの？" userName="enisberk" createdAt="2025-03-31T23:02:47" color="#45d325">}}

{{<matomeQuote body="どうやったら音源ダウンロードできる？ゲーム開発者とかアーティストにとって、めっちゃいいリソースになりそう。" userName="999900000999" createdAt="2025-04-01T14:54:37" color="">}}

{{<matomeQuote body="うちのラベル付きデータセット（EDANSA、特定の音イベントに注目してる）はここで公開してるよ：https://zenodo.org/records/6824272。<br>もっとサンプル増やしたバージョンも近いうちに公開する予定。<br>生の連続オーディオ録音も公開に向けて頑張ってる。最終的にはArctic Data Center (arcticdata.io)で公開する予定。もしよかったら、メールちょうだい（アドレスはプロフィールにあるはず）。公開されたら連絡するよ。" userName="enisberk" createdAt="2025-04-01T18:58:07" color="#785bff">}}

{{<matomeQuote body="どうやったらオーディオ検索できるんだろ？半年後くらいにまた来てみるわ。<br>ライセンスはどうなってる？パブリックドメイン？" userName="999900000999" createdAt="2025-04-01T19:33:40" color="">}}

{{<matomeQuote body="“Arctic Soundscapes Project 2019-2024”で検索できるよ。ライセンスは、資金提供の条件を満たすように調整中だけど、寛容なものになる予定。" userName="enisberk" createdAt="2025-04-01T19:48:17" color="">}}

{{<matomeQuote body="めっちゃ面白いね。卒論頑張って。僕のなんて全然面白くないや。" userName="ghoshbishakh" createdAt="2025-03-31T10:59:42" color="">}}

{{<matomeQuote body="ありがとう！嬉しいよ。君の仕事もすごく興味深いね、特に分散システム分野で。応援してるよ！" userName="enisberk" createdAt="2025-03-31T22:52:31" color="">}}

{{<matomeQuote body="たまにしか請求書送らない人（僕みたいな）のために、シンプルで無料の請求書ジェネレーターを作ってるんだ。WYSIWYGエディタみたいな感じで、状態はURLに保存されるから、どこに保存したか心配する必要はないよ。メールでリンク送ったなら、それがコピーになる。このプロジェクトは、外出中にスマホで請求書を作ろうとした時のイライラから生まれたんだ。既存のソリューションは、強制的に有料会員登録させられたり、インターフェースが使いづらかったりして、全部ひどいと思ったから。<br>HNのみんなからのフィードバックが聞きたいな。アライメントの問題がいくつかあるのは気づいてるから、今夜直すつもり。“PDF生成”ボタンも作るよ。今は、PDFが欲しいなら、印刷ダイアログで“PDFとして保存”して。" userName="taejavu" createdAt="2025-03-30T23:32:05" color="#785bff">}}

{{<matomeQuote body="自分用に似たようなものを作ったけど、ライブPDFプレビューとか、多言語（英語とポーランド語）でのPDFダウンロード、VAT税控除、複数の通貨に対応してるよ。<br>https://easyinvoicepdf.com/<br>オープンソースだよ。<br>https://github.com/VladSez/easy-invoice-pdf<br>フィードバックもらえると嬉しいな😊" userName="vldszn" createdAt="2025-03-31T02:10:11" color="#785bff">}}

{{<matomeQuote body="マジすごいっすね！この分野の既存のサービスより全然良くね！？カスタマイズのオプションもいくつかあって、時間があったら自分のやつにも実装したいっすわ。あと、使うのにアカウント登録必須じゃないの、マジで最高！" userName="taejavu" createdAt="2025-03-31T02:49:03" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="ありがとねー！" userName="vldszn" createdAt="2025-03-31T07:53:10" color="">}}

{{<matomeQuote body="一番重要なのは、エラーなく常に正しい数字であることだよね。あと、車の販売とバナナの箱詰めみたいに、複数のシーケンスを混在させたくない場合は、単一のツールを使いたいよね。修正や注記の追記も簡単にできると嬉しい。製品を紐づけて毎回入力しなくてもいいようにしたり、アドレス帳と連携できるのも便利。" userName="6510" createdAt="2025-03-31T09:13:00" color="#38d3d3">}}

{{<matomeQuote body="これ、マジで良いね！クライアントから返信が来たら使ってみようかな😉 自分のウェブサイトで自作しようとしたんだけど、他のプロジェクトとか仕事で全然進まなくて…" userName="ttw44" createdAt="2025-04-02T16:58:12" color="#38d3d3">}}

{{<matomeQuote body="国ごとに特化した仕様にする必要があると思う。国によっては、請求書に関する特定の要件があるからね。" userName="Havoc" createdAt="2025-03-31T11:29:09" color="#38d3d3">}}

{{<matomeQuote body="カスタムテンプレートを追加できれば、コミュニティが国ごとの要件に対応できるようになるかもね。" userName="joseda-hg" createdAt="2025-03-31T12:08:58" color="#ff5733">}}

{{<matomeQuote body="EUのe-invoicing標準CEN 16931について、リンクを貼っておくね。<br>https://ec.europa.eu/digital-building-blocks/sites/display/D...<br>これに対応したテンプレートを作るのがどれくらい簡単なのかは分からないけど。<br>ドイツではB2B取引で既に必須らしいよ[0]。<br>＞原則として、以下の形式がCEN 16931に準拠するみたい：”ZUGFeRD: ハイブリッド形式：埋め込みXMLファイル付きのヒューマンリーダブルPDF/A-3（構文”Cross-Industry Invoice” (CII)）”。”XRechnung: XMLファイル（構文”Cross-Industry Invoice” (CII)）”。”XRechnung: XMLファイル（”Universal Business Language” (UBL) 構文）”。<br>[0] https://www.bdo.global/en-gb/insights/tax/indirect-tax/germa..." userName="qwertox" createdAt="2025-03-31T13:59:50" color="#785bff">}}

{{<matomeQuote body="PDFの請求書をAIでXRechnungに変換してEN 16931に準拠させることもできるよ。例えば、https://www.invoice-converter.com/en" userName="raphig" createdAt="2025-03-31T17:41:16" color="#45d325">}}

{{<matomeQuote body="いいね！フリーランスの頃に使いたかったなー。セリフ体のフォント、マジで好き。全部セリフ体にしてほしいくらい。あと、昔Waveを使ってた時に、メモ欄がすごく便利だったんだよね（換算レートとか書いてた）。簡単に追加できると思うよ。" userName="colincooke" createdAt="2025-03-31T00:02:50" color="#785bff">}}

{{<matomeQuote body="フィードバックありがとう！メモ欄はマジで良いアイデアだね！" userName="taejavu" createdAt="2025-03-31T02:39:34" color="">}}

{{<matomeQuote body="便利でシンプルだね。このパターンは、生成する必要があるどんなテンプレート化されたドキュメントにも応用できるんじゃない？" userName="niraj-agarwal" createdAt="2025-03-31T00:13:51" color="#ff33a1">}}

{{<matomeQuote body="他の分野でもこのアプローチを検討できるといいね。近いうちに、左上の単語を”INVOICE”から”QUOTE”とか”RECEIPT”に変えられるようにするよ。請求書のいいところは、データ量が比較的少ないってこと。だから、URLに状態を保存するのは、あり得そうなアプローチなんだ（目の肥えたユーザーには嫌がられるかもしれないけど）。" userName="taejavu" createdAt="2025-03-31T02:46:25" color="">}}

{{<matomeQuote body="へー、面白いね。僕はhttps://simpleinvoices.ioを数年使ってて、マジで気に入ってるんだ。Stripeと連携できるし、設定も超簡単。頑張って！" userName="nodesocket" createdAt="2025-03-31T01:05:18" color="#45d325">}}

{{<matomeQuote body="パッと見はいい感じだけど、年に数回しか請求書を送らない僕には、月15ドルは高すぎるなー。もしhttps://bestfreeinvoice.comが人気出たら、有料プランを正当化するために機能拡張したいけど、基本的な機能（今あるやつ）は常に無料で、マジで役立つものにするつもりだよ。" userName="taejavu" createdAt="2025-03-31T02:43:32" color="#ff33a1">}}

{{<matomeQuote body="僕もsimpleinvoices.ioを数年使ってるよ。すごく良い。（確認したら、今年は10件だった）。" userName="hboon" createdAt="2025-03-31T01:36:08" color="#785bff">}}

{{<matomeQuote body="通貨の変更と控除（インドでは税引き前の金額から10%のTDSを控除する必要がある）のサポートを追加してほしいな。<br>全体的には、たまに請求書を作る人にとってはかなり良いソリューションだよ。" userName="atishaykumar" createdAt="2025-03-31T01:45:05" color="#45d325">}}

{{<matomeQuote body="通貨選択はロードマップにあるけど、控除の必要性は考えてなかったなー。アドバイスありがとう！" userName="taejavu" createdAt="2025-03-31T02:30:32" color="">}}

{{<matomeQuote body="いいね。URL短縮機能を組み込むことを検討してみて。" userName="Aspos" createdAt="2025-03-30T23:39:00" color="">}}

{{<matomeQuote body="URLが普段みんなが見慣れてるものより長いのはわかってるよ。現状で公開したのは、実際にみんなが長いURLを共有するかどうか興味があったからなんだ。<br>いつか短縮URLを追加したいけど、今は全部クライアントサイドで、永続性はないんだ（localStorage以外）。セキュリティの観点からは良い機能だと思う。" userName="taejavu" createdAt="2025-03-31T02:33:28" color="#45d325">}}

{{<matomeQuote body="短すぎると簡単にバレちゃうからねー。このアプリって今はステートレスかもだけど（まだ確認してないや）、もしそうならURL短縮機能を追加するとステートレスじゃなくなっちゃうよ。" userName="Cyphase" createdAt="2025-03-31T01:28:38" color="">}}

{{<matomeQuote body="ステートの文字列をzip圧縮するか、もっと良くするにはKVストレージに入れて10文字の文字列と交換するのはどう？" userName="Aspos" createdAt="2025-03-31T02:01:30" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="間違ってたら指摘してほしいんだけど、zip圧縮するとURLとして使えない形式になっちゃうんじゃない？今の状態は`lz-string`で圧縮されてURLエンコードされてるよ。一応ね。" userName="taejavu" createdAt="2025-03-31T02:35:49" color="#38d3d3">}}

{{<matomeQuote body="URLのクエリ文字列がSHA256とかかと思ったわ。" userName="nodesocket" createdAt="2025-03-31T01:07:00" color="">}}

{{<matomeQuote body="そうそう、`lz-string`で圧縮・エンコードされてるんだけど、見た目がヒドイのは自覚してるんだよねー。技術系の人が嫌がるかもって心配。でも最近のメッセージングアプリってURLをペーストしても、ドメイン部分だけ表示されるプレビューカードになることが多いんだよね。" userName="taejavu" createdAt="2025-03-31T02:39:13" color="">}}

{{<matomeQuote body="bestfreevoiceとか他の請求書ツールについてネガティブなことを言うつもりはないんだけど、開発者とかアーリーステージの起業家って請求書のこと分かってない気がするんだよね。<br>一番の誤解は、すべての国が請求書を使うわけじゃなくて、代わりに領収書を使う国もあるってこと。たとえばアメリカがそう。だからアメリカの開発者は請求書に慣れてないことが多いんだよね(`Stripe`の初期とか)。技術的には領収書と請求書に違いはないから、請求書を知らないなら、この投稿の/s/invoice/receiptを読み替えてみて。<br>請求書のポイントは、売り手と買い手の両方の台帳への不変のエントリとして機能すること。ほとんどの国（特にEU）では、B2B取引には請求書が法律で義務付けられていて、会計処理も義務付けられている。だから請求書が実用的であるためには、帳簿/会計に紐づいている必要があるんだ。スタンドアロンの請求書プロダクトは、後で全部台帳にインポートしなきゃいけないなら意味がないよね。<br>それから「デザイン」の罠。多くの請求書スタートアップが陥るやつ。請求書って変なもので、過去からの非常に非効率な遺物なんだ。請求書は買い手と売り手の間で交換されるほんの少しの取引データにすぎない。物理的な帳簿（紙の帳簿）の時代には紙の請求書は意味があったけど、今は全部デジタルで処理されてる。だから請求書は事実上、機械と機械のインターフェースなんだけど、あらゆるレガシーな理由で、PDFに包んで、人間が見るには素晴らしいデザインにしてる。でも機械が読むのは事実上不可能。<br>この状況を改善するための試みがいろいろなされている（OCRとか、最近ではAIを使ってPDF請求書からデータを抽出するとか）。PDF請求書を置き換える/補完するためのオープンな構造化データフォーマット（UBLなど）もあるけど、あらゆる政治的な理由やロビー活動によって、オープンスタンダードは最初から破滅に向かっている。会計ソフトウェアではたくさんのお金が動いていて、それらはすべてベンダーロックインに依存している。大手会計ソフトウェアベンダーは、UBLなどの採用を阻止する強いインセンティブを持っているし、確立された会計プロダクトのほとんどはクソだけど、簡単に移行できないから使い続けるしかない。<br>もしあなたがビジネスを経営または所有しているなら、帳簿をビジネスの資産として、非常に重要な資産として扱うこと。帳簿は会計ソフトウェアで管理されていて、それは通常、税務申告、人事管理、資産管理、請求書発行などの機能も備えた大規模なソフトウェアスイートの一部。ビジネス用語では、これはERPと呼ばれることが多いけど、ERPは単なる中央データベース、または「帳簿」だと考えてください。<br>会計ソフトウェアの選択は重要な決定。データのexportを許可し（非常に重要！）、APIを持ち（これも非常に重要！）、できればWebインターフェースを備えた会計ソフトウェアを選ぶこと。常に利用可能であるべきだから、オンプレミスソフトウェアはありえない。<br>起業家向け：自分で会計ソフトウェアを選んで、帳簿を「彼らの」システムに保持する外部の簿記係を雇わないように（会計士ロックイン）。会計士にソフトウェアを推奨させないこと。ソフトウェアベンダーから巨額のキックバックを受け取っている（ベンダーロックイン）。<br>すべての販売（PoS、請求書発行、Stripeのような決済連携など）は、帳簿に元帳エントリとして自動的に登録されるべきで、できれば請求書ドキュメントが添付されていること。ここで、帳簿を自分のシステムに保持している会計士がうまくいかない理由がわかる。処理のために請求書を定期的にメール（または靴箱）で送る必要がないようにしたいはずだ。帳簿はビジネスが所有し、自動化され（少なくとも売掛金側は）、常に最新であるべき。そして、監査や税務申告などのために会計士に帳簿へのアクセス権を与えることができる。ビジネスにとって、帳簿はビジネスの中央データベースであり、その他すべてはそれを取り巻くもの。自分で書こうとせずに、既存のソリューションと統合しながら、ベンダーロックインをできるだけ避けること。<br>ビジネスと会計ソフトウェアの統合は、ソフトウェア開発の継続的な一部だから、過小評価しないように。支払いを受け入れるのは大変だし、それが帳簿にきちんと登録されていることを確認するのは同じくらい大変。思っているよりもずっと時間がかかる（ほとんどの起業家はまったく考えていない）。ここに特効薬はない。<br>" userName="LeonM" createdAt="2025-03-31T09:33:43" color="#785bff">}}

{{<matomeQuote body="イタリアでは、これらの請求書に関する課題の多くは、全国的な標準化システムによってすでに解決されているんだよね。<br>すべての請求書（B2BでもB2Cでも、領収書を含む）は、政府が定義したXML形式で電子的に送信する必要がある。この請求書には、事前定義されたメタデータが含まれていて、発行者によってデジタル署名されている。準備ができたら、国の税務当局の中央システム（Sistema di Interscambio (SdI)と呼ばれる）に送信され、そこで検証および登録されてから、受信者に転送される。<br>このシステムは本質的にクリアリングハウスとして機能する。すべての請求書が同じ形式で処理され、検証可能に発行され、両端で自動的に記録されることを保証する。消費者(B2C)の場合、請求書は同じパイプラインを通過し、IRSウェブサイトの個人ポータルで利用できるようになる一方、販売者は便宜上、コピー（PDF）をメールで送信することもできる。<br>この集中化された機械可読なアプローチにより、他の場所で見られる断片化の多くが排除された。ベンダーロックインはなく、OCRもAIもPDFを解析する必要はない。共通のパイプラインを通過する署名付きXMLファイルだけ。完璧ではないけど、ルール（と形式）がインフラレベルで定義されていると、どれだけ物事がスムーズになるかを示している。" userName="nick88msn" createdAt="2025-03-31T10:40:57" color="#45d325">}}

{{<matomeQuote body="＞すべての請求書—B2BであろうとB2Cであろうと（領収書を含む）—は、政府が定義したXML形式を使用して電子的に送信する必要があります<br><br>じゃあ普遍的な標準じゃないんだね。ビジネスをするすべての国に対して異なるフォーマットを実装しなければならないことを想像してみて…<br>オランダでは、政府と取引したい場合、同様の（でも少し違うと思う）XML形式が必要になる。当初、ある企業が自分たちのクローズド仕様バージョンを政府の義務化された標準にすることに成功した。XML仕様を入手するにはパートナーになる必要があった（たぶん年間8000ユーロとか）。<br>幸いなことに、彼らは現在XKCD 927を実行していて、いくつかの新しい（今回はオープンな）標準を定義していて、それらをEN 16931に準拠する新しい仕様に統合することを目指している。EN 16931は、EUのe-invoicingの準拠標準。" userName="LeonM" createdAt="2025-03-31T18:26:37" color="#45d325">}}

{{<matomeQuote body="ニュージーランドでも、EN 16931に準拠したPeppol BIS 3.0を使用してeInvoicingを段階的に導入しているよ。" userName="mappu" createdAt="2025-04-02T06:56:40" color="#ff33a1">}}

{{<matomeQuote body="それはそれで正しいんだけど、ある程度の規模が想定されてるよね。<br>こういう基本的な請求書発行のニーズもたくさんあるんだよ。誰かに請求したり、仕事/プロジェクトの費用の見積もりとして請求書を発行するとかね。すべての人が、請求書から貸借対照表、損益計算書まで、ドルを追跡するような完全に統合されたソリューションに組み込む必要があるわけじゃないんだ。特にフリーランスで、たまに請求書を送る必要がある人にとっては大変だよ。スプレッドシートで管理してて、QuickBooksとかを使うほどでもない人もいるだろうし。そういう人に、サブスクリプション料金がかかるものを導入するのは時間の無駄だし、オーバースペックだよね。<br>僕が払ってる人たちのことを考えると、庭師も家政婦もテキストメッセージでいくら払うかを教えてくれるだけだよ。そしてZelleで支払う。彼らは少なくとも数十人の顧客を持っていて、みんなに同じようにやっていると思う。もし僕がビジネスを経営していたら、会計フローにAPをロードするために請求書を要求するかもしれないけど、彼らは僕のリクエストに応えるために自分のやり方を変えたくないだろうね。だから彼らは、テキストメッセージの情報を公式な請求書に変換するようなものを求めているかもしれない。<br>本当の問題は、誰もがこのサイドプロジェクト的なもので、世界のすべてのエッジケースを解決しようとしていることだと思う。Stripeのような大手もそう。それは間違った考え方。彼らはソリューションを提供しているから、それが自分のニーズに合っているかどうかを評価する必要がある。合わないなら、別のものを使う。もし自分の地域が完全に異なるものを義務付けているなら、別のものを使う。このプロジェクトは、それが何をするのか、どのように機能するのかを非常に透明にしているから、要件リストと比較するのに役立つはず。" userName="conductr" createdAt="2025-03-31T15:33:43" color="#38d3d3">}}

{{<matomeQuote body="最初の大きな誤解は、すべての国が請求書を使うわけじゃなくて、代わりに領収書を使う場合があるってことだね。たとえばアメリカがそうで、多くのUSのエンジニア（たとえば初期のStripe）は請求書の概念に馴染みがないんだ。技術的には領収書と請求書に違いはないから、請求書の概念に馴染みがなくても、この投稿を読むときは/s/請求書/領収書/って置き換えて考えるといいよ。<br><br>＞マジかよ。請求書って支払いの要求じゃん。領収書は支払いの証明だよね。請求書が領収書の代わりになることもあるけど（むしろ逆が多いか）、支払いがすぐに行われた場合だよね。将来の支払いのためになんらかの正式な支払い要求がない国なんてありえる？<br><br>会計の観点からも理解できないな。この区別がなかったら、売掛金と買掛金ってどういう意味になるんだ？区別がなかったら、どうやって仕訳帳の日付を記録するんだ？" userName="fauigerzigerk" createdAt="2025-03-31T11:47:45" color="">}}

{{<matomeQuote body="＞将来の支払いのためになんらかの正式な支払い要求がない国なんてありえる？<br><br>多くの国では、ベンダーが顧客の口座から引き落とす、つまり「プル」メカニズムを使ってるんだ。多くの国では、そのために小切手を使ってた（または使ってる）り、クレジットカードのような別の支払い方法を使ったりするんだ。この合意は契約に基づいてるはずだよ。大規模な取引には請求書を使うこともあるけど、法律で義務付けられてるわけじゃない。<br><br>昔、GoogleとかStripeとかは請求書を送ってこなかったのを覚えてるよ。たまに、メールで最小限の領収書メッセージが送られてくるくらいだった。これはEUの企業にとっては特に迷惑だったんだ。EUには請求書や領収書に関する最低限の要件があるからね。<br><br>今は変わったけどね。ほとんどの企業、USの企業も含めて、国際的な規制に準拠した請求書を提供するようになったよ。<br><br>PayPalは別だけどね。なぜか、まだ請求書を提供しなくても許されてるみたいだ。彼らのマーチャントポータルから毎月のアカウント概要をPDFでダウンロードする必要があって、そこに「この明細書は会計および税務関連の目的で領収書として使用できます」って書かれてるんだ。" userName="LeonM" createdAt="2025-03-31T18:46:59" color="">}}

{{<matomeQuote body="＞自分で会計ソフトを選べ。外部の会計士を雇って、彼らのシステムで帳簿を管理してもらう誘惑にかられるな（会計士による囲い込み）。<br><br>30年くらい前、俺は従業員3人の小さな会社で働いてたんだけど、Quickbooksを使ってて気に入ってたんだ。会計士がもっと「良い」システムに切り替えるように説得して、3ヶ月くらいの間、会社は自分たちがいくらお金を持ってるか全くわからなくなって、システムが期待どおりに動かないから、システムへの可視性を完全に失ったんだ。「もし何かおかしいと思ったら、システムのすべての画面を調べて、Postを押してたんだ。」結局、3ヶ月後、彼らは予想外に7万ドルの借金を抱えていることに気づいたんだ。これは家がそれくらいの値段だった35年前のことだよ。彼らは家にセカンド mortgageを設定する必要があった。最終的に、彼らは会計システムを理解し、立て直し、数年かけてセカンド mortgageを返済した。Y2Kが本当に助けになったよ。あの特需でね。" userName="linsomniac" createdAt="2025-03-31T12:27:42" color="#ff33a1">}}

{{<matomeQuote body="起業したばかりの人には、どんな会計ソフトがおすすめ？既存のソリューションと統合できる、セルフホスト型のオープンソースソリューションってある？<br><br>起業の旅を始めたばかりで、まだ銀行や会計ソフトを選んでないんだ。アドバイスが欲しいな。拠点はUKで、最初はUKでのみビジネスを行うつもりだよ。" userName="thomasstuttard" createdAt="2025-03-31T10:14:41" color="">}}

{{<matomeQuote body="OPじゃないけど、いくつかのオープンソースの選択肢があるよ。GNU cashはGUIのおかげで初心者には優しいね。俺はプレーンテキスト会計が好きで、特にbeancountが好きだ。<br><br>統合に関しては、GNU cashはQuickenのような様々な形式からインポートできるし、beancountには様々な銀行のインポーターのようなコミュニティからのプラグインがたくさんあるよ。どちらも請求書発行機能はないと思うけど、自分で統合するか、手動で記録することができるよ。<br><br>個人的には、自分の帳簿を管理する上で一番難しいのは、複式簿記を学ぶことだと思う。" userName="laleck" createdAt="2025-03-31T10:48:11" color="#38d3d3">}}

{{<matomeQuote body="GNU cashのオススメありがとう。調べてみるよ。複式簿記を学ぶのにおすすめのリソースってある？" userName="thomasstuttard" createdAt="2025-03-31T21:04:00" color="">}}

{{<matomeQuote body="銀行はStarling Bank、会計ソフトはFreeAgentがいいよ。個人の税金（self-assessment）、法人税、VAT、給与計算を処理してくれる。会計事務所が必要なら、Maslinsを強くおすすめするよ。彼らは料金の一部としてFreeAgentへのアクセスを提供してくれる。" userName="Nextgrid" createdAt="2025-03-31T10:46:49" color="">}}

{{<matomeQuote body="pure.md[1]を作ってるんだ。これを使うと、スクリプト、API、アプリ、エージェントなどが、markdown形式でwebコンテンツに確実にアクセスできるようになる。URLの前に`pure.md/`をつけるだけで、そのwebページのブロックされないmarkdownコンテンツを取得できるんだ。ボット検出を回避し、JavaScriptを多用するwebサイトをレンダリングし、HTML、PDF、画像などをpure markdownに変換できる。<br><br>pure.mdはLLMとwebコンテンツの間のグローバルなキャッシュレイヤーとして機能する。Cloudinaryが画像のCDNであるように、LLMのCDNのようなものだと考えてる。<br><br>[1]https://pure.md" userName="andrethegiant" createdAt="2025-03-30T22:26:41" color="#785bff">}}

{{<matomeQuote body="pure.md/pure.mdでの再帰的なリダイレクトが最高。" userName="shoebham" createdAt="2025-03-31T06:07:36" color="">}}

{{<matomeQuote body="おっ、イースターエッグ見つけたんだね！" userName="andrethegiant" createdAt="2025-03-31T16:58:39" color="">}}

{{<matomeQuote body="URLが抜けてるみたい？At: https://willadams.gitbook.io/design-into-3d/2d-drawing のリンク、https://mathcs.clarku.edu/~djoyce/java/elements/elements.htm... とかが「_Elements_ _:_ _Book I_ _:_ _Definition 1_」って表示されちゃってるよ。gitbookとかgithubの.mdソースがあるサイトなら、オリジナルを引っ張ってくるとかどう？" userName="WillAdams" createdAt="2025-03-31T13:04:29" color="">}}

{{<matomeQuote body="aタグのhrefは、情報量が増えないのにトークン長が長くなるからデフォルトで削除してるんだ。近いうちに、リクエストヘッダーでリンクを削除するかどうか設定できるようにするよ。_はイタリックのせいだよ。" userName="andrethegiant" createdAt="2025-03-31T16:01:17" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="クールなプロジェクトだね！<br>最近も話題になってたよ：https://news.ycombinator.com/item?id=43462894 (10 コメント)" userName="metadat" createdAt="2025-04-01T01:06:47" color="">}}

{{<matomeQuote body="共有ありがとう。JinaとTavilyで色々問題があったから、4月に同じようなの作ろうと思ってたんだけど、もう大変な部分は終わってるみたいだね！" userName="wild_egg" createdAt="2025-03-31T00:10:20" color="#ff33a1">}}

{{<matomeQuote body="ありがとね！まだ開発中だよ(^_−)−☆" userName="andrethegiant" createdAt="2025-03-31T01:44:29" color="">}}

{{<matomeQuote body="すごいアイデアだね、すぐ有料会員になるよ。今使ってるアプリで困ってた問題が解決できるから、自分で開発するのは躊躇してたんだ。" userName="wanderingbit" createdAt="2025-03-31T02:43:47" color="#ff33a1">}}

{{<matomeQuote body="どうもありがとう！" userName="andrethegiant" createdAt="2025-03-31T03:33:16" color="">}}

{{<matomeQuote body="すごいね。Cloudflareのturnstile setupがあるサイトをどうやって回避したの？" userName="hardlyfun" createdAt="2025-03-31T04:17:55" color="#ff5733">}}

{{<matomeQuote body="Flaresolverrじゃないかな。" userName="udev4096" createdAt="2025-03-31T05:22:15" color="">}}

{{<matomeQuote body="Common Crawlにフォールバックするってどうやるの？保持したりクエリしたりするコストがヤバくない？" userName="erekp" createdAt="2025-03-31T13:47:11" color="">}}

{{<matomeQuote body="AWS Athenaを使えば、他人の公開S3バケットの中身をクエリできるよ。読み取りごとに料金が発生するけど、クエリを工夫すれば安く済む。自分が実行するクエリは、1MBくらいのデータしかスキャンしないんだ。" userName="andrethegiant" createdAt="2025-03-31T15:57:28" color="#ff5733">}}

{{<matomeQuote body="たまたま見てたんだけど、クエリのコストが1セントくらいの例がここにあるよ：https://commoncrawl.org/blog/index-to-warc-files-and-urls-in..." userName="wfn" createdAt="2025-04-01T16:46:52" color="">}}

{{<matomeQuote body="https://pure.md/https://news.ycombinator.com/item?id=4353323..." userName="27theo" createdAt="2025-03-31T10:26:56" color="">}}

{{<matomeQuote body="モバイルでめっちゃ使える。不安定なウェブサイトとか、JavaScriptとか、ペイウォールを回避するのに役立つツールだね。" userName="sharpshadow" createdAt="2025-04-01T12:47:36" color="#45d325">}}

{{<matomeQuote body="PythonとNumPyだけで、PyTorchみたいな機械学習ライブラリをゼロから作ったんだ。Andrej KarpathyのMicrogradプロジェクトに触発されたんだよね。CNNとか、おもちゃのGPT-2も作れるようになった。数学的な数式とAPIの呼び出しのギャップを埋めたかった。ブログ記事も書いたよ。 https://github.com/workofart/ml-by-hand" userName="megadragon9" createdAt="2025-03-30T21:33:40" color="#ff33a1">}}

{{<matomeQuote body="FOSSのMTGにインスパイアされたデジタルカードゲームを作ってる。デジタルカードゲームのビジネスモデルはマジでエグい。特定のカードが欲しいとき、パックを買うしかない。レアカードだと、何十パック開けても出ないとかザラ。そういうのが嫌で作ってる。MITライセンスだから、フォークして売ることもできるよ。DjangoとGodotを使ってて、ゲームクライアントも自由に作れるようにしたい。" userName="999900000999" createdAt="2025-03-30T22:37:25" color="#38d3d3">}}

{{<matomeQuote body="AlteredとかNetrunnerに影響を受けたMTGの競合ゲームを作り始めた。最初はbashスクリプトでメタがどうなるか試して、カードの価値とか戦略のバランスを取ってたんだ。もしよかったら、ゲーム開発について話したいな。" userName="sentrysapper" createdAt="2025-04-02T12:51:43" color="#38d3d3">}}

{{<matomeQuote body="昔、Decipher（Star TrekとかStar WarsのTCGを作ってた会社）が、ゲームをプレイするためのウェブプラットフォームを展開してたんだけど、ビジネスモデルの割にメリットがなかった。お金を払ってデジタルカードを買っても、そこでしかプレイできないし、辞めたらカードは消えちゃうんだ。" userName="sircastor" createdAt="2025-04-01T14:17:25" color="">}}

{{<matomeQuote body="Mindbugって知ってる？[0] MTGに影響を受けた（MTGの作者の一人が共同制作者）カードゲームらしいよ。サクサク遊べるし、面白い決断を迫られる場面が多いんだって。<br>[0]：https://boardgamegeek.com/boardgame/345584/mindbug-first-con..." userName="tasuki" createdAt="2025-03-31T19:49:09" color="">}}

{{<matomeQuote body="買った！どうやって遊ぶの？" userName="bhu8" createdAt="2025-03-31T03:21:39" color="">}}

{{<matomeQuote body="完成まであと3ヶ月待って！<br>今はただのDjangoサーバーなんだ。自分でホスティングする必要があるけど（デモサーバーは立てるかも）、カードは自分で定義できるよ。curlコマンドだけで遊ぶこともできる。<br>いつかクールなエフェクト満載のクローズドソースのクライアントを作るかもしれないけど、今は考えてない。" userName="999900000999" createdAt="2025-03-31T04:14:35" color="">}}

{{<matomeQuote body="修士論文[1]は研究と開発のプロジェクトで、従来のRPGとコンピューターを完全に融合させる方法を探求したんだ。これが僕のライフワーク。<br>VTTは方向性が違うと思ってて[2]。GMがアナログでやってることを全部できるようにしたい。コンテンツの追加、ルール定義とかね。一番難しいのは、完全にハードコード化せずにゲームルールを組み込むことかな。Inform 7のルールブックシステムに触発されてる。<br>[1]：https://www.mxjn.me<br>[2]：ダイスと普通のコンピューター以外の機器が必要なものも違うと思う。VRとか、映像追跡ミニチュアとかね。" userName="maxwelljoslyn" createdAt="2025-03-30T23:48:50" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
