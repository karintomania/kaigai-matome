+++
date = '2025-05-24T00:00:00'
months = '2025/05'
draft = false
title = 'Tachy0n 最後のゼロデイ脱獄！'
tags = ["脱獄", "ゼロデイ", "セキュリティ", "脆弱性", "iOS"]
featureimage = 'thumbnails/orange3.jpg'
+++

> Tachy0n 最後のゼロデイ脱獄！

引用元：[https://news.ycombinator.com/item?id=44083388](https://news.ycombinator.com/item?id=44083388)




{{<matomeQuote body="＞ やつが数十億ドルの企業を打ち負かしたやり方は、Appleが苦手なシンプルだけど退屈で面倒な作業だったんだ。つまり回帰テストさ。<br>＞ ほら、これ前にもあっただろ。iOS 12では、SockPuppetが大きな脱獄エクスプロイトの一つだった。Project ZeroのNed Williamsonが見つけてAppleに報告して、iOS 12.3でパッチされたけど、Project Zeroのバグトラッカーでは制限解除された。でも、まさかのiOS 12.4で再発したんだ、まるでパッチされなかったみたいにね。<br>たぶんAppleがそのバージョン用にXNUを別ブランチにフォークして、そこにパッチを適用し忘れたんだろうとしか推測できないけど、これで彼らがこういう類の回帰テストをしてないのが明らかになった。<br>これは簡単で、うまくいくとかなり報われる可能性のある隙間だったんだ。実際、既知の1日脆弱性の回帰テストをいくつか実装しただけで、Pwnは当たりを見つけた。<br>それで今、他のプロジェクトはどれくらいこれをやってるんだろうって考えてる。誰か古いLinux/FreeBSD/OpenWRT/OpenSSH/…のバージョンに過去の脆弱性をCIファームで動かしてるのかな？<br>それは、誰かが各脆弱性を自動化できる形にする（これはハードル低いと思う）、それを動かすCIリソースがある（これはハードル高いけど、新しいバージョンごとにランダムに選んで動かせば節約できる）、気に掛ける（これは簡単だといいな）、そして思いつく（これは驚くほど難しい）必要があるね。" userName="yjftsjthsd-h" createdAt="2025/05/24 22:06:19" color="#785bff">}}




{{<matomeQuote body="うん、回帰テスト…修正したバグが戻ってこないようにすること…はQAの標準作業だよね。<br>俺、大学の頃に20年も前（うわ、その数字ヤバいな）だけどMozillaでQAボランティアしてたとき、どんどん増えてく回帰テストのスイートがあったよ。<br>主にレンダリングとかレイアウト、JavaScriptエンジンのバグ用で、バグを再現して修正したことを証明するためには最小限のテストケースを作るのが一部だったんだ。それを簡単にビルドパイプラインに投入できた。<br>バグは付き物だけど、直すために時間とお金を費やしたのにまた戻ってくるのは最悪のシナリオだよ。<br>品質を気にする組織は間違いなく回帰テストに投資してる。<br>残念ながら、たくさんの組織がQAを全く尊重せず、もしやったとしても最低価格でオフショアに出してる。<br>Appleがjailbreakのような、歴史上最も注目されるバグの回帰テストをしないなんて、俺には全くクレイジーに思える。<br>最近のMozillaは色々批判されるかもしれないけど。<br>でも2000年代初頭にはTinderboxとかBugzillaみたいなツールを使って、すごく頑丈なQAとCI/CDの仕組みがあったんだ。<br>DevOpsが出てきてそれが一般的になったとき、「え、みんなこれもうやってなかったの？」って思ったよ。<br>自分がバブルの中に住んでただけで、全然普通じゃなかったってことだね。" userName="jdwithit" createdAt="2025/05/25 02:10:19" color="#45d325">}}




{{<matomeQuote body="何年も前、Apple Retail Software Engineeringで6ヶ月契約で、店舗の従業員と連絡を取る、従業員同士が連絡を取る、彼らにトレーニングを提供する、といったコードのJenkins CI/CDシステムを納品したことがあるんだ。<br>複数の主要なコンポーネントがあった。<br>Linuxで動くバックエンドサーバーシステム。<br>MacOSで動くコンテンツ作成システム。<br>iOSとiPadOSで動くエンドユーザー向けクライアント。<br>そして、彼らが実行している広範なQAプロセスがあったんだ。<br>俺はそれらのコンポーネントのコードベースにちょっとした変更を加えて、俺の机の下で動いてたJenkinsサーバー（昔のMac Proサーバーが転がってたやつ）でビルドできるようにしたんだ。<br>そして言えることは、彼らは広範な回帰テストを持っていたってことだよ。<br>俺がそこにいた時点で、5000以上。<br>それらが実行にすごく時間がかかったから、彼らは自分たちのラップトップじゃなくてJenkinsサーバーが必要だったんだ。<br>さて、Appleの他の開発者のことは言えないけど、彼らは回帰テストの概念をよく知ってると思うよ。" userName="bradknowles" createdAt="2025/05/25 15:12:15" color="">}}




{{<matomeQuote body="彼らが言ってるのは、他の人のコードを密かに回帰テストして（パッチされたエクスプロイトが再び使えるようになってないかチェックする）、ってことだと思うよ。" userName="gcau" createdAt="2025/05/25 08:03:23" color="">}}




{{<matomeQuote body="＞ そして今、他のプロジェクトはどれくらいこれをやってるんだろうって考えてる。<br>もし「プロジェクト」が情報機関を指すなら、G10の情報機関は少なくともこれをやってるって仮定するのは安全だろうね。ロシア、中国、北朝鮮もそうだし、たぶん数多くの民間グループもやってるよ。" userName="KennyBlanken" createdAt="2025/05/24 22:23:15" color="">}}




{{<matomeQuote body="根本的な問題は、たくさんの組織がセキュリティ関連を独自のワークフローと独自の種類のバグとして分離しちゃってることだと思うんだ。<br>基本的にConway’s lawがセキュリティと機能開発の分離に適用されちゃってる。<br>だから、もし彼らが成熟した回帰テストスイートを持つビルド/リリース手順を持っていても、組織内部の都合でこういう”セキュリティ”問題はそこに含まれないだろうね。" userName="bcoates" createdAt="2025/05/25 01:14:01" color="">}}




{{<matomeQuote body="見たことはあるんだけど今は名前を思い出せない（ビール飲んでるからね）FOSSプロジェクトがあるんだけど、彼らのテストケースディレクトリだけは覚えてる。メリットのあるイシューごとに一つ。<br>何千もあったよ、簡単だった。<br>Sqliteだったかもしれないな。<br>調べてみる価値はあるよ。<br>バグ修正を前のバージョンに戻さないなら、テストも戻さないだろうね。" userName="edoceo" createdAt="2025/05/25 03:34:48" color="">}}




{{<matomeQuote body="Glasgow Haskell Compilerプロジェクトがこれをやってるよ:<br>https://gitlab.haskell.org/ghc/ghc/-/tree/master/testsuite/t...<br>Tと数字で始まる全てのテストは、彼らのトラッカーの対応するイシューから作られた例なんだ。<br>そして、まあ、たくさんあるよ。" userName="TheMatten" createdAt="2025/05/25 06:26:27" color="#45d325">}}




{{<matomeQuote body="＞ kheap separationについて知ってること全部忘れて、task port mitigations全部忘れて、SSVとSPTMも忘れて<br>これ、友達と外国語で話しててうまくやってたのに、次の文で脳外科手術とか核物理学の話を始めて、俺の理解が崖から落ちるみたいだね。<br>あるいは、高炉改修についての会話を解釈しようとしたあの時みたい。<br>jailbreakに関しては、もうできなくなったのが悲しいな。<br>脱獄したiPadで何か役に立つことした覚えはないけど、楽しかったんだ。<br>今はテザリングアプリとかUTM + JITソリューションとか入れたいな(1)。<br>1: SideStoreは有望に見えたけど、俺のアカウントは昔有料のApple Developerアカウントで、期限切れにならない10個のアプリIDがあるから、新しいアカウントを作るかまたお金を払わないと、さっき言ったUTMみたいなアプリをインストールできないんだ。" userName="0x38B" createdAt="2025/05/25 06:03:58" color="">}}




{{<matomeQuote body="昔iPhone 4を脱獄してて、それが俺がメインデバイスとしてiPhoneを使う唯一の方法だったんだ。<br>それができなくなったから、Androidに戻っちゃった。<br>Androidもその頃には基本的な機能がたくさん追いついてたからね。" userName="xandrius" createdAt="2025/05/25 09:25:18" color="">}}




{{<matomeQuote body="Appleが今はJailbreakに100万ドル払うらしいね。それがフリーマーケットでの最低価格ってことか。" userName="weinzierl" createdAt="2025/05/24 21:44:14" color="#45d325">}}




{{<matomeQuote body="＞now その境界線は2015年に、10年くらい前に破られてるよ： https://www.dailymail.co.uk/... [省略]" userName="conradev" createdAt="2025/05/25 00:13:04" color="">}}




{{<matomeQuote body="いいね、Appleのbug bountyは10年前にはなかったし。Appleのbug bountyはmaxで100万ドルだよ（bonus multipliersで最大200万ドルまであるけどね）。gotchaを投げつける前にちゃんとcontent読もうぜ。" userName="halJordan" createdAt="2025/05/25 01:29:01" color="#ff33a1">}}




{{<matomeQuote body="その1MはAppleが払ったんじゃないよ。Zerodiumっていう、vulnerabilityをattackers（e.g. NSA）にsold”sellsしてるcompanyが払ったんだよ。" userName="Thorrez" createdAt="2025/05/25 09:04:13" color="#ff5c5c">}}




{{<matomeQuote body="それがmarket rateだよ。 https://cyberscoop.com/zerodium-android-zero-days-bounty/" userName="lern_too_spel" createdAt="2025/05/25 00:53:33" color="">}}




{{<matomeQuote body="へぇー、zero-dayのmarket makersとかいるんだね…。" userName="andrepd" createdAt="2025/05/25 01:07:06" color="">}}




{{<matomeQuote body="Bear in mind： different buyersとdifferent price structuredだよ。vulnerabilityをCNE shops（say：every intelligence organization in Germany）にsellingすればmore getできるけど、more riskをacceptすることになるんだ--- the paymentsはeffectively tranched（or，equivalently，back-loaded on “maintenance” fees）で、vulnerabilityがdiesしたらyou’re S.O.L。AppleもCNE buyerが求めるようなreliable exploitation enablement toolingをbuildさせるわけじゃない。So：they pay less。" userName="tptacek" createdAt="2025/05/25 01:53:54" color="#ff5733">}}




{{<matomeQuote body="Jailbreak持ってたら、Appleにcontactしてmillions of dollarsをapplyする方法ってあるの？X： Hi AppLE I haz jailb8？<br>Orはintermediariesの1つ経由？<br>Orはpublishedされてるemailとかそんなのがあるの？<br>（That will not to straight to 1st level support and forgotten about）" userName="ThinkBeat" createdAt="2025/05/24 23:51:28" color="">}}




{{<matomeQuote body="https://security.apple.com/bounty/" userName="charcircuit" createdAt="2025/05/24 23:57:35" color="#ff5c5c">}}




{{<matomeQuote body="If this is the case Apple employed an amazing strategy。彼らのdevicesをrootするall waysをlocking by彼らはJailbreak devs for free discovered vulnerabilitiesをpatchしてるってことだ。" userName="ivanjermakov" createdAt="2025/05/24 20:48:21" color="">}}




{{<matomeQuote body="でも彼らはそうしてないんだよ。記事には「プライベート」コミュニティにはまだexploit があって、Apple がそれをパッチしてるって書いてる。公共の場、例えば dev とかには、なぜかもう無いんだってさ。" userName="ejpir" createdAt="2025/05/24 21:11:06" color="">}}




{{<matomeQuote body="プライベートなコミュニティ限定なのは、それがすごくexpensive だからだよ。しかも時間とともにどんどんexpensive になってる。つまり、Apple の strategy が iOS の exploiting の cost を上げたんだね。Public なものは anything 死んでる。それが you want to see ってこと。" userName="tptacek" createdAt="2025/05/24 21:16:03" color="">}}




{{<matomeQuote body="ここの premise には agree できないかもな、 Apple specifically に関しては conclusion には agree だけど。いくつか non-iOS spaces で VR をやってた experience から 100% positive だけど、 exploit value が上がると fewer published public exploits に繋がる。でも！ これは fewer available exploits とか platform が more difficult to exploit って sign じゃなくて、単に multiple （sometimes large numbers ）の competing factions が exploits を privately hoarding してるって sign なんだよ。complementary axiom として、 exploit value は exploit difficulty より target value に more closely follow すると思う。なぜなら competent vulnerability researchers の supply は available targets の number より constrained だからさ。要するに、 high value target （hello, shitty Android phones ）を pops する simple exploit は、 low value target を pops する complex exploit より much more money で buy される。 high exploit value と low exploit publication rate を持つ devices でも garbage security なのは plenty ある。With that said, Apple specifically は special （and perhaps the only ）case で、彼らは”winning”で people は genuinely research を giving up してる。理由は results が value に aren’t worth だから。これが industry 全体に follow するとは思わないな。" userName="bri3d" createdAt="2025/05/24 22:14:18" color="#38d3d3">}}




{{<matomeQuote body="iOS は so many exploits in the chain が require されるんだ。syscall も capability も app ごとに two steps で effectively sign されてるから。他の process と interact できるかもしれないけど、 whitelisted processes だけ。kernel は Immutable だから persistence は impossible。 Apple only ができる level の boundary checks をしてるし、critical processes に special telemetry flags もあって、それが end of life の pathway を looking to してるって意味だったりする。他の OS はこの level の restrict ができなくて、それが say the JavaScript engine の exploit だけじゃなくて、 like 10 other pathways の exploit も need となる reason。理由は kernel が immutable で wazoo まで checked out されてるから、 different services と system processes を modifying して、それらの apps か approved peer から capability を getting することで”Jailbreaks”が手に入るんだ。これが exploit が required なとこ。でも apple はそれぞれの app が eachother と何してるかの telemetry も also 持ってるんだ。" userName="maldev" createdAt="2025/05/25 04:21:14" color="#45d325">}}




{{<matomeQuote body=" deeper questions here には reach できない気がする。pretty much just get back to”if it was cheap, Apple would have killed it already”に辿り着く。その circumstances の set では、 workable な public exploits （or broad workable bug classes to fish from ） to work with なんてありえない。 public jailbreaking community の part なら Sucks だろうけど、 course 、 user なら good だよね。" userName="tptacek" createdAt="2025/05/25 00:46:03" color="">}}




{{<matomeQuote body="これ agree だわ。 preferable situation なんてないってとこも agree。Apple は great job で mitigations を building してて、それが how difficult, expensive, and rare it is to fully exploit their platforms ってことに shows。俺は certainly intending to form a counter-argument だったわけじゃない。public exploits が existing するのが positive signal だとか、 preferable alternative situation があるとかね。My only point は”anything public is dead is what you want to see”が particularly useful な rubric in general じゃ never ないってこと。 public exploit material の absence や high”bid”price for grey market exploits が platform が less vulnerable な evidence って statements を見る時 nervous になるんだ。My experience suggests this isn’t really how the market works in general。 both pricing and publication に affect する way too many additional factors がありすぎて、”public exploit availability”or”grey-market bid price”を platform の security posture overall に関する signal として use するのは無理。Anyway, reading back, I realize that you specifically weren’t trying to draw that conclusion, but sibling comments は now - and it seems to be a really easy trap to fall into。 See: every”security journalism”outlet every time a broker posts an Android bid が their standing iOS bid より higher な時、 or vendors and OEMs が their devices は secure だと claiming する時 because no public exploits exist。" userName="bri3d" createdAt="2025/05/25 16:55:58" color="#45d325">}}




{{<matomeQuote body="でも it’s still more of obfuscation って側面が強いんじゃないか。研究者の pool を those most likely to turn to the dark market に effectively reducing してるだけだよ。privately developing exploits してる entire zero-day industry があって、 public は none of it を sees。Sure, low-resource attackers は probably forget about exploiting iOS だろうけど、 stuff like Pegasus は still happens regularly だし。" userName="pona-a" createdAt="2025/05/25 09:38:23" color="">}}




{{<matomeQuote body="Literally alternative は more viable vulnerabilities だろ。It’s hard to understand a coherent argument が that を over what we have now に favors するってのはね。We’re in this situation なのは because Apple が killing whole bug classes が gotten good at したからだ。That’s exactly what users want。" userName="tptacek" createdAt="2025/05/25 15:42:00" color="">}}




{{<matomeQuote body="Is this actually true？ Jailbreaks は more or less the same exploits used by things like Pegasus なのか？ exploits は、 their friends に side loaded apps への access を give する ability より、 them that discover する individuals にとって more worth なんだろうか？" userName="hsbauauvhabzb" createdAt="2025/05/24 22:26:23" color="">}}




{{<matomeQuote body="That’s the rub of relative integrity. It’s variably easier for some to rationalize taking the cash, even if that giant pile of coin が likely に others の imprisonment, deaths, and/or torturing に lead するとしても、 for better or for worse かは別としてね。" userName="burnt-resistor" createdAt="2025/05/25 00:51:22" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="記事全体の俺のお気に入りの一行．”iOS 13．0でバグをアンパッチした奴にも感謝したいね．あれもめちゃくちゃクールな行動だったよ．”" userName="greggh" createdAt="2025/05/25 13:56:42" color="">}}




{{<matomeQuote body="＞ 5年後にどうなってるか全然想像できないって？いや，できるだろ．iMessageはまだデバイス，アカウント，データの乗っ取りを許してるぜ．" userName="Hilift" createdAt="2025/05/25 15:41:49" color="">}}




{{<matomeQuote body="Tethered？それともuntethered？記事には書いてなかったね．" userName="peterburkimsher" createdAt="2025/05/25 19:31:07" color="">}}




{{<matomeQuote body="tachy0nはLPEだから，それはあんまり適切な分類じゃないんだ．それが使われた脱獄，unc0verは，俺の知る限り”semi-untethered”だよ．" userName="Retr0id" createdAt="2025/05/25 21:09:42" color="#ff33a1">}}




{{<matomeQuote body="いいね，答えてくれてサンキュー！unc0verってのはこれのことだよ，ちなみに：https://unc0ver.dev/" userName="peterburkimsher" createdAt="2025/05/25 21:13:46" color="#ff33a1">}}




{{<matomeQuote body="文脈で何言いたいか、あの俗語って別の意味なのに、マジで分からないの？" userName="dymk" createdAt="2025/05/25 00:26:29" color="">}}




{{<matomeQuote body="たぶん彼らは、l33t hax0rみたいに聞こえる新しい言葉を自分で作ったと思っていて、それがもう使われてるって気づいてないのかもね。" userName="Bender" createdAt="2025/05/25 00:23:32" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
