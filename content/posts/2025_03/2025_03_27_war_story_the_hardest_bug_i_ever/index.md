+++
date = '2025-03-27T00:00:00'
months = '2025/03'
draft = false
title = 'ヤバすぎ！開発者が震えた最悪バグとの死闘、解決までの一部始終'
tags = ["デバッグ", "バグ", "開発", "プログラミング", "ソフトウェア"]
featureimage = 'thumbnails/red2.jpg'
+++

> ヤバすぎ！開発者が震えた最悪バグとの死闘、解決までの一部始終

引用元：[https://news.ycombinator.com/item?id=43461618](https://news.ycombinator.com/item?id=43461618)

{{<matomeQuote body="（免責事項：オレはOPのことリアルで知ってる。）<br>「たった2日？そんなにヤバいバグじゃなかったんだろ」ってコメントが多いみたいだけど、ちょっと違うと思うぞ。<br>今の仕事先のpostmortemテンプレートには「どこで運が良かった？」って質問があるんだよね。今回のケースだと、作者はGoogleにいたからマジでラッキーだったと思う。1）ユーザー数が多かったからHeisenbugを再現できたし、2）Chromeの開発者と直接やり取りできたから。<br>それに、作者（とチーム）はたった2日でJSコンパイラのバグを特定して修正したんだぜ。ブラウザのコードのどこが原因か絞り込むだけでも、マジで複雑なんだから。2日で済んだのは、作者がめちゃくちゃ優秀だからだってこと。" userName="aetimmes" createdAt="2025-03-27T14:24:49" color="#ff5c5c">}}

{{<matomeQuote body="バグの難易度を測るのに、修正にかかった日数って変じゃね？経験とか、誰かと協力できるかどうかとか、バグ以外の要素もいっぱいあるし。<br>今回のバグは、トリッキーなバグの条件をほとんど満たしてる。<br>・非決定論的<br>・巨大な干し草の山<br>・原因がコードの外にある「1+1=3」みたいなエラー<br>再現に30時間かかったり、Niagaraの滝を樽で下りながらデバッグしなきゃいけなかったりしたら、もっと時間かかっただろうけど、それは関係ない気がする。<br>オレも前に似たようなバグで苦労したことがあるんだよね。GraalVM JVMの最適化のバグで、めっちゃレアな状況で変な挙動になるっていう。OracleのJVMエンジニアが隣にいたら、数週間じゃなくて数日で解決してたと思う。<br>＞https://www.marginalia.nu/log/a_104_dep_bug/”" userName="marginalia_nu" createdAt="2025-03-27T18:02:06" color="#45d325">}}

{{<matomeQuote body="postmortemテンプレートの残りの部分も見たいな！「どこで運が良かった？」って質問は考えたことなかった。<br>最近、「パニクった？その結果どうなった？何が原因でパニクった？」って質問も入れるべきだって気づいた。<br>ネットワークをダウンさせたことがあって、アクセスを取り戻すのに複数のアプリとログインが必要だったんだよね。それでパニクって、ネットワークが小さいから、全部のデバイスをバックアップネットワークに移動させた。<br>次の日、冷静になってから、QRコードを90度ずらしてスキャンしてたことに気づいたんだよね。QRコードに正しい向きがあるなんて知らなかったし、コーナーの識別子でどんな向きでも対応できると思ってた。そしたら簡単にアクセスできた。他の変な経路は再現できなかった。" userName="seeingnature" createdAt="2025-03-27T16:07:00" color="#785bff">}}

{{<matomeQuote body="オレが好きなman pageの一つはscan_ffsだ。<br>https://man.openbsd.org/scan_ffs<br>    このプログラムの基本的な動作は次のとおり。<br><br>    1. パニック。どうせいつもパニクるんだから、先に済ませておけ。ただし、バカなことはするな。マシンから離れてパニクれ。落ち着いて、以下の手順が役に立つかどうか試してみろ。<br><br>    2. ..." userName="somat" createdAt="2025-03-27T17:27:37" color="">}}

{{<matomeQuote body="Googleが推奨する標準的なSREのテンプレートには、運が良かったことについて書くセクションがあるよ。運が悪かったことについても書くことが多いかな。" userName="srejk" createdAt="2025-03-27T16:43:53" color="">}}

{{<matomeQuote body="コンセプトとかプロセスの問題について書くセクションがあると良いよね。それは、パニックについての質問を一般化したものだと思う。<br>例えば、システムの動作について勘違いしてて、それが停止時間を長引かせたり、復旧を複雑にしたりすることがあるかも。あるいは、Slackのチャンネルで誰かが過去に貼り付けた複雑なコマンドを探し回ったり、PMとPOが状況を聞いてきたりとか。あるいは、たまたまその週に調べてたことが役に立って危機を脱したり。<br>それって、忘れないうちにドキュメントに書いたり、トレーニング教材に追加したりする価値がある情報かも。多くのpostmortemは根本原因に焦点を当ててるけど、出血を止めるためのプロセスを詳しく見てないんだよね。" userName="nathan_douglas" createdAt="2025-03-27T18:08:49" color="#38d3d3">}}

{{<matomeQuote body="いや、QRコードは自動で向きを調整するはずだよ[1]。違う向きで違う結果が出るなら、スキャナーにバグがあるんじゃない？<br>[1] https://en.wikipedia.org/wiki/QR_code#Design" userName="parliament32" createdAt="2025-03-27T17:48:51" color="#45d325">}}

{{<matomeQuote body="向きによってスキャン結果が変わるQRコードをデザインすることも可能みたいだけど、見た目がちょっと変だね。<br>https://hackaday.com/2025/01/23/this-qr-code-leads-to-two-we..." userName="egypturnash" createdAt="2025-03-27T19:16:49" color="">}}

{{<matomeQuote body="＞QRコードには正しい向きがあるなんて知らなかったし、コーナーの識別子でどんな向きでも対応できると思ってた。<br>”<br>オレも同じだ。いつも正しく動作するように設計されてると思ってた。使ってたアプリかライブラリが、正しく処理するように設計されてなかったんじゃないかな。" userName="Suppafly" createdAt="2025-03-27T17:52:34" color="#785bff">}}

{{<matomeQuote body="もしGoogleで働いてなくて、ChromiumチームにV8のバグを見つけたと納得させようとしたらどうなるか想像してみて。ほぼ不可能だろうね。<br>Googleは、ユーザーに「何か問題ありますか？」と聞く方法が全くないことに気づいた。これは、ユーザーと開発者の間にコミュニケーションが全くない、Googleのソフトウェア開発アプローチの明らかな欠点だ。" userName="ivraatiems" createdAt="2025-03-27T15:52:14" color="#785bff">}}

{{<matomeQuote body="たぶんできると思うけど、めっちゃ説得力のあるバグレポートが必要だね" userName="saagarjha" createdAt="2025-03-30T09:42:57" color="">}}

{{<matomeQuote body="他の人の仕事を減らすことで、コメントする人が優越感を感じてるんじゃないかなーって思うんだよね、一般論として。" userName="jbs789" createdAt="2025-03-27T19:15:03" color="">}}

{{<matomeQuote body="＞このケースでは、著者がGoogleで働いてたのがマジでラッキーだったよね。１）ユーザーがたくさんいたからHeisenbugが再現しやすかったし、２）Chromeの開発者に直接アクセスできたし。<br>それってマジで運かな？Math.absを使わなければよかっただけじゃん。Googleにいなくても同じようにデバッグして同じ解決策にたどり着いたと思うよ。Googleにいたせいで、Math.absが正しく動かないって気づいた時に、Chromeチームに聞かずに＞0を使っちゃったかもしれないしね。printf文をゆっくり追加してコンピュータの動作を理解するのは単なる良い仕事だよ。" userName="lesuorac" createdAt="2025-03-27T17:30:59" color="#ff5c5c">}}

{{<matomeQuote body="もう20年以上前の話だから、細かいことはあんまり覚えてないんだよね。大学生の時にBoseでインターンしてて、新しいマルチCDチェンジャーのファームウェアのQAをしてたんだ。いろんな特徴のある音楽トラックのディスクを渡されて、何度も何度も何度も何度も聴いて、QAマネジメントが用意したテストケースを実行してたんだ。でも、決められたテストが終わったら、アドホックなテストもしてたんだよね。<br>ある時、リモコンのボタンをめっちゃタイミング良く押すと、デバイス全体がクラッシュして再起動するバグを見つけたんだ。マジでヤバいバグで、500ドルのステレオがクラッシュしたらみんなブチ切れるじゃん？記事みたいに、製品のエンジニアリングリーダーがスケジュールを空けて、再現、発見、修正に当たってたよ。当時何が起きてたのか説明してくれたんだけど、詳細は忘れちゃったな。<br>全体的に仕事はマジでつまらなかった。同じ曲を何度も何度も聴いたから、夢の中でも聞こえるくらいだったよ。だから、テストケースの枠を超えて、珍しい重大なバグを見つけた時はマジで嬉しかった！問題を見つけられて最高だったよ！リーダーは修正中に髪の毛が20％くらい抜け落ちたと思うよ（笑）。<br>QAの仕事はもう長いことしてないけど、この仕事でハッピーパスの外でテストする方法とか、開発チームに再現可能で役立つバグレポートを書く方法を学んだんだ。過小評価されがちなQAの人たちに感謝！" userName="jdwithit" createdAt="2025-03-27T08:34:05" color="#ff5c5c">}}

{{<matomeQuote body="それ、マジで素晴らしいQAだね。QAがもっと多くの組織で重要な役割を果たすべきだってことも示してるよね。エンジニアはハッピーパスのテストが大好きだからね。<br>悪意とか怠慢じゃなくて、問題とか要件の解釈が実装を左右して、それがテストを左右するんだよね。レストランに食品安全基準を満たしてるか自己認証させるみたいなもんじゃん。" userName="steveBK123" createdAt="2025-03-27T11:46:22" color="#38d3d3">}}

{{<matomeQuote body="ハッピーパスに従わなかったら、100％何かが壊れるよ。だからエンジニアはいつもハッピーパスに従うんだ。ハッピーパス以外のことは例外だと思って、調べる価値もないと思ってるエンジニアもいるんだよね。そういうエンジニアは、ユーザーが他の製品に乗り換えられない場合にしか生き残れないんだ。競争があるからこそ、より良い製品が生まれるんだよね。" userName="z3t4" createdAt="2025-03-27T12:07:37" color="">}}

{{<matomeQuote body="俺が知ってるハッピーパス至上主義のエンジニアはマジでヤバかった。彼が作ったのはこんな感じ。<br>仕様：社内BIツールからユーザーに定期レポートを送信する<br>実装：サーバーがメールを送るのに、ユーザーがその日にデスクトップのフロントエンドを開いてる必要があった<br>なぜこれがクソなのかって言うと、この機能を使う理由は、ユーザーがオフィスにいなかったり、席を離れてたりする時でしょ？つまり、デスクトップUIを開かない時じゃん。<br>エンジニアが問題の前提を完全に間違えてる例だよね。<br>結局、時間がかかりすぎて改善する気もなかったから、デスクトップサポートチームがWindowsのスケジューラで毎日デスクトップUIを自動で開くようにして、このRube Goldberg的な定期レポートが動くようにしたんだ。" userName="steveBK123" createdAt="2025-03-27T12:32:33" color="#ff5733">}}

{{<matomeQuote body="そいつは1×エンジニアだね。一番ダメなエンジニアだけど、なんとかクビにならないレベル。" userName="db48x" createdAt="2025-03-27T12:54:48" color="#ff5c5c">}}

{{<matomeQuote body="時が経つにつれて、彼は-2xエンジニアだってことがわかったんだけど、それは別の話。<br>編集：昔のジョークを思い出した<br>プログラマーが奥さんに頼まれて買い物に行く。奥さんは言う。「牛乳を1ガロン買ってきて。もし卵があったら、1ダース買ってきて。」<br>プログラマーは牛乳を12ガロン持って帰ってきて言った。「卵があった。」" userName="steveBK123" createdAt="2025-03-27T13:00:28" color="#ff5c5c">}}

{{<matomeQuote body="そいつはバカだな。牛乳を13ガロン買うべきだった。" userName="monsieurbanana" createdAt="2025-03-27T13:34:49" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="あー、「and」があるせいでジョークが台無しだわ。元のジョークはこんな感じだと思うよ。<br>＞奥さんがプログラマーに買い物頼む。「牛乳買ってきて。もし卵があったら、1ダース買ってきて」”" userName="stavros" createdAt="2025-03-27T14:48:22" color="">}}

{{<matomeQuote body="「Antiwork」って感じ。彼らが1時間働くごとに、他のエンジニアの質問、会議、後々の修正で1時間以上の時間が浪費されるんだから。" userName="glxxyz" createdAt="2025-03-27T19:14:19" color="">}}

{{<matomeQuote body="その通り。彼らは手抜き工事を短時間でやるから、修理に2倍の時間がかかるんだよね。" userName="steveBK123" createdAt="2025-03-27T20:00:17" color="">}}

{{<matomeQuote body="＞どっちかっていうと-2xエンジニアだな。<br>もう一人同じようなのを見つけてくれば、一気に+4xだ。<br>（2人のダメエンジニアがお互いを牽制しあって、相殺しあう可能性もゼロじゃないけど、まずありえないよね。）”" userName="chrismorgan" createdAt="2025-03-27T17:36:16" color="">}}

{{<matomeQuote body="そもそも、彼の仕事にハッピーパス（成功ルート）なんて存在しなかったんじゃないかって気がする。" userName="pavel_lishin" createdAt="2025-03-27T13:05:51" color="">}}

{{<matomeQuote body="＞ハッピーパスに従わないと、100%何かが壊れるってこと？<br>いやいや、それって初期のアルファ版とか、ヤラセのデモとか、なんか怪しいコーディングの類でしょ。" userName="pjc50" createdAt="2025-03-27T15:13:11" color="#ff5733">}}

{{<matomeQuote body="ナンセンス。それじゃ全然エンジニアリングじゃないじゃん。ソフトウェア“エンジニア”にエンジニアリングがほとんどないのは周知の事実だけど、君が言ってるような人見たことないわ。" userName="epolanski" createdAt="2025-03-27T14:10:01" color="">}}

{{<matomeQuote body="＞それって最高のQAだよね。QAがもっと多くの組織で重要な役割を果たすべき理由もわかる。QAは縮小傾向にあるべきじゃない。<br>ソフトウェアエンジニアとして、自分のコードのテストには徹底的に注意を払ってきたつもり。でも、優秀なQAの人がバグ報告書を見ると、「どうしてそんなことまで思いつくんだ？」っていつも驚かされるんだよね。QAはスキルセットであり、マインドセットでもあるんだ。" userName="fatnoah" createdAt="2025-03-27T19:01:11" color="#45d325">}}

{{<matomeQuote body="細かいことを言うと、探索的テスト（テストケース外のテスト）とQAの違いを指摘するのは、何十年も議論されてきたことなんだよね…<br>でも、この話は大好きだし、いつもこういう話を集めてるから、シェアしてくれてありがとう。" userName="philk10" createdAt="2025-03-27T14:07:41" color="#ff5733">}}

{{<matomeQuote body="友達が、昔働いてたメガネ屋で、視力検査のために何度も何度も同じ映画を見せられて、軽いPTSDになっちゃったらしいよ。" userName="HdS84" createdAt="2025-03-27T11:27:18" color="">}}

{{<matomeQuote body="面白い記事だけど、”一番苦労したバグ”のデバッグに2日ってのは、ちょっと大げさじゃない？<br>abs()が負の数を返すとか笑えるけど…　マジありえない。<br>俺にとって一番キツイのは、再現がほぼ不可能な”Heisenbug”だな。計測ツールを追加すると消えちゃうやつ。<br>並行性の問題だけじゃなくて…　再現に1週間かかって、HWの制約で並列化できなくて、ログ仕込むと消えたり違う風に失敗したりするようなバグ。2日なんてかわいいもんよ" userName="BobbyTables2" createdAt="2025-03-27T03:27:20" color="">}}

{{<matomeQuote body="再現に1週間かかって、HWの制約で並列化できなくて、ログ仕込むと消えたり違う風に失敗したりするようなバグね。<br>俺がデバッグした中で一番苦労したのは、再現に数ヶ月かかって、チームで一人しか持ってないハードウェアでしか発生しないやつだったな。<br>成熟した製品だと、バグは非常にまれだけど、出てくるバグはデバッグがめっちゃ難しいんだよね。2時間とか2日とか2週間のバグは、もうとっくに潰されてるからね" userName="userbinator" createdAt="2025-03-27T04:02:11" color="#785bff">}}

{{<matomeQuote body="そういや昔の同僚が、20年前に自分が作ったバグを直したって突然叫んでたのを思い出したわ。<br>バグの内容は結構笑えるやつで、産業機器の電子ボックスの内部温度を表示するコードに仕込まれてた。温度変数を符号なし整数として扱ってたんだけど、実際には符号付きだったんだよね。フィンランドの勇敢なフィールド技術者が、暖房のない空間でユニットを検査して、ようやくこのバグを発見したんだって。普段はユニットの内部温度は周囲温度より20℃くらい高かったからね" userName="gmueckl" createdAt="2025-03-27T04:48:05" color="#785bff">}}

{{<matomeQuote body="温度の読み取りで、それって意外とよくあるミスなんだよね。特に、温度が一定以上になると電源が落ちる安全装置があるシステムだと、-1℃を255℃として解釈しちゃうみたいな" userName="treyd" createdAt="2025-03-27T05:12:32" color="#ff5c5c">}}

{{<matomeQuote body="まだ展開中だけど、オーストラリアのVictoria州の新しい水道メーターには、温度の修正が入ってるんだ。<br>今年までは、水温が0〜127度までしか扱えなかったんだよね。昔はそれでも良かったんだけど、加圧された水が家庭に供給されるようになってから、-125℃みたいな負の温度が報告されるようになって、凍結を防ぐために水が止まっちゃう問題が発生したんだ。<br>ソフトウェア側もCOBOLからAdaに切り替えたらしいよ" userName="shakna" createdAt="2025-03-27T09:55:34" color="#ff5733">}}

{{<matomeQuote body="兄弟がハードウェアメーカーでwifiのエキスパートやってんだけど、ある時、顧客が送信電力を法律の制限の100倍に設定しようとして問題が発生したんだって。その顧客はたまたま沖合の掘削プラットフォームで、アンテナが海のブイの上にあるから送信電力の免除を受けてたんだよね。彼は開発者にその特定のバグを修正するように説得しなければならなかったらしい" userName="edarchis" createdAt="2025-03-27T14:07:28" color="#ff5c5c">}}

{{<matomeQuote body="俺が成熟したハードウェア製品の保守を担当してた時、再現不能とか、特定の環境で一瞬だけ発生するとかの理由でクローズせざるを得なかったバグの数を考えると、マジで恥ずかしかったし、自分たちがnoob集団みたいに感じたよ" userName="devsda" createdAt="2025-03-27T06:57:26" color="">}}

{{<matomeQuote body="Bryan Cantrilが何年か前に、この現象について”Zebras all the way down”っていう講演をしてたよ" userName="dharmab" createdAt="2025-03-27T08:17:57" color="">}}

{{<matomeQuote body="これ、マジ面白い動画だわ！<br>https://www.youtube.com/watch?v=fE2KDzZaxvE" userName="latexr" createdAt="2025-03-27T09:33:05" color="">}}

{{<matomeQuote body="作者です！ソフトリアルタイムロボティクスシステムのシステムエンジニア時代にデバッグは結構やったけど、後から考えるとどれも大したことなかったんだよね。システムのことを調べて考えてれば、シャワー中に答えがひらめいたりするし。パズルみたいで楽しいのかも。今回はマジで2日間、力ずくで潰してたら、コンパイラが壊れてたっていうオチ。" userName="jakevoytko" createdAt="2025-03-27T03:33:23" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="今回の件がどれだけ大変だったかコメントしようと思ったけど、質問に変えるわ。「2日間の力ずく」っていうのは、いつもそうやって解決するの？それとも「他のことはしないでこれだけやれ」みたいなプレッシャーがあったの？大企業で働いたことないから、やり方が全然わからん。あと、「今日は無理だから、別のことやって寝る」って言うのもアリ？" userName="gertlex" createdAt="2025-03-27T04:25:37" color="">}}

{{<matomeQuote body="エラーが多すぎて、完璧に理解して修正するか、コンパイラやブラウザのせいなら回避するしかなかったんだよね。チームの文化もゴリゴリで、「クラッシュの原因を突き止めるために残業する」のが当たり前だった。そのチーム（とGoogle）を辞めてからは、もっとペースが緩いチームが多いかな。" userName="jakevoytko" createdAt="2025-03-27T04:35:01" color="#ff5733">}}

{{<matomeQuote body="Google Docsを前のバージョンに戻すとか、一部のユーザーでA/Bテストするとか、そういう選択肢はなかったの？<br>（面白い話ありがとう！）" userName="pas" createdAt="2025-03-28T10:23:17" color="">}}

{{<matomeQuote body="なるほどね！詳しい情報ありがと！" userName="gertlex" createdAt="2025-03-27T16:19:54" color="">}}

{{<matomeQuote body="＞abs()が負の数を返すとかマジ笑える。<br>JavaのMath.abs(Integer.MIN_VALUE)はマジで-2147483648を返すんだよね。2147483648を表すintがないから。" userName="jffhn" createdAt="2025-03-27T07:07:17" color="#785bff">}}

{{<matomeQuote body=".NETだとどうなるか気になって調べてみた。<br>OverflowExceptionが投げられるね。（二の補数表現の最小値の符号反転は無効です。）" userName="eterm" createdAt="2025-03-27T08:31:53" color="#785bff">}}

{{<matomeQuote body="マジかよ、Pytorchも同じことするわ。<br>a = torch.tensor(-2*31, dtype=torch.int32)<br>assert a == a.abs()" userName="rhaps0dy" createdAt="2025-03-27T14:44:45" color="#ff5c5c">}}

{{<matomeQuote body="numpyもtensorflowも同じだね。" userName="MawKKe" createdAt="2025-03-27T19:36:55" color="">}}

{{<matomeQuote body="またしてもチェックされてない整数のオーバーフローか。あるあるだね。" userName="adrian_b" createdAt="2025-03-27T10:03:32" color="">}}

{{<matomeQuote body="Rustもreleaseビルドだと同じことするよ。debugビルドだとpanicするけどね。" userName="bobbylarrybobby" createdAt="2025-03-27T23:24:36" color="">}}

{{<matomeQuote body="うちでも同じようなことがあって、IE8のバグでスクリーンリーダー(JAWS)の初期音声が流れなかったんだ。誰もDevToolsを開いてない状態を再現できなかったんだよね。" userName="efortis" createdAt="2025-03-27T05:12:24" color="#ff5733">}}

{{<matomeQuote body="俺も似たような経験あるわ。自分のマシンでテストしてるときは問題なかったんだけど、DevToolsを開いて潜在的な問題を見てたんだよね。IE8はDevToolsが開くまでconsoleを定義しないことが判明。めっちゃ苦労した。" userName="gsck" createdAt="2025-03-27T15:52:07" color="#45d325">}}

{{<matomeQuote body="具体的なバグは忘れちゃったけど、IE7の問題をbookmarkletでalert()を使って追いかけたのが、キャリア初期の思い出だな。(IE7にDevToolsってあったっけ?)" userName="smrq" createdAt="2025-03-27T13:37:41" color="">}}

{{<matomeQuote body="IE6とIE7にはダウンロードできる開発者ツールバーがあって、外部のWindows Script Debuggerでスクリプトをデバッグできたんだ。開発者ツールバーは、どの要素にhasLayout属性が適用されているかを表示してくれた。レンダリングや他のオブジェクトとの相互作用が完全に変わるから、めっちゃ役に立ったんだよね。" userName="camtarn" createdAt="2025-03-27T15:25:23" color="#ff5733">}}

{{<matomeQuote body="＞俺にとって一番難しいバグは、計測ツールを追加すると消えてしまう、ほとんど再現不可能な”Heisenbug”なんだ。<br>お気に入りは、計測ツール下でのみ発生するバグ(具体的にはスタックの破損)だった。デバッグの結果、バグは計測ツール自体にあり、特定の条件下で無効なアセンブリを生成してたんだ(引数4つしか取らない関数を引数5つで呼んでた)。最新バージョンへのアップグレードで解決。" userName="Adverblessly" createdAt="2025-03-27T19:14:07" color="#ff5c5c">}}

{{<matomeQuote body="＞俺にとって一番難しいバグは、計測ツールを追加すると消えてしまう、ほとんど再現不可能な”Heisenbug”なんだ。<br>俺が好きなのは、デバッガーでは現れないだけでなく、デバッガーで詳しく調べた後、通常の設定ではもう再現しなくなるバグだな（しばらくするとランダムに戻ってくるけど）。まるで幽霊を追いかけるみたいだ。" userName="lukan" createdAt="2025-03-27T09:45:07" color="#45d325">}}

{{<matomeQuote body="用語の提案: ｢グレムリン｣ってどう？" userName="btschaegg" createdAt="2025-03-27T12:28:36" color="">}}

{{<matomeQuote body="これは1日に数回reproduceしたけど、C/C++の知識が全くないのに、Linuxカーネルpanicを修正するのを想像してみて。しかも、最初に設定した人はみんな辞めちゃったし…<br>https://news.ycombinator.com/item?id=37859771<br>問題は、修正の難しさは多くの場所から来る可能性があるってこと。" userName="Terr_" createdAt="2025-03-27T04:44:37" color="#ff5c5c">}}

{{<matomeQuote body="デバッグにかかった日数を基準にするのはマジで意味ないと思うわ。素人なら簡単なバグでも何週間もかかるし。天才的な開発者なら、めちゃくちゃ難しいバグでも数時間でデバッグできるかも。再現なしで考えただけで解決とかも。" userName="rowanG077" createdAt="2025-03-27T11:37:30" color="">}}

{{<matomeQuote body="ハードウェアだと、システムを調べると挙動が変わるってのがよくあるんだよね。オシロスコープとかLAプローブが、ギリギリ動く回路に影響を与えちゃうの。マジ勘弁。" userName="mystified5016" createdAt="2025-03-27T14:04:41" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="自然科学に近づくほど、論理的なトラブルシューティングが通用しなくなることがあるんだよね。未定義な挙動が多いほど、マジで頭抱えることになる。論理的なシステムのはずなのに、なぜか論理が通じなくなるみたいな。" userName="fuzzfactor" createdAt="2025-03-27T18:05:27" color="">}}

{{<matomeQuote body="マジそれ！ベンダーがハードウェアを間違えてて、それをソフトウェアで1ヶ月以上解決しようとしたことあるわ。原因特定が難しかったのもあるし、組織の政治的な問題で、チーム間の連携が悪かったのも原因。" userName="steveBK123" createdAt="2025-03-27T11:54:40" color="#45d325">}}

{{<matomeQuote body="＞組織の政治的な問題か<br>俺の経験上、一番厄介なバグは、唯一の情報源である第三者がマジで嘘をついてるときだわ。" userName="voidifremoved" createdAt="2025-03-27T12:01:16" color="#ff33a1">}}

{{<matomeQuote body="必ずしも嘘ってわけじゃないんだよね。ハードウェア、API、SDKのドキュメントが、出荷された製品と微妙に違うってことがあった。ハードウェアのリビジョンが混ざってて、ドキュメント通りだったり違ったり、エンジニアですら状況を把握してなかったり。" userName="GianFabien" createdAt="2025-03-28T04:44:22" color="#38d3d3">}}

{{<matomeQuote body="こういうのには、リクエストに応じてログを出力するインメモリのリングバッファロガーを使ってたな。文字列は保存せずに、必要なデータビットとフォーマット関数へのポインタだけ保存するの。これならタイミングに影響しない。" userName="sesm" createdAt="2025-03-27T13:10:52" color="#ff5733">}}

{{<matomeQuote body="俺はいつも「量子バグ」って呼んでる。観察するとバグが変わるから。マジでイライラする。「heisenbug」の方が響きがいいよね。" userName="dismalpedigree" createdAt="2025-03-27T11:40:11" color="">}}

{{<matomeQuote body="FWIW: Chromeでこの手のバグがあると、JITコンパイルされたJavaScriptコードでout-of-bounds array accessesが発生する可能性があるんだ。<br>JITコンパイラは不要なbounds checkを削除する。例えば、Math.abs(y)の結果が負の数になるように”最適化”されると、負の配列インデックスにアクセスしてarraryのlengthを書き換えられる。" userName="nneonneo" createdAt="2025-03-27T04:30:16" color="#38d3d3">}}

{{<matomeQuote body="＞配列の長さを書き換えて、さらなる不正行為を可能にする<br>ここまでは理解できた。JavaScriptで負のインデックスに代入することで配列の長さを変更できるの？負のインデックスは配列の末尾からのアクセスに使うと思ってたんだけど。JITコンパイルされたJavaScriptは通常のJavaScriptのセマンティクスに従わないの？" userName="saghm" createdAt="2025-03-27T05:51:09" color="">}}

{{<matomeQuote body="普通はindexがマイナスにならないようにbounds checkがあるんだけどね。マイナスのindexは配列アクセスじゃなくてproperty accessになっちゃうんだよね(Pythonと違って)。でも、JIT compilerがindexは絶対マイナスにならないって証明したら、checkを省略することがあるんだ。そうなると、arr[-1]みたいなアクセスで配列の前のメモリにアクセスしちゃうかも。例えば、配列の長さとかね。CVEのproof-of-conceptのコメントを見ると、JSエンジンがどう思ってるか、実際にコードが実行されたときにどうなるかがわかるよ。https://github.com/shxdow/exploits/blob/master/CVE-2020-9802..." userName="nneonneo" createdAt="2025-03-27T06:48:13" color="#45d325">}}

{{<matomeQuote body="マイナスのindexでメモリにアクセスできるのはわかるんだけど、なんでJavaScriptでメモリレイアウトにアクセスできるのかがよくわかんないんだよね。同じsyntaxでpropertyにアクセスできるってのも見落としてたかも。" userName="saghm" createdAt="2025-03-27T22:14:13" color="">}}

{{<matomeQuote body="＞ここまでは理解できたんだけどな。JavaScriptってマイナスのindexで配列の長さを変えられるの？<br>たぶん勘違いだと思うんだけど、配列はただのobjectなんだよね。だから、arr[-1] = “hi”とすると、{“-1”: “hi”, length: 0}になる。JavaScriptのArray lengthは0だけど、lower level languageには別のlengthの表現があるはず。それを利用したexploitがあるかも…って思ったけど、たぶん考えすぎだよね。昔、マイナスのindexでデータが保存されるのを防ぐ機能が追加された気がするけど、自信ないな。" userName="bryanrasmussen" createdAt="2025-03-27T06:04:04" color="">}}

{{<matomeQuote body="JavaScriptの配列が、配列のindexingと同じsyntaxで任意のpropertyに代入できるobjectだってのは良い点だね。compilerが配列をメモリレイアウトに直接mapするような最適化をして、bounds checkを省略すると、メモリにアクセスできる可能性があるってことだね。" userName="saghm" createdAt="2025-03-27T22:17:48" color="">}}

{{<matomeQuote body="そうそう、arr[false] = “hi”とかできるんだよね。console.log(arr)すると、{false: “hi”, length: 0}になる。arr[Boolean(arr.length)]が”hi”を返すのも面白い。こういうところにexploitがあるかもって思うけど、もう対策されてるかな。例えば、indexがNaNになったらNaN: “hi”になるし、arr[-1]とarr[0 - 1]の結果が違うのもtype conversionのせいだよね。変なところでtype conversionが起こるのが気になるんだよね。" userName="bryanrasmussen" createdAt="2025-03-28T11:40:06" color="">}}

{{<matomeQuote body="JavaScriptは新しいMacromedia/Adobe Flashだね。色々できて楽しいけど、突然終わるんだ。" userName="bboygravity" createdAt="2025-03-27T07:30:49" color="">}}

{{<matomeQuote body="これはJIT後の話だよ。変なlanguageの挙動でnegative indexingができるわけじゃないんだ。配列のメモリの先頭からのnegative offsetの話。" userName="ongy" createdAt="2025-03-27T05:55:28" color="#ff5c5c">}}

{{<matomeQuote body="例えば、配列がこんな風に実装されてたら(実際は違うけど){<br>uint64_t length;<br>js_value *values[];<br>}<br>bound checkが終わったら、JS配列の要素を読み込むのは簡単なassembly levelのloadになるはず。bound checkをbypassしたら、そのmovは任意のmemory addressを読み書きできる。" userName="PhilipRoman" createdAt="2025-03-27T07:50:46" color="#38d3d3">}}

{{<matomeQuote body="それは全部理解してるよ。JavaScriptからstructの任意の部分にアクセスできるのが驚きなんだよね。JIT compilingがruntimeで何をしてるのか深く掘り下げてなかったから、そんなことが可能だとは思わなかった。" userName="saghm" createdAt="2025-03-27T22:09:29" color="">}}

{{<matomeQuote body="俺の経験談：Emacsのprojectでkernel crashが起きて、10時間以上debuggingしたことがある。原因はdebug-print文同士の相互作用だった。#'messageはlogにappendして、editor windowの隅にupdate notificationを表示する。GUI objectが何度も更新されるとGPU driverがlock upするんだ。#'messageはdebounce logicがあって、同じstringを何度もdebug-printするとdeduplicateされる。だから、変数が変わらないとGUI thrashingは起きない。bugは2つのdebug-print文がactiveなときに発生した。片方をcomment outするとbugは消える。" userName="perihelions" createdAt="2025-03-27T13:51:18" color="">}}

{{<matomeQuote body="もしGUIの角っこにあるオブジェクトを1ミリ秒に何百回もめちゃくちゃに操作すると、特定の環境だとGPUドライバがロックアップするっていう、原因不明な現象が起きてたんだよね。ちょっと前までは、グラフィックドライバで簡単にクラッシュさせられたんだよ。しかも、事故でね。それってセキュリティ的にヤバかったと思うんだよね。DoS攻撃だけじゃなくてさ。WebGLのおかげで、ブラウザがそういうのを許容しないって宣言したから（Webページからコンピュータをダウンさせちゃダメ！）、メーカーがドライバをちゃんと修正するようになったんだよね。おかげで、前よりはずっとマシになったよ。<br>＞ああ、IE6が簡単にクラッシュしたのが懐かしいな。Windows 98がブルースクリーンになったりもしたんだぜ。お気に入りは、&lt;script&gt;document．createElement（”table”）．appendChild（document．createElement（”div”）．appendChild&lt;／script&gt;だったかな。マジで脆弱だったんだよ" userName="chrismorgan" createdAt="2025-03-27T18:02:25" color="#38d3d3">}}

{{<matomeQuote body="500マイル以上離れた場所にメールを送れなかったっていう昔のバグの話を思い出しちゃった。<br>https://web.mit.edu/jemorris/humor/500-miles" userName="jason_tko" createdAt="2025-03-27T12:47:20" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
