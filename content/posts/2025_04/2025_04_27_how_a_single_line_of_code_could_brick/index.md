+++
date = '2025-04-27T00:00:00'
months = '2025/04'
draft = false
title = 'たった一行のコードであなたのiPhoneが文鎮化する可能性'
tags = ["iPhone", "プログラミング", "セキュリティ", "プライバシー", "iOS"]
featureimage = 'thumbnails/green3.jpg'
+++

> たった一行のコードであなたのiPhoneが文鎮化する可能性

引用元：[https://news.ycombinator.com/item?id=43814360](https://news.ycombinator.com/item?id=43814360)




{{<matomeQuote body="このAPIで通知するのにエンタイトルメントいらないって、マジかよ。64ビットの情報をどのプロセスとも共有できるって？これ完全にアプリ間のトラッキングに使えるじゃん。＜br＞正直どんな情報共有したいかはわかんないけど、プロセス間の情報共有は今まで制限されてきた歴史があるんだよね。＜br＞システムが値を保存してくれて、どのアプリから来たか追跡してないなら、再起動しなければアプリ消して再インストールしても情報残るってこと。＜br＞IDFAとかIDFVのリセット回避に簡単に使えそう。" userName="e28eta" createdAt="2025/04/28 02:13:17" color="#785bff">}}




{{<matomeQuote body="それ、アプリ間のトラッキングにピッタリだね。でも、この設計自体は古いみたい。facebookより前からあるかもだから、悪意はないだろうけどさ。たしかに悪用できそうだけど、ネットにつながってればもっと別の良いやり方もあるんじゃない？＜br＞どうなんだろう。" userName="tgv" createdAt="2025/04/28 07:18:43" color="">}}




{{<matomeQuote body="公式ドキュメントによると、NSNotificationCenterはMac OS X 10.0にはもうあったらしいね。NextSTEP 3.3、つまり1995年には存在してたみたいだよ。" userName="tgv" createdAt="2025/04/28 20:16:32" color="">}}




{{<matomeQuote body="俺もまさにそこに目がいったよ。64ビットあれば、アプリ間のトラッキングに簡単に使えちゃうね（1行で！）。まさにiOS版スーパーcookie。これにエンタイトルメントが必要になれば、プライバシー的には良いことだね。" userName="agos" createdAt="2025/04/28 07:41:23" color="">}}




{{<matomeQuote body="センシティブな通知だけエンタイトルメントが必要になったみたいだよ。トラッキング対策にはなってないってことだね。" userName="croemer" createdAt="2025/04/28 09:22:29" color="">}}




{{<matomeQuote body="IDFVは同じベンダーのアプリ間ならトラッキングできるんだよね。でも、ベンダーのアプリ全部消すとリセットされる。ユーザー自身でリセットできるかは知らないけど、ベンダーは自前のIDで紐付けられるから結局同じ。＜br＞あなたが言ってる方法はほぼ同じことだけど、権限が違ったり、ベンダーを超えてできる可能性があるね（事前に合意は必要だろうけど）。" userName="icoder" createdAt="2025/04/28 10:20:09" color="#45d325">}}




{{<matomeQuote body="これが一番ヤバいのは、サードパーティのSDKじゃないかな（分析とか広告とか？）。そういうSDKは、いろんなベンダーのアプリに入り込んでるからね。" userName="e28eta" createdAt="2025/04/28 15:53:43" color="#ff33a1">}}




{{<matomeQuote body="DMAによると、Appleのアプリで使える機能は、サードパーティのアプリでも使えるようにしなきゃいけないんだって。もちろん、Appleは数十億ドル稼いでる囲い込みを守るために、必死で抵抗するだろうね。" userName="jillyboel" createdAt="2025/04/28 15:42:46" color="">}}




{{<matomeQuote body="記事で説明されてるエクスプロイトじゃ、デバイスは“brick”しないよ。それは完全にぶっ壊すことだから。このケースなら、tethered restoreすれば元に戻せるはず。" userName="95014_refugee" createdAt="2025/04/28 00:04:21" color="#45d325">}}




{{<matomeQuote body="見てるとね、“brick”って言葉は言葉の例にもれず，進化してるんだよ。実際には，君が言ってる伝統的な定義じゃなくて，ここで使われてるみたいなもっと緩い意味で使われることが多いんだ。" userName="the__alchemist" createdAt="2025/04/28 00:20:04" color="">}}




{{<matomeQuote body="物理的にiPhoneを完全に“brick”する方法はないよ。DFUモードはROMから起動するから，USBで全部復元できるんだ。Apple Silicon Macも同じ。systemとかを壊しても，別のMacで初期化できる。PCはBIOSを壊したりすると“brick”することがあるから違うんだ。rm -rf /でefi varsを消して“brick”した話もあるけどね。" userName="miki123211" createdAt="2025/04/28 07:56:52" color="#ff5733">}}




{{<matomeQuote body="ちょうど“soft”-brickみたいだね。" userName="Kerbonut" createdAt="2025/04/28 00:22:19" color="">}}




{{<matomeQuote body="もっと大事なのは，その一行コードは単に再起動を強制するだけってことだよ。外部の修理が必要だって言うとしても，“brick”だって考えるなら，タイトルはやっぱり間違ってる。" userName="mook" createdAt="2025/04/28 03:19:31" color="#38d3d3">}}




{{<matomeQuote body="“Bricking”は厳密に定義された用語じゃないんだ。“realtime”みたいな感じで，（この特定のユーザーにとって，この特定の状況で）っていう暗黙の意味がついてくるんだよ。たいていのユーザーにとっては，電源ボタン押しても起動して動かなきゃ“bricked”ってことになる。ここにいるほとんどの読者にとっては，dev toolでbootloaderを再フラッシュするのはかなり簡単だろうけど，USBが動かなくなったら終わりかもね。ASICをde-capして回路をいじって生き返らせる人も数人はいるだろうけどね。" userName="taneq" createdAt="2025/04/28 00:36:17" color="#ff33a1">}}




{{<matomeQuote body="間違いだよ。それは単に再起動を強制するだけじゃなくて，無限再起動ループになるんだよ。起動するたびに再起動しちゃう。<br>結果，soft-brickedになって，デバイスを全部消去してバックアップから復元しなきゃいけなくなるんだ。<br>デバイスの消去が必要でも，完全な“brick”じゃないのは確かだけど，それでもかなり深刻だよ。" userName="SamBam" createdAt="2025/04/28 03:32:51" color="#45d325">}}




{{<matomeQuote body="間違いだよ。“Bricking”ってのは，ユーザーが自分で元に戻したり修理したりできない文鎮になっちゃうことなんだ。それがこの言葉の本来の意味だよ。" userName="cantrecallmypwd" createdAt="2025/04/28 03:45:12" color="#785bff">}}




{{<matomeQuote body="PC側の経験から話すね。PCよりAppleのUXはいいけど，e-wasteにならないのが重要。PCはBIOS壊しても復旧しやすい例とか，efi varsを消しても大丈夫な話とか。Apple Siliconがソフトで“brick”する一番の原因はSSDの寿命消耗だろうね。M4 Mac Miniは交換可能になったけど，多くのMacはSSD交換が大変。AppleはSSD周りのハード選択が怪しいこともあった。ソフトウェアよりハードウェア問題でe-wasteになる可能性の方が高いね。パーツペアリングとか修理性が問題。これはAppleの設計はすごいけど，修理実績はダメってこと。" userName="jchw" createdAt="2025/04/28 18:14:01" color="#ff33a1">}}




{{<matomeQuote body="だから素人には何も言わないけど、の連中はもっと気を遣うべきだと思うんだ。「なんでもあり」な態度はコミュニケーションを難しくするよ。”Soft brick”がすでに存在する正しい用語だよ。" userName="fc417fc802" createdAt="2025/04/28 02:30:17" color="">}}




{{<matomeQuote body="昔、デバイスがもうちょっと大きかった頃は、慣習的に”boat-anchors”って呼んでたね。" userName="AStonesThrow" createdAt="2025/04/28 05:52:16" color="">}}




{{<matomeQuote body="いや、_single line_の部分は一度の再起動を引き起こすだけだよ。終わらないループにするにはウィジェットの設定が必要だから、それは一行以上かかるんだ。" userName="mook" createdAt="2025/04/28 07:13:46" color="">}}




{{<matomeQuote body="A soft brickって焼く前のレンガのことじゃないの？違うかな？だから、用語は’soft brick’じゃなくて’muddied’の方がいいかも。”That updated muddied my device, I had to clean it up with a restore”" userName="nullhole" createdAt="2025/04/28 05:08:06" color="">}}




{{<matomeQuote body="＞ EFI varsをいじるだけじゃ大抵のシステムは起動不能にはならないよ。俺は面白いことやろうとしてEFI varsを何回か壊したことあるけど。UEFI実装はバグが多い傾向にあるけど、全部が壊滅的にひどいわけじゃないし。ちなみに、俺は手元に完全に（フラッシュメモリのダンプを持ってて書き戻せる場合を除いて）brickできるノートPCを持ってるよ。WindowsのAdministrator権限とかLinuxのrootユーザーに利用可能な完全に意図的な操作でEFI変数をいじるだけでね。" userName="timschumi" createdAt="2025/05/01 18:11:02" color="#ff5c5c">}}




{{<matomeQuote body="＞ ”Soft brick”がすでに存在する正しい用語だよ。それは記事が使ってる用語でもあるね。”The result is a device that’s soft-bricked, requiring a device erase and restore from backup.”" userName="rendall" createdAt="2025/04/28 04:41:54" color="">}}




{{<matomeQuote body="それは、コンシューマー向け技術に遅れをとった頑丈な政府向け携帯電話みたいに、扱いにくくて不便なデバイスに対する蔑称だったんだね。Brickっていうのは、ドアストッパーとか投擲物とか建築資材以外には全く役に立たないって意味だよ。" userName="cantrecallmypwd" createdAt="2025/04/28 07:48:46" color="">}}




{{<matomeQuote body="＞ 物理的にiPhoneを完全に”brick”する方法はない。いや、絶対あるよ（jailbrokenなiPhoneを数に入れるならね）。俺はすべての熱スロットリング制限を解除して、その後の世界一ひどい水冷セットアップでマザーボードを損傷させて、一台をbrickしたことがあるよ。ハードウェアが損傷してたらDFUを使って復元なんてできないからね。" userName="Andrew6rant" createdAt="2025/04/28 17:44:41" color="#ff5733">}}




{{<matomeQuote body="- は間違って使うと悪夢だよ。俺自身もこれでやられたことがある。リンク先: https://news.ycombinator.com/item?id=43775027" userName="Koshcheiushko" createdAt="2025/04/28 08:01:27" color="">}}




{{<matomeQuote body="異議あり。”Boat anchor”はJargon Fileにもあるきちんとした用語だよ。不可逆的に壊れたハードウェアを意味する。”一度雷が落ちたら即席のboat anchorさ！”俺は、brickはこのboat-anchorの類推に基づく新しい言葉だと思う。brickは小さいけど、”boat-anchor”ができた頃の部品は巨大だった。90年代はデカいほど信頼されてたんだよ。" userName="AStonesThrow" createdAt="2025/04/29 00:27:39" color="#ff33a1">}}




{{<matomeQuote body="知る限りほとんどのEFI変数はバッテリーバックアップ付きNVRAMに保存されてるから、いつもの解決策はCMOSバッテリー外してクリアすることだってば。ホストOSからは絶対読み書きできないもの（例えばBIOSパスワードとか）だけが解決策だと思うな。分解はいるけどさ。NVRAMクリアすると動かなくなるPCもあるらしいぜ笑" userName="jchw" createdAt="2025/05/01 21:35:44" color="#ff5c5c">}}




{{<matomeQuote body="あと、HN読者には色々デバイスあるだろうけど、スマホしか持ってなくてPCない人もいるからね。そういう人にとってはかなり悲惨だろな。Appleか第三者修理の技術者に見てもらえるといいけど。" userName="codetrotter" createdAt="2025/04/28 00:25:10" color="">}}




{{<matomeQuote body="ちょっと読み飛ばしすぎだよ。記事にはね、Widgetはアプリ開くとき評価されて、システムが失敗を続けるって書いてるじゃん。<br>”再起動後、SpringBoard初期化されたらすぐextension起こされて、以前失敗したからまた最初からやるんだ。”ってさ。" userName="internetter" createdAt="2025/04/28 13:34:12" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="気持ちは分かるけど、流行るとは思えないな。brickedの変種の方が意味通じるよ、直せるまで使えないって意味だし。muddiedの比喩は合わないね、泥まみれでも使えないわけじゃないからさ。" userName="dgoldstein0" createdAt="2025/04/28 07:06:24" color="">}}




{{<matomeQuote body="ソフト問題でe-wasteになるより近年はハード問題で多いって言うけど、短い期間でサポートやめるAppleこそソフト問題でe-waste作ってるんだよ。完璧に動くのにAppleがサポートやめたせいで使えないハードウェアがいっぱいあるもん。タブレットとかApple TVとかApple Watchとかね。他のメーカーもだけど、Appleほどひどいのはないと思うな。" userName="leptons" createdAt="2025/04/28 20:05:49" color="#38d3d3">}}




{{<matomeQuote body="デバイスはpillowedされたって言えるかもね。:D でも古いスマホのバッテリー考えると、ちょっと曖昧か。" userName="taneq" createdAt="2025/04/28 00:29:36" color="">}}




{{<matomeQuote body="だから、たぶん”loafed”かな、brickみたいな塊だけどソフトな感じもあるやつ。<br>”loafed”なデバイス、つまり何もしてないデバイスはloafingしてるってことになるね。" userName="dmckeon" createdAt="2025/04/28 03:16:38" color="">}}




{{<matomeQuote body="”直す”のが昔のbrickの定義だったんだよ、ハード修理って意味で。もし修理がソフト再インストールなら、それはハードウェアは壊れてないってこと。運転できない奴が運転席にいるからって車が壊れてるって言わないだろ！まったく！" userName="nomel" createdAt="2025/04/29 19:06:28" color="#ff33a1">}}




{{<matomeQuote body="これって昔は”OS再インストールが必要”って言われてたの覚えてる。よくあったし大したことなかったから、誰も名前つけようとしなかったんだよ。" userName="nomel" createdAt="2025/04/28 17:57:56" color="">}}




{{<matomeQuote body="あ〜、はいはい。Goebbels effectね。”嘘も千回言えばホントになる”ってやつだ。" userName="two_handfuls" createdAt="2025/04/28 01:41:44" color="">}}




{{<matomeQuote body="Appleは結局新しいの売るだけだろ、きっと。" userName="guappa" createdAt="2025/04/28 05:06:25" color="">}}




{{<matomeQuote body="いいね、17,500ドルはかなり良い額だね。こういうブログ記事って、いつもは二束三文だったり、企業が脆弱性は直すけど全然報奨金払わないってのが普通だったからさ。Appleは2019年以降、こういうのは良くなったみたいだね。" userName="dado3212" createdAt="2025/04/27 20:43:59" color="#45d325">}}




{{<matomeQuote body="最近のYouTube脆弱性の記事のコメントで、報奨金の評価に関する細かいニュアンスの解説を読んだらすごく参考になったんだ。表面上低い/高いに見える評価の理由がよく分かったよ。見つけたらまた貼るね。まあでも、結局ひどい目に遭う人も多いけどね。" userName="nativeit" createdAt="2025/04/27 21:26:50" color="#785bff">}}




{{<matomeQuote body="これのこと？ https://news.ycombinator.com/item?id=43025038" userName="croisillon" createdAt="2025/04/27 21:48:41" color="#ff5733">}}




{{<matomeQuote body="それだ！マジで参考になるよ、俺的にはね。俺の適当な仕事にちゃんと補足してくれてありがとう。" userName="nativeit" createdAt="2025/05/01 03:06:09" color="">}}




{{<matomeQuote body="うん、まさに俺が思い出したやつだ。" userName="williamscales" createdAt="2025/04/28 03:44:33" color="">}}




{{<matomeQuote body="多分こういうやつかな https://hn.algolia.com/?dateRange=all&page=0&prefix=false&qu..." userName="sdeframond" createdAt="2025/04/27 21:47:26" color="#ff5733">}}




{{<matomeQuote body="間違いない。手伝ってくれてサンキュー。" userName="nativeit" createdAt="2025/05/01 03:07:36" color="">}}




{{<matomeQuote body="Zerodiumなら75kドル払ったかもね。でもそれだと倫理的じゃないんだよ、だってIsraelとかAmericaとかがそれを兵器として使うだろうから。" userName="cantrecallmypwd" createdAt="2025/04/28 03:47:23" color="#ff5c5c">}}




{{<matomeQuote body="その前はVupenだったんだよ．企業名なんてどうでもいいんだ，怪しいグループや個人がたくさんいて0dayaを売買してるんだから．国家主体だって全部自分で開発してるわけじゃないし，どこかから手に入れる必要があるんだ．小さくてもゼロじゃない市場があるんだよ．" userName="cantrecallmypwd" createdAt="2025/04/28 07:39:09" color="#ff5733">}}




{{<matomeQuote body="確かにその穴を埋めた企業はあるだろうね．でも”お前のスマホをDDoSしてやったぞ”みたいな市場は本当はないよ．" userName="saagarjha" createdAt="2025/04/28 08:23:17" color="">}}




{{<matomeQuote body="それは違うんじゃない？ ターゲットのデバイスを一時的または実質的に永続的に使えなくするのは，君がどう思おうと有用なペイロードだよ．" userName="cantrecallmypwd" createdAt="2025/04/28 08:48:42" color="">}}




{{<matomeQuote body="誰にとって有用なペイロードなの？ そんなバグにお金を払う人がいたら教えてよ，そしたら信じるよ．Zerodiumの昔の支払いリストにさえDoSは載ってなかったし，俺の知る限り他の真面目なベンダーもそうだよ．俺がこれを気にしない人をたくさん挙げられるんだから，君も気にする人を一人くらい見つけられるはずだろ．" userName="saagarjha" createdAt="2025/04/28 09:57:08" color="#ff5733">}}




{{<matomeQuote body="脆弱性市場ってのはそうじゃないんだよ．ブローカーがスマホのDoSに7万5千ドルも払うなんて考えはすごく面白いね．" userName="tptacek" createdAt="2025/04/28 18:25:06" color="">}}




{{<matomeQuote body="すごいね！ こういうシンプルで効果的でえげつない脆弱性が一番好きだな．20年前，大学の友達とpingだけでサーバーを攻略できる完璧な脆弱性について理論をぶつけ合ったのを思い出すよ．そしてもちろん，2年前にはCVE-2022-23093として実際に発見されたんだ．" userName="_rrnv" createdAt="2025/04/27 20:41:51" color="#ff33a1">}}




{{<matomeQuote body="Ping of deathは20年前にはもうあったよ．https://web.archive.org/web/19981206105844/http://www.sophis..." userName="Rygian" createdAt="2025/04/27 21:18:37" color="#45d325">}}




{{<matomeQuote body="実際はもう30年近く前だよ，すごく年取った気分になるね ー 96年の終わりから97年の半ばにかけて，IRCでこれでいたずらするのが流行った時期は本当に魔法みたいだったんだ．" userName="jasongill" createdAt="2025/04/28 00:06:09" color="#38d3d3">}}




{{<matomeQuote body="信じられないかもだけど，あの頃IRCでは自分のIPアドレスとかクライアント情報とか，サーバーなしで直接繋がる方法（CTCPって言ったんだ）を自動で公開するのが普通だったんだよ．パケットフィルターもNATも全然なくて，認証もせいぜいident serverに名乗るだけ．特権ポートでidentd動かしてるってことはunixマシンのrootだって思われてたからね．" userName="anyfoo" createdAt="2025/04/28 02:00:32" color="#ff5733">}}




{{<matomeQuote body="CTCPはサーバー経由で、DCCがP2P接続のことだね。DCCはNATだと使えないんだ。俺は98年にNAT越しでIRCやってたけど、ipfwadmで設定したよ。" userName="sneak" createdAt="2025/04/28 06:37:13" color="">}}




{{<matomeQuote body="ああ，そうだね，CTCPとDCCを間違えてたよ。ごめん。CTCPってDCCの設定にも使われてたんだっけ？（他にもあったけどさ）。俺が90年代はじめにIRC始めた頃はNATもパケットフィルタリングもほとんどなくて，ネットは全然暗号化されてなかったんだ。今とは全然違う時代だったよな。" userName="anyfoo" createdAt="2025/04/28 20:44:59" color="">}}




{{<matomeQuote body="2001年頃大学にいたとき，ping of deathとか他のクラッシュ exploitで友達にいたずらしてたんだ。暇なときは大学ネットワークのランダムなIPにもやってたよ。それがどれだけ長く使えて，どれだけ簡単に悪用できたかって，マジでヤバかったんだ。" userName="driverdan" createdAt="2025/04/28 01:04:08" color="#45d325">}}




{{<matomeQuote body="DOS攻撃はそうだけど，俺が参照したfreebsdのCVEは理論上のRCEなんだ。" userName="_rrnv" createdAt="2025/04/28 08:13:47" color="">}}




{{<matomeQuote body="下にスクロールしてみてよ。俺のスマホだと（たぶん広告ブロッカーのせいか），Waybackのページはコンテンツの上に画面いっぱいの空白ができちゃうんだ。これは俺が試したほとんどのWaybackページで起きるね。最近のことだし，正確な原因は分からないんだ。" userName="giantrobot" createdAt="2025/04/27 22:48:52" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これを試してみてよ。https：／／insecure．org／sploits／ping−o−death．html" userName="jasongill" createdAt="2025/04/28 00:06:41" color="#785bff">}}




{{<matomeQuote body="ダイヤルアップ時代には，pingのペイロードフィールドにATHコマンドを追加することで誰かを切断できたんだぜ。" userName="NitpickLawyer" createdAt="2025/04/27 22:39:06" color="#ff33a1">}}




{{<matomeQuote body="それはモデムがHayesコマンドセットをちゃんと実装してないか，OSが送信する文字ごとのタイミングを制御できる場合だけだよ。1秒のポーズ（デフォルト），ポーズなしで”＋＋＋”，もう一度ポーズ，それからATHコマンドが必要だったんだ。" userName="brontitall" createdAt="2025/04/27 22:42:44" color="#45d325">}}




{{<matomeQuote body="外部のUSRobotics 56kモデム使ってたから、大丈夫だったんだよね。でも、大量の”バルク”ノーネームモデムは脆弱だったんだ。ダイヤルアップIPのアドレス範囲全部にping打って、その結果をデカいIRCチャンネルで見てたんだよ。うーん、たぶんね" userName="NitpickLawyer" createdAt="2025/04/27 22:55:08" color="#ff33a1">}}




{{<matomeQuote body="Hayesがその一時停止の特許持ってたから、かなり一般的だったんだよ。" userName="wat10000" createdAt="2025/04/27 22:46:45" color="">}}




{{<matomeQuote body="へー、今日知ったよ。たぶんTIESを使ったのかもしれないね <br> https://en.wikipedia.org/wiki/Time_Independent_Escape_Sequen..." userName="brontitall" createdAt="2025/04/27 22:55:01" color="">}}




{{<matomeQuote body="コンマは2秒間の一時停止をしてくれたんだよ" userName="mycall" createdAt="2025/04/28 00:01:06" color="">}}




{{<matomeQuote body="ちゃんと調べるのは面倒なんだけど、IRCで送れる文字列があって、それでルーターの接続を即座に切らせることができたんだよね。でかいチャンネルにその文字列貼ると、何十人もの人が即切断するのを見たんだ。" userName="bslanej" createdAt="2025/04/27 23:41:30" color="#ff33a1">}}




{{<matomeQuote body="これは0x01制御文字（CTCP）に DCC SEND whatever 0 0 0 を送るバグで、古いLinuxカーネルのDCC ALGヘルパーが0をIPと解釈できず接続が落ちたんだ。TLS経由はルーターが見れないから大丈夫。これがTLS+NAT環境でDCCが使いにくい理由で、ポート指定やフォワードが必要。詳細はURL見て。 <br> https://modern.ircdocs.horse/dcc#dcc-send" userName="aaronmdjones" createdAt="2025/04/28 00:03:51" color="#ff5733">}}




{{<matomeQuote body="AOLのチャットルームでは音を鳴らせたんだけど、S{/con/con<br>って音として送ると、ユーザーサウンドをオフにしてないWindowsユーザーをクラッシュさせられたんだ。記憶がちょっと曖昧だし、正確なシーケンスは調べたくないけど、だいたいこんな感じ。" userName="genewitch" createdAt="2025/04/28 08:40:19" color="#ff33a1">}}




{{<matomeQuote body="https://mazur-archives.s3.amazonaws.com/aol-files/breaches/c...<br>それは `{S /con/con` だったんだ。記憶で文字を二つ入れ替えちゃってたよ。`{S` っていうのはAOLチャットルームが音を送るのに使ってた”システムメッセージ”で、改行の後にそのシーケンスを入れるとコンピューターがその音を探すんだ。`/con/con` しないってみんなが信頼してるならクールだったね。" userName="genewitch" createdAt="2025/04/30 11:52:01" color="#ff33a1">}}




{{<matomeQuote body="巨大なダイヤルアップネットワーク上で、パスワードを1文字ずつ総当たり攻撃して、誰かのディスクにアクセスできたの覚えてるよ。クレイジーな時代だったね。" userName="cryptoegorophy" createdAt="2025/04/27 22:49:01" color="#45d325">}}




{{<matomeQuote body="マジでウケるんだけど、PPPっていまどきのIoTモジュールでもまだ使われてるんだって。QMIとかMBIM使えないモジュールだと、独自のTCP/IPスタック動かす唯一の方法なんだよね（TLSの制御もできるし）。" userName="vv_" createdAt="2025/04/28 12:39:55" color="#ff5c5c">}}




{{<matomeQuote body="いいね。iOSのコアチームがこれを見た時、オフィスでどれだけ最悪な一日だったか想像つくわ。" userName="urbandw311er" createdAt="2025/04/27 22:05:26" color="">}}




{{<matomeQuote body="iOSチームの誰かはこれ絶対気づくべきだったと思うんだけど、どう？「やべ、SpringboardのUIイベント起こす方法いんじゃね？」「OK、じゃあこの認証いらないバス使ってSpringboardに購読させようぜ」みたいな？唯一考えられるのは、このコードめっちゃ前に書かれて、抽象化の一番底だから誰も見てなかったってことかな。" userName="rashkov" createdAt="2025/04/28 15:05:59" color="">}}




{{<matomeQuote body="そのシステムいつ導入されたか誰か知ってる？あんなにモロなセキュリティ問題なのにさ。もしかしてAppStoreできる前とか？他のアプリもっと信用してた時代とか？" userName="jonplackett" createdAt="2025/04/27 21:16:23" color="">}}




{{<matomeQuote body="その通知APIはめっちゃ古いよ（iOS 3）。あれは明確に信用しちゃいけないAPIで、復元中のUI表示とかに使うべきもんじゃない。だから、これは結構後から書かれたコードだと思う。Widget拡張はiOS 14だしね。昔からバックグラウンドタスク動かす方法はあったけど、あれで文鎮化はしなかった。Background fetchとか、再起動後アプリ初回起動するまで動かなかったもん。" userName="plorkyeran" createdAt="2025/04/27 21:52:12" color="#45d325">}}




{{<matomeQuote body="これは内部のブロードキャスト通知APIだよ（Linuxのdbusみたいなやつ）。ユーザーに見せる通知APIとは別もんね。" userName="duskwuff" createdAt="2025/04/27 23:51:46" color="">}}




{{<matomeQuote body="ええ、知ってますよ。なんで私がUI通知の話してると思ったんですか？" userName="plorkyeran" createdAt="2025/04/28 01:39:17" color="">}}




{{<matomeQuote body="ちなみに俺もUI通知のことかと思ってた（なんでかって？ 俺がバカだからだよ）。でも、とにかく、あの説明は別に絶対必要ってわけじゃなかったけど、助かったわ。" userName="bee_rider" createdAt="2025/04/28 02:04:39" color="">}}




{{<matomeQuote body="OS Xでこれより前にあったんじゃないっけ？" userName="MBCook" createdAt="2025/04/27 22:35:12" color="">}}




{{<matomeQuote body="ドキュメントには10.6って書いてあるらしいね。それがOS Xの同じバージョンの年（どっちも2009年リリース）。" userName="plorkyeran" createdAt="2025/04/28 01:40:30" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
