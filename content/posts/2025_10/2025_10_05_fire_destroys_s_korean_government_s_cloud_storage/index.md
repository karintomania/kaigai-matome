+++
date = '2025-10-05T00:00:00'
months = '2025/10'
draft = false
title = '韓国政府のクラウドシステムが火災で全焼、バックアップゼロで大惨事！'
tags = ["クラウド", "データ損失", "バックアップ", "火災", "韓国政府"]
featureimage = 'thumbnails/orange2.jpg'
+++

> 韓国政府のクラウドシステムが火災で全焼、バックアップゼロで大惨事！

引用元：[https://news.ycombinator.com/item?id=45483386](https://news.ycombinator.com/item?id=45483386)




{{<matomeQuote body="https://www.chosun.com/english/national-en/2025/10/02/FPWGFS..." userName="ksec" createdAt="2025/10/05 17:20:39" color="#ff33a1">}}




{{<matomeQuote body="AWS/GCP/Azureを信用しないと言った政府関係者は、しばらく立場がないだろうね。内務省の説明だと、大田データセンターのシステムは毎日バックアップされてるけど、G-Driveだけ外部バックアップできなかったんだって。マジでヤバすぎる。" userName="kristianc" createdAt="2025/10/05 20:02:45" color="#38d3d3">}}




{{<matomeQuote body="外国の第三者を使わないのは理解できる。でも、リモートストレージを義務付けてバックアップしないのは狂ってる。火災のリスクを考えて、小さい会社でも最低限やる準備だよ。これはひどい管理ミスだね。" userName="StopDisinfo910" createdAt="2025/10/05 21:19:32" color="#ff5c5c">}}




{{<matomeQuote body="バックアップなしでシステムを運用するのは、とんでもなくクレイジーってことには完全に同意。ただ、この状況で政府が重要なデータを外国のクラウドストレージに置くのはやめるべきだね。" userName="eCa" createdAt="2025/10/05 20:14:47" color="#38d3d3">}}




{{<matomeQuote body="バックアップも遠く離れた場所に置くべきだね。9/11の時、バックアップが別のタワーにあったせいで全てを失った会社もあったらしいから。" userName="thanatos519" createdAt="2025/10/06 06:45:10" color="#ff5c5c">}}




{{<matomeQuote body="なんでダメなの？もしリージョンが国内にあって、暗号化されてて、第三者に検証されたセキュリティ証明があるなら、クラウドストレージへのバックアップはすごく賢明だよ。そうしないと、一つのデータセンターが火事で燃えたっていう記事を読むことになるかもね。" userName="stogot" createdAt="2025/10/05 20:17:37" color="#38d3d3">}}




{{<matomeQuote body="面白いことに、ドイツはこういう問題のために、バックアップの保存場所に関する法律があるんだ。火災、洪水、地震、竜巻など、何にせよ、適切なセキュリティを考えてバックアップを保存する必要があるんだって。" userName="zwnow" createdAt="2025/10/06 07:13:57" color="#38d3d3">}}




{{<matomeQuote body="ドイツか、やっぱりね。うちの会社がバックアップを保存するのに政府の許可が必要みたいな感じだよ。" userName="egorfine" createdAt="2025/10/06 07:18:47" color="">}}




{{<matomeQuote body="”外国の第三者を使わないのは理解できる”って意見だけど、第三者に送る前に暗号化すればいいんじゃない？" userName="acchow" createdAt="2025/10/06 03:51:54" color="">}}




{{<matomeQuote body="暗号化って言ってもさ、バックドアがあるって知られてるし、国家によるクラッキングには弱いんじゃないの？って思うんだけど。" userName="lukevp" createdAt="2025/10/05 22:20:33" color="">}}




{{<matomeQuote body="韓国にはちゃんとクラウドプロバイダーがあるじゃん。Kakaoはクラウドを超えちゃってるみたいだしさ！<br>https://kakaocloud.com/<br>https://www.nhncloud.com/<br>https://cloud.kt.com/<br>いくつか挙げただけだけどね。" userName="neom" createdAt="2025/10/05 20:18:40" color="#38d3d3">}}




{{<matomeQuote body="いや、会社（か政府機関）が重要インフラだったり、ある程度の規模だったら、記録の維持方法には義務があるでしょ。USとか他の国だって同じような要件がないわけじゃないんだからさ。" userName="leipert" createdAt="2025/10/06 07:32:57" color="">}}




{{<matomeQuote body="1993年のWTC爆破事件の後、ツインタワーは無敵だって馬鹿みたいに信じてた奴らもいたんだよな。9/11前は、ほとんどのDRサイトがWFCやWTCのメインオフィスから川を挟んだJersey Cityにあったけど、9/11後は金融業界が50マイル以上のルールを採用したんだよ。" userName="tooltalk" createdAt="2025/10/06 07:29:57" color="#38d3d3">}}




{{<matomeQuote body="まったくだよな。もちろん敵国のクラウドに保存しちゃダメだけどさ。でも暗号化されてて、別の国にある別の会社、理想的には地政学的に異なる関係の会社でライブバックアップを取ってるなら、何の問題もないと思うけどな。" userName="crazygringo" createdAt="2025/10/05 20:35:39" color="#38d3d3">}}




{{<matomeQuote body="それらのほとんどはホワイトラベルのプロバイダーだよ。Samsung SDI Cloud（最大の”韓国”クラウド）もAWSのホワイトラベルだしね。韓国は多くの工学分野で優れてるけど、ソフトウェアは残念ながらそうじゃない。数年前にも政府の内部イントラネットがダウンした件も、誰かが気づかれずにスイッチを導入したせい。これは才能じゃなくてマネジメントの問題。日本の問題に似てて、JETRO時代から韓国の組織が日本のものに大きく基づいてるから驚かないけどね。" userName="alephnerd" createdAt="2025/10/05 21:07:13" color="#38d3d3">}}




{{<matomeQuote body="これらの会社を信用しなかったのは当然だよね。彼らにとっては災害だったかもしれないけど、AmazonやMicrosoftを簡単に信用しちゃダメだよ。" userName="zwnow" createdAt="2025/10/05 20:04:02" color="">}}




{{<matomeQuote body="US政府が自分たちのデータを暗号化してAlibabaのクラウドに保存すると思う？ :)" userName="vitorgrs" createdAt="2025/10/06 04:55:48" color="">}}




{{<matomeQuote body="Microsoftは、アメリカ政府が全地域のデータセンターにアクセスを維持してるって既に証言してるよ。これはすべてのアメリカのクラウド企業に当てはまるだろうね。アメリカは安定した同盟国じゃないし、友人に対するスパイ行為の歴史もあるからさ。だから、バックアップ全体がオフラインで暗号化されてて、NSAが選んだ暗号化を絶対に破らないと信じない限り、国家安全保障上のリスクだよ。" userName="shakna" createdAt="2025/10/05 20:47:26" color="#ff33a1">}}




{{<matomeQuote body="企業だってデータは失うぜ、落雷みたいに。ほらね: https://www.bbc.com/news/technology-33989384<br>政府なら、他国が管理する環境に大事なものを置くべきじゃない、以上。これはバックアップとは全然違う問題だけどな。" userName="miken123" createdAt="2025/10/05 20:10:16" color="">}}




{{<matomeQuote body="Jersey Cityは大丈夫だったけど、50マイルも離れてると特定のバックアップ（フェイルオーバー）プロトコルでは問題になる可能性があるんだ。普通のテープバックアップは問題ないけど、セカンダリデータベースはそんな遠くには置けない（少なくとも当時はな）。WFCのボスが言ってたけど、みんながオフィスにいる時じゃなくて、真夜中にデータラインのトラフィックが一番多かったのはバックアップのせいだってさ。" userName="AdamN" createdAt="2025/10/06 07:42:38" color="">}}




{{<matomeQuote body="大企業なら光ファイバーなんて敷きまくるだろ。数十〜百マイルの光ファイバーなんて、億万長者のビジネスには大したことないぜ。BlackRockみたいな自社データセンター持ってた企業だって、今じゃAzure使ってるし。データベースでも50マイルの遅延なんて無視できるレベルだよ。" userName="flumpcakes" createdAt="2025/10/06 07:51:03" color="">}}




{{<matomeQuote body="なんでダメなんだよ？ 例えばS3に保存する前に、データを簡単に暗号化できるじゃん。" userName="kingnothing" createdAt="2025/10/05 20:08:39" color="">}}




{{<matomeQuote body="今んとこ、どんな暗号システムも安全だと証明する方法はないんだよ。別の言い方をするなら、俺たちが知る限り、利用可能な全ての暗号システムは未公開の技術で簡単に破られる可能性があるってこと。唯一の例外が量子通信だけど、必要な規模で実用化するには程遠い。俺たちが常用する暗号が安全だという唯一の証拠は、何十年も数学者が研究しても誰も破れなかった“難しい”数学問題に基づいているってだけさ。昔は一般的だった人気の暗号システムも、数学の進歩で年々かなり弱くなってるしな。何が言いたいかっていうと、先進国の政府が持つような、何十年経っても敵にとって価値があるような超機密データは、暗号化されてたとしても敵対的な国家の手に渡すべきじゃないってことだ。" userName="WCSTombs" createdAt="2025/10/06 06:28:16" color="#38d3d3">}}




{{<matomeQuote body="＞バックドアがあって国家に破られる暗号を使うって？<br>マジで何言ってんの？ 標準的なオープンソース暗号システムに、既知のバックドアなんて一切ないし、256ビット以上の対称暗号は量子コンピュータが実用化されても誰も破れないよ。Shor’s algorithmは公開鍵暗号に適用されるんであって対称暗号じゃないし、対称暗号でできる最善はGrover’s quantum searchによる平方根の高速化がせいぜい。お前の情報、ごっちゃになってるみたいだな。" userName="xoa" createdAt="2025/10/05 22:34:22" color="#ff5733">}}




{{<matomeQuote body="これな。IT目線で言わせてもらえば、雇用主や顧客がバックアップを拒否するのは、俺が受け取る中で最大の危険信号、失敗の責任を押し付けられる前に「とっとと逃げろ」っていう即時の警告だ。そうは言っても、この話がどうなるか俺には見当がつくよ：* G-DRIVEは2017年からあるのに、今のITスタッフや管理職が“これを許した”としてほぼ間違いなくスケープゴートにされるだろうな。* 政府の誰も、なぜバックアップがなかったのか、なぜそれが放置されたのか、なぜそんな大問題があるのにシステムが稼働したのか、ちゃんと疑問に思わない。だって、それは実際のミスを犯した奴らを管理責任で追及するってことになっちゃうから。* 調査で名前が挙がれば、関係者はすぐには仕事を見つけられなくなるだろう。* 主要なクラウドプロバイダが“一時的なサービス”の契約をいくつか勝ち取って、実際には政府が自システムの管理で持っていた主権を奪い取るだろう、たとえ政府の管理がひどかったとしてもな。* 他の国々もこれを口実に、自国の主権に関わるインフラを民間企業にアウトソースするだろう。この状況は本当に最悪だよ。これで良いことなんてほとんど起きないだろうな、せいぜい数人の優秀なチームがこれを教訓に、自分たちのバックアップリソースを改善するくらいだ。" userName="stego-tech" createdAt="2025/10/06 11:46:28" color="#785bff">}}




{{<matomeQuote body="いやいや、逆だろ。ある程度の規模の企業には特定の基準を満たす義務があるんだよ。NIS-2はEUの指令で、物理的な災害に対するリスク管理を含むISO27001とほぼ同じ。https://www.openkritis.de/eu/eu-nis-2-germany.html<br>もちろん、もっと小さければ、望むならバックアップしたり、そういう基準に従ったりはできるけどな。" userName="leipert" createdAt="2025/10/06 07:40:06" color="">}}




{{<matomeQuote body="政府は重要なデータを外国のクラウドに置くべきじゃない。バックアップは？こいつらオンサイトデータもバックアップ取れなかったんだから、ちゃんと暗号化されてたと思う？" userName="JumpCrisscross" createdAt="2025/10/05 21:13:34" color="#ff5c5c">}}




{{<matomeQuote body="技術は詳しいけど暗号化は苦手で、おすすめの記事や本を知りたいな！僕の理解では暗号化は最後の防衛線で、決して破られないもんじゃないって感じ。でも君は詳しそうだし、現代の暗号化の安全性に自信があるみたいだから、僕の知識が古いのかも！" userName="100721" createdAt="2025/10/05 23:16:23" color="">}}




{{<matomeQuote body="https://phrack.org/issues/72/7_md#article" userName="jn78" createdAt="2025/10/05 19:45:47" color="">}}




{{<matomeQuote body="うわっ、これの冒頭のタイムラインを読んでみろよ。火災が発生したのは、中国や北朝鮮のハッキングが原因で政府がオンサイト検査を命じたまさにその日だったんだぜ。" userName="msbhvn" createdAt="2025/10/05 20:16:24" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Phrackのタイムラインではそう読めるかもしれないけど、ハッキングによるオンサイト検査じゃなくて、期限切れのUPS交換のための定期メンテナンスだったんだ。だからバッテリーに触る作業があった。彼らがリンクした画像にも”定期メンテナンス”って書いてあるだけだよ。" userName="jftr" createdAt="2025/10/05 23:14:20" color="#ff5c5c">}}




{{<matomeQuote body="つまり、調査が発表された直後にUPSバッテリー交換を急遽予定し、それがデータセンターと全てのデータや証拠を破壊するほどの大火災になったと？<br>うん、全然怪しくないね。教えてくれてありがとう。" userName="danudey" createdAt="2025/10/05 23:57:53" color="#38d3d3">}}




{{<matomeQuote body="2025年9月27日、火災はリチウムイオンバッテリー交換中に発生したとみられている。バッテリーはLG製で、LG Uplus（APTにハッキングされた会社）の親会社だ。バッテリーかバッテリーコントローラーが改ざんされたのか？" userName="baobun" createdAt="2025/10/05 22:26:17" color="#45d325">}}




{{<matomeQuote body="最初は政府の隠蔽工作かと思ったけど、これを見ると…『2025年9月27日、火災はリチウムイオンバッテリー交換中に発生したとみられている。バッテリーはLG製で、LG Uplus（APTにハッキングされた会社）の親会社だ。』<br>ハッカーがバッテリーファームウェアを妨害して火事を起こした可能性もあるのか？" userName="naruhodo" createdAt="2025/10/06 00:46:27" color="#45d325">}}




{{<matomeQuote body="目撃者Aは、『無停電電源装置の交換中に火花が飛んで火災が発生したようだ』と言ってたよ。そして、『消防士が消火活動中だ。政府の24時間チャンネルを含む国家情報ネットワークに支障が出ないことを願う』と付け加えてた。https://mbiz.heraldcorp.com/article/10584693" userName="lwhi" createdAt="2025/10/05 23:05:19" color="#45d325">}}




{{<matomeQuote body="このサイトを初めて見たんだけど、Phrackって何？ハッカー集団なの？" userName="63stack" createdAt="2025/10/05 21:29:05" color="">}}




{{<matomeQuote body="UPSの火災で96台ものサーバーが全部ダウンするって、UPSがどれだけデカいの？この話、全然信じられないね。" userName="rawgabbit" createdAt="2025/10/05 23:23:13" color="#45d325">}}




{{<matomeQuote body="それは施設にどれだけのバッテリーがあったかによるね。もし1つ燃えたら、他のも燃える可能性が高いよ。ハロンシステムってリチウム火災は消せないのかな？" userName="sleepybrett" createdAt="2025/10/05 23:37:47" color="#38d3d3">}}




{{<matomeQuote body="うん、この件全体的に怪しいよな。誰がこんなことする動機があるんだ？中国か北朝鮮？それとも韓国国内の誰かが、自分たちのやらかしをごまかそうとしてるのか？この騒ぎを上乗せすれば、失敗が小さく見えるってこと？もしそうなら、ハッキングはどれだけひどかったんだ？" userName="AnimalMuppet" createdAt="2025/10/05 22:17:49" color="#38d3d3">}}




{{<matomeQuote body="記事の主要な点からは外れるけど、なぜ著者たちはアカウントを停止された後もProtonを擁護してるんだ？韓国の諜報機関の職員が安全じゃないって警告してたのにさ。たとえ完璧に安全だとしても、彼らが持つと信じられてる倫理観は明らかになさそうだよな。" userName="Shank" createdAt="2025/10/05 23:18:08" color="">}}




{{<matomeQuote body="「彼ら」は別々の人たちかもしれないね。ちょっと陰謀論だけど、ハッキングで窮地に立たされるはずだった誰かが燃やしちゃって、責任がG-drive管理者とバックアップ計画がないやつらに移った、とか？信じてるわけじゃないけど、大きな組織を擬人化しないのが重要だよな。政府は一人の人間じゃなくて、色んな動機を持つ大勢の人の集まりだからさ。" userName="mattmaroon" createdAt="2025/10/05 23:59:04" color="#45d325">}}




{{<matomeQuote body="良い点を見つけるなら、技術的にはバックアップがあるだろうね（セクション1.3）。ただ、北朝鮮か中国にあるだけってオチかな。やばいね。" userName="jddj" createdAt="2025/10/05 21:10:28" color="">}}




{{<matomeQuote body="こういう偶然って本当にあるんだよな。20年前、ロシア黒海艦隊の幹部全員と会計書類をモスクワでの検査のために運んでいた飛行機が、離陸しようとした時に炎上して墜落したんだ。燃料満載で巨大な火の玉になったけど、なぜか幹部は誰も火傷一つせず、会計書類だけが完全に燃えちゃったらしいよ。" userName="trhway" createdAt="2025/10/05 23:39:51" color="#ff5c5c">}}




{{<matomeQuote body="それはzineだよ。80年代からあって、ハッカーやセキュリティ業界の連中が読んで投稿してるんだ。" userName="fiatpandas" createdAt="2025/10/05 21:30:56" color="">}}




{{<matomeQuote body="俺は自分の携帯をバックアップしてないよ。NSAが代わりにやってくれてるからね！" userName="tibbon" createdAt="2025/10/05 22:30:27" color="">}}




{{<matomeQuote body="Mr. Robotのエピソードでこんな話あったよね。現実がアートを真似してるって感じ？" userName="lazystar" createdAt="2025/10/06 04:23:01" color="">}}




{{<matomeQuote body="これ、”phone hacking”とかphreakingが語源だよな。Captain CrunchとかWozみたいな大物も若い頃はハマってた。カウンターカルチャー運動とも繋がってて、そいつらが今や文化を作ってるんだから、ヒッピーが大人になって変わったのと同じかもな。" userName="godelski" createdAt="2025/10/06 00:18:51" color="">}}




{{<matomeQuote body="こんな時系列を見たらさ、権力に真実を話そうとか考えちゃダメだよ。データ全部消して、機材も捨てて、別の街で違う仕事探してやり直すのが一番だぜ。" userName="neilv" createdAt="2025/10/05 22:06:53" color="">}}




{{<matomeQuote body="UPSのバッテリー交換って大変なんだぜ。時間プレッシャーもあるし、通常はバッテリーを完全にオフにできないからマジで慎重にやる必要がある。Bus barを接続するのも超大変で、通電してる部分に触れると溶接されちゃう。鉛蓄電池なら溶けた金属と有毒ガス、リチウムならとにかく消せない火事になるんだ。" userName="KaiserPro" createdAt="2025/10/06 09:56:00" color="#785bff">}}




{{<matomeQuote body="そういや、これProtonにブロックされたジャーナリストグループの話なんだよな。タイミングもマジ怪しいし、議論の余地ありまくりだぜ。てか『APT down - The North Korean files』ってタイトルが気になるんだけど、APTってAdvanced Persistent Threatのこと？じゃあApt Downって何？ジャーナリズムで閉鎖されたってこと？疑問だらけだよ…。" userName="Imustaskforhelp" createdAt="2025/10/05 23:13:05" color="">}}




{{<matomeQuote body="もし何か怪しい動きがあったとしても、サイバーハックじゃないと思うぜ。多分、今の政権が粛清の後で証拠隠滅してるんじゃないか？もう一つの説としては、クラウドストレージの会社が必死に営業してるってのもあるけどな（笑）。" userName="keepamovin" createdAt="2025/10/06 01:30:36" color="">}}




{{<matomeQuote body="ProtonはまだGmailの代替だよ。NSAと広告ネットワークをNSAだけにするってんなら、それは勝ちだろ。" userName="1oooqooq" createdAt="2025/10/06 13:36:03" color="">}}




{{<matomeQuote body="語源の話ね。「phreaking」に’c’はねーよ。「Phrack」は「phreak」と「hack」の合わせ技だろ。まったく！" userName="quesera" createdAt="2025/10/06 23:08:14" color="">}}




{{<matomeQuote body="ハッキングの責任者からG-drive管理者に責任を転嫁する工作か？LGは韓国企業で、ハッキングされたハードウェアとバッテリーのメーカー。これはただの推測だけど、そんなこと考えちゃったよ。" userName="conductr" createdAt="2025/10/06 05:16:19" color="">}}




{{<matomeQuote body="ハロンシステムってリチウム火災には効かないの？不活性ガスでもダメだろうな。酸素をなくしてもまた燃え出すし、熱暴走は自己完結型だからね。EV火災と同じで、水漬けにして冷ますしかないんじゃない？UPSラックは全損だろ。" userName="waste_monk" createdAt="2025/10/06 11:12:22" color="#45d325">}}




{{<matomeQuote body="韓国人として、祝日にこんな記事がトップにあるのは悲しいよ。韓国の技術導入の遅さは異常。大手保険会社と仕事した時、オンプレミスサーバーを建てたんだけど、データチームは無能だし、Windows 2000で独自のソフト使ってるんだぜ。レガシー過ぎて引いたわ。" userName="sbinnee" createdAt="2025/10/06 04:29:29" color="#38d3d3">}}




{{<matomeQuote body="Mozillaで働いてた頃、韓国で政府機関とか企業に会ったんだ。当時の韓国の銀行やECサイトは、安全な取引にInternet ExplorerとActive-Xが必須だったから、MacOSやLinuxユーザーはエミュレートしないと使えなかったんだぜ。" userName="gkanai" createdAt="2025/10/06 07:33:22" color="#38d3d3">}}




{{<matomeQuote body="会議の結果どうなったの？Firefoxになった？" userName="niutech" createdAt="2025/10/06 07:42:06" color="">}}




{{<matomeQuote body="結局Firefoxにはならなかったな。みんなスマホアプリでバンキングしてるんじゃない？PC使う人はどうなったか知らんけど、Active-Xに固執した韓国政府の決定はマズかったわ。" userName="gkanai" createdAt="2025/10/06 08:07:53" color="">}}




{{<matomeQuote body="Chromiumベースのブラウザに落ち着いたよ。MicrosoftはEdgeを、NaverもChromiumベースのWhaleブラウザを開発したからね。" userName="sbinnee" createdAt="2025/10/06 11:11:55" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="全部の技術が遅いわけじゃねーよ。少なくとも通信分野は早かっただろ。3G W-CDMAで世界2位、LTE-Advancedは世界初、5Gも早かった。ブロードバンドは光ファイバーが90%で、OECD国で2位だぜ。<br>参考：<br>https://en.wikipedia.org/wiki/SK_Telecom#History<br>https://en.wikipedia.org/wiki/5G#Deployment<br>https://www.oecd.org/en/topics/sub-issues/broadband-statisti..." userName="m01" createdAt="2025/10/06 12:27:43" color="#ff5c5c">}}




{{<matomeQuote body="韓国が得意なのは車、船、鉄鋼、半導体、電子機器、薬品、戦車、航空機部品、原発とかね。苦手なのはソフトウェア。まあ、全体的には悪くないさ。" userName="0xDEAFBEAD" createdAt="2025/10/06 07:00:56" color="">}}




{{<matomeQuote body="韓国が得意なのは車、船、鉄、半導体、電子機器、薬、戦車、航空機部品、原子炉、あと音楽やテレビ番組だね。苦手なのはソフトウェアと赤ちゃんみたい。" userName="TulliusCicero" createdAt="2025/10/06 20:04:21" color="#ff5c5c">}}




{{<matomeQuote body="車に関して「良い」っていう解釈、面白いね。" userName="pchew" createdAt="2025/10/06 12:30:01" color="">}}




{{<matomeQuote body="うちの親は同じHyundaiに20年くらい乗ってるけど、全然問題ないって言ってたよ。" userName="0xDEAFBEAD" createdAt="2025/10/07 04:16:28" color="">}}




{{<matomeQuote body="アメリカ以外はみんなソフトウェア作るのが下手みたいだね。" userName="trivo" createdAt="2025/10/06 09:04:41" color="">}}




{{<matomeQuote body="US経済は輸出に関して世界で最も多様だよ: https://oec.world/en/visualize/tree_map/hs92/export/usa/all/...<br>てか、なんでHNには根拠のない反US感情が多いの？" userName="0xDEAFBEAD" createdAt="2025/10/06 12:26:20" color="">}}




{{<matomeQuote body="HNに根拠のない反US感情が多いかって？どの分野でもそうだけど、トップにいる奴が一番嫌われるんだよ。USは世界最大の経済力、軍事力、文化力、テック産業を持ってるから、ヘイトは避けられない。USに問題がないってわけじゃないけど、リーダーを叩くのが一番楽だから、空虚な批判が多くなるんだよ。" userName="TulliusCicero" createdAt="2025/10/06 20:01:48" color="#45d325">}}




{{<matomeQuote body="HNで根拠のない反US感情が多いって？まず、不均衡があるってUS政府自身が言って、ほとんどの国からの輸入に関税かけてるじゃん。US政府が他国にヘイトを撒き散らしてるんだよ。次に、USに住んでる人がUSが独裁国家になりつつあるって気づいてない（信じたくない）からじゃない？世界は気づいてるのに。みんな今のUSAの価値観が好きじゃないんだよ。このままだとUSAは終わりだよ。" userName="flakeoil" createdAt="2025/10/07 15:18:00" color="">}}




{{<matomeQuote body="それより、「オレンジの奴がXはダメだって言うけど、彼だけがXを再び偉大にできるんだ™」って言ってるせいじゃない？それで、みんな自分たちは何もできないって信じちゃうんだよ。" userName="shigawire" createdAt="2025/10/06 17:38:24" color="">}}




{{<matomeQuote body="韓国企業って、AzureとかAWS、GCPみたいなパブリッククラウドプロバイダーを使うんじゃなくて、自社のサーバーにデータをホスティングするのを好むのかな？" userName="v7engine" createdAt="2025/10/06 04:32:32" color="#ff5733">}}




{{<matomeQuote body="うん、ケースバイケースだね。昔はオンプレミスが好きだったけど、新しい会社はクラウドに移行中。Azure、AWS、GCPみたいな大手は通常選ばれないけど（AWSはたまに使うかな）、彼らもソウルにDCを置いて韓国市場を狙ってる。でも政府はNHNやNaver Cloudみたいな国内プロバイダーに generousなインセンティブを出してるんだ。なぜかって？　韓国のサービスは言語の壁で国際展開しないから、国内クラウドで十分なんだよ。" userName="sbinnee" createdAt="2025/10/06 05:20:18" color="#38d3d3">}}




{{<matomeQuote body="韓国がChatGPTみたいに新しいテクノロジーを文化的に最も早く取り入れる国だと思うとすごく興味深いよね。でも一方で、ウェブデベロッパーとして見ると、新しいウェブ技術はよく採用されるのがすごく遅いんだ。" userName="bryanhogan" createdAt="2025/10/06 06:28:36" color="#ff5733">}}




{{<matomeQuote body="僕ら、紙の上では見栄えがいいことにはめちゃくちゃ優れてるんだよね。" userName="boodleboodle" createdAt="2025/10/08 16:36:48" color="">}}




{{<matomeQuote body="記事のコメントは置いといて、バックアップが全然なかったのかが不明なんだ。”外部”はなくても”内部”バックアップはあったかも。バックアップなしでデータ全集中だとPRK（北朝鮮）の格好の標的になりそうじゃない？　国防会議では「オフサイトバックアップ禁止」とか言われるけど、施設破壊に耐える防火金庫［1］が敷地内にあることは多いんだ。でも、人は悪い判断をするし、もし本当にバックアップがゼロなら、これはひどい間違いだろうね。<br>［1］最近は1エクサバイトのデータ保存施設も実現可能。約20年前のこの論文を見てくれ：https://research.ibm.com/publications/ibm-intelligent-bricks..." userName="ChuckMcM" createdAt="2025/10/05 22:09:22" color="#ff33a1">}}




{{<matomeQuote body="＞防火金庫がよくあるって話だけど、昔Unixシステム管理者でバックアップ担当だった時、まさにそうしてたよ。週に一度、一番古いテープを防火金庫から出して、新しいのを入れるんだ。その防火金庫は別の建物にあったしね。それが普通のやり方だと思ってたよ。" userName="kwhitefoot" createdAt="2025/10/06 14:57:42" color="#ff5c5c">}}




{{<matomeQuote body="バックアップはあったよ。でもそのバックアップも同じ火災で破壊されちゃったんだ。" userName="acchow" createdAt="2025/10/06 05:41:48" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
