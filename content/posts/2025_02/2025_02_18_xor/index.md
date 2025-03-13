+++
date = '2025-02-18T00:00:00'
months = '2025/02'
draft = false
title = '衝撃のXORとは？その秘密に迫る！'
tags = ["暗号", "コンピュータサイエンス", "アルゴリズム", "ビット演算", "セキュリティ"]
featureimage = 'thumbnails/red1.jpg'
+++

> 衝撃のXORとは？その秘密に迫る！

引用元：[https://news.ycombinator.com/item?id=43087944](https://news.ycombinator.com/item?id=43087944)

{{<matomeQuote body="俺のお気に入りのカーストなXORトリック、XORダブルリンクリストってのがあるんだ。各ノードが次と前のポインタを別々に持つ代わりに、2つのXORの単一ポインタを格納するんだ。イレギュラーなポインタだけど、イテレーションのときは前のノードのポインタと組み合わせたポインタをXORして次のノードのポインタを取得するのさ。これで双方向に走査できる。ちょっとアブノーマルかもね。" userName="an_ko" createdAt="2025-02-18T22:32:47" color="#785bff">}}

{{<matomeQuote body="これの欠点は、スムーズにアイテムを削除できる能力が失われることかな。ダブルリンクリストを使う理由はそれが多いから。あと、XORリンクリストをCで書くのは超面倒で、標準は同じポインタが同じ整数にキャストされることを保証してないから、uintptr_tにして、実質的に整然とした整数表現を維持しないといけない。" userName="mananaysiempre" createdAt="2025-02-19T02:47:04" color="#38d3d3">}}

{{<matomeQuote body="＞標準は同じポインタが同じ整数にキャストされることを保証しない。ポインタのサイズが整数のサイズと同じである保証もないよね。古いPowerPCではそうだった記憶がある。今はx86-64やAarch64が主流で、32ビットもまともで、以前の面白いワードサイズの機械はほとんど忘れ去られた。C標準は基本データ型のサイズに柔軟性を持たせるためのもので、標準が型間の関係だけを定義しているんだ。固定幅タイプがC99で標準化されるのに時間がかかったのは意外だね。" userName="AceJohnny2" createdAt="2025-02-19T08:09:22" color="#ff5c5c">}}

{{<matomeQuote body="俺が言いたかったのは、一般的な整数のことで、例えばpとqが（たとえば）voidポインタでp == qなら、(uintptr_t)p == (uintptr_t)qになる保証はないってこと。NULLに対しても同様。ポインタが同じメモリ位置を指している複数の方法が存在する場合があるってことだ。XORリンクリスト操作はこう書くべきなんだ。<br>struct node { uintptr_t link; };<br>void prepend(uintptr_t head, struct node *n) {...}なんで、例えばheadをstruct entry *にできないんだ。uintptr_tとして公開する必要があるんだ。" userName="mananaysiempre" createdAt="2025-02-19T13:12:36" color="#785bff">}}

{{<matomeQuote body="へぇ、そういうことか。このリストが崩壊する可能性があるのは、ポインタが正確に先頭か末尾を指していても、XORに使うビット表現が違うと問題が起こるんだ。実際にこの現象を見たことがある？" userName="jasonthorsness" createdAt="2025-02-19T19:49:09" color="">}}

{{<matomeQuote body="この問題が実際に破損を引き起こすかどうか確かではないけど、同じポインタが異なる整数に変換されるのは確かだよ。サンプルコードも見る？" userName="mananaysiempre" createdAt="2025-02-19T21:02:15" color="#45d325">}}

{{<matomeQuote body="現代の64ビットマシンでは、sizeof(int) != sizeof(int*)ってのはかなり真実だね。でも、sizeof(uint64_t)やsizeof(long)が等しいという前提で動いてるコードが多いかも。" userName="tomsmeding" createdAt="2025-02-19T08:29:21" color="">}}

{{<matomeQuote body="そうだね、もし前のポインタのペアを保持し続ければ、効率的な削除や挿入が復活するよ。隣接ポインタペアをWidePointer型としてカプセル化して、内部で動作させることもできるし。これで少し遅くなるかもしれないけど、スペースの節約になるし、他の操作が速くなる場合もあるかも。" userName="akoboldfrying" createdAt="2025-02-19T15:13:45" color="#785bff">}}

{{<matomeQuote body="ストレージをもっと減らせるかも。64ビットプロセッサを考えると、32ビットのアドレス空間で大抵のアプリに十分かもしれない。16ビットの近接ポインタとかも考えられるよ。データ指向デザインがうまく行くかもね。" userName="giovannibonetti" createdAt="2025-02-18T23:14:24" color="">}}

{{<matomeQuote body="＞64ビットプロセッサで、32ビットのアドレス空間が充分ってのは、Java仮想マシンが64ビットプラットフォーム上で使ってる32ビットの「圧縮オブジェクトポインタ」と関係があるね。8バイトアラインされているけど、32 GiBのメモリにアクセスできるんだ。" userName="nayuki" createdAt="2025-02-19T06:06:24" color="#38d3d3">}}

{{<matomeQuote body="冗談言ってるのはわかるけど、ポインタとインデックスを混同するのはちょっと危険だね。16ビットのインデックスは全然問題ないけど、16ビットのポインタはかなりやばいよ。それに、32ビットのポインタは状況によってはいい最適化になる。Javaだと、オブジェクトのアライメント次第だけど、32GBや64GBを超えない限りは32ビットポインタを使うとメモリをかなり節約できる。" userName="Dylan16807" createdAt="2025-02-19T03:39:53" color="#ff5c5c">}}

{{<matomeQuote body="16ビットの相対ポインタは、16ビットのインデックスと同じくらい役に立たないか、ひどいかのどちらかだね。" userName="eru" createdAt="2025-02-19T11:54:24" color="">}}

{{<matomeQuote body="範囲が限られた相対ポインタってあんまり良くないもので、基準がもう隣にないことも簡単に起きる。64k要素の制限があるよりもずっと厄介なことが多いんだ。" userName="Dylan16807" createdAt="2025-02-19T17:39:12" color="">}}

{{<matomeQuote body="Rustの借用チェッカーみたいなのがあれば、参照やポインタがちゃんと生存するべき期間だけ存在するようにしてくれるよ。" userName="eru" createdAt="2025-02-21T05:58:43" color="">}}

{{<matomeQuote body="つまり、”地雷”っていうのはデータが近くにないから使いにくい状況のことだよ。最初に書いたときは正しいかもしれないけど、ちょっとしたアップデートでそれが変わることもある。借用チェッカーがそんな状況にはあまり役に立たないと思うな。" userName="Dylan16807" createdAt="2025-02-21T19:51:51" color="">}}

{{<matomeQuote body="そうだね、柔軟性は失われる。それがパフォーマンス向上の代償だよ。" userName="eru" createdAt="2025-02-21T22:58:41" color="">}}

{{<matomeQuote body="こう考えてみて：16ビットのインデックスは滅多に価値がない。16ビットのポインタは、トラブルが10倍で状況が広がるのは20％だけ。それだけの価値はないと思うな。そんなに似たようなものじゃないよ。" userName="Dylan16807" createdAt="2025-02-22T05:02:17" color="#785bff">}}

{{<matomeQuote body="相対ポインタとインデックスはほぼ同じだよ。違うのは使いやすさ。大抵はどちらも役立たないと思う。" userName="eru" createdAt="2025-02-22T05:04:25" color="">}}

{{<matomeQuote body="インデックスは同じメモリ割り当てに含まれるから、大きな違いがある。配列のサイズに制限をかけているだけで、メモリ割り当てが複雑にならないんだ。もし大きいのが必要なら、いてもたってもいられないってわかるからね。小さなポインタサポートや整数をポインタに変換するサポートも言語に必要ないし。" userName="Dylan16807" createdAt="2025-02-22T05:12:11" color="#785bff">}}

{{<matomeQuote body="要するに、ポインタを使う代わりにインデックスを使ってるんだね。インデックスにはメリットがあって、もっとコンパクトで位置に依存しない。でも、ベースポインタが必要で、計算も少し増える。自分のアロケータが必要になるし、普通のヒープアロケータはオブジェクトへの任意のポインタを渡しちゃうから。" userName="GuB-42" createdAt="2025-02-19T13:25:04" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="ポートスキャンの効率的なデータ分析を考えてるんだけど、32個のポートの状態をビットフィールドで管理するってアイデアが面白いよね。IPv4アドレスを使って、ビットシフトで状態を挿入したりチェックしたりできるから、かなり速いしメモリも節約できる。全体のIPv4スペースで16GiBのメモリを使うところも魅力的。" userName="wfn" createdAt="2025-02-19T03:33:43" color="#ff5733">}}

{{<matomeQuote body="確かに25個の512MB配列に分けた方が良いかもね！それで分析しやすくなりそう。アドレス数も224<<24にするともっといいかも。" userName="Dylan16807" createdAt="2025-02-19T03:49:21" color="">}}

{{<matomeQuote body="＞25個の512MB配列になるって？<br>それは指摘に同意するよ、言葉遣いを誤ってたみたい。基本的な考え方をいじるのは面白いし、IPv4スペースをメモリにマッピングするのが楽しい。ただ、実際に使えるアドレスは少ないから、少ない計算で翻訳できるように工夫するつもり！" userName="wfn" createdAt="2025-02-19T16:34:49" color="#ff5733">}}

{{<matomeQuote body="8086が64本のアドレスピン持ってるの？それとも冗談だった？" userName="kjs3" createdAt="2025-02-19T02:30:59" color="">}}

{{<matomeQuote body="これやるとガーベジコレクタに嫌われるかも。データ構造がゴミって見なされるだろうね。" userName="ted_dunning" createdAt="2025-02-19T21:55:00" color="">}}

{{<matomeQuote body="なんでそんなトリックを使う必要があるの？" userName="DeathArrow" createdAt="2025-02-19T09:16:13" color="">}}

{{<matomeQuote body="リンクリストのストレージオーバーヘッドを減らすためさ。64ビットシステムだと要素ごとに8バイト節約できるんだ。" userName="ben-schaaf" createdAt="2025-02-19T09:24:12" color="">}}

{{<matomeQuote body="＞次ポインタと前ポインタをそれぞれ別で持つ代わりに、それをXORで一緒にするって？<br>真似っこみたいだけど、実際にポインタの違いを使うのともあまり変わらないんじゃない？" userName="lmm" createdAt="2025-02-19T01:53:31" color="">}}

{{<matomeQuote body="そうだけど、TFAでも述べられている通り、違いを保存するには追加のビットが必要なんだ。XORなら元のポインタのサイズと同じだから、扱いやすい。確かに、ポインタの差分だけで双方向のリンクリストを作るのはちょっと違法感あるよね。" userName="timerol" createdAt="2025-02-19T02:36:26" color="#45d325">}}

{{<matomeQuote body="＞前後のポインタの違いを保存するには追加のビットが必要って？<br>そんなことはないよ。ラップアラウンドを自然に起こさせれば問題ない。必要なのは関数だけだよ。" userName="mananaysiempre" createdAt="2025-02-19T02:55:45" color="">}}

{{<matomeQuote body="いやいや、32ビットポインタの前提で、通常の符号なし算術で足し算や引き算をするから、モジュロ２^32になるよ。要するに、足し算や引き算、XORがすべて逆操作できるのと同じトリックが使えるってこと。XORで数値を操作するのが面白いのは、その操作が自分自身の逆になるところだよ。" userName="atq2119" createdAt="2025-02-19T02:55:01" color="#ff5733">}}

{{<matomeQuote body="XORと差分の大きな違いは、XORの対称性のおかげで、リストを前後に歩くのに同じコードが使えることだね。" userName="Findecanor" createdAt="2025-02-19T07:42:53" color="">}}

{{<matomeQuote body="「640Kで十分」って時代のトリックを思い出すなぁ。今は制約の厳しいデバイス向けに取っておく方がいいと思う。" userName="esafak" createdAt="2025-02-19T00:58:03" color="">}}

{{<matomeQuote body="忘れちゃだめ！これは3次独立の線形ハッシュ関数なんだ。確率的にほぼ均一なサンプリングや論理関数の解のカウントに使えるって超便利だよ。解の空間を毎回半分にするから、例えば10個の解が必要になるまで加算を続けていくと、10に２^kを掛けるだけ！スゴくない？" userName="zero_k" createdAt="2025-02-18T19:26:16" color="#ff5c5c">}}

{{<matomeQuote body="これはXORの最もセクシーな使い方だよ！" userName="wfn" createdAt="2025-02-19T03:35:49" color="#45d325">}}

{{<matomeQuote body="XORに関するお気に入りの話は、Bryan CantrillがSunでの経験を語ったことだよ。彼が同僚とCのXORがない理由を話していたら、理由を確認するためにDennis Ritchieにメールを出すことになったんだ。そのやり取りがおかしくて印象に残っている！" userName="jjice" createdAt="2025-02-18T21:18:46" color="">}}

{{<matomeQuote body="DMRは本当に親切で助けてくれた人だな。80年代中頃にUnixの最初の他のポートについてメール送った時、数週間後にインストラクションセットのマニュアルが送られてきた。今でも持ってるよ。" userName="kjs3" createdAt="2025-02-19T02:49:55" color="">}}

{{<matomeQuote body="Cには論理的なXORがあって、それは’!=’演算子だよ。他の論理演算子とは違って、引数を単一の真理値に正規化する必要があるんだ。Cの真理値への変換演算子’!!’と組み合わせて、うまく使えるよ。" userName="wat10000" createdAt="2025-02-18T21:30:49" color="#ff5c5c">}}

{{<matomeQuote body="プログラミング20年やってて、仕事の面接でテストに失敗したことがある。" userName="Findecanor" createdAt="2025-02-19T07:57:42" color="">}}

{{<matomeQuote body="二重否定はいらないよ：！foo != !bar。" userName="gblargg" createdAt="2025-02-19T11:52:44" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="そうだけど、こういう変な書き方を使うと人を混乱させるかもね。" userName="wat10000" createdAt="2025-02-19T13:47:19" color="">}}

{{<matomeQuote body="それはビット単位のxorだよ。" userName="8n4vidtmkvmk" createdAt="2025-02-19T03:09:48" color="">}}

{{<matomeQuote body="それはビット単位のもので、論理的なものじゃないよ。" userName="201984" createdAt="2025-02-19T03:05:20" color="">}}

{{<matomeQuote body="Faulknerはショートサーキットできないからだって言ったけど、これの何が問題になるのか分からないな。詳しく教えて。" userName="penguin_booze" createdAt="2025-02-19T07:13:52" color="">}}

{{<matomeQuote body="論理専用の排他的OR演算子を追加する利点はないよ、||や&&とは違って。" userName="gblargg" createdAt="2025-02-19T11:54:18" color="">}}

{{<matomeQuote body="トピックは37:18から始まるよ。" userName="snvsn" createdAt="2025-02-18T22:24:18" color="">}}

{{<matomeQuote body="”Cについて、論理的なXORがないことを同僚と話してた。”Cは40年以上前からビット単位のXOR’^’を持ってるよ。" userName="SteveDavis88" createdAt="2025-02-18T21:52:49" color="#ff5733">}}

{{<matomeQuote body="すごい。車の絵文字を0x20でXORすると”歩行者禁止”の絵文字になるって。意図的かどうか分かる人いる？" userName="ipython" createdAt="2025-02-18T19:09:28" color="#ff5733">}}

{{<matomeQuote body="HNの絵文字取り除き機能を満たすために：<br> >>> from unicodedata import lookup, name<br> >>> name(chr(ord(lookup('AUTOMOBILE')) ^ 0x20))<br> ’NO PEDESTRIANS’" userName="mananaysiempre" createdAt="2025-02-18T19:30:33" color="">}}

{{<matomeQuote body="車の小文字って言ったら、ゴーカートかな。" userName="IncreasePosts" createdAt="2025-02-18T21:22:40" color="">}}

{{<matomeQuote body="🎉 → 🎩<br>🚀 → 🏔️" userName="rzzzt" createdAt="2025-02-18T20:07:04" color="">}}

{{<matomeQuote body="XORの例えとして、家の階段のライトがわかりやすい。下のスイッチを入れたら点灯、上で入れたら消灯。でもどっちかがオフだと点灯。" userName="grahamlee" createdAt="2025-02-19T09:56:21" color="#ff5733">}}

{{<matomeQuote body="オフィスの電気工事が違ってるのかも。部屋にスイッチ2つあるけど、ANDゲートみたいになってるよ。リビングは間違いなくXORだな。" userName="jihadjihad" createdAt="2025-02-19T13:38:59" color="">}}

{{<matomeQuote body="XORのスイッチってトリックだね。知っててもなかなか理解できない。叔父が工事したとき、逆にスイッチをつけてたのを思い出した。正しくつけないとANDスイッチになるよ。" userName="mdnahas" createdAt="2025-02-20T11:46:46" color="#ff33a1">}}

{{<matomeQuote body="XORって名称が嫌い。ほとんどの場合、パリティのことを指してるから。2つの時だけ一緒だけど、3つ以上はパリティだからね。" userName="adrian_b" createdAt="2025-02-19T11:13:17" color="">}}

{{<matomeQuote body="IEC 60617では、XORゲートは=1とパリティゲートは2k + 1ってちゃんと区別されてるんだ。だけど、設計ソフトでは時々期待外れがあるよ。" userName="danbruc" createdAt="2025-02-19T11:56:11" color="">}}

{{<matomeQuote body="数学における「exclusive or」は重要で、独自の記号もあるんだ。" userName="Tainnor" createdAt="2025-02-19T11:44:26" color="">}}

{{<matomeQuote body="＞「3つ以上の入力の時、exclusive orは1つの入力だけが1の時のみ値が1になる」<br>引用してほしい。" userName="JohnKemeny" createdAt="2025-02-19T12:20:43" color="">}}

{{<matomeQuote body="過去の論理学や文法のテキストを探せば、'or'の使い方についての意味が議論されている部分がいくらでもある。でも、引用はいらない。英語のコンテキストで十分。" userName="adrian_b" createdAt="2025-02-19T13:16:17" color="">}}

{{<matomeQuote body="数学は英語じゃないんだよ。整数の環を指にはめてるわけじゃないし、実数のフィールドでサッカーもできない。XORが何を意味してるのか混乱しているフリをしているのは君だけだね。意味はそのままなんだから、こんな意味論の議論が君にとって何の役に立つの？" userName="Tainnor" createdAt="2025-02-20T12:38:58" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="この解釈はエッセイ内で触れられてるよ。" userName="timdiggerm" createdAt="2025-02-19T14:59:16" color="">}}

{{<matomeQuote body="Kademlia分散ハッシュテーブルに関する話だね。各ノードが[0, 2^m)の範囲でランダムなビットを持って距離をXORで定義する。XからYに情報を速く取得する分散アルゴリズムを探してる。最初のノードXから目標のノードkを見つけるための視覚的な解釈が好きなんだ。Xの距離木を葉インデックス0, 1, 2…で作り、各ノードにX^葉インデックスのラベルを付ける。特定のラベルからの距離を示すんだ。" userName="sigbottle" createdAt="2025-02-18T23:14:27" color="#ff5c5c">}}

{{<matomeQuote body="自分が知っているのは、これはSimon TathamのPortable Puzzle Collectionの作者と同じ人なんだ。オフラインで暇なときにぜひ遊んでみてほしい。" userName="OuterVale" createdAt="2025-02-19T00:47:33" color="">}}

{{<matomeQuote body="そしてPuTTYを書いたのも同じSimon Tathamだよ。" userName="eminence32" createdAt="2025-02-19T01:04:15" color="">}}

{{<matomeQuote body="一番のポイントは、マインスイーパのアルゴリズムが、猜測の必要がないゲームを作っていることなんだよ。" userName="dlcarrier" createdAt="2025-02-19T08:44:47" color="">}}

{{<matomeQuote body="最近、カスタムの最適化ソルバー（例えばIsing Machines）がXOR問題でベンチマークを取ってるんだ。ガウス消去で多項式時間で解けるのに、ソルバーは指数関数的なスケーリングを示す。ただのパフォーマンスを測る良い方法だよ。McElieceシステムに関する実装も面白い。" userName="inasio" createdAt="2025-02-18T22:00:57" color="#ff5c5c">}}

{{<matomeQuote body="TI-83でZ80アセンブリを学んでたとき、機械語の1バイトが重要だったんだ。aをゼロにするために、’XOR a’を使ってた。これは1バイトの命令だけど、'LD a, 0'は2バイトも必要なんだよ。" userName="acjohnson55" createdAt="2025-02-19T12:52:31" color="">}}

{{<matomeQuote body="XORスワップの部分を修正するために著者にメールを送ったことがある。ある時、スワップの実装を‘XOR swap’に置き換えたけど、プログラムが壊れたんだ。要するに、同じ場所の値を入れ替えるとバグが出たってこと。" userName="mdnahas" createdAt="2025-02-20T11:37:41" color="">}}

{{<matomeQuote body="XORはLEETのFizzBuzz回答の一つでも使われているよ。" userName="niccl" createdAt="2025-02-18T20:07:01" color="">}}

{{<matomeQuote body="バイナリの量子化ベクトルでは、類似度は単にXORのポップカウントをビット数で割ることで計算できるんだよね。それをコサイン類似度や距離に変換する方法もあるよ。" userName="antirez" createdAt="2025-02-18T22:44:17" color="#45d325">}}

{{<matomeQuote body="XORで描画するのは前の状態を簡単に復元できるからだけじゃないんだ。黒白のディスプレイで矩形をドラッグしてると、填充された部分の上を移動すると見えなくなっちゃう。それがXORなら填充された部分が反転するから、矩形の全体がいつでも見えるんだ。ただし、静的なノイズが表示されてると無理だけどね。" userName="sfink" createdAt="2025-02-19T18:34:44" color="#ff5c5c">}}

{{<matomeQuote body="エルミタージュでは、先行技術があったにもかかわらずXORを使った描画に特許を取得した会社があったんだ。その特許でコモドールを訴えることに成功したんだって。この訴訟のコストがコモドールの崩壊に寄与したとも言われているよ。" userName="Findecanor" createdAt="2025-02-19T12:44:08" color="">}}

{{<matomeQuote body="効率的なアルゴリズムが知りたいな。整数のN x N配列を生成するのに、各エントリーはその列の上や行の左に出ていない最小の整数にする方法は？このスレッドに投稿するのはネタバレかも。" userName="nicknash" createdAt="2025-02-19T05:50:14" color="">}}

{{<matomeQuote body="“xor”って聞くだけで90年代のウイルスが自分自身をXOR操作で暗号化したり隠したりしてた頃を思い出すよ。アセンブリコードでレジスタをゼロにすることとか、懐かしい気持ちになるな。" userName="wvh" createdAt="2025-02-19T12:44:50" color="#785bff">}}

{{<matomeQuote body="XORはCliffordとCayley-Dickson代数の基本的な要素ごとの乗算なんだ。ただそれらがどう異なるか、各々の特性を持つには符号計算に全てがあるんだよ。" userName="aap_" createdAt="2025-02-19T12:52:34" color="">}}

{{<matomeQuote body="俺はXORをヘテロオペレーターとして覚えてるな。" userName="iamleppert" createdAt="2025-02-19T14:56:06" color="">}}

{{<matomeQuote body="8ビットコンピュータ（Z80や8086など）では、XOR REG,REGの方がREG←0の操作よりも速いことが多かったんだよ。" userName="daitangio" createdAt="2025-02-19T16:22:48" color="#38d3d3">}}

{{<matomeQuote body="日常生活では「または」というと、たいていXORを指すことが多いよね？" userName="dominicrose" createdAt="2025-02-19T10:10:10" color="">}}

{{<matomeQuote body="だから、あいまいさを避けるために“and/or”って表現がよく使われるんだよ。" userName="tsm" createdAt="2025-02-19T10:23:39" color="">}}

{{<matomeQuote body="データエンジニアとして、最近では二つのデータベース間のSQL方言の違いや、トランザクション分離の問題で行が抜けることがあるんだよね。<br>＞これらの二つのデータベースには異なるSQLダイアレクトがある。<br>それに、データをXORして比較する方法を考えてるんだ。整列を気にせずにデータが同じかどうか比べられる方法を見つけられたらいいな。<br>要するに、Datafoldのdatadiffみたいに、オンプレミスでも動くツールが欲しい。まだ試している最中だけど、整数をXORして何か有用なものが得られる気がする。" userName="NortySpock" createdAt="2025-02-19T00:43:27" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
