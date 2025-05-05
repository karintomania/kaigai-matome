+++
date = '2025-04-28T00:00:00'
months = '2025/04'
draft = false
title = 'Rustからの移行 開発が困難になる壁とは'
tags = ["Rust", "プログラミング", "開発", "移行", "課題"]
featureimage = 'thumbnails/cyan4.jpg'
+++

> Rustからの移行 開発が困難になる壁とは

引用元：[https://news.ycombinator.com/item?id=43824640](https://news.ycombinator.com/item?id=43824640)




{{<matomeQuote body="またRustでのゲーム開発プロジェクト失敗か。悲しいね。Rustで5年近くメタバースクライアント書いてるんだけど、長すぎ。[1]<br>C#/Unityで似たこと始めた別の人は、2年足らずで動くもの作ってたよ。<br>これ、 discouraging だよね。Ecosystem の問題：Rustの3Dゲーム開発ユーザーはごくわずか。AAAタイトルなんて誰も作ったことないし、パフォーマンスの問題を突き詰めた人もいないんだ。<br>自分が first-person shooter 開発者が何年も前に解決してるはずのことを、ゼロから解決しようとしてる気がする。<br>低レベルのライブラリはバグだらけで churn が激しい。僕が使ってるスタックは Rend3/Egui/Winit/Wgpu/Vulkan なんだけど、Vulkan 以外は全部見つけにくいバグがあった。<br>ユーザーが少なすぎて、バグを wring out できてないんだ。<br>あと、イベントループを own したい crate が多すぎる。これらの crate は数ヶ月ごとに「リファクタリング」されて、APIが破壊的に変わるんだ。そうすると、みんなが sync し直すまで何ヶ月もスタックが壊れる。Language の問題：Back-references が難しい。AがBを所有してて、BがAを見つけられるってパターン、よく必要なんだけどRustだと難しい。RcとかArcでできるけど、設定がちょっと面倒だし runtime overhead が増える。一般的なワークアラウンドは3つある：<br>- Back-references が要らないデータ構造に設計変更する。綺麗だけど難しいし、無理なこともある。<br>- 全部 Vec に入れて、参照として index を使う。生のポインタと大体同じ問題抱えてるけど、Vec の外でメモリ破壊は起きない。Rustの安全性のほとんどを失う。他の人が書いた crate で難しいバグ追跡したとき、3回はこれが原因だった。<br>- “unsafe” を使う。大抵ダメ。Rustコードでデバッガー使った2回は、誰かが “unsafe” 使って botched した時だった。<br>Rustには single owner で back references を扱う一貫した方法が必要だ。いくつか提案はしたんだけど、compile time でのチェックとかより良い設計が必要なんだ。基本的な考え：Rc::Weak と upgrade みたいに動いて、compile time で overlapping upgrade scopes をチェックして upgrade が絶対に失敗しないようにする。<br>“Is-a” 関係が難しい。Rustの trait はオブジェクトじゃない。trait は associated data を持てないし、オブジェクト階層作るのにも適してない。でもみんなやろうとし続けてて、結果は ugly だね。[1] https://www.animats.com/sharpview/index.html" userName="Animats" createdAt="2025/04/28 21:38:01" color="#785bff">}}




{{<matomeQuote body="いい講演見たんだけど、名前は覚えてないや、配列インデックスのアプローチについて解説してたな。あれって結局、RustとかC++のスマートポインタみたいな保証がない自分独自のポインタを再発明してるだけだって、正しく指摘してたよ。" userName="_bin_" createdAt="2025/04/28 23:12:03" color="">}}




{{<matomeQuote body="でもUnityのGameObjectも同じ感じだよ。シーンに生成するときに確保して、破棄するときに解放する。破棄した後にアクセスすると例外出るし。これはまさにEntity IDと同じじゃん！GCだってメモリ安全性以外はそんなに得しないし、それは他の方法（Bevyみたいな世代別インデックスとか）でも手に入れられるよ。" userName="pcwalton" createdAt="2025/04/28 23:27:17" color="">}}




{{<matomeQuote body="でもRustだと借用チェッカーと結構戦うことになるし、複雑な参照のやつでは譲歩することもあるんだよね。Rust結構書いてて楽しいって立場から言ってるけどさ。" userName="_bin_" createdAt="2025/04/28 23:48:37" color="">}}




{{<matomeQuote body="＞RustやC++のスマートポインタみたいな保証がない…<br>これについては僕も考えたよ。自分でB-tree実装したんだけど、最初はCみたいにrawポインタで。unsafeだらけでMIRIも通らない、ひどいコードだった。最近Vecとインデックス使うように書き直したら、完全にsafeなRustになって、コードも40%減って、なぜか25%速くなったんだ！これこそ”ピークRust”かもね。配列インデックスでもbounds checkあるから多くの安全性は保たれるし、GC言語でもパフォーマンス上がるかも。これはFood for thoughtだね！" userName="josephg" createdAt="2025/04/29 03:47:53" color="#ff5c5c">}}




{{<matomeQuote body="＞これらのcrateも数ヶ月ごとに”リファクタリング”されて、APIが破壊的に変更される<br>これ、今Node開発触っててnpmでも同じような問題に直面してるんだよな。非推奨化の多さにうんざり。前と同じ機能使うためだけにAPI更新し続けるtreadmillに乗ってるみたいだ。" userName="janalsncm" createdAt="2025/04/28 22:43:54" color="">}}




{{<matomeQuote body="Rustは書いてないけど仕様は勉強したD言語ユーザーからの意見。借用チェッカーは面白いと思ってDにも後付け実装してみたよ。@liveってアノテーションで有効になる。でもOOPみたいに、借用チェッカーもそのうち万能じゃなく”ツールの一つ”になると思うな。色々な流行り見てきたからさ。メモリ安全性のための＃1は配列bounds checking、＃2は変数初期化、＃3はポインタ演算止め（配列や参照使う）だと自信持って言えるよ。言語がそれを保証できるんだ（Dはできる）。残りはメモリ確保エラーだけど、それはGCが解決する。" userName="WalterBright" createdAt="2025/04/29 06:07:53" color="#ff33a1">}}




{{<matomeQuote body="うん、そうだと思うよ。Rustでみんなが話してる課題ってさ、1じゃなくて0から始めるのを覚えるより大変そうに見えるもん…。" userName="scott_w" createdAt="2025/04/29 04:49:55" color="">}}




{{<matomeQuote body="いや、そうは思わないな。1始まりが普通だし、0始まりへの移行は大変だったはずだよ。慣れちゃっただけさ。arbitrary array indexingとかで変なインデックスから始めてみれば、どれだけ大変か思い出すかもね。Rustの”borrow checkerと戦ってる”ってのは、まだ慣れる前の段階ってことだよ。" userName="Ygg2" createdAt="2025/04/29 07:06:36" color="#ff5c5c">}}




{{<matomeQuote body="＞ たぶん、最初に0ベースの言語を学ぶ幸運に恵まれたんだろうね。そしたら、ほとんどの言語は楽勝だったと<br>C以降は0始まりが普通だから、多くのエンジニアは早く慣れたんじゃない？俺はCの本読んで納得したよ。”borrow checkerと戦う”のは、”1を足し引き”するのとは全然違う。Rustのメモリ管理を深く理解する方が大変そうだと思うな…。" userName="scott_w" createdAt="2025/04/29 09:03:32" color="">}}




{{<matomeQuote body="＞ 少なくともC以降のほとんどの言語は0ベースのインデックス<br>前に言ったけど、俺はC64でBasicから始めて、学校はPascalだったんだ。Cは大学からだよ。＞ ”頭の中で1を足したり引いたり”と”Rustでメモリ管理を深く理解”<br>実際はどっちも、書いてるうちにつまずいて調べて、いつの間にか分かるようになるもんだよ。どうやって分かったか思い出せないけど、もう間違いはしなくなったって気づくんだ。" userName="Ygg2" createdAt="2025/04/29 10:47:04" color="">}}




{{<matomeQuote body="いい記事だね。俺も配列のインデックス間違いでランタイムエラーしょっちゅう出すよ！winit/wgpu/eguiの破壊的変更の話もよく分かる。エコシステム進化は良いけど、追いつくの辛いよね。特にバージョン跨ぎで一緒に動かすとき。" userName="the__alchemist" createdAt="2025/04/29 02:13:13" color="">}}




{{<matomeQuote body="俺、さっき自分のやり方説明したのに、「どうやって分かったか分からない」って言われても意味分かんないよ。初心者と経験あるC++エンジニアがRustのユニークな機能を理解する難しさって、全然違うんだって。ここって経験者たちがどれだけRustが大変かって話してるスレだろ！もう何を言えばいいか分かんないよ。" userName="scott_w" createdAt="2025/04/29 20:09:51" color="">}}




{{<matomeQuote body="メンテナーが自動修正のlintルール付きで、非推奨にする機能を出せるエコシステムがあればいいのになぁ。" userName="schneems" createdAt="2025/04/28 23:56:21" color="">}}




{{<matomeQuote body="＞ 誰かがC#/Unityで似たようなことをやろうとして、2年以内に何かを動かしてた<br>でも、その場合ってガーベージコレクターがユーザー体験を台無しにしないの？だって、俺がいつもRust推しで聞く議論ってそこだからさ。" userName="amelius" createdAt="2025/04/29 08:01:22" color="#785bff">}}




{{<matomeQuote body="＞ あとね、0ベースを理解できない初心者と、経験あるC++エンジニアがRustの難しさを語るのとは全然違う<br>俺はその時もう初心者じゃなかった（C64 Basic、Pascal経験あり）。0インデックスは簡単じゃなく、慣れてるだけだ。Rustで迷うC++開発者は、Cで迷うPascal開発者と似てるね。---俺はborrow checkerと戦わない、直感で分かってる。0インデックスが簡単と思うなら、arbitrary index言語でインデックスを42とかに変えて試してみて。どれだけオフセットエラー出すか。それで慣れたら0に戻ればいいさ。" userName="Ygg2" createdAt="2025/04/30 22:03:10" color="#ff5c5c">}}




{{<matomeQuote body="インデックスの開始値を好きに変えられる言語（例えば42とか-5とか）でプログラムを書き直してみたら？どれだけオフセットエラー出すか見てみ？それに慣れてから0インデックスに戻ればいいよ．0と42の違いについて、俺がコメントする必要ある？" userName="scott_w" createdAt="2025/05/01 05:31:09" color="">}}




{{<matomeQuote body="D言語でGCと借用チェッカーを混ぜるのが自然なの？「段階的なメモリ管理」は理想だけど、技術的に問題がね．スタイル間の境界線で高コストな実行時チェックや非健全性が出ちゃう．Dのスタイルは別言語みたいなのか、統合されてるのか気になる．GCも借用チェッカーも関数シグネチャに影響するし、GCはグローバルな性質を持つ問題も．借用チェッカー向きのプログラム（https://news.ycombinator.com/item?id=34410187参照）の話もあったね．" userName="chubot" createdAt="2025/04/29 09:27:43" color="#ff5733">}}




{{<matomeQuote body="俺はそういうの（記事の困難）ないな．ゲームロジックは必要なデータ構造がシンプルだから．俺の経験では、所有権と借用ルールはゲーム開発の邪魔にならないよ．もちろん君の経験を否定しないけど、俺とは違うね．" userName="pcwalton" createdAt="2025/04/29 00:20:56" color="">}}




{{<matomeQuote body="UnityにはインクリメンタルGCがあって、フレームごとに少しずつ処理するから大きな一時停止がないんだ．それじゃなくても管理可能で、最適化の一部．プーリングやno alloc APIでフレームごとのアロケーションをほぼ0にできることも多いよ．GC一時停止ツールもあるから、ゲームプレイ中はGC無効にして、ロード画面とかで集めることもできる．これは大変だけど、ゲーム開発者には借用チェッカーより馴染みあるし、早く試せるのが重要．面白さとタイムトゥマーケットがゲーム開発の最優先だからね．" userName="superrad" createdAt="2025/04/29 09:08:48" color="#ff33a1">}}




{{<matomeQuote body="RustのGUIツールキットはバグ多くて、貢献しづらいのが現状．クロスプラットフォーム対応って最低限になっちゃうし、「何でもどこでも」っていうエコシステムの焦点は負担だと思うんだ．バックリファレンス（AがBを持ち、BがAを見つける）はRustで難しいパターンで、RcやArcでできるけど面倒だしオーバーヘッドがある．俺はArc使うのにためらうんだけど、他の高レベル言語だとほとんどのオブジェクトにArcと同じオーバーヘッドがあるんだよ．それは暗黙的だから忘れちゃうだけ．Arcを使うのを「オーバーヘッド」って見方やめようよ．" userName="WhyNotHugo" createdAt="2025/04/29 10:59:23" color="#ff33a1">}}




{{<matomeQuote body="C#のオブジェクト参照で間違ったポインタ演算はできないよ．GCならゲームのライフサイクルとメモリのライフサイクルを両方扱う必要はない．Unityだと、ゲームオブジェクトがDestroy()を呼ぶとネイティブメモリは解放されるけど、C#データはGCが扱う．普通のC#オブジェクトも同じ．それを配列インデックスと同じって言うのは間違いだね．" userName="jayd16" createdAt="2025/04/29 02:22:38" color="">}}




{{<matomeQuote body="いや．でも初心者の目で見る必要があるよ．何が問題かって、君は0だろうが1だろうが-1だろうが42だろうが、単に数を足したり引いたりするだけって言ったよね？簡単のはず、だろ？俺の推測では、インデックス変更自体はシンプルだけど、慣れるまで常に精神的労力が必要で、難しいだろうね．" userName="Ygg2" createdAt="2025/05/01 06:16:34" color="">}}




{{<matomeQuote body="安定したGUIツールキットを探してるなら、Slintがあるよ．" userName="ogoffart" createdAt="2025/04/29 05:55:19" color="">}}




{{<matomeQuote body="std::rc::Weakってバックリファレンスの問題解決できないの？" userName="ycombinatrix" createdAt="2025/04/29 05:46:35" color="">}}




{{<matomeQuote body="何よりも、この記事はなんで商用ゲームエンジンがゲーム開発のほとんどを占めてるかのいい教訓になるね。ゲーム作るにはたくさんのことやんなきゃだけど、それらはたいてい共通で、既製のソリューションがたくさんあるんだ。つまり、十分に成熟したインディーゲームプロジェクトは、結局Unityの非公式で場当たり的でバグだらけの実装を自分でやることになる（…それか、単に”Unity”って呼ばれてる非公式で場当たり的でバグだらけのゲームエンジンを使うか）。" userName="12_throw_away" createdAt="2025/04/28 20:23:08" color="#38d3d3">}}




{{<matomeQuote body="884のコメントへの返信だよ。Bevyを使うのは自分でゲームエンジンを書くことじゃないんだ。Bevyは40万行のコードがあって、結構なことができる。今Bevyを使うのは、ゲームエンジンを使って足りない部分を補う感じかな。Unityを使うよりは大変だけど、ゼロから自分で書くよりはずっと楽だよ。" userName="pcwalton" createdAt="2025/04/28 23:29:42" color="#ff33a1">}}




{{<matomeQuote body="でもBevyはUnityの機能の10％も持ってないでしょ。Bevyのドキュメント自体も、Bevyがまだ初期開発段階の間はGodotみたいなものを使った方がいいって警告してるよ。" userName="demaga" createdAt="2025/04/29 05:58:55" color="">}}




{{<matomeQuote body="僕は去年からスタジオでBevyに実際のアプリを出荷できるくらいの機能を追加する作業をしてるんだけど、Bevyはニーズによるけどそれが合理的にできる段階に来てるよ。" userName="pcwalton" createdAt="2025/04/29 06:43:19" color="">}}




{{<matomeQuote body="884のコメントで「Unityの実装を自分でやることになる」って部分は、Greenspun’s tenth ruleのパロディだよ。Greenspun’s tenth ruleは「十分に複雑なCやFortranのプログラムには、非公式で場当たり的でバグだらけで遅い、Common Lispの半分くらいの機能の実装が含まれる」ってやつね。HNで知らない４人のために。" userName="busfahrer" createdAt="2025/04/29 12:41:36" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これはRustとか商用ゲームエンジンが良いって話よりも、ゲームプログラマーがECSに妙に夢中になってるせいだと思うな。似たようなプロジェクトが何年も前にC++で繰り返されてたのを見ればわかるでしょ。" userName="hresvelgr" createdAt="2025/04/29 11:41:39" color="">}}




{{<matomeQuote body="ECSって基本的にはリレーショナルデータベースがすごく良いモデルだってことに気づいたってことだよね。でも、個人的にはメモリ内のduckdbみたいなのを使ってゲームの状態を保存するだけで、パフォーマンスやモデリングの価値をほとんど得られるんじゃないかって疑ってるんだ。特にターン制ゲームとかね。Bevyがクエリを型システムにエンコードしてるのも、LINQみたいなクエリビルディングと比べるとそんなに正気だとは思えないけど、それでシステムの依存関係を解決して並列化を実現してるんだろうね。" userName="setr" createdAt="2025/05/01 06:19:02" color="#ff33a1">}}




{{<matomeQuote body="890のコメントへの返信だよ。ECSがリレーショナルデータベースに似てるって言うけど、何にとって、どの程度良いモデルなの？何百万ものオブジェクトを処理するには確か良い。でもゲームプレイロジック全てにECSを使うのはどうかな。僕のコメントで言いたかったのは、良いゲームエンジンには人間工学的な使いやすさが一番重要ってこと。ECSはゲームプレイシステムのパフォーマンスがどうしても必要になった時の最後の手段として使うんであって、それより前に使うもんじゃない。その前にもっと無駄のないようにゲームプレイコードを調整するよ。" userName="hresvelgr" createdAt="2025/05/02 15:16:35" color="#ff33a1">}}




{{<matomeQuote body="それでも、自分でゲームエンジンを作るのが、実際にゲームを作って出荷するのに十分なほど知的に刺激的で、しかもほとんど無料でできるなら、10倍遅くてもスピードゼロよりはマシでしょ。" userName="doctorpangloss" createdAt="2025/04/28 20:32:01" color="">}}




{{<matomeQuote body="もしぶっちゃけ話すなら、自分でゲームエンジン作るのって、マジで開発プロセスをイライラさせて、時間かかりまくるし、燃え尽きるのも超早いよ。特に最初にゲーム作りたいだけだったのに、気がついたら自分のレンダーパイプライン弄ったり、別の車輪を再発明してたりする時なんかね。エンジン開発のある時点で、Android向けのエクスポートを適切な署名とか全部ひっくるめて何週間も悩まなきゃいけないとか考えただけで頭痛いもん。繰り返しになるけど、ゲームを作りたいだけだったのにさ。" userName="qustrolabe" createdAt="2025/04/28 21:18:01" color="#785bff">}}




{{<matomeQuote body="これって完全に主観っぽいね。一番大事なのは「ゲームを作りたいだけ」って部分にかかってる感じ。「ゲームを作りたいだけ」なら、うん、間違いなくUnityに行けばいいよ。CRUDアプリ作りたいだけなら、枯れた全部入りのWebフレームワーク使うべきなのと同じ理由。でもインディーゲーム開発者って色々な人がいて、ゲーム作りたいだけじゃない人もいるんだ。スタックの全部を自分で所有するのを楽しむ人も実際いるんだよね。OSを趣味で作る人もいるくらいなんだから、ゲームエンジンを作るプロセスを楽しむ人（あなたじゃないかもしれないけど）がいるって信じるのはそんなに難しくないでしょ？" userName="lolinder" createdAt="2025/04/28 22:17:06" color="#ff5c5c">}}




{{<matomeQuote body="自分のインディーゲーム用にエンジン作った経験者として言うと、マジでゲームと開発者の性格や目標によるね。大半のゲームは汎用ゲームエンジンで十分うまくやれるから、多くのケースでは前の意見が正しいだろうな。でも俺が作ってるゲームは、標準的なお決まりの方法じゃ作るのが難しいってところが魅力の一つだったんだ。関わってるシステムが斬新ってところが、自分にとっても（理想としては）お客さんにとっても魅力の一部なんだよね。" userName="turtledragonfly" createdAt="2025/04/28 22:01:27" color="#ff33a1">}}




{{<matomeQuote body="ゲームじゃなくてゲームエンジンを作りたいって思うなら、多分そのゲーム自体はそんなに面白くないんじゃないかなって思うね。Minecraftみたいにバズる可能性もあるけど、もし誰かがマジですごいゲームアイデアを持ってるなら、できるだけ早く世に出したいって考えると思うんだ。" userName="spullara" createdAt="2025/04/28 21:35:21" color="">}}




{{<matomeQuote body="UnityとかUnrealみたいに、みんなにアピールしてあらゆる種類のゲームをサポートする必要がある巨大な怪物を作るより、自分用にゲームエンジンを一つ書く方が桁違いに簡単だよ。2Dなら、基本的なエンジンをハッキングするのに数ヶ月で済む。3Dはもうちょっと大変だけど、何十年もかかるようなものじゃない。ポイントは、もしエンジンをうまく設計して素晴らしいツールを実装できたら、ゲームの実際のコンテンツを実装するのが速くなるはずってこと。だから、前払いコストで後が速くなる。少なくとも理論上はね。もちろん、市販品より劣るツールになってしまう可能性もあるけど、RPGみたいにコンテンツが大量にあるなら、コンテンツ作成の効率が少しでも上がるとすごく助かるんだ。今、純粋な商業的な視点から言うと、確立されたエンジンを使わないのはほぼ意味をなさないね。超リスキー。外部の才能を雇うのも大変。すごくすごく具体的なニーズがあって、それを一般的なエンジンで実装するのが難しい場合にだけ正当化されるよ。あとADHD脳の人にとっては、難しいことの方が簡単で、簡単なことが超難しかったりするから、そうね、エンジンを書く追加の精神的な刺激が助けになるかもね。" userName="cardanome" createdAt="2025/04/29 11:46:22" color="#785bff">}}




{{<matomeQuote body="これは正しいね。ゲームエンジンを作りたいなら、どんなゲームになるのか普通のエンジンで少なくとも遊べるプロトタイプを作って把握した方が良いよ。" userName="imtringued" createdAt="2025/04/29 12:42:14" color="#ff5c5c">}}




{{<matomeQuote body="実際のインディーゲームを作るのに6ヶ月（小さいの）から4〜5年かかるんだ。それを10倍したら、上限は40〜50年になるね。もちろん、そんな風にはならないけど、自分のゴールがゲームエンジンを作ることなのか、ゲームを作ることなのか考えなきゃいけない。両方同時にやるのは、統計的に見てほぼ失敗確定だよ。" userName="xandrius" createdAt="2025/04/29 07:46:33" color="#45d325">}}




{{<matomeQuote body="自分でエンジン作るのが知的刺激になって、タダ同然でゲーム出せるなら、10倍遅くてもゼロよりマシって言うけど、一般的には逆のパターンをよく見るね。自分でエンジン書く人は、エンジンに吸い込まれてゲーム出すのを忘れがち。（これは俺もエンジンを何回か書いて、結局ゲームを出さなかった経験から言ってる。エンジン開発はすごく楽しかったけどね）。問題は、エンジン自作の面白くてクールな部分より、退屈な部分の方が圧倒的に多いこと。レベルやセーブデータの読み込み保存、コンテンツパイプライン、複数の入力デバイス対応（ゲーム中にXBoxコントローラー繋いでもリアルタイムでアイコン変わるとか）、色んな解像度対応（ゲーム中に新しいディスプレイ繋いでもOKとか）、PC/モバイル/Switch(2)/XBox/Playstationで動くようにするとか…全部解決済みの問題で、正しく解決するのが特に知的刺激になるわけじゃない。もしゲーム売ってお金稼ぐのが目的なら、UnityかUnreal使うべきなのはマジで疑問の余地なし。Godotも怪しいね。カスタムゲームエンジンで成功したインディーはほんの一握りだよ。The WitnessとかAxiom Vergeとか俺のお気に入りもいるけど、あれは例外だね。そしてAxiom VergeはMonoGameベースなのに、Switch版を出すために大幅な作り直しが必要だったって話だし。" userName="mjr00" createdAt="2025/04/28 21:26:18" color="#785bff">}}




{{<matomeQuote body="本当に、ゲームを作りたい人もいるし、ゲームを作りたいって思ってるけど本当はゲームエンジンを作りたい人（俺も経験済み。ゲームを出したこともあるし、リリースしてないエンジンのガラクタ箱もある）がいるんだよね。遊べるゲームを出すってことは、楽しいプログラミングの断片以外にも、たっっっくさんのことが必要で、全く違う挑戦なんだ。Rustでゲームエンジンよりゲーム本体の方が少ないってのが、それを物語ってると思うよ。" userName="pornel" createdAt="2025/04/28 23:34:23" color="#785bff">}}




{{<matomeQuote body="これはゲームだけじゃなくて、人間、特に全く知らない人が使うように設計されたほとんどのアプリケーションに当てはまるね。大抵の場合、アプリケーションが完成するよりずっと前に「痒いところに手が届いた」って状態になっちゃうんだ。" userName="whartung" createdAt="2025/04/29 02:34:03" color="">}}




{{<matomeQuote body="俺もそのクチ．商業gamedevから移ってきて、なんか作りたいってウズウズしてたんだ．ずーっと”game作りたいな”って思ってたんだけど、どんなgameか全然思いつかなくて．で、ハタと気づいたんだ．”あ、俺作りたいのは実はengineだわ”ってね、ハハ" userName="mabster" createdAt="2025/04/29 08:29:28" color="">}}




{{<matomeQuote body="このassessmentには異論あるな．30年もGamedev communityに参加してきて、”don’t build an engine”ってのは、現実にはnobodyに向けられてない、ただのempty strawmanだと感じるね．engineのtechnical aspectsに興味ある人と、also shipping a gameしたい人のVenn diagramは、たぶんa few hundred individualsで成り立ってて、most of themはstudiosで働いてる人たちだよ．”the kid that wants to make an engine to make an MMO”は、gonna do neither．あれはただのmemeだ．I shouldn’t really care about it myself, but I do because Unity sucked the air out of every gamedev discussion and now there are almost no spaces to discuss anything advanced (even if it’s applicable to Unity/Unreal/Godot)．" userName="whstl" createdAt="2025/04/29 08:09:58" color="">}}




{{<matomeQuote body="Being intellectually stimulating doesn’t translate into sales, gameplay might．" userName="pjmlp" createdAt="2025/04/29 09:01:08" color="">}}




{{<matomeQuote body="My experienceはthe opposite．Plenty of intellectual stimulationはactually making the gameから来るよ．Designing and refining gameplay mechanics, level design, writing shaders, etc．<br>What really drags you down in gamesはiteration speed．It can be fun making your own game engine at first but after awhile you just want the damn thing to work so you can try out new ideas．" userName="CooCooCaCha" createdAt="2025/04/28 22:40:25" color="">}}




{{<matomeQuote body="I really like Rust as a replacement for C++, especially given that C++ seems to become crazier every year．When reasonable, nowadays I always use Rust instead of C++．But for the vast majority of projects, I believe that C++ is not the right language, meaning that Rust isn’t, either．I feel like many people choose Rust because is sounds like it’s more efficient, a bit as if people went for C++ instead of a JVM language ”because the JVM is slow” (spoiler: it is not) or for C instead of C++ because ”it’s faster” (spoiler: it probably doesn’t matter for your project)．It’s a bit like choosing Gentoo ”because it’s faster” (or worse, because it ”sounds cool”)．If that’s the only reason, it’s probably a bad choice (disclaimer: I use and love Gentoo)．" userName="palata" createdAt="2025/04/28 21:16:31" color="#45d325">}}




{{<matomeQuote body="俺にはpersonal-use appがあって、a hot loopが(after extensive optimization) runs for about a minute on a low-powered VPS to compute a result．I started in Java and then optimized the heck out of it with the JVM’s (and IntelliJ’s) excellent profiling tools．It took one day to eliminate all excess allocations．When I was confident I couldn’t optimize the algorithm any further on the JVM I realized that what I’d boiled it down to looked an awful lot like Rust code, so I thought why not, let’s rewrite it in Rust．I took another day to rewrite it all．The result was not statistically different in performance than my Java implementation．Each took the same amount of time to complete．This surprised me, so I made triply sure that I was using the right optimization settings．Lesson learned: Java is easy to get started with out of the box, memory safe, battle tested, and the powerful JIT means that if warmup times are a negligible factor in your usage patterns your Java code can later be optimized to be equivalent in performance to a Rust implementation．" userName="lolinder" createdAt="2025/04/28 22:29:38" color="#ff33a1">}}




{{<matomeQuote body="Rust is actually quite suitable for a number of domains where it was never intended to excel．Writing web service backendsはone domain where Rust absolutely kicks ass．I would choose Rust/(Actix or Axum) over Go or Flask any day．The database story is a little rough around the edges, but it’s getting better and SQLx is good enough for me．edit: The downvoters are missing out．" userName="echelon" createdAt="2025/04/28 21:31:24" color="#ff5c5c">}}




{{<matomeQuote body="＞C instead of C++ because ”it’s faster” (spoiler: it probably doesn’t matter for your project)<br>If your C is faster than your C++ then something has gone horribly wrong．C++ has been faster than C for a long time．C++ is about as fast as it gets for a systems language．" userName="jandrewrogers" createdAt="2025/04/28 23:10:18" color="">}}




{{<matomeQuote body="＞ C++はずっとCより速い”って主張の根拠は何？CもC++もメモリとか実行モデルは基本的に同じじゃん．両方で有効なプログラムもいっぱいあるし，C++でコンパイルするだけで速くなるなんて言わないよね？C++にあるパフォーマンス手法でCにないものなんて，ほぼないよ．どっちが速いとか言うのは意味ないと思うな．" userName="haberman" createdAt="2025/04/28 23:55:18" color="">}}




{{<matomeQuote body="時間があればいいけど，締切に追われてる時は借用チェッカーと戦いたくないな．コード品質には良いけど，Agileとかじゃ説明しづらい．経験あるRust開発者は少ないし．JavaはClassFactoryGeneratorFactoryとか言われるけど，仕事で書いてるけど他の言語と同じくらい読みやすいし，クリーンなコード書けるよ．良い汎用言語だね．" userName="noisy_boy" createdAt="2025/04/29 01:55:16" color="#ff33a1">}}




{{<matomeQuote body="CとC++はメモリモデルが違うけど，これが直接パフォーマンス差になるとは限らない．C++が速いって言われるのは，Cより速いコードを書きやすいツールがあるって意味で，最速実装自体はどっちもインラインアセンブリとかで変わらないよ．C++が速い例としてソートがあるね．Cの`qsort`はvoidポインタとか関数ポインタでオプティマイザ泣かせだけど，C++の`std::sort`は型が分かってるからコンパレータをインライン化できて，オプティマイザが楽になるんだ．" userName="mawww" createdAt="2025/04/29 01:02:31" color="#45d325">}}




{{<matomeQuote body="Javaはすごく生産的で，速くてツールも最高だと思う．でもゲーム言語としてはダメだね．GCポーズが許されないし（C#も），GPUサポートも微妙．Miguel de IcazaはGCプラットフォームでゲームエンジン作った経験が豊富で，参照カウント言語に移ってるみたい．［1］ https://www.youtube.com/watch?v=tzt36EGKEZo" userName="willtemperley" createdAt="2025/04/29 03:54:14" color="#ff5c5c">}}




{{<matomeQuote body="Cでsys／queue.h，C++でSTL使ってリンクリストにオブジェクト入れてソートしてみて．CがC++より速いってわかるよ．Cはイントルーシブだから外部ノードがいなくて余計なメモリアクセスがないんだ．C++のSTLは外部ノードが必要で，両方で寿命管理させたくないなら余計遅くなる．外部コンパレータはCの弱点だけどね．俺はCプリプロセッサで手動インライン化したことあるよ．" userName="ryao" createdAt="2025/04/29 01:21:11" color="#38d3d3">}}




{{<matomeQuote body="Rustは簡単なことにはすごく簡単だよ．．clone()とかArc／Mutexで借用チェッカー避けることもできる．GoとかJavaと同じようにね．でも複雑なことだとガードレール上げてくる．安全じゃないとコンパイルすら通らないし，バグだらけのアプリは作れない．だから，簡単にしたいか，正しくしたいか選ぶ必要がある．Rustは難しいけど，難しくしなくてもいいんだ．" userName="VWWHFSfQ" createdAt="2025/04/28 21:33:02" color="#45d325">}}




{{<matomeQuote body="多分ね．でも，同等のRustのバックエンドスタックなら，単一バイナリでデプロイできて，GCによるレイテンシ無しで50，000 QPSをさばけるんだ．それ全部タダで手に入るよ．型システムとパッケージマネージャーは最高だし，Sum Typeで書くと，nullがある言語より明らかにバグが少ないコードになるんだ．" userName="echelon" createdAt="2025/04/28 23:12:40" color="#38d3d3">}}




{{<matomeQuote body="うん，まさにそれ！他の言語だとmatchとかどこでもブロック開けるのが恋しい．メンテ無視するとRustでヤバいコード書けるけど．借用チェッカー耐えるのは，一つマスターすれば色々書けるし共有楽だから．でもRustは最初と複雑なところが難しいんだ．C++経験ないと挫折しがち．中間は楽しいけど，複雑だと設計見直すかunsafeでまた難しい．皆にRust勧める？いや，Goの方がコスパ良い．全部一つで済ませたいタイプ以外はね．Goはだいたい良い，Rustは全部使える．MaudとかMinijinjaもバックエンドで楽しい．TED talkサンキュー．" userName="aquariusDue" createdAt="2025/04/29 00:56:10" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="JVMの話以外は同意だなー。でもさ、みんなのアプリはそれぞれ違うもんね．" userName="djmips" createdAt="2025/04/28 21:19:56" color="">}}




{{<matomeQuote body="Tokio + Axum + SQLxはWeb開発でマジ革命だったよ。これまでのどのバックエンドスタックよりも断然生産性高いね．" userName="benwilber0" createdAt="2025/04/28 21:47:27" color="#ff33a1">}}




{{<matomeQuote body="Rustを選ぶケースは3つ。特にトラフィック多いサービスだとコストやエネルギー効率でRustやGoが有利だよ．今の環境問題考えるとこれは重要．でもAIがね、トレーニングや実行でめちゃくちゃエネルギー食うから、その消費に見合うか疑問だね．" userName="goku12" createdAt="2025/04/29 07:43:16" color="#45d325">}}




{{<matomeQuote body="＞＞ JVMは遅い”からJVM言語じゃなくてC++を選ぶ”みたいなもんだ（ネタバレ：遅くないよ）<br>ってあるけど、筆者はゲーム開発してるんだよね．Javaでパフォーマンス高いゲーム書くこともできるけど、ずっとガーベージコレクタと戦うことになるし、予測可能なパフォーマンス向けに書かれてないライブラリはほとんど使えないんだよ．" userName="wffurr" createdAt="2025/04/28 21:43:25" color="#38d3d3">}}




{{<matomeQuote body="彼がどんなにすごかろうと、バイアスはあるだろうし、Mono GCは良い実装じゃなかったね．<br>あと、彼の新しいお気に入りSwiftが現実世界で最新のトレースGCと比べてどれだけすごいかはこちらだよ．https://github.com/ixy-languages/ixy-languages" userName="pjmlp" createdAt="2025/04/29 09:06:52" color="">}}




{{<matomeQuote body="DBクエリって安全にやろうとすると難しいんだ．Rustだとその難しさがクレートにも出てて、僕のプロジェクトでdiesel使ってるけど、クエリ書くのが型のスープでごちゃごちゃになるよ．他の言語（安全じゃないけど）ではこんなことないんだ．Rustが好きでも、難しいことやってるから難しいって言うのは単純化しすぎだね．" userName="WD-42" createdAt="2025/04/28 22:08:39" color="#45d325">}}




{{<matomeQuote body="これを試したことない人たちは偏見で低評価してるけど、ただ知らないだけだよ．<br>RustはWebバックエンドではマジで最高の宝物だね．絶対的な宝物だよ．" userName="echelon" createdAt="2025/04/28 23:10:28" color="">}}




{{<matomeQuote body="筆者がJavaを使うべきって意味じゃなかったんだ．ちなみに筆者はC++じゃなくてRustを使ってたんだよ．<br>それはそうと、Unityに移ったらしいね．UnityはC#で、ガーベージコレクトされるよね？" userName="palata" createdAt="2025/04/28 22:14:13" color="">}}




{{<matomeQuote body="あなたの議論はC++のSTLを使う前提みたいだけど、多くの人は重要なことにはSTLを使わないし、あなたが言う欠点がない代替は簡単に書けるよ．それはストローマン論法だね．C++の強みは超最適化データ構造をコンパイル時に作れることで、それがパフォーマンスエンジニアリングでCより優れてる点だよ．" userName="jandrewrogers" createdAt="2025/04/29 02:46:00" color="#ff5733">}}




{{<matomeQuote body="これおもしろいリンクだけど、7年前のSwift 4.2をLinuxで動かした話じゃん。Swift 6.1だとどうなるんだろうね？Linuxサポートもよくなったし。" userName="willtemperley" createdAt="2025/04/29 11:03:21" color="#ff5733">}}




{{<matomeQuote body="＞GCの一時停止は許容できないって？JavaはZGCとかShenandoahみたいな低遅延（〜1msくらい）GCでこの5年くらいでめちゃくちゃ進歩してるよ。" userName="nayuki" createdAt="2025/04/29 05:42:18" color="#ff33a1">}}




{{<matomeQuote body="＞Rustはインタプリタ型言語より明らかに優れてるって？俺が上で挙げた言語のほとんどってインタプリタ型じゃないってことで同意してる？なんかGoだけを非インタプリタの選択肢として見てるみたいだけど…" userName="palata" createdAt="2025/04/29 08:33:26" color="">}}




{{<matomeQuote body="C++かJVMかはプロジェクト次第だと思う。性能が必要ならJavaで低レベルな最適化（AOS、プリフェッチ、キャッシュ制御、プロセス間メモリ共有など）は難しい。商用ゲーム開発でC++が使われるのはそのためだよ。" userName="mabster" createdAt="2025/04/29 09:02:26" color="#785bff">}}




{{<matomeQuote body="スイフトのオプティマイザが改善されたから、多分もっと良くなってるだろうね。でもこれは、”トレースGCは悪”、”参照カウントGCは良”ってのが、有名な開発者でもそう単純じゃないってことを示すだけだよ。" userName="pjmlp" createdAt="2025/04/29 12:08:25" color="">}}




{{<matomeQuote body="Rustの人気がエコシステムの課題（高い放棄率）につながっているという持論を展開。Goは退屈だけどツールが優れていて好き。でもRustのenumがないのは残念だな。" userName="klabb3" createdAt="2025/04/28 21:14:25" color="#ff5733">}}




{{<matomeQuote body="ソフトウェア業界がF＃を無視するためにできること全部やってるのが面白いね。これは俺がいつもF＃を最高の汎用言語として戻ってくることへのただの嘆きだよ。" userName="bmitc" createdAt="2025/04/28 21:21:24" color="">}}




{{<matomeQuote body="Windows開発者以外はMicrosoftが．NETを他のプラットフォームで維持することに期待できないという意見。過去の実績から、現在の努力も一時的で、また放棄される可能性があると考えているよ。" userName="Groxx" createdAt="2025/04/29 18:44:01" color="">}}




{{<matomeQuote body="前のコメントは間違っているよ。事実を無視して、自分のソーシャルバブルがそう言ってるからって主張したいなら別だけどね。．NETの一番人気のデプロイ先はLinuxだよ。https：／／dotnet．microsoft．com／en−us／platform／telemetry<br>MSが他にやってることと、．NETがどう進化して管理されてるかを同一視するのは、YouTubeとGolangを同一視するのと同じくらい違うね。" userName="neonsunset" createdAt="2025/04/29 19:29:41" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
