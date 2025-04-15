+++
date = '2025-04-08T00:00:00'
months = '2025/04'
draft = false
title = 'ブラジル政府主導の決済システム「Pix」がマジ最強！国民生活に革命を起こしまくってる件'
tags = ["ブラジル", "Fintech", "決済システム", "政府主導", "Pix"]
featureimage = 'thumbnails/color1.jpg'
+++

> ブラジル政府主導の決済システム「Pix」がマジ最強！国民生活に革命を起こしまくってる件

引用元：[https://news.ycombinator.com/item?id=43620279](https://news.ycombinator.com/item?id=43620279)

{{<matomeQuote body="ブラジルに20年住んでるけど、Pixはマジで革命！<br>数円の買い物にも使えるし、友達は家をPixで買ったってよ。<br>金額気にせず使えるし、マジ使いやすい。<br>速さも安定感もヤバい。システムダウンでPix決済できなかったこと一度もないし。<br>Wiseからユーロをブラジルの口座に送金する時も、Wiseのアニメーションが終わる前に銀行からプッシュ通知来るレベル。マジで魔法。<br>タクシーの運ちゃん、ホームレスまでPix使うし。<br>仮想通貨とかマジ無理。" userName="SwiftyBug" createdAt="2025-04-08T11:48:57" color="#45d325">}}

{{<matomeQuote body="＞Wiseの送金アニメーションが終わる前にプッシュ通知が来るのは魔法みたい”<br>メールの暗号化で同じようなことやったわ。ユーザーがちゃんと動いてるか確認できるようにアニメーション追加したんだよね（実際は一瞬で終わるんだけど）。<br>IoTシステムだと、デバイスによって全然違うんだよね。ミリ秒で処理できるのもあれば、GPRSのせいで20秒かかるのもあるし。<br>駐車券の発券機とかも、ボタン押してからチケット出るまで時間かかるじゃん？あれも技術の無駄遣いだよな。" userName="yetihehe" createdAt="2025-04-08T11:58:11" color="">}}

{{<matomeQuote body="駐車券の発券機が遅いのは、プリンターのウォームアップが必要だからかもね。<br>ディープスリープ状態からだと5秒くらいかかる場合もあるから、2秒ずつ区切ることでユーザー体験を向上させてるのかも。<br>ハードウェアが絡むと、どうしても色々複雑になるよね。" userName="seszett" createdAt="2025-04-08T12:17:08" color="">}}

{{<matomeQuote body="通信モジュールのウォームアップが原因かもね。<br>スマホはデータ接続を維持しようとするけど、IoTデバイスは省電力のために最低限の状態に戻ることが多いんだよ。<br>https://www.sharetechnote.com/html/Handbook_UMTS_RrcStateCha..." userName="pjc50" createdAt="2025-04-08T12:35:48" color="">}}

{{<matomeQuote body="＞仮想通貨とかマジ無理”<br>ブラジル以外でPix使ってみろって話。<br>Mercosurですら普及してないのに、他の国で普及するわけないじゃん...<br>それに、政府をどこまで信用できるかって話もあるし。<br>Pixみたいなシステムが世界中で採用される可能性は低いと思う。<br>各国が独自のPixみたいなシステムを作るのが現実的かもね。<br>仮想通貨はやっぱり必要だよ。" userName="WinstonSmith84" createdAt="2025-04-08T17:50:11" color="#785bff">}}

{{<matomeQuote body="今や80カ国でリアルタイム決済システムがあるんだって[1]。<br>Bank for International Settlementsもクロスボーダーの相互運用に取り組んでる[2]。<br>仮想通貨はなくなることはないだろうし、国境を越えた価値の移転って意味では、金みたいな感じで使われ続けると思う。<br>あとは、リモートで本人確認できる人向けに、単一または複数の通貨のデジタルウォレットを提供するのも面白いかもね(nsave [3]みたいな)。<br>[1] https://www.volt.io/real-time-payments-world-map/<br>[2] https://www.bis.org/about/bisih/topics/fmis/nexus.htm<br>[3] https://www.nsave.com/ | https://www.ycombinator.com/companies/nsave" userName="toomuchtodo" createdAt="2025-04-08T22:04:17" color="#785bff">}}

{{<matomeQuote body="グローバルなリアルタイム決済にBISは必須じゃないよ。<br>Wiseみたいな会社が各国に口座を持ってれば、現地の決済がリアルタイムなら、DBを更新するだけでリアルタイムのグローバル決済ができるじゃん。" userName="danielmarkbruce" createdAt="2025-04-08T23:02:42" color="">}}

{{<matomeQuote body="Wise（旧transferwise）のリブランディングはマジで意味不明。<br>何年も経つのに、社外の人間で「Wise」って呼んでるやつ見たことないわ。<br>必ず「（旧transferwise）」って付け足してる。" userName="FearNotDaniel" createdAt="2025-04-09T01:36:46" color="">}}

{{<matomeQuote body="Western Unionとかもそうだけど、みんな同じような仕組みでやってるよ。<br>表沙汰にはなってないけどね。<br>為替手数料は毎回払ってないんだよ。<br>まとめてリバランスすることで、最適なタイミングとレートで送金してるんだ。<br>あとは、為替ヘッジしたり、スプレッドを大きくしたりとか。" userName="irjustin" createdAt="2025-04-08T23:47:34" color="">}}

{{<matomeQuote body="質問なんだけど、「まとめてリバランス」ってどうやってるの？<br>ドルを投入したらユーロが出てくる魔法の機械があるわけじゃないよね？<br>銀行とか政府が両方の通貨を持ってて、交換してるんだと思ってたんだけど。<br>でも、それだとキリがないよね。<br>最終的には、CADで何かを買って、USDで売るしかないのかな。<br>魔法の紙幣シュレッダー/印刷機があるなら教えてほしいわ。" userName="dguest" createdAt="2025-04-09T07:35:36" color="#ff5733">}}

{{<matomeQuote body="マジで意味不明なロジックだなー。例えばGPUの話で「GPUじゃデータベース動かせないから成功するわけない」とか言うやついるみたいなもんじゃん？<br>＞政府にお金を預けるの信用できる？<br>暗号資産の会社は信用できる？Mt．GoxとかFTXとかBybitとか…。暗号資産の会社も政府のルール守らないといけないんだぜ？ロシア人は使えなくなったり、中国は厳しい規制があったり。ブラジルでも、レアルでしか取引できないし。<br>Pixはグローバルじゃないけど、ブラジル以外の政府が止められないのが良い。<br>MasterCardとかVisaは世界中で使えるけど、規制したり止めたりできる国は少ないし、データも追跡とかに使われちゃう。<br>Pixは無料だから、MasterCardとかVisaに手数料払わなくて済むし(3%くらい取られるしね)。GoogleとかAppleに「うちのデバイスでしか払わせない」とか言われる心配もない。<br>＞ブラジル国外でPixを使ってみろってか。<br>じゃあ、その辺の屋台でcryptoでアイス買ってみろって話。" userName="ilirium" createdAt="2025-04-09T05:28:21" color="">}}

{{<matomeQuote body="＞政府にお金を預けるの信用できるかって？<br>Pix使っても、お金は政府に預けられるわけじゃないんだよ。普通の銀行口座から出し入れするだけ。政府(中央銀行)は、銀行間の送金インフラを提供してるだけ。<br>グローバルじゃないってのは確かにそうだけど。他の人も言ってるように、各国の即時決済システムを繋げようって動きはあるみたい。" userName="leonidasv" createdAt="2025-04-09T02:34:08" color="#ff5733">}}

{{<matomeQuote body="それって本質と違うくね？例えば政府が、お前が支持してる政党気に入らないとか、ギャンブルとかPG-13のコンテンツ見てるとか道徳的に気に入らないことしてると判断したら、お前の支払いを止められるってことじゃん？それが唯一の支払い方法だったら最悪。<br>許可制のシステムなんだよ。<br>Cryptoは根本的に違うはず。良いCryptoは許可いらない。持ってれば、誰に何言われようと使える。" userName="idiotsecant" createdAt="2025-04-09T04:02:32" color="#785bff">}}

{{<matomeQuote body="ブラジル国外でPixを使ってみろって？<br>超限定された場所でしか使えないcryptoを、何かにつけて使ってみろってか。ほとんど誤差レベルじゃん。<br>Cryptoはまだ価値がある…のか？<br>現金以下じゃね？<br>現金を海外から持って帰って、自分の銀行口座に入れられるし。色んな外貨もすぐ手に入るし、FedEx使えばほぼどんな通貨も翌日には届くし。<br>海外でも現金なら両替できるし。<br>Cryptoはごく一部の、超限定された場所でしか使えない。もし現金の代わりにcryptoに頼ってたら、海外で何度も詰んでたわ。" userName="reaperducer" createdAt="2025-04-08T19:02:20" color="#ff33a1">}}

{{<matomeQuote body="＞海外から現金を銀行口座に入れられるって？<br>大手の銀行ならそうかもだけど、そんなケースないから！アルゼンチンペソとかトルコリラとかブルガリアレフとか、急に銀行口座に入金する必要ないし！<br>＞Cryptoを何かにつけて使ってみろって？<br>旅行あんまりしないのかもだけど、俺はデジタルノマドだから結構旅行するけど、少額決済は現地の現金とかカードで済ませるけど、大金はcrypto使う。数千ドルの取引とか、手数料高いし時間かかるからcryptoしか選択肢がない。" userName="WinstonSmith84" createdAt="2025-04-08T20:41:18" color="">}}

{{<matomeQuote body="マジで言ってんの？$25,000の海外送金したけど、手数料$75だったぞ。1営業日で終わったし。取引所から引き出す方が面倒だよ。<br>家買った時も$15だったし。どこでそんな高い手数料取られてんの？" userName="Spivak" createdAt="2025-04-09T00:00:20" color="#38d3d3">}}

{{<matomeQuote body="＞Cryptocurrenciesに勝ち目はないってか。<br>国際的に使えるの？USDも送れるの？それともレアルだけ？<br>もし同じ問題を解決できるなら、なんでブラジルはself-custodial USD stablecoinsを禁止しようとしてるの？mBRLとか、レアルにペッグされたstablecoinの話も出てるし。" userName="mhluongo" createdAt="2025-04-08T11:54:40" color="">}}

{{<matomeQuote body="ほとんどの非西欧諸国は独自のe-cashシステム持ってるよ。<br>ケニアのm-pesaから、フィリピンのGcash、タイのPromptPay、中国のAlipay、シンガポールのSGQR、オマーンのMPayまで…。<br>これらのシステムはほぼ全部中央集権型で、ID必須、プライバシーゼロ、政府公認、国境を越えられないってのがパターン。" userName="londons_explore" createdAt="2025-04-08T12:01:25" color="#ff5733">}}

{{<matomeQuote body="Vippsみたいな西側のシステムも結構あるし。このリスト見て：https：//truelayer．com/reports/alternative-payments/european-…<br>＞ID必須、プライバシーゼロ、政府公認<br>残念ながら、そうじゃないシステムはマネーロンダリングに使われちゃう。仕方ない。" userName="pjc50" createdAt="2025-04-08T12:10:15" color="#ff33a1">}}

{{<matomeQuote body="＞＞ID必須、プライバシーゼロ、政府公認<br>＞残念ながら、そうじゃないシステムはマネーロンダリングに使われちゃう。仕方ない。<br>それらの要件のせいで、一つの国以上で普及するのは難しい。観光客は国ごとに決済アカウント作りたくないし、銀行も外国人観光客のためにKYCとかやりたくない。<br>VisaとかMCがグローバルに使えるから、そっちの優位性は続くと思う。Cryptoがグローバルな決済手段になる可能性もあるけどね。" userName="earnesti" createdAt="2025-04-08T12:22:53" color="#785bff">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="VisaとかMCがグローバルに展開してるから、そっちの勢いが続くと思うなー。中国、インド、ブラジル、ロシア、日本、韓国とかも独自の決済ネットワークを広げようとしてるけどね。まだバラバラだけど、タイに行った中国人観光客がUnionPayとかUPIでVisa/Mastercardなしで決済できたり、ベトナムに行ったロシア人観光客がMirを使えたり、アルゼンチンに行ったブラジル人がPixを使えたり、シンガポールに行った日本人がJCBを使えたりするし。ECBも最近検討し始めたみたい（トランプ政権との交渉のためかもだけど）。国際決済の競争を阻んでるのはFATFで、Visa/Mastercardに有利な規制があるんだよね。<br>暗号通貨がグローバルな決済方法になるかもって意見もあるけど、どうかなー。アメリカとEU以外のほとんどの国は暗号通貨を厳しく規制してるし、国が管理したり規制したりする暗号通貨しか認めないなら、暗号通貨の意味ないじゃん。" userName="alephnerd" createdAt="2025-04-08T12:27:13" color="">}}

{{<matomeQuote body="＞ベトナムでロシア人観光客がMirを使える<br>実際に使える場所を見つけられたらの話だけどね！現地のNapas247のQRコードほど普及してないよ。" userName="notpushkin" createdAt="2025-04-08T12:51:18" color="">}}

{{<matomeQuote body="そうだよね！Napas247はベトナムと韓国が共同開発したんだよ！（編集：ベトナムだけだった！Shinhanの開発支援と勘違いしてた！）要は、アメリカとEUの外ではVisa/MC以外の決済システムへの移行が着実に進んでて、今後10年以内にこれらのシステムが相互運用をサポートし始めても驚かないよね。" userName="alephnerd" createdAt="2025-04-08T13:03:55" color="">}}

{{<matomeQuote body="＞ホームレスの人に、小銭の代わりにPixでお願いされたことさえあるよ。<br>WeChat Payみたいだね。中国じゃ物乞いがQRコードしか持ち歩かないってのはもう何年も前からだよ。<br>＞暗号通貨に勝ち目はない。<br>暗号通貨は別の問題を解決するか、解決する可能性があるんだよ。予測可能で偏りのないお金の発行とか、決済プラットフォームへのオン/オフランプとか。" userName="olalonde" createdAt="2025-04-08T15:05:00" color="#ff5c5c">}}

{{<matomeQuote body="ロンドンのホームレスがこれやってくれたら嬉しいな。ちょっとした金額なら気軽に渡せるのに。現金を持ち歩いてた頃は、何も考えずにコインを投げ入れてたけど、キャッシュレス社会になった今、目の前で苦しんでる人たちに何もできないのが辛い。" userName="tetris11" createdAt="2025-04-08T15:49:40" color="">}}

{{<matomeQuote body="世界はPixを導入すべきだよ。PixはSWIFTの代わりになるシステムだとマジで思ってる。仲介役と、両国間の為替レートを決める仮想通貨があれば、ドルに依存しない、めっちゃ速い取引ができるようになるんだ。" userName="Xunjin" createdAt="2025-04-08T14:31:02" color="#785bff">}}

{{<matomeQuote body="ヨーロッパにはSEPA決済があるよ。めっちゃ速くて信頼できるし、Swiftとは別だよ。" userName="skeletal88" createdAt="2025-04-08T16:41:22" color="">}}

{{<matomeQuote body="自分の住んでる場所でそんなシステムが普及するのは嫌だな。政府が悪用するに決まってる。カナダでは抗議者の銀行口座が凍結されたり、アメリカの当局者が抗議者をノーフライリストに入れたりしてるし。" userName="leereeves" createdAt="2025-04-08T15:02:52" color="">}}

{{<matomeQuote body="政府はもう君の銀行口座に全部アクセスできるんだよ！昔からそうだし、KYCでプライバシーは終わったんだ。便利な決済技術を邪魔するのは、俺たちを苦しめるだけだ。不安なら、金のコインでも買っとけ。" userName="mixmastamyk" createdAt="2025-04-08T16:36:50" color="">}}

{{<matomeQuote body="プライバシーとセキュリティを諦めるんじゃなくて、KYCをなくすことに集中すべきだ。" userName="welshwelsh" createdAt="2025-04-08T16:48:07" color="">}}

{{<matomeQuote body="技術的な詳細について教えてよ！スマホアプリなの？QRコードかNFCで動くの？Pixのカードってあるのかな？" userName="earnesti" createdAt="2025-04-08T12:17:00" color="">}}

{{<matomeQuote body="ブラジルの納税者番号とか永住権なしで、旅行者としてPixを使う方法ってないのかな？プリペイドオプションがありそうな気がするけど、見つからなかった。" userName="weinzierl" createdAt="2025-04-08T12:31:16" color="#38d3d3">}}

{{<matomeQuote body="興味深いけど、政府がいつ、どこで、いくらで何を買ったのか全部知ってるってのも気になるなー。悪い政府なら、ありもしない取引を作ってハメることもできるし。" userName="oulipo" createdAt="2025-04-08T11:55:56" color="#ff5c5c">}}

{{<matomeQuote body="Visaに全部筒抜けなのよりマシじゃない？アメリカがどんどん落ち目になってるのを見てると、仮想の地元のファシスト国家と戦うリスクの方がマシだと思うけど。" userName="forty" createdAt="2025-04-08T12:04:07" color="">}}

{{<matomeQuote body="＞政府がいつ、どこで、いくらで何を買ったのか全部知ってるってのも気になるって？<br>まだ一応機能してる民主主義国家の国民としては、Apple、Google、Visa、Mastercardがその情報を持ってるよりは、そっちの方が全然マシ。" userName="simgt" createdAt="2025-04-08T12:05:52" color="#ff5733">}}

{{<matomeQuote body="＞Cryptocurrenciesなんて勝ち目ないね。<br>追跡を防いで匿名性を提供するから価値があるんじゃない？" userName="DeathArrow" createdAt="2025-04-08T12:17:43" color="">}}

{{<matomeQuote body="Wikipediaにはあんまり情報がないな。<br>いくつか疑問がある。<br>安全なの？現金を持ち歩かないのは安全だけど、ナイフで脅されて銀行口座空にされることってある？<br>詐欺はある？盗まれたお金は取り戻せる？" userName="m463" createdAt="2025-04-08T21:53:19" color="#785bff">}}

{{<matomeQuote body="＞Cryptocurrenciesなんて勝ち目ないね。<br>Pixは海外への少額決済には使えない。" userName="m00dy" createdAt="2025-04-08T11:58:40" color="">}}

{{<matomeQuote body="＞Pixは海外への少額決済には使えない。<br>そんなことないと思うよ。スペインのBizumはスペイン国内だけだったけど、今はスペイン、イタリア、ポルトガル、アンドラで使えるよ。BizumはEuropean Mobile Payment Systems Associationのメンバーで、将来的には全部のメンバー間で送金できるようになるかもね。まあ夢物語かもしれないけど。" userName="diggan" createdAt="2025-04-08T12:03:17" color="#ff5733">}}

{{<matomeQuote body="中国のAlipayを使った経験からすると、政府が運営する全国的な決済サービスってアリかもって思うんだよね。Alipayは商売っ気むき出しで広告とか罠が多いし。毎回支払いするたびに、Ant Financialのローンを組めってポップアップが出てくるしマジ勘弁って感じ。400ドルのプロジェクターとか4ドルのヘアカットにローンとかいらねーし。ブラジルの人たちがそんな目に遭わなくて済むなら良かったじゃん。政府がちゃんと監視してて、つまんなくても信頼できる方がいいよね。" userName="nirui" createdAt="2025-04-08T13:55:41" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="＞自分もそう思う。多くの民間サービスを使ってきたけど、政府が運営した方がいいものがたくさんあると思うよ。<br>例えば天気アプリ。民間のは位置情報を追跡して売るためのものでしょ。政府がAPIとアプリを作ってくれれば、民間を避けられるのに。" userName="palmotea" createdAt="2025-04-08T14:06:44" color="#ff5733">}}

{{<matomeQuote body="マジでそれな。うちの州(BR)には天気予報サービス¹があるんだけど、これがすごいんだわ。普通の人が雨が降るかどうかを確認するだけじゃなくて、農業とか農家にとってはマジで重要なの。レーダーとか霜の警報とか、農家向けに特化した情報もあるし。電力会社への警報にも使われてるしね。天気予報の精度も他のサービスよりずっといいし。CPTEC/INMETっていう国のサービスもあるけど、資金不足っぽいんだよね。" userName="vitorgrs" createdAt="2025-04-09T01:44:44" color="#38d3d3">}}

{{<matomeQuote body="ニュージーランドに住んでるんだけど、ノルウェー政府の天気サイトwww.yr.noの方が使いやすいし広告もないから好き。地元の天気予報と同じくらい正確だし。" userName="boznz" createdAt="2025-04-09T00:03:05" color="#45d325">}}

{{<matomeQuote body="ハンバーガーメニューの下から言語を英語に変えるだけで使えるようになった。クライストチャーチに便利そう。サンキュー。" userName="robocat" createdAt="2025-04-09T03:19:12" color="">}}

{{<matomeQuote body="オランダでも同じようなことが起きてるんだよね。気象研究所(KNMI)が天気アプリをリリースしたんだけど、これがコマーシャルアプリと機能的に同じか、それ以上に優れてるんだ。コマーシャルアプリはユーザーの同意を得て追跡して広告を表示しようとするけどね。コマーシャル側はKNMIが提供する公共データを使ってるのに、KNMIを訴えたんだ。でも負けた。このニュースのおかげで、みんなKNMIのアプリに移動してる。" userName="lnauta" createdAt="2025-04-09T08:00:38" color="#38d3d3">}}

{{<matomeQuote body="ドイツでは、国立の気象サービスがアプリを公開したんだけど、民間の会社との不当競争だって裁判所に止められたらしい。" userName="cubefox" createdAt="2025-04-08T14:11:28" color="">}}

{{<matomeQuote body="オランダでは、天気会社が国の天気予報サービスを訴えたんだ。新しいアプリが自分たちの利益と競合するって見なされたから。でも裁判所は天気会社の訴えを退けた。" userName="praseodym" createdAt="2025-04-08T15:33:16" color="#38d3d3">}}

{{<matomeQuote body="＞民間の会社との不当競争だって裁判所に止められた<br>最近これ知ったわ。マジで今の時代のおかしなところの一つだよね。VCユニコーンとか巨大企業が市場シェアを奪うためにダンピングしてるのに、公共機関は民間セクターを打ち負かさないように気を使わないといけないんだぜ。天気予報みたいな公共財を提供してるのに。マジで狂ってるわ。" userName="pphysch" createdAt="2025-04-08T15:37:17" color="#ff33a1">}}

{{<matomeQuote body="そのアプリはまだ使えるけど、全部の機能を使うには数ユーロ払わないといけない。" userName="red_trumpet" createdAt="2025-04-09T07:21:56" color="">}}

{{<matomeQuote body="アメリカだとNOAAの予測マップとweather.govで自分の地域のzipをブックマークしとけば十分じゃん。アプリいらなくね？" userName="Loughla" createdAt="2025-04-08T23:57:20" color="">}}

{{<matomeQuote body="ねえ、今の政権がNOAAに対してどんな計画立ててるか調べない方がいいよ。" userName="Lord-Jobo" createdAt="2025-04-11T18:48:28" color="">}}

{{<matomeQuote body="スイスは天気に関してこれがあるよ。政府のデータで、1週間先までの予測が見れるんだ。もちろん広告なしで、PM2．5とか花粉、山での雪崩のリスクとかの情報もいっぱいある。" userName="jajko" createdAt="2025-04-09T09:28:27" color="#45d325">}}

{{<matomeQuote body="それこそがアメリカのNOAAが攻撃されてる理由だよ。保守派の人たちは、NOAAを民営化すれば儲かるって考えてるんだ。" userName="chneu" createdAt="2025-04-08T14:10:39" color="">}}

{{<matomeQuote body="NOAAが攻撃されてるのは、政権の誰かが新しい天気アプリをマジで作りたがってるからだってマジ？" userName="somedude895" createdAt="2025-04-08T14:23:10" color="">}}

{{<matomeQuote body="天気アプリじゃ大して儲からないよ。メインのビジネスは、天気と気候のデータを企業向けに販売すること。農業、保険、物流、小売、サプライチェーン、広告、医療とかね。天気アプリを主な事業にしてる会社は小さいし、競争も激しいんだ。" userName="ilirium" createdAt="2025-04-10T07:05:54" color="#785bff">}}

{{<matomeQuote body="トランプの最初の任期からの話だけど、マジでそうだよ。<br><br>＞https：//www．cnn．com/2017/10/14/politics/noaa-nominee-accuwea…<br>＞“当時、バリー・マイヤーズはThe Palm Beach Postに、気象庁が「他の人々の生命と財産を守るという中核的な使命」に戻り、「毎日、『暖かく晴れ』の予報を出すために毎年何億ドルも費やす」のをやめることを支持すると語った。”<br>同じ記事から：<br>＞“彼は2005年5月にABCニュースに「私たちは毎日、他の企業と競争するために懸命に働いており、政府とも競争しなければならない」と語った。”<br>ここにもっと情報があるよ：<br><br>https：//en．wikipedia．org/wiki/Barry_Lee_Myers" userName="djcannabiz" createdAt="2025-04-08T15:56:42" color="#38d3d3">}}

{{<matomeQuote body="＞why NOAA in the US is under attack<br>知ってる限りだと、AccuWeatherが一番の受益者だよ。信頼できる情報源は簡単に見つけられる。<br>原因は、NOAAが全ての気象データ、計算されたモデル（グローバルな範囲）、気象観測所のデータ（グローバルな範囲）、気象レーダーを無料で公開してるから（アメリカだけ、カナダもかも、覚えてないけど）。だから、多くの気象会社がそのデータを使ってビジネスをして、AccuWeatherと直接競合してるんだ。彼らはそれを嫌ってる。<br>一方、多くの国でグローバルモデルを計算する国の気象機関は、そのようなデータを無料で提供してない。だから、気象と気候の分野で働くスタートアップや小規模企業は、NOAAのデータを使ってAccuWeatherと直接競合するか、データアクセスにお金を払わない。" userName="ilirium" createdAt="2025-04-10T07:01:24" color="#785bff">}}

{{<matomeQuote body="NOAAが攻撃されてる理由は、税金カットの延長に備えて赤字を減らしたいってのが大きいんじゃないかな。それに、NOAAとか他の科学機関は、medicareとかssほど政治的に強くないし。" userName="whimsicalism" createdAt="2025-04-08T15:11:34" color="">}}

{{<matomeQuote body="NOAAが弱いのは、田舎の町が竜巻で壊滅的な被害を受けても、何の警告もなかった時だけだよ。" userName="Loughla" createdAt="2025-04-08T23:58:28" color="">}}

{{<matomeQuote body="例えば天気アプリね。民間のやつは位置情報を追跡して売るための道具でしょ。おまけに政府のデータ使ってるし。ドイツのやり方はマジで頭悪いよ。DWDっていう税金で運営されてる優秀な天気アプリがあったんだ。主な目的は異常気象の警報で、広告なしで結構正確な天気予報もついてた。そしたら、民間企業がDWDのアプリが天気情報を提供するのが不当競争だって訴えたんだ。で、裁判所がそれを認めちゃって、税金で運営されてたDWDのアプリが、今まで無料だった機能を有料化するハメになったんだって。" userName="moooo99" createdAt="2025-04-09T12:56:27" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="面白いけど、ドイツに国営の気象機関がないなんて知らなかったから、今まで全ての国にあるもんだと思ってたよ。" userName="derelicta" createdAt="2025-04-08T14:09:53" color="">}}

{{<matomeQuote body="それ違うよ。https://de.m.wikipedia.org/wiki/Deutscher_Wetterdienstを見て。" userName="cubefox" createdAt="2025-04-08T14:13:51" color="">}}

{{<matomeQuote body="マジか！知らなかった！今度から変なアプリ使うのやめてDWD使うわ。サンキュー！" userName="derelicta" createdAt="2025-04-08T15:11:10" color="">}}

{{<matomeQuote body="DWDは天気アプリを提供できないと思うよ。民間のアプリと競合しちゃうから。天気に関する警報を出すアプリは提供してるけどね。" userName="cubefox" createdAt="2025-04-08T16:42:54" color="">}}

{{<matomeQuote body="DWDは天気アプリを提供できるけど、無料じゃダメなんだ。だから、ちょびっとだけ料金を払う方式にしてるんだよ。" userName="loglog" createdAt="2025-04-08T22:17:32" color="">}}

{{<matomeQuote body="Windy.comだとECMWFのデータが見れるよ。ECMWFの方がモデルが強いんだ。" userName="jessekv" createdAt="2025-04-08T20:29:13" color="">}}

{{<matomeQuote body="アメリカだと、天気アプリは実質的に政府が運営してるようなもんだよ。<br>iPhoneが政府のデータを着飾って見やすくしてるだけ。誰も位置情報とか売ってないし。もし必要なら、直接データを入手することもできるし。" userName="nostromo" createdAt="2025-04-09T01:39:26" color="#ff5c5c">}}

{{<matomeQuote body="そんなの、アメリカだけじゃない？ここフランスじゃ、政府運営のサービスの方が民間のサービスより優れてるってのは常識だよ。" userName="xzjis" createdAt="2025-04-08T23:47:49" color="">}}

{{<matomeQuote body="G20の中で一番政府がコロコロ変わってる国の人だ(笑)<br>政府大好きみたいだけど、何が正しい政府なのか、どうすれば維持できるのか分かってないでしょ。" userName="hammock" createdAt="2025-04-09T00:53:49" color="">}}

{{<matomeQuote body="一般的には資本主義支持だけど、政府を12回も交代させるのは良いことじゃない？自分たちの望むようにリファクタリングしてるんだし。百年前のインターネットも銃も想定してない文書に、コックリさんみたいなことさせるよりマシじゃん。" userName="xeromal" createdAt="2025-04-09T02:27:27" color="#ff5c5c">}}

{{<matomeQuote body="もしアメリカにそういう仕組みがあったら、BidenとかTrumpだって何度も交代させられてるんじゃない？フランスでは電車はちゃんと動いてたみたいだし。それって、もっと反応が良くて安定したシステムってことじゃない？" userName="hwillis" createdAt="2025-04-09T13:29:50" color="">}}

{{<matomeQuote body="それってめっちゃ大雑把な意見じゃね？ソースは？" userName="eddythompson80" createdAt="2025-04-09T00:11:08" color="">}}

{{<matomeQuote body="インドのUPIっていう似たシステムだと、政府がバックアップしてるシステムがアプリ、銀行、決済サービスシステムの中央パイプ役になるんだよね。だから、ユーザーは簡単にアプリとか銀行を切り替えられる。これによって、独占を防いで、競争とイノベーションを促進してるんだ。" userName="blackoil" createdAt="2025-04-09T05:10:38" color="#ff33a1">}}

{{<matomeQuote body="決済サービスは絶対に公共の選択肢を持つべきだよね。メールとかmychartみたいな基本的なe-serviceもそう。問題は、うちの政府が無能で、能力で人を雇うのが難しくて、公務員組合があること（これは、国民全体の民主的な意思に逆らって交渉する力を与えてるようなもん）。<br>連邦政府とインターネットプロジェクトで仕事したことあるけど、今の連邦政府は、組織構造的にこういうことマジ無理っぽい。<br>決済のコントロールが悪用されないようにすることも重要だと思う。WikiLeaksへの寄付が官民連携で事実上ブロックされたの覚えてる。それがもし政府の決定だけでできるようになったら、もっと簡単になるだろうね。" userName="whimsicalism" createdAt="2025-04-08T15:08:22" color="">}}

{{<matomeQuote body="アメリカのアプリって、なんで中国のアプリ（Temuとか）みたいに露骨に商業化とかゲーム化されてないんだろ？アメリカの文化が許容しないだけ？そうすればもっと儲かるはずなのに、ある意味すごく資本主義的じゃん？" userName="uselesswords" createdAt="2025-04-08T22:35:29" color="">}}

{{<matomeQuote body="政府が気に入らないことを言うと、罰として決済サービスを使えなくされるかもしれないんだぜ。そうなったら嫌じゃん。<br>憲法でそういうことが起こらないように義務付けるか保証してほしいわ。それがないと、これは首吊り縄だよ。便利な機能がたくさんある首吊り縄だけど、やっぱり首吊り縄だ。" userName="timewizard" createdAt="2025-04-08T17:42:20" color="#45d325">}}

{{<matomeQuote body="＞政府が気に入らないことを言うと、罰として決済サービスを使えなくされるかもしれないんだぜ。<br>”民間企業が気に入らないことをした時に同じことが起こるより、どれだけマシなの？<br>政府がテロリストだって言ったら、銀行口座にアクセスできなくなるのとどれだけ違うの？" userName="onlyrealcuzzo" createdAt="2025-04-08T18:23:56" color="">}}

{{<matomeQuote body="＞民間企業が気に入らないことをした時に同じことが起こる？<br>全然違うじゃん。だって別の会社に乗り換えられるんだから。政府を乗り換えるって選択肢、ある？ないよね。<br>＞政府がテロリストだって言ったら、銀行口座にアクセスできなくなる。<br>アメリカでは、それは外国人にしか当てはまらない。アメリカ国民なら、資産はちゃんと保護されてるよ。訴えられるとか、よっぽどのことがない限りね。現金持ってたら、誰にも止められないじゃん。<br>政治的な相対主義を持ち込んでくれてありがとう。でも、特に何も進展してない気がする。" userName="timewizard" createdAt="2025-04-08T22:01:21" color="#ff5c5c">}}

{{<matomeQuote body="VisaとかMCが決めるのとは違うの？少なくとも政府には投票できるし…。" userName="charlie90" createdAt="2025-04-08T23:58:28" color="">}}

{{<matomeQuote body="＞PixはBrazilの時代遅れの銀行セクターを盛り上げたけど、中央銀行に心配になるくらいの権力を与えちゃってるんだよね。<br>俺はUS企業による独占より、政府運営の決済システムの方が全然良いと思うな。" userName="bestouff" createdAt="2025-04-08T11:47:06" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
