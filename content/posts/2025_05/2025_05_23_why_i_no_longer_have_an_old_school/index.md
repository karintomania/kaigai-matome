+++
date = '2025-05-23T00:00:00'
months = '2025/05'
draft = false
title = '私のHTTPSサイトから昔ながらの証明書が無くなった理由とは？'
tags = ["HTTPS", "Certificate", "Security", "SSL/TLS", "JSON"]
featureimage = 'thumbnails/blue2.jpg'
+++

> 私のHTTPSサイトから昔ながらの証明書が無くなった理由とは？

引用元：[https://news.ycombinator.com/item?id=44071690](https://news.ycombinator.com/item?id=44071690)




{{<matomeQuote body="＞So, yes, instead of saying that ”e” equals ”65537”, you’re saying that ”e” equals ”AQAB”. Aren’t you glad you did those extra steps?Oh JSON.For those unfamiliar with the reason here, it’s that JSON parsers cannot be relied upon to treat numbers properly. Is 4723476276172647362476274672164762476438 a valid JSON number? Yes, of course it is. What will a JSON parser due with it? Silently truncate it to a 64-bit or 63-bit integer, or a float, probably or if you’re very lucky emit an error (a good JSON decoder written in a sane language like Common Lisp would of course just return the number, but few of us are so lucky).So the only way to reliably get large integers into and out of JSON is to encode them as something else. Base64-encoded big-endian bytes is not a terrible choice. Silently doing the wrong thing is the root of many security errors, so it not wrong to treat every number in the protocol this way. Of course, then one loses the readability of JSON.JSON is better than XML, but it really isn’t great. Canonical S-expressions would have been far preferable, but for whatever reason the world didn’t go that way.<br>＞つまり、「e」は「65537」と言う代わりに、「e」は「AQAB」と言ってるわけだね。この余計な手順踏んで良かったね？ああ、JSONね。<br>なぜこんなことになってるか知らない人のために説明すると、JSONパーサーは数値をちゃんと扱ってくれないんだよね。たとえば、4723476276172647362476274672164762476438みたいなすごく長い数字、これは有効なJSONの数値かな？もちろんそうだよ。じゃあJSONパーサーはこれどうする？たぶん、黙って64ビットとか63ビットの整数に切り詰めたり、浮動小数点数にしちゃうんだ。運が良ければエラーを出してくれるかもね（Common Lispみたいなちゃんとした言語で書かれた良いJSONデコーダーなら、もちろんそのまま数値を返してくれるけど、そんな幸運な人は少ないんだ）。<br>だから、大きな整数をJSONで確実に出し入れする唯一の方法は、何か別の形式でエンコードすることなんだ。Base64エンコードされたビッグエンディアンのバイト列っていうのは、悪くない選択肢だね。黙って間違った処理をするのは多くのセキュリティエラーの元凶だから、プロトコル内の全ての数値をこうやって扱うのは間違いじゃない。もちろん、そうするとJSONの読みやすさは失われるけどね。<br>JSONはXMLよりマシだけど、正直すごく良いわけじゃないよ。Canonical S-expressionsの方がずっと良かったんだけど、なぜか世の中はそっちを選ばなかったんだよね。" userName="eadmund" createdAt="2025/05/23 12:43:17" color="#785bff">}}




{{<matomeQuote body="＞Canonical S-expressions would have been far preferable, but for whatever reason the world didn’t go that way.<br>＞Canonical S-expressionsの方がずっと良かったんだけど、なぜか世の中はそっちを選ばなかったんだよね。<br>JSONが勝った理由が分からないのは、意図的に鈍感になってる気がするな。JSONはほとんどのデータで手書きしたり編集したり読むのが簡単なんだ。Canonical S-expressionsは読むのがそんなに簡単じゃないし、手書きするのはずっと大変だよ。全てのアトムに長さをプレフィックスとしてつけなきゃいけないから、手書きがすごく面倒くさいんだ。手で編集したいJSONオブジェクトがあったら、ただ入力するだけ…Canonical S-expressionの場合は、入力したり削除したりしてる文字数を数えて、プレフィックスを更新しなきゃいけないんだ。<br>手で生成、読み込み、編集できる能力が重要じゃないって思うかもしれないけど、それがJSONが結局勝った大きな理由だとかなり確信してるよ。<br>そうそう、RubyのJSONパーサーはあの大きな数値をちゃんと扱ってくれるよ。" userName="cortesoft" createdAt="2025/05/23 21:00:52" color="#38d3d3">}}




{{<matomeQuote body="＞I feel like not understanding why JSON won out is being intentionally obtuse.<br>＞JSONが勝った理由が分からないのは、意図的に鈍感になってる気がするな。<br>僕のコメントは代替案をゴリ押しする場所じゃなくて、JSONへの不満を言う場所だって感じてたんだ。でも、君がそれを持ち出したからね。<br>＞JSON can easily be hand written, edited, and read for most data.<br>＞JSONはほとんどのデータで手書きしたり編集したり読むのが簡単なんだ。<br>Canonical S-expressionsだってそうだよ！<br>＞Canonical S-expressions are not as easy to read and much harder to write by hand; having to prefix every atom with a length makes is very tedious to write by hand.<br>＞Canonical S-expressionsは読むのがそんなに簡単じゃないし、手書きするのはずっと大変だよ。全てのアトムに長さをプレフィックスとしてつけなきゃいけないから、手書きがすごく面倒くさいんだ。<br>だからadvanced representationがあるんだよ。僕はこれの方が：<br> (urn:ietf:params:acme:error:malformed<br>  (detail ”Some of the identifiers requested were rejected”)<br>  (subproblems ((urn:ietf:params:acme:error:malformed<br>                 (detail ”Invalid underscore in DNS name ¥”_example.org¥””)<br>                 (identifier (dns _example.org)))<br>                (urn:ietf:params:acme:error:rejectedIdentifier<br>                 (detail ”This CA will not issue for ¥”example.net¥””)<br>                 (identifier (dns example.net))))))<br>RFC 8555の最初のJSON（これね）：<br> {<br>     ”type”: ”urn:ietf:params:acme:error:malformed”,<br>     ”detail”: ”Some of the identifiers requested were rejected”,<br>     ”subproblems”: [<br>         {<br>             ”type”: ”urn:ietf:params:acme:error:malformed”,<br>             ”detail”: ”Invalid underscore in DNS name ¥”_example.org¥””,<br>             ”identifier”: {<br>                 ”type”: ”dns”,<br>                 ”value”: ”_example.org”<br>             }<br>         },<br>         {<br>             ”type”: ”urn:ietf:params:acme:error:rejectedIdentifier”,<br>             ”detail”: ”This CA will not issue for ¥”example.net¥””,<br>             ”identifier”: {<br>                 ”type”: ”dns”,<br>                 ”value”: ”example.net”<br>             }<br>         }<br>     ]<br> }<br>よりもずっと読みやすいと思うよ。<br>＞for an Canonical S-expression, you have to count how many characters you are typing/deleting, and then update the prefix.<br>＞Canonical S-expressionの場合、入力したり削除したりしてる文字数を数えて、プレフィックスを更新しなきゃいけないんだ。<br>見た通り、そんなことする必要ないんだよ。" userName="eadmund" createdAt="2025/05/23 21:17:00" color="#45d325">}}




{{<matomeQuote body="IEEE754 double precision floatで表現できない数値を確実に保存しない場合、JSONパーサーは技術的に標準に従ってないってことなのかな？パーサーが正しさよりパフォーマンスを優先して、数値にbignumsを使わないのは残念だね。" userName="matja" createdAt="2025/05/23 12:55:54" color="">}}




{{<matomeQuote body="でも、数値を文字列で送る、”65537”ってする代わりに”AQAB”ってするのは何が悪いの？" userName="kangalioo" createdAt="2025/05/23 19:01:58" color="">}}




{{<matomeQuote body="君の例はs-expressionsを使ってるね、canonical s-expressionsじゃないよ。canonical s expressionsは基本的にバイナリフォーマットなんだ。各アトム／文字列は、文字列の10進数の長さとコロンでプレフィックスされてる。通常のs expressionsに対する利点は、空白を含む文字列をエスケープしたりクオートしたりする必要がないこと、そして与えられたデータ構造に対して可能な表現が一つしかないことだね。欠点は、人間が書いたり読んだりするのがずっと難しいこと。<br>s-expressionsとjsonについては、それぞれ長所短所があるよ。s-expressionsにはデータ自体に型情報をエンコードする方法がないから、特定の値が数値として扱われるべきか文字列として扱われるべきかを知るためにはスキーマが必要なんだ。そして、どちらがより読みやすいかは主観だね。<br>＞[1]：https://en.m.wikipedia.org/wiki/Canonical_S-expressions" userName="thayne" createdAt="2025/05/24 02:18:13" color="#785bff">}}




{{<matomeQuote body="RFC7159か8259を読んで絶望してみてよ。<br>＞This specification allows implementations to set limits on the range and precision of numbers accepted<br>＞この仕様は、実装が受け付ける数値の範囲と精度に制限を設定することを許可している<br>JSONはひどい相互運用性標準だよ。" userName="q3k" createdAt="2025/05/23 13:22:55" color="#ff33a1">}}




{{<matomeQuote body="僕が理解できないのは、君（や他の多くの人）がS-expressionパーサーが全く同じ問題を抱えないとどうして期待するのかってことだよ。" userName="marcosdumay" createdAt="2025/05/23 18:42:43" color="">}}




{{<matomeQuote body="じゃあ、2すら保存できないJSONパーサーは技術的に準拠してるってこと？:(" userName="matja" createdAt="2025/05/23 13:52:10" color="">}}




{{<matomeQuote body="＞Your example uses s-expressions, not canonical s-expressions.<br>＞君の例はs-expressionsを使ってるね、canonical s-expressionsじゃないよ。<br>僕はいつも’canonical S-expressions’をRivestのS-expressions提案（https://www.ietf.org/archive/id/draft-rivest-sexp-13.html）を指すのに使ってたんだ。この提案にはcanonical、basic transport ＆ advanced transportの表現があって、それらは全て互いに等価なんだ（つまり、全てadvanced transport表現は単一のcanonical表現を持つ）。どこで最初に見かけたか覚えてないけど、たぶんLispとかSchemeの他のS-expressionsと区別するためだったのかな？もしかしたら、代わりに’Rivest S-expressions’とか’SPKI S-expressions’って呼ぶべきかもしれないね。<br>＞S-expressions don’t have any way to encode type information in the data itself, you need a schema to know if a certain value should be treated as a number or a string.<br>＞s-expressionsにはデータ自体に型情報をエンコードする方法がないから、特定の値が数値として扱われるべきか文字列として扱われるべきかを知るためにはスキーマが必要なんだ。<br>JSONだってそうだよ、このスレッド全体がそれを示してる通り。これは他のデータ型にも当てはまるね。Rivest expressionはこういう風にできたかもしれないけど：<br> (date [iso8601]2025-05-24T12:37:21Z)<br>JSONはこれに固執してるんだ：<br> {<br>  ”date”: ”2025-05-24T12:37:21Z”<br> }<br>＞And it’s subjective which is more readable.<br>＞そして、どちらがより読みやすいかは主観だね。<br>本当に同意できないな。YAMLが存在する唯一の理由はJSONをより読みやすくするためだよ。限られた範囲で、テキストの画面内に多くのデータがあるほど良いんだ。JSONはpretty-printすると非常に冗長で、少量のデータを表現するのに画面いっぱいのテキストを占めるんだ—そしてpretty-printされてないと、メモリーダンプを読もうとしてるのに近いよ。<br>編集：2025年1月の提案へのリンクを更新したよ。" userName="eadmund" createdAt="2025/05/24 13:10:27" color="#ff5733">}}




{{<matomeQuote body="RivestのドラフトだとCanonical S-expressionsはトークンの前に長さが入るフォーマットだから、「Canonical」って言葉を提案全体に使うのは紛らわしいね。JSONみたいな形式がRivestのより人気出る理由はその辺にあるのかも。JSONは読み書きのフォーマットだけで、転送は別。名前も短くて発音しやすいし、指してるものが明確だ。JSONがSPKIより優れてると言いたいわけじゃなくて、Rivestの提案は野心がありすぎて現実の普及には合わないってこと。JSONの転送にはgzipとかMessagePackとか色々あるけど、単一の標準がないのが逆に重要じゃないってのも面白いね。全部まとめて定義しようとするのは関心の分離に違反してる感あるかもね。" userName="antonvs" createdAt="2025/05/24 14:21:45" color="#ff33a1">}}




{{<matomeQuote body="それって「こうなったのはこういう理由だ」っていう後付けの説明みたいだね。｛”e” ： ”AQAB”｝と｛”e” ： 65537｝を比較するなら話はわかるけど、それが唯一の選択肢なわけじゃないし。JSONの｛”e” ： ”65537”｝はどんなJSONパーサーでも同じように読むよ。”65537”って文字列を数値にするのは”AQAB”を数値にするのと同じくらい簡単だし、絶対にあいまいさはない。JSでやるとして、結果の数値がdoubleの精度を超える可能性があるなら、どっちの方法でもデカい問題抱えることになるけどね。Cでlong longに入りきらない数を扱うのと同じ。それはJSONでどう表現するかに関係ないよ。" userName="tsimionescu" createdAt="2025/05/24 06:14:53" color="#45d325">}}




{{<matomeQuote body="面白いことに、Javascript言語自体はもう何年もBigIntをサポートしてるんだよね。123nみたいに書ける。JSONも簡単に拡張できるはずなんだけど、そういう変更を決定できる標準化団体がないんだ。だからJSONはこのまま永遠に変わらないんだろうね。生きてる間に何か良い代替が出てきて、みんながそれに同意できるといいな。ついでに言うと、JSONにバイナリデータを埋め込む方法とか、日付の標準的な表現とか、コメントとか、Sum Typeのまともで一貫した表現、あとSetやMap（文字列以外のキーも）も欲しいな。Javascriptはネイティブでサポートしてるのにね。はぁ。" userName="josephg" createdAt="2025/05/24 12:26:53" color="#ff33a1">}}




{{<matomeQuote body="＞JSONがなんで勝ったか理解できないのは意図的に鈍感になってる気がする。JSONは手で簡単に書いたり編集したり読んだりできる。<br>君はJSONが成功した理由を理屈付けようと頑張りすぎてるよ。正直なところ、そんな複雑な理由じゃなくてずっとシンプル：あれは有効なJavascriptだったから。JavascriptのWebアプリはeval()一発でJSONをパースできたんだ。XMLみたいなデシリアライズの面倒さもないし、パーサーをインポートする必要もない。ファイルをフェッチして、eval()に渡せば終わり。それが真実だよ。" userName="motorest" createdAt="2025/05/24 16:32:55" color="#ff33a1">}}




{{<matomeQuote body="これ、大丈夫なの？<br>Python 3.13.3 （main， May 21 2025， 07：49：52） ［GCC 14．2．0］ on linux<br>  Type ”help”， ”copyright”， ”credits” or ”license” for more <br> information．<br>  ＞＞＞ import json<br>  ＞＞＞<br><br> json．loads（’47234762761726473624762746721647624764380000000000000000000000000000000000000000000’）<br> 47234762761726473624762746721647624764380000000000000000000000000000000000000000000<br>（とても大きな整数をJSONとして読み込めるPythonの例を見せてる）" userName="JackSlateur" createdAt="2025/05/23 20:53:58" color="">}}




{{<matomeQuote body="PHPみたいな一部のパーサーは、65537っていう数値と”65537”っていう文字列を同じものとして扱うかもね。脆弱性の余地があるよ。" userName="deepsun" createdAt="2025/05/24 07:15:58" color="">}}




{{<matomeQuote body="Canonical S-expressionsには数値がなくて、アトム（つまりバイト列）とリストだけだからだよ。だから、”34”っていうのを文字列の”34”として解釈するか、数値の34として解釈するか、はたまた別の値として解釈するかは、使ってるプロトコル次第なんだ。だいたいは10進数の数値だろうけどね。プログラミング言語のLispで使うS-expressionsには数値があるけど、Lispはbignumを持ってる。他の言語で書かれたLisp S-expressionsパーサーは、標準に準拠するならbignumをサポートする必要があるんだ。" userName="eadmund" createdAt="2025/05/23 21:06:30" color="#ff33a1">}}




{{<matomeQuote body="JSONでbigintを扱う簡単な回避策はあるよ： https://github.com/GoogleChromeLabs/jsbi/issues/30#issuecomm..." userName="Sammi" createdAt="2025/05/24 20:06:00" color="">}}




{{<matomeQuote body="Goだと数値を文字列としてロスレスにデコードできるよ（ https://pkg.go.dev/encoding/json#Numberjson.Numberは（ほとんど）僕の”お気に入り”のarbitrary decimalだね（半分冗談だけど）。 https://github.com/ncruces/decimal?tab=readme-ov-file#decima...S-expressionがここでどうしてベターなのか分からないな。arbitrary precision mathをやらないLISPsもあるし。" userName="ncruces" createdAt="2025/05/23 18:56:55" color="">}}




{{<matomeQuote body="JSONには、最初から巨大なエコシステムがあったっていう大きな利点もあったんだ。見た目はイケてないし、ちょっと安全じゃなかったけど、あらゆるJavaScript実装が最初からJSONをパース・生成できたってのは、すごく大きな後押しになったね。たとえ世界一のフォーマットがあったとしても、これに勝つのは難しいよ。" userName="wat10000" createdAt="2025/05/24 16:15:32" color="#38d3d3">}}




{{<matomeQuote body="JSONはテキスト形式で、数値の解釈は仕様の範囲外だよ。プラットフォーム間で使う時は、数値の“解釈”について同意しないとダメだね。じゃないと、同じデータが見れないよ。" userName="reichstein" createdAt="2025/05/23 20:42:59" color="#38d3d3">}}




{{<matomeQuote body="もちろん、マップやセット、バイナリデータをエンコードできるけど、したくないんだ。JSONにはネイティブサポートがないのが事実。これらの機能を最初からネイティブにサポートするJSONライクなものが欲しいね。いちいちエンコード方法を考えたり、JacksonやSerdeやJavaScriptでハックしたりしたくないよ。" userName="josephg" createdAt="2025/05/25 11:00:20" color="#ff5733">}}




{{<matomeQuote body="Common Lispはデフォルトでbigintを持ってるってことを言ってるんだと思うな。" userName="01HNNWZ0MV43FF" createdAt="2025/05/23 19:07:06" color="">}}




{{<matomeQuote body="そうだね、Pythonもarbitrary-precision arithmeticを持つ「正気な」言語のカテゴリーに入るよ。" userName="jazzyjackson" createdAt="2025/05/23 21:02:17" color="">}}




{{<matomeQuote body="＞ clearly refers to one thing<br>いいね、これJSONみたいだね。これJSON5？bigintサポート期待できる？エスケープ文字使える？" userName="kevin_thibedeau" createdAt="2025/05/24 14:47:02" color="">}}




{{<matomeQuote body="君にはそうかもね。僕には前者は密すぎ。JSONはインデントがあって見やすいし、リストとオブジェクトの区別もできるのがいい。でも、まあ、基本的にホモモルフィックだよね。{}と[]を()に変えるとか、キーやタイプの扱いが暗黙的か明示的かとか、ちょっと違うだけだし。" userName="eximius" createdAt="2025/05/23 21:35:44" color="">}}




{{<matomeQuote body="＞ Canonical S-expressions are not as easy to read and much harder to write by hand<br>そんなことしないよ。バイナリでマシンコードを読み書きするのと同じ。普通のS-expression（やアセンブリコード）を読み書きして、それをツール（アセンブラ/逆アセンブラ）でCanonical S-expression（やマシンコード）に変換するんだ。" userName="lisper" createdAt="2025/05/24 18:15:08" color="#ff5c5c">}}




{{<matomeQuote body="JSONにオプションで型宣言があればいいのにって思うくらいシンプルで当然のことなのに、なんでまだないんだろ？ほとんどの場合いらないだろうけど、際どいケースでパーサーが間違った推測をするのを防げるのにね。少なくとも意味のあるエラーを出せるはず。" userName="zubspace" createdAt="2025/05/24 11:14:12" color="">}}




{{<matomeQuote body="Let’s EncryptのSRE/infraチームの技術リードだけど、JSON Web Signaturesは扱いにくいフォーマットだし、ACME APIも結構頑張ってる。IETF標準や設計委員会の影響かもね。C言語のライブラリも大変。RFCも分かりにくいから、クライアントとドキュメントを作業中だよ。" userName="mcpherrinm" createdAt="2025/05/23 20:56:43" color="#785bff">}}




{{<matomeQuote body="＞JSON Web Signaturesは扱いにくいフォーマットだって？ASN.1、Kerberos、PKIの中にいる身からすると、JWSはそんなに”gnarly”じゃないな。オープンコードするのも簡単なくらい。JWSの何がそんなに扱いづらいんだ？JWTに問題があるのは確かだけどね。主に取得方法の標準がないことかな。" userName="cryptonector" createdAt="2025/05/23 21:20:07" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺ならASN.1/DERをいつでもJWSより取るね。JWSは実装ミスを犯すのがあまりに簡単なんだ。JOSEとACMEは新しいのに、もっと上手くやれたはず！もう変わらないけど。ASN.1の問題は古いツール、Protobufが人気なのはツールのおかげだと思うな。" userName="mcpherrinm" createdAt="2025/05/24 17:17:12" color="#45d325">}}




{{<matomeQuote body="署名検証しないのは問題だけど、PKIでも起こりうる。PKIの方が歴史が長く、経験者が多かったからかもね。Protocol Buffersはひどい。ASN.1よりシンタックスが酷いし、DERに似てるのに存在理由が分からない。ツールがなかったからじゃないはずだ。" userName="cryptonector" createdAt="2025/05/24 21:18:40" color="#785bff">}}




{{<matomeQuote body="これって古典的なwhataboutismに陥ってない？ASN.1とか仲間たちが例外的に悪いからって、Json Web*が悪くないことにはならないと思うんだけど。" userName="asimops" createdAt="2025/05/24 11:55:08" color="">}}




{{<matomeQuote body="＞これって古典的なwhataboutismに陥ってない？<br>陥ってないよ。こういうコーデックの複雑さは避けられないんだ。それにASN.1は「例外的に悪い」わけじゃない -- 俺はむしろASN.1が好きだね。ポイントは「ASN.1を見ろ」じゃなくて、「Kerberosを見ろ」ってことだったんだ。Kerberosはクライアント側にすごく大量の賢さを要求するからね -- 30年以上積み重なったお荷物がありすぎて、本当に多すぎるくらいなんだ。" userName="cryptonector" createdAt="2025/05/24 16:13:00" color="#ff33a1">}}




{{<matomeQuote body="彼女が「証明書が3つ以上なら有料」って言ってるの、何のことだろ？俺、過去5年分の請求が来るの？それとも彼女が何か勘違いしてるのかな？" userName="dwedge" createdAt="2025/05/23 21:09:21" color="">}}




{{<matomeQuote body="記事によると、筆者が見つけたLEより良いと主張する「別のサイト」の無料枠は、90日証明書が3つまでだったんだって。それでおしまい。そのサイトの名前は記事には書かれてないね。" userName="belorn" createdAt="2025/05/23 21:26:06" color="">}}




{{<matomeQuote body="FWIW（参考までに）言うと、それはZeroSSLだよ。LE以外のACMEプロバイダーが増えてほしいんだけど、ZeroSSLについては個人的にはどうかなって感じ。IdenTrust（HID Global Corporation）と同じ親会社みたいだし。 Honest Achmedよりはマシだろうけど、最近、EVコード署名証明書がWindowsに信頼されなかったって文句を言ってる人がいたのを思い出したんだけど、これは... 面白いね。" userName="jchw" createdAt="2025/05/23 21:43:37" color="#ff33a1">}}




{{<matomeQuote body="IdenTrustってUS Federal PKIに関わってるから、法外な金額を請求する理由があるんだろうね。無料の証明書は多分、政府関連の開発とか契約変更の費用を政府に押し付けるための時間を稼ぐためにあるんだと思う。プレイヤーを憎むんじゃなくて、仕組みを憎むべきだよ。" userName="killjoywashere" createdAt="2025/05/24 02:55:06" color="">}}




{{<matomeQuote body="Honest Achmedって言葉で思わず検索しちゃったよ。「Akbar & Jeff’s Certificate Hut」のパロディかなって思ったんだよね。これはMozillaのbugzillaのリンクだよ。<br>https://bugzilla.mozilla.org/show_bug.cgi?id=647959" userName="AStonesThrow" createdAt="2025/05/24 06:18:19" color="">}}




{{<matomeQuote body="GoogleのCAはACME経由で無料の証明書を提供してるよ。ここから行ける。<br>https://pki.goog/" userName="arccy" createdAt="2025/05/24 13:08:53" color="#785bff">}}




{{<matomeQuote body="Googleのはすごいけど、GCPアカウントで認証が必要なんだよね。ちょっと不便かな。他のACMEプロバイダも登録が必要なところがあるけど、ZeroSSLはLet’s Encryptみたいに事前登録なしで提供してるみたいだよ。" userName="jchw" createdAt="2025/05/24 16:49:38" color="#ff5c5c">}}




{{<matomeQuote body="BuypassもACME証明書を出してるよ [1]。使用制限はLet’s Encryptほど気前良くないけど、俺の経験だと結構うまくいくよ。<br>[1] https://www.buypass.com/products/tls-ssl-certificates/read-m..." userName="birktj" createdAt="2025/05/24 20:22:46" color="">}}




{{<matomeQuote body="ちょっと前にacme.shがZeroSSLをデフォルトで使うようになったのを見たな。これはその時のGitHubの変更点だよ。<br>https://github.com/acmesh-official/acme.sh/blob/42bbd1b44af4..." userName="rmetzler" createdAt="2025/05/24 15:35:14" color="">}}




{{<matomeQuote body="”リモートコードが実行されてスクリプトの中身が分かったけど…どうやら無害らしい”っていうTwitterでの確認があったみたいだけど、実際はそうじゃなかったんだよね。acme.shは使うべきじゃないよ。" userName="_hyn3" createdAt="2025/05/24 17:39:46" color="#ff33a1">}}




{{<matomeQuote body="1年くらい前にacmeとかRCEの件を調べたんだけど、あのRCEはそんなに危険じゃなくて、証明書転売業者の仕業で、機密インフラへの侵入目的ではないって印象だった。何か新しい情報ある？俺の印象は間違ってたかな？" userName="rsync" createdAt="2025/05/24 19:59:18" color="">}}




{{<matomeQuote body="ZeroSSLはIdentrustが持ってるんだけど、インフラは別のCAが運用してるんだよ。<br>あとMicrosoftは去年の初め頃にEV codesigningをやめたんだ。動かなくしたんじゃなくて、普通のコード署名証明書と同じにしたんだよ。" userName="nickf" createdAt="2025/05/24 06:31:30" color="#ff5c5c">}}




{{<matomeQuote body="このトピックについてもっと詳しい情報、例えばリンクとか提供してくれない？ 俺さ、自営でEV code signing certificateを買おうと思ってたんだよね、Windows Defenderがソフト出すたびにポップアップする長年の問題解決のために。EV code signing certificateって、もうこの問題の解決策として使えないの？ EVとnon-EVのコード署名証明書って、もう違い無くなっちゃったの？" userName="mkup" createdAt="2025/05/24 11:28:53" color="#38d3d3">}}




{{<matomeQuote body="Microsoftの2024年3月のアップデートの後、EV Code signing certsは即時のMicrosoft Defenderの評判を提供しないようになったんだ。今は、OVとEVのコード署名証明書はどっちもFIPS 140 Level 2かCommon Criteria EAL 4+認定のHSM、トークン、またはクラウドHSMにインストール・保存できるよ。だから、EV Code Signingはより高いセキュリティと高い検証だって考えられるけど、もうそれ以上の違いはないんだ。もし安い費用でコード署名を買いたいなら、https://signmycode.com/cheap-code-signing-certificates をお勧めするよ。" userName="Moni_Mac" createdAt="2025/05/26 04:37:29" color="#38d3d3">}}




{{<matomeQuote body="もちろん！ https://learn.microsoft.com/en-us/security/trusted-root/prog...3.D.3 にEV CSに関する詳細が載ってるよ。" userName="nickf" createdAt="2025/05/24 21:05:52" color="#ff33a1">}}




{{<matomeQuote body="＞ and the ACME API is pretty enthusiastic about being RESTful<br>それ見てないけど、本当にそう？俺さ、昔はRESTが何を意味するか知ってたんだよ。HATEOASとしてのRESTなの、それとも“いくつかのhttpエンドポイントを公開してる”っていう意味でのRESTなの？" userName="tasuki" createdAt="2025/05/24 16:41:29" color="">}}




{{<matomeQuote body="全てがURLで識別されるオブジェクトだよ。ディレクトリのURLから他のリソースを見つけられるんだ。ACMEはJSONオブジェクトをURLで識別し、GETできたり、Location/Linkヘッダーで他のオブジェクトにリンクしてる。ブログ記事の引用にあるように、Locationヘッダーがアカウント識別子だったりね。HATEOASの理想に近いと思うけど、証明書取得スクリプトみたいなクライアントは結局アクションをハードコードしてる。URL追跡っていう間接レイヤーが増えるだけなんだ。俺的には固定エンドポイントのRPC-over-HTTP/JSONが良かったな。" userName="mcpherrinm" createdAt="2025/05/24 18:52:35" color="#ff33a1">}}




{{<matomeQuote body="それ結構いいね！確かにRESTだって主張の99%よりずっとマシだよ！詳しい返信ありがとうね。" userName="tasuki" createdAt="2025/05/24 19:53:39" color="">}}




{{<matomeQuote body="RESTはさ、長い長い間”json over httpでのRPC”って意味だったんだよ。HATEOASなんて、誰も実世界で見たことない神話上の獣だよ。" userName="peanut-walrus" createdAt="2025/05/24 18:17:23" color="">}}




{{<matomeQuote body="うーん、しばらくはそういう意味だったと思うよ。でも今はさ、GET用のURLを持つリソースとして物事を表現したり、書き込みをPOSTでやったりすることに厳密なシステムと結構やり取りしたから、いつも昔みたいなad hocなRPC祭りだとは思わないな。完璧なHATEOASを見るのは珍しいかもしれないけど、RESTはもう“誰も実際にやってない”カテゴリにはないのは確かだよ。" userName="hamburglar" createdAt="2025/05/24 20:02:29" color="">}}




{{<matomeQuote body="なんでACMEとクライアントへの攻撃的なトーンなのか分かんないな。作者がスキルないわけじゃないから、個人的にACMEが嫌いなのかな？俺たちLEを結構前から使ってるけど、変なクライアントも試したよ。今年はSectigo ACME相手に色々試して、certbot、lego、Posh-ACMEを使ったけど、結局certbotにしたんだ。追記* 読み直したら、批判はACMEの概念じゃなくて仕様/実装に向けられてるんだね。アイデアは良い、実装は悪いってことか。" userName="1a527dd5" createdAt="2025/05/23 11:41:51" color="#38d3d3">}}




{{<matomeQuote body="よく分からないものをさ、サーバーでたくさん動かされるのが嫌な人もいるんだよ。俺もそれに同意する。セキュリティはイタチごっこで、常に進化してるから、ついていかざるを得ないんだよね。それはこの分野の性質上仕方ないことで、誰かを責めることはできないよ（例えば、Google Play Storeに出すために最新のGoogleサービスとの連携を強いられるのとは違う）。少なくとも、ACMEクライアントは自分で書こうと思えば書けるし、TPMみたいに自分のものから締め出されるような挙動もないのは良いところだね。" userName="immibis" createdAt="2025/05/23 11:47:15" color="">}}




{{<matomeQuote body="＞ACMEとそのクライアントへの攻撃的なトーンがよく分かんないな．多分，作者と同じように，既存クライアントのコードが怖くて特権実行させたくないってことかな．セキュリティ的に見ればこれはかなり正当な懸念だと思うよ．" userName="lucideer" createdAt="2025/05/23 12:16:36" color="">}}




{{<matomeQuote body="もうNon-ACME証明書はほぼ終わりだよ．前からそうなるって兆候はあったしね．みんな嫌がるのは分かるよ．変化は怖いからね．でも，Web PKIが進化していくのは希望があることだと思うな．進化ってのはこういうものさ．みんなの古いやり方をそのままにはできないんだよ．これは何十年もインターネットのセキュリティ標準の作業でずっと問題になってきたことなんだ．" userName="tptacek" createdAt="2025/05/23 18:48:02" color="">}}




{{<matomeQuote body="コンテナの達人ってわけじゃないけど（まだ？），dockerじゃダメなの？これらの懸念に対して．" userName="giancarlostoro" createdAt="2025/05/23 12:33:30" color="">}}




{{<matomeQuote body="ACMEはクールだけど，EV certsが全然ダメだったのは残念．あれは面白いコンセプトで，理想郷では詐欺とかフィッシングサイトを減らせたかもしれない．でも，”大企業”と”お金がないその他”で区別するのは欠点あるよね．なんで流行らなかったか誰か知ってる？" userName="ipdashc" createdAt="2025/05/23 19:56:35" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ACMEクライアントの問題は，プライベートキーにアクセスしてウェブサーバーを操作する必要があること．多くのクライアントがrootで動いてるけど，これは無駄に高い権限だよ．本当は，権限なしアカウントでunix socket使えば十分なのに，そうなってない．ウェブサーバー側もACME対応をもっと簡単にできるようにするべきなのにね．" userName="fpoling" createdAt="2025/05/23 12:58:48" color="#38d3d3">}}




{{<matomeQuote body="＞理解できないものをサーバーで動かしたくない，ってのは分かる．でもさ，OSのsyscallsとかBIOSとかファイルシステム，HTTP/TCPとか，もっと分かんないことだらけでサーバー動かしてるじゃん？ACMEなんてそれに比べたら全然簡単だよ．" userName="hannob" createdAt="2025/05/23 11:58:35" color="">}}




{{<matomeQuote body="EV certsは機能しないよ．あれはCAがお金儲けするためのプレミアム商品だっただけ．CA/B ForumでBRsができて証明書の最低限の質は上がったけど，EVはビジネス名を表示するってもの．でも，普通の証明書はブラウザが自動でチェックできるけど，EVは人間が正式名称を見て判断しなきゃいけない．これが詐欺かどうか判断するのは難しすぎるし，全ての取引でチェックなんて無理でしょ．だから実際には効果がなかったんだよ．" userName="tialaramex" createdAt="2025/05/23 23:56:52" color="#ff33a1">}}




{{<matomeQuote body="フィッシング詐欺師もEV certs取ってたんだぜ．PKIの大きな問題は，ヤバい（少なくとも怪しい）やつがCAリストに載ってて，現実的にそっから外せないことなんだよな．" userName="bandrami" createdAt="2025/05/24 04:06:12" color="#ff5733">}}




{{<matomeQuote body="＞理解できないたくさんのものをサーバーで強制的に動かされたくない，って話だけど，あれは分かんないってだけじゃないんだ．複雑なものほど本質的にセキュリティの穴ができやすいんだよ．たとえどれだけコードをよく見たつもりでもね．" userName="g-b-r" createdAt="2025/05/23 12:21:40" color="">}}




{{<matomeQuote body="それでも何もないよりはマシに聞こえるけどね．そして会社が正式名称で登録するインセンティブになるんじゃないかな．" userName="immibis" createdAt="2025/05/24 11:40:55" color="">}}




{{<matomeQuote body="Dockerを著者の心配と同じ理由で使ってるんだ。Dockerの`exec`とちょっとした自作自動化を組み合わせて、ACMEクライアントにシステム全体のroot権限を与えなくて済むようにしてるよ。ローカルバイナリだろうとDockerだろうと、権限管理はどっちにしろ必要だし、Dockerコンテナだと複雑になることもあるんだ。そんなに大変じゃないけど、オンデマンドの自動化にDockerはいらないかなってのが本音。多くのサービスにroot権限あげてるけど、自分で書いたものじゃないし、コードも全部見てないけど、著者の言う通り、経験でプロジェクトの雰囲気は分かるよね。ACMEクライアントにはまだいい印象はないな。" userName="lucideer" createdAt="2025/05/23 16:46:55" color="#ff33a1">}}




{{<matomeQuote body="私は違うと思うよ。著者は物事を複雑に考えすぎてる。だって、ほとんどの人が使ってるツールを信用しないなんて、主要なセキュリティに厳しい組織も含めてだよ。完璧を求めすぎて良いものを逃してる感じ。もっとスキルが高くないエンジニアなら、一番簡単な方法で設定して忘れてるだろうし、何も悪いことは起きないよ。nginx proxy managerダウンロードして、ポチポチやれば、ワイルドカード証明書だってすぐできる。誰が気にするっていうの？<br>これって著者のHTTPSサイトでしょ？ただのブログみたいだけど、どんなリスクを軽減したいの？要するに、著者はスキルが高すぎて、完璧を求めすぎて良いものを見失ってるんだよ。私はもう何年も証明書のことを考えてないね。そんなツールどうでもいいし、私の問題じゃないし、セキュリティ問題になったこともない。Load Balancerの裏に置いとけば、自分のサーバーでACMEソフト動かす必要すらないんだから。" userName="dangus" createdAt="2025/05/23 21:54:15" color="#ff33a1">}}




{{<matomeQuote body="でも、君が挙げた要件はACMEの必須要件じゃないよ。単に手抜きな選び方をしただけで、必須ではないんだ。もっと優れたクライアントもあるよ。<br>例えば、クライアントにはCertificate Signing Requestが必要だけど、それを達成する方法の一つは、クライアントに秘密鍵を選ばせるか、選んだ鍵へのアクセスを許可することだよね。でもCSRの肝は、秘密鍵が必要ないってことなんだ。CSRは別のシステムで作れるし、人間が手動で作ることもできる。それに繰り返し再利用できるから、鍵を交換しようと決めるまで新しいのはいらないんだ。<br>そう、Let’s Encryptが出た時に期待してたことを振り返ると、この取り組みは大成功だったのに、ほとんどのサーバーベンダーが相変わらずゴミみたいな、HTTPSがニッチな技術だったずっと昔の時代のために設計されたものを出荷し続けてることにすごく失望するね。" userName="tialaramex" createdAt="2025/05/23 23:12:08" color="#45d325">}}




{{<matomeQuote body="複数のゲートウェイやingress間で鍵を共有する必要があることを考えると、HSMとか別の鍵交換の仕組みを使うのってどれくらい一般的なんだろう？ACMEクライアントはサーバー自体で実行する必要はないよね。" userName="spockz" createdAt="2025/05/23 11:51:42" color="">}}




{{<matomeQuote body="「複雑なものは本質的によりセキュリティ脆弱になりやすい」<br>それは単純化しすぎだよ。それに、シンプルなものが最初から安全だとは限らない部分を無視してる。<br>今の文脈で言えば、形式検証されたTLSスタックを持つHTTPクライアントを使うのと、暗号化なしでサーバーと話す barebones HTTPクライENTを使うのと、どっちが本質的により脆弱だって本当に言う？私はそのbarebonesクライアントの方がずっと多くのものがむき出しになってると思うけどね。" userName="Avamander" createdAt="2025/05/23 12:23:41" color="">}}




{{<matomeQuote body="記事の代替案はACME vs 他のTLS証明書取得方法であって、HTTPS vs HTTPじゃないよ。<br>もちろん平文のHTTPは、たとえどんなに複雑な暗号化接続より、一般的にはるかに危険だろうね。" userName="g-b-r" createdAt="2025/05/23 14:29:30" color="">}}




{{<matomeQuote body="正確かは分からないけど、最初はcertbotを使うのがACME/LEを使う唯一のサポートされた方法みたいに感じて、それがrootで何かやろうとしたり、Webサーバーを再起動させようとしたりしたんだよね。<br>あるいはCaddyを使う方法もあったけど、それはACMEクライアントを内蔵してるけど、追加のデーモンを動かすことになる。<br>apache_mod_mdが eventually 出てきて、これは私には合ってるけど、これもいくつか手抜きな点があるね（証明書のリクエストを管理するだけだから、それらを拾うには十分頻繁な再読み込みが必要だしね。まあそれはいいかもしれないけど、公開Apacheはログローテートされた時にアクセスログを定期的にチェックして開き直すことを学んでないと思うから、どうせApacheは時々再読み込みしてるだろうしね）。<br>それが workable になる前は、いくつかの証明書が必要でacme.shを手動で使ったけど、それはcronで動いてサーバーを再起動させるデカいものを信用するよりは良かったけど、自分でやるのを覚えてなきゃいけないから不便でもあったね。" userName="toast0" createdAt="2025/05/24 05:15:57" color="#ff5c5c">}}




{{<matomeQuote body="いや、著者はACMEの仕様そのものに反対してるみたいだよ。クライアントの実装だけじゃなくてね。<br>そして、多くの不満は結局JWSが好きじゃないってことに尽きる。そして、彼女がそこで何を好むか、私はよく分からないな。ASN.1？それはもっと複雑じゃない？それとも実装が既存のライブラリを使えないような bespoke なフォーマット？" userName="thayne" createdAt="2025/05/24 03:16:50" color="#ff5c5c">}}




{{<matomeQuote body="具体例はある？<br>私たちは今、ブラウザがCertificate Transparencyを強制し、主要ベンダーのCAがブラウザの要件に違反して証明書を発行した場合、それらを排除する時代にいるんだ。<br>リストにある悪い/怪しいCAについての懸念は時代遅れに感じるな。" userName="akerl_" createdAt="2025/05/24 04:30:35" color="#ff5733">}}




{{<matomeQuote body="たまにどうやってプログラマーになったのか不思議に思うよ。俺は誰も気にしないクソみたいな自宅サーバーで何年もSREごっこして、そこで基本全部学んだんだ。そしたら突然それが仕事になった。君たちが使うLBを管理するために誰が雇われると思う？ ACMEソフトウェアなんて一度も動かしたことない奴か、それともプロトコルのJSONをバイト単位で詳細に調べ上げたブログ記事を書いた奴か？" userName="nothrabannosir" createdAt="2025/05/24 04:16:08" color="">}}




{{<matomeQuote body="Mindless automationとEV証明書、どっちもイマイチ。<br>EVは確認したトランザクションを詳細に理解する必要があるし、ユーザーには複雑すぎる。<br>銀行が手順変えたらチェック方法も変わるなんて、母親にどう説明する？<br>CAはセキュリティより利益を優先したから、EVは普及しなかったんだ。<br>企業側も、EVに合わせるために高いコストをかけて登録情報を変更なんてしないよ。だから人々は”間違った”名前を見慣れて、EVは意味をなさなくなった。<br>詐欺師は似た名前を簡単に登録できるのに、機械は違いを見抜けても人間は見落としがちだ。" userName="tialaramex" createdAt="2025/05/24 12:36:34" color="#ff5733">}}




{{<matomeQuote body="なんで全てのトランザクションを確認する必要があるんだ？<br>もしページがBig Bank Corp Of Americaから来てるなら、彼らがページ全体に責任を持つべきだろ。たとえ彼らがまずいことにJSウイルスを含んでたとしてもさ。" userName="immibis" createdAt="2025/05/26 20:26:09" color="">}}




{{<matomeQuote body="＞ACMEとそのたくさんのクライアントに対する攻撃的なトーンが理解できない<br>同じサイトの古い記事を読むと、今日の記事を理解するのに少し参考になったよ。<br>- ”なぜ私はまだhttpsサイトで昔ながらの証明書を持っているのか？” - 2023年1月3日<br>- ”証明書発行のステップをもう一度見る” - 2023年1月4日" userName="diggan" createdAt="2025/05/23 12:14:55" color="">}}




{{<matomeQuote body="ApacheにはACMEの組み込みサポートが付いてるよ。<br>mod_mdモジュールを有効にするだけだ。" userName="ptx" createdAt="2025/05/23 18:36:18" color="#ff33a1">}}




{{<matomeQuote body="＞EV証明書が普及しなかった理由を知ってる人いる？<br>ブラウザベンダーがどこかの時点でユーザーを混乱させると主張して、強調表示を消したんだ（たぶん”紛らわしい”URLバーを消そうとしてるのと同じブラウザベンダー）。<br>それ以外にも、EV証明書は発行に時間がかかるし、フィッシャーも似たようなEV証明書を手に入れちゃったから、全体が無意味になったんだよ。" userName="johannes1234321" createdAt="2025/05/23 21:20:32" color="">}}




{{<matomeQuote body="EV証明書はセキュリティを妨害したよ。「Stripe, Inc」の例みたいに、別会社のEV証明書が正規に発行されたりしたからね。<br>DV証明書やDNSの方が検証が厳しくて、詐欺師が同じEV名を使えない保証はないんだ。<br>ユーザーがapple.comが本物だと見分けられるなら、EV証明書付きの偽URLより本物のapple.comを信頼できる。<br>ブラウザのURLバーでの強調や混合スクリプト拒否の方がEVより機能してると思うよ。" userName="amiga386" createdAt="2025/05/24 14:37:38" color="#45d325">}}




{{<matomeQuote body="もしACMEクライアントをゼロから実装したいなら、RFC（JOSE関連のRFCも含む）を読むのはたぶん思ってるより簡単だよ。<br>俺も自分でクライアント作った時にまさにそうしたんだ。<br>ここで発行フローの要約も書いてる。RFCを読む代わりにはならないけど、発行手順の順に情報が整理されてるから、RFCのインデックスみたいに思ってくれ。" userName="Arnavion" createdAt="2025/05/23 18:23:19" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
