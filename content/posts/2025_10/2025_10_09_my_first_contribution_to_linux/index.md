+++
date = '2025-10-09T00:00:00'
months = '2025/10'
draft = false
title = 'ついにLinuxに初貢献！達成感と学びの記録'
tags = ["Linux", "オープンソース", "ソフトウェア開発", "組み込みシステム", "ドライバ開発"]
featureimage = 'thumbnails/light-orange3.jpg'
+++

> ついにLinuxに初貢献！達成感と学びの記録

引用元：[https://news.ycombinator.com/item?id=45490652](https://news.ycombinator.com/item?id=45490652)




{{<matomeQuote body="Linuxカーネルへの貢献ってマジでやりたいことリストのトップなんだ。特に20年前のノートPCのボタンみたいなニッチな分野。近いうちに絶対やる！記事もすごく良くて、OPのシンプルな文章にやる気が出たよ。今、中古市場でこういうテック製品を探し回ってるんだ :-)" userName="pankalog" createdAt="2025/10/09 17:53:01" color="#ff33a1">}}




{{<matomeQuote body="OpenWrt対応だけどビルドターゲットがないWi-Fiルーターを買って、メンテナーにパッチに必要な情報を教えてもらったんだ。指示通りに進めたら新しいビルドターゲットができたよ。後でLED制御のパッチは自分で書いた。すごくやりがいがあって勉強になった経験だったな。僕がサポートを手伝ったルーターでOpenWrt使ってる人を見つけた時は感動したよ。" userName="MaKey" createdAt="2025/10/10 01:27:34" color="#ff33a1">}}




{{<matomeQuote body="いいね！いつかやってみたいって思ってたことだよ。サポートされてないルーターって、最近は結構あるしね。" userName="a96" createdAt="2025/10/10 11:55:31" color="">}}




{{<matomeQuote body="Linuxでハードウェアサポートが必要なデバイスを探すなら、古いスマホやタブレットでモバイルLinuxディストリビューションを試すのが超オススメ！特にpostmarketOSのデバイスページ [1] は不足機能が一目でわかるし、新しいデバイスへのポーティングガイド [2] や、ベンダー提供のLinuxフォークからアップストリームカーネルへのポーティングガイド [3] も充実してるよ。＜br/＞[1] https://wiki.postmarketos.org/wiki/Devices＜br/＞[2] https://wiki.postmarketos.org/wiki/Porting_to_a_new_device＜br/＞[3] https://wiki.postmarketos.org/wiki/Mainlining" userName="antonok" createdAt="2025/10/09 21:33:19" color="#785bff">}}




{{<matomeQuote body="postmarketOSで作業したいけど今すぐは無理。でもいつか！Androidフォンでデュアルブートとか、Linuxを簡単に動かせたら最高なのに。ラズパイとかで作ると高いし性能も劣るしね。Androidは世界規模で開発されてるのに、ドライバー不足で動かないのはもったいない。PostMarketOSがもっと評価されてインストールしやすくなれば良いのに。Android内でターミナルをQEMU経由で使うのは問題あったし、VM内のLinuxよりpostmarketOS上のWaydroidの方が良いけど、インストールは大変。TermuxとかUserLandならAndroidにLinux入れるのが簡単なのにな。＜br/＞https://www.androidauthority.com/android-linux-terminal-app-..." userName="Imustaskforhelp" createdAt="2025/10/10 00:38:06" color="#785bff">}}




{{<matomeQuote body="デュアルブートはできるよ。僕はSDカードスロットがあるデバイスで、AndroidをeMMC、PostmarketOSをSDカードに入れる方法が好きだな。今は古いデバイスでしかやってないけど、メインでもやりたい！でもブートローダーアンロックすると初期化されちゃうし、大事な設定が多すぎて無理なんだ。Androidデバイスの全パーティションをバックアップする方法がないのも変だよね。" userName="zenolijo" createdAt="2025/10/10 18:17:49" color="#38d3d3">}}




{{<matomeQuote body="libhybrisの上にモバイルLinuxを動かすのもアリだよ。これはプロプライエタリな互換性レイヤーだけど、これを使って新しいデバイスでモバイルLinuxランタイムをサポートさせてる人もいるんだ。" userName="antonok" createdAt="2025/10/10 05:32:52" color="#45d325">}}




{{<matomeQuote body="今これに挑戦中なんだけど、予想以上に難しいんだ。カーネル再コンパイルとデバイス再起動が手間だよ。Qualcomm SoCでディスプレイとタッチスクリーンを安定させようとしてる。個人的にはPMOSのWikiは情報不足だと思うな。" userName="mercenario" createdAt="2025/10/10 16:28:21" color="">}}




{{<matomeQuote body="ほとんどのノートPCはまだLinuxで完全に動かないから、古いハードウェアを探す必要はないと思うよ。ボタンを直すみたいなシンプルな問題は見つからないかもしれないけどね。" userName="dmurray" createdAt="2025/10/09 18:16:13" color="">}}




{{<matomeQuote body="ボタンを直すような簡単な問題なんてないって？Linux使ってるノートPCは、いくつか機能しないボタンがあるのが普通だよ。この問題の広がりを甘く見てるんじゃない？" userName="leakycap" createdAt="2025/10/09 19:03:58" color="">}}




{{<matomeQuote body="もし誰かがノートPCでこの問題に取り組みたいなら、WMIから始めるのがいいよ。ここに情報があるよ: https://docs.kernel.org/next/wmi/driver-development-guide.ht..." userName="heavyset_go" createdAt="2025/10/10 01:16:02" color="#785bff">}}




{{<matomeQuote body="運がいいね！ThinkPadでも普通に問題あるよ。R60:https://unix.stackexchange.com/questions/475968/thinkpad-vol...<br>E14 Gen4:https://forum.manjaro.org/t/thinkpad-e14-gen4-special-keys-m...<br>E14 Gen2:https://unix.stackexchange.com/questions/609942/thinkpad-spe...<br>T510:https://bbs.archlinux.org/viewtopic.php?id=268269<br>Fn Volume Control Keys:https://forums.linuxmint.com/viewtopic.php?t=412947<br>検索すれば、君のThinkPad体験が例外だってわかるはずだよ。" userName="leakycap" createdAt="2025/10/10 18:20:20" color="#ff5733">}}




{{<matomeQuote body="問題の定義が違うのかも。俺は100%動くってのが、メーカーのブロートウェア起動って意味だと思う。Windows機で変なボタン押しちゃうパブロフの犬にならなくて済んで嬉しいよ。" userName="fnicfnac" createdAt="2025/10/09 19:52:20" color="">}}




{{<matomeQuote body="”100%動く＝ブロートウェア起動”って、物理ボタンを動かすのにブロートウェアがいるってこと？<br>“パブロフの犬になってWindows機でボタン押しちゃうのが嬉しい”って、何が言いたいのかマジでわかんないんだけど。" userName="leakycap" createdAt="2025/10/09 19:56:40" color="">}}




{{<matomeQuote body="Windowsだとボタンがブロートウェア起動の特殊なトリガーなんだろうね。キー自体に標準化がほぼないのが問題で、モデル間でもバラバラ。Windowsドライバーは、見ただけで泣きたくなるような長いif文で信号を処理してる。だから、完璧なはずのカーネル修正が、1/3のノートPCで効かないなんてこともあるんだ。" userName="pixl97" createdAt="2025/10/09 20:14:10" color="#ff5733">}}




{{<matomeQuote body="”ボタンがブロートウェア起動のトリガー”って言うけど、記事のプレイ/ポーズボタンとかは普通の機能だよ。それがなんでブロートウェアなの？<br>”キーに標準化がない”って言うけど、実際はかなり標準化されてて、だから主要なキーは動くんだよ。WiFiオフとかキーボード輝度ボタンは標準的じゃないけど、ブロートウェアじゃないし。<br>”50マイルのif文で大人が泣く”って、そんな大人知らないし。単純な解決策も複雑な解決策も嫌いって何だよ。<br>”修正が1/3で動かない”って言うけど、デバイスはLinuxでよくサポートされるようになるよ。記事の執筆者みたいに時間かける人がいるからね。" userName="leakycap" createdAt="2025/10/09 20:20:47" color="#ff33a1">}}




{{<matomeQuote body="俺のDellノートPCには電卓ボタンがあるんだ。こういうキーはただのマクロだよ。" userName="firesteelrain" createdAt="2025/10/10 02:05:24" color="">}}




{{<matomeQuote body="電卓ボタンは「標準化された」ボタンの一つで、マクロほど複雑じゃないよ！すごく便利だよね。" userName="leakycap" createdAt="2025/10/10 03:53:03" color="">}}




{{<matomeQuote body="マジか！calc.exeが隠しコマンドラインウィンドウで実行されてるのかと思ってたわ。" userName="firesteelrain" createdAt="2025/10/10 12:55:28" color="">}}




{{<matomeQuote body="そうそう！OSに「電卓開いて」って伝えるボタンなんだ。調べたら、HIDの「Consumer Control」コードが「Application Launch - Calculator」で0x0C0192とか0x192だった。ASCIIじゃなくてスキャンコードで送られるんだよ。Windowsだとcalc.exeが開くけど、レジストリいじれば別のアプリにも変えられるぜ。" userName="leakycap" createdAt="2025/10/10 16:19:23" color="#ff5733">}}




{{<matomeQuote body="カスタムOSならキーコードは自由にマッピングできるし、BIOSに怪しいものがある心配もない。WindowsのノートPCボタンは、Yahooブラウザバーみたいにブロートウェアと連携するよう作られたりもするんだ。掃除されてないWindows PCに触る機会もあるから、俺は変なキーを押す習慣はつけたくないね。" userName="fnicfnac" createdAt="2025/10/09 20:27:44" color="">}}




{{<matomeQuote body="「掃除されてないWindowsラップトップの前に置かれることもあるから、フットガンを押す習慣はつけたくないね。」そんなにセキュリティに不安なら、Windowsマシンには近づかない方がいいんじゃない？" userName="leakycap" createdAt="2025/10/09 20:41:04" color="">}}




{{<matomeQuote body="そのうちドライバーに「車には近づきたくなかった」って言うことになるのを楽しみにしてるよ。" userName="fnicfnac" createdAt="2025/10/09 20:56:52" color="">}}




{{<matomeQuote body="スレッドを間違えて返信しちゃったんじゃないの？" userName="leakycap" createdAt="2025/10/10 03:58:36" color="">}}




{{<matomeQuote body="彼らはWindows PCを避けるのは車を避けるくらい難しくて、危険だと言いたいんじゃないかな。もし本気で言ってるなら、もっと技術的じゃない仕事か趣味を見つけるべきだろ。飛行機が怖いなら空軍に入るなよ。" userName="da_chicken" createdAt="2025/10/10 13:00:57" color="#ff5c5c">}}




{{<matomeQuote body="リスク高い活動選ぶ人に言葉があるか知らないけど、俺は死への健全な恐怖が足りないのかもな。早く死ぬとして統計を見れば、車と死の関係を考えるのは理にかなってる。「恐怖と誤解する」のは防衛機制だ。コンピューターセキュリティの状況は、そんな防衛機制を使いたくないことの一つだね。LinuxはWindowsをなくしてないけど、Windowsをなくすための別のアプローチは消した。歩道で俺を轢く電動スクーター並みで、車のリスクを減らしてないよ。" userName="fnicfnac" createdAt="2025/10/10 20:44:29" color="#785bff">}}




{{<matomeQuote body="「俺は死への健全な恐怖が足りないのかも。」運転手やスクーターに轢かれること、メディアボタンが人生を変えるソフトを起動することにはすごく健全な恐怖を持ってるみたいだね。君の死への恐怖は健全じゃないかも。人生で多分起こらないことを心配して過ごしてるって意味で、不健全かもしれないぜ。左、右、左、って全部そうだよ。" userName="leakycap" createdAt="2025/10/11 04:28:54" color="#ff5c5c">}}




{{<matomeQuote body="外部の羅針盤がない状況はグループが危険だと見なすものだ。その恐怖を克服して、まだ克服してない人を軽蔑する。心理学者はそれを逸脱の正常化と呼ぶね。君の航空の例だと民間パイロットは外部の羅針盤を持ってる。最初の成功から左、右、左、って社会的な逸脱プロセスからくる満足感が大きすぎて、全てを支配できるって思い込んでるグループは勘弁だな。" userName="fnicfnac" createdAt="2025/10/11 06:45:42" color="#ff33a1">}}




{{<matomeQuote body="うん、これは俺の（残念ながらまだ遠い）引退後の活動リストの中でも「模型鉄道でいっぱいの地下室」よりかなり上位に入るね。" userName="akdor1154" createdAt="2025/10/09 20:26:53" color="">}}




{{<matomeQuote body="その意気だよ！笑顔<br>ちなみに、あまり知られてないハードウェア特有のLinuxカーネルコードを深掘りすると、すごく面白い、一般的な問題が見つかることがあるんだ。例えばdougg3が「Chumby 8」のメインラインカーネルサポートに取り組む記事シリーズで、こんな問題に偶然ぶつかったんだ。<br>https://www.downtowndougbrown.com/2024/04/why-is-my-cpu-usag......<br>これは他の多くのマシンにも応用できるよ。" userName="kees99" createdAt="2025/10/09 20:34:01" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺もLLVMで同じことしてるよ。最初は「good first issue」ラベルの課題に絞って、取り組むものを見つけたんだ。レビューに2ヶ月、コードの研究と記述に約1ヶ月かかったけど、昨日やっとマージされたよ。同じ問題にぶつかった人が、1ヶ月じゃなく1時間で解決できるよう記事を書くつもりだ。コンパイラもカーネルみたいにすごく楽しいよ！<br>https://github.com/llvm/llvm-project/pull/154914" userName="bojle" createdAt="2025/10/10 08:19:47" color="#38d3d3">}}




{{<matomeQuote body="俺が目撃した最高のLinuxカーネルへの貢献は、上司が見つけたADC読み取りに関するマクロの1文字（後に2文字と訂正）修正だった。2週間かけてバグだと確認し、提出したら貢献者ファイルに載ったんだ。彼はあまりプログラミングしないのに、テスト中にバグを見つけたのは最高に面白かったし、彼にとっては大勝利だったね！<br>https://lkml.iu.edu/2103.2/08109.html<br>W.、もしこれ読んでたら、君がこのバグを見つけた話、今でも大好きだよ！" userName="MomsAVoxell" createdAt="2025/10/10 08:17:10" color="#ff5c5c">}}




{{<matomeQuote body="それ言っちゃったら、その話は秘密にしちゃダメだよ！" userName="fragmede" createdAt="2025/10/10 23:15:37" color="">}}




{{<matomeQuote body="まあ、液体状の微粒子が机じゅうに飛び散った、とだけ言っておこうか。" userName="MomsAVoxell" createdAt="2025/10/11 16:23:14" color="">}}




{{<matomeQuote body="面白くてよく書かれてるね。共有してくれてありがとう！ニッチなハードウェアのサポートを追加・改善するのは、カーネル開発を始めるのに理想的で、いつか俺も試してみたいと思ってるよ。" userName="jw_cook" createdAt="2025/10/07 04:24:48" color="#785bff">}}




{{<matomeQuote body="プログラマーにとって、Linuxコントリビューターとして名前が載るのは最高の栄誉だと思うね。" userName="kwar13" createdAt="2025/10/10 00:16:20" color="">}}




{{<matomeQuote body="小さな貢献でも、シニアエンジニアとのヒューマンシステムで働くコミットメントと、ソフトウェアをより良くしたいという野心を示すものになる。履歴書には常に良い影響を与えるよ。" userName="dmix" createdAt="2025/10/10 02:16:38" color="#45d325">}}




{{<matomeQuote body="わかる。Donald KnuthのThe Art of Computer Programmingのエラーを見つけてhexadollarをもらうってのもあるよな。俺はどっちも経験ないけど、自慢とかじゃなくてさ。" userName="Jalad" createdAt="2025/10/10 04:32:49" color="">}}




{{<matomeQuote body="この投稿、本当に最高だったよ！俺もLenovoのノートPCの機能修正に挑戦したくなった。Lenovoのドライバーはかなり監視されてるだろうから、しっかり事前調査するつもり。記事をありがとう！" userName="caminanteblanco" createdAt="2025/10/09 17:13:46" color="#ff33a1">}}




{{<matomeQuote body="めっちゃクールだった！俺もノートPCで同じ冒険をしたんだ。残念ながらACPIのリバースエンジニアリングで壁にぶつかり、Windows側にログやツールがなく断念。自分のPCでやり遂げた筆者にはマジで尊敬！<br>キーボードのLEDはリバースエンジニアリングに成功して、ユーザー空間から制御できたよ！カーネル貢献も考えたけど、機能をユーザー空間に置くのが良いって意見を見てやめたんだ。" userName="matheusmoreira" createdAt="2025/10/09 17:51:45" color="#ff5733">}}




{{<matomeQuote body="これ、マジで面白かった！どうやるんだろうってずっと不思議に思ってたんだ。<br>Linuxのchangelogに自分の名前が載るって最高だろうな！" userName="schnitzelstoat" createdAt="2025/10/06 13:11:53" color="">}}




{{<matomeQuote body="＞ Linuxのchangelogに自分の名前が載るのは最高だろうな！<br>昔、ティーンの頃にksnakeとgeditのパッチがいくつか採用されたことがあるんだ。Linuxのパッチほどじゃないけど、自分が書いたコードが何百万ものPCで動くってのは、マジで最高の気分だったよ。" userName="henrym" createdAt="2025/10/10 01:30:38" color="#785bff">}}




{{<matomeQuote body="Debianのvixie-cronへのパッチ[0]が採用されたんだ。これが今の俺の一番の自慢の成果だよ。ちっぽけで、普通ならありえないものだけど、これのおかげで、crondを再起動したりDSTの切り替えを待たずにサーバーのTZを変更でき、ジョブが新しい時間に動くようになったんだ。カーネルへの貢献は、いつかやりたいことリストに入ってるよ。<br>0: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1019716" userName="sgarland" createdAt="2025/10/10 10:35:08" color="#ff5c5c">}}




{{<matomeQuote body="おめでとう。俺もカーネルにコミットしたことあるけど、リファクタリングで消えちゃったんだ。" userName="fragmede" createdAt="2025/10/10 11:10:55" color="">}}




{{<matomeQuote body="俺も同じだよ。いくつかのゲームで深刻なバグを見つけて、悪用して楽しんで、パッチを書いて送ったんだ。問題は、不安でエイリアス（別名）でやったこと。いくつかのゲームのchangelogに俺のエイリアスが載ってるんだ。『これ俺の貢献だ』って見るのは良いけど、『でも俺の名前じゃないから誰も信じてくれない』ってなる。くそー！:(昔は’ハッシュ関数’と’暗号化’を混同してた頃の話だけどね。" userName="johnisgood" createdAt="2025/10/10 08:34:33" color="#38d3d3">}}




{{<matomeQuote body="俺もめっちゃ誇りに思うだろうな。良い仕事したね！" userName="npteljes" createdAt="2025/10/10 15:25:06" color="">}}




{{<matomeQuote body="ありがとう！本当にそうなんだ！" userName="vkoskiv" createdAt="2025/10/06 16:54:18" color="">}}




{{<matomeQuote body="ブラボー！すごい仕事だね。" userName="sxzygz" createdAt="2025/10/06 22:46:47" color="">}}




{{<matomeQuote body="これ、ありがとうね。USBデスクトップスピーカーの音量調整が効かなくて、パッチを書こうと思ってたけど、どこから始めればいいか分からなかったんだ。これで分かったよ。" userName="sph" createdAt="2025/10/10 07:53:45" color="#ff5c5c">}}




{{<matomeQuote body="これ、いい記事だね。これからもこの人から素晴らしいブログ投稿がたくさん見られるといいな。記事の下にタイムラインがあって、LWNのリンク付きのエントリに気づいたよ。＞2025-05-27: Sasha Levinが僕のパッチ（といくつか他）をバックポートに選定…<br>https://lwn.net/Articles/1020203/<br>これはLKMLリンク:<br>https://lwn.net/ml/all/aBj_SEgFTXfrPVuj@lappy/<br>このツールの新バージョン（AUTOSEL）はすごく面白そうだね！AUTOSELは現代のLLMと埋め込み技術を活用して、はるかに正確な推奨を提供してくれるんだって。" userName="throwaway2037" createdAt="2025/10/09 23:27:30" color="#ff5c5c">}}




{{<matomeQuote body="何年も前から些細な修正を先延ばしにしてたんだ。パッチをフォーマットして送るためのコマンドをリストしてくれてありがとう。まさにこれが僕の作業を妨げてたから、先延ばし癖から抜け出すのに役立つかも。" userName="jraph" createdAt="2025/10/09 18:31:37" color="#785bff">}}




{{<matomeQuote body="今までカーネルに関して何もやったことなくて、今から貢献を始めるのはちょっと気が引ける感じなんだ。ソースツリーに行って簡単なタスクを頼んだら、誰かが親切に手伝ってくれるだろうけど、やっぱり圧倒されちゃって避けてきたんだよね。言い訳はやめて、そろそろやるべきだな。ファイルシステムでもっと色々やりたいし、カーネルの理解があればきっと役に立つだろうから。" userName="tombert" createdAt="2025/10/09 22:47:09" color="">}}




{{<matomeQuote body="https://kernelnewbies.org/FAQ/WhereDoIBegin （と、一般的に https://kernelnewbies.org/ ）に良いヒントがあるよ…" userName="degamad" createdAt="2025/10/10 10:17:12" color="#38d3d3">}}




{{<matomeQuote body="これは、質の高いオープンソース貢献と公開された実績を持つエンジニアを雇用する最も簡単な方法だよ。Linuxのようなアップストリームプロジェクトにコミットが表示されているかを確認するだけでいいんだ。誰でもコード、レビュー、そしてAUTHORSファイル内の作者のメールを見ることができるから、この貢献やパッチが実際にその変更をコミットした作者からのものであることが確認できる。<br>これは昔からあるソーシャルプルーフの一種で、時間を大幅に節約し、Leetcodeを不要にするものだね。（Leetcodeは今やLLMで完全にカンニングできちゃうから。）" userName="rvz" createdAt="2025/10/09 17:30:28" color="#ff5c5c">}}




{{<matomeQuote body="気を付けて… どんな評価基準もターゲットになっちゃうと、その有用性を失っちゃうんだ。カーネルパッチを取り入れることも、すでに多少この影響を受けているかもしれないけど、もしベイエリアのすべての”なりきり”企業がこれを採用のスクリーニングとして要求し始めたら、LKMLがどうなるか想像してみて！" userName="akdor1154" createdAt="2025/10/09 20:29:13" color="#785bff">}}




{{<matomeQuote body="＞気を付けて… どんな評価基準もターゲットになっちゃうと、その有用性を失っちゃうんだ。<br>でも、これは典型的なSWEの役割に関連する幅広いタスクをテストするんだよ。プログラミングの熟練度、厳格なコードレビューを通じた推論、クリーンなコード、オープンソース、テストとかね。LeetcodeやHackerrankのテストはLLMでカンニングや突破ができちゃうことを考えると、すでにゲーム化されまくってるだけでなく、その役割に関連する何もテストできてないんだ。<br>＞もしベイエリアのすべての”なりきり”企業がこれを採用のスクリーニングとして要求し始めたら、LKMLがどうなるか想像してみて！<br>それなら、これで時間を節約できるし、Linuxカーネルのような高プロファイルプロジェクトで高品質で機能的なオープンソースの変更を示すのは面接官の役目なんだ。そして基準は意図的に高く設定されているんだよ。”面接カンニング”ソフトがインストールされた何百人もの候補者が、ただコーディング面接をパスするためだけにいると想像してみて。面接官も候補者も損するだけだ。" userName="rvz" createdAt="2025/10/10 08:10:42" color="#45d325">}}




{{<matomeQuote body="＞それなら、これで時間を節約できるし、Linuxカーネルのような高プロファイルプロジェクトで高品質で機能的なオープンソースの変更を示すのは面接官の役目なんだ。そして基準は意図的に高く設定されているんだよ。<br>それは、メンテナーの時間をあなたの一次面接に使うっていう犠牲の上になりたつんだよ。<br>https://news.ycombinator.com/item?id=24643894" userName="philipwhiuk" createdAt="2025/10/10 20:24:59" color="#ff5733">}}




{{<matomeQuote body="他の人も警告してたけど、npmエコシステムが怖い例だよね。質の低いnpmパッケージを大量に作って、既存の有名パッケージに便乗させて、自分の”広くインストールされたパッケージの作者”っていう実績を作ってるらしいよ。" userName="fifticon" createdAt="2025/10/10 14:42:16" color="#ff33a1">}}




{{<matomeQuote body="めっちゃいい記事だった！Linuxカーネルへの貢献は怖いと思ってたけど、これを読んで自信とインスピレーションが湧いたよ。ハードウェアの問題をデバッグするガイドにもなるし、作者がメンテナーの仕事の重要性を理解してパッチ提出に緊張したってところが特にいいね。" userName="VALTIELENTINE" createdAt="2025/10/10 12:24:25" color="#38d3d3">}}




{{<matomeQuote body="へぇ〜！Linuxエコシステムのことあんまり知らなかったから、リーナス・トーバルズが今も日々のレビューやリリース作業に深く関わってるって知って驚いたよ。" userName="alexchantavy" createdAt="2025/10/09 20:27:18" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="素晴らしい記事だったよ。カーネルへの初貢献おめでとう！" userName="zephyreon" createdAt="2025/10/10 00:52:42" color="">}}




{{<matomeQuote body="めちゃくちゃ素敵な記事で、すごくよく書けてた！投稿してくれてありがとうね。" userName="whoami730" createdAt="2025/10/09 18:48:41" color="">}}




{{<matomeQuote body="えっ…コスキブオリ？そりゃあ彼のLinuxパッチがすぐ採用されるわけだ、フィンランド人贔屓だろ！貧乏なエストニア人だったら…って冗談だよ（笑）。Linuxパッチを成功させるまでの話、めちゃくちゃクールだった！俺もEmacsのパッチが通った時、似たような興奮があったな。" userName="eduction" createdAt="2025/10/09 22:19:36" color="#ff5733">}}




{{<matomeQuote body="パッチをレビューしたサブシステムのメンテナーもフィンランド人だって考えたら、このジョーク、さらに面白いね！" userName="vkoskiv" createdAt="2025/10/10 00:47:43" color="">}}




{{<matomeQuote body="ナイス、Torille！俺も昔、初めてのカーネルパッチを出したことあるよ。MacBook Pro 2010のGeForce 320MでOpenGLアプリがメモリ不足でクラッシュするから、nouveau drmコードを調べて間違いを見つけたんだ。提出には苦労したけど、採用された時は嬉しかったなぁ。当時はパッチのチェック用スクリプトなんて知らなかったけど、これからのためになりそう！" userName="glaze" createdAt="2025/10/10 13:15:19" color="#785bff">}}




{{<matomeQuote body="君のウェブサイトのデザイン、すごく気に入ったよ！デザインとか設定についてどこかにまとめてる？" userName="indigodaddy" createdAt="2025/10/09 18:13:24" color="">}}




{{<matomeQuote body="ありがとう！まだ文書化してないけど、君で2人目だから多分やるべきだね。このサイトはZola[0]でビルドされてて、Radion[1]テーマをちょっといじって使ってるよ。<br>[0]: https://www.getzola.org/<br>[1]: https://github.com/micahkepe/radion" userName="vkoskiv" createdAt="2025/10/09 18:19:38" color="#ff33a1">}}




{{<matomeQuote body="おめでとう！フィンランド好きで住んでる俺もLinuxカーネルに貢献するのが夢なんだ。<br>コミットに使ったEメールとGitHubプロフィールのEメールは同じ？<br>同じならGitHubミラーのコントリビューターリストと君のプロフィールに表示されるはずだけど、ちょっと見た感じだと見当たらないみたい。" userName="asimovDev" createdAt="2025/10/10 09:46:36" color="#45d325">}}




{{<matomeQuote body="なんでHDDをSSDにアップグレードしないんだろう？古いハードウェアでも、よくHDDがボトルネックになることってあるよね。" userName="CrossVR" createdAt="2025/10/10 00:44:55" color="">}}




{{<matomeQuote body="PATAのSSDで信頼できる高品質なものが見つかるまで、アップグレードは保留にしたかったんだ。<br>まだ調べてないから、何か良い情報があったら教えてほしい！" userName="vkoskiv" createdAt="2025/10/10 01:01:10" color="#38d3d3">}}




{{<matomeQuote body="もし本当にPATAなら、PATA-to-CFアダプターを使って、速くて大きいCFカードを手に入れるのが良いんじゃないかな。" userName="mmh0000" createdAt="2025/10/10 02:43:41" color="#ff5733">}}




{{<matomeQuote body="カーネル開発ってずっと謎だったから、このブログ投稿でプロセスを解説してくれて本当に感謝してるよ。<br>開発中にAIツールとか使ってみた？" userName="raybb" createdAt="2025/10/09 16:49:26" color="#ff33a1">}}




{{<matomeQuote body="これ、俺のバケットリストにも入ってるんだ。<br>C言語が全く分からないから、最近のRustの進展には大喜びしてるよ。" userName="Havoc" createdAt="2025/10/09 16:20:38" color="">}}




{{<matomeQuote body="Rustと比べたら、C言語はかなり簡単だよ。" userName="pantalaimon" createdAt="2025/10/09 20:33:15" color="">}}




{{<matomeQuote body="素晴らしい記事で、すごく分かりやすかったよ。<br>関連する追加情報も詳しく書いてくれて、感謝してる。" userName="ddtaylor" createdAt="2025/10/09 18:25:39" color="">}}




{{<matomeQuote body="すごいね、おめでとう！Linuxに初貢献するまでの道のり、読むのが楽しかったよ。深く掘り下げる姿勢にはいつも感心するし、記事にしてくれて本当にありがとう！" userName="sim7c00" createdAt="2025/10/10 16:14:05" color="">}}




{{<matomeQuote body="ボタンを押した時にusbhid-dumpで何か表示されるか教えてくれる？" userName="jkhanlar" createdAt="2025/10/10 04:12:38" color="#ff5733">}}




{{<matomeQuote body="これ、すごく励みになったよ！手順を詳しく説明してくれて本当にありがとうね！" userName="malkia" createdAt="2025/10/09 20:36:26" color="">}}




{{<matomeQuote body="すごくよく書けてる！この詳細なレポート、楽しく読ませてもらったよ。" userName="bhasi" createdAt="2025/10/09 20:48:37" color="">}}




{{<matomeQuote body="それは本当にすごいことだよ、よくやったね！これからもLinuxにたくさんのパッチを追加していくことを期待してるよ！" userName="abrookewood" createdAt="2025/10/10 12:07:20" color="">}}




{{<matomeQuote body="なかなかクールな記事だね。俺もいつか、こんな風にハックする時間とか必要性ができたらいいなと思うよ。" userName="mattbillenstein" createdAt="2025/10/10 04:46:40" color="">}}




{{<matomeQuote body="素晴らしい記事をありがとうね！" userName="petetnt" createdAt="2025/10/09 17:12:48" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
