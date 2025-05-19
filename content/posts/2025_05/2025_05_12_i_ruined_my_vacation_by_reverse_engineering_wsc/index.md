+++
date = '2025-05-12T00:00:00'
months = '2025/05'
draft = false
title = 'WSCをリバースエンジニアリングして休暇がパーになった話'
tags = ["リバースエンジニアリング", "Windows", "セキュリティ", "ハッキング", "システム解析"]
featureimage = 'thumbnails/blue_green4.jpg'
+++

> WSCをリバースエンジニアリングして休暇がパーになった話

引用元：[https://news.ycombinator.com/item?id=43959403](https://news.ycombinator.com/item?id=43959403)




{{<matomeQuote body="Defenderを無効にする一番強引だけど効果的な方法は、Linux USBで起動してC:\ProgramData\Microsoft\Windows Defenderをリネームして、その場所に空ファイルを作る方法だって見つけたよ。" userName="nyanpasu64" createdAt="2025/05/12 05:09:08" color="">}}




{{<matomeQuote body="windowsに署名付きマニフェストがなくて、それが検出できないのが変だね。" userName="keepamovin" createdAt="2025/05/12 05:20:22" color="">}}




{{<matomeQuote body="Windows Updateを完全に無効にするには、wuaueng.dllと.exeの所有権を取る手もあるよ。Windows Homeでは唯一効果的な方法だね。" userName="vachina" createdAt="2025/05/12 06:47:46" color="">}}




{{<matomeQuote body="でもインターネットに繋がってるシステムでアップデート無効にするのは最悪だろ。その後どうやってアップデートすんの？" userName="subscribed" createdAt="2025/05/12 07:53:41" color="">}}




{{<matomeQuote body="Group policiesはまだ効果てきめんだよ。俺はhomelabにコントローラー立てて、ローカルドメイン組んで、全ユーザーのdefenderポリシーだけ自動で変えるようにしてるもん。" userName="71bw" createdAt="2025/05/12 05:59:36" color="#38d3d3">}}




{{<matomeQuote body="win11だとGroup policyはもう効かないよ。アップデートで元に戻されるし、リアルタイム監視オフにするとdefenderがマルウェアだって検知するんだ。" userName="devwastaken" createdAt="2025/05/12 09:52:34" color="">}}




{{<matomeQuote body="世界中のPCはアップデートしてるから、マルウェア作者は古いバージョンを悪用しないことが多い。ChromeもWindowsもそう。<br>国家レベルの攻撃者以外には、2025年にはパッチされてないChromeやWindowsでもドライブバイ攻撃はされないだろう。" userName="londons_explore" createdAt="2025/05/12 08:22:30" color="">}}




{{<matomeQuote body="11 LTSC 24H2ではそんな問題全然ないけど？Tamper Protection無効にするの忘れただけじゃない？" userName="71bw" createdAt="2025/05/12 10:09:19" color="">}}




{{<matomeQuote body="Windows updateとwindows defenderを無効にすることが、システムの侵害リスクを有意に高めるっていう具体的な証拠は見たことがない。<br>去年の終わりにWindows 10 2016 ltscをVMに入れ、8年遅れの状態でやばいサイトを見たが感染しなかった。<br>ブラウザを最新にする方が重要だろう。" userName="stuffoverflow" createdAt="2025/05/12 09:21:24" color="#ff33a1">}}




{{<matomeQuote body="10年前にLinuxに移行した身からすると、このコメント欄見てるとWindowsが本物のハッカー向けディストロになったみたいだね。" userName="OsrsNeedsf2P" createdAt="2025/05/12 10:12:44" color="">}}




{{<matomeQuote body="Group policiesとかregistry keysってのはさあ、優しい提案みたいなもんなんだよ。ファイルを消したり名前変えたりするのは”聞いちゃいねえよ、俺のPCだろ”って感じのアプローチだね。" userName="grishka" createdAt="2025/05/12 15:42:26" color="">}}




{{<matomeQuote body="ある意味、ずっとそうだったんだよな。Linuxにはさ、きれいに物事をやる良い方法と、変なハックがあったりするじゃん。Windowsだと、Microsoftがエコシステムをどんどん囲い込んでるせいで、変なハックから始まることが多いんだよ。（俺はWindowsを主にゲームとVRで使ってるけど、基本的なレベルで動かし続けるために常にシステムをいじくり回さないといけなくて、マジ悲しい。まさかVRで8Kのヨーロッパドキュメンタリーを見るだけで、GitHubで見つけたDirectShowフィルターを設定する必要があるなんて、誰が考えたと思う？）" userName="animuchan" createdAt="2025/05/12 11:10:37" color="#ff5733">}}




{{<matomeQuote body="まだDOSとかWin98に対してアクティブな攻撃があるんだぜ。ボットファームのサイズ増やそうとしてる、自動化されたドライブバイ攻撃とかね。かなり古いシステムに対する新しいエクスプロイトも、まだリリースされてるんだよ。" userName="shakna" createdAt="2025/05/12 10:45:54" color="#ff5c5c">}}




{{<matomeQuote body="Win11 Enterprise版のイメージ配布する準備するのにさ、200行くらいのpowershellスクリプトでMSが突っ込んでるブロートウェア全部消してるんだぜ。マジ馬鹿げてる。無料でめっちゃ良い製品作ってるLinuxディストロの開発者たちって、Microsoftの高給もらってる連中とは比べもんになんないよな。" userName="Fokamul" createdAt="2025/05/12 14:58:23" color="#ff33a1">}}




{{<matomeQuote body="確かにそれはあるね。Windowsはコード署名とかDISMやSFCを使ってやってる。でも、これはバイナリの話じゃないんだよ。定義とか設定がどこに保存されてるかって話。C:ProgramDataであって、C:Program Filesじゃない。システムもそこまで厳しく文句言えないんだ。サードパーティのエンドポイント保護だってあるわけだし。" userName="da_chicken" createdAt="2025/05/12 11:08:45" color="#45d325">}}




{{<matomeQuote body="DOSってどうやって攻撃するわけ？ネットワークサポートないじゃん。それにローカルアクセスできてるなら、もう特権持ってんじゃん。" userName="Sesse__" createdAt="2025/05/12 12:19:13" color="">}}




{{<matomeQuote body="それ、結構怪しい理屈だと思うけど。治安悪すぎる地域に住んでるから、他の奴らがみんな鍵かけてるから自分は鍵かけなくていいや、みたいなさ。" userName="eru" createdAt="2025/05/12 08:45:02" color="">}}




{{<matomeQuote body="DOSのネットワークスタックを攻撃するんだよ。それはまだ活発に開発されてるんだ（mTCPは2025年1月が最終更新）。ビジネスでネットワーク使ってるDOSって結構あるからさ。DOSのネットワークスタックはパケットドライバとNICドライバとプロトコルライブラリでできてて、全部攻撃対象になりうるんだ。特にNICドライバはさ、最初にリリースされてからあんまり更新されてないことが多いんだよな。当時のハードウェアメーカーは人に使ってもらうのがゴールで、サポートは後回しだったからさ。意外と新しいDOSのNICドライバもあるんだぜ。Realtekとか、ISA NICをまだ作ってサポートしてるって聞いたよ。" userName="leeter" createdAt="2025/05/12 12:38:19" color="#785bff">}}




{{<matomeQuote body="そのpowershellスクリプト、俺たちにもシェアしてくれない？" userName="RedCardRef" createdAt="2025/05/12 15:00:33" color="">}}




{{<matomeQuote body="Windows Updateにも同じことできるよ。" userName="grishka" createdAt="2025/05/12 20:55:05" color="">}}




{{<matomeQuote body="その通り！今やブラウザが主要な攻撃経路だよ。ほとんどのデバイスで一番無防備なソフトだからね。ブラウザのゼロデイ対策で、ダウンロード不要の”web RPA agent creation”っていうブラウザ隔離製品を作ったんだ。正当な防御層だけど、使い勝手が課題で普及は進んでないな。特にDLPとか厳重なブラウザが必要な規制対象企業で使われてるよ。でも、この技術層の可能性はまだ始まったばかりだと思う。" userName="keepamovin" createdAt="2025/05/12 10:26:30" color="#38d3d3">}}




{{<matomeQuote body="＞まさかVRで8Kのヨーロッパドキュメンタリー見るのに、GitHubにあるDirectShowフィルターの設定が必要になるとはね。Dios Mio、mpvを使ってgpu-hqを有効にしろよ。" userName="SSLy" createdAt="2025/05/12 11:25:29" color="">}}




{{<matomeQuote body="それって、ある人気製品がやってるやり方と一緒だね。それでインターネット全体の25%くらいをダウンさせてるけど…" userName="ForOldHack" createdAt="2025/05/12 06:02:20" color="">}}




{{<matomeQuote body="泥棒が全てのドアをチェックするコストや危険が高ければ筋が通るよね。残念ながら、ネットワークに繋がったコンピューターだと、ドアチェックはリスクなくて実質無料なんだ。" userName="TeMPOraL" createdAt="2025/05/12 11:04:13" color="#38d3d3">}}




{{<matomeQuote body="じゃあ古いコードを攻撃するんじゃなくて、今も活発に開発されてるネットワークスタックを攻撃してるってこと？それって、ベースのプラットフォームが古くても、Win98を攻撃するのとは全然違う話な気がするな。" userName="Sesse__" createdAt="2025/05/12 14:20:20" color="">}}




{{<matomeQuote body="エクスプロイトが何年も、時には何十年も前から存在してたら最悪だよね。古いエクスプロイトが山積みになってて、必要な時に引っ張り出して使われたりしたら、さらに最悪だろうな。" userName="perching_aix" createdAt="2025/05/12 09:04:50" color="#ff33a1">}}




{{<matomeQuote body="無効にしたはずなのに、Defenderのグループポリシーが自動で再有効化されるのは簡単に再現できるよ。Defenderがグループポリシーの変更をマルウェア検知してるスクリーンショットもあるし。Windowsを自分でコントロールできてるなんて、全部幻想だよ。" userName="devwastaken" createdAt="2025/05/12 13:46:02" color="#38d3d3">}}




{{<matomeQuote body="サンキュー！でもVRでどうやって動かすの？マニュアル[1]見ても見つけられないんだけど。<br>[1]: https://mpv.io/manual/master/" userName="animuchan" createdAt="2025/05/13 08:06:02" color="">}}




{{<matomeQuote body="これ見て→ https://github.com/Raphire/Win11Debloat 最近は最初にTiny11入れて、それからこれ使って残りの不要なやつ消してるよ。" userName="qingcharles" createdAt="2025/05/12 17:38:30" color="">}}




{{<matomeQuote body="参考までにね、WSCはWindows Security Centerのことだよ。" userName="qbane" createdAt="2025/05/12 04:42:49" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="助かるよ。初めて略称が出てきた時に筆者が定義してくれないのって、マジでイライラするんだよね。" userName="Washuu" createdAt="2025/05/12 07:38:46" color="#785bff">}}




{{<matomeQuote body="でも、してるじゃん：＞こういうごちゃごちゃを全部管理してるシステムの部分をWindows Security Centerって呼んでて、略してWSCだよ。" userName="unmole" createdAt="2025/05/12 07:44:17" color="">}}




{{<matomeQuote body="略称の定義は、初めて出てくる場所の近くにないと意味ないんだ。私の画面だとスクロールしないと見えないから。タイトルの下とかにあれば分かったと思う。参考資料も貼っておくね。＊ https://apastyle.apa.org/style-grammar-guidelines/abbreviati... ＊ https://www.stylemanual.gov.au/grammar-punctuation-and-conve... ＊ https://learn.microsoft.com/en-us/style-guide/acronyms 私、分かりやすくするために文章校正よくやるから、こういうの気になっちゃうんだよね。" userName="Washuu" createdAt="2025/05/12 08:35:39" color="#ff5c5c">}}




{{<matomeQuote body="これ、まあまあ役立つフィードバックなんだけど、ブログ記事の構成上どう直せるかちょっと分からなくて。最初の段落に『＊WSCはWindows Security Centerの略です』って一行追加するだけで大丈夫だと思う？" userName="es3n1n" createdAt="2025/05/12 08:49:18" color="">}}




{{<matomeQuote body="私の提案ね：この記事では、Windows Security Center（WSC）のサービスAPIを直接使ってWindows Defenderを無効にするツール、defendnotを実装するまでの道のりを簡単に説明するよ。" userName="magicalhippo" createdAt="2025/05/12 09:16:03" color="#45d325">}}




{{<matomeQuote body="ありがとう！最初の段落、その変更を含めたよ！" userName="es3n1n" createdAt="2025/05/12 12:32:40" color="">}}




{{<matomeQuote body="あー、なるほどね．このやり取り見て、ちょっと混乱してたんだ．だってWSCって最初の文でハッキリ定義されてたじゃん？なんで？って思ってたんだけど、これで理由が分かったよ．フィードバック取り入れてくれてありがとう！後から記事に来た私みたいな読者にとっては、プラスの効果があったよ．" userName="cheschire" createdAt="2025/05/12 15:34:37" color="#ff5c5c">}}




{{<matomeQuote body="感謝してるよ、ありがとうね！〜" userName="Washuu" createdAt="2025/05/13 05:05:56" color="">}}




{{<matomeQuote body="abbr タグ使うのはどう？ タイトル属性も使えるし，記事の流れを邪魔しないよ．スマホの人はインジケーターを長押しすれば詳細読めるし，最初から WSC 知ってる人はそのまま理解できるしね．https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/..." userName="mdaniel" createdAt="2025/05/12 14:38:50" color="#ff5733">}}




{{<matomeQuote body="よくある解決策は，最初に使った後に括弧で正式名称を書くことだよ．僕が Electronic Engineering degree で学んだ簡単なルール（僕らアクロニムばっか使うんだけど）：論文とか誰かが読むものにアクロニムを書くときは，読者が知らないと思って，最初の使用時にすぐ後ろに正式名称を括弧書きすること．<br>追記：兄弟コメントも言ってるけど，最初にフルで書いて，括弧にアクロニムを書くのもありだよ．" userName="alias_neo" createdAt="2025/05/12 09:48:09" color="#ff5733">}}




{{<matomeQuote body="これって Slack？ どんなロギングフロー使ってるのかな？<br>https://blog.es3n1n.eu/posts/how-i-ruined-my-vacation/pics/p..." userName="lawgimenez" createdAt="2025/05/12 10:40:40" color="">}}




{{<matomeQuote body="これ Discord の Compact テーマだよ．" userName="es3n1n" createdAt="2025/05/12 12:30:05" color="">}}




{{<matomeQuote body="少なくとも WSC は後で定義されてるね．僕まだ CTF が何かわからなくて頭抱えてるんだけど．［追記 - Capture The Flag かも？］" userName="n4r9" createdAt="2025/05/12 09:12:11" color="">}}




{{<matomeQuote body="君の言う通り，CTF は定義されてないね．うん，Capture The Flag っていうサイバーセキュリティ系の競技だと思うよ．<br>https://news.ycombinator.com/item?id=43960389" userName="tempaway43563" createdAt="2025/05/12 10:39:04" color="">}}




{{<matomeQuote body="いや，定義してるよ．タイトルでは短縮してるけど，記事の中で初めて使う時にアクロニムを定義してる．" userName="rschiavone" createdAt="2025/05/12 07:55:16" color="">}}




{{<matomeQuote body="「使ってたアンチウイルス」の開発者が DMCA を送ってきたってところで混乱した．なぜ送る理由があるの？ 別のアンチウイルスをリバースエンジニアリングしてプロジェクトに使ったってこと？「Impersonating WinDefend」って見出しもあったし，著作権法違反したってこと？" userName="gwbas1c" createdAt="2025/05/12 13:50:56" color="#45d325">}}




{{<matomeQuote body="僕の理解では，彼は別の AV tool の残骸を使ってシグネチャ要件を回避したんだ．それはグレーゾーンなのはわかる（IMO では transformativeness の議論はあるけど，僕は弁護士じゃないし）．" userName="mmastrac" createdAt="2025/05/12 14:18:09" color="#ff33a1">}}




{{<matomeQuote body="既存のAVプログラムの一部をコピーしてるから著作権法違反だね。引用した箇所の一つ前の段落にも書いてあるけど、このプロジェクトは既存のアンチウイルスからサードパーティコードを使ってて、そのAVをWSCに登録させてたみたいだよ。" userName="dec0dedab0de" createdAt="2025/05/12 14:17:41" color="">}}




{{<matomeQuote body="これヤバい（cursed）ね。<br>https://github.com/es3n1n/defendnot/blob/master/defendnot-lo...<br>何が起きてるか気になるならこっち見てみて。<br>https://github.com/es3n1n/defendnot/blob/master/cxx-shared/s..." userName="raptorfactor" createdAt="2025/05/12 07:01:53" color="#ff5733">}}




{{<matomeQuote body="C++に詳しい人で、何が起きててなんでこれがcursedなのか教えてくれる人いる？" userName="chii" createdAt="2025/05/12 07:26:37" color="">}}




{{<matomeQuote body="問題のコード`defer-＞void { CoUninitialize(); };`がマクロで`auto _defer_instance_1234 = Defer{} % [&]()-＞void { CoUninitialize(); };`みたいに展開されるって解説してるよ。<br>`Defer{}`とか`%`とか`[&]()-＞void`のラムダ構文とか、`DeferHolder`がデストラクタで関数を呼ぶ仕組みを説明してる。<br>マクロでC++っぽいけど違う構文になってるのがcursedな理由だって。<br>もっとマクロっぽく`DEFER(...)`みたいにする方が良いんじゃないかって提案もしてるね。" userName="quietbritishjim" createdAt="2025/05/12 08:45:45" color="#ff5c5c">}}




{{<matomeQuote body="同じことだけど、もっとマシなやり方もあるよ。<br>https://github.com/abseil/abseil-cpp/blob/master/absl/cleanu..." userName="jeffbee" createdAt="2025/05/12 10:47:07" color="">}}




{{<matomeQuote body="面白いね！このマクロは今のスコープが終わった後に実行されるコードを登録できるってことかな。<br>`auto _defer_instance_1234 =` って、作られた後どこからも参照されてないみたいだけど、コンパイラは未使用だってすぐ検出して最適化で消しちゃわないの？デストラクタは常に今のスコープを抜けた後で呼ばれるって保証されてるの？" userName="chii" createdAt="2025/05/12 09:28:33" color="">}}




{{<matomeQuote body="前のコメントの質問（最適化で消えないか、デストラクタ呼び出しが保証されるか）について。<br>「そう、その通りだよ。」って肯定してる。<br>デストラクタにはファイルクローズやmutexアンロックみたいな副作用があるから、コンパイラは勝手に最適化で消せないんだって。<br>スコープの終わりで呼ばれること、コンストラクタと逆順で呼ばれることは保証されてるよ。" userName="quietbritishjim" createdAt="2025/05/12 10:20:30" color="#ff5733">}}




{{<matomeQuote body="そう、それは保証されてるよ。<br>副作用があるステートメントを、コンパイラは勝手に省略（elide）できないんだ。" userName="jeffbee" createdAt="2025/05/12 10:21:14" color="#785bff">}}




{{<matomeQuote body="`-＞void`は要らないんじゃない？<br>コンパイラは戻り値がないことを推論できるはずだよ。<br>`defer { CoUninitialize(); };`みたいに書くだけなら、そんなにcursedに見えなかったかもね。<br>一番簡単な「直し方」はマクロを全部大文字にすることに同意するよ。" userName="vitus" createdAt="2025/05/12 12:19:46" color="#45d325">}}




{{<matomeQuote body="前のコメントの指摘（`-＞void`不要、`defer { ... };`構文）に同意したり、それでも個人的には嫌だと言ったりしてる。<br>一番簡単な修正はマクロを大文字にすることって話に触れつつ、実はオブジェクト風じゃなくて関数風マクロ[1]にする方が魔法っぽさが減って良いって提案してるんだ。<br>[1] https://stackoverflow.com/questions/36126687/function-like-m..." userName="quietbritishjim" createdAt="2025/05/12 13:40:54" color="">}}




{{<matomeQuote body="正直、関数に偽装してるけど実際は関数じゃないマクロはマジ嫌いだわ。例えば＃define min(x, y)みたいに引数を複数回評価するやつとかね。引数が1個だけならちょっとはマシだけど、htonlみたいなのもイライラするんだよ。”ベスト”なやり方は、関数っぽく見せつつ名前を全部大文字にすることだと思う。(あと、defer { ・・・ }; の後ろにセミコロンがいるのも相変わらずイケてないと思うわ。キーワードなのにブロック取るみたいな錯覚が崩れるしね。)" userName="vitus" createdAt="2025/05/12 18:59:13" color="#ff33a1">}}




{{<matomeQuote body="＞ ＊ Deferにはoperator%がオーバーロードされてる。これはcallableなオブジェクト（型はテンプレートパラメータCallable）を取って、DeferHolder＜Callable＞インスタンスを返すテンプレート関数。<br>operator%を使う理由って何かあるの？普通のメソッド呼び出しじゃダメなの？もしかしてカッコつけ？でもその呼び出しマクロの中に隠れちゃってるし役に立たない気がするけど。" userName="Sebb767" createdAt="2025/05/12 10:16:03" color="">}}




{{<matomeQuote body="普通のメソッド呼び出しだと、ラムダ関数の終わりに閉じカッコが必要になるんだ。でもマクロは行の先頭にあるだけだから、閉じカッコを提供できないんだよね。だからマクロを呼ぶ側が自分でそれを供給しなきゃいけなくなる。コメントの最後の方で言ったけど、このdeferマクロは呼び出し側が閉じカッコを不要にするために特別に工夫されてるっぽいんだ。それが気にならないなら、「実装をシンプルにできる」って書いたけど、それはつまり、君が言うようにDefer::operator%（というかDeferクラス自体）がいらなくなるってこと。（コード例は長いので省略）試してないし普段マクロ書かないから変な問題あるかもだけど。" userName="quietbritishjim" createdAt="2025/05/12 10:34:51" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="うーん、これより構文が分かりやすい（-＞voidとかない）もっと良い実装もあるけど、それ以外は問題ないよ。何するのかは結構明らかだし、似たようなものが過去に必要だったことあるわ。cppconの講演で、優先順位のために-＞*演算子を使ってて、マクロを使えば’defer { ・・・ };’みたいに使えるって話があったな。" userName="variadix" createdAt="2025/05/12 15:14:34" color="">}}




{{<matomeQuote body="これは’defer’っていう仕組みを実装したクラスだよ。GoとかJavascriptの同じ仕組みに似てて、現在のブロックスコープを抜けるまで指定されたブロックの実行を遅延させるんだ。これ、実際めちゃくちゃ賢いし、かなり役に立つんだよね。個人的にはそんなにヤバいとは思わないけど、古いC++使いにとってはとんでもない匂い（smell）がするかもね。言語機能であるべきものをクラスで実装しちゃうのは、一部の人にとってはイデオロギー的にやりすぎに感じるかもしれないね。" userName="aa-jv" createdAt="2025/05/12 11:17:13" color="#ff5733">}}




{{<matomeQuote body="C++はある程度、オブジェクトのデストラクタがスコープを抜けるときに呼ばれることを保証してるんだ。だからこのメカニズムを’悪用’して、現在のスコープをどう抜けようが関係なく、スコープの終わりに実行されるように’登録’できるんだよ。" userName="eru" createdAt="2025/05/12 08:47:44" color="#ff5733">}}




{{<matomeQuote body="うん、ごめん、時間的な制約でCOM関連のRAIIを全部自分で実装する気にならなかったんだ。次のアップデートでは変えるつもりだよ。" userName="es3n1n" createdAt="2025/05/12 07:13:37" color="#ff5c5c">}}




{{<matomeQuote body="https：／／github．com／es3n1n／defendnot／pull／6" userName="es3n1n" createdAt="2025/05/12 08:05:09" color="">}}




{{<matomeQuote body="https：／／en．cppreference．com／w／cpp／experimental／scope_exit<br>scope_exit｛［＆］｛ ・・・ ｝ ｝；" userName="gavinray" createdAt="2025/05/12 13:35:12" color="#ff5733">}}




{{<matomeQuote body="正直、これが公開されるAPIの一部じゃないなら、C++的にはそんなにヤバくないよ、特にその場限りのクリーンアップ操作がいっぱいあるならね。個人的に唯一気に入らないのはシンタックスだけかな。普段はマクロでdeferを実装して、見た目をキレイにしてるんだ。ちゃんとやれば`defer ［］｛ something()； ｝；` みたいにキーワードっぽく見えるようになるよ。" userName="junon" createdAt="2025/05/12 07:26:59" color="#ff5c5c">}}




{{<matomeQuote body="俺的にはさ、そのsyntaxが”呪われてる”って言われてる理由だと思うんだよね。IMO君の提案もno better - yes it makes defer look like a keyword, but it’s not! As I said in a sibling comment, I think it’s clearer if you’re honest that you’re using a macro: DEFER([](){something();});<br>Or you could even make a non-macro version (but then you need to think of variable names for each defer):   auto defer_uninitialise = do_defer([](){CoUninitialize();});" userName="quietbritishjim" createdAt="2025/05/12 10:38:54" color="#785bff">}}




{{<matomeQuote body="Sure, 俺も__LINE__使ったことあるよ for this before too, and yeah I agree that my keyword construction was too clever (seemed cool at the time, since the macro had a dangling = at the end to make it work)." userName="junon" createdAt="2025/05/13 00:03:06" color="">}}




{{<matomeQuote body="Why did you write it with two structs though? You could do    #define defer(body) DeferHolder COMMON_CAT(_defer_instance, __LINE__) {([&]()-＞void body)};<br><br>and call it as    defer({<br>        function body here;<br>    });<br><br>Which looks much nicer. The preprocessor treats balanced curlies as one single token regardless of how many lines it spans, precisely to enable this usage." userName="Asooka" createdAt="2025/05/12 13:09:33" color="#45d325">}}




{{<matomeQuote body="What’s cursed about this? 俺はThis pattern all over in my code although the signature at the callsite looks a bit different (personal preference).D (for example) has the concept of statements that trigger at end of scope built into the language." userName="fc417fc802" createdAt="2025/05/12 08:05:55" color="">}}




{{<matomeQuote body="Michael Featherの言葉”Code is a way you treat your coworkers”を引用。TL;DR: AIじゃない。記事のコードはオブジェクトがscopeから抜ける時にfunction callをdeferさせるもの。C macrosでsuccinctにしてるけど、UPPER CASEを使わないから普通のfunction callに見えて紛らわしい。This patternに慣れてない人はconfusionするかもね。でもcommon enoughだってopinionもあるよ。技術的な詳細はnews.ycombinator.comのコメント参照。" userName="drabbiticus" createdAt="2025/05/12 14:53:34" color="#785bff">}}




{{<matomeQuote body="lol, 俺はWindowsのvirtual desktopsをreverse engineeringしてvacationをsignificantly improvedしたぜ :)<br>best memories of last year: reverse engineering is hellovafun!learned a lot of interesting thing, namely there is an undocumented messaging underlying the RPC in windows: https://csandker.io/2022/05/24/Offensive-Windows-IPC-3-ALPC...." userName="lepicz" createdAt="2025/05/12 12:09:30" color="#45d325">}}




{{<matomeQuote body="For those wondering:WSC stands for Windows Security Center.俺もhad to look it up as well" userName="dark-star" createdAt="2025/05/12 07:24:00" color="">}}




{{<matomeQuote body="”＞The part of the system that manages all this mess is called Windows Security Center - WSC for short。”<br>It’s in the article" userName="einsteinx2" createdAt="2025/05/12 11:10:59" color="">}}




{{<matomeQuote body="true, but you have to read until the 4th paragraph to find it. Putting it in the title would have been better" userName="dark-star" createdAt="2025/05/12 11:29:54" color="">}}




{{<matomeQuote body="なんでWSCを無効にしたいの？" userName="s4mbh4" createdAt="2025/05/12 06:36:55" color="">}}




{{<matomeQuote body="もっとパフォーマンスが良くて、リソース食わないWindowsのアンチウイルスってないの？" userName="fransje26" createdAt="2025/05/12 09:03:08" color="">}}




{{<matomeQuote body="それ”アンチウイルス無し”って呼ぶんだぜ。この記事がやろうとしてることじゃん。アンチウイルスなんて役立たずのマルウェアだよ。" userName="hoseja" createdAt="2025/05/12 11:17:44" color="">}}




{{<matomeQuote body="あー、”Windows上級ユーザービンゴカード”引っ張り出してきたわ！このスレッドでもういくつかチェック入ったぞ。<br>アンチウイルスソフトはマルウェア<br>30年前気に入らなかったからWindows Updateは無効にしないと<br>Windows Defenderがリソース食いまくる、ノートPCのレビューでブラウジング10時間とか嘘、DefenderがPCのパフォーマンス実際はぶっ壊してる<br>Linuxに乗り換えるよりWindowsに文句垂れて機能無効化する方がマシ<br>あとは”Windowsクソ、Linuxに乗り換えようと思ってるけど絶対やらない”を待つだけだ。それ来たらビンゴ！" userName="dangus" createdAt="2025/05/12 12:31:36" color="#45d325">}}




{{<matomeQuote body="うちはレコードごとに別ファイルで保存するソフト使ってるんだけど、要はファイルシステムをDB代わりに使ってる感じ。Windows Defenderに例外追加しないと、そのソフト使い物にならないくらい遅いんだよね。例外追加したら（Defender切るか）ちゃんとまた速くなるけど。" userName="BenjiWiebe" createdAt="2025/05/12 12:52:31" color="#ff5c5c">}}




{{<matomeQuote body="俺のハードウェアだ。好きなようにさせてもらうぜ、相棒。<br>ただそれだけ。" userName="xyst" createdAt="2025/05/12 10:25:51" color="">}}




{{<matomeQuote body="熟練ユーザーね。ファイルシステムの概念すらよく分からない人には強制的なAVもまあ理解できるし、だいたい賛成だよ。でも、太古のインターネットの炎で鍛えられたユーザー層もいるんだ。そういう人はブラウザ上の偽explore.exeウィンドウとか絶対クリックしない。<br>ユーザーに選択肢を与えるのが一番だよ。確かにAV無効化はすごく難しくしてもいい。でも、このクソなものをちゃんと無効にする方法を見つけるために、DMCAで消されたリポジトリとかネットの闇を探し回らせるのはやめてくれ。" userName="bob1029" createdAt="2025/05/12 10:18:12" color="#785bff">}}




{{<matomeQuote body="まあ、これは”私の体、私の選択”みたいなストレートな意見だよね。でも、そうじゃない時もある。<br>たぶん君のハードウェアは、ネットワークに繋がるとそのネットワークの他の部分に実際影響を与えるんだよ。もし君のシステムがボットネットに加わって、金のためにDDOS攻撃始めたら？もし君のシステムがレジデンシャルプロキシネットワークの一部になってて、グレーマーケットで他のシステムのあらゆる使用や悪用に使われるためにレンタルされたら？もし君のシステムが、君が知らない間に当局に押収されるまでCSAMとか著作権侵害素材のホストになったら？<br>そして、もし君のハードウェアが社内ネットワーク上の特別な特権的な場所にいたり、価値ある資産のあるVPCを運用してて、それが国家レベルの脅威アクターに侵害され、乗っ取られたら？それでもまだ”君のハードウェア、君の選択”かな？それとも君の悪い選択は他の人にも影響を与えるのかな？" userName="AStonesThrow" createdAt="2025/05/12 10:33:33" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
