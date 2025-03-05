+++
date = '2025-02-25T00:00:00'
draft = false
title = 'DigiCertの法的脅威がBugzillaの議論を妨げる？業界からの反発続出！'
tags = ["DigiCert", "Bugzilla", "WebPKI", "セキュリティ", "法律"]
featureimage = 'thumbnails/cyan_orange2.jpg'
+++

> DigiCertの法的脅威がBugzillaの議論を妨げる？業界からの反発続出！

引用元：[https://news.ycombinator.com/item?id=43167087](https://news.ycombinator.com/item?id=43167087)

{{<matomeQuote body="要するに、DigiCertは基準を超えて証明書の取り消しを遅らせてるってこと。最近だと、DigiCertは特定のクライアントを気遣って取り消しを延ばしたり、TROに邪魔されて適時に取り消せなかったりしてる。SectigoのTim Callanもこの件でDigiCertを叩いてるし、法的脅威にエスカレーションするのはよくないよ。高い反発を受ける可能性があると思う。" userName="nneonneo" createdAt="2025-02-25T05:41:05" color="#ff5c5c">}}

{{<matomeQuote body="DigiCertがTROに隠れているように見えるな。この法律の手続きが必要だったことへの顧客の不満を避けるためにね。彼らは適切な手続きをする気がないように感じる。最終的にDigiCertが問題を解決できないと、他の認証機関を探さなきゃならなくなるかもよ。" userName="jeroenhd" createdAt="2025-02-25T08:03:52" color="">}}

{{<matomeQuote body="TROについて誤解があると思う。AlegeusはDigiCertに証明書の取り消しを止める訴えをしたんだ。裁判所はそのTROを出しただけ。DigiCertが法的義務を果たせない状態で、TROが下されたことは問題だけど、クライアント側の準備不足が根本的な問題だと思う。" userName="hmmm-i-wonder" createdAt="2025-02-25T12:12:50" color="">}}

{{<matomeQuote body="裁判官はTROの承認や不承認で各当事者に与える可能性のある害について考えるでしょ。CAが取り消ししなかったら困ることを信頼して指摘できれば影響を与えるはずだよ。" userName="lokar" createdAt="2025-02-25T13:47:52" color="">}}

{{<matomeQuote body="TROはDigiCertの意見なしに出されてるんだ。DigiCertの法務チームが翌日に登場したけど、何もしなかったんだよ。裁判官は害を考慮するけど、法廷の技術的リテラシーには疑問が残るよね。" userName="hmmm-i-wonder" createdAt="2025-02-25T14:23:59" color="">}}

{{<matomeQuote body="DigiCertの弁護士は24時間以内に出てきたけど、行動しなかったんだ。TROが出された時点で、他のCAメンバーから「真剣に取り組んでいるのか？」って質問されるのも納得だよ。セキュリティのために戦う意志を見せるべきだと思うよ。" userName="lelandbatey" createdAt="2025-02-25T19:44:22" color="#45d325">}}

{{<matomeQuote body="CAが法律によって取り消しを妨げられることは理解できていないんじゃないかな。DigiCertはAlegeusを拒否しても良かったかもしれないが、戦うのは時間がかかるだろう。ただ、迅速な取り消しが大事なら、法律闘争を引き起こすのは意味がないと思う。" userName="SpicyLemonZest" createdAt="2025-02-25T20:37:45" color="">}}

{{<matomeQuote body="弁護士が登場したからと言って、何もできたわけじゃないんだ。戦略的には、クライアントと協力して早くTROを撤回した方が安上がりだったと思う。TROに挑戦しても時間がかかるだけだろうからね。" userName="hmmm-i-wonder" createdAt="2025-02-26T13:59:43" color="">}}

{{<matomeQuote body="TROに含まれていない会社の証明書は取り消せたはずだ。DigiCertは、該当する顧客を捨てた方がよかったと思うよ。今後再発したら、計画通りに証明書を取り消すとは限らないからね。" userName="lesuorac" createdAt="2025-02-26T17:22:16" color="#38d3d3">}}

{{<matomeQuote body="同意するよ、２つとも僕も言ったことだしね。" userName="hmmm-i-wonder" createdAt="2025-02-28T15:31:43" color="">}}

{{<matomeQuote body="法廷は技術的な詳細に詳しくないから、弁護士がしっかりと説明しないといけない。共通法での裁判は、過去の判例を見て判断するから、最初の裁判での議論が次の裁判に影響を与えるよ。ただ、全ての裁判が共通法を守ってるわけではない。" userName="bluGill" createdAt="2025-02-25T13:59:09" color="#ff5733">}}

{{<matomeQuote body="民法系の国では、法律が詳しいから問題は少ない。ただ、過去の判例を引用することはあっても、指針であって拘束力はないんだ。" userName="hyperman1" createdAt="2025-02-25T14:50:20" color="">}}

{{<matomeQuote body="CAフォーラムが明確な制裁を持っていたら、弁護士はそれを問題にするだろうね。" userName="lokar" createdAt="2025-02-25T14:04:46" color="">}}

{{<matomeQuote body="他のコメントで、CAが弁護士なしで緊急命令を得たと言われてる。裁判所は“実際の書類が整うまでの1週間、何もしないで”と言ったんだ。そんなに長い時間じゃないけどね。" userName="bluGill" createdAt="2025-02-25T15:20:17" color="">}}

{{<matomeQuote body="法的なケースには適用されるレビュー基準があるんじゃないか？" userName="mistrial9" createdAt="2025-02-25T17:29:08" color="">}}

{{<matomeQuote body="＞裁判官はTROが認められるかどうかで各当事者への潜在的な損害を考慮しないのか？<br>CAが厳しい結果を受ける可能性を指摘できたら、影響があると思う。だから、次のCAがそれを根拠に反論できる結果を厳しく設定することが重要だと考えるよ。" userName="JoshTriplett" createdAt="2025-02-25T16:54:24" color="#45d325">}}

{{<matomeQuote body="TROの件では、発行済みの証明書には問題がなかったと思う。DNS検証ではアンダースコアが必要なのに、Digicertがそれを聞かなかったのが問題で、Alegeusはその業者じゃない。" userName="michaelt" createdAt="2025-02-25T09:05:12" color="">}}

{{<matomeQuote body="DigiCertはTROの影響を受けない他の証明書の取り消しを進められたはずだ。ポリシーはセキュリティを重視してて、それを顧客が合意しているから。要は、セキュリティが最優先だっていう共通認識があるんだ。" userName="hmmm-i-wonder" createdAt="2025-02-25T12:20:25" color="">}}

{{<matomeQuote body="＞AlegeusはダイナミックDNSのプロバイダーではなかったが、Digicertには他の顧客も多数いる。<br>問題がなかったからと言って、他の顧客にも問題がなかったとは限らないんだ。" userName="Thorrez" createdAt="2025-02-25T09:37:51" color="#45d325">}}

{{<matomeQuote body="取り消しルールは厳しいのは、CAsが逃げ道を作らないためだ。もしもCAが軽視して遅らせたり拒否したりすると、毎回議論が長引くから。CAsはすべてのルールに従わないと信頼されないんだよ。" userName="crote" createdAt="2025-02-26T10:36:16" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="証明書の発行に何か問題があったんだ。基準に従って発行されてなかったんだよね。" userName="wbl" createdAt="2025-02-25T11:40:36" color="">}}

{{<matomeQuote body="その証明書がセキュアな検証方法なしに発行されたのが問題なんだよ。Dyndnsがそういうサブドメインの制御をするのは他にも色々な理由があるんだ。" userName="cjbprime" createdAt="2025-02-26T04:30:12" color="">}}

{{<matomeQuote body="いや、証明書のインフラは最高の基準を満たす必要があるんだ。ここでは「大したことない、心配しなくてもいい」なんて言ってられないんだよ。" userName="12_throw_away" createdAt="2025-02-26T18:48:24" color="#785bff">}}

{{<matomeQuote body="TROが証明書の取り消しを禁止する場合、企業は取り消しを遅らせるのか？でも、できるだけ早く問題を司法で解決しようとするんだろうか？" userName="RHSeeger" createdAt="2025-02-25T06:18:32" color="">}}

{{<matomeQuote body="最終的な正解は明らかだと思う。企業が取り消したら大きな損害があると言った時点で、その証明書はウェブPKIのルールと矛盾することになるんだ。それは早急に移行しないといけない状態だね。" userName="Dylan16807" createdAt="2025-02-25T07:14:59" color="#785bff">}}

{{<matomeQuote body="DigiCertや他のCAは、ポリシーや取り消しのタイムラインを守らないと契約が終了する可能性があると明記すべきだね。Alegeusは問題が解決したらすぐに顧客をやめさせるべきだった。" userName="hmmm-i-wonder" createdAt="2025-02-25T12:23:34" color="">}}

{{<matomeQuote body="CAは顧客がこの種のTROを使った場合、かなりの金額を支払う必要があると規定できるのかな？" userName="HelloNurse" createdAt="2025-02-25T12:54:42" color="">}}

{{<matomeQuote body="これは現実的じゃないと思う。X.509はデファクトとデジュールの標準だけど、その要求を無視するところも多いし。証明書を簡単に交換できるのは、一連のベンダー全体の問題だからね。" userName="asmor" createdAt="2025-02-25T07:48:34" color="">}}

{{<matomeQuote body="企業はベンダーを選ぶ権利がある。もしベンダーが無能だったら、ダメージが出てからまた選び直すべきだ。Salesforceの事情があってもCA業界がそれに合わせる必要はないと思うよ。" userName="jeroenhd" createdAt="2025-02-25T08:13:11" color="">}}

{{<matomeQuote body="＞ Teamsには三億人が使っているけど、ほとんどの人がその体験を楽しんでいないと思う。時には与えられたものでうまくやらないといけないこともあるよね。" userName="asmor" createdAt="2025-02-25T09:46:49" color="">}}

{{<matomeQuote body="裁判所が廃止を妨げるのはどういうこと？ CAsは証明書を購入する時にその権利があるって言ってるじゃん。" userName="kevin_thibedeau" createdAt="2025-02-25T07:19:21" color="">}}

{{<matomeQuote body="この手法をどうやって防ぐかが重要だね。例えば、複数の異なる司法管轄を持つパーティが廃止を発行する必要があって、どれかが廃止しないように命じられたら他は必ず行うという仕組みがあればいい。" userName="AnthonyMouse" createdAt="2025-02-25T08:24:36" color="#785bff">}}

{{<matomeQuote body="まず、TROの動議に異議を唱えられるんだ。Digicertはそれをしなかった。ポリシーに従って24時間以内に証明書を廃止しとくべきだった。" userName="tadfisher" createdAt="2025-02-25T08:46:45" color="">}}

{{<matomeQuote body="訂正するけど、TROの請願はex parteで提出された。Digicertには反論する機会がなかった。もっと早い解決を優先したんだと思う。これは本当で、証明書は3日以内に廃止された。たしかに、コミュニケーション不足だった。" userName="tkfu" createdAt="2025-02-25T10:37:37" color="">}}

{{<matomeQuote body="＞『合法的な裁判所の命令に公然と反するの？』そう思うが、それが適切な行動だと思う。契約が明確なら、顧客が廃止を妨げる法的根拠はない。悪用している顧客相手でも、自分の契約に従うべきだよ。" userName="tristor" createdAt="2025-02-25T18:14:04" color="#45d325">}}

{{<matomeQuote body="土曜日で裁判所は休み。俺の駐車場に停めたお前の車を圧縮する権利があるのか？その看板があるから圧縮するけど、お前が合法性を争った場合どうする？" userName="michaelt" createdAt="2025-02-25T11:38:18" color="">}}

{{<matomeQuote body="それはお前の判断だ。圧縮しちゃって、後の結果に対応するかだ。似たように、これはここに当てはまる。" userName="nkrisc" createdAt="2025-02-25T12:02:27" color="">}}

{{<matomeQuote body="TROがあれば、お前は行動できない。それがポイント。裁判所は一時的に状況を決定している。" userName="hmmm-i-wonder" createdAt="2025-02-25T12:25:36" color="#ff33a1">}}

{{<matomeQuote body="駐車場の例にはTROがない。" userName="account42" createdAt="2025-02-25T15:14:40" color="">}}

{{<matomeQuote body="SectigoはComodoじゃないか。そこからの発言には驚くね。" userName="asmor" createdAt="2025-02-25T07:40:18" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Web PKIのドラマはホントびっくりするよね。企業が遊びすぎると、信任されたCAを簡単に潰せるから。でもDigiCertがこのゲームで負けたら、これまで最大の敗北者になるかも。もし世界最大のCAが信任ストアから外されるなんてなったら、強烈なメッセージになるし、混乱も広がるだろう。でもそれはあり得なくもないから、ワクワクするね。もちろん可能性は低いと思うけど、DigiCertの法律的な行動が自分たちをより悪く見せるのは間違いないよ。" userName="jchw" createdAt="2025-02-25T04:39:21" color="#45d325">}}

{{<matomeQuote body="もし世界最大のCAが信任ストアから外れたら、顧客はHonest Achmedに乗り換えざるを得ないだろうな。" userName="chicom_malware" createdAt="2025-02-25T04:58:17" color="">}}

{{<matomeQuote body="面白い笑いをありがとう！そのリクエスト、天才的だったね：＞２．第３者が運営するサブCA。Honest Achmedの叔父たちが友達を呼んで証明書を発行させるかもしれないな、特に従兄弟のRefikとAbdi、通称”RA”。Honest Achmedの叔父たちは、彼らのRAは信頼できるって言ってるけど、一度鍵を貸したときのことを思い出して！でもそれは一回だけで、もう二度と起こらないよ。" userName="bigfatfrock" createdAt="2025-02-25T15:14:18" color="">}}

{{<matomeQuote body="本当にちゃんとしたCAビジネスを始めるべきだよ、監査もすべてやって、ブラウザの信任ストアに入れるために。”Honest Achmedの中古車と証明書”って名付けて、中古車ディーラーを買収すれば嘘にはならないしね。こんなことをする億万長者のいたずらが必要だ！それに、もしその億万長者の名前が実際にAchmedだったら、もっと面白いよね。" userName="skissane" createdAt="2025-02-25T05:51:26" color="#785bff">}}

{{<matomeQuote body="なぜこれまで良い正当なCAの会社が出てこなかったんだろう？" userName="justahuman74" createdAt="2025-02-25T06:01:55" color="">}}

{{<matomeQuote body="価値はどこにあるの？誰でもLets Encryptから証明書を取得できるし、ウェブサイトのユーザーはCAの信頼性なんて気にしない。CAは大きすぎて潰れないから、信任ストアから外れる心配もほぼない。結局、価格でしか競争できないんだよ。これを変えるには、証明書を複数のCAに共同署名させる方法を作る必要があるよね。こうすれば、ユーザーはその証明書がどのCAから署名されたのか分かるから、CAの質が重要になるはずなんだ。" userName="rocqua" createdAt="2025-02-25T10:28:18" color="#ff33a1">}}

{{<matomeQuote body="TLS 1.3はエンドエンティティ（サーバー/クライアント）証明書を最初に要求すると思う。他の証明書はどんな順番でも良くて、検証は有効なパスを見つけるはずだ。でも現実的な経験から言うと、検証は署名が整ったチェーンを見つけるかもしれないけど、CAが信任ストアで失効したり expired だったら、そのチェーンは拒否されちゃう。おまけに、クライアントが受け入れるCAを特定するのが難しいんだ。" userName="toast0" createdAt="2025-02-25T14:34:21" color="">}}

{{<matomeQuote body="明白な解決策は、TLS 1.4にすべての証明書チェーンに少なくとも１つの失効した証明書を含めるように義務付けることだよ。" userName="o11c" createdAt="2025-02-26T07:01:02" color="">}}

{{<matomeQuote body="必要なのは時間とお金。今はインフラを買って、スタッフを雇い、監査を通過してAppleやMozilla、Google、Oracleの信任ストアに根証明書を含めてもらうのを待つのが現実なんだ。Microsoftはもう追加を受け付けてないから、いつになるか分からない未来を待つしかない。すでにあるCAからルートを買ったり、サブCAを買うこともできるけど、それも信任ストアの承認が必要だし、実際に運営を続けるためのスタッフとインフラも必要だよ。" userName="nickf" createdAt="2025-02-25T07:32:16" color="">}}

{{<matomeQuote body="Microsoftが新しいCAの追加を受け付けてないって、面白い情報だね。もっと詳しく読めるところはあるの？＞既存のCAからルートを買うこともできるよ、理論的にはクロス署名を持つ独立した２つのCAが存在できるけど、ブラウザがそれを実際にサポートしているのかどうかは疑問だな。" userName="skissane" createdAt="2025-02-25T08:13:50" color="">}}

{{<matomeQuote body="”特に指摘することはないけど”は多分正しいよ。ただここに公に記載されてることはあるね。<br>https://learn.microsoft.com/en-us/security/trusted-root/new-..." userName="zinekeller" createdAt="2025-02-25T12:40:45" color="">}}

{{<matomeQuote body="特に指摘できるものはない、ごめんね。サブCAは運営リスクが大きすぎて、現存のCAには出資してもらえない可能性が高いんだ。クロスサインもまだ使えるけど、金とCAの意欲が必要だよ。" userName="nickf" createdAt="2025-02-25T09:51:16" color="">}}

{{<matomeQuote body="Entrustはssl.comと一緒にやってたことがあるよ、格下げされた後ね。" userName="twisteriffic" createdAt="2025-02-28T00:25:27" color="">}}

{{<matomeQuote body="いや、SSLCorpはEntrustブランドのCAをホストして管理してるんだ。同じようにSectigoも。Entrust自体は発行や確認はしてなくて、ただホワイトラベルの発行CAからの再販してるだけ。" userName="nickf" createdAt="2025-02-28T07:41:30" color="">}}

{{<matomeQuote body="Let's Encryptは10年も続いてて、なかなか上手くいってるよ。EVとOV証明書の手動確認が求められるから、情熱的なプロジェクトではないかな。" userName="SpicyLemonZest" createdAt="2025-02-25T06:18:12" color="">}}

{{<matomeQuote body="Let's EncryptはEVとOVを発行してないよ。Honest Achmed’s Used Cars and Certificatesも同じ必要はないんだ。" userName="Thorrez" createdAt="2025-02-25T09:32:56" color="">}}

{{<matomeQuote body="Honest Achmed’s Used Cars and CertificatesがEVとOV証明書を発行しないとしたら面白くないよね。証明書市場の全セグメントを逃すのはブランドとしてもおかしい。" userName="boricj" createdAt="2025-02-25T14:15:39" color="">}}

{{<matomeQuote body="俺の理解では、Honest Achmedの目的は、表面的に合理的でコンプライアンスに合ったCAの追加リクエストを書くことが可能であることを示すことだった。それは、当時の政策をもっと厳格にする必要があることを示したんだ。" userName="woodruffw" createdAt="2025-02-25T06:03:38" color="">}}

{{<matomeQuote body="＞”もしインターネットで最大のCAが信頼ストアから削除されたら、強いメッセージを送り、たくさんの混乱を引き起こすだろう。”　でも、そうなる理由は特にないと思う。ワクワクするね。<br>信頼ストアやブラウザにはCAを削除する以外の選択肢もあるんだ。現実的なアプローチは、新しい証明書の発行を一定の日時以降に止めることだね。そうすれば、既存の顧客は事前に知らされるし、更新時に悪いニュースを発見する可能性が高いから。" userName="account42" createdAt="2025-02-25T15:20:41" color="#785bff">}}

{{<matomeQuote body="普段はあやふやな言い回しに隠れてる連中が、はっきり言ってくれる人にやられてるの見て気持ちいい。最近のDigiCertのスレッドは、Entrustの問題に似てる気がする。" userName="twisteriffic" createdAt="2025-02-25T04:54:34" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="特定の日以降に発行された証明書への信頼を無効にする方法はあるの？ 古い証明書はそのまま使える理想的な方法があればいい。" userName="axus" createdAt="2025-02-25T17:38:40" color="">}}

{{<matomeQuote body="以前、Symantecの時に同様のことがあったよ。" userName="duskwuff" createdAt="2025-02-25T17:46:00" color="">}}

{{<matomeQuote body="過去にも何度かやられてるけど、「X日以降に信頼しない」と「今信頼しない」のペナルティしかないのが現実。将来的には、CAが特定のTLDやドメインにのみ発行できるような制約が広まれば、問題のあるCAに対する罰になるかもしれない。" userName="wolrah" createdAt="2025-02-26T00:47:26" color="#38d3d3">}}

{{<matomeQuote body="自社のプライベートCAが特定のドメインだけにサインできるように「ルート」CAを追加できたらいいな。ローカルのためのプライベートCAも作れて、他のサイトに干渉される心配がなくなる。" userName="thayne" createdAt="2025-02-26T03:33:18" color="">}}

{{<matomeQuote body="絶対に賛成だし、ワイルドカード証明書よりも多くのケースで良い解決策になると思う。自分のドメインに対して名前制約された個人CA証明書が欲しい。" userName="wolrah" createdAt="2025-03-02T23:51:11" color="#45d325">}}

{{<matomeQuote body="最大のCAが信頼ストアから外されたら強いメッセージになるけど、果たしてそれに賛成する人がどれだけいるのか？" userName="userbinator" createdAt="2025-02-25T04:53:00" color="">}}

{{<matomeQuote body="普通の人はこの決定に対抗するためにブラウザやOSの更新を無効にはしないと思う。大半は何が起こってるのかも気にしないだろうし、セキュリティ基準を持つ企業も関係ない。" userName="jchw" createdAt="2025-02-25T05:07:01" color="">}}

{{<matomeQuote body="普通の人が更新を無効にするのは「立ち向かうため」じゃなくて「短期的に壊れないように」ってことだと思う。最近のWordPressの騒動みたいに。" userName="LegionMammal978" createdAt="2025-02-25T05:10:19" color="">}}

{{<matomeQuote body="CAが信頼ストアから外されるのは段階的で、期限を設けた証明書に限るようにすると良い。DigiCertは顧客に知らせる以外に手がないと思う。エラーが出ることでユーザーは大混乱するかも。" userName="jchw" createdAt="2025-02-25T05:44:07" color="#38d3d3">}}

{{<matomeQuote body="ユーザーの中には、恐れからCAを使い続ける人もいるだろうけど、DigiCertにお金を払ってる人は恐れから移動するだろうね。再発行できる訳のわからないサイトが、新しいエラーメッセージのためにお金を払うかどうかは微妙だ。" userName="snailmailstare" createdAt="2025-02-25T05:55:36" color="">}}

{{<matomeQuote body="普通の人たち、DigiCertの顧客の99％を占める、はこの決定に対して立ち向かうためにブラウザやOSの更新を止めたりしない。壊れたと気づかなければそうすることはないだろう。" userName="userbinator" createdAt="2025-02-25T06:59:27" color="#45d325">}}

{{<matomeQuote body="この政策が実現しない理由を無視すれば、すべてのデバイスがダウングレードできる訳じゃないし、その時には手遅れだ。最良の策はHSTSでない証明書の警告を回避することだ。DigiCertが信頼されない証明書を発行し続けるとは思えないけど、そうなると他のCAから証明書を売らざるを得なくなるか、発行をやめるだろう。" userName="jchw" createdAt="2025-02-25T12:39:40" color="">}}

{{<matomeQuote body="主にGoogle、Microsoft、Mozillaのことだね。彼らは好き勝手にできるわけじゃない。もし彼らがそれらを削除したら、自分たちを法廷で守る準備が必要だ。" userName="cortesoft" createdAt="2025-02-25T05:49:18" color="">}}

{{<matomeQuote body="証明書機関が信頼ストアに出現する法的権利を持っていると思っているの？" userName="jchw" createdAt="2025-02-25T05:58:31" color="">}}

{{<matomeQuote body="このケースは、どの証明書が信頼ストアに入るかを法廷が関与する話。DigiCertは証明書を取り消すなと法廷から命じられている。ブラウザがDigiCertを削除した場合、彼らはビジネスへの損害を理由に訴える可能性がある。不公平な競争だとも言えるが、勝てるかは別の話だ。" userName="cortesoft" createdAt="2025-02-25T17:00:54" color="#785bff">}}

{{<matomeQuote body="＞DigiCertは証明書を取り消すなと法廷から命じられている。<br>その通りだけど、DigiCertはその命令に対して控訴しなかった。" userName="SkiFire13" createdAt="2025-02-25T21:46:46" color="">}}

{{<matomeQuote body="本当にその主張が成立するのか？もし誰かがDigiCertに対してTROを守るための罰を与えたら、DigiCertは救済を求める権利があるかもしれない。裁判所が外部からの影響からDigiCertを守る可能性がある。" userName="saurik" createdAt="2025-02-25T08:41:59" color="">}}

{{<matomeQuote body="あの企業はいつでも法廷で自分たちを守る覚悟があるし、この国は表現の自由が強力だ。" userName="cjbprime" createdAt="2025-02-25T06:12:22" color="">}}

{{<matomeQuote body="多くのシステムはMozillaのルートストアからではなく、（おそらくDebian由来の）安定した配布版から更新を取得する。つまり、厳格なポリシーを持つ二者が合意しない限り、大きな破壊はない。そうなった場合、私は彼らが必要な行動を取ったと信じられるし、バグzillaに行って詳細を読むことで誰が問題を引き起こしたのかを笑える。" userName="edelbitter" createdAt="2025-02-25T05:15:55" color="#ff33a1">}}

{{<matomeQuote body="＞”実際のアンダースコアの理由は、DNSレコードをサブドメインで作成することを許可するサービス（動的DNSサービスなど）が、アンダースコアで始まるサブドメインの登録をブロックして、不要な証明書の発行から保護できるようにするためなんだ。それは、/.well-knownがウェブサイトへの合意形成の変更に対して果たす役割と同じだし、adminやadministrator、webmaster、hostmaster、postmasterがドメイン連絡先へのメールに対して果たす役割とも関連している。アンダースコアなしでDNSレコードを使うことで、DigiCertはこれらのサービスが前提としたセキュリティクリティカルな仮定を破ったんだ。だから、これは本当にセキュリティクリティカルなインシデントだ。”だから、DigiCertの証明書なんて信じられないかもね。" userName="DarkmSparks" createdAt="2025-02-25T07:53:31" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
