+++
date = '2025-03-26T00:00:00'
months = '2025/03'
draft = false
title = 'CSV形式への愛を語る！みんな大好き（？）CSVの魅力と落とし穴'
tags = ["CSV", "データ形式", "プログラミング", "ファイル形式", "データ分析"]
featureimage = 'thumbnails/orange_pink2.jpg'
+++

> CSV形式への愛を語る！みんな大好き（？）CSVの魅力と落とし穴

引用元：[https://news.ycombinator.com/item?id=43484382](https://news.ycombinator.com/item?id=43484382)

{{<matomeQuote body="昔Big4のコンサルでデータ分析してたんだけど、こういうのホント多かった。で、いつも思ってたのが、製品の値段とシリアライズの出来が反比例してるってこと。Postgresみたいな無料のデータベース？いつも完璧。<br>6桁もする複雑なe-discoveryシステム？クォートとかエスケープとか、\nと\rの違いも知らない人が書いてるんじゃないかってレベル。0xFFを区切り文字に使うとか、Windows-1252だと変なルーン文字に見えるから「データに入ってないはず」とか思ってそう。" userName="mjw_byrne" createdAt="2025-03-27T13:23:52" color="#ff5733">}}

{{<matomeQuote body="「エンタープライズソフトウェア」って、使う人が決めずに、使わない人が決めるソフトウェアのことだよね。それって結構的を射てると思う。" userName="recursive" createdAt="2025-03-27T19:36:45" color="">}}

{{<matomeQuote body="そうそう、うちもいつもオープンソースのツール（Linux、Postgres、Python、Goとか）を使いたい技術者と、PowerPointでかっこよく見える「エンタープライズ」プラットフォーム（PalantirとかIBM BigInsightsとか）を押し付けたい上層部との間で綱引きだったよ。エンタープライズプラットフォームをテストさせてもらうと、すぐに壊れるんだよね。しかも、意地悪な使い方じゃなくて、「UTF-8のBOMを正しく処理できるか試してみよう…あ、ダメだ」みたいな。" userName="mjw_byrne" createdAt="2025-03-28T11:55:21" color="#45d325">}}

{{<matomeQuote body="＞Big complex 6-figure e-discovery system? Apparently written by someone who has never heard of quoting…<br>「そういうシステムって、ある程度の規模になると、大手コンサルが受注して、利益と管理費でほとんど持ってっちゃうんだよね。<br>で、コーディングは一番安い人に丸投げするから、クォートとか知らない人が書くことになる。<br>しかも、そういう会社で成長したエンジニアは、すぐに給料のいい会社に転職しちゃうから、悪循環なんだよね。<br>（もちろん、すごいチームもあるんだけど、そういう人たちは炎上案件の火消しとか、大口顧客の対応に追われてる。普通の顧客は相手にされない）」" userName="ethbr1" createdAt="2025-03-27T14:00:23" color="#45d325">}}

{{<matomeQuote body="コンサルについてちょっとだけ。東欧のコンサルで働いたことがあるんだけど、品質に対する意識はクライアントよりずっと高かったよ。クライアントが時間単位で支払ってたから、コンサル会社はリファクタリングとか改善、テストに時間をかけるインセンティブがあったんだよね（クライアントからの反発もあったけど）。だから、コンサルがダメっていう意見には賛成できないな。結局はエンジニアとインセンティブ次第だと思う。" userName="deepsun" createdAt="2025-03-27T17:19:51" color="">}}

{{<matomeQuote body="どこのコンサルで働いてたの？<br>小さいところほどインセンティブがうまく働くと思うよ。<br>ある程度の規模を超えると、人件費の差額で稼ぐゲームになるからね。クライアントからXドルもらって、Yドルのリソースを投入して、利益はX-Y。Yを最小化して利益を最大化する。PwCとかIBM Global Servicesとかは、最高の人材を提供してるわけじゃない。（さっき言ったすごいチーム以外は）" userName="ethbr1" createdAt="2025-03-27T20:49:24" color="">}}

{{<matomeQuote body="概ね同意だけど、僕の場合は逆だったよ。僕の会社は1万人以上いたけど、クライアントは当時一番技術的に進んだ会社で、採用面接が難しいことで有名だった。僕の会社も、クライアントとの協業を始めたばかりだったから、クライアントが欲しがる人材を厳選してたんだ。クライアントも品質に満足してて、昇進争いとかしないで、重要なプロジェクトを維持してくれた。昇進争いがないと、コードの品質も上がるんだよね。" userName="deepsun" createdAt="2025-03-29T21:58:23" color="#ff5c5c">}}

{{<matomeQuote body="小数点に”,”を使う国に住んでみてよ。データのやり取りで問題が起きたり、間違いが隠れたりするんだよね。もっといい区切り文字はたくさんあったのに…フォーマットまで持ち込むなんて。" userName="raxxorraxor" createdAt="2025-03-27T13:59:11" color="">}}

{{<matomeQuote body="昔は.csvってセミコロン区切りのことだと思ってた時期があったな。セミコロン区切りのファイルしか見たことなかったし、それがどれだけ苦痛なのか知らなかった。" userName="Moru" createdAt="2025-03-27T14:11:58" color="">}}

{{<matomeQuote body="スペルは“semicolon”だから、ちょっと違う気がするなー。" userName="JadeNB" createdAt="2025-03-27T16:11:52" color="">}}

{{<matomeQuote body="CMYKってCyan、Magenta、Yellow、blacKのことだよねー。もちろん元々は“key”の意味だったけど、最近は見かけなくなったな。" userName="achierius" createdAt="2025-03-27T22:29:01" color="">}}

{{<matomeQuote body="Klarnaが「， 」区切りのファイルを送ってきたことがあったなー。コンマの後にスペースがない場合は小数点として読むんだって。ほとんどのCSVパーサーは複数文字の区切り文字を指定できなかったから、結局kronaとöreで別々のフィールドとして受け入れて、先頭のスペースを削除する必要があったんだよね。" userName="mrweasel" createdAt="2025-03-27T14:46:51" color="">}}

{{<matomeQuote body="Microsoftは結構やってたよね。Excelの多くの非英語版は、区切り文字としてセミコロンでCSVファイルを保存するし、通常のExcelファイルでも扱いが違ってたかも。BIスクリプトみたいな新しい言語でも、関数呼び出しのパラメータが「，」で区切られずに「；」が使われてたりするんだよね。ローカライズ版だけだけど。つまり、Officeスイートのロケール設定に応じてスクリプトを翻訳しないと、構文エラーだらけになるってこと。" userName="raxxorraxor" createdAt="2025-03-27T15:45:12" color="#ff33a1">}}

{{<matomeQuote body="多くの英語圏の言語では、「．」の代わりに「；」を使って文を終わらせるよね。多くのヨーロッパ言語は、「．」を使って文を終わらせるけど、Prolog（フランス）とかは引数を区切るのに「；」を使うんだ。" userName="oddmiral" createdAt="2025-03-28T04:39:38" color="">}}

{{<matomeQuote body="ASCIIにはもっと良い区切り文字があるのに、あんまり使われてないよね。28 File Separator、29 Group Separator、30 Record Separator、31 Unit Separatorとか。" userName="zaxomi" createdAt="2025-03-28T05:29:28" color="">}}

{{<matomeQuote body="TSVを使えば解決するよ。経験済み。" userName="Sami_Lehtinen" createdAt="2025-03-27T16:15:39" color="">}}

{{<matomeQuote body="＞通貨の値が“34 593，12 USD”みたいに整形された文字列で提供されることがあるよね。数値と通貨でカラムを分ける代わりにさ。これはCSVの問題じゃなくて、提供者のデータリテラシーの欠如の問題だけどね。" userName="danso" createdAt="2025-03-27T13:33:29" color="">}}

{{<matomeQuote body="Parquet／JSON／protobuf／XLSXを使って、数値を文字列として保存することもできるよね。CSVは単なるコンテナでしかないんだから。" userName="remram" createdAt="2025-03-27T14:41:10" color="">}}

{{<matomeQuote body="CSVってなぜかシリアライズ形式のPHPみたいなもんで、ろくでもない開発者とかプロジェクトを引き寄せるんだよね。" userName="ahoka" createdAt="2025-03-27T17:30:14" color="#ff33a1">}}

{{<matomeQuote body="わかるー。マジでCSV捨てたわ。今は業界標準のECMA-376とかISO/IEC 29500、つまり.xlsx使ってる。みんな.xlsxの作成も読み込みも問題ないみたい。.xlsxの唯一の問題は、Excel手動で使う時に数字と数値テキストがごっちゃになることくらい。機械同士の通信なら.xlsxマジ最強。" userName="imtringued" createdAt="2025-03-27T14:55:32" color="#38d3d3">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="誰かが手動でスプレッドシート使わないような単純なデータ交換でExcelファイル解析するとか、マジ無駄に複雑になるだけ。CSVの代わりなんていくらでもあるし。テキスト形式のまま、もっと幅広くサポートされてて、Excelよりデータの一貫性も保証されてるやつ。JSONとかXML、ProtoBufとかね。" userName="Gormo" createdAt="2025-03-27T18:16:01" color="#45d325">}}

{{<matomeQuote body="だって、みんなxlsxファイルを編集するGUIもう入ってるじゃん。" userName="eternauta3k" createdAt="2025-03-27T18:35:29" color="">}}

{{<matomeQuote body="これのことかな？<br>https://www.ietf.org/rfc/rfc4180.txt" userName="edoceo" createdAt="2025-03-27T14:59:04" color="">}}

{{<matomeQuote body="CSVマジ勘弁。使うならTSVとか、なんか別の区切り文字使うわ。" userName="pwenzel" createdAt="2025-03-27T14:27:05" color="">}}

{{<matomeQuote body="フィールドとレコードを分けるための文字コードがあればなー。そうすれば、クォートされたカンマとかクォートされたクォートとか気にしなくて済むのに。" userName="SoftTalker" createdAt="2025-03-27T16:17:21" color="">}}

{{<matomeQuote body="それって問題の解決になってなくね？問題の場所変えただけじゃん。もし0x1C - 0x1Fを含む文字列をカラムに保存したかったら、結局同じ状況に戻るし。CSVの人間の可読性とか手入力できるっていうメリットも失うし。解決策は厳格な仕様とエスケープ必須にすること。" userName="craftkiller" createdAt="2025-03-27T16:23:21" color="#38d3d3">}}

{{<matomeQuote body="テキストデータには向いてないよ。それらの値はカンマとか”みたいなテキスト文字じゃないし、意味は一つしかない。0x41が常に文字の“A”じゃないって言ってるようなもんじゃん。バイナリファイルならわかるけど、CSVは使われてないし。" userName="SoftTalker" createdAt="2025-03-27T16:26:59" color="#785bff">}}

{{<matomeQuote body="バイナリデータがCSVに入らないっていうのは議論の余地あり。変なことする人もいるし。フォーマットの堅牢性の一部は乱用に対応すること。<br>それは置いといて、もし制御文字がテキストじゃなかったら、人間の可読性と書きやすさを犠牲にする。それならバイナリフォーマット使えばいいじゃん。" userName="mjw_byrne" createdAt="2025-03-27T16:48:29" color="">}}

{{<matomeQuote body="可読性を失う上に、(疑似)CSVをネストする能力も捨てることになるの？カンマ区切り文字ならCSVドキュメント全体を1つのカラムに入れられるけど、0x1C-0x1F区切り文字で、カラム内でテキスト有効なutf-8以外禁止にしたらもう無理じゃん。改悪。" userName="craftkiller" createdAt="2025-03-27T16:46:14" color="#38d3d3">}}

{{<matomeQuote body="特殊文字をエスケープできない理由はないよね。" userName="thayne" createdAt="2025-03-28T00:00:35" color="">}}

{{<matomeQuote body="制御文字がテキストデータに入り込むことはよくあることだよ。何百万行もあれば必ず起こるし、たった1つのせいでエクスポートが全部ダメになるのは避けたいじゃん？だからテキストデータでも考慮する必要があるんだよね。" userName="Hackbraten" createdAt="2025-03-27T16:39:40" color="#45d325">}}

{{<matomeQuote body="データに絶対に入り込まない区切り文字なんてないんだって。エスケープがマジで最強の方法だよ。" userName="mjw_byrne" createdAt="2025-03-27T16:22:17" color="#785bff">}}

{{<matomeQuote body="制御文字(ASCII < 32)はCR/LF/TAB以外禁止にできるよね。それ以外に使われてるデータってバイナリデータくらいしか知らないし。CSVに画像を埋め込むなんて聞いたことないし。" userName="saulpw" createdAt="2025-03-27T17:16:18" color="">}}

{{<matomeQuote body="制御文字を区切り文字として使うために禁止すると、CSV自体がバイナリ形式になっちゃうんだよね。つまりCSVをネストできなくなる。<br>“みんなそうしない”とか言うのは意味なくて、現実にネストされたCSVを見たことあるし。<br>C言語のNULL終端文字列と同じで、PostgreSQLがUTF-8をちゃんとサポートできてないのも、C言語で0が“特別”だから。" userName="mjw_byrne" createdAt="2025-03-27T18:40:18" color="#38d3d3">}}

{{<matomeQuote body="制御文字をエスケープする方法を用意しとくべき。" userName="thayne" createdAt="2025-03-28T00:44:49" color="">}}

{{<matomeQuote body="そうそう。僕が言いたかったのは、制御文字はデータに使えないからエスケープする必要がないってこと。エスケープするなら、コンマみたいな普通の文字を区切り文字にできるし、読み書きしやすいから良いよね。" userName="mjw_byrne" createdAt="2025-03-28T11:51:31" color="#785bff">}}

{{<matomeQuote body="でもコンマの方がエスケープする必要が出てくる可能性が高いじゃん。" userName="thayne" createdAt="2025-03-28T18:03:42" color="">}}

{{<matomeQuote body="CSVはデータ交換フォーマット。" userName="j45" createdAt="2025-03-27T18:27:22" color="">}}

{{<matomeQuote body="でも、CSVはマジでクソだよ。標準がないからね。[1]送り手と受け手がCSVをどう解釈するかでよく揉めるんだ。<br>[1]: RFC 4180のことは知ってるよ。でも実際は守られてないことが多い。" userName="thayne" createdAt="2025-03-28T01:39:15" color="#ff5733">}}

{{<matomeQuote body="この記事、せめてCSVの最大の問題点に触れるべきじゃね？CSVって「仕様がない」事実上のフォーマット群で、単一のものじゃないんだよね（歴史的に成長してきたものの一例）。<br>これに触れてないってことは、偏ってるって言わざるを得ないなー（まあラブレターだし、愛は盲目って言うし…）。XMLやJSONと違って、整形式とか有効なCSVファイルの文法を定義するドキュメントがないんだよ。それに、いろんな種類があって、ある種類のリーダーが別の種類を読めないとか互換性がないんだよね。引用符とかエスケープ、UTF-8のサポートとかが特に問題で、1行目にカラムヘッダーの名前があるか、データがあるかもプログラムで判断できないし（推測する必要があるけど、機械じゃ解決できない曖昧さがある）。<br>SGML、XML、JSONを使ってきた経験から言うと、プログラム的にはJSONが一番使いやすいけど、型の欠如からSGMLほど広くは使えないかな。SGMLは航空会社とか人文科学の研究者が技術ドキュメントとか歴史的文書の注釈付けに使ってて、開発者の負担は大きいけど、適してると思う。全部は無理だよね。<br>XMLはSGMLよりシンプルで、適用範囲も広いし、ソフトウェアのサポートも充実してる（ほとんどFOSS）。でも、乱用されてる面もある（EclipseとかApache UIMA）。でも、フォーマットのせいじゃないよね。優秀な開発者は長所と短所を理解して、何を使うか判断するけど、イデオロギーに走る人もいるよね。<br>（誰かWindows INIファイル形式へのラブレターを書くのを待ってるよ…）。" userName="jll29" createdAt="2025-03-27T03:04:18" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="公平に言って、JSONにも曖昧さがあるよね。同じキーが複数あったらどう処理するの？キーの順番に意味はあるの？<br>jqはレコードセパレーターで区切られたJSONとか、改行で区切られたJSONみたいな、便利なpseudo-JSON形式をサポートしてる。これらは明らかに仕様外だけど、便利だから使ってるし、.jsonファイルにパイプすることもあるよ。<br>あと、IEEE NaN/Infinityとか、生のバイト配列をエンコードするには、独自のやり方しかないよね。" userName="sramsay64" createdAt="2025-03-27T03:15:45" color="#45d325">}}

{{<matomeQuote body="JSON linesはJSONじゃないよ。JSONをベースにしてるだけ。.jsonl拡張子を使えば明確になるよ。<br>https://jsonlines.org/" userName="d0mine" createdAt="2025-03-27T04:08:01" color="#ff33a1">}}

{{<matomeQuote body="＞同じキーが複数あったらどう処理するの？<br>JSONの文法的には問題ないよ。セマンティクスは実装次第。" userName="thiht" createdAt="2025-03-27T09:02:09" color="#ff5733">}}

{{<matomeQuote body="面白いことに、他の人はこのスレッドで反対の意見を言ってるね。" userName="sbergot" createdAt="2025-03-27T09:53:44" color="">}}

{{<matomeQuote body="彼らは間違ってる。<br>ECMA-404[1]のセクション6から引用するよ。<br>＞JSON構文は、名前として使用される文字列に制限を設けず、名前文字列が一意であることを要求せず、名前と値のペアの順序に重要性を割り当てません。<br>これは曖昧じゃない。<br>さらに正当化すると：<br>＞意味のあるデータ交換には、JSON構文の特定の使用に付随するセマンティクスに関するプロデューサーとコンシューマー間の合意が必要です。JSONが提供するのは、そのようなセマンティクスを付加できる構文フレームワークです<br>＞JSONは数字のセマンティクスについては不可知論者です。どのプログラミング言語でも、さまざまな容量と補数、固定または浮動、バイナリまたは10進数のさまざまな数値型が存在する可能性があります。<br>＞他の標準がこの標準を参照し、JSON構文に厳密に準拠しながら、セマンティクスの解釈とさまざまなエンコードの詳細に対する制限を課すことが予想されます。このような標準は、特定の動作を要求する場合があります。JSON自体は動作を指定しません。<br>JSONは単なる文法の仕様であると理解すれば、すべて理にかなってる。<br>[1]: https://ecma-international.org/wp-content/uploads/ECMA-404_2..." userName="thiht" createdAt="2025-03-27T10:14:23" color="#ff5c5c">}}

{{<matomeQuote body="＞名前と値のペアの順序に重要性を割り当てません。<br>これって古いんじゃない？JavaScriptのObjectにパースするとき、順番は保持されると思うよ。（Objectはキーの順序がちゃんと定義されてる。頼っちゃダメだけど…）。" userName="kevincox" createdAt="2025-03-27T12:28:37" color="">}}

{{<matomeQuote body="JSではそうかもね（知らないけど）。でも、それはJSONの仕様とは関係ないよ。他の実装では違う決定をするかもしれないし。" userName="thiht" createdAt="2025-03-27T12:50:09" color="#38d3d3">}}

{{<matomeQuote body="Internet JSON (RRC 7493)では、オブジェクトが重複した名前のメンバーを持つことを禁じてる。" userName="yrro" createdAt="2025-03-27T09:25:45" color="">}}

{{<matomeQuote body="書いてある通り：<br>I-JSON（Internet JSONの略）は、相互運用性を最大化し、ソフトウェアが予測可能な結果で正常に処理できるという確信を高めるように設計されたJSONの制限付きプロファイルです。<br>つまり、JSONじゃなくて、制限されたバージョンってことだね。<br>この制限の使用は一般的なのかな？I-JSONなんて初めて聞いたよ。" userName="_flux" createdAt="2025-03-27T12:13:50" color="#ff5c5c">}}

{{<matomeQuote body="それに64bit整数の問題もあるよね。JSは整数がないから、実質52bit整数だけど。" userName="diekhans" createdAt="2025-03-27T03:18:27" color="">}}

{{<matomeQuote body="ほとんどの優秀なパーサーには、整数や任意精度小数としてパースするオプションがあるよ。" userName="dtech" createdAt="2025-03-27T05:43:49" color="#ff33a1">}}

{{<matomeQuote body="だよねー。ってことは、Javascriptには良いパーサーがないってことじゃん。" userName="VMG" createdAt="2025-03-27T10:02:40" color="">}}

{{<matomeQuote body="`JSON.parse`は`reviver`パラメーターでそれできるよ。元の数字の文字列にアクセスして`BigInt`とか好きな型にできるし。だから“良いパーサー”の基準に合うんじゃない。" userName="exogen" createdAt="2025-03-27T10:36:40" color="#ff5733">}}

{{<matomeQuote body="残念ながら`reviver`パラメーターは最近FFとNodeで使えるようになっただけで、Safariにはないんだよね。<br>自分でJSONパーサー書くのは難しくないけど、そもそも必要になるのが微妙。" userName="whizzter" createdAt="2025-03-27T13:44:41" color="">}}

{{<matomeQuote body="＞誰もCSVを所有していない。<br>＞CSVには本当の仕様がない（議論のあるRFC 4180のことは知ってるよ）。<br>＞みんな暗黙的に守ることに同意しているルールの集合にすぎない。<br>＞CSVは、これからもずっと、オープンで自由な集合的なアイデアであり続ける。<br>って書いてある。" userName="realitysballs" createdAt="2025-03-27T11:20:22" color="#ff33a1">}}

{{<matomeQuote body="Windows INIファイル形式へのラブレターを誰か書いてくれないかな。<br>あれ、結構恋しいんだよね。設定がソフトと一緒に保存されて、レジストリに散らばらないのが良かった。<br>フォーマットも洗練されてたし。<br>色々な言語でINIのエンコード/書き込み/読み込みライブラリを書いて、長年使ってたよ。" userName="rkagerer" createdAt="2025-03-27T04:52:28" color="#785bff">}}

{{<matomeQuote body="YAMLは.iniの精神的な後継者って感じがする。シンプルで人間が読み書きしやすいっていう理想を共有してるから。" userName="xp84" createdAt="2025-03-27T04:59:08" color="#38d3d3">}}

{{<matomeQuote body="YAMLが読みやすい？ありえないでしょ。同じことをするのに色々な方法があるし、ネストされた構造は訓練されてない人には分かりにくいし（リストって何？ネストって何？）。<br>それに、大きなファイルでのインデントは問題だし。<br>YAMLはシンプル？XMLより仕様が大きいし…。数字や文字列のパースも曖昧だし。<br>もう勘弁してくれ。" userName="consp" createdAt="2025-03-27T08:23:48" color="">}}

{{<matomeQuote body="YAMLなんてNoだよ。文字列として。" userName="HelloNurse" createdAt="2025-03-27T08:54:26" color="">}}

{{<matomeQuote body="YAML 1.2ってもう16年も経つんだぜ。車も運転できる歳じゃん。ノルウェー問題が解決されてからたった16年ってこと。" userName="Ygg2" createdAt="2025-03-27T09:53:03" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="CSVが「シンプル」だって言う人は、Excelがエクスポートするフォーマットのこと言ってるんだろ。しかもアメリカ版のExcelしか使ったことないんでしょ。それならCSVはまあまあ良いかもね。" userName="otabdeveloper4" createdAt="2025-03-27T07:09:56" color="">}}

{{<matomeQuote body="JSONをCSVより高く評価してる理由がマジわからん。<br>＞XMLやJSONと違って、CSVにはwell-formedとかvalidなファイルの文法を定義するドキュメントがない。<br>RFC 4180ってのがあるじゃん。<br>＞いろんな種類があって、ある種類用のリーダーが別の種類を読めないとか互換性がない。<br>「仕様から逸脱した種類が多い」ってのはJSONにも言えることじゃん。<br>＞1行目がヘッダーかどうかプログラムで判断できない。<br>JSONにもあるある。<br>＞引用符とかエスケープ、UTF-8サポートが問題。<br>JSONも同じくらい問題あると思うけど。" userName="lelanthran" createdAt="2025-03-27T05:49:26" color="#38d3d3">}}

{{<matomeQuote body="CSVファイルを現場でたくさん扱ったことある？イヤミじゃなくて、あなたの言ってることと俺の経験は全然違うんだよね。<br>JSONのフォーマットはほとんど一つしかない。ヘッダーは各行にあるし、UTF8は問題になったことないし、引用符とかエスケープもちゃんと定義されてるし守られてる。<br>CSVファイルはいろんな区切り文字、引用符があって、複数行を受け入れないパーサーもあるし、ファイルのソートでmulti lineが崩れたり、行末とかエンコードも色々。ASCIIレコードセパレーター使っても意味なかったし。<br>しかも問題が起きてもエラーが出ないこともある。" userName="IanCal" createdAt="2025-03-27T06:28:08" color="#ff5c5c">}}

{{<matomeQuote body="JSONについて。<br>＞ヘッダーは各行にある<br>これって昔の「スペースとネットワークコスト節約」の名残かもだけど、非効率に感じる。データセット全体を読まないとスキーマがわからないし。<br>UTF8は問題ないって言うけど、Excelが原因のことが多いんだよね。ExcelはBOMがないとWin1252で文字コードを認識しちゃう。<br>＞CSVファイルはいろんな区切り文字がある<br>だからCharacter Separated Value filesって呼んでる。" userName="dspillett" createdAt="2025-03-27T11:19:31" color="#ff5733">}}

{{<matomeQuote body="CSVは良くないよね。スペースはうざいけど、圧縮すれば問題ない（zstdが良いよ）。JSONLは便利だけど、{data: [...hundred megs of lines]}みたいなのはパーサーが困る。parquetが好きだけど、クライアントから送られてくることは期待できない。" userName="IanCal" createdAt="2025-03-27T11:29:40" color="">}}

{{<matomeQuote body="CSVは簡単すぎるから、みんな適当に選んでミスってるのかも。JSONは難しいから、自作する人が少なくて、ライブラリを使うから間違いが少ないのかもね。CSVがJSONの盾になってるのかも。CSVがなかったら、壊れたJSON実装が増えると思う。" userName="SkyBelow" createdAt="2025-03-27T17:59:31" color="#785bff">}}

{{<matomeQuote body="CSVは問題ないって言うけど、実際、複数のシステム間のデータ交換フォーマットはCSVだよ。決済システム、銀行間データ交換、ERPシステム、CRMシステム、請求システムとか。Excelファイルをアップロードしたりダウンロードしたりする人も多いし。<br>JSONの配列でもCSVと同じことができるけど、RFC1480を使ったCSVよりも問題が少ないとは限らない。" userName="lelanthran" createdAt="2025-03-27T07:19:25" color="">}}

{{<matomeQuote body="＞but in practice I see very few problems arising with using CSV<br>いやいや、そんなことないって。金融機関からCSVファイル処理してるけど、40%くらいの確率で壊れてるよ。原因はCSVフォーマットじゃなくて、経験の浅い開発者がエクスポートコードを書いてるからだと思う。JSONの方がマシだけど、日付とかの問題は解決しない。XMLも使えるけど複雑すぎるからJSONが一番妥協できる。" userName="fauigerzigerk" createdAt="2025-03-27T10:12:18" color="#785bff">}}

{{<matomeQuote body="＞And many inexperienced developers seem to think that they can generate CSV without using a library because the format is supposedly so simple.<br>ライブラリなしでCSV作れない？<br>def excel_csv_of(rows):<br>  for row in rows:<br>    for i, field in enumerate(row):<br>      if i:<br>        yield '，'<br>      yield '＂'<br>      for c in field:<br>        yield '＂＂' if c == '＂' else c<br>      yield '＂'<br>    yield '\n'<br><br>これ動くか試してないけど、どこがダメ？" userName="kragen" createdAt="2025-03-27T17:12:49" color="#ff5733">}}

{{<matomeQuote body="実際問題、RFC 4180に準拠したCSVなんて見たことないっす。ほとんどの場合、マジでめちゃくちゃで、エスケープ処理とかも全然できてなくて、めっちゃ特殊な対応が必要だったりするんだよねー。SAPはマジで最悪。まともなデータ取り出せたことないし、全部手作りのパーサー作んなきゃダメだったわ。" userName="flanked-evergl" createdAt="2025-03-27T07:48:23" color="#785bff">}}

{{<matomeQuote body="＞JSONのフォーマットの種類はそんなに多くないって言うけどさー<br>独立したバリエーションだけでもこんなにあるじゃんねー。<br>・末尾のカンマありかなしか<br>・コメントありかなしか<br>・日付のシリアライズのルールが色々ある<br>・浮動小数点数と整数を区別するルールが違う<br>・キーの名前が重複しててもOKかどうか<br>・文字列のエスケープの仕方が違う（例：”\n” vs ”\x0a”）<br>JSONのバリエーションはマジでたくさんあるって。" userName="recursive" createdAt="2025-03-27T19:45:07" color="">}}

{{<matomeQuote body="＞末尾のカンマありかなしか<br>JSONの仕様書ではカンマは認められてないよ。JSONのスーパーセットではOKなものもあるけどね。<br>＞コメントありかなしか<br>JSONの仕様書ではコメントは認められてない。JSONのスーパーセットではOKだけど。<br>＞日付のシリアライズのルールが色々ある<br>JSONの仕様書には日付のことは何も書いてない。それはアプリのスキーマ次第。<br>＞浮動小数点数と整数を区別するルールが違う<br>これは主にプログラミング言語での数値の扱い方の違いが原因。JSONが一番良いとは言わないけど、複数の言語で使われるファイル形式なら、数値の表現方法の違いは問題になるよ。少なくとも、CSVと違って、数値と文字列の区別はちゃんと定義されてる。<br>＞キーの名前が重複しててもOKかどうか<br>仕様書的にはOKだけど、キーの意味は実装によって違う。<br>＞文字列のエスケープの仕方が違う（例：”\n” vs ”\x0a”）<br>どっちも同じ意味として解釈されるはず。少なくとも仕様書的にはね。シリアライザの実装の話で、言語が違うわけじゃない。" userName="thayne" createdAt="2025-03-28T04:11:35" color="#38d3d3">}}

{{<matomeQuote body="RFC 4180に準拠したCSVパーサーとシリアライザーも同じように信頼できるよね。" userName="recursive" createdAt="2025-03-28T16:42:09" color="">}}

{{<matomeQuote body="大文字のIに何の問題があるのさ？" userName="gpvos" createdAt="2025-03-27T07:36:57" color="">}}

{{<matomeQuote body="大文字のIのバイトは、変なファイル形式（slykとか？）の開始バイトと同じなんだよね。Excelは何年も前から（もし直ってなかったら）、これがCSVじゃないって判断する理由にしてて、slykとして解析しちゃうんだって！で、slykファイルが壊れてるって驚くんだよ！" userName="IanCal" createdAt="2025-03-27T09:05:37" color="#785bff">}}

{{<matomeQuote body="それってCSVの問題じゃなくて、Excelの問題ってことじゃない？" userName="boogheta" createdAt="2025-03-27T09:24:15" color="">}}

{{<matomeQuote body="まあ実際、CSVはExcelがどう扱うかで決まるよね。Excelが標準に準拠してないから、昔から動いてるファイルをExcelが拒否したら大騒ぎになるだろうし。" userName="pasc1878" createdAt="2025-03-27T11:09:12" color="#38d3d3">}}

{{<matomeQuote body="CSVはXMLみたいに文法とか標準化されてないけど、JSONよりはスキーマがあると思う。データの破損とか一貫性の問題はあるかもしれないけど、暗黙のスキーマがあるんだよね。すべての行は正確にn個のフィールドを持ってて、最初の行はフィールド名を含んでるかもしれない。<br>JSON APIでオプションのフィールドがあるってのは、試行錯誤で見つけるしかないし、CSVと違って、APIのオーナーが直してくれるバグだとは思われないことが多い。CSVでは、”データがない”っていうのはnullじゃなくて空文字列なんだよね。フィールドがないのは許されないから。そこが良い。<br>あと、文字列連結ができるプログラミング言語なら、自分でCSVエンコーダーとかデコーダーを簡単に書けるのも良いよね。ETLとかデバッグでめっちゃ役に立つ。ちゃんとしたCSVはRDBMSのテーブルにそのまま対応するし。データベースへのインポートがうまくいかなくても、インポーターを自分で書くのも簡単だし。" userName="cess11" createdAt="2025-03-27T08:31:42" color="#785bff">}}

{{<matomeQuote body="Windows INIファイル形式への愛を語る人が現れるのを待ってる…<br>まあ、普通に使えるけどね。TOMLが使えるならそっちの方が良いけど、簡単なアプリなら十分使える。PgBouncerはまだINIを使ってるけど、設定ファイルの解析に失敗した場合、パスワードとかDSN文字列を含む可能性のある行をログに記録するのを発見したせいで、ちょっと嫌な気分になる。" userName="sgarland" createdAt="2025-03-27T13:47:21" color="">}}

{{<matomeQuote body="CSVってマジエレガントだけど、致命的な欠点があるんだよねー。引用符がね、”非局所的”に影響しちゃうんだわ。バイト1個のクォートのミスで、バイト100万個先のカンマの意味が変わるってヤバくない？これのせいで、CSVの処理を並列化するのがマジ無理ゲーだし、データがちょっと壊れただけでファイル全体が読めなくなったりするんだよねー。だから最近は、もっとシンプルなデータ形式にしてる。カンマとか改行とか\を全部\-でエスケープするみたいな。CSVと同じくらい簡単なのに、さっき言ったみたいな問題が起きないから。" userName="mjw_byrne" createdAt="2025-03-26T17:36:42" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
