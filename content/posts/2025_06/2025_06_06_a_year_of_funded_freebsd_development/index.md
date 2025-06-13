+++
date = '2025-06-06T00:00:00'
months = '2025/06'
draft = false
title = '資金援助されたFreeBSD開発の1年間！'
tags = ["FreeBSD", "開発", "資金援助", "OS", "システム開発"]
featureimage = 'thumbnails/cyan1.jpg'
+++

> 資金援助されたFreeBSD開発の1年間！

引用元：[https://news.ycombinator.com/item?id=44204224](https://news.ycombinator.com/item?id=44204224)




{{<matomeQuote body="いいね！そうそう、今日からziglang.orgのダウンロードページにFreeBSDを追加したよ。これでFreeBSDユーザーはCIで自動ビルドされたマスターブランチをダウンロードできるようになった。’zig cc -o hello hello.c -target riscv64-freebsd’みたいに、libcリンクも含めて第一級のクロスコンパイルターゲットにもなった。C/C++の依存関係があってもzigビルドシステムで取得＆ビルドできるから、複雑なプロジェクトもFreeBSD向けにクロスコンパイルしやすくなったはず。これでFreeBSDサポートとCIテストを追加するプロジェクトが増えるといいな！" userName="AndyKelley" createdAt="2025/06/06 21:38:17" color="#ff5c5c">}}




{{<matomeQuote body="Zigのクロスコンパイルはすごいよね。サポートターゲットリストにFreeBSDがあるのはいいね。" userName="xedrac" createdAt="2025/06/07 03:43:50" color="">}}




{{<matomeQuote body="ZigはBSDライセンスだし、FreeBSDにはすでにLLVMがあるから、いつかFreeBSD自体に取り込まれるかもね？公式で認められたC言語の置き換えがあると良いな。" userName="int_19h" createdAt="2025/06/11 17:59:16" color="#38d3d3">}}




{{<matomeQuote body="面白い話があるんだ＞2024年の初めからFreeBSDの起動が急に3倍くらい遅くなったらしい。コミットを二分探索したら…ルートディスクサイズを5GBから6GBに増やしたコミットが原因だった。なんで？Amazonの友達に聞いたら「マジック」と「知りたくないだろう」の間みたいな答えだったって。でも大事なのは、ルートディスクを8GBにしたらパフォーマンスが元に戻ったってこと。" userName="msdrigg" createdAt="2025/06/06 21:42:58" color="#ff5733">}}




{{<matomeQuote body="S3の元々のオブジェクトサイズ制限は5GBだったんだ。2006年のブログ記事に書いてあるよ：https://aws.amazon.com/blogs/aws/amazon_s3/<br>これが君が見た急な変化と関係あるかは分からないけどね。" userName="jeffbarr" createdAt="2025/06/07 01:45:56" color="#785bff">}}




{{<matomeQuote body="関係ないと思うな。まず、EBSのスナップショットはS3に5GBの塊で保存されてないと思うし。" userName="cperciva" createdAt="2025/06/07 01:52:53" color="">}}




{{<matomeQuote body="だからここのコメントを読むのをやめられないんだよ。現代コンピューティングの創始者たちからの、深〜いベテランの知恵って感じ。" userName="bigiain" createdAt="2025/06/09 02:00:35" color="">}}




{{<matomeQuote body="あ〜、でもやっぱり知りたいなぁ。" userName="xandrius" createdAt="2025/06/06 21:49:34" color="">}}




{{<matomeQuote body="俺の理解だと、EBSはデータをキャッシュするかどうかを判断するヒューリスティクスを持ってるんだ。キャッシュされたスナップショットをルートディスクに持つAMIは、S3から全部データを引っ張ってくるAMIよりずっと速く起動するよ。" userName="cperciva" createdAt="2025/06/06 22:00:39" color="#785bff">}}




{{<matomeQuote body="なんか巨大な顧客がデータを5GBずつに分割してたから、キャッシュコードに”もしサイズが5GBだったら”みたいな判定が入ってるんじゃない？" userName="tedunangst" createdAt="2025/06/06 22:14:32" color="#785bff">}}




{{<matomeQuote body="うーん、そうかな。でも、それが8GBが速くて6GBが遅い理由にはならないと思うけどね。" userName="cperciva" createdAt="2025/06/06 22:17:28" color="">}}




{{<matomeQuote body="うん、読んだ時すごく不思議だったよ。どうやって8GBがいいって分かったの？適当に試した感じ？" userName="MobiusHorizons" createdAt="2025/06/07 16:49:18" color="">}}




{{<matomeQuote body="お客さんが8GBのまとまりを使い始めたんだって（笑）" userName="0x457" createdAt="2025/06/06 23:01:36" color="">}}




{{<matomeQuote body="スナップショットをキャッシュするのに一番小さいサイズってどれくらい？今1GBなんだけど、実際のイメージはもっと小さいんだ。もし2GBとか4GBにしたら速くなるなら、全然試したいな。" userName="JoshTriplett" createdAt="2025/06/07 00:26:21" color="#785bff">}}




{{<matomeQuote body="1GBでも速いと思うよ。" userName="cperciva" createdAt="2025/06/07 00:27:23" color="">}}




{{<matomeQuote body="ありがとう、聞けて助かったよ！他に、速いとか遅いブートの理由で何か知ってることある？EC2の起動ってマジで分かんないことだらけで、ちょっとの情報でもありがたいんだ。" userName="JoshTriplett" createdAt="2025/06/07 00:40:07" color="">}}




{{<matomeQuote body="今は特に思いつかないけど、もしよかったらメールしてよ。ベンチマークについて詳しく教えてあげられるから。" userName="cperciva" createdAt="2025/06/07 01:11:24" color="#ff33a1">}}




{{<matomeQuote body="勘だけど、2のべき乗（例: 1GB、2GB、4GB、8GB）だと速いとか？" userName="richardwhiuk" createdAt="2025/06/07 19:35:30" color="">}}




{{<matomeQuote body="5は2のべき乗じゃないよ（笑）" userName="cperciva" createdAt="2025/06/07 19:38:21" color="">}}




{{<matomeQuote body="AWSみたいなクラウドの裏側ってどうなってんのかマジ気になるわ。表はスムーズだけど、何が支えてるの？たぶんPuppetとかChefみたいなツールとカスタムの繋ぎ合わせで、ごちゃごちゃなんだろな。" userName="selimnairb" createdAt="2025/06/07 11:53:18" color="">}}




{{<matomeQuote body="AWSのサービスってさ、ほとんどが他のAWSサービスの上に乗っかってるんだよ。例えばLambdaとかSQSみたいな”コア”なやつが裏で使われてるんだよ。" userName="arcfour" createdAt="2025/06/07 13:17:55" color="#ff5c5c">}}




{{<matomeQuote body="Amazonのデカさだと、ほとんど全部カスタムだよ。PuppetとかChefみたいな既成ツールはあんまり使ってないね。" userName="akdev1l" createdAt="2025/06/07 12:09:21" color="">}}




{{<matomeQuote body="だよねー、たぶん最初は市販のツールで始めたんだろうけど、システムがデカくなってくにつれて、だんだんカスタムなものに置き換えていったんだろうね。" userName="selimnairb" createdAt="2025/06/07 13:40:06" color="">}}




{{<matomeQuote body="むしろ逆じゃね？AWSは最初のハイパースケーラーだから、当時は問題を解決するツール自体がなかったんだよ。今ならk8s使うような独自のクラスタリングソフトウェアとかね。こういうのが百万個も違うツールである感じ。この記事も面白いよ。URLをチェックしてみて。<br>URL: https://www.allthingsdistributed.com/2014/11/apollo-amazon-d..." userName="akdev1l" createdAt="2025/06/12 03:33:19" color="#ff5733">}}




{{<matomeQuote body="そういう問題って、原因特定（bisect）するのにどれくらいかかったんだろ？毎回イメージ作ってVM再起動？" userName="polskibus" createdAt="2025/06/07 05:31:46" color="#38d3d3">}}




{{<matomeQuote body="正確には覚えてないけど、数時間だったかな。どの週に問題が出たかは週ごとのスナップショットで分かってたから、最初からあたりはつけられてたよ。でも、うん、AMIsをたくさん作って、それぞれのEC2インスタンスを起動したよ。再起動だけじゃダメで、AMIを最初に起動する時って、FreeBSD（ルートディスク拡張とか）もEC2（ディスクキャッシュとか）も挙動が違うんだよね。" userName="cperciva" createdAt="2025/06/07 05:39:04" color="#ff5733">}}




{{<matomeQuote body="追加情報サンキュー。数時間でできたってすごいね。フィードバックに時間かかるから、特定に何日もかかるかと思ってたわ。" userName="polskibus" createdAt="2025/06/07 13:48:02" color="">}}




{{<matomeQuote body="あとね、ノートPC関連の作業も結構進んでるんだよ。BSD foundationが75万ドル投資したって読んだな。S0ix Sleep Stateとかを実装してて、プロジェクトはここにあるよ。<br>URL: https://github.com/FreeBSDFoundation/proj-laptop" userName="net01" createdAt="2025/06/06 22:09:14" color="#38d3d3">}}




{{<matomeQuote body="うん、たくさん作業が進んでるよ。俺はちょうど自分がやってた作業について書いてただけなんだ。 😉" userName="cperciva" createdAt="2025/06/06 22:16:31" color="">}}




{{<matomeQuote body="cpercivaにすごく敬意を持ってるよ。彼がTarsnapとか全部どうやって管理してるのか分からないな。" userName="tiffanyh" createdAt="2025/06/06 20:43:34" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ある程度お金があると時間も買えるってことだね。水漏れを自分で直すかplumberを雇うかとか。electriciansが地下室のdrywallを剥がした後（solar panels設置で電気パネルをアップグレードしたから仕方ないんだけど）、自分で直すかdrywallのプロを雇うか？正直、これに費やした時間はTarsnapから少し削ったけど、みんなが思ってるよりは少ないかな。" userName="cperciva" createdAt="2025/06/06 20:53:15" color="#ff5c5c">}}




{{<matomeQuote body="＞ or do I hire a professional drywaller<br>drywallについては、絶対にプロを雇うべきだよ。他の人の失敗から学んで…思ってるほど簡単じゃないし、うまく仕上がらないからね。" userName="Alupis" createdAt="2025/06/06 21:24:02" color="#ff5733">}}




{{<matomeQuote body="僕はdrywall、プロと同じくらいできるけど、時間が6倍かかるだけ。やるのは簡単だけど、プロみたいに仕上げるにはたくさんの練習が必要だよ。6倍長くかかるつもりでゆっくりやれば、薄く重ね塗りとかできるけどね（プロはmudを3回塗るけど、僕は同じ厚さに6回）。これは「自分でやるか雇うか」の話だね。" userName="bluGill" createdAt="2025/06/06 23:57:01" color="#ff5c5c">}}




{{<matomeQuote body="そんなに難しくないって！2009年にIraqから帰ってきて家を増築した時に自分でやったんだ。IRSからもすごいrefundがあったよ。GWOT vetsとcombat payに関する税金の話かな。ポーチを部屋にして、permitsも取って、電気とか窓も追加。architectのblue print plansを84 lumberに渡せば材料教えてくれる。drywallは壁に持ち上げてscrewで止めて、drywall tapeやmudで継ぎ目を隠すだけ。Orange peelでごまかせるし、paintすればOK。かなりstraightforwardだよ。" userName="firesteelrain" createdAt="2025/06/07 09:16:12" color="">}}




{{<matomeQuote body="その通りだね。今回の地下室のdrywallは、暗くて完璧さはそんなに求めてなかったんだけど、自分でやるよりプロに頼んだ方が断然きれいに仕上がったよ。" userName="cperciva" createdAt="2025/06/06 21:36:04" color="#ff33a1">}}




{{<matomeQuote body="Drywallerは本当にすごいよね。DIYerとしては、どうしても上手くできない数少ないことの一つなんだ。穴を開けるのは好きだけど、プロがパッチするのを見るとレベルが違うって思うよ。" userName="jonhohle" createdAt="2025/06/07 01:59:27" color="#ff5733">}}




{{<matomeQuote body="僕の壁にはOrange peel模様があるから、spackleで滑らかにしてsandedしたら、Orange peelをスプレーしてるよ。そうすれば修理した場所なんて誰も分からないね。" userName="firesteelrain" createdAt="2025/06/07 09:11:36" color="">}}




{{<matomeQuote body="ある程度お金があると、お金さえも買えるんだね。この前、冷蔵庫をまとめて払ったら10%割引になったんだけど、お金がなかったら割引は受けられなかった。だから、ある意味貧しいってことは、何でも高くついちゃうってことなんだよ。" userName="AlienRobot" createdAt="2025/06/06 22:43:57" color="#38d3d3">}}




{{<matomeQuote body="金持ちがあんなに金持ちなのは、結局使う金が少ないからだって話。例えばブーツ…。本当に良い革のブーツは五十ドル。でも、手頃なブーツは十ドルだけど、すぐにダメになってひどく水漏れする。良いブーツは何年ももつから、五十ドル払える男は十年後も足が濡れないのに、安物しか買えない貧しい男は百ドル使ってもまだ足が濡れてるってこと。<br>これは「ブーツ理論」だよ。https://en.wikipedia.org/wiki/Boots_theory" userName="phonon" createdAt="2025/06/07 00:00:13" color="#38d3d3">}}




{{<matomeQuote body="14年前のバグが今、どう関係あるの？" userName="tedunangst" createdAt="2025/06/06 22:25:01" color="">}}




{{<matomeQuote body="もし100％バグがないソフトウェアを書く方法を見つけたなら、ぜひ聞かせてもらおう。" userName="cypherpunks01" createdAt="2025/06/06 22:25:16" color="">}}




{{<matomeQuote body="バグと、ヤバいバグってのがあるんだよ！" userName="77pt77" createdAt="2025/06/06 22:46:41" color="">}}




{{<matomeQuote body="たしか、nonceが1回だけ使われなかった脆弱性だったよね？<br>Rustでも検出難しいんじゃないかな。<br>それにしても、Colinの功績に比べて、15年近く前のミス（彼は可能な限り責任持って対応したのに）をこんな風にほじくり返されるのは気の毒だね。<br>FreeBSDでの彼の仕事や、scryptを世に出した貢献を考えたらさ。" userName="mkfs" createdAt="2025/06/07 00:34:18" color="#785bff">}}




{{<matomeQuote body="scryptを世に出した→皮肉なことに、あのバグはscryptのせいなんだ。<br>scryptを作ったことでTarsnapのcryptoコードをリファクタリングしたんだけど、その時にバグが紛れ込んだんだよ。" userName="cperciva" createdAt="2025/06/07 01:56:05" color="#ff5733">}}




{{<matomeQuote body="Rustでもあのバグは防げなかっただろうね。" userName="cperciva" createdAt="2025/06/06 22:46:51" color="">}}




{{<matomeQuote body="Amazonにはもっと支援してほしかったな〜。最低限しか払わないみたい。AmazonってFreeBSD sponsorsリストにもいないし [1]、Googleも$9Kだけ。Appleもだめ。Microsoftはリストにいて偉いね！Meta/Facebookもいないの忘れてた。FreeBSDとかOpenBSD使うなら、普通は毎年支援するべきでしょ？<br>[1] https://freebsdfoundation.org/our-donors/donors/?donationYea..." userName="ksec" createdAt="2025/06/06 21:13:36" color="">}}




{{<matomeQuote body="Amazonにもっと貢献してほしいのはもちろんだけど、Foundationに寄付してないからって支援してないわけじゃないんだよ。Foundation経由の支援って全体の10%くらいじゃないかな？（大事な10%だけどね）。私への給料だってFoundation通してないし。" userName="cperciva" createdAt="2025/06/06 21:21:03" color="#785bff">}}




{{<matomeQuote body="あのコメントは全体を見てないね。1. Foundationへのその年の寄付だけ見てる。過去の寄付は入ってない。2. コード開発の貢献が入ってないよ。あれはリリースノートに載ってる [1]。<br>[1] https://www.freebsd.org/releases/" userName="vitorsr" createdAt="2025/06/06 22:07:58" color="#ff5733">}}




{{<matomeQuote body="AmazonってMinecraftのNotchよりFreeBSDにいっぱい寄付したの？" userName="hackernoops" createdAt="2025/06/07 01:40:28" color="">}}




{{<matomeQuote body="Microsoftがなんで支援してるか不思議だなあ。Hyper-Vの機能はLinuxより劣るし、.NETの公式ポートもない。Microsoftのサービスで*BSDで動いてるのなんて全然思いつかないんだけど。" userName="p_ing" createdAt="2025/06/06 22:44:50" color="">}}




{{<matomeQuote body="AzureでFreeBSD動かしてるお客さんいるし、Microsoftも公式にサポートしてるよ [1]。<br>[1] https://learn.microsoft.com/en-us/azure/virtual-machines/linux/freebsd-virtual-machines-on-azure" userName="voidfunc" createdAt="2025/06/06 22:52:28" color="#785bff">}}




{{<matomeQuote body="これだけで全部かは分かんないけど、Microsoftの社員がFreeBSDに寄付するって投票した年があったんだよ。社員がOpen sourceプロジェクトに投票してMicrosoftが寄付する仕組みがあって [1]、FreeBSDがそれで資金もらったらしい。毎年かは不明だけど、FreeBSD Foundation見ると2025/2024/2023のスポンサーにMicrosoftがいるから、多分続いてるんじゃない？<br>[1] https://resources.github.com/open-source/microsoft-foss-fund/" userName="tcmart14" createdAt="2025/06/08 04:45:36" color="#ff5c5c">}}




{{<matomeQuote body="分かんないけど、MicrosoftにはFreeBSD用のHyper-V開発者が何人かいるよ。FreeBSD開発者サミットにも来たことあるし。" userName="cperciva" createdAt="2025/06/06 22:46:14" color="">}}




{{<matomeQuote body="思ってたんだけど、たったこれだけの金額でも、広告とかマーケティングとして、有名なOpen sourceプロジェクトにロゴ載っけて、少しでも印象良くしようとしてるんじゃないかなって。" userName="ksec" createdAt="2025/06/06 23:03:21" color="">}}




{{<matomeQuote body="Hotmailチームに詳しい人がいたことの、すごーく昔からの名残で、MicrosoftがLinuxじゃない、ちょっとUnixっぽいものも提供できるようにしたい、っていう考えなんじゃない？" userName="petesergeant" createdAt="2025/06/07 02:31:23" color="">}}




{{<matomeQuote body="彼らは見てないだろうけど、数十億ドルもの価値がある会社が999ドル以下しか寄付しないなんて、正直言って無いに等しいね。俺が1セント寄付するようなもんだよ。Appleの純資産から見たら、俺の出す割合とほぼ同じくらいだ。俺は50-99ドルのカテゴリだけど、それでもそんなに簡単じゃないんだ、俺の住んでるとこじゃドルは安くないからさ。" userName="wkat4242" createdAt="2025/06/07 01:06:46" color="">}}




{{<matomeQuote body="500–999ドル寄付した何百人って名前と一緒に載ってるから見落としやすいのは確かだね。まあ、それがAppleが払える上限なんだろうな。" userName="paxys" createdAt="2025/06/06 23:48:47" color="">}}




{{<matomeQuote body="＞ それがAppleが払える上限なんだろうな。<br>これ前は考えたことなかったけど、従業員が寄付して、Appleがそれを社員の慈善寄付マッチングとして500-999ドル出したって可能性ある？それならすごく辻褄が合うけど、寄付としてはなんか笑える見た目になるね。" userName="eredengrin" createdAt="2025/06/07 02:35:36" color="">}}




{{<matomeQuote body="ホームゲートウェイ、ファイアウォール、DNS、DHCPサーバーにFreeBSDを使いたかったんだけど、残念ながら俺の10 GbE NICにドライバがないみたいで、結局Nixにしたんだ。昔、何年も前にワークステーションでFreeBSDを使ったことがあって、すごく思い出深い体験だったんだよね。まだ頑張ってるのが見れて嬉しいよ。" userName="xedrac" createdAt="2025/06/07 03:48:14" color="">}}




{{<matomeQuote body="俺は自分と会社のインフラ全部にFreeBSDを使ってるよ。ハードウェアはIntel NIC搭載のものだけ使うんだ、FreeBSDで100％信頼できるからね。Realtekのは、FreeBSDエンジニアが頑張ってドライバをメンテしてるのに、なぜか負荷がかかるとダメになるみたいだ（文句言ってるわけじゃなくて、彼らの努力には感謝してるよ）。これは大した代償じゃないし、不安定なOSをインストールせずに済むからね。" userName="dazzawazza" createdAt="2025/06/07 09:37:21" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="FreeBSDのバージョン7か8の頃、Atheros Wi-FiカードみたいなやつでLinuxよりFreeBSDの方がドライバが良かった時期を覚えてるよ。2021年頃までFreeBSDが好きだったんだけど、違うCPUが混ざったPC（bigとlittleコアみたいな）が一般的になってきて考えが変わったんだ。最初にRockPro64（big 2、little 4コア）を買って、次にIntel Alder lakeを使ったんだけど、FreeBSDのスケジューラは今でもこれをうまく扱えないみたいで、遅いコアの性能に引っ張られちゃうんだよ。" userName="irusensei" createdAt="2025/06/07 12:35:59" color="#ff5c5c">}}




{{<matomeQuote body="それはFreeBSD Foundationのロードマップにあるよ：https://github.com/FreeBSDFoundation/proj-laptop/issues/22" userName="kevans91" createdAt="2025/06/08 01:04:50" color="#45d325">}}




{{<matomeQuote body="ちょっと知りたいんだけど、FreeBSD/EC2の一番使う人たちって誰？" userName="commandersaki" createdAt="2025/06/07 02:00:46" color="">}}




{{<matomeQuote body="全然わかんないや。マジで、俺に話しかけてくるユーザーはFreeBSD/EC2ユーザー全体の多分0.1%くらいだよ。EC2でFreeBSD使ってる人が誰なのか、ぜひ知りたいね。" userName="cperciva" createdAt="2025/06/07 02:25:28" color="">}}




{{<matomeQuote body="俺が働いた金融サービスでは、EC2やデータセンターのオンメタルでFreeBSDを使って、毎月数百万件のトランザクションを処理してるよ。<br>このOS好きだよ、作業に感謝！" userName="broken_broken_" createdAt="2025/06/07 04:44:10" color="#785bff">}}




{{<matomeQuote body="NetflixはCDNでだけ使ってるの？" userName="temp0826" createdAt="2025/06/07 02:15:29" color="">}}




{{<matomeQuote body="そう、NetflixのCDNはFreeBSDだけど、最後に聞いた話だとクラウド運用は全部Linuxらしいよ。" userName="cperciva" createdAt="2025/06/07 02:26:30" color="#ff5733">}}




{{<matomeQuote body="OSSへの企業支援についてすごく分かりやすい記事だね。書いてくれた著者に感謝するよ。" userName="nithssh" createdAt="2025/06/07 19:50:12" color="">}}




{{<matomeQuote body="FreeBSD使ってる人、Unix界隈でどんなニッチを埋めてるのか教えてくれない？ずっとシンプルで一貫性のあるOpenBSDやNetBSDじゃなくて？もしZFS、Nvidiaドライバー、ELFとかのサポートが理由ならLinuxでいいじゃん？GNUの問題はよく知ってるけど、Musl Voidみたいなのにも問題あるの？<br>マジで純粋に興味あるんだ。FreeBSDは俺にとって一種の影の領域にあって、何が動かし続けてるのかその魂を特定できたことが一度もないんだけど、どこかにあるのは知ってるよ。" userName="johnnyjeans" createdAt="2025/06/07 00:32:27" color="#45d325">}}




{{<matomeQuote body="FreeBSDはOpenBSDやNetBSDよりずっとユーザーが多くて、ソフトウェアカタログもかなり大きい。実用的なモダンデスクトップとしても使えるけど、他の二つにはそれは言えないね。<br>Linuxを使わない理由？Linuxが嫌いなんだよ。企業利益に絡みすぎててさ。" userName="wkat4242" createdAt="2025/06/07 01:09:26" color="#ff5c5c">}}




{{<matomeQuote body="俺の印象だと、FreeBSDはFOSSにおけるAppleの影、つまりAppleが結構ソフトパワーを持ってるんじゃない？カーネルは違うしユーザーランドの一部しか同じじゃないのは分かってるけど、FreeBSDってAppleから十分離れてるって言えるほど、企業利益にまみれてないの？Linuxと同じとは全く思わないけど、無視できない形で存在してるよね？" userName="johnnyjeans" createdAt="2025/06/07 01:20:12" color="#ff5733">}}




{{<matomeQuote body="違うよ。Apple（というかNeXT）はmacOS向けにユーザーランドの一部を持っていったけど、貢献はしてないし影響もほとんどない。昔のフォークみたいなもんだね。<br>使ってる会社もいくつかあるよ。SkypeとNetflixは昔使ってたけど、今はほとんど使ってない（少なくともSkypeは離れた。Netflixは分からないけどBSD開発者からは聞かないね）。Ix systemsとnetgateは使ってるけど小さいよ。<br>いや、些細な影響もないし、間違いなくAppleからの影響はないね。<br>これはLinuxとの大きな違いで、Linuxではカーネルコミットの大部分が大企業から来てて、エンドユーザーが気にするようなこととは関係ないんだ。あと、FreeBSDの世界にはLinux Foundationみたいな企業ロビー団体も無いよ。" userName="wkat4242" createdAt="2025/06/07 01:59:42" color="#ff5733">}}




{{<matomeQuote body="FreeBSDを日常使いしてる経験から言うとさ、systemd避難所であり、Linux代替としてソフト互換性とかハードウェアサポートも比較的いい唯一のBSDなんだよね。他のsystemdフリーLinuxよりコミュニティは小さいけど、Linuxは断片化しすぎ。unix系20年使ってると、FreeBSDはjails, ZFSみたいのが全部ベースに入ってて、すげー統合されてて使いやすい。ドキュメントもmanpageで全部揃ってる。Linuxは5年前のやり方も通じないくらい変更多すぎ、複雑すぎてもうついていけないよ。" userName="mtlmtlmtlmtl" createdAt="2025/06/07 13:11:01" color="#ff5733">}}




{{<matomeQuote body="コメントに同意！Linuxのヤバいとこはカーネルだけで、他がバラバラに開発されてる点だね。Linux勢は半年ごとに車輪を再発明したがるけど、BSDは既存を良くしていく傾向があると思うわ。" userName="MrArthegor" createdAt="2025/06/07 17:39:46" color="">}}




{{<matomeQuote body="”AppleがFreeBSDにソフトパワー持ってる”って話、どこから来たの？NetflixとかNetApp、Juniperの方が貢献度高いし、Appleはトップ10にも入らないと思うんだけどな。" userName="cperciva" createdAt="2025/06/07 02:05:20" color="">}}




{{<matomeQuote body="Appleのソフトパワーって印象は、メンテナー側の話でね。LinuxでRedHatとかが出てくるのと同じような抽象的なパターンなんだ。ix systemsとの繋がりもあって、メンテナーならNetflixよりApple優先するだろうって推測だけど。AppleがIBMより長生きした歴史見ても、無視できないパワーだと思うんだよね。全部推測だけどさ。" userName="johnnyjeans" createdAt="2025/06/07 02:48:32" color="#38d3d3">}}




{{<matomeQuote body="Appleが下流から引っ張ってるのに影響力ないって信じられないんだよね。ix systems創業者がApple経由で、Appleもクライアント。ビジネスは人間関係だよ。企業の影響力がないと、必要な人が雇えなくて9 Frontみたいになっちゃう懸念もある。最近のLinuxは攻撃的すぎるから、FreeBSDの方がいいね。" userName="johnnyjeans" createdAt="2025/06/07 02:36:50" color="">}}




{{<matomeQuote body="Linuxは”ただの”カーネルだよ。FreeBSDと比べるなら、FedoraとかDebian、ArchみたいなLinuxディストロと比べるべきだね。" userName="tuna74" createdAt="2025/06/07 18:03:57" color="">}}




{{<matomeQuote body="FreeBSDはスループット重視だよ。OpenBSDは違うし、NetBSDは移植性重視でネットワークはそんな注力してないと思う。BSDはLinuxより変更が少ないから、統合プラットフォームとして使いやすいんだよね。" userName="toast0" createdAt="2025/06/07 02:22:24" color="">}}




{{<matomeQuote body="FreeBSDがニッチ？OpenBSDやNetBSDより複雑なのに何で？Linuxと何が違う？って質問だけど、FreeBSDは他のBSDの良いとこのバランスがいいんだよ。ZFSサポートはマジでヤバい。Nvidiaドライバーも最近はネイティブ対応したしね。FreeBSDの魂？それは他のBSD機能のいいとこ取りと、使ってるハードウェアでの安定性だと思うわ。" userName="AdieuToLogic" createdAt="2025/06/07 02:01:18" color="#38d3d3">}}




{{<matomeQuote body="Linuxがカーネルだけなのは分かってるけど、コンポーネント開発がバラバラって批判は変わらないね。これはLinuxカーネルの哲学で、メンテナーがカーネル外に無関心だから。FreeBSD開発者は違うんだ。再発明の話はディストロ向けだってのは認めるよ。" userName="MrArthegor" createdAt="2025/06/07 19:22:46" color="">}}




{{<matomeQuote body="Appleってあんまりマージしないんだよね。カーネルtcpは2002年からほぼなし。userlandも数年〜十数年に1回くらい。bashもライセンス変わってやめたしね。AppleがLLVM主導してFreeBSDが採用したから、そこからApple影響力説が出たのかもね。" userName="toast0" createdAt="2025/06/07 02:53:45" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
