+++
date = '2025-06-18T00:00:00'
months = '2025/06'
draft = false
title = 'ウェブサイトがあなたを追跡 ブラウザフィンガープリントの正体'
tags = ["ブラウザフィンガープリント", "ウェブサイト", "トラッキング", "プライバシー", "広告"]
featureimage = 'thumbnails/green3.jpg'
+++

> ウェブサイトがあなたを追跡 ブラウザフィンガープリントの正体

引用元：[https://news.ycombinator.com/item?id=44313206](https://news.ycombinator.com/item?id=44313206)




{{<matomeQuote body="技術系だけど、フィンガープリントってどれくらい残るか誰も言わないよね。実際は精度高くても数日で効果薄れるらしいよ（特にウィンドウサイズとかソフトのバージョンに基づくやつ）。<br>今はジオデータに頼ってる大手が多いから、色んなデバイスや家族の興味に関する広告見るんだと思う。IPの位置見て、とにかく広告出すって感じ。<br>”彼らはFPTraceって計測フレームワークを開発した。ブラウザフィンガープリントの変化に広告システムがどう反応するか分析して、フィンガープリントベースのユーザートラッキングを評価するもの”<br>この方法論、ちょっと詳しく知りたいな。広告ネットワークって、個人じゃなくてデバイス設定で広告分けてる可能性の方が高い気がする。例えば、新しいハードウェアに新しいソフト使ってる人は、購買意欲高い層にまとめられるとか。あと、時間帯みたいなシンプルなことも広告入札には huge impacts らしいし、どう検証したかを知るのが everything だね。" userName="legitster" createdAt="2025/06/18 22:52:49" color="#785bff">}}




{{<matomeQuote body="”技術系だけど、フィンガープリントってどれくらい残るか誰も言わないよね。実際は精度高くても数日で半減期らしい”<br>俺もちょうどフィンガープリント見たけど、ユニークだって言われたよ（お袋もいつもそう言ってたけど ;-)）。<br>残念ながら、https://www.amiunique.org/fingerprint で、どの要素を変えれば大幅に non-unique になるかは分からないんだけど、リストを見ていくと、 JavaScript 属性の 58 個中 16 個が赤（類似率の最低カテゴリ）で、そのうちバージョン番号に overtly 依存してるのは 2 個だけ、画面サイズ/解像度に関するのは 6 個なんだよね。これって、そんなに早く変わらない情報が結構あるってことだと思うんだ。<br> precise な値は時間と共に変わるかもしれないけど、「数日で半減期」って言うのは、この技術の効果を understate しすぎてる気がするな。" userName="glaucon" createdAt="2025/06/18 23:51:45" color="">}}




{{<matomeQuote body="”けど、リストを見ていくと、 JavaScript 属性の 58 個中 16 個が赤（類似率の最低カテゴリ）で、そのうちバージョン番号に overtly 依存してるのは 2 個だけ、画面サイズ/解像度に関するのは 6 個なんだよね。これって、そんなに早く変わらない情報が結構あるってことだと思うんだ。”<br>それは disagree だな。リストを見ていくと、 basically 100% ブラウザかブラウザバージョンに紐づいてる属性って、誰も変えないからこれらは non-issue だよ：<br>User agent, Accept, Content encoding, Upgrade Insecure Requests, User agent, Platform, Cookies enabled, Navigator properties, BuildID, Product, Product sub, Vendor, Vendor sub, Java enabled, List of plugins (これは major browsers で何年も前に deprecated されたね), Do Not Track (DNT は GPC に favor されて deprecated されたし、匿名でいたいなら default のままにすべき), Audio formats, Audio context, Frequency analyser, Audio data, Video formats, Media devices<br>これらは Geo IP と very correlated だから、 Mongolian を US の Geo IP で pretend してるんじゃない限り、あんまり reveal しないね。<br>Content language, Timezone, Content language<br>これらは実際フィンガープリンティングに valuable だけど、ほとんどが basically ”どんなデバイス使ってるか”に帰結する。 iPhone 16 で iOS 18.5 使ってるなら、 chances are ほとんどの device related attributes は iPhone 16 の iOS 18.5 使ってる everyone else と同じになるよ。 <br>Canvas, List of fonts (JS), Use of Adblock, Hardware concurrency, Device memory, WebGL Vendor, WebGL Renderer, WebGL Data, WebGL Parameters, Keyboard layout<br>これらは basically 画面サイズだけど several times 繰り返されてるだけ：<br>Screen width, Screen height, Screen depth, Screen available top, Screen available Left, Screen available Height, Screen available width, Screen left, Screen top<br>これらはそういう設定を touch しない限り non-issues だし、 browsing data を clear すれば reset される：<br>Permissions, Use of local storage, Use of session storage, Use of IndexedDB<br>これらは basically ”電話、 laptop、または desktop 使ってるか”に帰結する：<br>Accelerometer, Gyroscope, Proximity sensor, Battery, Connection<br>最後のいくつかは flash related っぽいけど、それは何年も前に deprecated されたから non-issues だね。" userName="gruez" createdAt="2025/06/19 02:00:29" color="#38d3d3">}}




{{<matomeQuote body="EFF が大昔に、ユーザープロファイルがどれだけ unique か示すフィンガープリント分析をやってなかったっけ？" userName="1337biz" createdAt="2025/06/19 02:28:51" color="">}}




{{<matomeQuote body="みんなこう言うけど、これって massive industry なんだよ、それには理由がある。 The North Face のジャケットのロゴと同じさ。あなたは never paying attention だし、特定の人がそのジャケットを着てたなんて recall しない。でも somehow、ジャケットを買う時になると、そのブランドを知ってて、 socio-economic circle のみんなが好きみたいだって知ってるんだ。<br> Some online ads は注意を grab したいけど、 most は just about ああいう almost-subliminal な繋がりを作るだけさ。" userName="hinterlands" createdAt="2025/06/19 04:23:38" color="">}}




{{<matomeQuote body="”今の big ad networks の多くは代わりに heavily on geo-data に頼ってる”<br>これって、今日の age で ISP が normal には at least one level の NATing with ipv4 を持ってるのにどう機能するの？そして prefix delegation 付きの ipv6 が still far away であることを考えると、これは continue to be very imprecise であるべきだよね？" userName="kul_" createdAt="2025/06/19 00:41:58" color="">}}




{{<matomeQuote body=" iCloud Private Relay とか他の VPN-ish なものって、 IP-geo-based な tracking に wrench を throw してこないの？ターゲティングを so broad as to be useless にしちゃう気がするんだけど。" userName="cosmic_cheese" createdAt="2025/06/18 23:08:31" color="">}}




{{<matomeQuote body="ええ、そしてそれは effectively a lie だったんだ。<br>俺は Pacific Time Zone にいるんだけど、そこには LA, SF, San Diego, Seattle とか 51 million people が含まれる。 Apparently、 90% が smartphone を持ってる（ kid も含む）これは 90% より lower だけど、 adults では 97% だ。 sales とか upgrade cycles の various statistics を見ると、 probably between 500k から 1 million の iPhone 15 Pro （ not 15, not 15 Pro Plus, just 15 Pro）があるだろうね。<br>Every iPhone 15 Pro は exact same fingerprint を持つだろう。 leak する設定は language, time-zone, font-size, light/dark preference だけだ。 iPhone user が変えられるのは他に anything else が無いんだ。<br>それらを Given、そして most people が default にしてることを Given、 at best 100k 人が same fingerprint を出してる、 likely more だ。 But、俺が Eff の site に俺の iPhone 15 pro で行くと falsely claim my fingerprint is unique になるんだ。 (https://coveryourtracks.eff.org/)<br>Yes、彼らの server に対しては unique かもしれない、 since no one visits だから。 But if no one visits there’s no point to fingerprinting だ。 only popular sites が fingerprinting から gain するだろうし、 yet the EFF は effectively lying about those sites ability to fingerprint してるんだ。" userName="socalgal2" createdAt="2025/06/19 04:43:54" color="#38d3d3">}}




{{<matomeQuote body="問題は、 tracking してて tech に tied した uniqueness を measure として使ってる人たちにとって（ identity に tied した uniqueness とは opposed に）、 you を non-unique に変えるのが easy なことじゃなくて、 it is that you will probably be a different “unique” user in a few days ってことなんだ。<br> If there is a lot of information that won’t change that quickly it is questionable if that subset would be unique だ。 Logically it seems to me that subset would not be unique because in tech the stuff that does not get changed gets widely distributed。<br>on edit: here is a sample of three unique user profiles、俺は FF を open up して Google に log in する。俺には two unique users がいる、 FF, and Google だ。俺は then do something that needs Safari for some reason をしなきゃいけなくて、 so I open up Safari, and then for some reason I have to log into Google again on Safari だ。 Now I have three unique user profiles: FF, Safari, and still Google だ。 Browser fingerprinting は tracking uniqueness in one way には ok だけど、 for building up a unique user profile には pretty crap だ。" userName="bryanrasmussen" createdAt="2025/06/19 07:43:21" color="#ff33a1">}}




{{<matomeQuote body="iPhone 15 Proでもバッテリーの状態とか使い方、CPU性能でCanvasのブレは違うから、それがフィンガープリントになる。嘘じゃないよ。ナノ秒レベルの差は出るんだ。" userName="shakna" createdAt="2025/06/19 05:20:51" color="">}}




{{<matomeQuote body="指紋の寿命が数日ってのはよく分かんないな。ハードウェア割り込みとかアプリ、GPUドライバーなんかでタイミングの遅延が変わるんだ。アップデートで全部のタイミング分布が変わるわけじゃないだろうし。" userName="DoctorOetker" createdAt="2025/06/19 00:02:13" color="">}}




{{<matomeQuote body="それは嘘だよ。デマを流してるだけ。iPhone 15 ProのCanvas jitterなんて無いし、iPhoneでGPUテストしてるけど違う結果は出ないよ。バッテリーとかはウェブからは分からないし、ブラウザでナノ秒測って指紋作るなんて無理。ノイズにしかならないよ。" userName="socalgal2" createdAt="2025/06/19 08:27:34" color="#45d325">}}




{{<matomeQuote body="フィンガープリントサイトの”あなたはユニークです！”って結論はあんま信用しない方がいいよ。訪問者が少ないし、ブラウザのバージョンみたいにすぐ変わる情報も使うから、ユニークに見えても実はそうじゃない場合が多い。フィンガープリントをブロックする拡張機能とか使うと、サイト側はユニークな訪問者が増えたって勘違いするんだ。" userName="gruez" createdAt="2025/06/19 02:40:50" color="">}}




{{<matomeQuote body="あなたのユニークさがたとえ変わったとしても、フィンガープリントと行動を組み合わせれば、十分あなたを特定できるプロフィールを作れるよ。" userName="reactordev" createdAt="2025/06/19 15:04:20" color="">}}




{{<matomeQuote body="フィンガープリントは、プラグインとか言語、フォントみたいなデータポイントをうまく選べばすごく強力なんだ。(b) 他のデータ、例えば位置情報と組み合わせれば、限界を乗り越えられるよ。(c) 広告会社は効率的だからやってるけど、監視目的の機関はもっとデータ持ってるから、もっと正確に特定できるはず。" userName="m000" createdAt="2025/06/19 07:55:40" color="#ff5c5c">}}




{{<matomeQuote body="プロバイダがIPv4でNATを使ってるって話だけど、家の固定回線ではあんまり見ないよ。モバイル回線でしか経験ないな。" userName="djrj477dhsnv" createdAt="2025/06/19 00:56:24" color="">}}




{{<matomeQuote body="iOSとかAndroidのアプリがハードウェア割り込みにアクセスできるわけないでしょ。JavaScriptのタイミング精度もSpectre対策で下げられてるし。GPUドライバーでタイミングが変わるなんて考えにくいね。何千時間もリバースエンジニアリングすれば別だけど、そんな労力はかけないと思うよ。" userName="gruez" createdAt="2025/06/19 02:07:55" color="#785bff">}}




{{<matomeQuote body="ユニークな指紋と、ログインした時の本人確認情報を組み合わせるのが一番強力だよ。これで長期的な行動パターンを把握できる。本人確認だけだとログインしてない時を追えないし、ユニークな指紋だけだと環境で行動が変わるから、両方使うのがベストだね。" userName="bryanrasmussen" createdAt="2025/06/19 15:46:53" color="#ff5c5c">}}




{{<matomeQuote body="＞ And the reality is that even a really precise fingerprint has a half-life of only a few days (especially if it’s based on characteristics like window size or software versions).<br>すごく正確な指紋でも半減期は数日って現実？（特に窓のサイズとかソフトのバージョンに基づく場合）。<br>ブラウザのバージョンが上がるだけで変わる指紋は死んでないよ、むしろ強くなるんだ。" userName="minitech" createdAt="2025/06/18 23:40:24" color="#45d325">}}




{{<matomeQuote body="＞ the reality is that even a really precise fingerprint has a half-life of only a few days (especially if it’s based on characteristics like window size or software versions).<br>すごく正確な指紋でも半減期は数日って現実？（特に窓サイズとかソフトバージョンに基づく場合）。<br>最大化した窓のサイズはデスクトップ環境が更新されるかモニター（ハードウェア）そのものが交換されない限り変わる可能性は低い。<br>GPUハードウェアも頻繁には変わらないし、様々な癖はwebglかwebgpu経由で指紋にできる。<br>インストールされてるフォントもおそらくそんなに頻繁には変わらないだろう。<br>TCPスタックの指紋もかなり安定してると思うね。<br>これはちょっと頭の中で思いついただけの例だよ。<br>一度に一つの特性しか変わらない限り、クラスターを紐付けられる。<br>もっと悪いのは、クライアント側の識別子（例：Cookie）が同時に消去されない場合、全く異なる二つの指紋を完全に自信を持って紐付けられちゃうことだ。" userName="fc417fc802" createdAt="2025/06/19 03:31:37" color="#785bff">}}




{{<matomeQuote body="＞”hardware interrupts” (whatever that means)<br>ハードウェア割り込みはコンピューティングの標準的な部分だよ。<br>（ https://en.wikipedia.org/wiki/Interrupt#Hardware_interrupts を見て）<br>AndroidもLinuxから割り込みメカニズムを受け継いでて、CPUと外部デバイス間の効率的な通信のために設計されてる。<br>新しいハードウェアイベント（例：ユーザーが画面をタッチ）が来ると、対応するハードウェアデバイス（例：タッチスクリーンコントローラー）がOSに即時処理を求める信号を送るんだ。<br>そして、少なくとも以前は、割り込みのタイミングが情報漏洩を促進するために使われたりもした。<br>例えば：「タッチスクリーンコントローラーから生成される割り込み時系列を分析することで、攻撃者がユーザーの解除パターンをクラッキングする可能性が大幅に高まる。<br>Display Sub-Systemから生成される割り込み時系列は、ユニークなUIリフレッシュパターンを明らかにし、フォアグラウンドで実行されているアプリを特定するための指紋として利用される可能性がある」<br>https://staff.ie.cuhk.edu.hk/~khzhang/my-papers/2016-oakland...<br>携帯関連を詳しく見てからしばらく経つけど、何十年も前から/proc/interruptsはグローバルに読めた。<br>今もそうかもしれないね。" userName="qualeed" createdAt="2025/06/19 14:32:49" color="#45d325">}}




{{<matomeQuote body="いくつか、自分にとって悪いだろうなって分かってた明らかなものがあるんだ - 例えば、Linuxユーザーエージェント。<br>Canvasもユニークになったし、Dark Readerのせいだと思うね。<br>でも、他の全然意味不明なものもあるんだ。<br>”WebGL Vendor”で”NVIDIA Corporation”が0.74%しかないのはなぜ？<br>そもそもnavigator.hardwareConcurrencyなんて何のために存在するんだ？" userName="ryukoposting" createdAt="2025/06/19 00:58:56" color="">}}




{{<matomeQuote body="これはトップティアのスーパーパワーだね。<br>FirefoxのUblockとiPhoneのAdGuardはかなり効果的だよ。<br>実際に広告を見ると物理的に痛いんだ。" userName="erkt" createdAt="2025/06/19 04:20:00" color="">}}




{{<matomeQuote body="＞That doesn’t sound like you’ve actually read any of the widely adapted and used techniques, employed by everyone from PornHub to Meta, nor does it sound like you’re willing to.<br> widely adapted and used techniques, employed by everyone from PornHub to Meta, nor does it sound like you’re willing to.<br>君も返信してるコメントを読んでないみたいだね、だって提起された具体的な異論に何も答えてないから。<br>最初のからもう一度やってみよう：君が説明した「canvas jitter」（つまり同じモデルのデバイス間で異なる）が実際に存在する証拠はあるの？" userName="gruez" createdAt="2025/06/19 12:20:59" color="">}}




{{<matomeQuote body="私のは全てゼロパーセント一致で、NaN%全体一致だって言ってる。<br>このサイト動いてるの？" userName="normie3000" createdAt="2025/06/19 04:52:06" color="">}}




{{<matomeQuote body="もう見る気になった？<br>2012年から使われてるよ。<br>悪意を持って行動してる相手に具体的に答えるのは、普通は良いアイデアじゃないね。<br>でも、いいよ。<br>＞ In 294 experiments on Amazon’s Mechanical Turk, we observed 116 unique fingerprint values, for a sample entropy of 5.73 bits. This is so even though the user population in our experiments exhibits little variation in browser and OS.<br>Amazon Mechanical Turkでの294回の実験で、116個のユニークな指紋値が観察され、サンプルエントロピーは5.73ビットでした。<br>これは、我々の実験におけるユーザー集団がブラウザとOSにおいてほとんど変動を示さなかったにもかかわらずです。<br>https://hovav.net/ucsd/dist/canvas.pdf<br>https://securehomes.esat.kuleuven.be/~gacar/persistent/the_w...<br>https://doi.org/10.14722%2Fndss.2022.24093<br>https://web.archive.org/web/20141228070123/http://webcookies...<br>https://www.torproject.org/projects/torbrowser/design/#finge..." userName="shakna" createdAt="2025/06/19 13:15:40" color="#ff5c5c">}}




{{<matomeQuote body="俺は追跡をブロックしてるぜ。追跡する奴らは俺たちを怒らせてることに気づいてないんだ。やりすぎればやり返すし、奴らに無駄な金を使わせるだけ。どっちが長く続くか勝負だな。俺たちの味方は増えてるぜ。" userName="godelski" createdAt="2025/06/19 04:34:27" color="">}}




{{<matomeQuote body="https://www.amiunique.org/を見てみ。ブラウザって結構情報漏らしてるんだ。フィンガープリントはCookieと違って防ぎにくい。皮肉なことに、セキュリティとかプライバシーを強化するほどフィンガープリントはユニークになっちゃうらしい。FOSSでちゃんとしたオープンソースブラウザが出てこなかったのは残念だよな。企業に独占されちゃったのかな。オフラインで見るために自分でスクレーパー作ろうかとも思ったけど、面倒くさそう。" userName="disambiguation" createdAt="2025/06/18 23:07:25" color="#785bff">}}




{{<matomeQuote body="ちゃんとしたオープンソースブラウザが出なかったって言ってるけど、Firefoxは違うの？" userName="jcranmer" createdAt="2025/06/18 23:31:59" color="">}}




{{<matomeQuote body="「ちゃんとしたオープンソースブラウザが出なかった」？全然そんなことないぞ。Firefoxは一時期めちゃくちゃ人気あったし、他のブラウザを食いまくってたんだ。Googleが反競争的なことして潰したけど、それは後からだ。" userName="phyzome" createdAt="2025/06/19 03:24:41" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Googleが潰したって？いや違うな、原因はAppleだよ。Webデザイナーって奴らはMacbookを使うのが流行ってて、FirefoxはMacbookでめっちゃ遅かったんだ。だから奴らは速くてツールもいいChromeに行ったのさ。「パフォーマンスなんて関係ない」って言われたら、これが市場シェアを失う原因になったってことを思い出せよ。" userName="arkh" createdAt="2025/06/19 06:29:56" color="#785bff">}}




{{<matomeQuote body="FOSSって言葉はあいまいだけど、普通はコミュニティが持ってて営利目的じゃないって意味合いがある。Firefoxも最初はそうだったんだけど、MozillaはGoogleと組んだりして、ユーザーにとって嫌な変更ばかりしてる。元の約束はもう守れてないな。LibreWolfとか派生版もあるけど、元コードが信用できない組織に管理されてるって問題は変わらないんだよな。" userName="disambiguation" createdAt="2025/06/19 00:33:56" color="#ff5733">}}




{{<matomeQuote body="セキュリティとかプライバシーをガチガチにするとフィンガープリントがユニークになるって話への対策案ね。1. Braveみたいにフィンガープリントをランダムにするブラウザを使う。2. Torを使って大勢の中に紛れ込む。" userName="ohso4" createdAt="2025/06/19 00:42:44" color="#ff33a1">}}




{{<matomeQuote body="2つのプライベートブラウザのウィンドウで試してみたんだけど、両方ユニークって判定されたんだ。これって、プライベートタブ間ではフィンガープリントが機能しないってことなのかな？" userName="ec109685" createdAt="2025/06/19 00:04:21" color="">}}




{{<matomeQuote body="Firefoxがフィンガープリント対策を全然してないのはマジで驚きだよ。なんで2025年にもなってUser AgentでOSとかアーキテクチャとか詳細送りまくってんだよ。そんな情報、サイト側が知る必要ゼロだろ。RefererもデフォルトONだし、JSでフォントリスト取れるし。もっと細かい権限設定とか、マシなデフォルト設定が必要だよ。プラグインであるけど、あれ面倒なんだよな。" userName="elric" createdAt="2025/06/19 12:17:32" color="#ff33a1">}}




{{<matomeQuote body="Googleは反競争的な手法で潰したんじゃなくて、ただ単に「より良い」ブラウザを作っただけだよ。<br>Chromeが出た時はFirefoxより断然優れてたから、みんな乗り換えたんだよね。<br>正直、今でもChromeの方が（Manifest V3のくだりは無視すれば）マシだと思うよ。" userName="IshKebab" createdAt="2025/06/19 07:45:27" color="">}}




{{<matomeQuote body="2. はJSを有効にしててもほとんどすぐにフィンガープリントできちゃうよ。<br>canvasは0.00％、フォントリスト0.09％、「Navigator properties」0.39％、useragent0.57％の類似性しかなくて、JSを無効にしたら（Torのベストプラクティスだけど）もっとひどい状況さ。<br>これはWindowsユーザーには有効なのかも？（debian、最新のtor browser 14.5.3、設定変更なしで試したよ）" userName="Liquix" createdAt="2025/06/19 05:50:04" color="#ff5733">}}




{{<matomeQuote body="一時期、具体的にFirefox 3.5は短期間だけだけど1位だったんだ。<br>＞2009年12月中旬から2010年2月にかけて、StatCounterによるとFirefox 3.5は（個々のブラウザバージョンを数えた場合に）最も人気のあるブラウザであり、2010年2月時点でNet Applicationsによるとトップ3のブラウザバージョンの一つだった。どちらの記録も、StatCounterとNet Applicationsによると以前はそれぞれ人気度で1位と3位だったInternet Explorer 7を追い抜いたことによるものだ — https://en.wikipedia.org/wiki/Firefox_3.5<br>その後Chromeが出てきて、IEとFirefoxの両方を平らにしちゃったんだよね。" userName="diggan" createdAt="2025/06/18 23:50:55" color="#785bff">}}




{{<matomeQuote body="これは「最善」の敵を「より良いもの」にするって話だよね。<br>実際、こういう意見を声高に言う人たちも、結局ChromeかChromiumベースのブラウザを使い続けてるんだよ。" userName="XorNot" createdAt="2025/06/19 01:00:17" color="">}}




{{<matomeQuote body="＞Firefoxが「ちゃんとしたオープンソースブラウザ」じゃないって、何を根拠にそう言うの？<br>— 2024年6月。Mozillaが広告効果測定会社Anonymを買収。<br>— 2024年7月。MozillaがPrivacy-Preserving Attribution (PPA) 機能を追加、デフォルトで有効に。Meta (Facebook) と協力して開発。<br>— 2025年2月。MozillaがプライバシーFAQとTOSを更新。「あなたのデータを販売しません」が「…ほとんどの人が考えるような方法では」に変更。<br>ってことがあるからだよ。" userName="nuker" createdAt="2025/06/19 03:10:05" color="#45d325">}}




{{<matomeQuote body="当時知ってたフロントエンド開発者はみんな、Intel Macに切り替わった後でMacbookに乗り換えたんだ。<br>それは、SafariとFirefoxをネイティブで動かせて、Internet ExplorerはVMで動かせるUnixベースのマシンを手に入れられたからだよ。<br>当時はまだChromeなんてリリースされてなかったしね。" userName="robin_reala" createdAt="2025/06/19 12:31:34" color="">}}




{{<matomeQuote body="だって、当時のWindowsマシンで作業するのはものすごく面倒だったし、LinuxはデスクトップOSとしてはまだイマイチだったんだよ。" userName="martin82" createdAt="2025/06/20 02:42:37" color="">}}




{{<matomeQuote body="これは「最小公倍数」みたいな問題だと思うな。<br>つまり、全てのフィールドを合わせれば確実にユニークになるけど、ユーザーを特定するのに必要な「最小」のフィールド数はいくつなんだろう？<br>各テストのJSONをダウンロードして自分で差分を比較できるよ — 「cpt」とか「ratio」フィールドにはノイズが多いけど、「referer」や「cookie」フィールド、それにいくつかのSSL属性は目立つね。<br>これらを制御すれば匿名化できるのかは分からないけど、どっちにしてもあまり良い状況じゃないな。" userName="disambiguation" createdAt="2025/06/19 01:02:16" color="#ff5733">}}




{{<matomeQuote body="ユニークなフィンガープリントを持つことが、ページをリフレッシュしても違うものが得られるくらいユニークなら、実は素晴らしいことになりうるってことに注意してね。<br>フィンガープリント保護機能を持つほとんどのブラウザは、例えばグラフィックやオーディオAPIにランダムなノイズを導入したりするんだよ。" userName="nasso_dev" createdAt="2025/06/20 07:16:11" color="">}}




{{<matomeQuote body="Chromeが今優れてるってのはかなり議論の余地があると思うけど、あなたの言う通りだよ。Chromeが初めて出た頃（とその後何年も）は、明らかにFirefoxよりすごかったからね。" userName="everdrive" createdAt="2025/06/19 12:02:39" color="">}}




{{<matomeQuote body="すごいウェブサイトだね。バッテリーの状態みたいなものまで取得できるなんて驚きだよ。そんなの公開するまともな理由はないでしょ。" userName="anonu" createdAt="2025/06/20 01:44:22" color="#45d325">}}




{{<matomeQuote body="そう、「PPA」は絶対怪しいね。ユーザーの裏で広告会社と協力してるブラウザなんて。なんで自分のコンピューターにそんなのが必要なのか理解できないよ。" userName="codedokode" createdAt="2025/06/19 07:11:32" color="">}}




{{<matomeQuote body="Firefoxで「resist fingerprinting」を有効にしてるなら、ダミーデータを送ってるんだ。これが「ユニーク」にするんじゃないかって心配する人もいるけど、毎回違うユニークさなら必ずしも識別されないってことを理解できてないんだよね。" userName="everdrive" createdAt="2025/06/19 12:03:59" color="#ff33a1">}}




{{<matomeQuote body="権限を減らすだけだと、かえってあなたの方がもっと識別されやすくなっちゃうよ。" userName="anonu" createdAt="2025/06/20 01:45:21" color="">}}




{{<matomeQuote body="FOSSは柔軟な言葉だけど、コミュニティ所有とか営利目的じゃないってニュアンスがあるよね。だけどそれ、絶対違うって！Red HatとかMongoDBとかChefとか、オープンソースじゃないの？FOSSの世界がみんなのためにある無政府主義的なユートピアだと信じたいけど、営利目的の人もたくさんいると思うよ。コードやソフトウェアへのアクセスを売ってないだけ。" userName="energywut" createdAt="2025/06/19 01:07:30" color="">}}




{{<matomeQuote body="ウェブブラウザのユーザーは互換性を期待してるからね。もしベンダーが勝手に一部のブラウザAPIのサポートをやめたら、結果はプライバシー向上じゃなくて、みんな他のブラウザに乗り換えちゃうだけだよ。" userName="kube-system" createdAt="2025/06/19 16:06:40" color="">}}




{{<matomeQuote body="Canvasが0％の類似性なら、レターボックス化に問題あるかも。Torウィンドウを1400x900からリサイズしない方がいいよ。TorはWindowsのフリするのに、User-Agentでそんなことするの？いつもWhonixの中で使ってるけど、テストした時は全部大丈夫だったみたいだよ。JavaScript無効にするなら、TorをSafest設定にする必要があるよ。フォントリストはTorが偽装するはずじゃ？とにかく、Whonixを使ってTorをSafestに設定すれば、全部解決できるはずだよ。" userName="ohso4" createdAt="2025/06/21 17:11:39" color="#45d325">}}




{{<matomeQuote body="Firefoxって利用者数めちゃ多いじゃん。インターネット人口50億人の5％でも2億5千万人だよ？この数字ほしさに必死な会社なんていくらでもあるだろ。ぶっちゃけ、村ごと皆殺しにする会社だって出てくるかもな。" userName="arp242" createdAt="2025/06/19 02:21:49" color="">}}




{{<matomeQuote body="＞“Fingerprinting has always been a concern in the privacy community, but until now, we had no hard proof that it was actually being used to track users,” said Dr. Nitesh Saxena, cybersecurity researcher, professor of computer science and engineering and associate director of the Global Cyber Research Institute at Texas A&M. “Our work helps close that gap.”<br>これ、アカデミアの外に資料がない閉鎖的な世界に住んでるみたいだな。追跡ベンダー自身が10年以上前から、個人情報保護方針でフィンガープリンティング使ってるって言ってたじゃん。" userName="Sephr" createdAt="2025/06/19 06:26:39" color="">}}




{{<matomeQuote body="これは閉鎖的とか現実知らずとかの話じゃないよ。アカデミア対業界の偏見が見えるね。この研究はフィンガープリンティングが実際に使われてて、しかも効果的だって証拠を提供してるんだ。業者ができるって言ってただけじゃ証拠にならないし、効果や規模も分からない。だからこの研究は役立つんだよ。広告で効果あるってことは、他の機関の追跡にも使える可能性を示してるからね。" userName="tpoacher" createdAt="2025/06/19 10:11:06" color="#38d3d3">}}




{{<matomeQuote body="トラッキングピクセルはフィンガープリンティングじゃなくて、ただの追跡だよ。簡単にブロックできるし。フィンガープリンティングはずっと検知も防止も難しいんだ。会社がやる権利を主張するのは気を付けるべきだけど、何がされてるか分かんないと効果的な対策は難しいよ（Tor Browserみたいに全部ブロックしない限り）。" userName="tga_d" createdAt="2025/06/19 14:46:10" color="#785bff">}}




{{<matomeQuote body="こういう会社って、自分たちができることを実際よりすごいって言って他の会社に売ってるんじゃない？クライアントは検証する能力低いしね。それにしても自分が見る広告って本当におかしいんだよ。Google Mapsが自宅近くのホテル勧めてきたり、男性なのに妊婦用ブラとかRange Roversとか。Instagramでは写真関連しか見てないのに、カメラとか写真機材の広告は全然見ないんだよね。" userName="vladvasiliu" createdAt="2025/06/19 13:18:29" color="#785bff">}}




{{<matomeQuote body="そうなんだよ、バカげた広告を見る身としても、オンライン広告を買うのにイライラする身としても、adtech（広告技術）はほとんどインチキだって結論に至るね。マーケティング活動全体に疑問を投げかける研究も見てみてよ。じゃあ、この巨大なインフラと何十億ドルもの投資、労働者は何のためにあるんだ？ここでギャンブルとVapingが出てくるんだよ。" userName="rsync" createdAt="2025/06/19 14:01:18" color="#785bff">}}




{{<matomeQuote body="adtechがインチキっていうのは、ターゲット広告が全く関係ないからじゃなくて、そもそも広告をクリックしたり、そこから買ったりする人がすごく少ないのが問題じゃないか？って思うんだ。うまくターゲットされた広告って、むしろ気味悪がられてタブ閉じられたり、サイト自体を避けられたりするんだよ。ちょっと詳しい人は、広告がマルウェアの元になることもあるって知って、リスク避けてクリックしないしね。正直、adtechのターゲティング精度って、そもそも重要なのか？って疑わしいレベル。" userName="saghm" createdAt="2025/06/19 15:31:26" color="#785bff">}}




{{<matomeQuote body="この追跡の話を、セキュリティ侵害みたいに悪いこととして、会社が認めざるを得ない状況だと思ってるかもしれないけど、違うよ。こういう会社はユーザーを追跡するのって最高のことだと思ってて、「認める」んじゃなくて「自慢してる」んだよ。" userName="ta1243" createdAt="2025/06/19 13:40:07" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="開示ってのは証明になんないよ。特に何か売りたい相手の場合はね。" userName="0manrho" createdAt="2025/06/19 13:32:18" color="">}}




{{<matomeQuote body="主要なウェブサイトのソースコードが漏れて、フィンガープリンティングツールが使われてるのが丸わかりなんだって。" userName="kube-system" createdAt="2025/06/19 15:59:15" color="">}}




{{<matomeQuote body="世の中には知らない人もいるんだな。俺は https://github.com/fingerprintjs/fingerprintjs をもう10年近く知ってるよ。昔、スパムとか荒らしを追跡するために見つけたんだ。" userName="archerx" createdAt="2025/06/19 09:43:49" color="#38d3d3">}}




{{<matomeQuote body="同じ端末で通常とシークレットモードでデモページを開いたら、別々の訪問者ってことになったよ。https://fingerprintjs.github.io/fingerprintjs/<br>これが今の最高レベルなら、まあ大丈夫かなって感じ。" userName="_Algernon_" createdAt="2025/06/19 12:46:17" color="#ff5c5c">}}




{{<matomeQuote body="シークレットモードでは追跡されたけど、違うブラウザでは追跡されなかったな。" userName="kapildev" createdAt="2025/06/19 15:03:00" color="#45d325">}}




{{<matomeQuote body="これ、学術界でももう5年以上前から知られてるよ。https://petsymposium.org/popets/2021/popets-2021-0004.pdf<br>その前は、Flashでインストールされてるフォントリストを取得して追跡に使われてたのは有名だったしね。記事の引用がおかしいってのは全くもって同意だよ。" userName="bastawhiz" createdAt="2025/06/19 15:27:40" color="#785bff">}}




{{<matomeQuote body="インストールされてるフォントを使ったフィンガープリンティングって、特定の会社で働く人を見つけるのにどれくらい使われてるんだろ？結構な組織が独自のフォントとか珍しいフォントを使ってるからさ。急に気になったよ。" userName="jon-wood" createdAt="2025/06/19 15:51:44" color="#38d3d3">}}




{{<matomeQuote body="まあ、もう誰もFlashなんて入れてないだろうし、今どきの方法でフォントリストを簡単に入手する手はないと思うんだ。だから、正直言ってフォントを見るってのは今はあんまり有効な手じゃなさそうかな。" userName="pan69" createdAt="2025/06/19 17:07:50" color="#ff5c5c">}}




{{<matomeQuote body="CSSを使って、試したいフォントリストとテキストのサイズを比較する手で、なんかできるとは思うよ。でも、そうだね、前よりはかなり難しくなってるのは確かだ。" userName="jon-wood" createdAt="2025/06/20 11:29:46" color="#785bff">}}




{{<matomeQuote body="プライバシーを気にするなって言いたいわけじゃないよ。でも、問題を解決しないままフィンガープリンティング対策ばっかしてるせいで、ウェブが使いにくくなってる部分はあるよね。銃規制の議論に似てるかも。悪い奴は追跡するくせに、ちゃんとしたサイトはユーザーを特定するような機能（強い暗号化とか）を嫌がって、便利な機能が作れないみたいな。" userName="dcow" createdAt="2025/06/19 10:02:29" color="#ff33a1">}}




{{<matomeQuote body="ウェブサイト側は、公開するならユーザー側（user-agents）に主導権があるって気づくべきだね。ここ数十年間のくだらない試みのほとんどは、サイト側がサーバーサイドで制御を取り戻そうとしてるだけだよ。" userName="ethbr1" createdAt="2025/06/19 11:08:32" color="">}}




{{<matomeQuote body="ここのニュアンスは、学術研究ってのは「まあ、プライバシーポリシーに書いてありましたから」ってごまかせない、具体的で測定可能な証拠を求めるもんだってことだと思うよ。" userName="HexPhantom" createdAt="2025/06/19 16:22:16" color="">}}




{{<matomeQuote body="この論文は、情報開示しなくても証明できるって言った方が、もっと伝わりやすかったかもね。" userName="harvey9" createdAt="2025/06/19 12:56:06" color="">}}




{{<matomeQuote body="ウェブサイトより何が君を追跡してるか知ってる？アプリだよ！なんでサイトがアプリのインストールをあんなに頼んでくるか知ってる？ブラウザが追跡を難しくするために加えてる全ての保護機能が、アプリに入ると消えちゃうからさ。ログイン必須だし、それから君の全てのデータを誰とでも共有しまくるんだ。" userName="socalgal2" createdAt="2025/06/19 08:33:13" color="">}}




{{<matomeQuote body="俺のアプリはそんなことしないぜ。俺がアプリを推す理由は、メールアドレスを聞かないから、新しいメッセージとかを通知する唯一の方法がアプリ経由だからなんだ。アプリは定着しやすいけど、ウェブサイトはそうじゃないんだよ。" userName="welder" createdAt="2025/06/19 14:07:16" color="">}}




{{<matomeQuote body="今iOSには「Appにトラッキングしないよう要求」っていう表示が出るけど、問題はそれが特定の種類のトラッキングしかカバーしてないってことだね。" userName="HexPhantom" createdAt="2025/06/19 16:25:40" color="">}}




{{<matomeQuote body="coveryourtracks.eff.orgとamiunique.orgよりも良いフィンガープリントテストを見てみたいね。両方とも、永続性じゃなくてユニークさしかテストしない欠陥があって、その結果、乱数ジェネレーターもフィンガープリントとしてフラグ立てしちゃうんだよ。本当のフィンガープリント対策は、多くの場合、分類された結果じゃなくてランダムな結果を含むし、これによってTor、Safari、LibreWolfみたいにテストをパスするはずのブラウザまで、これらのサイトでは不合格になっちゃうんだ。" userName="handsclean" createdAt="2025/06/19 01:34:46" color="#ff5c5c">}}




{{<matomeQuote body="CreepJS[0]を使うと「署名を追加」できるんだ（要するに自分のフィンガープリントに名前をつけられる）。ページを開き直して、もし君のフィンガープリントを関連付けられたら、その署名を表示してくれるよ。[0] https://abrahamjuliot.github.io/creepjs/" userName="aniviacat" createdAt="2025/06/19 08:28:07" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
