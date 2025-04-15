+++
date = '2025-04-08T00:00:00'
months = '2025/04'
draft = false
title = 'Tailscale、衝撃の160億円調達！ユーザーからは不安の声も…一体何が？'
tags = ["Tailscale", "VPN", "資金調達", "ネットワーク", "セキュリティ"]
featureimage = 'thumbnails/purple5.jpg'
+++

> Tailscale、衝撃の160億円調達！ユーザーからは不安の声も…一体何が？

引用元：[https://news.ycombinator.com/item?id=43620141](https://news.ycombinator.com/item?id=43620141)

{{<matomeQuote body="TSのファンで、もう1年近く仕事のインフラで利用してるよ。本当によくできてて使いやすいんだけど、深く掘り下げるといくつか問題が出てくるんだよね。<br>まず、料金プランが不満。基本プランは$6/ユーザー/月でまあまあだけど、ACLsで制御しようとすると3倍の$18/ユーザー/月になっちゃう。それならもっといいソリューションがあるし、次のティア（要問い合わせ）がいくらになるか想像するだけでゾッとするよ。<br>あと、Ubuntu（たぶん他のディストリビューションも）でサブルートのルーティングが最近壊れたんだけど、TSからのアラートとか連絡は一切なし。自分で解決策を見つけた（Windowsでサブルーターをインストール）んだけど、半日も緊急モードで時間を無駄にしたよ！<br>それから、リモートクライアントがなんで直接接続じゃなくてDERPにフォールバックしてるのかをもっと簡単に特定できるようにしてほしい。Businessプランの顧客にとってはDERPリレーは最終手段であるべきなのに（めっちゃ遅い）、TSはどんな接続でも問題ないと思ってるみたい。<br>全体的に、複雑なVPNネットワーキングのシンプルさと抽象化は素晴らしいんだけど、問題が発生したり、高度なニーズがあったりすると、すぐにUDP/NAT/STUNの世界に引き戻されるんだよね。それなら、従来のVPN（WG、OpenVPN、または最悪の場合IPSec）を使った方が、簡単じゃないけど抽象化とかがないから、もっとわかりやすいかも。" userName="briHass" createdAt="2025-04-08T23:45:02" color="">}}

{{<matomeQuote body="＞リモートクライアントがなんで直接接続じゃなくてDERPにフォールバックしてるのかをもっと簡単に特定できるようにしてほしい。DERPリレーは最終手段であるべきなのに（めっちゃ遅い）、TSはどんな接続でも問題ないと思ってるみたい。”<br>TailscaleはWireGuardプロトコルのパフォーマンスの利点を宣伝してるけど、実際にはユーザーランドのWireGuard（Linuxを含むすべてのプラットフォームで常に使われてるみたい）とDERPへの過度の依存のせいで、本来のパフォーマンスの利点は全くないんだよね。" userName="smashed" createdAt="2025-04-09T03:28:26" color="#45d325">}}

{{<matomeQuote body="ユーザー空間のWireGuardのパフォーマンスは大幅に改善されたと思ってたけど？<br>https://tailscale.com/blog/more-throughput<br>カーネル実装が再びリードしてるかどうかはわからないけど、あんまり詳しくないんだ。<br>あと、Tailscaleを擁護するわけじゃないけど、彼らは一部の人にしか合わないソリューションだと思うよ。" userName="diegs" createdAt="2025-04-09T15:59:23" color="">}}

{{<matomeQuote body="UDPが実際に使える場合でも、不必要にTCP経由でDERPを使ってるみたいだね。" userName="miki123211" createdAt="2025-04-09T08:09:22" color="">}}

{{<matomeQuote body="＞想像するだけでゾッとするよ。”<br>エンタープライズティアはなくて、必要な機能を追加で支払うんだよ。例えば、ログストリーミングは$2/月/ユーザーで、SSHレコーディングは$3/月/ユーザー。" userName="hashworks" createdAt="2025-04-09T12:33:34" color="#ff33a1">}}

{{<matomeQuote body="もっと高い価格帯で検討できる、より良いソリューションを教えてくれない？" userName="rjgray" createdAt="2025-04-09T05:48:12" color="">}}

{{<matomeQuote body="そのとおり。ないよね。" userName="fakebizprez" createdAt="2025-04-14T18:18:25" color="">}}

{{<matomeQuote body="ZeroTierかな？" userName="cbzbc" createdAt="2025-04-09T08:23:42" color="">}}

{{<matomeQuote body="ZeroTierのソリューションは、Tailscaleよりも高い価格帯に値するものではないと思うよ。長年のユーザーとして、ZTの管理UIはひどいし、製品は10年間ほとんど変わってない。<br>より良いソリューションは、「簡単」というより、VPNを見えなくするものだね。Teleportみたいなツールとか。" userName="alexjurkiewicz" createdAt="2025-04-09T09:15:08" color="">}}

{{<matomeQuote body="＞$6/ユーザー/月だけど、ACLsで制御しようとすると3倍の$18/ユーザー/月になっちゃう。”<br>これは市場のセグメンテーションだよ。ACLsが必要なのは少なくともSMBの兆候だし、ほとんどの規模のビジネスにとって、$6/ユーザーと$18/ユーザーの差はゼロに等しい。" userName="atomicnumber3" createdAt="2025-04-09T04:00:30" color="">}}

{{<matomeQuote body="6ドルと18ドルの差なんてゼロって言うのは言い過ぎじゃない？大手企業は1席あたり12ドルを節約するためにめちゃくちゃ努力してるんだから。でも、18ドル以上の価値があると納得させられれば、喜んで払うと思うよ。趣味で使う人は感情的なんだよね。6ドルなら「コーヒー1杯分」だし、試すだけの価値があると思える。18ドルだと家の請求書の1つになるから、TailscaleをいじるよりNetflixを見る方がいいって人も多いんじゃないかな。" userName="TorKlingberg" createdAt="2025-04-09T09:09:44" color="">}}

{{<matomeQuote body="えー、うちの会社は何万人も従業員がいるけど、月18ドルは全然無視できない金額だよ。規模を考えると割引もあるから、そんなに高い値段だったら絶対に検討しないな。<br>Windows Enterpriseも同じ理由で使ってないし。レガシーのOffice 365プランと買い切り版のWindowsライセンスを使ってる。M365のアドオンは高いからね。うちの規模だと、一人あたり数ドルの差でも年間数百万ドルになるんだ。<br>MicrosoftはOffice 365プランはもう存在しないって言ってるけど（「Office 365はMicrosoft 365になった」とか）、まだあるんだよね。Copilotも30ドルは高すぎる。ユーザーは欲しいみたいだけど、却下（あるチームで試用したら、実際に使ったのは10％だけだったし）。<br>Tailscaleは使ってないけど、6ドルなら検討できるけど、18ドルはありえない。<br>うちの会社は、俺みたいな消費者よりもずっとコスト意識が高いんだよ。" userName="wkat4242" createdAt="2025-04-09T06:00:10" color="#ff33a1">}}

{{<matomeQuote body="その規模なら、「Call us」プランが必要でしょ。そんな規模の会社が定価を払うわけないじゃん。" userName="darkstar_16" createdAt="2025-04-09T07:49:42" color="#ff5c5c">}}

{{<matomeQuote body="エンタープライズの計算って面白いよね。<br>グローバルな使い放題のエンタープライズ全体への導入の場合:<br>*ベース: 2万人 x 200ドル/年<br>*50%割引: ボリューム+複数年+...<br>=>エンタープライズ: 100万ドル/年<br>=>エンタープライズ内の200人部門: 1万ドル/年<br>安くはないけど、グローバル展開を平均すると、そこまで悪くないと思う。<br>(これはめっちゃ大雑把な計算。BYOハードウェア、社内スタッフ、プロサービスなどを加味すると、実際の割引率はもっと違うかも!)" userName="lmeyerov" createdAt="2025-04-09T09:20:59" color="#45d325">}}

{{<matomeQuote body="うちの会社の割引率とか、今のVPNプロバイダーにいくら払ってるかは知らないんだよね（そのチームじゃないから）。VPNは常にオンにしておく必要があるから、VPNにはもっとお金を使えるのかも。" userName="wkat4242" createdAt="2025-04-09T10:48:08" color="">}}

{{<matomeQuote body="＞Uh I work for an enterprise of tens of thousands of users and $18 a month is not nothing for us. In fact considering the discounts we get at our size that would be so high we'd never consider it.”<br>それって意味わかんないな。小さい会社でも大きい会社でも、一人あたり数ドルなんて誤差でしょ。規模を利用して良い価格を得ようとするのはわかるけど、時間やお金を節約できるなら、大きい会社だからって拒否すべきじゃない。そういう決定をする人が会社の価値を下げてるんだよ。" userName="osigurdson" createdAt="2025-04-10T01:38:37" color="">}}

{{<matomeQuote body="よくあるのが、数ドルを節約することに必死な会社ほど、会議ばかりして、意思決定が遅くて、戦略的な焦点が定まってなくて、社内政治がひどかったりするんだよね。" userName="gizmo" createdAt="2025-04-09T07:42:55" color="#38d3d3">}}

{{<matomeQuote body="うちの会社にもそういうところはあるね。意思決定は遅いし、社内政治もひどい。会議はそんなに多くないけど（特に海外出張は2015年から減ったから良かった）。<br>戦略は結構良いと思う。Trumpからの脅し（インクルーシブな会社はアメリカ政府と取引できないとか）にも屈しないし。うちはEUの会社だけど、ちょっと心配だったんだよね（俺はインクルーシブプログラムに深く関わってるから）。でも、絶対に譲らないって言ってる。" userName="wkat4242" createdAt="2025-04-09T10:46:15" color="#ff5733">}}

{{<matomeQuote body="うちの100人くらいの会社では、その価格帯だと使うか使わないかの差になるね。ACLに月18ドルはありえない。" userName="snapplebobapple" createdAt="2025-04-13T18:55:06" color="">}}

{{<matomeQuote body="えー、1つの機能のために3倍のコストがかかるんだよ。君の理屈だと、その機能のために月100ドル請求しても同じってことになるじゃん。これは典型的な「エンタープライズ」の馬鹿げた価格設定で、一部の人は他のサービスを探すようになるだろうね。" userName="dexterdog" createdAt="2025-04-09T04:08:07" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="欲しい客層じゃないやつらを追い払うための価格戦略としては、全然ありだよね。" userName="dewey" createdAt="2025-04-09T04:46:25" color="">}}

{{<matomeQuote body="つまり、他のツールを使う頭もないバカな客とか、逃げ出すのが怖いほど囲い込めた客ってことだろ。自分の仕事とか、その相手にしてる人たちのこと嫌いなら、いい戦略かもね。" userName="nativeit" createdAt="2025-04-09T14:14:55" color="">}}

{{<matomeQuote body="ZeroTierを数年使ってるけど、マジ最高だよ。エンタープライズ向けじゃないけど、うちみたいな小さい店なら100エンドポイントで月0.1ドル/個で、全部の機能使えるし。" userName="nativeit" createdAt="2025-04-09T14:13:22" color="#38d3d3">}}

{{<matomeQuote body="従業員が12人くらいの小さいビジネスなら無料だよね。でも、でかいビジネスになると、社員の一部しかソフトを使わなくても、誰か一人でも高いプランが必要になると、全員アップグレードしなきゃいけないっていう問題が出てくる。" userName="imtringued" createdAt="2025-04-09T14:13:12" color="">}}

{{<matomeQuote body="Ubuntu（たぶん他のディストリでも）でSubnet routingが最近壊れたってマジ？Debian使ってるから、それマジ勘弁。" userName="lkuty" createdAt="2025-04-09T07:17:50" color="#ff33a1">}}

{{<matomeQuote body="たぶんこれのこと言ってるんじゃない？<br>＞https://github.com/tailscale/tailscale/issues/13863<br>うちのSubnet routingもこれで死んだ。" userName="johnmoberg" createdAt="2025-04-09T13:27:55" color="#38d3d3">}}

{{<matomeQuote body="今回の資金調達で、可観測性が向上して、フルベアメタルじゃなくても、もっと深く掘り下げたいパワーユーザーにもっと愛を注いでくれると嬉しいな。" userName="ErigmolCt" createdAt="2025-04-09T05:42:44" color="">}}

{{<matomeQuote body="＞避けたかったNAT/STUNの世界か。<br>ファイアウォール設定してポート開けて、固定IP使うのが一番綺麗だよね。NAT/STUNとか動的IPなんてハックじゃん。なんでみんなこれがプロのネットワークで許される解決策だと思ってるのかマジで理解できない。変えられるインフラを回避するなんて時間の無駄じゃん。" userName="lo0dot0" createdAt="2025-04-09T10:33:46" color="">}}

{{<matomeQuote body="＞なんでみんなこれがプロのネットワークで許される解決策だと思ってるのかマジで理解できない<br>だって多くの場合、許容できるんだもん。多くの企業は、社内ネットワークのためだけに集中インフラを持ってるわけじゃないし、そんな管理コストとか不必要なルーティングのオーバーヘッドなんて増やしたくないんだよ。クラウドインフラ全体がそんなシステムで動いてるし、うまく行ってるじゃん。" userName="supermatt" createdAt="2025-04-09T10:55:32" color="#ff5c5c">}}

{{<matomeQuote body="あと、DERPリレーのQOSを自分で制御できないし、帯域がちゃんと通るか運任せなのがマジ不安。" userName="lo0dot0" createdAt="2025-04-09T11:17:21" color="">}}

{{<matomeQuote body="Tailscaleで直接p2p接続できない時だけDERPサーバー経由になるみたいだよ。接続の問題はだいたい設定で解決できるってさ。公式ドキュメントをもっとわかりやすくしてほしいってことだね。<br>中継サーバーの帯域が気になるなら、自分で立てることもできるよ(https://tailscale.com/kb/1118/custom-derp-servers)。集中管理したいならアリかもね。全部の通信をそこに通すこともできるけど、メリットあるかな？Tailscaleの柔軟性はそのまま使えるけど。" userName="supermatt" createdAt="2025-04-09T11:29:59" color="">}}

{{<matomeQuote body="別に集中管理したいなんて言ってないよ。固定IPとポート開放すれば、ポート開放とかSTUNいらなくなるって言ってるだけ。別に一箇所にまとめなくても、全部固定IPとポート開放で複数拠点構築できるじゃん。" userName="lo0dot0" createdAt="2025-04-09T13:51:19" color="">}}

{{<matomeQuote body="中継のQoS制御したいってコメントに返信したんだよ。" userName="supermatt" createdAt="2025-04-09T15:06:49" color="">}}

{{<matomeQuote body="Dynamic IPアドレスって、定期的に強制切断されること多くない？サービスをホストするには向いてないんだよね。" userName="lo0dot0" createdAt="2025-04-09T11:14:17" color="">}}

{{<matomeQuote body="それこそoverlayを使う理由になるんじゃない？IPが不安定でも、安全なネットワークを構築できるじゃん。固定IPの方が安定するって思うなら、それでもいいけど（ルーティングが変わっても意味ないけどね）。" userName="supermatt" createdAt="2025-04-09T11:32:32" color="">}}

{{<matomeQuote body="リンク障害対策にTailscaleのVPNが必要ってマジで言ってる？BGPとかSD-WAN、MPLS L2 VPNでもできるし。" userName="lo0dot0" createdAt="2025-04-09T13:47:43" color="">}}

{{<matomeQuote body="Tailscaleなんて言ってないよ。「overlay」って言ったんだ。SD-WANもMPLS L2 VPNもoverlayネットワークだよ。" userName="supermatt" createdAt="2025-04-09T15:01:09" color="">}}

{{<matomeQuote body="ルーティングが不安定ってどういうこと？障害でルーティングが変わるのは当たり前じゃん。" userName="lo0dot0" createdAt="2025-04-09T16:09:47" color="">}}

{{<matomeQuote body="＞Dynamic IP addresses typically also have a forced disconnect at a regular interval.”<br>ほとんどのDHCP環境でそれは違うと思うよ。<br>IPリースが変わってもダウンタイムは発生しないはず。アドレスとルーティングは別問題。<br>ルーティング変更は固定IPでも同じ。<br>overlayネットワークならそんなこと気にしなくていいって言ってるんだよ。<br>コメント読み返した方がいいよ。話が噛み合ってないみたい。" userName="supermatt" createdAt="2025-04-09T17:39:25" color="#ff33a1">}}

{{<matomeQuote body="両方やればよくない？NAT使えば楽になるし、ファイアウォールちゃんと設定すればNATトラバーサルのルールも管理できるし。" userName="udev4096" createdAt="2025-04-09T11:34:31" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="また資金調達したのか。方向性が変わって、一般ユーザーが離れていくんじゃないかって心配だわ。前回の100Mドルの時も同じような意見が出てたみたい。[1]を見てみなよ。[1] https://news.ycombinator.com/item?id=31259950" userName="elAhmo" createdAt="2025-04-08T14:09:45" color="">}}

{{<matomeQuote body="3年前の100Mドルの調達の時、Tailscaleは「必要ないけど、まさかの時のために取っておく」みたいなこと言ってなかったっけ？なんか変だよね。今回の調達で、前回の投資をもう使い切っちゃったのかな？そうでなければ、なぜ追加の資金が必要なんだろう？Tailscaleに競合はいないように見えるし、裏で大規模な開発プロジェクトでも進めてるのかな？AIに手を出してないといいけど。" userName="pomatic" createdAt="2025-04-08T17:38:42" color="#ff5c5c">}}

{{<matomeQuote body="VCから資金調達して、それを貯金するなんてありえないよ。VCがお金を銀行に預けたいなら、そうするって。100Mドル調達したら、それを活用しないとVCから文句言われるよ。160Mドルも調達したなら、何かに使うはず。たぶん、エンタープライズ向けの機能とか、プロダクト連携とかじゃないかな。" userName="api" createdAt="2025-04-08T20:34:27" color="#ff5c5c">}}

{{<matomeQuote body="よくわかるわー。「資金は必要ないけど、まさかの時のために貯めてます」みたいなCEOのコメントとかプレスリリースを何度も書かされたことあるけど、実際は90日以内に給料を払えなくなる会社だったりするんだよね。" userName="crmd" createdAt="2025-04-09T01:07:27" color="#45d325">}}

{{<matomeQuote body="厳密に言えば、嘘をついてたわけじゃないのかもね。ただ、まさかの時が来るのがわかってて、それがもうすぐだってことを隠してただけ…。" userName="ytpete" createdAt="2025-04-09T04:45:11" color="">}}

{{<matomeQuote body="俺の経験上、多くのテック系幹部は、真実か嘘かっていう概念を信じてないんだよね。彼らにとっては、ただの“異なるナラティブ”があるだけなんだよ。" userName="crmd" createdAt="2025-04-10T02:19:25" color="">}}

{{<matomeQuote body="資金調達の方法次第だよ。「お金がなくてもこれくらいの成長率が見込めます。だから、この投資によってx%のROIが得られます」って言えば、VCからあまり口出しされずに資金を調達できることもあるよ。Series Bの記事を読めば、Tailscaleは投資するつもりだってわかるよ。ただ、よくあるグロースハックじゃなくて、オーガニックな成長に投資するってこと。Series Cの記事を読めば、何にお金を使ってるのかわかるよ。GPU(と一般的な)クラウドの相互接続だよ。Tailscaleの資金調達に関する発表は、かなりオープンだから、推測する必要はないんだ。" userName="groby_b" createdAt="2025-04-08T22:39:23" color="#785bff">}}

{{<matomeQuote body="TailscaleがGPUを使って何をするんだ？AIとはかけ離れてる気がするけど。AIを活用した開発作業に使うのかな？もっと違う視点で考える必要があるかも。" userName="pomatic" createdAt="2025-04-09T10:57:32" color="">}}

{{<matomeQuote body="ちゃんと記事を読めって。" userName="groby_b" createdAt="2025-04-09T20:41:08" color="">}}

{{<matomeQuote body="その記事には、多くの企業がTailscaleを使ってGPUを搭載したサーバーに接続していると書いてあるけど、TailscaleがGPUを所有するとは書いてないと思う。" userName="yencabulator" createdAt="2025-04-11T16:43:06" color="#ff33a1">}}

{{<matomeQuote body="この記事はさー、たくさんの会社がGPU付きのサーバーに接続するためにTailscaleを使ってるって言ってるみたいだけどー。TailscaleがGPUを所有してるなんてどこにも書いてないじゃん？冗談はさておき、GPUを買う必要なんてないし、Tailscaleのこと知ってる限りありえないっしょ。" userName="PLG88" createdAt="2025-04-11T17:56:50" color="#ff5733">}}

{{<matomeQuote body="そうとは限らないよー。調達したお金を結局使わなかったって話もよく聞くし。大事なのは理由だよね。成長がヤバくてコストが増えてもburnが最小限かゼロに抑えられてるのか、それとも何も使わないから安定した収益でやっていけるのか。VCは前者の方が嬉しいけど、後者はイマイチ。" userName="mgfist" createdAt="2025-04-09T01:07:19" color="#785bff">}}

{{<matomeQuote body="えーと、ざっくり計算すると、100Mドルを3で割ると33Mドル/年？Tailscaleのこと全然知らないんだけど、ソフトウェア会社だよね？人件費がメインで、売上でカバーできるんじゃない？料金体系もしっかりしてるみたいだし(https://tailscale.com/pricing)。クラウド費用は多少あると思うけど、コントロールプレーンがメインだから安いはず？勘違いしてたらごめん！" userName="chubot" createdAt="2025-04-08T18:26:55" color="">}}

{{<matomeQuote body="Tailscaleがソフトウェア会社ってのは間違ってないし、人件費も大きいよね。でも、もっと複雑だよー。<br>１、Go-to-marketのコスト。プロダクト主導の成長も限界があるから、エンタープライズ向けには営業とかマーケティングにお金がかかる。<br>２、エンタープライズセールス。大企業相手は大変。時間がかかるし、セキュリティレビューとか面倒な手続きも多いから、専門チームが必要。<br>３、プロダクトとインフラ。コントロールプレーンだけとは言え、研究開発にはお金がかかる。機能が増えればエンジニアとかPMも必要だし。<br>４、戦略的な投資。新しい標準を作ったりするかもね。160Mドルは大金だけど、インフラ系の会社をスケールさせるのは簡単じゃない。" userName="kenrose" createdAt="2025-04-08T20:29:02" color="#785bff">}}

{{<matomeQuote body="＞1980年代のネットワーキングスタックの上に新しい標準を構築するってのは、金をドブに捨てるようなもん。<br>＞過去に大企業とか研究機関が何度も試して失敗してるし(コンテンツアドレスネットワークとか)。結局IPv4/6の上で動かすことになるし、問題は解決しない。<br>IPv6だって登場から20年経ってもIPv4を駆逐できてないじゃん。IPv6はメリットもあって、ソケット互換性もあって、IETFとかネットワーク会社が支援してたのに。IPv6で金持ちになった会社なんてないでしょ。" userName="kortilla" createdAt="2025-04-09T07:12:41" color="">}}

{{<matomeQuote body="＞Tailscaleのこととか会社のコストとかよく知らないんだけど<br>33Mドル/年って、フルスタックのソフトウェア開発者33人分の人件費と、オフィス代とクラウド費用くらいにしかならないよ。33人って全然多くない。" userName="fragmede" createdAt="2025-04-08T19:22:01" color="">}}

{{<matomeQuote body="SWEの平均年収が1Mドル(全部込み)ってことはないと思うなー。" userName="johnbellone" createdAt="2025-04-08T20:11:37" color="">}}

{{<matomeQuote body="一般的に、会社がエンジニアにかけるお金は年収の2倍くらい。テック系のプロダクト会社なら平均500kドルでもおかしくない。" userName="YetAnotherNick" createdAt="2025-04-08T20:16:47" color="">}}

{{<matomeQuote body="＞500kドルって高すぎ<br>Tailscaleの求人には給与範囲が書いてあるけど、そんなに高くないよ。" userName="rafram" createdAt="2025-04-08T23:50:34" color="">}}

{{<matomeQuote body="マジかよ、給料上げてくれないと。" userName="nialv7" createdAt="2025-04-08T21:56:53" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="人事、マーケ、営業、マネジメント、オフィス代、サーバー代、ライセンス料、保険とかじゃない？ちょっと高い気もするけど、ありえない話でもないと思うよ。" userName="andruby" createdAt="2025-04-08T21:07:36" color="">}}

{{<matomeQuote body="それはありえないってマジで！従業員一人にかかるコストが給料の約2倍っていうのは、主に2つの理由からきてるんだよね。<br>1. 定着率：採用コストはマジで高いから、定着率が高いか低いかでコストが変わる。<br>2. 平均賃金のばらつき：50万ドルは平均じゃないし、固定費も多い。月1000ドルのソフトライセンスは、月3000ドル（年36000ドル）の事務員さんの給料の1/3！でも、年収50万ドルのエンジニアから見たら、めっちゃ少ないよね。事務員さんは保険とか込みで給料の3倍かかってるかもしれないけど、エンジニアは10%もいかないんじゃないかな。" userName="hug" createdAt="2025-04-08T22:33:06" color="#785bff">}}

{{<matomeQuote body="アメリカの医療保険はバカ高いよね。" userName="Loudergood" createdAt="2025-04-09T01:58:55" color="">}}

{{<matomeQuote body="規模が大きくなると、そんなことないよ。50人くらいの会社だと、エンジニア一人あたり月500ドルくらいのゴールドレベルの保険に入れる。もっと大きくなれば安くなると思う。" userName="xeromal" createdAt="2025-04-09T02:32:37" color="">}}

{{<matomeQuote body="アメリカで何か起きてるって知ってる？投資家はアメリカの株式市場以外に投資先を探してるし、Tailscaleは世界的な不況に備えて資金を蓄えようとしてるんじゃない？" userName="fragmede" createdAt="2025-04-08T19:20:05" color="">}}

{{<matomeQuote body="Tailscaleってカナダの会社じゃなかったっけ？" userName="9dev" createdAt="2025-04-08T22:06:36" color="">}}

{{<matomeQuote body="＞AFAICS（As Far As I Can See：私が見る限り）では、今のところTailscaleの製品にマジな競合はいないよね。<br>どういうこと？既存のレガシーVPNと競合してるじゃん。Tailscaleが4年も前からあるのに、大企業の顧客は誰も使ってない。CiscoとかPalo AltoのクソみたいなVPNで社内ネットワークに接続してるよ。最先端の企業ならCloudflare Warpを使うかもしれないけど。<br>分散型VPNの競合は少ないかもしれないけど、その市場はマジで小さいし、専用IPアドレスやクラウドインスタンスを買えない人向けだよね。<br>資金調達は悪い兆候だと思うな。CloudflareみたいCDNを食うためのサーバーが必要な、完全に新しい製品のためなら別だけど。" userName="kortilla" createdAt="2025-04-09T07:05:40" color="">}}

{{<matomeQuote body="心配ならNetbird試してみて。Tailscaleのオープンソース版だよ。安心できるよxD" userName="braginini" createdAt="2025-04-08T14:38:39" color="">}}

{{<matomeQuote body="いつも外から見てるだけだから、Tailscaleとかオープンソース版の類似サービスを使ったことないんだよね。Headscale[0]みたいな感じ？[0] https://github.com/juanfont/headscale" userName="arcanemachiner" createdAt="2025-04-08T17:22:07" color="">}}

{{<matomeQuote body="Headscaleはサーバーだけで、Netbirdは全部入りって感じかな。Tailscaleと似たようなことできるけど、ソフトウェアとか実装は全然違うみたい。" userName="acheong08" createdAt="2025-04-08T18:51:53" color="">}}

{{<matomeQuote body="でもTailscaleのクライアントもオープンソースじゃん。" userName="bjackman" createdAt="2025-04-08T21:49:15" color="">}}

{{<matomeQuote body="それってTailscaleも完全にオープンソースってことになるんじゃないの？" userName="Imustaskforhelp" createdAt="2025-04-09T03:01:38" color="">}}

{{<matomeQuote body="リンクありがとう！代替品を探してAI検索を延々とやる羽目になるところだった。" userName="650REDHAIR" createdAt="2025-04-08T16:27:38" color="#45d325">}}

{{<matomeQuote body="Tailscaleが無料プランでSSHを提供してて、有料のスタータープランだと提供してないのが気に食わなくて、ずっとこの分野をチェックしてるんだよね。Netbirdは試した中で一番良かったよ。" userName="drcongo" createdAt="2025-04-08T16:56:37" color="#ff5c5c">}}

{{<matomeQuote body="Tailscaleと比べて、何が良かったか詳しく教えてくれる？" userName="stavros" createdAt="2025-04-08T23:02:44" color="">}}

{{<matomeQuote body="えーと、まずTailscaleほど好きじゃないって言っておくね。でも、他のやつよりは全然良かったよ。UIのダッシュボードがすごく良くて、セットアップも簡単だった。ドキュメントはもう少し改善の余地ありかな。" userName="drcongo" createdAt="2025-04-09T08:30:30" color="#ff5733">}}

{{<matomeQuote body="これはほとんど創業者たちがお金を手にするためでしょ。これで1000万ドルくらい手にして、もう家賃の心配しなくて済むようになるんじゃない。" userName="ilrwbwrkhv" createdAt="2025-04-08T18:31:30" color="">}}

{{<matomeQuote body="Tailscaleの創業者たちはTailscaleを始める前から家賃の心配なんてしてなかったと思うけど。" userName="tptacek" createdAt="2025-04-08T18:33:04" color="">}}

{{<matomeQuote body="なんで？前にイグジットでもしたの？" userName="ilrwbwrkhv" createdAt="2025-04-08T20:38:03" color="">}}

{{<matomeQuote body="Tailscaleマジ最高。ルーティングと接続がマジで楽になるスイスアーミーナイフみたいなもんだと思ってる。<br>スマホからNVIDIA Jetsonにインターネット接続をストリームするプロジェクトで使ってて、ロボット系のプロジェクトがマジ簡単にアクセスできてデバッグも楽勝！<br>詳しくはこれ見て！→https://github.com/burningion/bicyclist-defense-jetson?tab=r..." userName="burningion" createdAt="2025-04-08T17:12:20" color="#785bff">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
