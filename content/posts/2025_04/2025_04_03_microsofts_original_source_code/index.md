+++
date = '2025-04-03T00:00:00'
months = '2025/04'
draft = false
title = '【衝撃】MS-DOSの原点！？Microsoftの伝説的ソースコードが流出！禁断の歴史が今、明らかに！'
tags = ["Microsoft", "ソースコード", "MS-DOS", "歴史", "プログラミング"]
featureimage = 'thumbnails/purple8.jpg'
+++

> 【衝撃】MS-DOSの原点！？Microsoftの伝説的ソースコードが流出！禁断の歴史が今、明らかに！

引用元：[https://news.ycombinator.com/item?id=43575884](https://news.ycombinator.com/item?id=43575884)

{{<matomeQuote body="ソースコード読むのめっちゃ楽しいんだよね（コメントが特に）。GW-BASICのソースコード見つけたんだけど、マジおもろいのがこれ。<br>＞；WE COULD NOT FIT THE NUMBER INTO THE BUFFER DESPITE OUR VALIENT<br>＞；EFFORTS WE MUST POP ALL THE CHARACTERS BACK OFF THE STACK AND<br>＞；POP OFF THE BEGINNING BUFFER PRINT LOCATION AND INPUT A ”％” SIGN THERE<br><br>＞；CONSTANTS FOR THE RANDOM NUMBER GENERATOR FOLLOW<br>＞；DO NOT CHANGE THESE WITHOUT CONSULTING KNUTH VOL 2<br>＞；CHAPTER 3 FIRST<br><br>編集：QBASICじゃなくてGW-BASICね。(https://github.com/microsoft/GW-BASIC)" userName="stkai" createdAt="2025-04-03T22:45:48" color="#785bff">}}

{{<matomeQuote body="へー、GW-BASICって元祖Altair BASICの子孫なんだって。「Translation created 10-Feb-83」って各ソースファイルにあるヘッダーは、Microsoftが8080アセンブリを8086に自動翻訳するツール使ってた名残らしいよ（手動で修正されたからビルド日じゃないけどね）。GW-BASIC以外にも、Microsoft BASICの6502と6809版のソースコードは昔から公開されてたみたいだけど（https://www.pagetable.com/?p=774 と https://github.com/davidlinsley/DragonBasic 参照）、オリジナルの8080 BASICコードの公開は今回が初めてだと思う。" userName="ndiddy" createdAt="2025-04-04T00:07:51" color="#ff5c5c">}}

{{<matomeQuote body="valiantじゃなくてvalientじゃないの？" userName="deathtrader666" createdAt="2025-04-04T08:17:46" color="">}}

{{<matomeQuote body="まあね。当時はスペルチェッカーって別アプリだったし。一番人気はMicroProのCorrectStarだったかな。プログラミングエディタに組み込まれてなかったし、コードにスペルチェッカーかけるなんて考えられなかった。" userName="roryirvine" createdAt="2025-04-04T08:59:47" color="">}}

{{<matomeQuote body="IntelliJ以外でコードにスペルチェッカー使ってる人見たことないわ。" userName="3836293648" createdAt="2025-04-04T12:30:21" color="">}}

{{<matomeQuote body="cSpellだけで1300万インストールされてるよ。<br>https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker" userName="eddythompson80" createdAt="2025-04-04T18:26:04" color="#ff33a1">}}

{{<matomeQuote body="Eclipseにはスペルチェッカーが組み込まれてるよ。多分ほとんどのファイル形式でデフォルトでオンになってるはず。みんなオフにしてるかもしれないけど、気に入ってそのままにしてる人もいると思うよ。" userName="mindcrime" createdAt="2025-04-04T18:51:35" color="">}}

{{<matomeQuote body="最近これ見つけた。<br>https://github.com/tekumara/typos-lsp<br>これ使ってる。<br>https://github.com/crate-ci/typos<br>GitHubのスターもたくさんついてるから、ユーザーも多いんじゃないかな。NeoVimで使ってるけどマジ便利。" userName="StanAngeloff" createdAt="2025-04-04T18:41:57" color="#ff5c5c">}}

{{<matomeQuote body="＂apellchecker＂ってスペルチェッカーの名前としてマジ最高じゃん。" userName="griffzhowl" createdAt="2025-04-05T04:20:21" color="#ff5c5c">}}

{{<matomeQuote body="Codespellめっちゃ使えるよ。コマンドラインとCIで使ってる。<br>https://github.com/codespell-project/codespell" userName="maleldil" createdAt="2025-04-05T10:23:21" color="#785bff">}}

{{<matomeQuote body="Emacsにはスペルチェック機能がついてて、バッファ全体をチェックする昔ながらのやり方も、入力しながらリアルタイムでチェックする機能もあるんだよね。でも、最近はJetBrains IDEでコーディングすることが多いかな。" userName="dhosek" createdAt="2025-04-04T17:42:02" color="">}}

{{<matomeQuote body="Vim/Neovimユーザーなら、標準で結構使えるスペルチェック機能があるよ。カスタム単語を辞書に追加すればさらに便利になるし。`:set spell`でオン、`:set nospell`でオフにできるよ。カスタム単語を追加するには、対象の単語にカーソルを置いて`zg`を押せばOK。<br>僕のvimrcファイルには、特定のファイルタイプでデフォルトでオンになるように設定してるよ：<br>＞　”特定のファイルタイプと単語補完のためにスペルチェックをオンにする。<br>＞　単語はカーソルを単語に置いて’zg’を押すことで辞書に追加できます。”<br>カスタム単語は`~/.vim/spell/en.utf-8.add`みたいなテキストファイルに保存されるから、編集やバックアップも簡単だよ。" userName="freedomben" createdAt="2025-04-04T19:23:07" color="#38d3d3">}}

{{<matomeQuote body="＞　custom additions<br>スペルチェック中に直接追加することもできるよ。カーソルを単語に移動して（コマンド忘れちゃった…）レアな単語、良い単語、悪い単語として登録できる。" userName="porridgeraisin" createdAt="2025-04-06T17:14:17" color="">}}

{{<matomeQuote body="VSCodeの拡張機能を使ってる人もいるよね。" userName="timcobb" createdAt="2025-04-04T14:57:28" color="">}}

{{<matomeQuote body="最高のプログラマーってみんなスペルが苦手な気がするんだよね。なんでだろう？" userName="jimbob45" createdAt="2025-04-04T16:50:28" color="">}}

{{<matomeQuote body="俺が知ってる最高のプログラマーはそんなことないけどな。" userName="ptspts" createdAt="2025-04-05T13:28:17" color="">}}

{{<matomeQuote body="人間なんてみんなスペルが苦手だよ。ライターだってそう。だからスペルチェッカーが必要なんだ。" userName="themadturk" createdAt="2025-04-04T21:52:56" color="">}}

{{<matomeQuote body="母国語のフランス語よりも、一度も見たことのないエスペラント語のスペルの方が自信あるわ。欠陥だらけのシステムを責めるのはやめようよ。" userName="psychoslave" createdAt="2025-04-05T03:44:30" color="#45d325">}}

{{<matomeQuote body="そりゃそうでしょ。エスペラントは規格に合わせて作られた言語だし。フランス語や英語は自然に進化してきたから、矛盾や例外が多いんだよ。" userName="themadturk" createdAt="2025-04-07T21:54:28" color="#45d325">}}

{{<matomeQuote body="Steve Jobsがよく言ってたのは、Microsoftにはセンスがないってことらしいよ。スクロールした時のフォントがちらつくエフェクトを見て、まさにそれだと思った。マジで気が散る。しかもリーダーモードで無効にできないし。ちなみに、Bill Gatesが世界のためにやったことには感謝してる。" userName="nilsbunger" createdAt="2025-04-04T13:47:16" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="デザインは面白いし、懐かしい感じもするけど、やりすぎだと思うな。あんなに気が散らなくても、同じような雰囲気は出せたはず。あと、リーダーモードはマジで対応してほしい。難しくないはずだし、オプションにするべきじゃないよ。<br>追記：マジかよ、全部アニメーションしてるじゃん。読みにくい…あと…インラインのコードサンプルが一つもないってどういうこと？デザイナーがコンテンツよりもアワード狙ってるだけじゃん。まるで他の人のソロパートを全部食っちゃうギタープレイヤーみたい。" userName="toddmorey" createdAt="2025-04-04T19:59:37" color="">}}

{{<matomeQuote body="読みにくい上に、2年物のノートPCだとページを移動するだけでCPUとGPUがフル回転して、ファンが爆音になるんだけど。ただのブログ記事なのに、こんなにパフォーマンスが悪いウェブサイトは初めてかも。" userName="nerevarthelame" createdAt="2025-04-04T15:38:03" color="#ff33a1">}}

{{<matomeQuote body="それって、最近のウェブサイトがJavaScriptまみれの広告再生マシーンになってて、神様が意図したような1kB未満のHTMLじゃないのが原因だよね。" userName="SpaceNoodled" createdAt="2025-04-04T15:57:16" color="">}}

{{<matomeQuote body="笑えるのが、今日HNのトップページに載ってたこれ。<br>https://animejs.com/<br>もっと凝ったアニメーションなのに、バターみたいに滑らか。" userName="hbn" createdAt="2025-04-04T19:56:39" color="">}}

{{<matomeQuote body="それはGPUに処理をオフロードしてるからじゃないかな。低スペックPCだとカクカクするけど、CPUファンは静かだよね。GatesのノートはCPUに負荷がかかってるみたい。" userName="Arech" createdAt="2025-04-05T07:02:17" color="#785bff">}}

{{<matomeQuote body="マジでレベルが違う。うちの古いPCでも、前後ともスムーズに動く。うちのPCはThinkPad i7で、すぐに低速モードになるんだけど。" userName="ForOldHack" createdAt="2025-04-06T01:40:29" color="">}}

{{<matomeQuote body="Tim Berners-Leeは色々なものに祭り上げられてきたけど、神になったのは初めて聞いた。" userName="bostik" createdAt="2025-04-04T17:24:16" color="">}}

{{<matomeQuote body="いや、2012年のオリンピック開会式を見た？" userName="lkramer" createdAt="2025-04-04T18:09:56" color="">}}

{{<matomeQuote body="Kernighan & Ritchieも仲間に入れてあげて。" userName="SpaceNoodled" createdAt="2025-04-04T21:58:29" color="">}}

{{<matomeQuote body="でもさ、あの自己陶酔しまくりの嫌なやつがクソみたいなこと垂れ流してるのを忘れさせてくれるよね。" userName="zombot" createdAt="2025-04-07T06:04:49" color="">}}

{{<matomeQuote body="マジかよ、Bill Gatesの個人ブログがWordPressのプラグイン500個入りみたいなノリなのにはビックリだわ。俺の昔のMySpaceのプロフみたいじゃん。" userName="zelon88" createdAt="2025-04-04T14:51:02" color="">}}

{{<matomeQuote body="ちなみに、Appleの発表イベントのぐるぐるスクロール効果も大概ヒドイよね。" userName="kevincox" createdAt="2025-04-04T14:54:37" color="">}}

{{<matomeQuote body="個人的には好きだけどなー。好みは人それぞれだし。" userName="graton" createdAt="2025-04-04T15:15:31" color="">}}

{{<matomeQuote body="DONKEY.BASをゲットしてみてよ！マジでハマるから！" userName="fsckboy" createdAt="2025-04-04T19:48:00" color="#ff5c5c">}}

{{<matomeQuote body="ふと思ったんだけど、この文章全部Billが書いたのかな？このエフェクト、Billが決めて入れたのかな？そもそもBillはこのエフェクト知ってたのかな？" userName="mimischi" createdAt="2025-04-04T19:44:46" color="">}}

{{<matomeQuote body="だよねー。こんなに色々デザインされてると、裏にそれなりの規模のチームがいて、ゴーストライターとかもいるんじゃないかって想像しちゃう。" userName="chubot" createdAt="2025-04-05T03:23:14" color="">}}

{{<matomeQuote body="まあ、Bill Gatesはバリバリの企業家だもんね。プログラミングじゃなくて、そっちで金持ちになったんだし。" userName="Timwi" createdAt="2025-04-05T08:25:31" color="">}}

{{<matomeQuote body="BillGレビューはどうなったのさ？ほとんどの企業はやり方分かってないよね。" userName="rvba" createdAt="2025-04-06T13:22:49" color="">}}

{{<matomeQuote body="彼がどうやって今の地位を築いたのか、どんな人物なのかを忘れないことが大事だと思うなー。Behind the Bastardsは、みんなが賞賛するような人たちに対する現実を教えてくれる良いポッドキャストだよ。<br>https://podcasts.apple.com/us/podcast/part-one-the-ballad-of..." userName="phatskat" createdAt="2025-04-07T05:46:24" color="#ff33a1">}}

{{<matomeQuote body="それ、マジでイケてると思うわ。" userName="spookie" createdAt="2025-04-04T15:28:39" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="あと、そのページのフォント、特に小文字の“f”がマジでイライラするんだけど。" userName="microtherion" createdAt="2025-04-06T10:34:37" color="">}}

{{<matomeQuote body="めっちゃかわいくて、一瞬で好きになった。" userName="zulu-inuoe" createdAt="2025-04-05T20:45:25" color="">}}

{{<matomeQuote body="“ヤツが世界のためにしてきたこと”って、Covidワクチンの著作権を取ったこと？" userName="piyuv" createdAt="2025-04-04T22:20:19" color="">}}

{{<matomeQuote body="気持ちはわかる。ヤツのビジネス、倫理的に微妙だもんね。でも批判するなら、著作権と特許の違いくらい知っとけよ。" userName="Timwi" createdAt="2025-04-05T08:30:02" color="">}}

{{<matomeQuote body="Intel 8080のエミュレーター書いたことあるぜ。Dec10/VAX/IBM VM CMSで動くやつ。簡単だったよー。8080は256個の値のswitchでいけるし。FORTRAN77でやった。<br>BASICインタプリタをfloating pointで書くのはマジで難しい。GatesとAllenのBASICはマジですごかった。" userName="zabzonk" createdAt="2025-04-04T00:17:02" color="#38d3d3">}}

{{<matomeQuote body="＞BASICインタプリタをfloating pointで書くのはマジで難しい。GatesとAllenのBASICはマジですごかった。<br>floating pointルーチンはMonte Davidoffの功績。でもGatesとAllenがHarvard PDP-10でAltair BASICを、実機も見ずに書いて、AlbuquerqueのMITSでトグルスイッチで入力して一発で動いたのはマジですごい。" userName="TMWNN" createdAt="2025-04-04T08:04:38" color="#ff5c5c">}}

{{<matomeQuote body="Allenがやったのは、-10で動く8080エミュレータを書いたこと。8080は単純なCPUだから、エミュレータ書くのは難しくない。<br>https://pastraiser.com/cpu/i8080/i8080_opcodes.html<br>それで、BASICをエミュレータ上でデバッグした。<br>Wozniakは、Appleのコードをアセンブラで手書きして、手作業でバイナリに変換してた。めっちゃ面倒でエラーしやすい。<br>同時期にAphで6800とかのコード書いてたけど、PDP-11でマクロアセンブラ使ってバイナリにしてEPROMに焼いてた。めっちゃ楽だった。（Dan O’Dowdがアセンブラ書いた。）" userName="WalterBright" createdAt="2025-04-04T17:09:05" color="#ff5733">}}

{{<matomeQuote body="Wozniakのやり方は、高校生の時に6502アセンブラプログラムを書く時にやってた。金がなくてちゃんとしたアセンブラ買えなかったから。グラフ用紙に3列で書いてた。アドレス、コード、アセンブラのopcodes。マジ集中できるし、ちょっと変更するだけでも大変。" userName="dhosek" createdAt="2025-04-04T17:47:09" color="#45d325">}}

{{<matomeQuote body="俺もZX80でZ80アセンブラ始めた時そうだったわ。すぐopcode調べるのとか嫌になって、特に相対ジャンプ（特に後ろ向きのやつ）の計算ミスってクラッシュしまくってた。<br>だから自分でBASICでアセンブラ書いたわ。" userName="mfuzzey" createdAt="2025-04-04T19:44:48" color="">}}

{{<matomeQuote body="高校時代にMSX Spectravideoのコンピューターを手に入れるためにデモプログラムを書いたんだけど、その時にZ80の逆アセンブラを書いてたんだ。でも2バイトのオペコードに対応してなかったから、一部しか完成しなかったんだよね。コンピューターのメモリ全体にpokeコマンドをしまくって、キャラクタのビットマップの場所を探し当てたのを覚えてるよ。" userName="dhosek" createdAt="2025-04-06T03:22:58" color="">}}

{{<matomeQuote body="AllenはAltairのコンソールでマシンコードでローダーを書かなきゃいけなかったんだよね。BASICインタプリタ自体は、ローダーとテープリーダーを使って紙テープからロードされたんだって。AllenがAltairで最初に実行したBASICプログラムは、どうやら“2 + 2”だったらしくて、ちゃんと“4”って表示されたらしいよ。I/Oとか、Dec10でエミュレートするのが難しかったはずなのに、自分のコードにそんな自信を持ちたいな。" userName="zabzonk" createdAt="2025-04-04T08:55:16" color="#38d3d3">}}

{{<matomeQuote body="＞which must have been tricky to emulate on the Dec10<br>なんで難しいのかわからないな。AllenのPDP-10上の8080エミュレータがどうやって動いてたのか知らないけど、8080のI/Oをエミュレートするのは簡単そうに見えるけど。" userName="WalterBright" createdAt="2025-04-04T17:11:18" color="">}}

{{<matomeQuote body="いや、Dec10ベースのエミュレータではちょっと苦労したよ。メモリマップされたやつはちゃんと動かなかったんだよね。I/O命令をごまかしただけ。でも、学生にソートとか文字列検索とかをさせるための余暇プロジェクトだったから、あんまり罪悪感はなかったかな。アセンブラとかデバッガとかも入ってたし。しかも移植可能で、完全に標準的なFORTRAN77だったんだぜ!" userName="zabzonk" createdAt="2025-04-04T17:38:15" color="">}}

{{<matomeQuote body="Dec10のエミュレータを最新のCPUで書いたらクールじゃないかってちょうど思ってたんだよね。 実は、プログラマーの同僚の一人が、Dec10を廃棄するときに周辺機器全部込みで買い取って、ガレージに設置しようとしたことがあったんだ。電源と奥さんが大きな障害だったみたいだけど。" userName="zabzonk" createdAt="2025-04-05T04:24:58" color="">}}

{{<matomeQuote body="面白いことに、Jobsによると、理由は不明だけどWozniakがApple Basicに浮動小数点サポートを追加することを拒否したから、Microsoftから浮動小数点数を扱うBASICのライセンスを取得する必要があったんだって[1]。 [1] Bill & Steve (Jobs!)が浮動小数点BASICについて回想：https://devblogs.microsoft.com/vbteam/bill-steve-jobs-remini..." userName="teleforce" createdAt="2025-04-04T10:02:37" color="#45d325">}}

{{<matomeQuote body="浮動小数点エミュレータを書くのは（やったことあるけど）そんなに難しくないよ。まず、高級言語で書いてアルゴリズムをデバッグする。それから手でアセンブルするのは難しくない。 大変なのは、高級言語のステップを飛ばして、いきなりアセンブラでやろうとすることだよ。" userName="WalterBright" createdAt="2025-04-04T17:13:33" color="#ff5c5c">}}

{{<matomeQuote body="Wozはすでに浮動小数点ルーチンを書いていて、それはApple IIのROM自体に含まれていて、PEEK/POKEで呼び出すことができたんだよ。ただ、BASIC言語自体には統合されなかったんだ！ http://retro.hansotten.nl/uploads/mag6502/Apples%20Hidden%20..." userName="kalleboo" createdAt="2025-04-05T00:43:39" color="#ff5c5c">}}

{{<matomeQuote body="Apple Integer BASICってどれくらいの大きさだったんだろう？ EmpireのFortran版を書いたときには、PDP-10を丸ごと自由に使うことができたと理解しているんだけど。" userName="kragen" createdAt="2025-04-04T19:31:41" color="">}}

{{<matomeQuote body="-10でプログラミングを学んだんだ。素晴らしい経験だったよ。 振り返ってみると、整数BASICを書くのは簡単なことだけど、70年代当時は、そんなものをどうやって書くのか見当もつかなかった。 1978年頃、Hal Finney（そう、あの人）がMattel Intellivision（その奇妙な10ビットマイクロプロセッサを搭載）のために2K EPROMに収まる整数BASICを書いたんだ。もちろん、Halは普通の熊より（ずっと）賢かった。" userName="WalterBright" createdAt="2025-04-04T20:13:11" color="">}}

{{<matomeQuote body="へー、知らなかった！90年代に知って、CodeConのプレゼンで初めて会ったんだよね。言いたかったのは、Integer BASIC全体よりもfloating-pointのサポートの方が大変だったかもってこと。ちなみにApple Integer BASICにはまだバグが見つかってないらしいよ。すごいよね。" userName="kragen" createdAt="2025-04-04T23:09:45" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="fixed pointは、整数部と小数部に使うbit数が決まってるやつ。例えば8.8なら、整数部は0～255で、小数部は1/256ずつ増えて255/256まで。<br>floating pointは、小数点(.)の位置を変数にするんだ。だから、小数点以下の桁数を増やしたり減らしたりできる。Microsoft Basicは、数値に23bit、符号に1bit、小数点の位置に8bit使ってた。現代のIEEE754ほどじゃないけど、十分だったんだね。IEEE754を読むと、modern floating pointがよく分かるよ。Bruce DawsonのRandom ASCII blogもおすすめ。" userName="djmips" createdAt="2025-04-04T20:39:21" color="#ff5c5c">}}

{{<matomeQuote body="コンピューターのメモリーに数字を保存したいけど、小数点とか数字以外の文字は使えないとするじゃん。だから、実数を数字の列としてエンコード/デコードするシステムが必要になるんだ。<br>fixed pointだと、メモリーに数字を書き込んで、小数点以下の桁数を決めておく。例えば、小数点以下2桁にすると決めたら、000123は00・0123、123000は1230ってことになる。6桁だと、0～9999を0・01の精度で表せる。<br>floating pointだと、小数点の位置(exponent)と数字(mantissa)の両方を書き込む。最初の2桁をexponent、残りの4桁をmantissaにすると、<br>＞020123<br>は01・23、つまり1・23になる(exponentが2だから、小数点以下2桁)。同じ6桁でも、0～9999×10⁹⁶を1/10000の精度で表せるんだ。あとは分かるっしょ。" userName="codedokode" createdAt="2025-04-04T20:11:14" color="#ff33a1">}}

{{<matomeQuote body="つまりfloating point数は、数字とexponentと符号bitの3つでできてるんだ。<br>＞1・　the digits<br>＞2・　the exponent<br>＞3・　a sign bit<br>scientific notationと同じだよ。<br>＞https://en・wikipedia・org/wiki/Scientific_notation<br>あとはそれの応用。" userName="WalterBright" createdAt="2025-04-04T20:17:29" color="">}}

{{<matomeQuote body="exponentよりdecimal point positionの方が分かりやすいよね。あと、mantissaはsignificandのことだった気がする(数字の部分)。engineering notation(exponentが3で割り切れるやつ)の方が便利じゃん？2・234×10¹¹とかを頭の中でbillionに変換するの嫌なんだよね。あと(floating pointと関係ないけど)数学者はもっと分かりやすい名前を付けるべき。「numerator」と「denominator」じゃなくて「upper」と「lower number」とかさ！" userName="codedokode" createdAt="2025-04-04T21:12:09" color="">}}

{{<matomeQuote body="significandとmantissa、いつもごっちゃになるんだよね。だから使わないことにした！" userName="WalterBright" createdAt="2025-04-04T23:15:20" color="">}}

{{<matomeQuote body="大学時代にassemblerでfloating pointルーチンを書いたな。理解できた時はマジで「aha」って感じだった。" userName="hh2222" createdAt="2025-04-04T18:08:44" color="">}}

{{<matomeQuote body="仕様を読むのはマジで大変。でも実装はそこまで悪くない。sticky bitとかguard bitとか、実は結構シンプル。でも、IEEE arithmeticを使って、その限界を回避するalgorithmを作るのは難しい。" userName="WalterBright" createdAt="2025-04-04T17:53:41" color="">}}

{{<matomeQuote body="FP mathの仕組み(bitレベルでどうやってるか)をざっくり知りたいなら、Project Oberonのサイトに行って、FPGAでのRISCマシンの実装についてのPDFを見てみて。16章の8～10ページに、簡潔な説明があるよ。" userName="whartung" createdAt="2025-04-05T02:36:57" color="#38d3d3">}}

{{<matomeQuote body="初期のマシンでは浮動小数点演算が重要だったんだよね。おかげで「高性能な電卓」としての使い道が開けたんだから。データ保存が今ほど簡単じゃなかった時代には、ゲームとかリモート端末としての利用と並んで貴重だったんだよね。BASICに入ってたfloatの実装が当時一番一般的だったし（今のIEEE規格とは微妙に違ったりもするんだよね）。" userName="zozbot234" createdAt="2025-04-04T10:13:15" color="#ff5c5c">}}

{{<matomeQuote body="わかるー。4KBとか8KBに収まるBASICで数学ができるってすごいよね。Bill Gatesが$150のAltair BASICを海賊版にされたって怒ったのがきっかけでTiny BASICが生まれたり、“copyleft”って言葉が作られたりもしたんだって。" userName="musicale" createdAt="2025-04-04T02:56:07" color="">}}

{{<matomeQuote body="InteractコンピューターのMicrosoft Basicのテープ、まだ持ってるよ。8080が入ってるんだ。" userName="phkahler" createdAt="2025-04-04T00:57:50" color="">}}

{{<matomeQuote body="昔のTandy Color Computerが起動するときにMicrosoft BASICを参照してたのを覚えてるよ。https://tinyurl.com/2jttvjzk<br>コンピューターには、BASICのサンプルプログラムが載った良い感じの本が付属してたんだ。" userName="thijson" createdAt="2025-04-04T14:51:54" color="">}}

{{<matomeQuote body="その音声をInternet Archiveにアップロードするべきだよ！" userName="thesuitonym" createdAt="2025-04-04T13:26:05" color="">}}

{{<matomeQuote body="Sol-20用のMS Extended Basicカセットも持ってる。これも8080ベースなんだ。" userName="vile_wretch" createdAt="2025-04-04T18:02:49" color="">}}

{{<matomeQuote body="GatesとAllenのすごいところは、マジで技術力が高かったってことだよね。PDP-10のエミュレーター作って、インタープリター、ラインエディタ、I/Oシステムを全部4KBのメモリに収めるんだから。コードを読む価値あるし、それに加えてビジネスセンスもすごいし、20歳にしてはマジメに仕事してたよね。今の「fake it till you make it」みたいな、APIラッパーだけの製品ばっかりの業界とは大違いだよ。Microsoftみたいな会社がまた出てきてほしいな。" userName="Barrin92" createdAt="2025-04-04T02:34:46" color="#785bff">}}

{{<matomeQuote body="まあ、彼らも最初はハッタリかましてたけどね。まだ書いてないプログラムのソースコードがあるって言ってたんだから！でも、その後ちゃんと“making it”に本気だったんだよ。" userName="mindwok" createdAt="2025-04-04T02:39:07" color="">}}

{{<matomeQuote body="確かに「fake it and then immediately proceed to make it」は、「fake it till you make it」みたいに嘘ついて取引をぶっ壊すよりは全然評価できるよね。" userName="cybrox" createdAt="2025-04-04T09:08:18" color="">}}

{{<matomeQuote body="当時の複雑さなら、人間の脳でもまだ理解できたと思うんだよね。Wozの自伝を読むと、彼は最初のAppleコンピューターのすべての論理ゲートの役割を知ってたみたいだし。PDP-10もたぶん“人間の速度”で動いてたんだろうな…" userName="netsharc" createdAt="2025-04-04T02:48:31" color="#785bff">}}

{{<matomeQuote body="＞「できるまで、やったふり」っていうのと対照的だよね。Microsoftは「できるまで、やったふり」の史上最強の会社だよ。IBM PCのOSの契約を、OSがない状態で取って、それを誰かから買ったんだから(確か)。<br>＞GatesとAllenで際立っているのは、マジで高い技術力だよね。PDP-10のエミュレータを作って、それからインタープリタ、ラインエディタ、I/Oシステムを全部4KBのメモリに詰め込んだんだから。<br>それってマジですごいの？当時はどのコーダーも全部4Kでやってたじゃん。" userName="mmooss" createdAt="2025-04-04T22:07:45" color="">}}

{{<matomeQuote body="運と、リスクを取る覚悟が、予想もできない形で実を結んだんだね。PCの時代みたいなのを、俺の生きているうちに見られるかわからないな。もしかしたら、モバイルフォンか、インターネットかもね。" userName="jwnin" createdAt="2025-04-03T22:35:16" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
