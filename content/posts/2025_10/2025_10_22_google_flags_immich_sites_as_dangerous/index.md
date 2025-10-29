+++
date = '2025-10-22T00:00:00'
months = '2025/10'
draft = false
title = 'GoogleがImmichサイトを危険認定！一体何が問題なのか？'
tags = ["Google", "Webセキュリティ", "ドメイン", "Webサービス", "ブラウザ"]
featureimage = 'thumbnails/orange1.jpg'
+++

> GoogleがImmichサイトを危険認定！一体何が問題なのか？

引用元：[https://news.ycombinator.com/item?id=45675015](https://news.ycombinator.com/item?id=45675015)




{{<matomeQuote body="サブドメインでユーザーコンテンツをホストするなら、Public Suffix List (https://publicsuffix.org/list/) にサイトを登録すべきだよ。そうすれば、汚染されたサブドメインがサイト全体を汚染しないってことを、いろんなサービスが認識できるようになるはず。" userName="arccy" createdAt="2025/10/22 23:30:24" color="#ff33a1">}}




{{<matomeQuote body="昔はブラウザがトップレベルドメイン用のクッキー設定を拒否してたけど、co.ukみたいな第三レベル登録のみのドメインには対応できなかったんだ。アルゴリズムで最高レベルのドメインを見つける方法がないから、Public Suffix List (https://publicsuffix.org/learn/) っていう静的リストを作ったんだよ。ウェブブラウザが欠陥だらけだと気づいて、こんな解決策になったんだから、ホントにウェブはダクトテープで作った車みたいで嫌になるね。" userName="0xbadcafebee" createdAt="2025/10/23 02:02:11" color="#ff33a1">}}




{{<matomeQuote body="「ダクトテープで作った車みたいなもの」ってのは、まあそうかもね。でも、もっと良い案でもあるの？" userName="lukan" createdAt="2025/10/23 02:16:42" color="">}}




{{<matomeQuote body="問題の一部は、ブラウザが肥大化して何でもありのプログラムになっちゃってることだと僕は思うよ。90%くらいを専用ツールにすれば、ずっと健全で安全になるし、実用上ほとんど能力も落ちないはず。なのに、僕らは今日のウェブっていうひどいレイヤーケーキを、時々役立つかどうかも怪しいセキュリティ対策で飾り立てることに賛成しちゃってる。ただの愚痴だけどね。" userName="gmueckl" createdAt="2025/10/23 02:25:24" color="">}}




{{<matomeQuote body="「90%を専用ツールに」って言っても、それじゃあプラットフォーム非依存性っていう、このひどいものの最大の売りを失っちゃうよ。何十億ものデバイスで動くサンドボックス内のAPIはすごく強力だし、HTMLの後継になるならそれを上回る必要がある。僕が思う一番良いのは、まともなサブセットが固まって、みんながそれを使うようになって、残りはレガシーとして維持されることかな。大学の頃からウェブの書き換えを夢見てるけど、今はもっと現実的になって、信頼できる人間同士のコミュニケーションを解決するって問題の巨大さがわかったよ。現実世界では簡単じゃないね。" userName="lukan" createdAt="2025/10/23 02:59:51" color="#ff5c5c">}}




{{<matomeQuote body="ユーザー生成コンテンツをホストするならPSL (Public Suffix List) に載せるべきだってのは、Web開発者にとっては一種の暗黙の了解みたいなものだと思うよ。そうしないと、Immichみたいになっちゃう。でも、この問題にぶつかったことがない人が、どうやって事前に知ればいいんだろうね？ 実際に経験しないとわからないことの一つだよね。" userName="CaptainOfCoit" createdAt="2025/10/23 01:08:59" color="">}}




{{<matomeQuote body="でもさ、例えばシリアルポートとかraw USBアクセスとかが、いきなり適当なウェブサイトから必要なのかな？ WebRTCだってちょっとやりすぎだよね。今のブラウザには、攻撃対象を増やすだけでほとんど役に立たないガラクタがたくさんあるよ。こういうのが、ブラウザに大きな標的が描かれているせいで、どんどん付け焼き刃の保護スキームを生み出す必要性を生んでるんだ。" userName="gmueckl" createdAt="2025/10/23 03:20:11" color="">}}




{{<matomeQuote body="根本原因はGoogleのひどい振る舞いだよ。これは単なる一時的な解決策に過ぎないんだ。" userName="LennyHenrysNuts" createdAt="2025/10/23 01:42:06" color="">}}




{{<matomeQuote body="Immichの問題は二つあるな。一つはPublic Suffix Listに載ってないこと。もう一つは、Immichみたいに自己ホスト型のオープンソースプロジェクトが、公式サイトと似てるせいでフィッシング扱いされることだ。前者は対処できるけど、後者はどうしたらいいか分かんねえな。<br>immich.example.com" userName="thayne" createdAt="2025/10/23 03:05:36" color="#ff5c5c">}}




{{<matomeQuote body="ダクトテープで繋ぎ合わせてないプラットフォームなんて、誰も使わねーよ。" userName="modeless" createdAt="2025/10/23 04:24:18" color="">}}




{{<matomeQuote body="ドメイン登録の最高レベルを見つけるアルゴリズムがないから、Public Suffix Listみたいな集中型リストが必要ってのはおかしいな。リストが膨大になるし、セキュリティリスクもある。<br>.well-knownディレクトリとかDNSのTXTレコードを使って、分散型にできないもんかな？<br>https://b.a.x/.well-known/public-suffix" userName="KronisLV" createdAt="2025/10/23 06:47:20" color="#45d325">}}




{{<matomeQuote body="ホンダ車で、特定のラジオ局に設定したらインフォテインメントシステムが壊れる問題があったけど、あれで十分か？" userName="MonaroVXR" createdAt="2025/10/23 05:34:04" color="">}}




{{<matomeQuote body="これってスキル不足ってこと？それともGoogleが悪いの？" userName="tonyhart7" createdAt="2025/10/23 01:39:33" color="">}}




{{<matomeQuote body="Googleが悪役、いや邪悪だね。90年代から2010年頃のGoogleとは全然違う。彼らが「Don’t be evil」を外した理由は、邪悪で権威的になった方が儲かるからだよ。Manifest V2のことも忘れるな。" userName="yndoendo" createdAt="2025/10/23 02:15:46" color="#ff33a1">}}




{{<matomeQuote body="インターネットが特別なリストで動くべきじゃないと思う。Google Chromeを使うべきじゃないし、FirefoxもGoogleのリストを使うべきじゃない。もし「安全なサイト」リストが必要なら、それは巨大な邪悪な企業じゃなくて、非営利団体がやるべきだよ。<br>A) google-chromeは使うべきじゃない<br>B) Firefoxもそのリストを使うべきじゃない<br>C) 「安全なサイト」リストは非営利団体が運営すべき" userName="smaudet" createdAt="2025/10/23 03:15:44" color="#38d3d3">}}




{{<matomeQuote body="いや、それじゃ十分じゃないね。車はまだ走るんでしょ？あれはソフトウェアのバグだよ。車全体がダクトテープで出来てるってことにはならないけど、かなりひどいバグではあるな。" userName="alias_neo" createdAt="2025/10/23 08:21:05" color="#ff33a1">}}




{{<matomeQuote body="じゃあ、コントローラーで操作できるブラウザゲームはどうやって作るんだよ？" userName="shadowgovt" createdAt="2025/10/23 03:22:13" color="">}}




{{<matomeQuote body="Googleが危ないサイトを認定する世界的な権威じゃないって意見だね。ブラウザの警告は誤解を招くし、企業の名誉や売り上げを傷つける可能性もある。国際的なウェブなのに視野が狭すぎるってことだ。こんなのはありえない。" userName="BartjeD" createdAt="2025/10/23 06:55:28" color="#ff33a1">}}




{{<matomeQuote body="問題はユーザーがホストしてるコンテンツじゃなくて、俺が自分のサーバーでImmichのリリースビルドを動かしてたら、Googleが俺のドメイン全体を危険認定したんだ。" userName="david_van_loon" createdAt="2025/10/23 02:59:10" color="">}}




{{<matomeQuote body="WebRTCはビジネスや個人間のビデオ会議に必要だし、WebUSBはIoTデバイスのフラッシュとかStadiaコントローラーを汎用Bluetooth/USBにするのに役立つ。ブラウザは現代のExcelみたいなもんで、人によって必要な機能は違う。多機能すぎるって文句言う人もいるけど、誰にとっても違う20％が必要なんだよ。" userName="sofixa" createdAt="2025/10/23 07:43:40" color="#785bff">}}




{{<matomeQuote body="悪魔に同情するような話だけど、みんなGoogleのブラウザを使い続けるのは、セーフサーチがいいサイトを誤検知するより、悪質なサイトを見つけてくれることの方が多いからなんだよ。" userName="shadowgovt" createdAt="2025/10/23 03:15:38" color="">}}




{{<matomeQuote body="俺はこの業界で15年以上やってるけど、public suffix listなんて初めて聞いたよ。新しいことを学ぶのは楽しいけどね。他のベストプラクティスは知ってるんだけどさ。" userName="no_wizard" createdAt="2025/10/23 01:33:17" color="">}}




{{<matomeQuote body="俺が知る限り、現状これを管轄する国際的な代替機関はない。だから、理想的じゃないけど、警告がないよりはマシだろ。" userName="jtwaleson" createdAt="2025/10/23 07:00:29" color="">}}




{{<matomeQuote body="逆に聞くけど、どうしてブラウザにこんなセキュリティホールが必要なんだ？Stadiaフラッシャーがいい例だけど、悪意あるウェブサイトが俺の接続デバイスを乗っ取ろうとする「マルウェア」に変えたりしないって、どうやってわかるんだよ？" userName="gmueckl" createdAt="2025/10/23 16:33:28" color="#785bff">}}




{{<matomeQuote body="ブラウザが肥大化した「なんでもできるプログラム」になったのが問題だって意見だけど、PSLが解決しようとする問題とは関係ないと思うな。俺は2007年に無料で使えるCPanelサーバーでNeopetsのフィッシングページをホストしてたけど、あの頃のブラウザは今よりずっと機能が少なかったんだから。" userName="nemothekid" createdAt="2025/10/23 03:02:26" color="#45d325">}}




{{<matomeQuote body="危険なサイトを特定するのに、サイト自身が信頼できるって言うのはダメだし、サブドメインをコロコロ変えるのも意味ないよな。そもそもサイトを信用しない前提で、危険かどうか推測するしかないんじゃない？" userName="IanCal" createdAt="2025/10/23 08:47:09" color="">}}




{{<matomeQuote body="クッキーってさ、ドメインじゃなくて暗号鍵ペアに紐付けるべきじゃない？クライアントとサーバー間で鍵ペア使えば、セキュリティもプライバシーもバッチリだし、ドメインに縛られなくなるんだよ。2分で思いついたけど、今のやり方よりずっとマシだよな！" userName="0xbadcafebee" createdAt="2025/10/23 22:44:20" color="#ff5c5c">}}




{{<matomeQuote body="テスト環境はさ、本番ドメインのサブドメインにするのやめとけって！メールの評判にも影響出るし、クッキー地獄になるぞ。ちゃんと管理しないと、本番環境のクッキーが大量に流れ込んじゃう可能性もあるしな。" userName="mads_quist" createdAt="2025/10/23 06:27:17" color="">}}




{{<matomeQuote body="おいおい、みんなGoogleを悪者にしてるけど、これはImmich側の問題も大きいだろ。Immichチームの記事は責任転嫁ばっかりで、自分たちの問題だって認めてない感じがするんだよな。" userName="lucideer" createdAt="2025/10/23 08:43:31" color="">}}




{{<matomeQuote body="家に鍵かけてなくても泥棒の責任は変わらないだろ？それと同じで、システムが悪用されたら、作った組織の責任は免れないってことだ。サイト側がドメインの使い方を制限するんじゃなくて、Googleが誤検知の責任を負うべきだよな。" userName="Gormo" createdAt="2025/10/23 12:10:22" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これ、誤検知じゃないって！Googleがフラグ付けしたのは正当な理由があるんだよ。Chromeの警告はちょっと大げさだけど、APIサービスとしては間違ってない。鍵をかけ忘れて盗まれたら、鍵をかけなかったお前も悪いって言われるだろ？" userName="lucideer" createdAt="2025/10/23 13:55:06" color="#785bff">}}




{{<matomeQuote body="開発環境は別のドメインでやるべきだけど、Googleはプレビュー環境をブロックしちゃダメだよな。両方とも問題だろ。" userName="kevincox" createdAt="2025/10/23 10:39:08" color="">}}




{{<matomeQuote body="「Googleのフラグ付けは正当だ」って言うけど、Immichチームは内部ブランチからのPRsでしか使ってないって言ってるんだ。開発者が悪意のあるものを公開しない限り、Googleが間違ってるってことにならないか？https://news.ycombinator.com/item?id=45681230" userName="CaptainOfCoit" createdAt="2025/10/23 16:35:01" color="#ff5c5c">}}




{{<matomeQuote body="セーフブラウジングサービスって必要だよな。Googleが独占してるのはちょっと嫌だけど、公開されてて危険な可能性があるプレビュー環境は、ブロックされるべきなんだよ。" userName="lucideer" createdAt="2025/10/23 11:05:07" color="">}}




{{<matomeQuote body="Googleがフラグ付けした正当な理由って知ってる？記事を見る限り、他のサイトも同じようなことやってるって言い訳ばっかりで、納得できる理由が見当たらないんだけどな。" userName="marcosdumay" createdAt="2025/10/23 17:39:30" color="">}}




{{<matomeQuote body="PRは誰でも送れるし、Immichの協力者がラベルを貼ればデプロイされちゃうんだ。でも、コードのレビューや承認は必須じゃないみたいだよ。" userName="lucideer" createdAt="2025/10/23 19:52:31" color="">}}




{{<matomeQuote body="なんでサブドメインだけじゃなくてドメイン全体をブロックするんだろうね？サブドメインの管理者とドメインの管理者が違うってこと、考えられないのかな？" userName="sureglymop" createdAt="2025/10/23 12:56:21" color="">}}




{{<matomeQuote body="記事の「誤検知ではない」って話、どこから来たの？Immichドメインで悪質な活動があった証拠はないよ。Googleの検出は統計的な相関関係に基づくものだけど、目的変数がなければ「誤検知」だろ。Googleは確認されてない推測で活動を邪魔してる。ドアを閉めなかったからって泥棒が許されるわけじゃないし、Googleの行動はやっぱりおかしいよ。" userName="Gormo" createdAt="2025/10/23 15:53:18" color="#38d3d3">}}




{{<matomeQuote body="Googleが正当な理由でフラグを付けたって？でも、なんでサブドメインじゃなくてドメイン全体なんだろうね？" userName="MetaWhirledPeas" createdAt="2025/10/23 14:44:44" color="">}}




{{<matomeQuote body="immich.appってプロダクションドメインじゃないかな？cloudじゃない気がするんだけど。" userName="bcye" createdAt="2025/10/23 09:48:57" color="">}}




{{<matomeQuote body="「目的変数がなければ誤検知」って意見だけど、ユーザーが生成するコンテンツのあるサブドメインで、MozillaのPublic Suffix Listにないドメインっていう目的変数はちゃんとあるんだよ。Immichもそれを認めて、新しいドメインに移行中だしね。あと、「ドアをロックしなかったからって泥棒が許されるわけじゃない」って言われたけど、俺は単に家の人の怠慢だって言っただけ。泥棒を正当化したわけじゃないよ。Googleがこのたとえ話にどう当てはまるのか、ちょっと混乱してるな。" userName="lucideer" createdAt="2025/10/23 19:49:51" color="#ff5c5c">}}




{{<matomeQuote body="どのサブドメインのこと？" userName="lucideer" createdAt="2025/10/23 19:55:56" color="">}}




{{<matomeQuote body="正当な理由ね。Immichドメインが、ユーザーが生成したアクティブなコンテンツがあるって正確に分類されたからだよ。ImmichのGitHubリポジトリでは、誰でもPRでコードを送れるし、レビューや承認なしでドメインに自動デプロイされちゃう。ユーザー生成のコンテンツがあるドメインは、普通MozillaのPublic Suffix Listに載せるべきで、FirefoxやChromeはそれを見て、ユーザーを守るためにもっと厳しいセキュリティ設定を自動で適用するんだ。" userName="lucideer" createdAt="2025/10/23 19:55:27" color="#ff5c5c">}}




{{<matomeQuote body="「ユーザーが生成したアクティブコンテンツと分類された」って？それは違うよ。「PRがレビューや承認なしで自動デプロイされる」って？それも違うね。これらのドメインには、信頼できないユーザーコンテンツなんて一切ないんだから。" userName="bo0tzz" createdAt="2025/10/24 09:38:50" color="#ff5c5c">}}




{{<matomeQuote body="そうだよ、でもそのPRに悪意のあるコードが含まれてない限り、ドメインを危険だとマークすべきじゃない。<br>性善説でいくべきで、その逆は違うだろ。" userName="krzyk" createdAt="2025/10/24 05:29:22" color="">}}




{{<matomeQuote body="このスレッドの他のコメントでも言ったけど、プレビュー機能は内部のPRに対してしか動かないんだ。<br>信用できないPRはデプロイされることなんて絶対にないよ。" userName="bo0tzz" createdAt="2025/10/24 09:37:59" color="#ff33a1">}}




{{<matomeQuote body="どのサブドメイン？<br>はっきり言うと、問題は一部のサブドメインが全体ドメインにリスクをもたらすってことなんだ。<br>どれか一つにアクセスすると、他のサブドメインからのリスクも増えちゃう。<br>これはGitHubのワークフローが要求に応じて新しいサブドメインを自動生成するから、既知のサブドメインの固定リストを持つのは不可能ってことにも関係してる。" userName="lucideer" createdAt="2025/10/23 13:58:09" color="#ff33a1">}}




{{<matomeQuote body="それこそがPublic Suffix Listの出番だろ。" userName="justusthane" createdAt="2025/10/23 14:14:18" color="">}}




{{<matomeQuote body="ウェブ上で最も悪意のある行動の源泉かもしれない私企業が、何が安全かを恣意的に決定するのは最悪のアイデアだよ。" userName="account42" createdAt="2025/10/24 10:46:29" color="">}}




{{<matomeQuote body="Googleはもっとうまくやれるだろうけど、誰がGoogleをウェブセキュリティの”チーフ”に任命したんだ？<br>Googleなんてとっとと消え失せろ。" userName="a456463" createdAt="2025/10/23 16:56:32" color="">}}




{{<matomeQuote body="もしチームの開発者の一人がそのシステムを通して悪意のあるものを公開したとしたら、Googleの危険認定どころじゃない、もっと大きな問題になるだろうね。" userName="bo0tzz" createdAt="2025/10/23 18:10:30" color="">}}




{{<matomeQuote body="俺のコメント、ちょっと厳しかったかも。Immichチームは本当に素晴らしいし、俺は満足してる。<br>記事のトーンへの批判は、俺の無知からきたものだと思う。<br>オープンソースプロジェクトの維持は感謝されにくい仕事だし、こういう状況で冷笑的になるのは理解できる。<br>ただ、知識のギャップが埋まって、いつか記事の記述が修正されることを願ってるよ。" userName="lucideer" createdAt="2025/10/23 09:40:30" color="#45d325">}}




{{<matomeQuote body="みんなImmichを自分でホストするとGoogleから危険認定されてるみたいだね。記事で言ってる問題はまだマシな方だよ。" userName="breakingcups" createdAt="2025/10/23 15:10:48" color="">}}




{{<matomeQuote body="Googleが言ってるターゲットって、Mozillaの公開サフィックスリストにないドメインのサブドメインにあるユーザーホストコンテンツのことじゃなくて、「悪意のあるウェブサイト」自体がターゲットなんだよ。前のやつは指標にすぎない。" userName="Gormo" createdAt="2025/10/23 22:22:10" color="">}}




{{<matomeQuote body=".cloudはWebアプリの地図をホストしてるんだって。今んとこ認証不要だからセッションのリスクはないけど、フィッシングとデプロイ環境の認証情報には気をつけた方がいいかもね。" userName="lucideer" createdAt="2025/10/23 10:48:08" color="">}}




{{<matomeQuote body="Googleの警告って、直接「詐欺師」とか「攻撃者」って呼んでるじゃん。これ、名誉毀損にならないのがマジで謎。Microsoftもそうだけど、昔は「安全か不明」だったのに、今は断言しすぎだろ。" userName="jdsully" createdAt="2025/10/23 01:39:46" color="#45d325">}}




{{<matomeQuote body="「詐欺師」とは言ってないし、「攻撃者」って言ってるけど「かもしれない」だよ。「サイトを乗っ取った第三者のハッカーも含む」って意味だよ。サイトの持ち主が攻撃者とは言ってない。Googleの弁護士が言葉をしっかり選んでるから大丈夫でしょ。" userName="crazygringo" createdAt="2025/10/23 02:41:58" color="#785bff">}}




{{<matomeQuote body="「この家に小児性愛者がいるかも。そうとは断言しないけど、子どもを近寄らせない方がいい」って言うのは、名誉毀損になると思うんだよね。Googleの警告もこれと似たようなもんじゃない？" userName="msl" createdAt="2025/10/23 07:02:24" color="#ff33a1">}}




{{<matomeQuote body="Googleの警告は、「この家に誰かが侵入して乗っ取った可能性があって、その家の中に性犯罪者がいるかもしれない」っていう表現の方が、前のコメントの例えよりも近いと思うよ。" userName="bstsb" createdAt="2025/10/23 07:32:07" color="">}}




{{<matomeQuote body="それでも「その家には性犯罪者がいるかもしれない」って言ってることに変わりはないじゃん。もし俺がその家に住んでたら超ムカつくし、早く「いない！」って証明する方法が欲しいって思うよ。みんなから避けられる前にね。" userName="alt227" createdAt="2025/10/23 08:26:35" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="「かもしれない」って言葉だけじゃなく、あの「死の赤い画面」で表示されてることを無視して議論するのは無理があるだろ。法律上は正しいって言いたいならそうかもしれないけど、人間的な感情を考えたら違うだろ。" userName="josfredo" createdAt="2025/10/23 07:45:46" color="#ff33a1">}}




{{<matomeQuote body="え？質問は法律についてだったじゃん。俺は他のこと言おうとしてないよ。元のコメントの法的質問に答えてただけ。君が何を言いたいのか意味不明なんだけど。" userName="crazygringo" createdAt="2025/10/25 12:46:07" color="">}}




{{<matomeQuote body="Googleの警告って、なんで名誉毀損にならないんだろ？今まで裁判になったことないのかな？これって名誉毀損になりそうだけど。" userName="pasteldream" createdAt="2025/10/23 02:23:31" color="">}}




{{<matomeQuote body="そんな裁判の例は知らないなー。もし誰かが見つけたら教えてほしい！" userName="altairprime" createdAt="2025/10/23 03:24:22" color="">}}




{{<matomeQuote body="昔働いてた会社で、内部開発ドメインが危険認定されたことがあるよ。（セキュリティ研究でペネトレーションテストのペイロードをホストしてたんだ。）<br>うちの弁護士がGoogleの弁護士と話したら、ドメインをホワイトリストに入れてもらえたんだ。" userName="trenchpilgrim" createdAt="2025/10/23 05:32:19" color="#ff33a1">}}




{{<matomeQuote body="貧乏な相手しか訴えないもんだよね。" userName="modzu" createdAt="2025/10/23 04:23:42" color="">}}




{{<matomeQuote body="もし明確なケースなら、裁判って問題解決に意外と効果的だよ。顧客サポートでたらい回しにされるより、「これは法的に直さなきゃ」ってなってくれるからね。" userName="tgsovlerkhgsel" createdAt="2025/10/23 07:29:34" color="#45d325">}}




{{<matomeQuote body="Walmartで買った皿に、他の場所で買った食べ物を乗せたら危険だと警告が出て、安全のためにフォークが引っ込むみたいな感じだよね。<br>GoogleやMicrosoftとかが、自分のハードウェアで公認されてないサイトやソフトを使わせないようにしてるのと一緒だよ。" userName="heavyset_go" createdAt="2025/10/23 06:43:36" color="#38d3d3">}}




{{<matomeQuote body="これが未来だね。何も買わずに、使う許可をレンタルするだけ。Walmartは安全のために、あなたがその皿を使ってなくても、リモートでニンジンをブロックできちゃうんだから。" userName="yard2010" createdAt="2025/10/23 08:22:03" color="#785bff">}}




{{<matomeQuote body="Googleが警告を出しても名誉毀損にならないのは、「間違っていること」自体が名誉毀損になるわけじゃないからだよ。会社がちゃんと検出ツールを使って、悪意なく正確性を確保しようとしてるなら、名誉毀損の訴訟は難しいんだ。" userName="shkkmo" createdAt="2025/10/23 18:05:08" color="#785bff">}}




{{<matomeQuote body="アメリカの名誉毀損には「真実の抗弁」はあっても「善意の抗弁」はないんだ。交通事故みたいに、意図しなくても損害を与えたら賠償責任は負うってこと。善意だけじゃ免れないよ。" userName="jdsully" createdAt="2025/10/24 16:06:44" color="#785bff">}}




{{<matomeQuote body="「善意」っていうのが何を指してるか不明だけど、法的な基準は「実際の悪意」だよ。自分が間違ってるって知ってたか、それを無謀に無視したかってこと。公人に対してただ誤ったことを言って損害を与えただけじゃダメなんだ。" userName="shkkmo" createdAt="2025/10/28 19:18:12" color="#45d325">}}




{{<matomeQuote body="誤検知がゼロだと、その検知器は全く役に立たない。もし誤検知が名誉毀損になったら、誰も有用なマルウェア検知器なんて作らないよ。警告の言葉遣いを変えても根本的な問題は解決しないだろうね。" userName="acoustics" createdAt="2025/10/23 04:41:30" color="#38d3d3">}}




{{<matomeQuote body="問題はGoogleが一方的すぎるってことだよ。彼らは何の努力もせず好き勝手やってるのに、俺たちには何もできない。せめてRFC2142のabuse@とかhostmaster@に警告メールを送って、間違いをレビューするプロセスがあればいいのにね。" userName="donmcronald" createdAt="2025/10/23 06:43:22" color="#785bff">}}




{{<matomeQuote body="SpamhausはDNSベースのスパムブロックリスト発行で、これまで何度も訴えられてるんだよ。例えば、https://reason.com/volokh/2020/07/27/injunction-in-libel-cas...。Googleの弁護士はそういう訴訟要求にすぐ対応するから、SafeBrowsingは訴えられないんだろうね。" userName="dpifke" createdAt="2025/10/23 21:25:14" color="#ff33a1">}}




{{<matomeQuote body="先週、うちの会社サイトがGoogleに突然ブロックされたんだ。顧客にすごく悪い印象を与えちゃって、Googleの誤検知だと説明する羽目になったよ。原因はウェブメールの二重リダイレクトらしい。ウェブメールを別ドメインに移して、4回も解除をお願いして、やっと12時間後に解決した。対応も不透明だし、責任も取らない。自分のビジネスがコントロールできないって感じ、最悪だよ。" userName="dmoreno" createdAt="2025/10/23 08:34:39" color="#38d3d3">}}




{{<matomeQuote body="マジで新しいインターネットとかプロトコル、ブラウザが必要だと思うんだ。今の巨大な独占企業を壊すためにね。このままじゃ全ての情報が検閲されて、競争相手もブロックされちゃうよ。中小企業や地域ニュースに優しい、本来のインターネットを取り戻したいな。誰かそういうの作ってないかな？" userName="kossTKR" createdAt="2025/10/23 08:44:58" color="#ff33a1">}}




{{<matomeQuote body="少額訴訟を起こしてみたらどう？1万～2万ドル程度なら、Googleは弁護士を使えないから、普通は役員が出てこなくちゃいけないんだよ。結構手軽にできるはず。" userName="MrDarcy" createdAt="2025/10/23 12:52:44" color="">}}




{{<matomeQuote body="政治的な問題に技術で解決しようとするなよ。私企業の権力集中を防ぐ方法なら「独占禁止法」があるだろ？新しいプロトコルなんて、既存のウェブっていう巨大な壁を乗り越えなきゃいけないし、莫大な資本とも戦う必要がある。それって、国がちゃんとして法律を作るより簡単だと思うのかい？" userName="andrepd" createdAt="2025/10/23 11:16:50" color="#ff5733">}}




{{<matomeQuote body="Google ChromeのSafe Browsingに独禁法がどう効くか分からないな。問題は中小企業とユーザーの利害対立だろ。企業はサイトを運営したいけど、ユーザーはマルウェアに感染したくない。ChromeをGoogleから分離しても、ユーザー保護のインセンティブは変わらないよ。結局、悪意ある連中がインフラを悪用するせいで、ウェブに「対等な市民」として参加するのが難しくなったのが根本的な問題じゃないかな。俺の個人ブログは単純だから問題にならないんだけどさ。" userName="shadowgovt" createdAt="2025/10/23 12:56:27" color="#ff33a1">}}




{{<matomeQuote body="二重リダイレクトだけでブロックされたとは思えないな。複数リダイレクトってのは、一般的なパターンだし、性能は落ちるけど普通に使われてるよ。きっとGoogleは本当の原因を明かしてないんじゃないか？機械学習モデルの悪い振る舞いかもしれないけど、それだけじゃ全く無害だし。他に何かあるはずだね。" userName="chrismorgan" createdAt="2025/10/23 13:14:02" color="#45d325">}}




{{<matomeQuote body="独占企業は他者に害を与えるような制限を課すべきじゃない、とか、制限するならX分以内に異議申し立てに対応して、政府の独立委員会に上訴できるようにするべきだ、とかね。あと、自動で何かやって誰かを害したら、被害者の要求があればすぐに元に戻すべきだよ。で、人間が責任を持つって誓ってから再開できるってルールもいいな。そもそも独占は禁止するべきだ。" userName="ImPostingOnHN" createdAt="2025/10/23 13:43:55" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
