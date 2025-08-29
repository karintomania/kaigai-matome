+++
date = '2025-08-22T00:00:00'
months = '2025/08'
draft = false
title = 'Goはいまだに微妙？ベテラン開発者が指摘するGo言語の設計問題'
tags = ["Go言語", "プログラミング", "言語設計", "開発", "エンジニア"]
featureimage = 'thumbnails/purple8.jpg'
+++

> Goはいまだに微妙？ベテラン開発者が指摘するGo言語の設計問題

引用元：[https://news.ycombinator.com/item?id=44982491](https://news.ycombinator.com/item?id=44982491)




{{<matomeQuote body="Goを昔から使ってるけど、チームで導入しやすいし安定してるし、組み込み機能も多いし、コンパイルも速いから信頼できるツールだよ。並行処理も慣れればデータフローをうまく表現できるね。でも記事の意見には共感する。Goは実用性より原則にこだわりすぎたのかも。Genericsとかカスタムイテレータとか、最近は柔軟に対応してくれてるけどね。RAMや移植性の話は個人的な不満って感じかな。GoのGCは大規模でも問題になりにくいし、デバッグも難しくない。多くのプラットフォームで動くしね。ただ、エラーとnilの扱いはやっぱり嫌で、Result[Ok, Err]とOptional[T]が欲しくなるなぁ。" userName="blixt" createdAt="2025/08/22 11:35:29" color="#785bff">}}




{{<matomeQuote body="Goが原則にこだわりすぎて実用性を見失ったって言うけど、逆だと思うよ。彼らは目の前の問題を素早く解決する実用性を優先したんだ。最初から原理的に分析して正しく解決するんじゃなくてね。GoのファイルシステムAPIが良い例だよ。ファイルを開くのに`func Open(name string) (*File, error)`って関数作った。じゃあファイル名がUTF-8じゃない場合は？って？そんなの誰が気にするんだ、僕がGoを5年使っててもそんなこと起きなかったしね。" userName="xyzzyz" createdAt="2025/08/22 11:56:37" color="#ff5c5c">}}




{{<matomeQuote body="Goのstringは不正なUTF-8も扱えるってことに注目してね。Go 1.0より前に、不正なUTF stringに遭遇してもパニックしないようにしたんだと思うよ。" userName="nasretdinov" createdAt="2025/08/22 12:03:29" color="">}}




{{<matomeQuote body="これがまさにGoのstring型の問題を表してるよ。`[]byte`以上の特別な仮定ができないなら、string型を持つ意味って何？って話。元々は不正なUTF-8の変換でエラーを出すようにして、stringはUTF-8だと仮定するつもりだったけど、それで他の場所で問題が出たから、目の前の実用性優先でやめちゃったんだよ。" userName="xyzzyz" createdAt="2025/08/22 12:06:09" color="">}}




{{<matomeQuote body="Goは本当に信頼できるツールだね。標準ライブラリは素晴らしいし、Pythonみたいに依存関係地獄もない。すぐに実行できるバイナリをデプロイできるのが良いね。じゃあ他に何があるの？Java？ライセンス問題でフォークが必要になるし、Goの方が特にサーバーサイドのデプロイでは扱いやすいよ。ZigやRust？学習曲線が複雑だし、Rustのクレートを選ぶのは依存関係地獄やサプライチェーン攻撃の可能性を再び持ち込むことになるよ。" userName="traceroute66" createdAt="2025/08/22 12:01:52" color="#ff5c5c">}}




{{<matomeQuote body="並行処理が難しいって言うけど、Goとそのランタイムは、言語内でマルチコアCPUの並行処理をCSPライクなGoroutine/Channelでシームレスに扱える唯一のシステムだよ。PythonはGILと非同期ライブラリでめちゃくちゃだし、C、C++、Javaなんかは言語自体とは切り離された外部ライブラリでスレッドを実装する必要がある。だからHTTPサーバーみたいなユースケースにはGoが完璧にフィットするし、僕の経験上、これに匹敵するものはないね。" userName="bwfan123" createdAt="2025/08/22 15:59:59" color="#785bff">}}




{{<matomeQuote body="stringは単なるimmutableな`[]byte`だよ。Goのstringが不正なUTF-8を含めるのは、僕のお気に入りの点の一つなんだ。だからRustみたいにStringとOSStringとPathBufとVec＜u8＞とかいうごちゃごちゃした状況にならない。全部ただのstringで済むのがいいんだよ。" userName="assbuttbuttass" createdAt="2025/08/22 12:31:04" color="">}}




{{<matomeQuote body="Rustの`&str`とStringは、特にUTF-8の有効なテキスト用なんだ。もし任意のバイトシーケンスを扱うなら、Rustでは`&[u8]`とVec＜u8＞を使うことになる。これは「ごちゃごちゃ」してるんじゃなくて、Go言語とは違うだけだよ。" userName="zozbot234" createdAt="2025/08/22 13:05:37" color="">}}




{{<matomeQuote body="正しいUTF-8にstringを制限する必要があるケースって、僕には正直よく分からないんだ。stringのコードポイントは、Unicodeとして有効かどうかに関わらず常にイテレートできるべきだよ。現実世界の”テキスト”にはエンコードエラーがあることが多くて、それを代替文字で破壊するより、エラーをそのまま保持する方が良い場合が多いんだ。Rustにはbstr/ByteStr、PythonにはPEP-383/”surrogateescape”、RakuにはUTF8-C8といったワークアラウンドがあるけど、どれも扱いにくい。Unicode標準自体もUnicode stringをコードユニットのシーケンスと定義してるし、GoはUnicode (8-bit) stringを正しく実装している数少ない現代の言語の一つだよ。それにGoの設計者のうち少なくとも2人は、基本的にUTF-8も発明した人たちなんだよね。<br>参照: [0] https://www.unicode.org/versions/Unicode16.0.0/core-spec/cha...<br>[1] https://www.unicode.org/versions/Unicode16.0.0/core-spec/cha..." userName="maxdamantus" createdAt="2025/08/22 14:53:39" color="#45d325">}}




{{<matomeQuote body="20年ぶりにGoを触ったんだけど、C/C++時代を思い出すくらいヒドいね。<br>デフォルト引数ないし、エラー処理はイケてないし、本番でスタックトレースも出ない。<br>OOP構文も変だしポインタもあるし…まるで1999年の技術みたいだよ。" userName="xtracto" createdAt="2025/08/22 12:42:30" color="#38d3d3">}}




{{<matomeQuote body="RustではStringのUTF-8有効性を完璧に扱えるよ。<br>::from_utf8はエラーを強制、::from_utf8_lossyは無効文字を置換、from_utf8_uncheckedはunsafeだけどチェックしない、って3つの選択肢があるんだ。" userName="xyzzyz" createdAt="2025/08/22 15:55:32" color="#45d325">}}




{{<matomeQuote body="Rustでも無効なバイトでStringは作れないよ。<br>3)のfrom_utf8_uncheckedは、すでに有効だって知ってる時に使うんだ。<br>もし無効なバイトに使ったら、標準ライブラリがUTF-8前提だから、後々未定義動作につながるかもね。<br>https://doc.rust-lang.org/std/primitive.str.html#invariant" userName="maxdamantus" createdAt="2025/08/22 16:30:13" color="#45d325">}}




{{<matomeQuote body="ファイル名が無効なUTF-8だったらどうなるのって？<br>GoもOSも、ファイル名がUTF-8じゃなきゃダメなんて言ってないと思うけどな。" userName="koakuma-chan" createdAt="2025/08/22 12:04:59" color="">}}




{{<matomeQuote body="Goのコンパイル速度にみんな驚くけど、昔のPCでも、TBとかTP、Modula-2とかClipper、QBとかのコンパイル言語は、もっと低いスペックで同じことできてたんだよね。" userName="pjmlp" createdAt="2025/08/22 12:45:07" color="#45d325">}}




{{<matomeQuote body="Rust 1.0の時、もし&strが&[u8]のエイリアスになってたら、今のRustの安全性はなかったかもね。<br>そうなってたら、UTF-8の安全チェックは全部ユーザー任せになって、あちこちで問題が起きてたはずだよ。<br>Rustの安全文化は素晴らしいね。" userName="tialaramex" createdAt="2025/08/22 13:31:25" color="#ff33a1">}}




{{<matomeQuote body="Goって「やり方が一つ」って点で開発者には優しいけど、その選択がちょっと古い気がするね。<br>若い開発者たちはmapやfilterみたいなメソッドとか、TypeScriptみたいな賢い型システム、もっと楽なエラー処理を求めてるけど、GoはまるでC出身者向けみたいだ。" userName="kace91" createdAt="2025/08/22 12:09:18" color="#45d325">}}




{{<matomeQuote body="まったくランダムなバイト列だとライブラリ関数はどう動くの？<br>コードポイントの繰り返し処理とか、UTF-8のルールを前提にしてるから、あらゆる行で複雑なエラー処理が必要になっちゃうよ。<br>もしUTF-8じゃないバイト配列なら、素直にバイト配列を使えばいいんだ。" userName="gf000" createdAt="2025/08/22 17:23:35" color="#ff5c5c">}}




{{<matomeQuote body="多くのコンパイル言語って、特にデカいプロジェクトだとコンパイルがめちゃくちゃ遅いよね。<br>C++とかRustがその代表例だ。" userName="remus" createdAt="2025/08/22 12:51:17" color="">}}




{{<matomeQuote body="バイナリ文字列には、並び替え、ハッシュ、ファイルへの書き込みとか、たくさんの有効な操作があるよね。<br>Goの設計者たちが作ったUTF-8は、これらのバイト文字列操作がちゃんとUnicode操作として機能するようにできてるんだ。<br>だから、たいていはエラー処理なんていらないよ。長さの測定だけはちょっと違うけどね。" userName="kragen" createdAt="2025/08/22 19:37:17" color="#45d325">}}




{{<matomeQuote body="Goの設計って、「簡単に間違ったこと」をさせて、データ損失みたいなヤバいバグを生むんだよな。99.7%動いても、残りの0.3%で困るんだ。UTF-8じゃないファイル名とか、nilと空文字列の区別とか、スレッドセーフじゃないmapとか、いくらでもあるんだよ。Rob Pikeたちがちゃんと考えてくれなかったから、こんなバグだらけなんだ！" userName="stouset" createdAt="2025/08/22 15:44:18" color="#ff33a1">}}




{{<matomeQuote body="Rustのクレートって、Goの依存関係管理とどう違うんだ？Rustだと依存性地獄とかサプライチェーン攻撃のリスクがあるって話だけど、Goと比べて何がそんなに違うの？俺、両方カジュアルに使ってるだけだから教えてほしいわ。" userName="tempay" createdAt="2025/08/22 12:33:15" color="">}}




{{<matomeQuote body="Goの設計って、GoogleのC++スタイルを真似てるように見えるんだよね。Goがいいって言う人も、C++のマクロとかツールに最初に現れたイディオムを評価してる場合が多いし。GoはC++よりオンボーディングしやすいPythonみたいなコンパイル言語で、C++みたいな使いやすさも持たせたかったのかなって。" userName="ants_everywhere" createdAt="2025/08/22 12:19:20" color="#785bff">}}




{{<matomeQuote body="Goってさ、Plan9のために書かれた言語が元になってるんじゃないの？Rob PikeがGoogleで働き始めるよりも前の話ってこと？ちょっと気になったんだけど。" userName="shrubble" createdAt="2025/08/22 14:22:26" color="">}}




{{<matomeQuote body="Rustでバイナリ文字列を操作したいなら、`&[u8]`型を使えばいいんだよ。UTF-8の有効性を仮定しないデータ操作ならこれ。標準ライブラリも対応してる。UTF-8文字列として扱いたいなら`&[u8]`を`&str`に変換する必要があるけど、その時に変換エラーをチェックできる仕組みになってるから安全なんだ。" userName="xyzzyz" createdAt="2025/08/22 19:57:29" color="#ff33a1">}}




{{<matomeQuote body="Goで無効なUTF-8文字列を作って出力するのはできるけど、`os.Create`とか`os.Open`に渡すと壊れるんだよね。Bashとかも文句言うし、neovimもそういう名前で保存できない。つまり、一見動くように見えても、OSのAPIと連携する部分で問題が出るってこと。" userName="zimpenfish" createdAt="2025/08/22 14:56:29" color="">}}




{{<matomeQuote body="みんな`map`とか`filter`メソッドを期待してるって言うけど、ホント？俺は「デバッグ駆動開発」って冗談で呼んでるんだけど、TDDみたいに最初からデバッグしやすいコードを書くことを心がけてるよ。forループの途中に`printf`をポンと置くだけでデバッグできるようなね。3amに必死でコードを読み解くのとかもう嫌なんだ。" userName="j1elo" createdAt="2025/08/22 12:27:36" color="#45d325">}}




{{<matomeQuote body="Goの`time`パッケージって最高だよね！数値として扱えるからすごくエレガントだし、名義型システムが光ってるよ。使うのも簡単でさ。<br>「`+= 8*time.Hour`ってできるの？」って聞いたらどう思う？（皮肉）" userName="porridgeraisin" createdAt="2025/08/22 12:10:05" color="">}}




{{<matomeQuote body="ファイルインターフェースがUnicodeの正しさを強制するのは、世界中に存在する非Unicodeファイルとやり取りできなくなるから、実際には壊れてるんだよ。もし言語がそれを強制してて、バイトの塊としてのフォールバックがないなら、それはダメ。Goはこの特定のAPIについては正しいんだ。" userName="jerf" createdAt="2025/08/22 13:10:11" color="#785bff">}}




{{<matomeQuote body="まあ、Goみたいに、ほとんど最適化されてない機械語を吐き出して、超弱い型システムを持ってたら、そりゃ速度には貢献するよね！" userName="gf000" createdAt="2025/08/22 13:01:14" color="">}}




{{<matomeQuote body="Goには`len`がバイト数を返すみたいな、ちょっとした不満点があるよね。" userName="inferiorhuman" createdAt="2025/08/22 17:32:37" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Javaのライセンス問題はデマだよ。OpenJDKはOracleが完全にオープンソースにしたし、CorrettoやAdoptOpenJDKも全部同じリポジトリのビルドなんだから。Red Hatのサポートに金払うからってLinuxがプロプライエタリって言うようなもんで、真剣に聞けないね。" userName="gf000" createdAt="2025/08/22 12:19:15" color="#38d3d3">}}




{{<matomeQuote body="`defer`が関数スコープで動く理由が全然分からない。ループでファイル処理してたら、ハンドルが閉じられなくてクラッシュしたんだよ。Goプログラマーに聞いたら無名関数でラップしろって言われた。でも、GoはC#より機能は少ないのにコードは小さく書けて、パフォーマンスも良いし、codegenのサポートも充実してるから気に入ってるよ。SQLはSQL、GRPCはprotobufで書くのが良いね。" userName="torginus" createdAt="2025/08/22 11:36:50" color="#ff33a1">}}




{{<matomeQuote body="`defer`は字句スコープがいい時も関数スコープがいい時もあるよね。今は関数スコープだから、字句スコープが必要なら関数でラップすればいい。もし字句スコープだったら、関数スコープが必要な時にどうするの？" userName="gwd" createdAt="2025/08/22 11:46:57" color="#ff5c5c">}}




{{<matomeQuote body="`defer`を字句スコープにすれば、両方の問題が解決するし、コードも分かりやすくなるのに。ちゃんとした言語なら、`{}`で新しいスコープを導入して挙動を制御できるんだからさ。" userName="gf000" createdAt="2025/08/22 12:02:01" color="">}}




{{<matomeQuote body="関数スコープの`defer`なんていらないんだけどな。ユースケースがあるとしても、他のコメントが提案したみたいにすればいいんじゃない？" userName="torginus" createdAt="2025/08/22 12:27:40" color="">}}




{{<matomeQuote body="今は`if (ある条件) { defer x() }`って書けるけど、字句スコープだと変数追加が必要になるよね。あんまり頻繁には起こらないけど、字句スコープの`defer`もそんなに必要ないでしょ。" userName="tgv" createdAt="2025/08/22 12:40:08" color="">}}




{{<matomeQuote body="逆だと思うな。字句スコープが必要なら`f.Close()`って`defer`なしで書けばいい。関数スコープの`defer`が欲しいのは、関数からいろんな終了ポイントがあるかもしれないからだよ。Goに`try/catch`みたいな制御フローがあれば字句`defer`の必要性は高まるけど、Goがサポートしない他の機能を求めてる人以外には問題じゃないでしょ。" userName="hnlmorg" createdAt="2025/08/22 16:42:11" color="#785bff">}}




{{<matomeQuote body="それが必要な場面ってどこ？俺は`defer`とかRAIIでレキシカルスコープに慣れてるから、今まで必要だと感じたことないな。" userName="iainmerrick" createdAt="2025/08/22 15:49:58" color="">}}




{{<matomeQuote body="1. 関数で囲むまでインデントが深まらない。<br>2. メカニズムが呼び出しスタックやスタックアンワインドに紐づく。<br>3. C言語の`goto fail`から来ると自然に感じる。<br>でもループ内で`defer`したい時に、ループ本体を関数にしないといけないのはマジでうざい。" userName="__s" createdAt="2025/08/22 13:47:34" color="#38d3d3">}}




{{<matomeQuote body="＞ もしレキシカルスコープで、関数スコープが必要だったらどうする？<br>関数スコープレベルでまとめて`defer`して、ファイルを開いた後に配列に追加するんだ。" userName="masklinn" createdAt="2025/08/22 12:10:41" color="">}}




{{<matomeQuote body="分かった。じゃあ、もしファイルを開く時にエラーが出て、forループの中からエラーを返して、開いてたファイルを閉じ忘れたらどうなるの？" userName="gwd" createdAt="2025/08/22 14:39:01" color="#38d3d3">}}




{{<matomeQuote body="レキシカルスコープだと、スコープ内で`defer fn{if(ある条件) x() }()`って書くのと同じだよ。" userName="raluk" createdAt="2025/08/23 08:46:51" color="">}}




{{<matomeQuote body="そうだよ、関数スコープの`defer`は保留中の`defer`を追跡するために動的なデータ構造が必要だから、ゼロコストじゃない。意図せず長く保持しちゃうバグの原因にもなりうるね。Go言語にはブロックする可能性があることの表示がないから、ミューテックスを取得して解放を`defer`し、ある関数呼び出しがブロックしてプログラム全体が一時的にハングするのに驚くことがあるかも。" userName="torginus" createdAt="2025/08/22 12:30:30" color="#ff5733">}}




{{<matomeQuote body="俺はGoを書かないけど、これを読むと、関数スコープは全然必要ないように感じるな。Javaなら、`try (SomeResource foo = SomeResource.open()) {<br>  method(foo);<br>}`とか<br>`public void method() {<br>  try(...) {<br>    // all business logic wrapped in try-with-resources<br>  }<br>}`って書くだけだよ。俺にはレキシカルスコープは関数スコープができることのほとんどを、予期せぬ挙動なしで達成できるみたいに見えるね。" userName="desolate_muffin" createdAt="2025/08/22 18:39:59" color="#ff5733">}}




{{<matomeQuote body="レキシカルスコープには`defer`を置くスタックがないんだ。" userName="cabirum" createdAt="2025/08/22 12:04:24" color="">}}




{{<matomeQuote body="`defer`をスキップすると`panic`が無視されるって、記事で問題が説明されてるよ。" userName="Too" createdAt="2025/08/23 05:49:57" color="">}}




{{<matomeQuote body="それは実務でほとんど起きない理論的な問題だよ。`defer...recover`はホットパスだと計算コストが高いし、Go言語は`error`型でエラーを出すのを推奨してるから、慣用的なGoコードでは`panic`を頻繁に使う必要はない。<br>`panic`はコードが継続不能になった時に使うもの。だからコードの境界点で`panic`をキャッチしたい。<br>Goでの俺の一番の不満は、`struct`にコンストラクタとデストラクタがないことだね。`NewClass`みたいな初期化方法は醜い回避策だし、ライブラリが手動初期化を必要とするか常にチェックしないといけない。デストラクタがないせいで`defer`が過剰に重要になってる。このせいで自分で参照解除フックを追加するのにランタイムハックが必要になるんだ（`CGO`でGPUのテクスチャデータをデアロケートする時によくぶつかる問題）。<br>デストラクタに反対する意見はエラーをキャッチできないってことだけど、`defer x.Close()`イディオムではエラーは無視されてるから、反論になるよね。<br>この変更と、`err`をいつも変数にする必要がないようにタプルもあれば、Goは人間工学的にずっと使いやすくなると思うな。<br>[0] https://medium.com/@ksandeeptech07/improved-finalizers-in-go...<br>[1] https://github.com/lmorg/ttyphoon/blob/main/window/backend/r..." userName="hnlmorg" createdAt="2025/08/23 08:10:09" color="#ff5c5c">}}




{{<matomeQuote body="Goでdeferを使うとき、コンパイラの内部処理を自分でやるんだ。関数の最初に開いたファイルのリストを作って、defer文でそのリストをループして全部閉じればいい。全然複雑じゃないよ。" userName="connicpu" createdAt="2025/08/22 15:14:24" color="#785bff">}}




{{<matomeQuote body="例にある2番目のコードは機能的なスコープでしかないよ。そもそもGoはtryブロックみたいな制御フローはサポートしてないしね。deferに関する他の言語の議論は、Goには直接当てはまらないことが多い。Goでそういう機能が欲しいなら、言語自体を変更する必要があるんだ。" userName="hnlmorg" createdAt="2025/08/22 19:56:29" color="#785bff">}}




{{<matomeQuote body="それって追加の関数に入れるより手間もかかるし、読みにくくなるんじゃない？両方の選択肢があればいいのにね。Goに「defer」パッケージがあったら便利そう。" userName="biztos" createdAt="2025/08/22 12:31:01" color="">}}




{{<matomeQuote body="ファイルを開いたらコレクションに入れて、開く前にdeferを登録すれば問題なく動くよ。deferはレキシカルスコープであるべきだと思うな。" userName="tczMUFlmoNk" createdAt="2025/08/22 15:09:54" color="">}}




{{<matomeQuote body="でも’some condition’は変わるかもしれないし、長くなったり、コストがかかったりするから、多分余分な変数が必要になるんじゃないかな。" userName="tgv" createdAt="2025/08/23 12:39:40" color="">}}




{{<matomeQuote body="Goの設計者がpanicをrecover可能にしたのは良くない決定だと思う。これがスタックアンワインドを必要として、panicが起きてもdeferが動く原因なんだ。ちゃんとしたRAIIアンワインドがないから、こんなひどい妥協案になったんじゃないかな。" userName="torginus" createdAt="2025/08/22 19:43:47" color="#785bff">}}




{{<matomeQuote body="C#ではSQLを書いたり、protobufのspecを使ったりできるんだ。他の選択肢もちゃんとあるんだよ。" userName="jayd16" createdAt="2025/08/22 15:28:34" color="">}}




{{<matomeQuote body="両方の機能を備えた言語で仕事したことあるんだけど、ブロックレベルのdeferしかない言語を使うと、条件分岐の中にでも関数レベルのdeferが欲しくなるんだよね。" userName="christophilus" createdAt="2025/08/22 11:43:25" color="">}}




{{<matomeQuote body="今のGoでも、両方のやり方ができるよ。もし広範囲のスコープが欲しくないなら、関数の本体を別の関数でラップすればいいだけさ。" userName="freeopinion" createdAt="2025/08/23 02:29:07" color="#ff5733">}}




{{<matomeQuote body="このパターン、よく使うよ。例えば、`a := Start(); if thingEnabled { thing := connectToThing(); defer thing.Close(); a.SetThing(thing) } a.Run(ctx)`って感じでね。" userName="atombender" createdAt="2025/08/22 21:17:13" color="#45d325">}}




{{<matomeQuote body="誰かがすでに返事してるけど、リソースを条件付きで取得して、失敗しても続行するときって話だね。例えば、リソースが取れたら`Close()`を`defer`して、ダメなら別のリソースを試すとか。俺のコードだと、条件付きロックの例があったな。オブジェクトリストを更新する際、変更が必要なオブジェクトが見つかるまでロックしないんだ。これなら、リストのスキャン中に他のスレッドがリストを使える。今思えば`RWLock`使えばよかったかも…。" userName="tgv" createdAt="2025/08/23 06:31:16" color="#ff5733">}}




{{<matomeQuote body="これって、Goとは違うルールの言語から来た人にとってだけ、本当の問題だと思うんだ。ブロックスコープの言語から来た人にとって、関数終わりに一時ファイルを条件付きで削除できないのは驚きだよね。でも、`defer`が動的でブロックスコープじゃないってのは、ベストじゃないってのは完全に同意するわ。" userName="nasretdinov" createdAt="2025/08/22 15:09:20" color="">}}




{{<matomeQuote body="ループの中身を即時実行関数で囲むってのは、コードを読みにくくすると思うな。”シンプル”で”分かりやすい”ことを自慢してる言語にしては、特にね。" userName="wtetzner" createdAt="2025/08/22 14:54:28" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="5年以上Golangプロジェクトでメモリ最小化に苦労してる。GCが遅い、ヒープ断片化（GoにコンパクションGCないから）でアロケーションを完全に避ける羽目になったんだ。デバッグも超大変。ヒーププロファイルはライブオブジェクトしか見せてくれないから、ゴミや断片化は不明で原因究明は手探り状態。静的バッファの再利用で`append`の落とし穴問題も頻発。標準ライブラリも再実装したよ。特殊なケースなのは分かってるけど、言語と戦ってるみたいで嫌になるね。" userName="openasocket" createdAt="2025/08/22 14:55:18" color="#ff5c5c">}}




{{<matomeQuote body="こういう時って、オフヒープにデータを移す方が楽だって分かったよ。GC言語だと全然簡単じゃないし、厄介な問題も増えるけどね。もしGoで実質的にC++やRustみたいなコードを書いてるなら、可能な時にその部分だけ元の言語で書き直すのが良いんじゃないかな:)" userName="nasretdinov" createdAt="2025/08/22 15:05:48" color="#38d3d3">}}




{{<matomeQuote body="＞プロジェクトのあるコンポーネントはメモリ使用量を最小限にする必要があって、Goでのその点では何度も苦労したよ。<br>それは問題に対して言語選びを間違えたってことだね。C/C++/Rust/Zigが合ってたんじゃないかな。" userName="Mawr" createdAt="2025/08/22 21:18:36" color="">}}




{{<matomeQuote body="このコメントがあまり役に立たないのは分かってる、ごめんね。でも、Goはこのユースケースには全く間違った言語で、会社が承認してる一部の言語しか使えないみたいな、企業的な理由で強制されたみたいに聞こえるな。”Beaten Path”って言葉があるんだけど、組織が特定の言語を選んで他の使用を禁止するような場合に使うんだ。" userName="andrewmcwatters" createdAt="2025/08/22 17:01:07" color="">}}




{{<matomeQuote body="いや、うちの会社でGoは広く使われてないよ。元開発者がGoを選んだのは、最小依存バイナリのコンパイル言語、手動メモリ管理なし、成熟度が高かったから（Rustは当時1.0）。メモリ制限は”あればいいな”程度だったんだ。数年間はうまくいってたけど、問題が浮上した。Rustへのポーティングも考えてるけど、5万行以上のコードベースだから大仕事だよ。" userName="openasocket" createdAt="2025/08/22 19:29:10" color="#45d325">}}




{{<matomeQuote body="＞元々の開発者たちが、Goがユースケースに合うと思ったから選んだんだ。<br>俺には納得できないね。メモリ要件が厳しいなら、Goを選ぶのは意味不明だ。20年前、Nokia向けJ2MEゲームをJavaで開発し、50-128KBのRAMに収めてたんだ。動的アロケーションなし、全て静的で、byteやcharが主流。画像も削りまくったよ。ターゲットデバイスにメモリ制約があるなら、徹底的に考えないとダメだね。" userName="p2detar" createdAt="2025/08/22 20:07:25" color="#ff33a1">}}




{{<matomeQuote body="メモリ要件の厳しさは数年後に判明したんだ。このアプリはエンドユーザーサーバーで動くシステムデーモンで、俺たちのリソース使用は顧客の負担になる。だから厳密なSLAはないけど、可能な限り最小限に抑えてるよ。バージョンアップで急にメモリ食ったりOOMになったり、CPUを使いすぎて顧客が困るのは避けたい。現在のp99 CPU/メモリ使用量は2年前とほぼ同じ（RSS 40MB未満）。キロバイト級のRAMじゃないけど、使用量は抑えたいね。" userName="openasocket" createdAt="2025/08/22 23:19:18" color="#ff5733">}}




{{<matomeQuote body="すごいね。CやC++でしか普通考えないような、ちゃんとした賢い思考が必要だったんだろうな。" userName="andrewmcwatters" createdAt="2025/08/22 21:29:50" color="">}}




{{<matomeQuote body="Rustってさ、俺の経験だとメモリ断片化の回避が苦手なんだよね。普通のRustでグローバルアロケータを使いまくると、断片化が起きるよ。カスタムアロケータを使うにはnightlyビルドが必要だし、実装も利用もいまだに超面倒くさいんだ。" userName="ozgrakkurt" createdAt="2025/08/24 08:40:33" color="">}}




{{<matomeQuote body="あの伝説の”Googleにとって十分なら、俺たちも使っていいだろ？”ってやつね。" userName="ozgrakkurt" createdAt="2025/08/24 08:38:58" color="">}}




{{<matomeQuote body="新しい”Green Tea”GCが役立つかもね？これは”メモリ中心的ではないにしても、少なくともメモリを意識した並行マーキングアルゴリズムで、互いに近いオブジェクトをまとめて処理しようとする”って説明されてるよ。<br>https://github.com/golang/go/issues/73581" userName="theobeers" createdAt="2025/08/22 15:38:51" color="#785bff">}}




{{<matomeQuote body="それ見た！俺たちのユースケースで役立つか、ぜひ試してみたいね。もちろん、今はアロケーションをかなり減らしてるからGCはそんなに仕事がないけど、どこかでミスしたら別だけどね。ストレステストとして、ホットパスに意図的にアロケーションを追加することになるかも。本当に欲しいのはコンパクションGCなんだけど、Goは後方互換性を壊さずにそれ追加できないって理解してるから、多分やらないだろうな。" userName="openasocket" createdAt="2025/08/22 16:19:10" color="#785bff">}}




{{<matomeQuote body="アリーナ実験には興味あるだろうけど、今は一時停止してるみたいだね。" userName="arccy" createdAt="2025/08/22 15:09:45" color="">}}




{{<matomeQuote body="ローカルのRedisかSQLiteインスタンスを埋め込むってこと？" userName="daxfohl" createdAt="2025/08/22 17:40:29" color="">}}




{{<matomeQuote body="GoでSQLiteを使うのも、生半可な気持ちじゃできないよ。" userName="diarrhea" createdAt="2025/08/22 18:20:54" color="">}}




{{<matomeQuote body="Goには欠点もあるけど、他のサーバーサイド言語にはない良いところを突いてると思うんだ。NodeやPythonより速くて、型システムも優れてる。Rustより学習曲線がずっと楽だし、良い標準ライブラリとツールがある。シンプルで通常一つのやり方しかない構文も良いね。エラーハンドリングは問題もあるけど、何でも”エラー”として受け取るNodeのcatch句よりは好きだよ。これ以上、または同じくらい良い言語って何か見落としてるかな？Go狂信者じゃないし、キャリアのほとんどはNodeでバックエンドを書いてきたけど、最近Goを調べてるんだ。" userName="SkepticalWhale" createdAt="2025/08/22 15:37:32" color="#ff5c5c">}}




{{<matomeQuote body="＞ NodeやPythonより速くて、型システムも優れてる。Rustより学習曲線がずっと楽だし、良い標準ライブラリとツールがある。シンプルで通常一つのやり方しかない構文も良いね。エラーハンドリングは問題もあるけど、何でも”エラー”として受け取るNodeのcatch句よりは好きだよ。<br>この段落、JavaやC#についても同じこと書ける気がするな。" userName="ecshafer" createdAt="2025/08/22 15:46:28" color="#ff5c5c">}}




{{<matomeQuote body="JavaやC#は学ぶこと多いけど、Goは1日あれば8割くらいマスターできるよ。" userName="acedTrex" createdAt="2025/08/22 15:58:47" color="">}}




{{<matomeQuote body="Pythonの型システムは最近大幅に改善されたから、個人的にはGoの構造型付けよりも断然優れてると思うな。" userName="viccis" createdAt="2025/08/22 17:14:43" color="">}}




{{<matomeQuote body="どの言語にも欠点はあるよね。Goはパフォもポータビリティも高くて、ランタイムもエコシステムも良いけど、nilポインタとかゼロ値とかデストラクタなし、マクロなしって問題がある。マクロがないせいでコード生成を多用するけど、それはマクロより厄介だよ。Goのこういう問題は、「とにかくシンプルに」っていう開発者のこだわりが原因なんだよな。Rustみたいにもっと複雑な言語のほうが、欠点は少ないけどね。" userName="bccdee" createdAt="2025/08/22 15:58:20" color="#38d3d3">}}




{{<matomeQuote body="「Node」をプログラミング言語って呼ぶのはちょっと違うんじゃない？NodeはJavaScriptのランタイムで、最近のプロジェクトはTypeScriptが多いしね。もしTypeScriptの話なら、Goの型システムよりTypeScriptのほうが優れてるって言ってるのは意外だな。TypeScriptは表現力高いから、Goより全然生産的だと思うよ。RustとGoについても同じことが言える。" userName="genshii" createdAt="2025/08/22 16:28:11" color="#38d3d3">}}




{{<matomeQuote body="コード生成はマクロより絶対良いって。Ken ThompsonがGoからマクロをなくしたのは、マクロを知らなかったからじゃないはずだよ。ASTベースのマクロは、無限ループとか変数捕捉とかの問題があって、デバッグも大変なんだ。R⁵RSみたいなマクロシステムも複雑だし、できることも限られてる。それに、マクロが展開された後のコードが見にくいのも困るよね。それに比べて、コード生成はデバッグしやすいし、変数捕捉みたいな変な問題もないし、出力されたコードもすぐ見られるんだからさ。" userName="kragen" createdAt="2025/08/22 20:00:28" color="#ff33a1">}}




{{<matomeQuote body="だいたい同意だけど、「一つのやり方」っていうシンプルなGoの思想にはちょっと疑問だな。Javaなんて、並行処理で少なくとも2つはやり方あるしね。C#は知らないけど。間違ってたら訂正してね。" userName="SkepticalWhale" createdAt="2025/08/22 16:08:25" color="">}}




{{<matomeQuote body="何もかも学ぶ必要はないって。C#は今や、Pythonスクリプトみたいに簡潔に書けるトップレベルプログラムを提供してるんだよ。名前空間も、クラスも、`main`メソッドもいらない。実行したいコードだけを1つのファイルに書けばいいんだ。詳しくはこちら: https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals..." userName="bob1029" createdAt="2025/08/22 17:12:19" color="#ff33a1">}}




{{<matomeQuote body="Goのコード生成は、正直テキストマクロと大して変わらないよ。Goでコード生成するときの一般的なやり方って、`text/template`パッケージ使うんでしょ？`protoc-gen-go`みたいな有名なツールでさえ、printfみたいな感じで実装されてるんだからさ。ASTマクロは複雑だけど、ちゃんとしたマクロシステムならASTを安全にいじるツールをくれるのに、コード生成だと結局自分で何とかする羽目になるんだよね。コード生成に「悪いほうが良い」みたいな魅力があるのは分かるけど、結局マクロのほうがマシだよ。" userName="bccdee" createdAt="2025/08/24 09:47:35" color="#45d325">}}




{{<matomeQuote body="コードジェネレータはコンパイラと同じだよ。コード生成に反対するってことは、コンパイラ使うことに反対してるのと同じくらい変な話だ。コンパイラを書くことは、「悪い方が良い」とか、脆いものを適当に作るってことじゃないんだから。だから、君の議論は間違ってるってこと。" userName="kragen" createdAt="2025/08/25 03:41:04" color="">}}




{{<matomeQuote body="うん、Pythonは型システムでGoよりはるかに進んでるね。型と実際のコードがズレてて実行時にエラーになるのが最大の欠点だけど、Goだって`any`とかリフレクション使えば同じことだ。Pythonには構造的パターンマッチングとか、型チェック、網羅性チェックまであるんだよ。型ステートプログラミングもできるしね。Pydanticみたいなライブラリは、使いやすさと型安全性を両立してて最高だ。足りないのは和集合型くらい。Goはこれと比べるとシンプルすぎるね。" userName="diarrhea" createdAt="2025/08/22 18:30:09" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
