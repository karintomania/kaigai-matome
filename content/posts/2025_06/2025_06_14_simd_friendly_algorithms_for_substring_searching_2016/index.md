+++
date = '2025-06-14T00:00:00'
months = '2025/06'
draft = false
title = 'SIMDで爆速！文字列検索アルゴリズム'
tags = ["SIMD", "アルゴリズム", "文字列検索", "パフォーマンス", "プログラミング"]
featureimage = 'thumbnails/purple7.jpg'
+++

> SIMDで爆速！文字列検索アルゴリズム

引用元：[https://news.ycombinator.com/item?id=44274001](https://news.ycombinator.com/item?id=44274001)




{{<matomeQuote body="これ、ripgrepがRustのregexクレート経由で使うAVX2に似てるね。実装はこれ→https://github.com/BurntSushi/memchr?tab=readme-ov-file#algo...<br>記事との大きな違いは、最初と最後じゃなく、頻度分布でバイトを選んでるとこ。Two-Wayとかlibcのmemmemより結構速いよ。ベンチマーク見てみろよ。memmemみたいなのはAPIのせいで無駄な再構築が多いのが欠点だね。" userName="burntsushi" createdAt="2025/06/14 12:15:15" color="#785bff">}}




{{<matomeQuote body="へえ、面白いね。バックグラウンド分布ってどうやって知るの？　haystackをスキャンして分布取るのに時間かかりすぎない？" userName="jakobnissen" createdAt="2025/06/14 16:00:39" color="">}}




{{<matomeQuote body="それはバックグラウンド分布だから推測（heuristic）だよ。入力では変わらないんだ。" userName="burntsushi" createdAt="2025/06/14 16:30:37" color="">}}




{{<matomeQuote body="俺もWasm/WASI libcでSIMD最適化を実装してみたんだよね→https://github.com/ncruces/go-sqlite3/tree/main/sqlite3/libc<br>長いneedleとか、Quick Searchと組み合わせるのが役立つって気づいたよ→https://igm.univ-mlv.fr/~lecroq/string/node19.html" userName="ncruces" createdAt="2025/06/14 07:15:50" color="#ff33a1">}}




{{<matomeQuote body="C#でもIndexOfでSIMD実装されてるぜ。ここ見ろよ→https://github.com/dotnet/runtime/pull/63285" userName="mwsherman" createdAt="2025/06/14 17:34:47" color="">}}




{{<matomeQuote body="俺もSMIDメソッドで文字列検索や分割のいろんなアルゴリズムを実装したよ→https://github.com/naver/tamgu/blob/06aedf2f14895925d7b5a8e2...<br>ここに載ってるやつとは違うアルゴリズムを使ったけどね。" userName="clauderoux" createdAt="2025/06/14 07:46:23" color="#ff5733">}}




{{<matomeQuote body="君のアルゴリズム、簡単に教えてくれない？　ハイレベルな説明でさ。<br>記事のアルゴリズム1は最初と最後、2は最初の4文字をテストするみたいにさ。" userName="ncruces" createdAt="2025/06/14 08:48:17" color="">}}




{{<matomeQuote body="俺がやってるのは、まず元の文字列から2の倍数の長さのサブストリングを作って、それを整数に変換すること。例えば9文字なら8文字にして整数にする。4文字の場合のコード例も載せたけど、基本的には__m256iとか使って4バイト整数ブロックをまとめて探してるんだ。" userName="clauderoux" createdAt="2025/06/15 07:43:41" color="#785bff">}}




{{<matomeQuote body="数年前にZigの汎用SIMDを使って、LZ77ウィンドウ検索を改良して実装してみたことがあるよ→https://news.ycombinator.com/item?id=44273983" userName="Rendello" createdAt="2025/06/14 15:36:11" color="">}}




{{<matomeQuote body="これ読んでたらhparseを思い出したな。SIMDアルゴリズムでHTTPパースを超速くしてるやつだよ→https://github.com/nikneym/hparse" userName="klaussilveira" createdAt="2025/06/14 16:21:01" color="">}}




{{<matomeQuote body="swarアルゴリズムってさ、1バイトのアライメントのデータを8バイトのアライメントにキャストしてるからUB（未定義動作）になるんだよね。アライメントがズレてるせいでパフォーマンスが出ないのかも。" userName="eska" createdAt="2025/06/14 11:22:06" color="#ff5c5c">}}




{{<matomeQuote body="こういうのって「理想化された」コードだよね。アライメントとか境界チェックが間違ってて、3つもUBになる可能性があるんだ。SIMDのデモではよくあることだけど、境界ケースは退屈だから、ベクトルの面白い使い方だけ見せて終わりなんだよね。" userName="burntsushi" createdAt="2025/06/14 14:02:44" color="#38d3d3">}}




{{<matomeQuote body="数年前にSIMD文字列検索コードをいじったんだけど、境界ケースの修正がマジで大変だったわ。もうね、よっぽど必要で時間かける覚悟があるか、ripgrepとかRust Regexみたいに誰かが完璧にやってくれてるのを使う以外、触りたくないって思ったよ。" userName="Rendello" createdAt="2025/06/14 15:41:08" color="#ff33a1">}}




{{<matomeQuote body="そうなんだよね。サイズの仮定については記事にも書いてある。agnerのsimdライブラリも同じで、データを余分に確保してくれって要求してるみたいだよ。" userName="eska" createdAt="2025/06/14 15:47:41" color="">}}




{{<matomeQuote body="SIMDが効率よくなるのって、文字列のサイズどれくらいから？<br>SIMDの準備コードって、小さい文字列向けの普通の検索より高いことが多いからさ。<br>ハードウェアにもよるけどね。" userName="sylware" createdAt="2025/06/14 10:11:35" color="#45d325">}}




{{<matomeQuote body="ここでは逆になることの方が多いかな。<br>この記事のアルゴリズムはほとんど準備がいらないブルートフォースだから、大きくて周期的なneedleだと処理が遅くなることがあるんだ。<br>そうならないアルゴリズムは、もっと複雑な準備が必要になるんだよ。" userName="ncruces" createdAt="2025/06/14 10:23:54" color="#ff5c5c">}}




{{<matomeQuote body="え？<br>それは全部文字列のサイズによるよ。<br>SIMDの準備コードがどれだけ価値があるかは、いろんな文字列サイズでベンチマークしないと分からないんだ。<br>実際、準備コードは役に立たないことが多いし、SIMDの複雑さに見合うパフォーマンス向上も得られないことが多いんだよね。ニッチな用途でしか使われないことが多いかな。" userName="sylware" createdAt="2025/06/14 11:02:37" color="#ff5c5c">}}




{{<matomeQuote body="は？<br>アルゴリズム1見た？準備コードなんてsplatsだけじゃん。アライメントとか関係なく非アライメントデータでも動くんだぜ？<br>だから何？役に立つとしたら、どのくらいのサイズからだと思ってんの？（まあ役に立つとして、だけどね）" userName="ncruces" createdAt="2025/06/14 12:58:54" color="#45d325">}}




{{<matomeQuote body="これ以上はもう言えないよ。<br>まあ、こういうコードいじるならアセンブリ使えってこと。Cコードは参考にするくらいにしとけ（dav1d av1デコーダーとか見てみなよ）。" userName="sylware" createdAt="2025/06/14 13:20:51" color="#ff5c5c">}}




{{<matomeQuote body="俺もだよ。<br>実装した経験から言うと、needleが2バイトくらい短くても、haystackの最初の方に見つからないなら、もう十分速いんだ。<br>burntsushiのコメントも見てみなよ。彼らも小さいサイズで使ってる。まあ「極めて短い」haystackには別の使ってるけどね。でもさ、「極めて小さい」haystackなんてそんなにある？" userName="ncruces" createdAt="2025/06/14 14:10:50" color="#ff5733">}}




{{<matomeQuote body="え？そんなことしなくてもいいんじゃない？<br>rip grepのSIMDコードはRustで書かれてるよ。" userName="burntsushi" createdAt="2025/06/14 14:05:47" color="">}}




{{<matomeQuote body="libcのstrstrはダメダメだけど、muslは速くてすごいよね。<br>あとは名前を付けて、スマートシュートアウトに追加できるね。<br>最高のSIMDアルゴリズムと比べてどうなるか気になるな。" userName="rurban" createdAt="2025/06/14 09:25:52" color="">}}




{{<matomeQuote body="ベンチマークに興味ある？<br>muslのtwo wayと今回のアルゴリズムを比べたよ。<br>このファイルでこの行を探すベンチだよ：<br>https://github.com/ncruces/go-sqlite3/blob/v0.26.1/sqlite3/l...<br>muslからの改善はこの表でチェック：<br>https://github.com/ncruces/go-sqlite3/tree/v0.26.1/sqlite3/l...<br>すごいわけじゃないけど、そこそこ良くなってると思う。<br>muslはmemmemが得意だけど、Wasmのおかげでstrstrではちょっとズルできるんだ。<br>NULL終端文字列はマジで厄介だよね。<br>" userName="ncruces" createdAt="2025/06/14 10:21:06" color="#38d3d3">}}




{{<matomeQuote body="smartにもっとSIMDアルゴリズムが増えるといいね。<br>時間できたら遊んでみようかな。<br>" userName="MattPalmer1086" createdAt="2025/06/14 11:05:28" color="">}}




{{<matomeQuote body="見てみたけど、安全にするにはちょっと修正が必要そうだね。<br>needleとかhaystackを超えて読まないようにね。<br>たぶんそんなに手間じゃないと思うけど、最後の余りの部分の検索は変える必要があるかも。<br>" userName="MattPalmer1086" createdAt="2025/06/14 13:43:29" color="#ff5c5c">}}




{{<matomeQuote body="実は2016年の記事で、2018年にスペルミスを直したんだ。<br>でもまだ間違いがいくつかあるよ：<br>’expansive’は’expensive’→<br>’ridden off’は’written’だよ。<br>buldozerがstdlibでいまいちだったのに、SSE2だとWestmereと戦えたのが面白いね。<br>" userName="kristianp" createdAt="2025/06/15 04:38:39" color="#ff5c5c">}}




{{<matomeQuote body="別の言語を呼び出さずに、PythonからSIMDを直接使えたらいいのになー。<br>" userName="azhenley" createdAt="2025/06/14 13:23:38" color="">}}




{{<matomeQuote body="やあAustin！<br>君のブログの母音検出の記事（＜ https://austinhenley.com/blog/vowels.html＞）見たよ！<br>「別の言語を使わずにSIMDを直接使う」って、具体的にどういうこと？<br>PythonでSIMDを扱う方法はPeachPyとかMojoとか色々あるけど、どれかのこと言ってる？<br>（ちなみに僕は最後のグループだよ）<br>ASCIIの母音検索ならStringZillaのfind_first_of（＜ https://github.com/ashvardanian/StringZilla/blob/960967d78c7...＞）がいい感じだと思うよ！<br>" userName="ashvardanian" createdAt="2025/06/14 16:04:05" color="#ff5733">}}




{{<matomeQuote body="Pythonで遅いなら別の言語に変えれば20～50倍速くなるのに、なんでPythonでSIMD使いたいわけ？" userName="adgjlsfhk1" createdAt="2025/06/14 13:46:15" color="">}}




{{<matomeQuote body="そうなんだけどさ、もしコードの一部だけが文字列検索でそれが「ホットパス」なら、別の言語で書いて（LLMだろうがなんだろうが）バインディング作るより、Pythonから直接SIMDコード使えた方がめちゃくちゃ便利じゃん。" userName="jgalt212" createdAt="2025/06/15 00:17:26" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="問題が2つ。<br>1. Pythonのデータ型って全部パフォーマンス悪いのよ。<br>2. どっか一箇所最適化しても、今度は別のとこがボトルネックになるだけだし。" userName="adgjlsfhk1" createdAt="2025/06/15 13:51:08" color="">}}




{{<matomeQuote body="Cythonを使えば、そこからCのSIMDコードを呼び出せるぞ。" userName="kristianp" createdAt="2025/06/15 04:36:32" color="#785bff">}}




{{<matomeQuote body="Nimって言語試してみなよ。簡単なことならすぐ慣れるし、Pythonのモジュールも作れるんだぜ。" userName="rainmaking" createdAt="2025/06/15 15:36:22" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
