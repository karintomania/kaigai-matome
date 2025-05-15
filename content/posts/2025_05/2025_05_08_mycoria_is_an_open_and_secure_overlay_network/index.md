+++
date = '2025-05-08T00:00:00'
months = '2025/05'
draft = false
title = 'Mycoria オープンで安全なオーバーレイネットワーク 全ての参加者を繋ぐ'
tags = ["ネットワーク", "セキュリティ", "プライバシー", "P2P", "オープンソース"]
featureimage = 'thumbnails/blue_green1.jpg'
+++

> Mycoria オープンで安全なオーバーレイネットワーク 全ての参加者を繋ぐ

引用元：[https://news.ycombinator.com/item?id=43923372](https://news.ycombinator.com/item?id=43923372)




{{<matomeQuote body="作者だよー、投稿ありがとう！<br>HNのみんなにもっと背景情報ね。Safingで8年、SPN（VPNとTorの間）開発やってきたんだ。技術的にはすごかったんだけど、スケールが難しくて。<br>cjdnsとYggdrasilに触発され、去年の11月から Mycoria 開発始めたんだ。数ヶ月夜なべして MVP できたけど、今は開発止まってる。でも新しいプロジェクトで使うからこれから開発進めるよ！<br>だから、Mycoria は今 MVP で小規模なら動く感じ。<br>読んでくれてありがとう、試してみてね！質問もどうぞ！" userName="dhaavi" createdAt="2025/05/08 06:51:46" color="#38d3d3">}}




{{<matomeQuote body="すごい技術的な成果だね。<br>君にとって、VPNとTORの間のスイートスポットって何？そこでのトレードオフは何かな？" userName="tornadofart" createdAt="2025/05/08 06:56:13" color="#ff5733">}}




{{<matomeQuote body="Dhaaviさん、Mycoriaすごく promising で、NapsterやGnutella [1]みたいな初期の peer-to-peer システム思い出したよ。<br>カスタムの layer 4 transport [2] じゃなくて、layer 3 で使える標準ベースの segment routing を source routing サポートに使わなかった特別な理由はある？<br>セキュリティ分析には、検証のために BAN logic と ProVerif ツール [3], [4] を使った？" userName="teleforce" createdAt="2025/05/08 07:48:02" color="#ff33a1">}}




{{<matomeQuote body="今のシステム”全部”でTorを使いたいなら、ブラウザだけじゃなくね、それはまあ、頑張ってとしか言えないね。<br>VPNで本当に良いプライバシーを得たいなら、それもまあ、頑張ってとしか。（ベスト尽くす会社はごく少数だけど、技術的に限界あるんだ。）SPNはこれら両方の問題を解決しようとした僕の試みって見てもらえるかな。" userName="dhaavi" createdAt="2025/05/08 07:00:00" color="#ff5c5c">}}




{{<matomeQuote body="hashed key から IP へのコンセプト、Yggdrasilからのインスピレーション好きだよ。<br>地理的な部分はどうやって強制してるの？<br>トランスポートは何を使ってる？WireGuard？" userName="lifty" createdAt="2025/05/08 07:12:58" color="#ff5733">}}




{{<matomeQuote body="地理的な強制はないよ。でも間違った国を選ぶと、ルーティングが地域の層に”バケット分け”されてるから、パケットが届きにくくなる問題が出るね。ルーターは各バケットへの次のルートX個だけ持ってる。<br>トランスポートは source routing をサポートするためにカスタムなんだけど、インターフェース設定とかにWireGuardライブラリを使ってるよ。（Safing/SPNで暗号の経験あるし、監査で問題なかった。すごく慎重で標準に沿うようにしてるよ。）" userName="dhaavi" createdAt="2025/05/08 07:19:59" color="#785bff">}}




{{<matomeQuote body="じゃあ、トレードオフは何？<br>ある面ではVPNとTor両方より良いんだよね — でもどんな面で悪いの？" userName="nlitened" createdAt="2025/05/08 07:12:17" color="#ff5733">}}




{{<matomeQuote body="ごめん、ドキュメントから分からなかったんだけど：<br>ルーターの IPv6-like なアドレスは公開鍵のフィンガープリントなんだよね、でも geo-prefix と距離もエンコードされてる？（もしそうならアプローチが知りたいな）<br>それともルーターのアドレスにはメタデータはエンコードされてなくて、エンドユーザーのアドレスだけがこの方法でエンコードされてる？" userName="leobuskin" createdAt="2025/05/08 07:48:32" color="#38d3d3">}}




{{<matomeQuote body="まあ、真ん中だね：<br>VPNほど速くないし、Torほどプライベートじゃない。" userName="dhaavi" createdAt="2025/05/08 07:15:02" color="">}}




{{<matomeQuote body="Mycoriaって、目的のジオプレフィックスに合うまで公開鍵とIPのペアをブルートフォースしてるんだ。" userName="dhaavi" createdAt="2025/05/08 08:44:17" color="">}}




{{<matomeQuote body="すごいデザインだね！<br>帯域幅はタダで豊富って前提なのかな？ Mycoriaのルーターとか運営は大変だし、インセンティブやコミュニティが必要だと思うよ。Delft Universityの論文みたいにスケーリングは難しい問題だし、MVPについて弁護士とかに相談した？ 中央DNSだと”歓迎”だけじゃダメだよ。" userName="synctext" createdAt="2025/05/08 07:30:51" color="#45d325">}}




{{<matomeQuote body="国よりインターネットのPOPが多い都市の方がいいんじゃないかな？1. 自分で場所のリストを決められるし（BruneiじゃなくSingaporeみたいに）、2. みんな簡単に都市リストから選べるよ。3. 遅延テストで問題なくなるかも。4. 孤立した地域の接続も設定でわかる人が特定できるしね。" userName="irq-1" createdAt="2025/05/08 18:21:30" color="#ff5733">}}




{{<matomeQuote body="やあ Dhaavi、これすごいプロジェクトだしビジョンも最高だね。<br>でも、似たようなソリューションでいつも思うのは、商業的な側面を無視してるとこだな。みんなが使うほどプライバシーとか匿名性が上がるなら、参加のインセンティブ（お金かそうじゃないか）は考えた？インフラ提供者への匿名支払いとか、それが一番解決しなきゃいけない問題だと思うよ。" userName="notepad0x90" createdAt="2025/05/08 08:08:39" color="#45d325">}}




{{<matomeQuote body="地理的にエンコードされたアドレスとプライベートアドレスがどう動くのか、ちょっとわかんないんだよね。スイッチラベルを管理するのにネットワークがパンクしそうな気がするんだけど？" userName="dfc" createdAt="2025/05/08 10:35:53" color="">}}




{{<matomeQuote body="ありがとう！えっと、参加者それぞれが自分のサーバーとか帯域幅のコストを払うんだ。だから、僕的には、うん、帯域幅はタダで豊富。低帯域幅エリアでもちゃんと動くといいけどね。面白いね。その論文とか記事、リンクくれる？DNSは中央集権じゃないよ。みんなローカルにマッピングを持ってるんだ。<br>Mycoriaでサイト見る時は、まずマッピング作ってから転送する、こんなURLを開くんだよ: http://router.myco/open/speedtest.de.myco/fd13:6239:a07a:eb4..." userName="dhaavi" createdAt="2025/05/08 08:46:57" color="#ff33a1">}}




{{<matomeQuote body="”services:<br>- name: my-service # This is your service<br> url: ’http://my-service.myco/’ # For service listening on 0.0.0.0:80 <br> friends: truefriends:<br>- name: alice # This is your laptop<br> ip: fd1f:2cd5:6feb:7aa7:d674:1b3c:c82c:dfc”<br>”friend”じゃなくて”peer”を提案したいな。これは言葉狩りじゃなくて。インフラ層では”friend”みたいな言葉は使うべきじゃないと思うんだ。僕のデバイスは全部”peers”だよ。アプリケーション層でなら”friend”とかを使えばいいんじゃない？" userName="yubblegum" createdAt="2025/05/08 14:41:49" color="#ff5c5c">}}




{{<matomeQuote body="ってことは、MycoriaのIPアドレスとか鍵って、自分の地理的な場所の情報が漏れるってこと？" userName="atemerev" createdAt="2025/05/08 08:43:22" color="">}}




{{<matomeQuote body="接続スピードをテストして、このリスクを減らせるかも？ピアディスカバリはどう動くの？リージョンバケットはどこにあるの？" userName="evbogue" createdAt="2025/05/08 16:02:39" color="#ff33a1">}}




{{<matomeQuote body="PortmasterとかSPNはWindows時代は最高だったな！macOSにもああいうのがあればいいのにね。Private Relayはあるけど、Safariとか一部の純正アプリでしか動かないし、うまく動いてるか分かんないし、強制もできないんだよ。" userName="LoganDark" createdAt="2025/05/08 16:01:33" color="">}}




{{<matomeQuote body="ランディングページしか読んでないから、技術的なとこはまだぜんぜん分かんないんだ。I2Pと比べてどうなのか教えてくれない？" userName="mhitza" createdAt="2025/05/08 07:48:18" color="#785bff">}}




{{<matomeQuote body="Switch labelsはさ、サーバー上のインターフェースIDみたいなもんだから、保存するデータはないんだ。Geo encodingは、知らないルーターへの経路を良くするだけで、ネットワーク全体を支える土台みたいなイメージかな。" userName="dhaavi" createdAt="2025/05/08 12:24:53" color="">}}




{{<matomeQuote body="今は正直、楽しいプロジェクトなんだ。技術的なアイデアはあるけど、大きくしようとかは考えてないし、そういう気楽さが良いんだよね。ユーザーが増えればプライバシーは多少は良くなると思うけど、どのくらいかは分かんない。でも、将来自分の他のプロジェクトでこの技術を使うつもりだから、Mycoriaにも良い影響があるはずだよ。" userName="dhaavi" createdAt="2025/05/08 09:01:02" color="">}}




{{<matomeQuote body="＞ その論文か記事のリンク教えてよ？<br>君が質問した相手じゃないけど、たぶんこの記事のことじゃないかな？<br>https://arxiv.org/abs/1404.4818" userName="aspenmayer" createdAt="2025/05/08 11:55:07" color="#45d325">}}




{{<matomeQuote body="＞ WPはデータも管理方法も色々問題あるよね。<br>ほんとそれな。「Canceling Disputes」ってのを見てみてよ。<br>https://www.cambridge.org/core/services/aop-cambridge-core/c....<br>Wikiじゃない役立つリンクもいくつか貼っとくね。<br>Gnutella: https://computer.howstuffworks.com/file-sharing.htm<br>Segment routing: https://www.segment-routing.net/<br>BAN Logic: https://www.cdk5.net/security/Ed2/BANLogic.pdf<br>and ProVerif: https://bblanche.gitlabpages.inria.fr/proverif/" userName="kahicks" createdAt="2025/05/08 09:48:11" color="#785bff">}}




{{<matomeQuote body="今のインターネットと似たようなもんだよ、精度はちょっと低いけど、もっと安定してる感じかな。<br>詳しくはここ見てみて。<br>https://github.com/mycoria/mycoria/blob/master/m/geo_marker....<br>将来はさ、経路指定できないプライベートアドレスが必要な人も使えるようにする予定だよ。" userName="dhaavi" createdAt="2025/05/08 08:48:40" color="#ff5733">}}




{{<matomeQuote body="俺的にはさ、それって逆なんだよね。Wikiじゃないリンクは企業のブログとか、半分自動で作られたトラッカーだらけのサイトに飛ばされる気がするんだけど、WPは広く中立的な視点で、そこから色んなリンクを辿れるから信頼してるんだよ。" userName="rixed" createdAt="2025/05/08 11:48:50" color="">}}




{{<matomeQuote body="彼がシェアしたcambridgeのリンクみたいにさ、情報源の根拠がいっぱい書いてある、ちゃんとした記事だよ。" userName="lez" createdAt="2025/05/08 12:16:46" color="">}}




{{<matomeQuote body="技術的には好きなんだけど、分散型のやつに関わるのは不安なんだ。CPとかの共有を助けることになりそうでね。Tailscaleは”private”だけど、これは広いネットワークの一部になる感じだし。自分のノードでCPのトラフィック手伝うことになるのかな？" userName="mattlondon" createdAt="2025/05/08 10:16:50" color="">}}




{{<matomeQuote body="インターネットからプライバシーを全部なくすしかないね。でもそうしたってCPが起きるのを止められないよ。頑張ってね、Mr. Big Brother！" userName="lez" createdAt="2025/05/08 10:21:08" color="">}}




{{<matomeQuote body="誰かが違法なものを送るとき、自分のPCは関わるの？普通のネットユーザーとしては、いいえ。それは彼らの間で、法律も彼らだけが相手。特定の分散型匿名システムだと話は別。少なくとも法的な責任問題が出てくる。" userName="aethertron" createdAt="2025/05/08 16:26:29" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="TorのExitノードを動かしたことがない最大の理由だよ。CPとかの活動で連邦捜査官がIPアドレス調べに来るのが嫌なんだ。" userName="linsomniac" createdAt="2025/05/10 13:41:06" color="">}}




{{<matomeQuote body="何を作ったって、いつかは何か違法なことに使われるんだよ。じゃあ、Internetなんて発明されるべきじゃなかったってこと？手紙とか、Facebook、車、銃、ナイフ、農業だって同じでしょ…。" userName="lionkor" createdAt="2025/05/08 10:33:16" color="">}}




{{<matomeQuote body="ジレンマは技術があるかないかじゃなくて、匿名性があるかないかだよ。<br>匿名性は権威主義に対する保護になるけど、悪い傾向も助長するんだ。" userName="rixed" createdAt="2025/05/08 11:57:32" color="#785bff">}}




{{<matomeQuote body="@dhaavi、これすごくクールだね！cjdnsとかyggdrassilから学んだこと活かされてるのがわかるよ。細かいこと言うの気が引けるけど、このプロジェクト有望そうだから言わせて。FAQにあったジオマーク付きプレフィックスとアドレス距離ルーティングの話ね。IPv4とかで学んだ残念な教訓として、地理タグの上にポリシーを重ねるのが好きな人がいるんだ。ネットワークプレフィックスの地理認識はユーザーに不利に使われる可能性。もし避けたいならレイテンシー認識プレフィックスを推奨するよ。クールなプロジェクトだ。楽しみ！" userName="namecast" createdAt="2025/05/08 12:23:18" color="#38d3d3">}}




{{<matomeQuote body="フィードバックありがとう。プライベートアドレスでこれを解決したいんだ。これらは地域情報を持たず、ルーティングもされない。例えば、ランダムに生成されるから、地理的な場所には（簡単には）結びつけられないよ。" userName="dhaavi" createdAt="2025/05/08 12:31:55" color="#ff33a1">}}




{{<matomeQuote body="おお、いいね！もう考えてたんだね、よかった。プライベートアドレスと地域情報付きアドレスの割合は、どれくらいを考えてる？数が少ないと”悪い”って思われがちだけど、ある程度増えるとブロックしにくくなるよね。VPNアドレスの例みたいに。もしプライベートアドレスが十分にあって、それをブロックするとMycoriaが使えなくなるくらい重要になれば、地域情報付きは便利に、プライベートは匿名性確保に使える、いい解決策だと思うよ。適切な割合は難しい問題だよね。" userName="namecast" createdAt="2025/05/08 12:41:53" color="#ff5c5c">}}




{{<matomeQuote body="これ、すごい面白そうだね！ドキュメントも分かりやすい！<br>試してみたいんだけど、最初に思ったのは、Mycoriaはネットワーク上のノード全体を公開するの？それでポートとかへのアクセスを制限するためにファイアウォールが必要になる？<br>Yggdrasilだとこれが必要だから聞いてるんだ。リンクはこれね：<br>https：//yggdrasil-network.github.io/faq.html#will-my-machine..." userName="ramaro" createdAt="2025/05/08 06:29:55" color="#ff5733">}}




{{<matomeQuote body="Mycoriaはデフォルトで安全だから、設定はほとんど要らないよ。<br>デフォルトでは誰も君のデバイスにアクセスできない。設定の”services”のところで、自分で許可しないといけないんだ。" userName="dhaavi" createdAt="2025/05/08 06:56:48" color="#38d3d3">}}




{{<matomeQuote body="これってVeilid（https：//veilid.com/）とどう違うの？" userName="theknarf" createdAt="2025/05/08 11:28:27" color="#38d3d3">}}




{{<matomeQuote body="Veilidは初めて知ったよ。まずは読んでみないとね。教えてくれてありがとう！" userName="dhaavi" createdAt="2025/05/08 12:25:55" color="">}}




{{<matomeQuote body="Reticulum［0］はもう見た？Mycoriaのネットワーク層とはどのくらい重なる部分がある？<br>［0］： https：//github.com/markqvist/Reticulum" userName="9dev" createdAt="2025/05/08 07:50:08" color="#38d3d3">}}




{{<matomeQuote body="見たことはあると思うけど、ずいぶん前だな。後でちゃんと読んでみるよ！ありがとう！" userName="dhaavi" createdAt="2025/05/08 08:52:22" color="">}}




{{<matomeQuote body="私もReticulumとの違いにすごく興味ある。" userName="Ey7NFZ3P0nzAe" createdAt="2025/05/14 15:57:24" color="">}}




{{<matomeQuote body="もしかしたら全然理解できてないかもだけど、Mycoriaは公共インターネットのIPアドレスを隠そうとしてるの？設定の”iana”フィールドを見ると、これは目標じゃないみたいだし、基本的にはTailscaleみたいなもので、IPv6とグローバル名前空間を使ってるってこと？もしそうなら、”ルーティング”を強調する意味が分からないんだ。NATトラバーサルを使えば直接アクセスできるからね。Torの隠しサービスみたいにIPを隠そうとしてるなら、ルーティングスキームはまだ納得できないかな。ルートの選び方で情報が漏れそうだから。" userName="csande17" createdAt="2025/05/08 13:04:56" color="#ff5c5c">}}




{{<matomeQuote body="Mycoria は今のインターネットが完璧じゃなくても大丈夫なように作られてるんだ。今のネットが普通に動いてても、こういうオーバーレイネットワーク使うと接続良くなるって人も多いみたいだよ。<br>IANA に頼らないけど、ネットワーク構造を良くするのに使うんだ。" userName="dhaavi" createdAt="2025/05/12 07:48:25" color="#ff5733">}}




{{<matomeQuote body="これって zrok (https://zrok.io/) と比べてどうなの？試すの楽しみだけど、デフォルトだとプライベートじゃないっぽいのがちょっと心配だな。" userName="pidgeon_lover" createdAt="2025/05/09 09:06:02" color="">}}




{{<matomeQuote body="zrok が想定してる使い方なら、Mycoria も似てるよ。デフォルトで勝手にデバイスにアクセスされることはないから大丈夫。アクセスを許可するには、サービスを定義して「友達」（他のデバイス）を追加する必要があるんだ。" userName="dhaavi" createdAt="2025/05/12 07:43:14" color="">}}




{{<matomeQuote body="新しいもの作るなって言いたいわけじゃないんだけど、i2p みたいな既存のネットワークに貢献した方が、あなたの労力はもっと役に立つかもね。" userName="areyourllySorry" createdAt="2025/05/08 20:03:34" color="">}}




{{<matomeQuote body="i2p だけじゃなく、他にも同じようなプロジェクトは多いんだ。でも採用率が上がらず失敗したのは、デスクトップ市場の9割以上が Linux や BSD じゃないってことを見ないふりしてたから。Windows クライアントは適当だし、MacOS はほとんどサポートされてないんだ。" userName="KennyBlanken" createdAt="2025/05/08 20:58:36" color="#ff5c5c">}}




{{<matomeQuote body="僕がメンテナーの OpenZiti はオープンソースで、MacOS、iOS、Windows、Android、Linux 用のクライアントが高品質だよ (https://openziti.io/docs/learn/introduction/) 。zrok のプライベート接続の基盤で、wireguard ベースじゃないんだ。代替リストは https://github.com/anderspitman/awesome-tunneling に大量にあるよ。OpenZiti と zrok もそこにある。" userName="dovholuknf" createdAt="2025/05/12 11:10:39" color="#785bff">}}




{{<matomeQuote body="GFW みたいな DNS ポイズニングにはどう対処するの？ ( https://dl.acm.org/doi/10.1145/2994620.2994636 )" userName="thenthenthen" createdAt="2025/05/08 07:13:53" color="">}}




{{<matomeQuote body="DNS は中央集権じゃないんだ。みんなそれぞれローカルでマッピングを持ってるよ。<br>mycoria でウェブサイトにアクセスする時は、最初にマッピング作ってからそこに飛ばす URL を使うんだ。こんな感じ: http://router.myco/open/speedtest.de.myco/fd13:6239:a07a:eb4..." userName="dhaavi" createdAt="2025/05/08 08:40:34" color="#ff5733">}}




{{<matomeQuote body="めっちゃ面白いね。地理情報ベースのプレフィックスを使ったスケーラブルなルーティングとか、同じ国内でのパケットアドレス間の距離の扱いとか、読むのが楽しかったよ。" userName="elia_42" createdAt="2025/05/08 08:34:12" color="">}}




{{<matomeQuote body="これって平均の遅延どのくらいなの？I2Pで遊びでゲームサーバー動かしてたんだけど（Torだと600msだったのがI2Pで〜100msくらいだった）、Mycoriaはもっと速いのかなと思ってさ。" userName="OsrsNeedsf2P" createdAt="2025/05/08 07:56:56" color="#ff5c5c">}}




{{<matomeQuote body="かなり速いよ。特に自分の近くにサーバー置いて、そこに繋ぐ場合はね。" userName="dhaavi" createdAt="2025/05/08 12:37:55" color="">}}




{{<matomeQuote body="面白そうだね。理解したんだけど、これってネットにプライバシーとかネット中立性を上乗せする感じ？だからMycoriaユーザーとしか繋がれなくて、「インターネット全体」にはアクセスできないってこと？合ってる？<br>あと、使う側から見てわかんない点が：<br>・主な使い道は何？チャットとかデータ交換で使われてるアプリはあるの？<br>・yggdrasilみたいなのと何が違うの？<br>・VPNと何が違うの？" userName="tornadofart" createdAt="2025/05/08 06:51:20" color="#38d3d3">}}




{{<matomeQuote body="そうだよ、主な目的はMycoriaネットワーク内での接続。VPNでやるようなことは大体できて、デフォルトでファイアウォール内蔵とか、設定がめっちゃ簡単で安全なんだ。自分で公開したサービスだけがアクセスされて、基本は何もアクセスされないよ。将来はプライバシーも強化するかも。ユーザーから見た一番の違いは、設定がほぼいらないことかな（インストーラーがあれば）。" userName="dhaavi" createdAt="2025/05/08 06:54:38" color="#785bff">}}




{{<matomeQuote body="Mycoriaのノードは全部一つの巨大なネットワークになるよ。VPNのPNは「private network」だから、普通のVPNと全部同じことはできないかな。どのノードもmDNS discoveryで僕のノードを見つけられて、公開してるサービスにはアクセスできる。サービスは、信頼できる数ノードだけのプライベートネットワークみたいじゃなくて、普通のインターネットと同じくらい安全にする必要があるね。そうは言っても、VPNの設定が面倒な多くの場面でこれは役に立つと思う。固定IPがないノードからサービスを公開するのは簡単になるよ。" userName="WhyNotHugo" createdAt="2025/05/08 10:08:29" color="#45d325">}}




{{<matomeQuote body="Mycoriaはデフォルトで安全だよ：統合ファイアウォールがあって、明示的に許可したアドレスか、オプションでネットワーク内の誰からだけアクセスできるようになってるんだ。あと、Mycoriaではマルチキャストは完全に無効だよ。" userName="dhaavi" createdAt="2025/05/08 12:18:12" color="#38d3d3">}}




{{<matomeQuote body="＞VPNでやるようなことはだいたい何でもできるけど、設定がめっちゃ簡単<br>設定の簡単さって、僕が今まで使った中で最高のVPNソフト、Wireguardの特徴でもあるんだけどね。" userName="gspr" createdAt="2025/05/08 07:00:58" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Wireguardはその用途には本当に最高だよ！Mycoriaは参加者同士を繋ぐのが目的。例えば、君と友達が自宅サーバーを持ってて、お互いのサーバーに繋ぎたいとする。Mycoriaなら超簡単。新しい友達にMycoria入れてもらって、設定の友達リストに追加して、アクセス用URLあげるだけ。はい、できた！あとMycoriaは自動メッシュネットワークだけど、Wireguardは固定ピア設定が必要なんだ。" userName="dhaavi" createdAt="2025/05/08 07:08:10" color="#785bff">}}




{{<matomeQuote body="＞Wireguard requires a fixed set of peers you configure<br>そうじゃないよ。実行中にいくらでもピアは追加できるんだ（数の上限はあると思うけど）。固定じゃないよ。Tailscaleみたいな製品はそうじゃないと作れないでしょ？" userName="ignoramous" createdAt="2025/05/08 09:21:22" color="#ff5733">}}




{{<matomeQuote body="Wireguardネットワークからピアをその場で追加したり削除したりは確かにできるよ。自分でやる必要があることで、Wireguardが自動でやってくれるツールはないから、そこが違いかな :)" userName="gspr" createdAt="2025/05/08 07:59:17" color="">}}




{{<matomeQuote body="俺はTailscale使ってて、Web画面から友達を招待して俺のいろんなサーバーに繋いでもらってるよ。" userName="unixhero" createdAt="2025/05/08 11:48:20" color="">}}




{{<matomeQuote body="ちょっと違わない？<br>VPNってインターネットの何かにアクセスする時にプライバシーを作る（ようなもの）でしょ。<br>でもMycoriaに繋がってないものにはアクセスできないんでしょ？Netflixみたいなものに繋ぎたいなら、Mycoriaのリバースプロキシサーバーみたいなのがいるの？" userName="tornadofart" createdAt="2025/05/08 07:01:29" color="#785bff">}}




{{<matomeQuote body="VPNプロバイダーって言われてるサービスは、実際はユーザーと彼らのネットワークのノードの間に小さなVPNを作って、そこを経由して通信させるっていう、すごく限られた形のVPNを売ってるだけなんだ。<br>secure (two-way) proxy serviceって呼ぶ方が正しいんだけど、VPNって名前になっちゃって定着したんだね。<br>Mycoriaは basically VPNの教科書通りの定義だよ。" userName="tinco" createdAt="2025/05/08 07:22:23" color="#ff5733">}}




{{<matomeQuote body="＞A VPN is used to create (the illusion of) privacy when accessing anything on the internet.<br>そうじゃないよ。最近の”VPN”製品はそう位置づけてるのもあるけど、伝統的には physically connectedされてないコンピューター同士を private LANみたいに見せる方法だったんだ（だからその名前）。" userName="lmm" createdAt="2025/05/08 07:17:56" color="#ff5c5c">}}




{{<matomeQuote body="ほとんどの一般の人にとって、VPNってリモートワークか、国で禁止されてるコンテンツへのアクセスに使うものだと思うんだよね。<br>Mycoriaはネットワーク効果にかなり頼ってるって教えてもらったんだけど、他のノードが使ってないと意味ないんだ。<br>だからinformed laypersonの視点が大事なんだよ。だから「 dumbing it down 」にこだわってるんだ:D" userName="tornadofart" createdAt="2025/05/08 07:24:40" color="">}}




{{<matomeQuote body="一般の人向けには VPLANとか VPWANって言葉がいいかも？でも WAN知らないかも。<br>LANなら知ってるかもだけど VLANと間違えそうだし。<br>名前って難しいよね。<br>個人的には Mycoriaは global tailnet、つまりTailscaleのVPNに似てると思うな。" userName="Jarwain" createdAt="2025/05/08 07:54:52" color="">}}




{{<matomeQuote body="あと、今のところ Mycoriaは” darknet services ”を作る選択肢にはなりうるけど、 privacyの面は tor と比べたらまだイマイチなんじゃないかな？" userName="Jarwain" createdAt="2025/05/08 08:02:15" color="">}}




{{<matomeQuote body="君のVPNの定義、最近の消費者による誤用だと思うな。VPNはVirtual Private Networkのこと。歴史的には、別のネットワーク上で分離・暗号化された通信を通すやり方で、大体別のプライベートネットワークとかに入るために使われたよ。Mycoriaってまさにそれじゃん。プロトコル的には消費者向けVPNも昔からの使ってるけど、実際は安全なプロキシとして使われてる感じだよ。" userName="bdavbdav" createdAt="2025/05/08 16:39:46" color="#ff5733">}}




{{<matomeQuote body="うん、Mycoriaは基本的にネットワーク参加者同士の接続のためだよ。例えば、固定IPなしで自宅サーバーにアクセスしたり、リモートチームがあちこちのサーバーに繋いだりね。<br>オープンメッシュネットワークでも、他の参加者からプライバシーは欲しいでしょ。<br>Mycoriaは将来Tailscaleみたいな出口ノードを持つかもだけど、例えばSPNみたいな多数の出口があるシステムにはならないだろうね。" userName="dhaavi" createdAt="2025/05/08 07:04:24" color="#38d3d3">}}




{{<matomeQuote body="なるほど、使えるのはこの2つってことね。会社がリモートワーク用のVPNをMycoriaに替えて、セキュリティと管理を良くする。<br>あと、自宅ネットワークに設定して、例えばNASとかに安全にアクセスする。<br>『匿名で公開ページにアクセスしたい』ってユースケースは、やっぱりVPNかTORが必要ってことだね。" userName="tornadofart" createdAt="2025/05/08 07:09:57" color="#785bff">}}




{{<matomeQuote body="理解確認させて。会社がVPNをMycoriaに替える時、アクセス制限は全部ファイアウォール頼りなの？ 技術的には全部繋がるけどファイアウォールで制限されるってこと？ Firewalで分割するTailscaleみたいな感じ？ TorとVPNの中間ってのも合ってると思う。" userName="Jarwain" createdAt="2025/05/08 08:00:45" color="#ff33a1">}}




{{<matomeQuote body="うん、その通りだよ。<br>Mycoriaには統合ファイアウォールがあるからね。会社のデバイスが他の会社の通信を手伝って、障害時とかに強くなるって効果もあるよ。<br>ネットワーク間のブリッジ構築も計画してる。" userName="dhaavi" createdAt="2025/05/08 12:20:26" color="#ff5733">}}




{{<matomeQuote body="VPNとか他の分散サービスにはあんまり詳しくないんだ。<br>これって自宅サーバーに外からアクセスするために使えるの？ VPNとかリバースプロキシなしで？<br>なんか『5歳児に説明して』バージョンだと、自宅でMinecraftサーバー立てて友達と遊べるかってことなんだけど。" userName="TeeMassive" createdAt="2025/05/08 19:01:12" color="">}}




{{<matomeQuote body="これってTailscaleみたいな感じ？" userName="dgrr19" createdAt="2025/05/08 08:12:33" color="">}}




{{<matomeQuote body="結構似てる部分多いよ。コア機能なら代替として使えるね。" userName="dhaavi" createdAt="2025/05/08 08:22:38" color="">}}




{{<matomeQuote body="TailscaleにできてMycoriaにはできないこと、その逆の例とかない？ 違いをもっと知りたいんだけど。:-）" userName="palata" createdAt="2025/05/08 08:40:09" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
