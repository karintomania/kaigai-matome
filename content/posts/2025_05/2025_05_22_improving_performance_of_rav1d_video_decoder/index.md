+++
date = '2025-05-22T00:00:00'
months = '2025/05'
draft = false
title = 'rav1dビデオデコーダーのパフォーマンス改善！'
tags = ["動画", "パフォーマンス", "最適化", "rav1d", "AV1"]
featureimage = 'thumbnails/cyan_orange2.jpg'
+++

> rav1dビデオデコーダーのパフォーマンス改善！

引用元：[https://news.ycombinator.com/item?id=44061160](https://news.ycombinator.com/item?id=44061160)




{{<matomeQuote body="u16を二つ比較する関連イシュー、面白いね。<br>https://github.com/rust-lang/rust/issues/140167" userName="mmastrac" createdAt="2025/05/22 13:05:58" color="#38d3d3">}}




{{<matomeQuote body="あの議論でstore forwardingに全然触れてないのが驚きだよ。-O3のコード生成はヤバいけど、-O2の出力はまともだね。structの一つが計算されたばかりの場合、それを単一の32ビットロードとしてロードしようとすると、store forwarding failureが起きて、ロードをまとめる利点がなくなっちゃう可能性があるんだ。インライン化されてない、PGOじゃないシナリオだと、コンパイラにはその最適化が適切か判断する情報が足りないんだよね。" userName="ack_complete" createdAt="2025/05/22 19:46:49" color="#ff5c5c">}}




{{<matomeQuote body="store forwarding failureの話はuArchによるんだよね。Apple siliconには制限ないみたいだよ。リンクあり<br>https://news.ycombinator.com/item?id=43888005<br>コンパイラの情報不足は関数境界をまたぐストアとロードの話かな？<br>余談だけど、X86 LLVMはpartial-store-to-load問題をIntel CPUで防ぐために特別なPassを持ってるんだ。リンクあり<br>https://github.com/llvm/llvm-project/blob/main/llvm/lib/Targ..." userName="mshockwave" createdAt="2025/05/23 05:08:58" color="#ff5c5c">}}




{{<matomeQuote body="store forwarding failureは個別のロードよりずっと悪いの？最適化を無効にするだけなら、やらない理由にはならないんじゃないかな。単一ロードの方がシンプルで、普通は速いし。" userName="Dylan16807" createdAt="2025/05/23 04:42:36" color="#38d3d3">}}




{{<matomeQuote body="ええ、たいていは、個別のロードやストアを使うより明らかに悪いね。だいたい10サイクルくらいのレイテンシが加わるから。これくらいあれば、サンプリングプロファイルでロードがホットスポットとして目立つには十分だよ。その余分なレイテンシが隠れる可能性もあるけど、そうだとしたら、個別のロード/ストアも問題にならないはずだよ。" userName="ack_complete" createdAt="2025/05/24 23:24:09" color="#ff33a1">}}




{{<matomeQuote body="今回一番いいなと思ったのは、この議論が「私もこの問題あります」とか「いつ修正されますか？」みたいな14ページにもわたる話になってないってこと。Web開発者としては、GitHubのissueって結構残念なんだよね。" userName="heybales" createdAt="2025/05/22 13:34:46" color="">}}




{{<matomeQuote body="絵文字リアクションが追加される前はもっとひどかったよ。メッセージの9割が文字通り「+1」だけだったもん。" userName="eterm" createdAt="2025/05/22 15:44:06" color="">}}




{{<matomeQuote body="これってインターフェースの問題なのかな… もしみんなが「私もだよ」ってボタンをクリックするだけで、完全なコメントじゃなくてユーザー名を示す最小限の表示がコメントの下に加わるだけだったら、1) みんな使うかな 2) あまりごちゃごちゃしすぎなくて煩わしくないかな？「私もだよ」の通知はミュートもできるかもね。" userName="NoMoreNicksLeft" createdAt="2025/05/23 15:43:05" color="">}}




{{<matomeQuote body="これってコンパイラ開発の複雑さを示してるみたいだね。Cコンパイラだって、一般的なケースでこの問題をうまく扱えるか怪しいと思うよ。" userName="rhdjsjebshjffn" createdAt="2025/05/22 19:36:20" color="">}}




{{<matomeQuote body="RustはCコンパイラと同じLLVMバックエンドを使ってるよ。もしRustがうまく処理できてるなら、それはClangの開発者がLLVMに渡す前に対応してるか、Clangのコード構造がRustには分からないバックエンドのパターンに引っかかってるかのどっちかだね。" userName="runevault" createdAt="2025/05/22 19:56:15" color="">}}




{{<matomeQuote body="Rustのこの問題は、Cコードでも試されてて、コンパイラが同じ問題を生成してるんだって。これはそのうち修正されるだろうし、CとRust両方のコードの役に立つだろうね。" userName="vlovich123" createdAt="2025/05/22 19:59:10" color="">}}




{{<matomeQuote body="自分で試した結果、GCCの方が問題がひどいことが分かったよ。このCコード：<br>typedef struct { uint16_t a, b; } pair;<br><br>int eq_copy(pair a, pair b) {<br> return a.a == b.a && a.b == b.b;<br>}<br>int eq_ref(pair *a, pair *b) {<br> return a-＞a == b-＞a && a-＞b == b-＞b;<br>}<br><br>Clangはeq_copyで良いコード、eq_refで複雑なコード。GCCは両方複雑なんだ。GCC -O2のeq_ref：<br>eq_ref:<br> movzx   edx, WORD PTR [rsi]<br> xor     eax, eax<br> cmp     WORD PTR [rdi], dx<br> je      .L9<br> ret<br>    .L9:<br> movzx   eax, WORD PTR [rsi+2]<br> cmp     WORD PTR [rdi+2], ax<br> sete    al<br> movzx   eax, al<br> ret<br><br>ここで遊んでみて：https://c.godbolt.org/z/79Eaa3jYf" userName="josephg" createdAt="2025/05/23 13:31:56" color="#38d3d3">}}




{{<matomeQuote body="この件が、FFmpegのTwitterアカウントがRustに反発してる原因なのか？ https://x.com/ffmpeg/status/1924137645988356437?s=46" userName="renewiltord" createdAt="2025/05/22 15:11:55" color="#785bff">}}




{{<matomeQuote body="僕はrbultjeが正しくベンチマークしてると基本的に信頼してるんだけど、rav1dの追跡チケットには、そこまで大きな違いが出てないマルチスレッドの数字が複数のプラットフォームで載ってるんだよね。https://github.com/memorysafety/rav1d/issues/1294<br>これって返信で説明されてるのかな？ログインしてないから最初のツイートしか見れないんだ。" userName="ZeroGravitas" createdAt="2025/05/23 09:46:45" color="#ff5733">}}




{{<matomeQuote body="コントリビューターのdav1dが、rav1dが遅れてるって報告してたよ<br>https://code.videolan.org/videolan/dav1d/-/merge_requests/17..." userName="ycomb_anon" createdAt="2025/05/24 15:44:43" color="#38d3d3">}}




{{<matomeQuote body="アクセスするにはxcancelに変えて。https://xcancel.com/ffmpeg/status/1924137645988356437?s=46" userName="viraptor" createdAt="2025/05/23 20:59:40" color="">}}




{{<matomeQuote body="ffmpegのTwitterアカウント読むだけで使う気失せるわ。まともな代替がないのが残念だけど、開発者マジ有毒そう。パイプライン全部自分で制御してるなら最高性能はもちろん素晴らしいけど、不特定多数のユーザーから信用できないデータを受け入れるなら、ffmpegは少なくとも年に数件はリモートで悪用可能なCVEがあるからな。サンドボックスしっかり閉めとかないとダメだぞ。ffmpeg.org/security.html みんなが安全で速い解決策を目指す中間地点があると思うんだけど、彼らがここで固執してるような立場じゃなくてさ。" userName="mmastrac" createdAt="2025/05/22 15:23:31" color="">}}




{{<matomeQuote body="うん、最初は面白かったんだけど、だんだんTwitterで”キャラ”作っちゃって、今はただただウザいね。" userName="saagarjha" createdAt="2025/05/23 08:44:08" color="">}}




{{<matomeQuote body="俺10年ffmpeg使ってるけど、特に有毒なんて思ったことないな。彼らは（すごい仕事してる他の多くの人と同じで）何にも分かってないジュニアな言語ファンボーイが、何十年もやってきた彼らの仕事を理解もせずに批判したり、馬鹿みたいな書き直し案ばかり出してくるのに、ほとんど我慢できないだけなんだよ。" userName="izacus" createdAt="2025/05/22 22:38:13" color="">}}




{{<matomeQuote body="彼らの仕事は認めるけど、あのTwitterスレッドはかなり不快だし、資金もらえなくて怒ってるみたいに見える。扱いにくくて資金提供者が資金出したくないって可能性は十分ある。「大量リソースがRustポートに、元は不足なのに」「代わりにXZバックドア」「RustはEsperanto並みに優れてる」ってツイートを引用。あの嫌味な態度悲しいわ。企業は安全なの求めてるんだから、Twitterで皮肉言ってないで協力しろよ。" userName="mmastrac" createdAt="2025/05/22 23:09:24" color="#ff5733">}}




{{<matomeQuote body="あんたの言う通りだね。これよくあるんだよ。SQliteの人たちとか、Linuxの半分とか、他のメンテナーも同じような熱狂的なのに遭遇してる。言語至上主義を扱うのはウザいし、ffmpegが不満ぶちまけても責められないわ。実際、あのTwitterスレッドはむしろためになると思うな。大手テック企業が実際のメンテナーじゃなくて、自分たちのペットプロジェクトにどうやって資金出してるかを示してるんだから。" userName="hitekker" createdAt="2025/05/23 09:05:36" color="#ff5c5c">}}




{{<matomeQuote body="あまりないね、AV1で作業してる場合を除けば。rav1dがそこでの代替だけど、セキュリティの利点のために性能をちょっとトレードオフする必要があるよ。ffmpegはこの分野で独占状態だから、彼らが提供する正確なトレードオフのセットを受け入れるか、さもないと…まあ、代替がないから受け入れるしかないね。もちろん、代替はもっと努力が投入されるまで、オリジナルと同じくらい良くなることはないよ。Rustのgzip/zipライブラリがC版を超えて全体的にもっと安全になるまで、”何年も”かかったもんね。" userName="mmastrac" createdAt="2025/05/23 14:21:07" color="#45d325">}}




{{<matomeQuote body="あの”リモートで悪用可能なCVE”のうち、実際に野外で悪用されたのはどれくらい？かなり多くのものがサービス拒否とかメモリリークのCVEでしょ、それってRustがunsafeと見なさないやつだし。" userName="throwaway94487" createdAt="2025/05/22 17:43:30" color="#45d325">}}




{{<matomeQuote body="rav1dじゃなくてdav1dを速くする方が良かったかもな。Olympic Recordいじるみたいなもんで、Bolt’sの記録が9.63sから9.64sに変わっても誰も気にしないけど、実際に9秒台で100m走れるならみんな気になるじゃん？人間ならね。ダチョウなら全然すごくないけど、ダチョウはOlympic 100 metre sprint出ないし。" userName="tialaramex" createdAt="2025/05/22 15:40:37" color="">}}




{{<matomeQuote body="バッファをゼロ初期化しないことによるパフォーマンス向上って記事を2日前に見たとこだったから、この記事、興味深いな。<br>https://news.ycombinator.com/item?id=44032680" userName="nemothekid" createdAt="2025/05/22 14:00:40" color="">}}




{{<matomeQuote body="タイトル地味すぎ。良い最適化2つで実際2.3%も速くなってるよ。" userName="brookst" createdAt="2025/05/22 12:51:57" color="#ff5c5c">}}




{{<matomeQuote body="1.5%の改善がaarch64だけって考えると、全部の数字を主張するのはちょっとフェアじゃないと思うな。armとかx86が（未来の）メインのデプロイ先になること考えたら、半分くらいと見るのが妥当かな。" userName="ohr" createdAt="2025/05/22 12:55:35" color="#ff5733">}}




{{<matomeQuote body="それ公平だと思うわ。でもテスト環境で2.3%改善したのは認めるべき。他の環境だと変な動きで逆効果になる可能性もあるかもね（たぶんないと思うけど）。" userName="brookst" createdAt="2025/05/22 13:21:49" color="#785bff">}}




{{<matomeQuote body="良い記事だったよ！16ビットの整数ペアを比較する非効率なコードを見つけたって発見、面白かったな。" userName="robertknight" createdAt="2025/05/22 12:12:00" color="">}}




{{<matomeQuote body="ありがとう！RustとかLLVMの人が、Rustはメモリ初期化がずっと正確だから、この最適化を可能な限りコンパイラにやらせられるか見てみたいな。" userName="ohr" createdAt="2025/05/22 12:22:12" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="この件なら、codegenに freeze intrinsicを足せばRustでもできると思うよ。そうすればLLVMがpoisonの値を決めてくれるから、最適化の邪魔にならないはず（値がpoisonじゃないの分かってるし）。" userName="adgjlsfhk1" createdAt="2025/05/22 13:17:10" color="#785bff">}}




{{<matomeQuote body="このケース、RustとCのコードが同じじゃないのが遅い原因かもな。Union trickもアライメントに影響するし。Cのstructは32ビットだけど、Rustのは16ビットだけ。たぶん実際は32ビットになるだろうけど、コンパイラが最適化で検証するの大変なのかも。<br>Rustのstructのアライメント、手動で指定してみた？" userName="kukkamario" createdAt="2025/05/22 15:14:18" color="#ff5733">}}




{{<matomeQuote body="そうなったら最高だけど、期待しすぎは禁物。LLVMもRustcも安定するまで時間かかる傾向あるからね。" userName="Ygg2" createdAt="2025/05/22 12:35:10" color="#38d3d3">}}




{{<matomeQuote body="バラバラだよ。新しい公開APIや言語機能は時間かかるかもだけど、LLVMでもRustでも内部変更や最適化漏れは数日とか数週間で直せるよ。" userName="pornel" createdAt="2025/05/22 14:14:13" color="">}}




{{<matomeQuote body="同条件ならコーデックはRustじゃなくてWUFFSにあるべきだけど、dav1dみたいに複雑なものをWUFFSで書くのはc2rustの修正よりずっと大変だろうね。千倍大変って言われても納得いくくらい。でも、文明のためにはやる価値あると思うんだ。WUFFSか、それに代わる特殊言語だけど、WUFFSがあるからさ。" userName="tialaramex" createdAt="2025/05/22 13:07:33" color="#ff5c5c">}}




{{<matomeQuote body="WUFFSはMatroska, webm, mp4みたいなコンテナファイルのパースには最高だけど、ビデオデコーダーには全然向いてないみたい。動的メモリ確保なしで動的なデータを扱うのは難しいだろうね。ビデオコーデックは単にファイルをパースするだけじゃなくて、かなり動的な状態を管理する必要があるんだ。" userName="IgorPartola" createdAt="2025/05/22 13:40:33" color="#785bff">}}




{{<matomeQuote body="動的な状態が必要ってのがピンとこないな。結局画面上のピクセル数は固定じゃん。毎フレーム全ピクセルが変わるのがコーデックがやるべき最大作業じゃない？コーデック作者じゃないけど、コーデックはフレーム間の’仕事’を最小限にするように設計されてるって直感なんだ。" userName="lubesGordi" createdAt="2025/05/22 13:49:08" color="">}}




{{<matomeQuote body="GIFとかMJPEGならそうかもね。でも、前方・後方キーフレーム、可変デルタ、動き推定、グレイン生成とかになると、すごく動的な状態が出てくる。エンコーダーの方が複雑な部分もあるけど、欲しいフレームに1からNフレーム必要だったり、デコードしないとメモリ使用量が分からない（4kだと8MB超でバッファ持ちたいとすぐ足りなくなる）。<br>将来はゲームみたいにフレーム生成も含むと思う。12fpsでも生成AIで中間フレーム補完して120fps出力とか。それはWUFFS向きじゃないだろうね。" userName="IgorPartola" createdAt="2025/05/22 14:04:15" color="#785bff">}}




{{<matomeQuote body="「...どれくらいメモリ使うか分からない」<br>実際には全部制約があるよ。AV1は参照フレーム最大8枚。シーケンスヘッダーで最大解像度指定。解像度で動きベクトル数は固定。フィルムグレインは追加バッファ1つ。互換性レベルで4kとか一般的な点は制限内（外は拒否）。主にハードウェア向けだけど、ソフトでも使える。ハード実装考慮してる限り可能だよ。" userName="derf_" createdAt="2025/05/22 15:15:38" color="#ff5733">}}




{{<matomeQuote body="「将来のビデオ圧縮はフレーム生成も含むと思う」<br>多くのコーデックはもうそんな感じ。過去（Pフレーム）や未来（Bフレーム）から次のフレーム「推測」する。違いは、ヘルプ用のメタデータと予測差分もエンコードすること。AIで予測改善は新しくない。圧縮率重視アルゴリズムはニューラルネット使うけど、計算重い。Hutter prizeはテキスト圧縮をAI/AGI問題と見てるくらい。" userName="GuB-42" createdAt="2025/05/22 16:44:16" color="#785bff">}}




{{<matomeQuote body="面白いね。可変サイズの差分で実行時動的バッファ確保、分かるよ。クールだね。でも技術的には不必要かも？だって、君が言うように4kで8MB超えても上限あるでしょ。コーデックは上限設定してるはず。コンパイル時事前割り当てしちゃえば？確かに複雑なデータ構造だけど。機能的には同じで動的確保コスト省ける。複雑だろうね、分かってる。どっちにしても、君が言ってること、コーデックが動的にメモリ確保する理由も分かったよ、ありがとう。" userName="lubesGordi" createdAt="2025/05/22 15:54:28" color="">}}




{{<matomeQuote body="「コーデックは basically フレーム間の’仕事’を最小限にするように設計されてる」<br>でも、そのためには状態を保持して計算必要。フレーム47がPなら、正しくデコードに46必要。Bなら46と多分48も必要。自分より「先」のフレームも展開して、次のデコードのために取っておく必要があるんだ。<br>それが「動的な状態」ってことだと思うけど？" userName="zimpenfish" createdAt="2025/05/22 13:58:55" color="">}}




{{<matomeQuote body="メモリ使用量は変動するけど、ビデオコーデックはメモリ要件の境界を導出できるよう設計されてるんだ。ハードウェア実装は動的にシリコン追加できないからね。" userName="wtallis" createdAt="2025/05/22 16:33:33" color="#ff5733">}}




{{<matomeQuote body="GOPエンコとかIPBフレームの仕組み知らないんじゃない？もし全部Iフレームなら考えてることもいけるかもね。Iフレームならそのフレームだけで全部の説明がつくけど、Pフレーム使うとデコードするにはIフレームのデータを持っておかないとダメなんだ。Bフレームだと、まだデコードされてないフレームのデータも必要になることあるよ。" userName="dylan604" createdAt="2025/05/22 13:58:51" color="#45d325">}}




{{<matomeQuote body="デルタの数に上限があるなら、動的メモリ確保って必ずしも必要ないと思うんだ。一部のcodecではシーンの変化によってサイズが変わるのも分かるけど。俺はcodec開発者じゃないから、外側から見てるだけなんだけどさ。一般的にパフォーマンス気にするならヒープ確保は最小限にしたいはずなのに、codecみたいに複雑でワケわかんないこといっぱいやってるのに、なんでヒープ確保は最適化しないんだろ？絶対すごく良い理由があるんだろうね。" userName="lubesGordi" createdAt="2025/05/22 15:59:03" color="">}}




{{<matomeQuote body="メモリ確保については実際君の言う通りだよ。ほとんどのビデオcodecはハードウェアdecoderを意識して書かれてるから、メモリサイズが固定されてるんだ。だからプロファイルでdecoderに必要なメモリ制約、例えば解像度とか参照フレーム数とかを厳しく制限してるんだよね。encodeについてはそうじゃないんだ。そっちはもっと自由度があるから複雑になるんだよ。" userName="izacus" createdAt="2025/05/22 22:42:31" color="#785bff">}}




{{<matomeQuote body="すごく良い理由は、単純にヒープ確保があんまり多くないからだよ。チェックは簡単。perf使って例えばffmpegでデカいファイルを/dev/nullにデコードしてみてごらん。プロファイルのかなり上位にmallocがないのがはっきり分かるはずだよ。”あんまり多くない”と”ゼロ”の間にはものすごく距離があるけどね。" userName="Sesse__" createdAt="2025/05/22 22:11:18" color="#ff33a1">}}




{{<matomeQuote body="圧縮アルゴリズムって、再帰的にすごく賢くなれるんだよ" userName="throwawaymaths" createdAt="2025/05/22 13:50:35" color="">}}




{{<matomeQuote body="面白いmemeから始まるなんて、良い投稿だって分かるね。最近の議論に関連してるみたいだよ：$20K Bounty Offered for Optimizing Rust Code in Rav1d AV1 Decoder (memorysafety.org) ｜ 108 comments ｜ https://news.ycombinator.com/item?id=43982238" userName="infogulch" createdAt="2025/05/22 12:35:57" color="">}}




{{<matomeQuote body="正直、彼が見つけた最初の最適化がperf使えばかなり明らかなことだったのはちょっと意外。バッファゼロ化の問題って最初の投稿でもう議論されてたと思ったんだけどな？2番目の最適化は確かにずっと複雑で面白かったけど、これもperfが指し示してたんだ。あのツールを過小評価しちゃダメだよ！" userName="lubesGordi" createdAt="2025/05/22 13:44:35" color="">}}




{{<matomeQuote body="見た感じ、ただの性能改善じゃなかったみたい。CとRustのバージョンで差分プロファイルを取って、手動で突き合わせたんだって。（perf diffはあるけど、シンボル名が違うとうまく合わないし、あんまり使われてないっぽいね。）" userName="Sesse__" createdAt="2025/05/22 22:09:28" color="#ff5c5c">}}




{{<matomeQuote body="彼はAppleデバイスのaarch64の視点から来たんだね。違う背景を持つ人が、「言われてみれば当たり前じゃん」っていう隙間に気づくことって、よくあるなって思うよ。" userName="sounds" createdAt="2025/05/22 14:50:40" color="">}}




{{<matomeQuote body="これ、めちゃくちゃ面白いね。rustcがそのtransmuteトリックやるのを何か邪魔してるの？<br>追記：次の段落読んでたら、コメントする前に［1］のこと知ってたわ。<br>［1］ https://github.com/rust-lang/rust/issues/140167" userName="smallpipe" createdAt="2025/05/22 16:04:36" color="">}}




{{<matomeQuote body="AV1はメディアエンコード分野で、ずーっと一番面白い進展を続けてるね。AVG-SVT-PSYも特に読んでみると面白いよ。" userName="Mr_Eri_Atlov" createdAt="2025/05/22 15:17:51" color="">}}




{{<matomeQuote body="素晴らしい仕事だし、記事もすごくいいね。プロファイリングと最適化って、ソフト開発で間違いなく一番好きなところだよ。" userName="jebarker" createdAt="2025/05/22 14:20:15" color="">}}




{{<matomeQuote body="このプロジェクト、よく分かんないな。dav1dって、コーディネートコードとしてほんの少しのシンプルで普通のCがあるだけで、99％assembly（x86_64とかrisc-v 64bitsとか）なんでしょ。" userName="sylware" createdAt="2025/05/23 12:54:16" color="">}}




{{<matomeQuote body="読み取り専用のdav1dのgithubリポジトリには、assemblyが79.8％、C languageが19.7％、その他が0.5％って書いてあるね。このリンク見てみて。<br>https://github.com/videolan/dav1d" userName="canucker2016" createdAt="2025/05/23 23:21:18" color="#ff5c5c">}}




{{<matomeQuote body="バッファの初期化をスキップすることって、コンパイラにとっては難しい問題なの？" userName="anon-3988" createdAt="2025/05/22 14:19:17" color="">}}




{{<matomeQuote body="特に、本来の初期化がassemblyで書かれた関数でやられる場合、コンパイラがその初期化を省略するのは難しいんだよ。" userName="brigade" createdAt="2025/05/22 16:26:28" color="#45d325">}}




{{<matomeQuote body="ゼロ初期化が無駄って証明すんの、マジで難しいんだよね。だって、そのゼロになった値をプログラムの他の場所が絶対読まないって証明しなきゃいけないんだもん。コンパイラって配列のインデックス一つ一つまで追っかけてないからさ（そもそも配列のサイズすら分かんないこと多いし）、超大変。" userName="adgjlsfhk1" createdAt="2025/05/22 14:56:55" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="バッファ初期化しないのは簡単なんだよね。難しいのは、ひょっとしたら初期化されてないかもしれない値を安全に読めるように保証することなんだよ。" userName="empath75" createdAt="2025/05/22 14:46:00" color="">}}




{{<matomeQuote body="この件だと、初期化がアセンブリでやってて、コンパイラには見えないから難しいんだと思うな。" userName="mastax" createdAt="2025/05/23 01:21:30" color="">}}




{{<matomeQuote body="プロファイラの結果をブログにどうやって載っけたのか、めっちゃ気になる！HTMLノードそのままコピったの？" userName="saagarjha" createdAt="2025/05/23 08:49:44" color="">}}




{{<matomeQuote body="”Save Page WE”っていうChrome拡張機能でHTMLキャプチャしたんだ（開発者ツールでキレイにしてから）。で、全部正しいとこにスクロールするようにカスタムJavaScriptをちょっと足したよ。スタイリングをちゃんとキャプチャするには、その拡張機能が必要だったんだ。" userName="ohr" createdAt="2025/05/24 18:57:18" color="">}}




{{<matomeQuote body="ガチの最適化の話って、マジで面白いよね！特に、少しずつ良くなっていく様子とか、プロファイリングで数字がどう変わったか見せてくれる詳しいやつ。なんかね、読んでて超 satisfying （満足）なんだよ。Nicholas Nethercoteさんの”How to speed up the Rust compiler”シリーズ［1］とか、まさにこれ！他に何かオススメある？［1］" userName="mdf" createdAt="2025/05/22 14:01:28" color="#ff5c5c">}}




{{<matomeQuote body="（著者です）”How to speed up the Rust compiler”シリーズ、マジで大好き！同じ感動を伝えられたらと思って書いたんだ :)" userName="ohr" createdAt="2025/05/22 14:11:48" color="#785bff">}}




{{<matomeQuote body="名字がRavidって、マジでこの記事の icing （最高の部分）だね。名前になりそうな他のコーデックって”Real”くらいだけど、もう誰も使ってないしね。" userName="dirtyhippiefree" createdAt="2025/05/22 15:57:20" color="">}}




{{<matomeQuote body="君の出番だ：子供に”ffmpeg”と”vp-IX”って名前つけなよ！" userName="aidenn0" createdAt="2025/05/22 17:22:49" color="">}}




{{<matomeQuote body="こういう文章好きみたいだから、前に書いたブランチレス分割［1］について、ぜひ感想聞かせてほしいな。テーマの中で内容的に一番大変だったのに、他のほど読まれなかったんだよね。もしかして難しすぎたのかな？正直な意見もらえると嬉しいな。［1］" userName="Voultapher" createdAt="2025/05/22 18:01:08" color="">}}




{{<matomeQuote body="リンク先の記事読み終えたよ．面白かったし，上で言われてるみたいに結果にワクワクしたよ．いくつか新しいことも学べたしね．記事は専門的すぎるとは思わないな；詳細に少し深く踏み込んでるけど，新しい概念もちゃんと説明されてるし，俺にはちょうどいいレベルだったよ．とはいえ，何度かちょっと冗長だと感じたかな．もっと簡潔な表現にするには，もちろんたくさんの努力が必要だけど…それもある種の最適化だよね ）" userName="mdf" createdAt="2025/05/23 18:12:01" color="">}}




{{<matomeQuote body="時間割いてくれてサンキュー，楽しんでもらえたなら嬉しいよ．Cory Doctorowみたいな，書くほぼ全ての文が極めて簡潔で的を得てる人にはいつも感心させられるね．あれは俺が目指すところだから，次こそはもうちょっと上手くなれてるといいな ）" userName="Voultapher" createdAt="2025/05/24 16:39:59" color="">}}




{{<matomeQuote body="前に，ファイルを可能な限り速く処理するのが目的の記事を読んだことがあるんだけど，その記事ではデータチャンクを圧縮してL1 cacheに収める話が出てたんだ．cacheミスするより，L1 cacheからのデータ圧縮・解凍の方が速かったって．それ以来その記事を探してるんだけど見つけられないんだよね．誰か俺が話してる記事知らない？" userName="dpacmittal" createdAt="2025/05/22 17:38:49" color="">}}




{{<matomeQuote body="https://pharr.org/matt/blog/2018/07/16/moana-island-pbrt-all" userName="jms55" createdAt="2025/05/22 18:05:08" color="#785bff">}}




{{<matomeQuote body="AV1はすごいcodecだね．h264とかh265みたいな独自codecに取って代わることをマジで願ってるよ．h265と同等かそれ以上の性能なのに，完全に無料なんだから．今，IntelベースのMacbookだと一部のbrowserでしかsupportされてないけど，AMD，Nvidia，Intelの新しいvideo cardにはhardware decoderが含まれてるみたいだね．" userName="IgorPartola" createdAt="2025/05/22 13:34:51" color="#38d3d3">}}




{{<matomeQuote body="codecにはあんまり詳しくないんだけど，再生を処理するのはdevice側なの？それともprovider（upload先）なの？それとも両方？数日前に，Instagram ReelをAV1 codecでuploadしようとしたら，Samsung S20 FE Snapdragon版でpreviewするのに苦労したんだ（upload前もpreview中も）．それでH.264に戻したら，問題なく動いたんだけど．" userName="flashblaze" createdAt="2025/05/22 15:37:01" color="">}}




{{<matomeQuote body="再生は100％device側で処理されるよ．H.264の主な（というか実質唯一の）利点は，世界中のほぼ全てのdeviceに，めちゃくちゃ安いdeviceですらchipにH.264 hardware decoderが内蔵されてることなんだ．AV1のhardware decoderはまだ珍しいから，君のdeviceは多分software decodingに頼ってたんだね．それは理想的じゃない．" userName="sparrc" createdAt="2025/05/22 16:14:04" color="#38d3d3">}}




{{<matomeQuote body="Instagram（the provider）は互換性のためにtranscodeするだろうけど，おそらくpreviewはtranscodeの前だね．uploadするdeviceはそれを再生できるっていう前提があるんだろう．" userName="kevmo314" createdAt="2025/05/22 15:38:43" color="#45d325">}}




{{<matomeQuote body="うん，それは的を射てるね．Instagramは知らないけど，どんなproviderでもほぼどんなcontainer・codec・resolutionの組み合わせも扱えるはずだって思うよ（たぶん裏でffmpegを使ってるんだろうね）で，様々な再生device向けに異なるbitrateで異なる出力formatを生成してるんだ．InstagramがAV1を受け付けない（それはありそうにないけど）か，君が推測してるようにまだ処理が終わってないかのどっちかだろうね．なんで君のcommentが灰色になってるのか知りたいな．" userName="ta1243" createdAt="2025/05/22 16:35:12" color="#ff33a1">}}




{{<matomeQuote body="9070xtはdefaultでgameplayをAV1で録画するよ" userName="karn97" createdAt="2025/05/22 13:55:10" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
