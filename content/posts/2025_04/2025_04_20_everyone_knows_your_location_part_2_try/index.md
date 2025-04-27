+++
date = '2025-04-20T00:00:00'
months = '2025/04'
draft = false
title = '【衝撃】あなたの位置情報、マジで筒抜け！？ 試して結果をシェアしようぜ！'
tags = ["位置情報", "プライバシー", "セキュリティ", "データ収集", "Android"]
featureimage = 'thumbnails/green3.jpg'
+++

> 【衝撃】あなたの位置情報、マジで筒抜け！？ 試して結果をシェアしようぜ！

引用元：[https://news.ycombinator.com/item?id=43716704](https://news.ycombinator.com/item?id=43716704)

{{<matomeQuote body="ちょいズレてるかもだけど、位置情報つながりで。数年前、近くの端末が優先するWi-FiのSSIDをキャプチャするデモやってて、https://wigle.net/で場所特定したら、みんながどこ行ったかバレバレでマジヤバかった。" userName="ebfe1" createdAt="2025-04-20T01:16:52" color="">}}

{{<matomeQuote body="関連してておもしろい論文に「Surveilling the Masses with Wi-Fi-Based Positioning System [1]」ってのがあるよ。スマホがWi-Fiスポットの位置情報を公開データベースに報告するのを利用して、自然災害からウクライナ侵攻まで、大規模な人々の移動を追跡してるんだって。<br>[1] https://arxiv.org/pdf/2405.14975" userName="sweetjuly" createdAt="2025-04-21T00:11:38" color="#ff33a1">}}

{{<matomeQuote body="ライブでやったら超盛り上がりそうなデモだね！SNSで面白いSSID公開してる人いるけど…マジでやめとけ。" userName="thenthenthen" createdAt="2025-04-20T16:22:21" color="">}}

{{<matomeQuote body="このマップ、どこに“テクノロジー人間”が多いか一目瞭然だね。" userName="az09mugen" createdAt="2025-04-20T08:50:54" color="">}}

{{<matomeQuote body="Wi-Fiネットワークを記録してる人がどこにいるかってことだよ。wigleはボランティアによって最新情報に更新されてるんだ。" userName="yapyap" createdAt="2025-04-20T11:52:35" color="">}}

{{<matomeQuote body="うちの周りはWi-FiのSSIDだらけなのに、完全に圏外だわ。" userName="xattt" createdAt="2025-04-20T12:24:25" color="">}}

{{<matomeQuote body="似たようなの持ってるよ。https://appgoblin.info でスマホアプリに仕込まれたトラッカーが見れるのと、自分のスマホでトラッカーを確認できるAndroidアプリ。OPみたいなのをエミュレータで自動化してサーバーで動かしたいんだけど、マジ難しい。誰かアドバイスください！ rooted emulatorとアプリの相性が悪すぎるのが一番の問題。mitmとwaydroidのフローはここにあるよ: https://github.com/ddxv/mobile-network-traffic" userName="ddxv" createdAt="2025-04-20T02:28:05" color="#ff5c5c">}}

{{<matomeQuote body="よく話題になるけど、これは本当にすごいデモだね。AndroidならXPL-EX (以前のXprivacyLua)みたいなツールで、そういう呼び出しやライブラリを強力にブロックできるし、もっと簡単なApp Manager (https://muntashirakon.github.io/AppManager/)みたいなのもあるよ。" userName="3abiton" createdAt="2025-04-20T07:27:15" color="#45d325">}}

{{<matomeQuote body="AppManagerでどうやって犯人を特定してブロックするのか、もう少し詳しく教えてもらえますか？" userName="schrectacular" createdAt="2025-04-20T13:29:44" color="">}}

{{<matomeQuote body="そのアプリには色んな機能があって、特に他のアプリのメソッドを逆コンパイルして分析して、無効化できる機能があるよ。でもクラッシュしやすいから、XPL-EXの方が安全。" userName="3abiton" createdAt="2025-04-21T07:34:10" color="">}}

{{<matomeQuote body="それ系のブロックってroot化してないと無理だよね？" userName="williamscales" createdAt="2025-04-20T19:41:16" color="">}}

{{<matomeQuote body="DNSサーバー立てて、AndroidにカスタムDNS設定すればいけるんじゃない？このケースでうまくいくかはわかんないけど。" userName="prettyStandard" createdAt="2025-04-20T20:44:49" color="">}}

{{<matomeQuote body="そりゃそうだね。Googleがroot化したらAndroidの機能を制限するってのはマジで意味不明。マジありえない。" userName="3abiton" createdAt="2025-04-21T07:31:48" color="">}}

{{<matomeQuote body="みんな薄々気づいてるけど、企業がどこまで俺らのこと知ってるか改めて知るとマジでビビるよね。しかも、データを売るのが許されてて、誰のデータでも簡単に買えるってのがヤバい。[1]参照" userName="0x008" createdAt="2025-04-20T05:59:24" color="#ff5c5c">}}

{{<matomeQuote body="＞みんな薄々気づいてるけど、企業がどこまで俺らのこと知ってるか改めて知るとマジでビビるよね。<br>マジそれな。Spotify使ってる人は自分のSpotifyデータをダウンロードして見てみてほしい。[1]参照 マジでおもしろいから。ニュースでデータ収集の話を聞きすぎて感覚麻痺してたけど、自分の音楽体験に適用されるとマジで目が覚める。" userName="yapyap" createdAt="2025-04-20T12:10:12" color="#38d3d3">}}

{{<matomeQuote body="もうちょい詳しく教えてくんない？データそのものじゃなくて、データの種類とかさ。Spotifyは使ってないけど、そのビジネスモデル全体には興味津々。" userName="A4ET8a8uTh0_v2" createdAt="2025-04-20T13:02:10" color="#ff33a1">}}

{{<matomeQuote body="サンクス！やってみる。FitbitのデータはGoogle Takeoutでダウンロードしてる。アプリがマジクソだから。他にデータダンプできるのって何があるんだろ？" userName="morkalork" createdAt="2025-04-20T14:12:20" color="">}}

{{<matomeQuote body="CCCですげー講演があったんだよね（2つ）。ドイツの政治家を追跡した人の話で、公開されてるデータからヤバい関係を暴いてた。思い出せないけど。ドイツ語だったかな？" userName="thenthenthen" createdAt="2025-04-20T16:26:45" color="">}}

{{<matomeQuote body="監視資本主義の対策は政治家をターゲットにするしかない。アメリカで一番強いプライバシー法はビデオレンタルに関するもので、ボーク判事のレンタル記録が暴露されたのがきっかけで、議員たちが自分のプライバシーを守るために作ったんだよね。これは今のストリーミングサービスにも適用される。" userName="kevin_thibedeau" createdAt="2025-04-20T18:01:22" color="#45d325">}}

{{<matomeQuote body="実はこれってオプトアウトできるんだよね。俺はもう5年くらい携帯持ってないし、リアルでは現金しか使ってない。" userName="lrvick" createdAt="2025-04-20T08:47:43" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="これって実はオプトアウトできるんだよね。こういうのを違法にする政治家に投票しようぜ。" userName="stavros" createdAt="2025-04-20T08:57:34" color="">}}

{{<matomeQuote body="べつに誰かにとっては完璧に受け入れられるかもしれないことを違法にするより、そういうサービスを使うのやめるっていう個人的な決断をすれば良くない？自分の個人的な真実を政治を通して他人に押し付けるのは、全体主義にかなり近いと思うよ。" userName="tirant" createdAt="2025-04-20T15:38:07" color="">}}

{{<matomeQuote body="追跡されずにサービスを使い続けるために法律を使えるのに、なんでサービス使うのやめなきゃいけないの？<br>＞自分の個人的な真実を政治を通して他人に押し付けるのは、全体主義にかなり近いと思うよ。<br>”規制は全体主義”っていう考え方は、今ちょっと受け入れられないな。" userName="stavros" createdAt="2025-04-20T15:41:13" color="#38d3d3">}}

{{<matomeQuote body="べつに誰かにとっては完璧に受け入れられるかもしれないことを違法にするより、そういうサービスを使うのやめるっていう個人的な決断をすれば良くない？<br>プライバシーを基盤とした競争が市場にないから。もし友達とか家族とか雇用主が使ってるサービスを使いたいなら、プライバシーを諦めざるを得ないんだよね。自由市場はこういう問題を解決したことないし、これからも絶対ない。規制こそが唯一の解決策だって、教科書に載ってるレベルだよ。" userName="smt88" createdAt="2025-04-20T19:03:25" color="#ff5733">}}

{{<matomeQuote body="＞これって実はオプトアウトできるんだよね。こういうのを違法にする政治家に投票しようぜ。<br>議会にはたくさんの政治家がいるけど、広告会社の方がもっとお金をくれるんだよね。オプトアウトするには、利益相反とか賄賂で政治家を刑務所に入れるか、Big Techに対するキャンペーンをするしかない（自殺行為になるかもだけど）。頑張って。" userName="hulitu" createdAt="2025-04-20T10:22:47" color="">}}

{{<matomeQuote body="EUが市民を守るために一歩ずつやってることじゃないの？政治家は法律を無視したら、立法府側も行政府側も、大統領も含めて刑務所に入れるべき。フランスはMarine Le PenとかSarkozy元大統領とか、何十人もの関係者でまたそれを見せてるよね。" userName="xico" createdAt="2025-04-20T10:43:03" color="#38d3d3">}}

{{<matomeQuote body="そうなると政府が企業を使って追跡できなくなっちゃうじゃん。" userName="lclc" createdAt="2025-04-20T11:09:10" color="">}}

{{<matomeQuote body="そんな政治家いないし、いたとしても君の投票なんか意味ないよ。" userName="whobre" createdAt="2025-04-20T13:08:29" color="">}}

{{<matomeQuote body="GDPR(一般データ保護規則)笑" userName="stavros" createdAt="2025-04-20T13:23:02" color="">}}

{{<matomeQuote body="「オプトアウト」するために、完全にオフグリッドにする必要すらないよ。アプリに位置情報の許可を与えてないなら、アプリが送信してる「位置情報」はほぼ間違いなくGeoIPデータベースからのもの。それは技術的には「位置情報」だけど、多くの人が言う「みんなが君の位置を知ってる」っていうのとは違うと思う。適当な懐中電灯アプリに位置情報の許可を与えないとか、iOS/Androidでクロスアプリ識別子を無効にするとか、VPNを使うとかで、同じくらいの匿名性が得られるよ。" userName="gruez" createdAt="2025-04-20T14:53:17" color="#38d3d3">}}

{{<matomeQuote body="個人的には、無料のVPNは絶対信用できないなー。" userName="azinman2" createdAt="2025-04-20T14:58:47" color="">}}

{{<matomeQuote body="VPN使うか、ISPのIPアドレス晒すかのどっちかだよなー。自分でVPN立てんのも、結局は第三者経由で通信してる時点で監視される可能性あるし、無料VPNみたいに他のユーザーに紛れ込むこともできないから、もっとタチ悪いかもね。" userName="gruez" createdAt="2025-04-20T16:01:22" color="">}}

{{<matomeQuote body="仕事は何してるの？仕事とかプライベートの電話はどうしてるんだろ？" userName="bix6" createdAt="2025-04-20T12:30:15" color="">}}

{{<matomeQuote body="b2bのinfosecの会社経営してるよ。電話番号はVOIPプロバイダに移行したから、家のDECTホンとかラップトップで好きな時に電話できるんだ。通知に追いかけられたり、ポケットに邪魔な機械持ち歩く必要もないし。" userName="lrvick" createdAt="2025-04-21T19:59:02" color="#ff5c5c">}}

{{<matomeQuote body="スマホを手放すのはちょっと抵抗あるけど、個人的にはほとんど電話しないし、仕事の電話も最後にいつかけたか覚えてないくらいだわ。" userName="ghaff" createdAt="2025-04-20T14:49:53" color="">}}

{{<matomeQuote body="質問とかアプリについて話したいことあったら、お気軽にどうぞー！作者です。" userName="timsh" createdAt="2025-04-17T19:53:35" color="">}}

{{<matomeQuote body="なんで明るさとかバッテリー残量とかヘッドホン使用状況とか、そんなデータ集めるのかって話だけど、データ自体に価値があるってのもあるけど、IPFAの境界とかNATとかVPNとかを掻い潜ってデバイスを“fingerprint”するためでもあるんだよね。デバイスごとにバラバラなデータポイントがめっちゃ多いから、短い時間で全く同じようなデータを報告してる二つのアプリがあったら、同じデバイス上にある可能性が高いんだ。" userName="jrmg" createdAt="2025-04-20T02:52:07" color="#ff5733">}}

{{<matomeQuote body="こんなトラッキング、なんで合法なの？" userName="elric" createdAt="2025-04-20T05:45:52" color="">}}

{{<matomeQuote body="ほとんどの人が利用規約に同意して、自分の行動を正確にシミュレーションして、行動を変える確率を高く売るためにストーキングされるのを承諾してるからだよ。いつでも止められるよ。携帯解約して電源切ればいいんだ。それが一番有効な選択肢だよ。" userName="lrvick" createdAt="2025-04-20T08:53:10" color="">}}

{{<matomeQuote body="情報弱者の同意は同意じゃないし、携帯なしの生活を楽しめる人もいるけど、多くの人はそうじゃない。" userName="elric" createdAt="2025-04-20T09:03:10" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="インフォームドコンセントじゃない同意は意味ないよね。<br>確かにそうだけど、規約ってちゃんと情報提供して同意を得るためのものじゃん。読むのめんどくさがって読まないなら、そりゃ無知のままでいるの選んでるのと一緒じゃん。" userName="djeastm" createdAt="2025-04-20T10:17:18" color="">}}

{{<matomeQuote body="普通の人が毎日使う全てのサービスの規約読むのに何回人生やり直しても終わらないレベルだったら、それは読む気がないとかそういう問題じゃないよね。" userName="wuiheerfoj" createdAt="2025-04-20T21:42:38" color="">}}

{{<matomeQuote body="俺は全部ちゃんと契約書読むぜ。読まないとかありえない。<br>長すぎて読むのつらいなら、それには理由があんだよ。嫌なら使わなきゃいいじゃん。" userName="lrvick" createdAt="2025-04-21T19:42:59" color="#ff5733">}}

{{<matomeQuote body="アプリはToSを普通の速度でスクロールさせるとか、タバコ業界みたいにヤバいことをでかでかと表示させるべきだと思うわ。ほとんどの人はネットがなくても幸せに生きてたんだし、ネットがないと不幸とかタバコがないと不幸って言ってるのと同じ。<br>AppleとかGoogleの文化は間違ってる。技術系の会社やってるけど、AppleとかGoogleの製品なくても全然幸せだし。自分でコントロールできる技術を選ぶことは可能。オープンなエコシステムはマーケティング予算がないから、ちょっと調べる必要があるけどね。" userName="lrvick" createdAt="2025-04-21T19:47:51" color="#ff5733">}}

{{<matomeQuote body="それGDPR的にはアウトだよ。規約に書けばOKってわけじゃない。明示的な同意が必要だし、トラッキングを受け入れることがサービス利用の条件になっちゃダメ。" userName="Etheryte" createdAt="2025-04-20T10:04:28" color="#45d325">}}

{{<matomeQuote body="＞お前らほとんど全員が、ストーキングされることに同意する規約に同意したからだろ<br>一部の法律(GDPR)は、一部の人にしか適用されないからね。" userName="hulitu" createdAt="2025-04-20T10:24:26" color="">}}

{{<matomeQuote body="Stallmanがオタクっぽく見えるから、2000年代初頭は誰も彼の言うこと真剣に聞いてなかった。" userName="boppo1" createdAt="2025-04-20T08:57:53" color="">}}

{{<matomeQuote body="良いUI/UXって金かかるし、オープンソースはそれが苦手なんだよね。それにみんなめんどくさがりだし。パソコンいじったりするのが好きな人って少数派じゃん。だから、優れたUXでユーザーを囲い込んで監視エコシステムに誘導するのが簡単だったんだよ。" userName="api" createdAt="2025-04-20T12:39:52" color="#ff5c5c">}}

{{<matomeQuote body="今でもオタクっぽいじゃん。もう治らないと思う。" userName="drob518" createdAt="2025-04-20T15:36:38" color="">}}

{{<matomeQuote body="もしオープンソースとかプライバシーにJenny McCarthyみたいな人がいたら、世界は変わってたかもね。" userName="doubled112" createdAt="2025-04-20T11:46:23" color="">}}

{{<matomeQuote body="だって違法じゃないからでしょ？" userName="wnoise" createdAt="2025-04-20T20:11:24" color="">}}

{{<matomeQuote body="いいね！もっと面白いデータを見つけるには、プロセスにFrida[0]を実装して、通常は見えない暗号化されたトラフィックを監視するといいかもね。証明書が固定されてるから。" userName="alphan0n" createdAt="2025-04-20T05:14:57" color="">}}

{{<matomeQuote body="もっと具体的に言うなら、HTTP Toolkitのメンテナンスされてるスクリプトを使うのがおすすめ。" userName="sunbum" createdAt="2025-04-20T06:37:30" color="#785bff">}}

{{<matomeQuote body="素晴らしい、ありがとう。Fridaは奥が深いね。HTTP Toolkitは脱獄済みのiOSデバイスでの使用しか言及してないけど、v13以降の脱獄してないデバイスでもインジェクション[0]で使えるよ。" userName="alphan0n" createdAt="2025-04-20T19:46:30" color="#ff33a1">}}

{{<matomeQuote body="まだ設定してないんだけど、EU版とUS版のアプリには違いがあると思うんだよね。それも考慮して調査してる？それとも考えすぎかな？" userName="anotherpaul" createdAt="2025-04-20T07:03:28" color="">}}

{{<matomeQuote body="違いは同意レベルだけだと思うよ。例えば、デザインが違ったり、リンクされてるToSが違ったりして、“すべて許可”ボタンの数が多かったり少なかったりするくらいじゃないかな。コードとかSDKレベルで地域差があるとは考えにくいな。" userName="timsh" createdAt="2025-04-20T14:37:10" color="">}}

{{<matomeQuote body="カリフォルニアってEUよりも厳しい法律があったりするんじゃないの？" userName="qwertox" createdAt="2025-04-20T17:38:51" color="">}}

{{<matomeQuote body="しっかりした観察と分析だね！でも、あまりにも明白すぎる気がするけど、本当に先駆者的な試みなのかな？誰も同じようなことしてない？" userName="uticus" createdAt="2025-04-17T21:13:00" color="">}}

{{<matomeQuote body="何かあるはずだよ！このアプリのリストじゃなくても、他の“トラフィックの記録方法”みたいなガイドと似たようなコードがあるはず。" userName="timsh" createdAt="2025-04-17T21:29:59" color="">}}

{{<matomeQuote body="記事を読んで目が開かれたよ！ありがとう！よくあるプライバシー保護技術が有効かどうかをテストするような、3つ目の記事を期待してもいいかな？" userName="feydaykyn" createdAt="2025-04-19T08:34:39" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="このトラッキングの責任者を特定して監視するようなsousveillanceプロジェクトって何かあるのかな？" userName="Teever" createdAt="2025-04-20T06:54:00" color="">}}

{{<matomeQuote body="みんなスマホが必要だけど、それってどうしようもないってこと？" userName="bix6" createdAt="2025-04-20T12:44:37" color="">}}

{{<matomeQuote body="スマホは必要だけど、そんなに色々使わなくてもいいんだよ。ブラウザ、メール、チャットアプリとか、銀行とか、ナビ、公共交通機関とか。こういうのはプライバシーに配慮したオプションがあるか、そもそも大したスパイじゃないことが多いんだ。スパイ活動が多いのはゲームとか、eコマース、SNSとかで、こういうアプリなしでも全然生活できるじゃん。" userName="franga2000" createdAt="2025-04-20T13:12:17" color="#45d325">}}

{{<matomeQuote body="Androidで、アプリを使ってない時にデータ通信（モバイル＋Wi-Fi）を切ると、何か効果ある？バックグラウンドで勝手に通信したりしない？それとも、データをキャッシュに溜め込んで、次にオンラインになった時にまとめて転送するのかな？少なくとも、使ってない時はネットから切断すれば、位置情報トラッキングを少しは難しくできるかも？" userName="2mlWQbCK" createdAt="2025-04-20T13:35:32" color="">}}

{{<matomeQuote body="そりゃそうでしょ？海外にいてアメリカのプランを使ってないのに、バックグラウンドで勝手にアメリカのプランを使われたら困るし、そんな証拠もないよ。" userName="ghaff" createdAt="2025-04-20T14:46:35" color="">}}

{{<matomeQuote body="それって本当？銀行は第三者に情報を売ってるって聞くけど。<br>ゲーム大好きなんだ。ネットワーク通信を安全にブロックする方法はない？" userName="bix6" createdAt="2025-04-20T14:39:55" color="">}}

{{<matomeQuote body="そんなにゲームが好きなら、ゲーム専用機を買ったら？ゲーム専用にして、ゲーム以外のアカウントとか情報を晒さないようにするんだ。娯楽用デバイスと個人用通信デバイスが同じである必要はないでしょ？XboxとMSが同じだからって、古いhotmailアカウントでログインする必要もないし。できれば、Webブラウザも無効にしておきたいね。<br>それができないなら、それは“好き”じゃなくて依存症かもね。もしそうなら、それを切り離すメリットは想像以上に大きいかもよ。" userName="3np" createdAt="2025-04-20T18:04:28" color="#785bff">}}

{{<matomeQuote body="＞ゲーム大好きなんだ。ネットワーク通信を安全にブロックする方法はない？<br>VPNを使ってみたら？" userName="gruez" createdAt="2025-04-20T14:53:39" color="">}}

{{<matomeQuote body="別のスマホを使うのもありだよね。最高のゲーミングスマホが、他の用途にも最適なスマホとは限らないし。" userName="jajko" createdAt="2025-04-20T18:10:28" color="">}}

{{<matomeQuote body="実際に自分で試した人いる？" userName="tedunangst" createdAt="2025-04-20T17:22:14" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
