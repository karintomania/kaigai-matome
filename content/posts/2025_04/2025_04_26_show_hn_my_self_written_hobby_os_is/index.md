+++
date = '2025-04-26T00:00:00'
months = '2025/04'
draft = false
title = '自作の趣味OSがヴィンテージIBM ThinkPadでついに動いた！'
tags = ["OS開発", "自作OS", "プログラミング", "ヴィンテージPC", "個人開発"]
featureimage = 'thumbnails/blue4.jpg'
+++

> 自作の趣味OSがヴィンテージIBM ThinkPadでついに動いた！

引用元：[https://news.ycombinator.com/item?id=43803148](https://news.ycombinator.com/item?id=43803148)




{{<matomeQuote body="AIよりこういうの見る方がずっといいね。売れるわけじゃないけど、技術者がクリエイティブに自分の腕を磨いてる。10代後半に趣味のOS開発をめっちゃ勉強したなー。最高だったよ。今でもたまに小さいカーネル作ってみるんだ（最後はRISCVでパートナーにメッセージを表示させたやつ）。" userName="moon2" createdAt="2025/04/26 18:12:42" color="#ff5733">}}




{{<matomeQuote body="サンキュー！売るとかマーケティングとか心配しなくていいのはマジで気楽だよ。新しいアイデアが出てくるまで車輪の再発明しまくるだけ。" userName="joexbayer" createdAt="2025/04/26 18:17:39" color="#785bff">}}




{{<matomeQuote body="俺もずっとそうやってきたよ。unicornsにはならなかったけど、たくさんやってれば自動で売れるものも出てくる（ちょっとでも牽引力が出たら売っちゃう：会社経営は好きじゃないんだ、モノを作るのが好きなんだ）。こういうストレスとか騙し合いみたいなのがなくてね。正直、2000年の趣味が数百万ドルの価値になったのはラッキーだったけど、25年経った今でもうまくいってるよ。" userName="anonzzzies" createdAt="2025/04/27 12:50:33" color="#ff5c5c">}}




{{<matomeQuote body="AIを”くだらない”って決めつけるのはおかしいよね、賢いUXで包まれるまでは、それは完全にアカデミックな追求（クラフト）で、ほとんどお金にならなかったんだから。" userName="mvkel" createdAt="2025/04/27 17:09:16" color="">}}




{{<matomeQuote body="小さな趣味のガジェットは、人類史上で一番くだらない技術よりずっと面白い。" userName="bobxmax" createdAt="2025/04/27 15:54:59" color="">}}




{{<matomeQuote body="デフォルトフォントはもっと詰めれば洗練されて見えると思うよ。文字幅を狭くして、文字間隔を1ピクセルくらいにすると良いんじゃないかな。君のフォントシステムのこと詳しく知らないけど、固定幅のビットマップフォントかな？コード修正が大変なら気にしないでね。<br>実は俺もWeb OS作ってて、つい最近フォント周りを書き換えたばかりだから、今一番気になってるんだ。" userName="ayaros" createdAt="2025/04/26 16:33:48" color="#38d3d3">}}




{{<matomeQuote body="今のフォントが最適じゃないってのは同意するよ。基本的には最初に動いた元のフォントのままなんだ。ちゃんとしたフォントのレンダリングも調べたから、ToDoリストには載ってるよ。ただ放置してただけ。" userName="joexbayer" createdAt="2025/04/26 16:53:09" color="#785bff">}}




{{<matomeQuote body="俺も最初フォントには苦労したよ。画面表示用に3x4フォント作って、後で小文字とかも追加した。理想じゃないし、公開したら文句言われそうだけど、”応急処置だけどもっと作れるよ”って言う準備はしてるんだ。<br>プロジェクトにどれだけ注ぎ込んでるかって、ざっと見る人には伝わらないことが多いよね。でも大丈夫、俺たち自身がすごさを分かってるから。<br>君の動画見て、”めちゃくちゃクール！共感できる！”って思ったんだ。そう思ってる人の代弁としてコメントしたかっただけ。" userName="90s_dev" createdAt="2025/04/26 21:03:16" color="#ff5733">}}




{{<matomeQuote body="一つの解決策としては、FreeBSDの”vt”フォントファイルフォーマットとか、BDF、GNU UniFontのHEXフォーマットみたいなよく知られた形式でプラグインできるフォントファイルを受け入れるようにすることだよ。そうすれば、あとはみんなに好きなフォントを選んでもらうだけ。<br>例えば、https://robey.lag.net/2010/01/23/tiny-monospace-font.html とかどうかな。" userName="JdeBP" createdAt="2025/04/27 14:12:32" color="#45d325">}}




{{<matomeQuote body="フォントにはハマるよね。あの8x8のIBM ROMフォントをすぐに改善するなら、2つ提案。<br>1． 16x16の正方形にする。<br>2． ASCIIはIBM ROMより昔のホームコンピューターフォントを使う。ViznutのUnsciiにCommodore PETとかBBC Microの.hexファイルがあるよ。<br>俺は8x8のPETフォントを16x16にアップスケールしたことあるけど、モノスペース正方形フォントとして結構良い感じだったよ。古いフォントはそう設計されてるからね。" userName="JdeBP" createdAt="2025/04/26 18:12:18" color="#45d325">}}




{{<matomeQuote body="返信ありがとう！ 16by16 fontsを見てみるね。" userName="joexbayer" createdAt="2025/04/26 18:18:43" color="">}}




{{<matomeQuote body="Atari STのhi-res modeの8x16 fontが、もし君が太字でちょっと未来的なのが好きなら結構イケてるよ。<br>リンクか、ROMから直接引っ張ってきてもいい。<br>https://github.com/ntwk/atarist-font" userName="ahefner" createdAt="2025/04/26 19:44:01" color="#ff33a1">}}




{{<matomeQuote body="Linux consoleで使えるもっと大きいBDF fontsもあるよ。元々はx86じゃないマシンで使われてたと思ってたんだ。" userName="stuaxo" createdAt="2025/05/02 08:12:14" color="">}}




{{<matomeQuote body="variable-width fontsのサポート自体は結構簡単だよ（もしbit-packingするなら垂直に保存したくなるかもね）。でも結合文字を扱うのは複雑になるんだ（場所が違うし新しい文字を大きくする必要があるかもしれない）。<br>vector fontsにとって面白い問いは”これを違う解像度でレンダリングしてスケーリングしたら、位置は合うかな？”ってことだけど、これは根本的に誰も満足させられる答えがないんだ。<br>他のほとんどの難しさは単なるSmall Matter of Coding（と適切なAPIsの提供）にすぎないよ。" userName="o11c" createdAt="2025/04/26 17:55:23" color="#ff5733">}}




{{<matomeQuote body="情報ありがとう！ もっと調べてみる必要があるね。" userName="joexbayer" createdAt="2025/04/26 17:59:52" color="">}}




{{<matomeQuote body="昔のMacsにはすごく美しいbitmapped variable-width fontsがあったよ。そして比較的シンプルなfont file formatだったんだ。" userName="peterfirefly" createdAt="2025/04/27 21:35:09" color="">}}




{{<matomeQuote body="手厳しい反応だね！<br>”見て、俺operating system書いたんだぜ！”<br>”ふーん、fontはweakだね”<br>Peak HN IMOって感じだ。 :D" userName="throw-qqqqq" createdAt="2025/04/26 19:11:54" color="">}}




{{<matomeQuote body="OPがwindowingとfont renderingまで備えた趣味のoperating systemを丸ごと構築して、それをvintage notebookからbootさせたっていう事実は、めちゃくちゃ впечатляюще、そしてHNが普段熱狂的にupdootsするChatGPT frontendsとかChrome reskinsなんかよりずっとすごいよ。" userName="cyberpunk2066" createdAt="2025/04/27 04:39:27" color="#38d3d3">}}




{{<matomeQuote body="群衆の力が君を駆り立てる。群衆の力が君を駆り立てる。群衆の力が君を駆り立てる。" userName="alganet" createdAt="2025/04/26 19:20:08" color="">}}




{{<matomeQuote body="あれは真剣な建設的批判として言ったんだよ！ :)<br>＜３" userName="ayaros" createdAt="2025/04/27 12:01:59" color="">}}




{{<matomeQuote body="そう思ったよ。悪い冗談でごめんね、傷つけるつもりはなかったんだ。フォントの議論からビットマップとか技術的な話に発展して面白かった！言いたかったのは、こういう反応はHNでしか見られないってこと。すでに経験者がいて、そういう人がいるからここに来るんだよね♡" userName="throw-qqqqq" createdAt="2025/04/27 13:37:06" color="">}}




{{<matomeQuote body="これすごいね！今日また最初からやるとしたら、何か違うことする？低レベル部分（Cにこだわるか、C++の簡単なサブセット、他の新しい言語とか）にどんな言語が合ってると思う？あと、たくさん情報がある中で、他の人のコードをコピペするんじゃなくて、どうやって自分自身でやるのを続けられたの？" userName="sarkron" createdAt="2025/04/26 20:25:21" color="#ff33a1">}}




{{<matomeQuote body="フィードバックありがとう！一番違うのは、計画を立てることかな。最初は簡単なOSを作る目標だけだったけど、機能追加とか色々同時進行して技術的負債に。もっとUNIXに依存しないようにもする。<br>言語はCのシンプルさが好き。ユーザーランドは別言語も考えるかも。<br>最初から全部自分で書くのが目標で、それがプロジェクトの全て。コードはコピペせず、アイデアだけもらうルールに従ったよ。" userName="joexbayer" createdAt="2025/04/26 20:36:22" color="#ff5733">}}




{{<matomeQuote body="Linusの最初の計画は、i386の機能を全部学ぶためにLinuxを書くことだったんだ。他のシステムとの互換性は後回し。<br>Linus Benedict Torvaldsが1991/08/26に出したメッセージを読んでみて。<br>https://groups.google.com/g/comp.os.minix/c/dlNtH7RRrGA/m/Sw..." userName="greenavocado" createdAt="2025/04/27 04:38:34" color="#785bff">}}




{{<matomeQuote body="＞ただの趣味、GNUみたいに大きくてプロフェッショナルにはならない<br>ウケる（笑）" userName="zoky" createdAt="2025/04/27 12:20:51" color="">}}




{{<matomeQuote body="必ずしも計画なしなのが悪いとは思わないな。技術的負債は当然だし、ソフトウェアは時間をかけて育つもの。<br>僕も全部ゼロから自分で書く目標がある。まだ理由は分からないけど大事。<br>OS書いて実機で動いたなんて、すごい達成感だろうね！クールだよ。<br>これを見て、僕もプロジェクトを発表する気になった。ありがとう。<br>Zigは触ってみた？Cの代わりになるって聞くけど、OSをそれにポーティングする考えとかある？" userName="90s_dev" createdAt="2025/04/26 20:55:55" color="#ff5c5c">}}




{{<matomeQuote body="君のプロジェクト聞きたいな！他の人が作ったもの見るの、すごく刺激になるんだ。Zigはまだ試してないよ、カーネルは個人的にCが一番かなって思う。でもユーザーランドアプリにはぜひ使ってみたいね！" userName="joexbayer" createdAt="2025/04/26 21:05:07" color="#785bff">}}




{{<matomeQuote body="計画については、俺自身のプロジェクトでも同じように感じることがよくあるよ。何度も書き直したシステムがいくつかあるんだけど、事前に要求とかを細かく図示しておけば、その多くは不要だったんじゃないか、って思わずにはいられないんだよね。一方で、もしちゃんと計画立ててたら、ここまで来れなかったんじゃないか？って思うこともある。<br>「どれだけ時間や労力がかかるか知ってたら、このプロジェクト始めてたかな？」っていう、あれだよ。<br>それぞれのやり方には明確な利点と欠点があって、他の人たちもこのスレッドで探ってる通りさ。結局、最終的に大事なのは、ある程度進んだ後にそのプロジェクトに満足できてるか（そして誇りに思えるか）だと思うんだ。<br>俺も自分のプロジェクトでは「全て自分で書きたい」っていうアプローチを取ったんだ。自分の能力を証明したかったからね。そこそこ規模の大きなプロジェクトを作れるってことを、自分自身と他の人に見せたかった。これはつまり、ライブラリを使わずに、何度も車輪の再発明をすることになりがちだ。<br>面倒くさいけど、自分の作業を振り返って「これは正真正銘俺のものだ。俺がやったんだ」って思う時に得られる満足感は格別だね。<br>そうそう、「コードじゃなくアイデアをコピー」っていうのは、俺も一番心がけてることの一つだよ。時々、少なくともJSだと、問題にぶち当たって解決策を探すと、結局一つの妥当なやり方しか見つからないってことがある。結果的に書くコードが、問題に対する定型的な解決策みたいに感じられるんだ。Stack Overflowとかの検索結果を行ったり来たりして、複数の例から最高のテクニックやアイデアを siphon（吸い出す）して、自分の好みのスタイルで使えるコードにまとめ上げる、ってことをよくやってるよ。<br>最後に、言い忘れたけど、プロジェクトおめでとう！時間できたらすぐ試してみるね。" userName="ayaros" createdAt="2025/04/27 11:50:09" color="#785bff">}}




{{<matomeQuote body="計画ありきか計画なしか、っていう話に賛成だね。<br>計画なしの方が、目の前に深い作業の穴があって、たまに、その日やりたい気分になったものをつつく、って時に向いてるんだよ。<br>それに対して、DNA鎖より長いTodoリストがあって、6番目がつまらないからって5番目の後で諦めちゃう、みたいなやり方もあるし。<br>あ、あと、おめでとう、素晴らしいね。" userName="keyle" createdAt="2025/04/27 00:27:01" color="">}}




{{<matomeQuote body="サイドプロジェクトだと、計画があると熱意と勢いを維持するのがすごく難しくなるんだよね。ただの仕事みたいに感じちゃうから。" userName="stevage" createdAt="2025/04/27 00:45:28" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="まあそうだね、しっかり計画すると仕事みたいになっちゃうのかも。<br>俺が言いたかったのは、目標がどんなかというアイデアくらいは、ってことかな。そうすればもっとうまく機能を計画できるからさ。" userName="joexbayer" createdAt="2025/04/27 00:51:46" color="">}}




{{<matomeQuote body="ああそうだね、少なくとも設計目標と非目標のセットくらいはね。" userName="stevage" createdAt="2025/04/27 01:08:09" color="">}}




{{<matomeQuote body="アンチプラン：絶対に実装しないこと、とかね。" userName="exe34" createdAt="2025/04/27 14:27:33" color="">}}




{{<matomeQuote body="あまりUNIXに依存しない、って部分が気になるな－UNIXモデル（全てはファイル－もっと正確に言うと全てはシリアル接続）は趣味OSの抽象化としてはイマイチだったの？" userName="ummonk" createdAt="2025/04/27 02:33:24" color="#ff5c5c">}}




{{<matomeQuote body="いや、UNIXの抽象化はすごく好きだし、俺のOSでもたくさん使ってるよ。俺が言いたかったのは、GCCでコンパイルしたり、ldでリンクしたり、arでアーカイブしたりしてるから、C言語のUNIX的なやり方にマジで縛られちゃったってこと。POXISって言った方が適切かもね。<br>好きじゃないデザイン決定を”強いられ”たり、Cの書き方自体がすごくUNIX<br>/<br>Linuxっぽくなっちゃったんだ。もっと色々試したかったな、特にWindowsのC言語がいかに違うかを考えたら。" userName="joexbayer" createdAt="2025/04/27 07:00:21" color="#ff33a1">}}




{{<matomeQuote body="おめでとう！素晴らしいね、1977年にCommodore PET 2001を持ってた俺から見てもそうだよ。KolibriOSとMenuetOSx64をいじってたんだけど、俺も自分でOS作ってみたいなってずっと思ってたんだ。君はそれをやった！頑張り続けて！" userName="eggy" createdAt="2025/04/26 15:17:54" color="#785bff">}}




{{<matomeQuote body="ありがとう！励みになるよ！" userName="joexbayer" createdAt="2025/04/26 15:24:53" color="">}}




{{<matomeQuote body="マジでおめでとう！<br>プロジェクトに超感動してるよ！<br>ティーンの頃からOS Devファンだったから、この成果見れてめっちゃ嬉しい。<br>ちょっとグラフィック周りの初期化どうやったか気になるな〜。<br>応援してるよ！" userName="byte_0" createdAt="2025/04/26 19:33:59" color="">}}




{{<matomeQuote body="ありがとう！<br>ウィンドウとかグラフィックのほとんどはカーネルでやってるよ。<br>大変なとこはここの2つのサービスが頑張ってるよ:<br>https://github.com/joexbayer/RetrOS-32/blob/development/grap...<br>https://github.com/joexbayer/RetrOS-32/blob/development/grap..." userName="joexbayer" createdAt="2025/04/26 19:38:42" color="#ff5733">}}




{{<matomeQuote body="こんな風に趣味のプロジェクトに時間を使えたらな〜。<br>実用性とかどうでもいい。<br>“市場に出す”戦略とかどうでもいい。<br>ターゲットフィットとかどうでもいい。<br>ただ作って学ぶだけ。" userName="xyst" createdAt="2025/04/26 16:57:55" color="">}}




{{<matomeQuote body="うんうん！<br>マジでスッキリするよね。<br>実際に“使われる”とか市場とか考えなくていいの。<br>シンプルにただ楽しいから、学びたいから。" userName="joexbayer" createdAt="2025/04/26 17:08:18" color="">}}




{{<matomeQuote body="ちょっと気になったんだけど、なんで時間作れないの？<br>趣味のプロジェクト（昔おもちゃのOS作ってたけど、OS開発が仕事になったからやめた）なしじゃ結構困るんだけど。<br>子供の頃からずっとそうだよ。" userName="anyfoo" createdAt="2025/04/26 19:10:43" color="">}}




{{<matomeQuote body="やっほー、この分野に数十年いてOS開発を学ぼうとしてるんだ。<br>FASM, NASM, FASM-Gは分かるんだけど、アセンブラの出力を調べないとバイナリレベルでOSがどう動くか分からないんだ。<br>特定のアーキテクチャのopcodesって勉強した？ デバイスドライバはどうやった？<br>自分でOS開発するステップ教えてくれないかな？" userName="Hashex129542" createdAt="2025/04/27 02:47:07" color="#ff33a1">}}




{{<matomeQuote body="学ぶならosdev forumとosdev wikiが一番だと思うよ。<br>始めるのに超役立つ情報がいっぱいある。<br>チュートリアルもあるけど、バグがあったり単に彼らのOSをマネするだけだったりする。<br>opcodesを調べるのはそんなに深くやらなかった。C compilerでよく使う基本的なやつを調べるくらい。ここを見てね:<br>https://forum.osdev.org/<br>https://wiki.osdev.org/Expanded_Main_Page" userName="joexbayer" createdAt="2025/04/27 07:12:19" color="#ff5733">}}




{{<matomeQuote body="x86 disassemblerは単一モードなら難しくないよ。<br>prefixスキャンしてopcode読んで、MOD/RM/SIB/offset/immediateはテーブル使って読む感じ。<br>opcodeとかを1つの“拡張”opcodeにマッピングするのが楽かも。<br>それをmnemonic+operandにマップするテーブルがある。<br>レジスタもテーブルでマッピング。<br>コード量は多くない。テーブルいくつか。<br>シンプルなのならそんなに難しくないよ。" userName="peterfirefly" createdAt="2025/04/27 21:42:38" color="#38d3d3">}}




{{<matomeQuote body="分かりました。<br>情報ありがとう！<br>めちゃくちゃ役に立ったよ。" userName="Hashex129542" createdAt="2025/04/27 10:22:43" color="">}}




{{<matomeQuote body="マジでそれヤバい！<br>アプリじゃなくコンピュータもっといじくり回す初期コンピューティングの精神取り戻す人が増えてほしいな〜。<br>長期の趣味プロジェクトで個人用コンピュータ作ろうかと考えてたんだ。<br>ソフトウェア全部自分で作って、ビットの出所全部知れるやつ（ハードは無理だけどFPGAなら別）。<br>今までムリだと思ってたけど、君が可能だって証明してくれた！<br>趣味のC compilerも作ってるみたい: https://github.com/joexbayer/C-Compiler" userName="ummonk" createdAt="2025/04/27 01:49:25" color="#ff5c5c">}}




{{<matomeQuote body="ありがとね！はい、全部自分でゼロから作ったってのは最高の気分だよ！でもデバッグはマジ地獄…<br>CコンパイラはOS用でOSの中で動くんだ。プロジェクトがすごく大きくなったからOSのリポジトリから分けたんだよね。Linuxでも動くし。" userName="joexbayer" createdAt="2025/04/27 07:07:38" color="">}}




{{<matomeQuote body="このコンパイラがOSとどう連携してるのか詳しく教えてもらえる？特に構造体の扱いはどうなってる？あと今の制限とか今後の拡張予定は？" userName="badmonster" createdAt="2025/04/26 21:47:04" color="#ff5733">}}




{{<matomeQuote body="コンパイラとOSの間に特別な関わりはないよ。同じi386機械語にコンパイルして、システムコールは割り込みを使ってるだけ。構造体はメンバに応じたサイズのメモリ領域として扱ってて、メンバアクセスはオフセットだよ。<br>今はintとcharだけとかswitch文なしとか制限いっぱい。普通のCと大きく違うのは、構造体に関数を置けたり、構造体関数にその構造体を自動で渡したりできるとこ。詳しくはここに書いてあるよ：https://github.com/joexbayer/C-Compiler" userName="joexbayer" createdAt="2025/04/26 23:19:48" color="#ff5c5c">}}




{{<matomeQuote body="今まで見たパッションプロジェクトの中でもダントツで凄い！<br>好奇心から聞くんだけど、なんで自分でCコンパイラを書こうと思ったの？" userName="cyberpunk2066" createdAt="2025/04/27 00:14:47" color="">}}




{{<matomeQuote body="全部自分で書くっていうマイルールがあって、コンパイラ作りは昔からの”目標”だったんだ。だからちょうど良い感じになったのさ。" userName="joexbayer" createdAt="2025/04/27 00:45:21" color="">}}




{{<matomeQuote body="ベアメタルでRetrOS-32.imgを試したよ！空白SSDに書いてLegacyモードで起動成功！すごいね！LenovoでUSBマウスだとカーソル遅くてログインできず、PS/2マウスのPCではログインできた。LenovoのBIOSで”USB Virtual KBC Support”を有効にしたらUSBマウスでもログインできたよ。DOSと違ってこの設定が必要なの面白い発見！ログイン時ちょっと問題あったけど、ベアメタルで動いたのは本当に素晴らしい！" userName="fuzzfactor" createdAt="2025/04/27 21:59:34" color="#ff5c5c">}}




{{<matomeQuote body="DMDEでセクタ構造を詳しく見たよ。セクタ0はFAT16ブートセクタっぽい。全セクタ数の指定方法とか、パーティションテーブルの有無について技術的な指摘ね。現状は不要かも。gfx_destory_windowってタイポかな？OSは特定のセクタに依存せず、FATのHidden Sectorsからの相対位置で動くのが大事。FAT16使ってるのは良いと思う！" userName="fuzzfactor" createdAt="2025/04/27 22:03:48" color="#785bff">}}




{{<matomeQuote body="標準FAT16パーティションにIMGをコピーしHidden Sectorsも直して起動試すも表示出ず。どうもOSがIMGのセクタ1-3097辺りのコードに依存してるみたい。セクタ1-2000をファイルシステム外にコピーしたら起動できたよ。OSが特定のセクタに依存せず、Hidden Sectorsからの相対位置で動くのが理想だね。最終的にはMS-DOSでフォーマットした普通のFAT16にOSファイルをコピーするだけで動くようになると素晴らしい！" userName="fuzzfactor" createdAt="2025/04/27 22:39:46" color="#45d325">}}




{{<matomeQuote body="みんながOSを動かそうと頑張ってくれたことに感動してるよ！本当に感謝！詳しく読むのに時間かかるけどね。パーティションとかファイルシステムはLinuxでイメージをマウントしてファイルをコピーするために入れただけなんだ。現状はカーネルがファイルシステム外。パーティションとかブートシステムはまだ不安定だから、安定させるのにいっぱい作業が必要だよ。触れてもらった部分、できるだけ実装したり調べたりしてみるね！ありがとう！" userName="joexbayer" createdAt="2025/04/28 07:25:45" color="#38d3d3">}}




{{<matomeQuote body="これ、いつかRaspberry Piで起動できる可能性ある？Linuxじゃない、１秒未満で起動する最小OSとか超欲しいんだけど。" userName="velcrovan" createdAt="2025/04/26 16:09:46" color="">}}




{{<matomeQuote body="気持ちわかるな〜（俺も同じようなことやってるし）。でもraspberry piだと最低4秒くらいかかるんだよね。VideoCoreチップが先に起動して、だいたい4秒後にARMチップに引き継ぐから。そっちならこういうOSだとほぼ即座に起動できるんだけど。" userName="incanus77" createdAt="2025/04/26 16:47:26" color="#ff33a1">}}




{{<matomeQuote body="その4秒遅延ってpi 4か5から？少なくともpi 3だと2.8秒でQtアプリまで起動させた人がいるみたいだけど: <br>https://www.furkantokac.com/rpi3-fast-boot-less-than-2-secon..." userName="velcrovan" createdAt="2025/04/26 17:50:02" color="#ff33a1">}}




{{<matomeQuote body="pi 3でも見たことあるよ。その方法だと、他の色々失うけど、USBキーボードとマウスのサポートも無くなるんだよね。俺はそこまで極端な道はまだ通ってないな…" userName="incanus77" createdAt="2025/04/28 05:26:16" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これi386 CPU向けに書かれてるから、Raspberry PiのARMとは違うし移植が必要だね。Haiku OSはどうかな？まさにその用途向けだって話だけど…" userName="pavlov" createdAt="2025/04/26 16:12:09" color="#ff5c5c">}}




{{<matomeQuote body="Haikuもraspberry piでは動かないと思うけど。" userName="velcrovan" createdAt="2025/04/26 17:46:23" color="">}}




{{<matomeQuote body="RISC OSはもうチェックした？" userName="800xl" createdAt="2025/04/26 16:47:29" color="">}}




{{<matomeQuote body="こういうプロジェクトがいくつか同時にマイルストーンに到達してるの興味深いね。コンピュータの深いレベルでまだ作業してる人がいて、結果を共有してくれるのは心強いな。応援してるよ！" userName="rnd0" createdAt="2025/04/26 18:47:13" color="">}}




{{<matomeQuote body="うんうん！他のOSプロジェクトをここで見るの大好き！いつも刺激になる！" userName="joexbayer" createdAt="2025/04/26 18:55:05" color="">}}




{{<matomeQuote body="3番目のスクリーンショットにある階乗関数での再帰の使い方面白いね" userName="mouse_" createdAt="2025/04/26 14:09:34" color="#38d3d3">}}




{{<matomeQuote body="へへ、テストプログラムいくつか書かなきゃいけなかったんだ。あれはそのうちの一つだよ。" userName="joexbayer" createdAt="2025/04/26 14:29:07" color="">}}




{{<matomeQuote body="すごいじゃん！俺も昔の2010年くらいのPCで試したかったんだけど、もう見つからないんだよね…最近は古いものがどんどんなくなっちゃうけど、頑張って続けてね！" userName="jcooper23241" createdAt="2025/04/27 10:00:53" color="">}}




{{<matomeQuote body="すごいね！俺も数年前に自分でOS書こうとしたことあるんだけど、きみが達成したこと見るとめっちゃ感動するし、やる気出てくるよ。おめでとう！" userName="jean553" createdAt="2025/04/27 19:56:08" color="#38d3d3">}}




{{<matomeQuote body="ありがとう！きみもぜひ続けて！俺も結構休憩挟んだけど、コツコツやるのって本当にやりがいあるよ。" userName="joexbayer" createdAt="2025/04/27 20:14:58" color="">}}




{{<matomeQuote body="エディターにTurbo C/QBasicっぽい愛を感じるね。プロジェクトにおめでとう。" userName="pjmlp" createdAt="2025/04/26 19:58:56" color="#785bff">}}




{{<matomeQuote body="へへ、うん、テキストモードのエディターはTurboがすごくインスピレーションになってるよ。" userName="joexbayer" createdAt="2025/04/26 20:02:41" color="#38d3d3">}}




{{<matomeQuote body="いいね！ちょうど俺もどっかにある古いeee pcのこと考えてて、どうやって復活させようかと思ってたんだ。パフォーマンスはどんな感じ？" userName="nopelynopington" createdAt="2025/04/26 14:07:38" color="#785bff">}}




{{<matomeQuote body="俺も古いeee pc持ってるよ！それでもテストしたんだけど、パフォーマンスはまあまあかな。最適化はあんまりしてないけど、本物のOSより”basic”だから結構速いはずだよ。大きな問題はバグとか、実際のハードウェアで使える機能が少ないこと。（ユーザースペースのアプリは”QEMU”のイメージでしか使えないんだ。）" userName="joexbayer" createdAt="2025/04/26 14:32:37" color="#ff5733">}}




{{<matomeQuote body="すごい作業におめでとう。きみのマシンもまだきれいだね。大事にしてるんだね。" userName="methuselah_in" createdAt="2025/04/27 01:33:31" color="">}}




{{<matomeQuote body="うん、あのマシン大好きだよ！ありがとう！" userName="joexbayer" createdAt="2025/04/27 07:14:29" color="">}}




{{<matomeQuote body="すごいね！どうやってこれ始めたの？全部自分で調べるのって大変そうだけど。" userName="firesteelrain" createdAt="2025/04/26 14:10:26" color="#785bff">}}




{{<matomeQuote body="大学のOS授業終わりに始めたんだ。授業は”敷かれたレール”って感じで、自分のやりたいことやりたかったからね。" userName="joexbayer" createdAt="2025/04/26 14:30:23" color="">}}




{{<matomeQuote body="おお、俺R31持ってるんだよね。そんなに古くなければ、これで試せるかも！" userName="sevensor" createdAt="2025/04/27 01:52:12" color="">}}




{{<matomeQuote body="qemuみたいなエミュレーターじゃなくて、実機で動かせたの、すごいおめでとう！" userName="enqk" createdAt="2025/04/26 21:25:03" color="">}}




{{<matomeQuote body="＞ ”adminのパスワードは’admin’です”<br>ちょっと待って、君のThinkPadハッキングしてくるわ" userName="intalentive" createdAt="2025/04/27 02:34:45" color="">}}




{{<matomeQuote body="自分も古いノートPCいじってるから、その気持ちわかるよ。こういう節目に到達するのって、自分のコードが実機で動く時の方が断然気持ちいいんだよね。" userName="gitroom" createdAt="2025/04/26 15:09:26" color="">}}




{{<matomeQuote body="GNUみたいに大きくてプロっぽくなるかな？ :)" userName="kzrdude" createdAt="2025/04/27 00:08:22" color="">}}




{{<matomeQuote body="ああ、それは多分無理だろうね、近づきもしないと思う。でも，”本物の”製品作るのが目標だったわけじゃないんだ。ただ、自分で色々試すための趣味プロジェクトだよ。" userName="joexbayer" createdAt="2025/04/27 00:48:26" color="#45d325">}}




{{<matomeQuote body="いいね、頑張ってね :) これって1991年のオリジナルLinux発表への言及なんだよね、＞ 私は(無料の)オペレーティングシステムを作っています(ただの趣味で、GNUみたいに大きくてプロフェッショナルにはなりません)" userName="kzrdude" createdAt="2025/04/27 12:06:41" color="#785bff">}}




{{<matomeQuote body="ああ、それに気づけなかったなんて恥ずかしいな。" userName="joexbayer" createdAt="2025/04/27 12:22:59" color="">}}




{{<matomeQuote body="これ、もっと見たいなー — 最終的には、1970年代の同じ古いアイデアの焼き直しじゃない、何か新しいOSの概念が出てくるだろう。(ちなみに、VAX 11/780は1977年に発表されたけど、今のOSは根本的に同じハードウェアモデルで動いてるんだよね。VMSやUNIXと比べて、今のOSに何かすごく斬新なものってないと思う。)根本的に違う考え方の例としてはTempleOSがあるよ。" userName="trollbridge" createdAt="2025/04/27 12:51:40" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
