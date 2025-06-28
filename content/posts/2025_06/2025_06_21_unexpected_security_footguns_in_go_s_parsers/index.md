+++
date = '2025-06-21T00:00:00'
months = '2025/06'
draft = false
title = 'Goのパーサー見落としがちなセキュリティ上の危険'
tags = ["Go", "セキュリティ", "プログラミング", "API", "JSON"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> Goのパーサー見落としがちなセキュリティ上の危険

引用元：[https://news.ycombinator.com/item?id=44308953](https://news.ycombinator.com/item?id=44308953)




{{<matomeQuote body="Goのパーサー問題ってDTOをビジネスロジックで使い回したり、API間で共有したりする時に起きる話？セキュリティのためにunmarshallしたくないフィールドがあるDTOなんて考えたことなかったな。Goは「DRYじゃなくDO REPEAT YOURSELFしろ！」なのに変な感じ。<br>余談だけど、JS（TypeScriptでも）はこれが避けられなくてイライラする。スプレッド構文が悪さを増してるね。DTOとビジネスオブジェクトを分けるとか、スプレッドを使わないとかすればいいけど。（もしかしたら…はlintエラーにすべきかもね）" userName="bravesoul2" createdAt="2025/06/22 04:04:01" color="">}}




{{<matomeQuote body="TypeScriptでは避けられないってことは全くないよ。アプリの構造次第だけど、今どきはデータの境界でzodとかを使うのが普通だよ。注意は必要だけど（zodの.strictとか）、絶対避けられないわけじゃないってば。" userName="IceDane" createdAt="2025/06/22 09:40:27" color="#785bff">}}




{{<matomeQuote body="はっきり言うべきだったわ。避けられるけど、チェックする仕組みをいっぱい足さないと無理なんだよね。言語そのものは助けてくれないの。Goとかだと、structにフィールドfooがなかったらランタイムにもない。でもJSだとあるかも。それを防ぐにはライブラリが必要。結局、毎回fetchの時に誰かがzodを使うかどうかに頼ってるだけじゃん。" userName="bravesoul2" createdAt="2025/06/22 11:04:40" color="#38d3d3">}}




{{<matomeQuote body="OpenAPIでもできるよ。" userName="paulddraper" createdAt="2025/06/22 15:28:45" color="">}}




{{<matomeQuote body="DTOはOOPからきてて、Javaはその代表選手だよ。でもあちこちで見かけるってば。https://codewithstyle.info/typescript-dto/" userName="paulddraper" createdAt="2025/06/22 15:27:32" color="#ff5733">}}




{{<matomeQuote body="1. Javaは最初からOOで作られたの。ポインタ演算なし、全部クラスにカプセル化とかね。<br>2. C++にはちょっと変なOO機能があるよ--friendsとか多重継承とか。<br>3. 一番大事なのは、Javaは自動メモリ管理でC++よりずっと簡単ってこと。" userName="paulddraper" createdAt="2025/06/23 16:15:17" color="">}}




{{<matomeQuote body="気をつけなきゃいけないのは、もしDisallowUnknownFieldsを使うと、APIの互換性のある変更を扱うのがめちゃくちゃ難しくなるってことだよ--これって普通だし、たいてい良いパターンなんだ。" userName="glenjamin" createdAt="2025/06/21 13:18:25" color="#ff33a1">}}




{{<matomeQuote body="よく言われることだけど、最近は追加フィールドが無視されるのが実はアンチパターンじゃないかと思い始めてるんだ。フィールドが違うのに同じとみなされたり、LLMがツール入力で hallucinate したのに無視されたりして、エッジケースで微妙に間違った挙動になるのを何度も見てきたよ。パースが正確で、変更があれば必ず新しいバージョンになるAPIを作ってみたい気もするな。難しくないと思うけど、応答のダウングレードとか古いバージョンの非推奨化のツールが必要かもね。" userName="georgelyon" createdAt="2025/06/22 00:26:04" color="#785bff">}}




{{<matomeQuote body="便利で労力削減になるんだから、当然セキュリティとは根本的に相反するよね。全部トレードオフだよ。" userName="yencabulator" createdAt="2025/06/22 03:38:57" color="">}}




{{<matomeQuote body="クライアント書いてるなら問題かもね。サーバー書いてるなら、一度有効だった入力は永遠に有効にすべきってルールがあると思うから、フィールドは絶対に消さないんだ。DisallowUnknownFieldsの主な利点は、クライアントが間違った、あるいは無駄なものを送ったって分かりやすくなることだよ。" userName="physicles" createdAt="2025/06/22 02:09:51" color="">}}




{{<matomeQuote body="いや、一度有効だった入力も、非推奨期間を過ぎたら拒否できるよ。本当に意味があるのは、インターフェース（というかシリアライズするもの全部）をバージョン管理することだね。バージョン指定子は、メッセージ全体をパースしなくても簡単にアクセスできると良い（エンドポイントのURLを<br>/api/v1<br>/api/v2<br>とかってバージョンにするのが簡単）。しばらくは2つ（かそれ以上）のバージョンをサポートして、最終的に問題がある古いバージョンは捨てるんだ。推測する必要もなく、未知のフィールドは常に拒否できるよ。" userName="nine_k" createdAt="2025/06/22 07:37:46" color="#45d325">}}




{{<matomeQuote body="APIが最初からバージョン管理を中心に設計されてたら、これも簡単にできるんだけどね。大抵はそうじゃなくて、たくさんのボイラープレートとか重複が必要で、結局全部v1に突っ込まれちゃうんだ。特にルーティングのフォーマットが決まってるフレームワークだと、そういうケースが多いよ。" userName="ljm" createdAt="2025/06/22 11:21:05" color="">}}




{{<matomeQuote body="どれもすごく面白かったけど、あの polyglot json/yaml/xml ペイロードは本当にびっくり！Goのデフォルト XML パーサーが前後のゴミを受け付けるなんて知らなかったよ。JSONはもっと単純なフォーマットだと思ってたけど、現実世界は違うってことかな。「重複キーがあったらどうするか」みたいな、一見無害に見える条件に関する決定にも、長い尾を引く結果があるのは興味深いね。" userName="anitil" createdAt="2025/06/20 01:03:27" color="#ff5733">}}




{{<matomeQuote body="Pythonの JSON パーサーを壊す脱線だけど、これ5年動いてるんだ。ドキュメントには無効な部分をパースすると RecursionError になるなんて書いてない。 JSONDecodeError とか UnicodeDecodeError を指定してるんだよ。（オフがデフォルトのキーへの RecursionError 参照はあるけど、オフでもこれが起きる…）。スクリプトは sys.getrecursionlimit() - 4 個の’[’を生成して Python に食わせる。期待される DecodeError じゃなくて RecursionError で落ちて、当然メモリキャッシュを荒らすんだ。" userName="shakna" createdAt="2025/06/22 07:52:53" color="#ff5733">}}




{{<matomeQuote body="＜https://github.com/python/cpython/issues/135835＞ として報告済みだよ。" userName="jwilk" createdAt="2025/06/23 08:46:13" color="">}}




{{<matomeQuote body="これ、5年前に報告したんだけど、CPython は問題視しなかったんだ。MemoryError と同じように、何か RecursionError を出してもドキュメントなしで許されるってね。’驚くような’挙動はどんな API でも’臭い’だと思ってるから、自分は同意しないけど、彼らのプロジェクトだしね。" userName="shakna" createdAt="2025/06/23 10:19:13" color="#ff5733">}}




{{<matomeQuote body="これだから良いものは手に入らないんだよな。" userName="anitil" createdAt="2025/06/23 00:14:07" color="">}}




{{<matomeQuote body="＞ JSONのパースは簡単だと思ってたけど、現実世界は違うみたいだね。「Parsing JSON Is a Minefield (2018)」という記事もあって、これに関する2024年6月の議論（56コメント）はここだよ。<br>https://news.ycombinator.com/item?id=40555431<br>他にも検索結果があるよ。<br>et al https://hn.algolia.com/?query=parsing%20json%20is%20a%20mine..." userName="mdaniel" createdAt="2025/06/22 16:54:48" color="#45d325">}}




{{<matomeQuote body="攻撃シナリオ2の件だけど、セキュアな設計ならクライアントからの元データを認証サービスにそのまま渡す理由がわからないな。これは「見落としがちな危険」というより、ベストプラクティスが破られてるだけじゃない？<br>ロジックは「Parse, don’t validate」[0]であるべきで、その後でパースしたデータを使うんだよ。<br>[0]: https://hn.algolia.com/?q=https%3A%2F%2Flexi-lambda.github.i..." userName="asimops" createdAt="2025/06/21 13:09:43" color="#45d325">}}




{{<matomeQuote body="これを見てみて。<br>https://bsky.app/profile/filippo.abyssdomain.expert/post/3le...<br>これは暗号における署名ラッピング攻撃の話だけど、今回の件にも当てはまるよ。" userName="securesaml" createdAt="2025/06/21 14:43:22" color="">}}




{{<matomeQuote body="＞ サービス間で一貫性を保つ。複数のサービスで入力を処理する場合、常に同じパーサーを使うか、上記のようなstrictJSONParse関数などの追加の検証レイヤーを実装して、一貫したパース動作を確保する。<br>または「エントリーゲート」サービスを作って、リクエストの検証、承認だけでなく、確実に有効な形式に再エンコードするようにすればいいんじゃない？<br>「攻撃シナリオ2」のAuthService/ProxyServiceの例だと、AuthServiceは単純な「yes/no」ではなく、適切に再シリアライズされたリクエストを返すんだ。例えば、AuthServiceが「UserAction」と「AdminAction」というフィールドを含むリクエストを受け取り、「UserAction」を許可する場合、応答として「UserAction」フィールドは含むけど「AdminAction」フィールドは含まないようなリクエストオブジェクトを返すんだよ。サービスがそのフィールドを無視して、応答にコピーしなかったからね。" userName="Joker_vD" createdAt="2025/06/22 16:01:33" color="#45d325">}}




{{<matomeQuote body="著者はとても分かりやすく書いてくれてるね。素晴らしいよ。他の技術記事もこうあるべきだね。<br>それにしても、一つの文字列がXML, JSON, そしてYAMLとしてパースされうるなんて、本当に驚きだ。" userName="piinbinary" createdAt="2025/06/21 16:07:36" color="">}}




{{<matomeQuote body="そもそも「ユーザー作成」リクエストのDTOに「IsAdmin」フィールドがあるのは何で？ 例を見ると、データモデルの不適切な再利用をしてるみたいだね。<br>こうする方が良くない？<br>type CreateUserRequest struct {<br>Username string<br>Password string<br>}<br>type UserView struct {<br>Username string<br>IsAdmin boolean<br>}<br>みたいにね。<br>DBの行と1対1でマップするモデルを一つだけ持つ必要はないんだよ。これはどの言語でも同じことだね。" userName="octo888" createdAt="2025/06/21 10:35:11" color="#785bff">}}




{{<matomeQuote body="全くその通りだね。これはランタイムやメタファーの欠陥じゃないよ。ここでのバグは、アプリがプライベートなデータを公開APIに晒していることなんだ。これは実装の選択に関係ない間違いだよ。RESTfulインターフェースでもCGIスクリプトでも同じへまはできるんだ。<br>せいぜい、シンプルなシリアライゼーションライブラリ（Goのは確かに最高の一つだけど）が、そういう設計で「データをそのまま送る」という誘惑をより強くする、と主張するなら、目を細めまくれば「見落としがちな危険」と呼べるかもしれないね。<br>でも、見出しの残りは完全にナンセンスだよ。これは「Go」や「パーサー」の話じゃない。全く違うね。" userName="ajross" createdAt="2025/06/21 13:28:58" color="#38d3d3">}}




{{<matomeQuote body="え？ Goの標準ライブラリにあるパーサーについての記事だよ。" userName="tln" createdAt="2025/06/21 13:37:14" color="">}}




{{<matomeQuote body="＞ DBの行と1対1でマップするモデルを一つだけ持つ必要はないんだよ。これはどの言語でも同じことだね<br>一つの理由は、データのコピーを頻繁に避けるためだよ。これは効率の観点だけでなく、シンプルさの観点からも言ってるんだ。データを構造体に機械的に押し込むライブラリがあるのに、その構造体からデータを取り出して別の構造体に押し込むなら、そのライブラリを使う意味は何？ データ移動のコードはどっちにしろ書くことになるじゃないか。<br>私の仕事では、このような傾向を常に見かけるよ。非常に狭い範囲の異なる構造体がたくさんあって、それが何らかのライブラリと連携して、そしてそれらの構造体間でコピーするための大量のサポートコードがあるんだ。結局、データの実際に役立つ作業はほとんどしないんだよ。私は一般的に、奇妙な「構造体詰め込み」ライブラリとの連携が少ない、よりファットな構造体の方が幸せになれると思うね。" userName="delusional" createdAt="2025/06/21 10:55:37" color="">}}




{{<matomeQuote body="「パーサー」とは、非構造化入力（通常はテキスト）を、プログラミング言語のランタイムをよりよく反映した構造化出力に変換するソフトウェアの一部だよ。「パーサーにおけるセキュリティバグ」とは、通常、ソフトウェアに不正、未文書化、または予期しない動作を引き起こす入力の存在として解釈される。<br>この記事には、パーサーやパーサーのバグのようなものについて何も書かれていないね。<br>この記事が気に入らないのは、パーサーを囲むユーザー向けAPIのセマンティクスが「間違いを犯しやすい」ということだと私は推測するよ。それはせいぜいAPI設計に関する記事だね。でもそれは退屈で根拠に乏しく、クリックを稼げないから、彼らはGoのパーサーが安全でないと思わせたいんだろう。" userName="ajross" createdAt="2025/06/21 13:43:56" color="#ff33a1">}}




{{<matomeQuote body="記事 パーサー 何もない。記事 バグ 何もない。記事 主張 何もない。<br>記事 タイトル footguns。タイトル bugs 違う。<br>footgun 非直感 振る舞い 誤用 簡単。" userName="wavemode" createdAt="2025/06/21 14:21:19" color="">}}




{{<matomeQuote body="記事 主張 何もない そう？<br>記事 タイトル Go parsers footguns セキュリティ Unexpected。<br>記事 footgun 何もない。悪い 設計。" userName="dimgl" createdAt="2025/06/21 15:03:30" color="">}}




{{<matomeQuote body="タイトル Go parsers セキュリティ 示唆 明確。<br>記事 本文 parsers 全くない。Go 関係 薄い。<br>意図的 clickbait。あなた 知る。私 知る。皆 知る。<br>議論 pitfall automatic serialization trust boundaries する？<br>Go flame する？ソース 良い 見つける。<br>記事 山 違う。" userName="ajross" createdAt="2025/06/21 17:44:18" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="記事 示す。internal model API 直接 公開 セキュリティ footgun。<br>私 見た サイト hack。secrets 誤って 公開 例。<br>API 公開 internal models refactor 難しい 例。<br>layer separation なし maintain 難しい。セキュリティ 問題 多。<br>skip writing lines extra boilerplate model map DTOs。<br>layer separation 欠如 長期 問題。start 時 overengineering 違う。" userName="kgeist" createdAt="2025/06/21 12:42:56" color="#785bff">}}




{{<matomeQuote body="Go JSON parser case-insensitive key handling。<br>XML parser malleability。<br>classic 例 differential-prone behavior。<br>記事 ultimate point。<br>parser 定義 役立つ。parser recognizer。<br>recognizers 違い exploit 可能。<br>bug 必要 なし。difference 必要。<br>footgun 理由。" userName="woodruffw" createdAt="2025/06/21 15:29:29" color="#ff5c5c">}}




{{<matomeQuote body="私 dayjob 見る。different narrow structs library 統合。supporting code copy structs TON。<br>問題 それ 解決？<br>entire internal world outside expose？<br>different views same entities critical。<br>PII public endpoints return easy。internal process 必要。" userName="masklinn" createdAt="2025/06/21 11:03:09" color="">}}




{{<matomeQuote body="layer separation 欠如 長期 問題。start 時 overengineering 違う。私 同意。<br>strong layering interfaces 信じる。しかし struct annotation based parsing 信じない。<br>typically DTOs around code pass 違う。<br>take struct。code poke places actual data structures。<br>specification input structure struct 存在 違う。parsing code consequence 存在。<br>internet driven assume everybody novice。real shame。" userName="delusional" createdAt="2025/06/21 13:05:41" color="#ff5733">}}




{{<matomeQuote body="Go JSON parser case-insensitive key handling。<br>explicit decision convenience。<br>Go struct fields Capitalized export。JSON lower case convention follow tendency。" userName="yencabulator" createdAt="2025/06/22 04:14:25" color="">}}




{{<matomeQuote body="Sorry。English not native language。<br>not mean you novice。<br>take struct。immediately code poke appropriate places actual data structures。<br>specification input structure struct 存在 違う。parsing code consequence 存在。<br>define inputs separately internal data storage。違う。<br>specification input structure struct 存在 違う。parsing code consequence 存在。<br>example give？" userName="kgeist" createdAt="2025/06/21 13:16:51" color="">}}




{{<matomeQuote body="convenient 良い idea 違う！<br>not what Go other parsers do rest post。" userName="woodruffw" createdAt="2025/06/22 13:43:56" color="">}}




{{<matomeQuote body="「内部全体を外部に晒す」って話はしてないんだ。内部データを晒さないために構造体を使う必要なんてないよ。JSONオブジェクトを作る時に、特定のフィールドをフォーマットしないコードを書くだけでいいんだ。そのために新しいデータレイアウトは要らないんだよ。" userName="delusional" createdAt="2025/06/21 13:07:41" color="#ff33a1">}}




{{<matomeQuote body="Goのことは知らないけど、Javaや.NET界隈じゃMapStructみたいなライブラリでこの問題は簡単に解決できるよ。20個フィールドがあるモデルから3つだけ取り出すとか、ちょこっとしたコードで済むんだ。<br>fieldsの名前が合ってれば全部やってくれる。新しい「view」を追加するのも、クラス作ってmapperに1行足すだけ。データのコピーに19行も書かなくていいんだ。<br>ネストしたやつとかnullも扱えるし、reflectionじゃなくてcodegenだから手書きと同じパフォーマンスで、コードも読みやすい。<br>https://mapstruct.org<br>Go開発者は「こんな複雑なのいらない」って言うけど、これこそ自業自発的な問題じゃない？探せば解決策あるかもよ。" userName="homebrewer" createdAt="2025/06/21 12:40:50" color="#ff5c5c">}}




{{<matomeQuote body="例を出すね。JavaのJacksonライブラリは両方のモデルに対応してる。よく見るのはjackson-databindで、クラス定義してフィールドにアノテーションつけてJSONとマッピングする。これはGoとかRustのSerDeに似てるね。このモデルだと、核となる構造体とは別にクラスを宣言するのは超合理的だと思う。<br>もう一つのモデルはJackson Tree Modelって呼ばれてて、Json Objectの表現をそのまま受け取るんだ。そこからフィールドを取って、それがまたオブジェクトだったり配列だったりする。コンパイラやってる人ならASTみたいなもの。<br>Tree Modelなら、クライアントからの生JSONを受け取って、自分で必要なフィールドを取り出すことになる。<br>こうすると、アプリケーション固有のパースが一回で済むし、その場で関連するエラーもいっぱい出せるんだ。Tree Modelは明らかに非効率だけど、効率的に実装する方法もあるよ。" userName="delusional" createdAt="2025/06/21 17:10:59" color="#ff33a1">}}




{{<matomeQuote body="標準ライブラリの他のパーサーはgobとencoding/xmlだね。gobはGo専用フォーマットだからフィールド名のconvention mismatchは起きない。encoding/xmlはJSONみたいに「形が同じ構造体へ変換」って感じじゃなくて、struct tagがXPathみたいなクエリ言語っぽい使い方なんだ。<br>実際のコードだと<br>type Person struct {<br>  FirstName string   `xml:”name＞first”`<br>  LastName  string   `xml:”name＞last”`<br>}<br>みたいな使い方をする。一方でJSONは、「email”: ”jdoe@example.com”, ”name”: ”John Doe”}みたいなのを、ノイズなくパースしたいって明確な願望があったみたいだね。" userName="yencabulator" createdAt="2025/06/22 15:19:02" color="#ff5733">}}




{{<matomeQuote body="うん、それは悪いパターンだね。かなりの数のプロダクションコードで見ることになるだろうな。" userName="liampulles" createdAt="2025/06/21 13:18:18" color="">}}




{{<matomeQuote body="DB行に1:1でマップするモデルを1つだけ持つ必要はないって意見には同意だよ。これはどの言語でも同じ。でも、たくさんのDTOを作るのは面倒だし、俺たち開発者は怠け者だからね。単一の「User」型があちこちで使われてるのを見るのは超一般的。これもUser関連の関数をあらゆるコンテキストで再利用できるようにする（つまり手っ取り早くて怠惰な）アプローチなんだ。" userName="WhyNotHugo" createdAt="2025/06/23 09:47:31" color="">}}




{{<matomeQuote body="GoだとJSONをmapにmarshalできるから、手動でフィールドを抽出することもできるよ。" userName="kgeist" createdAt="2025/06/21 20:54:23" color="">}}




{{<matomeQuote body="「Transfer ObjectsはStorage Objectsではない」っていうFieldingのREST論文からのコンセプトは、RESTの現在の意味にとって重要なんだ。" userName="matthew16550" createdAt="2025/06/21 19:47:25" color="">}}




{{<matomeQuote body="俺は反対だな。JSONキーの大文字・小文字を区別できるようにしたことと、公開されているstruct memberを全部デフォルトでシリアライズするようにしたことは、悪い設計判断だよ。これらの決定は、簡単にセキュアじゃないシステムを生み出す可能性がある。" userName="ioasuncvinvaer" createdAt="2025/06/21 18:14:28" color="#45d325">}}




{{<matomeQuote body="君と俺は違う記事を読んだみたいだね。例えば、JSONキーの大文字・小文字を区別しないことについて、「俺たちの意見では、これはGoのJSONパーサーの最も重要な落とし穴だ。なぜならJavaScript、Python、Rust、Ruby、Java、そして俺たちがテストした他の全てのパーサーと異なるからだ。」って記事は言ってるよ。これがGoに関することじゃないって主張するのは難しいだろうね。誤解しないで、俺もGoは他の人と同じくらい大好きだけど、この記事はGo固有のいくつかのシリアライズに関する問題を間違いなく浮き彫りにしている。" userName="CactusRocket" createdAt="2025/06/21 19:40:33" color="#ff33a1">}}




{{<matomeQuote body="記事がCVEに直接リンクしてるんだから、このフットガン問題は十分証明されてるってことだよ。" userName="mplanchard" createdAt="2025/06/21 15:10:14" color="#45d325">}}




{{<matomeQuote body="ほら見ろ、やっぱりGoの話だよ。オプトアウトのアンマーシャリングにしたのはいいけど、それも脆弱らしいな。逆に、Railsのstrong paramsみたいにオプトインが良いんだって。" userName="x0x0" createdAt="2025/06/21 19:33:08" color="#ff33a1">}}




{{<matomeQuote body="記事のタイトルはクリックベイトじゃないと思うな。一つの例じゃなく、他のも見てよ。Goのパーサーには色々なフットガンがあるのがわかるって。これはGoだけの問題じゃなく、他の言語でもあるんだけど、注目すべき点だよ。この記事はセキュリティとの関連性をしっかり示してると思うね。" userName="woodruffw" createdAt="2025/06/21 19:08:40" color="">}}




{{<matomeQuote body="まったくだね。ドメイン層でデータ型を正確にモデル化して、その上にAPI層を乗せるのがいいんだよ。セキュリティの問題はパーシングライブラリじゃなくて、アーキテクチャ設計の失敗なんだ。" userName="sfvisser" createdAt="2025/06/21 14:10:19" color="#ff5733">}}




{{<matomeQuote body="encoding/xmlみたいな例外を除けば、それはGoのパーサーの限界なんだ。すごく緩くて、XMLとして正しいか検証しないんだよ。XMLの断片に対するクエリ言語みたいなものだと考えた方がいいかも。" userName="yencabulator" createdAt="2025/06/22 04:12:50" color="#ff33a1">}}




{{<matomeQuote body="こういう問題（パーサー差分）があるから、encoding/xmlを使ったGoのSAML実装なんて信じちゃダメなんだ。あれは元々そういう用途じゃないし。だから俺はSAMLを自分で書いたんだよ。（まあ、そもそもSAMLなんて使うなよって話だけどね）" userName="tptacek" createdAt="2025/06/21 17:08:42" color="#38d3d3">}}




{{<matomeQuote body="問題はGoのパーサーそのものじゃなくて、検証レイヤーと処理レイヤーが違う入力データを使ってることなんだ［1］。俺たちはgosaml2とか他のGoのSAMLライブラリにパッチを当てて、認証済みのバイト列だけを処理するようにしたんだ（元のXMLドキュメントじゃなくて）。パッチはここだよ：<br>https://github.com/russellhaering/goxmldsig/commit/e1c8a5b89...<br>https://github.com/russellhaering/gosaml2/commit/99574489327...<br>君が自分で書いたSAMLとXML署名、興味あるな。［1］：https://bsky.app/profile/filippo.abyssdomain.expert/post/3le..." userName="securesaml" createdAt="2025/06/21 18:04:52" color="#38d3d3">}}




{{<matomeQuote body="こういう問題は避けやすいけど、プロトコルバッファの良さがようやくわかった気がするよ。どの言語でも、シリアライズ・デシリアライズの挙動が一貫してるってのは安心できるからね。" userName="aintnolove" createdAt="2025/06/21 12:31:48" color="#38d3d3">}}




{{<matomeQuote body="そうだと嬉しいんだけど、残念ながら違うんだよ :-) パーシングっていうより、言語そのものの違いに関係してるんだ。だって、C++の数値とJavaの数値は違うし、PythonともJavaScriptとも違うだろ。文字列も同じだよ。" userName="chubot" createdAt="2025/06/21 12:58:33" color="">}}




{{<matomeQuote body="protobuf のライブラリってさ、プログラム言語が違っても型を合わせるために、たとえばプラットフォームに依存しない 64bit 整数とか、常に UTF-8 の文字列型を強制するイメージなんだけど、実際はどうなんだろうね？ あんまり protobuf 使ったことないから分からないんだ。" userName="CactusRocket" createdAt="2025/06/21 16:51:43" color="">}}




{{<matomeQuote body="なんでそう思うの？ それって protobuf やパーシングより、プログラミング言語そのものの問題じゃん。<br> protobuf には符号付きも符号なし整数もあるけど、 Java は符号なし整数ないし、 Python は任意精度だし、 JavaScript は昔は double しかなくて、整数は正確に 53bit までしか表せなかったんだ。今は arbitrary size な整数もあるけど、 protobuf のライブラリがそれを使ってるかどうかも分からないし。<br> これだけじゃないよ、言語ごとに全然違うんだってば。 OCaml は 31bit か 63bit 整数だった気がする。<br> https://protobuf.dev/programming-guides/encoding/＃int-types<br> で、文字列も全部の言語で違う。大体 8bit、 16bit、 32bit のコード単位の３つが主流かな。<br> Go と Rust は 8bit 単位が好きだし、 Java と JavaScript は 16bit 単位、 Python や C/C++ は 32bit 単位（コードポイント）だよ。" userName="chubot" createdAt="2025/06/21 17:48:46" color="#ff5c5c">}}




{{<matomeQuote body="なんか説明が悪かったみたい。 バイトとか配列さえあれば、その上に unsigned integer とか 8bit 文字列、 UTF-8 文字列、 UCS-2 とか、何でも自分で実装できるんだよ。 ネイティブ型じゃないから遅いとか、メモリレイアウトが変になるだろうけど、不可能じゃないの。<br> まあ、 JavaScript みたいに整数すらないレベルで機能制限されてる言語なら、完全にサポートするのは無理だろうけどね。" userName="CactusRocket" createdAt="2025/06/21 18:04:44" color="">}}




{{<matomeQuote body="残念だけど、それじゃ問題は解決しないで、ただ先送りしてるだけだよ。<br> 好きな言語で protobuf のジェネレーターを書いてみることをお勧めするな。 C++ からかけ離れてるほど、難しい決断をしなきゃいけないって分かるはずだよ。<br> そのやり方でやってみると、 Go とかのイディオマティックなコードと連携する時に“税金”（コスト）を感じるだろうし、そしたら多分逆の決断をするだろうね。<br> “機能制限されてる”って話だけど、 protobuf の API 設計の議論って、大体こんな感じなんだよね。 特定の言語のユーザーが他の言語のユーザーの視点を想像できないっていう。<br> たとえば、符号付きか符号なしかが世の中の決まりなのか、それとも単なる実装の詳細なのか、とかね。<br> あと、 C/C++ より表現力が豊かなのも問題なんだ −− 例えば、 Python のイディオマティックなコードから見ると、 protobuf のデータモデルも問題を引き起こすんだよ。<br> C/C++ の中でも、 C++ 03 とスマートポインターのある C++ 11 みたいに、複数の“方言”があるでしょ（将来もっと増えるだろうけど）。 こういうスタイルが、 protobuf の v1 と v2 の API に対応してるんだ。<br> （俺は protobuf の v1 と v2 を何年も使ったし、 protobuf の v3 Python API の設計レビューもしたよ）<br> 要するに、 protobuf は魔法じゃないってこと。コード生成と組み合わされた別のパーシング形式で、いくつかの技術的な問題は解決するけど、全部じゃない。 パーシングとかシリアライズに関する議論もなくならないよ！" userName="chubot" createdAt="2025/06/21 20:44:07" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="“一貫したシリアライズ/デシリアライズ体験が保証される”って言うけどさ、 protobuf の実装ってそんなにたくさんある？ C ライブラリとか proto コンパイラをラップしてるのがいくつあるの？ 一貫性って、下にある単一の文化（ monoculture ）からきてるだけかもしれないよ。まあ、それは結局「 protobuf は YAML じゃないし、 JSON じゃない」っていう無限ループになるけどさ。<br> 話がそれちゃったけど、これも全部、 pure Python のデシリアライザー/ディセクターがなかったから、自分で実装したっていう単純な理由からなんだよね。" userName="m3047" createdAt="2025/06/22 16:22:45" color="">}}




{{<matomeQuote body="ここで似たようなメリットを得るには、 RPC スタイルの JSON API を OpenAPI spec に書いて、そこから Go の struct とかルートハンドラーを生成するってやり方でもいいと思うな。俺は Go のプロジェクトだと大体そうしてるよ。" userName="liampulles" createdAt="2025/06/21 13:41:25" color="">}}




{{<matomeQuote body="でもさ、この記事は厳密にはパーサーのバグについてってわけじゃないから、データフォーマットを変えても、そこで説明されてる問題のほとんどからは救われないと思うな。" userName="nottorp" createdAt="2025/06/22 07:55:23" color="">}}




{{<matomeQuote body="Go プログラマーじゃない俺から見ると、表面上はフィールドのメタデータに文字列（構造体タグ）を使うのって、 Rust のマクロ（コンパイル時にメタデータを解析）とか Java のアノテーション（ランタイムに処理されるけど、少なくともオプションを分解するために文字列を解析する必要はない）と比べると、かなり後退してるように見えるんだよね。<br> accidental omitempty とか − が、実際に問題を起こさないとしても、その変さの良い例だと思うよ。" userName="e_y_" createdAt="2025/06/21 08:44:42" color="">}}




{{<matomeQuote body=".NET プログラマーとして、メタデータの“stringly typed”な性質にはゾッとするけど、 Go の選択にはずっと困惑してるんだ。<br> だから、 .NET では、君が言う Java みたいに、属性を使ってるんだ。例えば JsonPropertyName(“username”) とか JsonIgnore とかね。<br> これはシンプルで分かりやすいんだ。 JsonPropertyName 属性は上書き用で、クラス全体の命名ポリシーも設定できるんだ。 camelCase がデフォルトで、 kebab-case、 snake_case なんかも代替のデフォルトとしてあるんだ。<br> C＃/.NET はもちろん、 public なプロパティがあるっていう利点があって、これらはデフォルトでシリアライズされるんだ。 private なプロパティはされないから、公開したくないものをうっかり公開しちゃう可能性は低いんだよね。<br> これに対して Go のアプローチは、 Python とよく似ていて、大文字/小文字の慣習で private か public か決めるんでしょ。（間違ってたら訂正してね）<br> 最初の例もまだ混乱するんだよね。 IsAdmin がユーザーから来るなら、それはデシリアライズしたいだろうし、そうじゃないなら DTO に入れるべきじゃないんだ。<br> デシリアライズはそこでちょっとした“おとり”（ red-herring ）だよ。 「このユーザーは管理者を作る権限がある？」っていう検証ステップがあるべきなんだ。<br> ユーザー入力から直接プロパティを使って更新されるユーザーのクラスがあるっていう考え方は、俺には変に感じるけど、俺は“エンタープライズプログラマー”として、全ての間にもっとレイヤーを置きたがるだけだって思われるかもね。" userName="xnorswap" createdAt="2025/06/21 12:06:46" color="#ff33a1">}}




{{<matomeQuote body="Go で大文字/小文字で public か private か決めるのを“convention”（慣習）って呼ぶのは誤解を招くと思うよ。<br> Python だと obj._field って書けば _field にアクセスできるんだ。それは強制されてなくて、ユーザーに「触るな」っていう注意書きみたいなもんなんだ。<br> でも Go だと、 obj.field はコンパイルエラーになる。小文字で始まるフィールドはマジで private なんだよ。これは強制されるんだ。<br> だから、それは真のプライベートフィールドだけど、ちょっと…ユニークな構文だって考えた方がいいと思うよ。" userName="hmry" createdAt="2025/06/21 13:06:06" color="#38d3d3">}}




{{<matomeQuote body="GoはPythonと違って名前の大小で公開/非公開が決まるらしいね（俺が間違ってたら教えてくれ）。Goは可視性をケーシングに紐付けてて、非公開フィールドはシリアライズしない、公開フィールドだけだってさ。Pythonには可視性って概念自体ないんだ。慣習として`_`付きの属性にはアクセスしないことになってるけど、止められはしないんだよ。" userName="masklinn" createdAt="2025/06/21 13:44:03" color="#ff5c5c">}}




{{<matomeQuote body="30758への返信だぜ。`_`付きの属性にアクセスしないっていう慣習だけど、ちゃんとしたPythonプロジェクトならリンターか型チェッカーを最低一つは使うはずで、それで簡単に強制できるんだよ。" userName="maleldil" createdAt="2025/06/21 17:45:14" color="#45d325">}}




{{<matomeQuote body="これって変なだけじゃなくて、危ないやり方だぜ。フィールドが増えるにつれて検証を漏らしやすくなるからね。俺的には、全フィールドを明示的に検証する方が良いと思うよ。" userName="grey-area" createdAt="2025/06/21 12:28:45" color="#38d3d3">}}




{{<matomeQuote body="普通のGoプログラマーとして言うけど、うん、struct tagはマジでクソだね。複数の“アノテーション”を1つのstruct tag文字列にまとめようとすると、さらに最悪になる。Goがアノテーションとかマクロって考え方にすごく反対で、明確な制御フローって考え方をすごく大事にしてるからこうなってるんだ。そして、これが俺がこの言語を愛してる理由の一つでもある。でも、JSONとかXMLのマッピングみたいに、アノテーションがめちゃくちゃ役立つユースケースが使いにくくなるっていう代償もあるんだ。Goにもっとコンパイル時のマクロがあるって考えは俺にとって面白いけど、同時にGoの制御フローのデバッグしやすさとか分かりやすさは俺がこの言語を大好きな理由の一つだから、Goにもっとメタプログラミング能力があると必然的に生まれるであろう“魔法”みたいなWebフレームワークができる可能性は招きたくないんだ。だから、この結果は受け入れる覚悟ができてるって感じかな。:/" userName="liampulles" createdAt="2025/06/21 13:33:05" color="#785bff">}}




{{<matomeQuote body="30761への返信だよ。アノテーションに制御フローはないんだぜ。単に項目にメタデータを付けるだけ。struct tagとの違いは、そのメタデータが構造化されてるってこと。" userName="masklinn" createdAt="2025/06/21 17:16:31" color="">}}




{{<matomeQuote body="うん、ごめん、ここが分かりにくかったね。俺が言いたかったのは、Goがアノテーションを避けるのは、裏で色々自動でやってくれる魔法みたいなフレームワークとか、他の種類のメタプログラミングを招くからだよ。" userName="liampulles" createdAt="2025/06/23 09:24:29" color="">}}




{{<matomeQuote body="君の気持ちは分かるぜ。Springみたいに色々なことやってくれる魔法フレームワークはたくさんあって、何が起きてるのか理解するのが超大変なんだ。解決策は、普通はもっと良い言語を持つことなんだ。型システムがすごく強力で、そういうハックが必要ない言語ね。残念ながら、そういう言語で生産性を上げるにはその型システムを学ばなきゃいけないし、多かれ少なかれ最初から学ぶ必要がある—これはGoogleがGoで避けたいことだったんじゃないかな、人の入れ替わりを考慮してね。" userName="valenterry" createdAt="2025/06/21 16:32:17" color="#ff5c5c">}}




{{<matomeQuote body="それは「より良い」言語ってより「違う」言語の問題なんじゃないかな。どんな言語設計にも明らかにトレードオフはあるしね。面白いかもしれないのは、システムの一部を一つの言語で書いて、他の部分を別の言語で書けるような言語エコシステムだね。BEAMとかJVMランタイムはそれを許してるけど、違う言語がお互いの強みを活かして上手く連携してる良い例はあまり見たことない気がする。" userName="liampulles" createdAt="2025/06/23 09:32:38" color="#38d3d3">}}




{{<matomeQuote body="ええと、俺が言いたかったのは、なんか言語機能が足りないってことなんだよ。だから、その機能が追加されて言語が「良く」なるか、その機能が既にある「違う」言語を選ぶか、ってことなんだ。だから、うん、そうさ。<br>BEAMとかJVMランタイムはこれを許してるけど、違う言語がお互いの強みを活かして上手く連携してる良い例はあまり見たことない気がする。<br>多分、ランタイムが常に最低共通項になるからだろうな。とはいえ、Scalaで書かれたAkkaとかSparkみたいなツールがJavaから使われる例はたくさんあるよ。もちろんその逆もね。" userName="valenterry" createdAt="2025/06/23 10:45:02" color="">}}




{{<matomeQuote body="struct tagで一番イラつくのは、タグ文字列内の別々の値とかフィールドの標準がないことだね。JSONだとカンマを使うのに、Gorm（確か）だとセミコロンだったりさ。これで何回か頭を抱えたことがあるよ。" userName="theasisa" createdAt="2025/06/22 11:09:01" color="#785bff">}}




{{<matomeQuote body="Goのstruct tagは、ある人にはバカげてるけど、ある人には素晴らしいんだ。多くの機能の80%を、複雑さとコストの20%で実現するGoの80/20デザインの典型例だね。<br>struct tagは重要なシナリオを簡単に扱えるようにしてる。でも、annotationみたいに他のシナリオまでカバーしようとはしないんだ。function tagでもvariable tagでもないし、汎用annotationでもない。structのフィールドのためだけのannotationなんだ。<br>annotationとかmacroみたいに強力かって？当然そんなことない、全然だよ。<br>実装、理解、使うのがそんなに複雑かって？それもないね。<br>80/20デザインさ。コストの20%で機能の80%。" userName="kjksf" createdAt="2025/06/21 10:08:47" color="#785bff">}}




{{<matomeQuote body="Goのシンプル化って、他の場所に複雑さ持ち込むこと多いよね。この記事がstringly-typedなDSLの正確性の複雑さで示してるみたいにさ。<br>タダ飯なんてなくて、Goがその結果を得るためにした妥協は、設計段階で完全に予測できた形でエラーにつながりやすいってことが明らかになってる。" userName="Philpax" createdAt="2025/06/21 12:26:38" color="">}}




{{<matomeQuote body="＞Goのシンプル化って、他の場所に複雑さ持ち込むこと多いよね<br>たまにあるけど、「多い」ってほどかな？Goのシンプル化のおかげで、コードベースの大部分は…まあ…シンプルになるんだよ。<br>その代わり、エッジケースで少し複雑になるコストはかかる。それは全然受け入れられるトレードオフだね。普通の部分がシンプルになる代わりに、変な部分が複雑になるのは許容できるよ。エッジケースを簡単にするために、常により高いレベルの複雑さに対処するよりマシだ。<br>＞タダ飯なんてない<br>これには同意。タダ飯じゃないけど、すごくリーズナブルな値段だよ（壁に穴が開いてるようなレストランで、値段の割にめちゃくちゃ美味い飯が出てくるみたいな）。<br>＞Goがその結果を得るためにした妥協は、設計段階で完全に予測できた形でエラーにつながりやすいってことが明らかになってる<br>ここも同意だね。でも、俺はこれをメリットとして見てる。エラーになりやすい部分が、設計時に十分明確に見えるんだ。ここにもタダ飯はないけど、どっちの部分をエラーになりやすくするかでGoがしたトレードオフは気に入ってるよ。他の言語で、そういうエラーになりやすい箇所を減らすために大幅に複雑さを増やした結果、かえってエラーになりやすい場所の表面積が増えたってのが俺の経験だね。<br>デザイン空間の他の場所の方がより良いトレードオフだって主張できるかって？もちろん、特に特定の問題に対してはね。でも、この場所は〜95%のことで本当によく機能してるように見える。" userName="Kamq" createdAt="2025/06/21 16:09:41" color="#45d325">}}




{{<matomeQuote body="んー、null値とかデフォルトのzero-valueはそんな簡単に看過できないな。あれでいつも困ってるし、代替策（明示的な代入）より意味があるほどシンプルでもない。<br>あとはmutability修飾子とか。確かに余分な機能だけど、機能が少ない方が魅力的なのは否定しない。でも、immutableってフラグを立てられると、これから扱う全てのコードが楽になるんだよ。<br>genericsを15年も入れなかったことを考えてみてよ。ある意味言語をシンプルにはするけど、genericsが必要な時はreflectionを使わなきゃいけなくて、それはgenericsよりよっぽど複雑だよ。macroだって不人気とはいえ、codegenよりはマシだ。<br>繰り返しになるけど、ミニマリズムの魅力は分かるよ。でも、これらの機能のコスト/メリット分析を見ると、どれも圧倒的なプラスになってる。なんか「良いものは持てない」みたいな全体的なポリシーは、不必要に厳しくて、みんなを損させてる気がする。" userName="bccdee" createdAt="2025/06/28 01:54:02" color="#ff5c5c">}}




{{<matomeQuote body="＞Goのシンプル化って、他の場所に複雑さ持ち込むこと多いよね<br>まさにこれ。<br>基本的に：複雑な圧縮アルゴリズムがあるとする？はい、それは複雑だけど、結果のファイルサイズ（=プログラムの複雑さ）は小さくなる。<br>すごく基本的な圧縮アルゴリズムを使うと、アルゴリズム自体は理解しやすいけど、ファイルサイズははるかに大きくなる。<br>それはトレードオフだね。でも、プロとして、ちゃんと時間をかけて良い複雑な圧縮アルゴリズムを一度しっかり学んで、それから書く全てのプログラムで恩恵を受けるべきだと思うんだ。" userName="valenterry" createdAt="2025/06/21 16:34:23" color="">}}




{{<matomeQuote body="＞ちゃんと時間をかけて良い複雑な圧縮アルゴリズムを一度しっかり学んで<br>[ここにPikeのGoogleの若いプログラマーについての引用が入る]<br>それってGoの哲学じゃないんだよ。Goの規約は、効率よりもできるだけ明白であることなんだ。それが好きな人もいれば、そうじゃない人もいる。俺はそれが嫌だから、Goを使うのをやめた。" userName="maleldil" createdAt="2025/06/21 17:49:44" color="">}}




{{<matomeQuote body="80/20デザインって良くない気がしてきた。worse is betterに driven されてるように見える多くのことが、気候変動とか見ると…それって価値があったの？" userName="timeon" createdAt="2025/06/21 20:36:33" color="">}}




{{<matomeQuote body="そう、多くの理由でひどいアイデアだよ、セキュリティだけじゃなくてね。文字列の中に隠された、定義が不明確でよく理解されてないDSLみたいだ。<br>でも、struct tagを使わないこともできるんだ。代わりにmapにunmarshalして、必要なキーを選んだり、検証したり、それから値を設定したりできる。<br>公開する時も同じ。俺は、型に紐づいたこのよく分からない文字列キーに基づいてデフォルトですべてを公開するより、公開するキーを定義する明示的なビューを持つ方が好きだよ。" userName="grey-area" createdAt="2025/06/21 12:22:07" color="#45d325">}}




{{<matomeQuote body="struct tagは、フィールドをフィールドにマッピングするために必要な定型コードを大幅に削減するんだ。理解すると、本当にかなり斬新だね。" userName="reactordev" createdAt="2025/06/21 10:41:16" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
