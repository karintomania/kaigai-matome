+++
date = '2025-05-25T00:00:00'
months = '2025/05'
draft = false
title = '今、何作ってる？HNユーザーに聞く、あなたの開発プロジェクト！'
tags = ["開発", "個人開発", "プロジェクト", "ソフトウェア開発", "Hacker News"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> 今、何作ってる？HNユーザーに聞く、あなたの開発プロジェクト！

引用元：[https://news.ycombinator.com/item?id=44090387](https://news.ycombinator.com/item?id=44090387)




{{<matomeQuote body="オープンソースでセルフホストできるニュースレターアプリ開発中。Facebook使わず家族写真や近況をシェアしたくて自分用に作ったんだ。週に投稿を書いてグループ分け（family, friendsなど）。週末に自動でグループごとのニュースレター作成。全画像DLリンク付き。Emailベースでシンプル、お年寄りにも使いやすく。家族構成上multilingual supportも目標。今週MVP作って親世代にテスト予定だよ。" userName="creakingstairs" createdAt="2025/05/26 00:37:04" color="#785bff">}}




{{<matomeQuote body="メール配信のデリバラビリティは超重要で、すぐダメになる可能性あるよ。スパム報告数件でblack listedされるかも。ユーザーが購読忘れちゃうことも考えて。大量配信だとphysical addressやunsubscribe link必須だけど、mail providersにspam判定されやすいから要注意ね。対策考えとくと良いよ。" userName="dzink" createdAt="2025/05/26 04:22:51" color="#38d3d3">}}




{{<matomeQuote body="今のところSaaSとして提供するつもりはなくて、セルフホストできるアプリとしてだけ考えてるから、デリバラビリティの問題はあんまり考えてなかったんだ。自分のdomainを持ってるような、ちょっと技術に詳しい人が自分の家族や友達のためにホストする、みたいな感じになればいいなって。<br>EDIT：でもアドバイスありがとう！もしこれがビジネスだったら、デリバラビリティは考えるべき大事なことだって同意するよ。" userName="creakingstairs" createdAt="2025/05/26 05:05:17" color="">}}




{{<matomeQuote body="受信者がcoworkersとfamilyみたいに複数グループ兼ねる場合ってあるの？そうなら、全グループの投稿をまとめたニュースレターが1つ欲しいな。でもそれって、グループ数増えるとニュースレターの種類が爆発的に増える可能性あるよね。各受信者に個別カスタマイズしてるかlistserv style distributionかによって、これが問題になるかどうかが変わると思うけど。" userName="hunter2_" createdAt="2025/05/26 04:43:22" color="#38d3d3">}}




{{<matomeQuote body="これについては行ったり来たり悩んでるんだ。最初のバージョンでは、シンプルにするために一人当たりのグループは一つだけにするつもりだよ。" userName="creakingstairs" createdAt="2025/05/26 05:10:23" color="">}}




{{<matomeQuote body="これ、Google+’s circlesに似てるね。" userName="sigkill" createdAt="2025/05/26 11:33:16" color="">}}




{{<matomeQuote body="Pagecordにprivate blogs/post supportを追加したら、これに近いことができるようになるかも。たぶん。そんな感じ。<br>https://pagecord.com." userName="lylo" createdAt="2025/05/26 07:32:23" color="">}}




{{<matomeQuote body="Pagecord、すごくいいね。前にBear blogに触発されて似たものを作ろうかと思ったんだけど、サービスを維持できる保証がないなと思ってやめちゃったんだ。君の試みが成功することを祈ってるよ！" userName="creakingstairs" createdAt="2025/05/26 09:05:57" color="">}}




{{<matomeQuote body="ありがとう、嬉しいよ。Bearblogは僕も大ファンなんだけど、自分で欲しい機能を叶えたくて、non-techies向けにちょっと違うものを作りたかったんだ。Blog by emailが一番欲しかった機能だったんだよ。" userName="lylo" createdAt="2025/05/26 10:43:38" color="">}}




{{<matomeQuote body="このアプローチはcoolで、すごく共感できるよ。Emailを拡張するワークフローって、すごく強力になり得るんだ（少なくとも僕たちdinosaursにとってはね）。" userName="dowager_dan99" createdAt="2025/05/26 16:31:44" color="">}}




{{<matomeQuote body="いいプロジェクトだね！これ、ＳＮＳの代わりとして自分で立てたいくらいだよ。ＭＶＰができたら教えてほしいな。ちょっと気になるのは、もし多くの人からニュースレター送られたら、受け取る人が大変になっちゃわないかなってこと。ところで、僕はこれとは逆のやつを作ってるんだ。オープンソースのフォーム送信転送サービスだよ。低トラフィックのサイトで経済的に使える、透明で従量課金制のサービスが欲しくて作ったんだ。今年中にdocker-composeを加えて、セルフホストをもっと簡単にしたいと思ってる。今は全部手作業なんだ。 ｈｔｔｐｓ：／／simplecontactform.org" userName="maxibenner" createdAt="2025/05/26 12:40:37" color="#ff5733">}}




{{<matomeQuote body="これ、すごくワクワクするアイデアだね。Facebookとかのアルゴリズム広告を回避して、本当に見たいコンテンツだけ見られるようになるのがすごくいいと思ったよ。" userName="pizzly" createdAt="2025/05/26 02:39:24" color="#ff5c5c">}}




{{<matomeQuote body="これ、いくつかの商用製品を思い出すね（Famileoとか）。このタイプの製品でオープンソースとかセルフホストできるバージョンは知らないなあ。" userName="eiffel31" createdAt="2025/05/28 13:23:44" color="">}}




{{<matomeQuote body="もしもうオープンソースになってるなら、リンク欲しいな！" userName="matthewwolfe" createdAt="2025/05/26 03:15:02" color="">}}




{{<matomeQuote body="ごめん、まだだよ。公開する前に整理してテストしたいんだ。" userName="creakingstairs" createdAt="2025/05/26 03:32:15" color="">}}




{{<matomeQuote body="これ、なかなか面白いね。もしかしたらＳＮＳ問題を解決するユニークなアプローチになるかも。頑張ってね！" userName="abhimanyue1998" createdAt="2025/05/26 02:16:38" color="">}}




{{<matomeQuote body="メールは自分でホストしてるの？" userName="cornfieldlabs" createdAt="2025/05/26 00:45:29" color="">}}




{{<matomeQuote body="いや、サードパーティのプロバイダーを使う必要があるんだ。今はAmazon SESを使ってるけど、他のメールプロバイダーに簡単に置き換えられると思うよ。" userName="creakingstairs" createdAt="2025/05/26 01:23:35" color="">}}




{{<matomeQuote body="トランザクションメール送るのにZohoが良かったよ。かなり安いし、配信問題もなかった（人によるだろうけど）。" userName="dowager_dan99" createdAt="2025/05/26 16:33:18" color="#ff5733">}}




{{<matomeQuote body="Nest Thermostatsの1世代目と2世代目は、10月からGoogleのサポートが終了するらしいね。オレは2世代目のNestサーモスタットのオープンソース版を作ってるんだ。<br>本体の外側、回すリング、ディスプレイ、取り付け部品は再利用して、”頭脳”の部分だけHome Assistantと連携できるオープンソースの基板に置き換える感じかな" userName="z3ugma" createdAt="2025/05/26 01:54:08" color="#ff5c5c">}}




{{<matomeQuote body="これ、もし2回投票できるなら絶対するわ。メーカーに見捨てられた、まだ使えるハードウェアをリサイクル/再利用する取り組み、マジで好き。<br>古いハードウェアのサポートを打ち切る商業的な事情はわかるけど、それでも毎回ムカつくんだよね。" userName="ropable" createdAt="2025/05/26 03:40:06" color="#785bff">}}




{{<matomeQuote body="“サポートが終了する”って、具体的にどういう意味なんだろう？<br>もう全く動かなくなるってこと？<br>それとも、サポートはなくなるけど、動かなくなるまでは使い続けられるってこと？<br>もし前者なら、それはひどすぎるし、Googleが“leaf”プログラムでやろうとしてきた“良いこと”全部に反してると思うんだけどな。" userName="emrah" createdAt="2025/05/26 20:17:26" color="">}}




{{<matomeQuote body="いいね！ 広告目的の監視業界から抜け出す手段になるものは、どんなに小さくても最高だよ！" userName="CommenterPerson" createdAt="2025/05/26 14:09:49" color="">}}




{{<matomeQuote body="クールな個人プロジェクトに水を差すのは悪いんだけどさ、Home Assistantに繋げるだけなら、50ドルで安くてシンプルなZ-Waveサーモスタット、例えばCT101みたいなのを買えばいいだけじゃん。<br>その方が問題は完全に解決するし、将来的に使えなくなるリスクもないよ。" userName="dangus" createdAt="2025/05/26 03:42:05" color="">}}




{{<matomeQuote body="CT101はNest Thermostatに比べると見た目がひどいよね。オレは君がクールな個人プロジェクトに水を差してるなんて思わないけどさ。" userName="dfc" createdAt="2025/05/26 04:35:20" color="">}}




{{<matomeQuote body="空っぽのキャンバス絵をかぶせちゃえばいいじゃん。見た目なんて誰が気にするの？<br>死んだハードウェアの中に収まるように新しいハードウェアを設計するなんて、50ドルで既製品で済むことをやるのが、オレの楽しい個人プロジェクトのアイデアではないんだよね。" userName="dangus" createdAt="2025/05/27 18:37:45" color="">}}




{{<matomeQuote body="人それぞれ考え方は違うよね。でも、“家の中のインテリアがどう見えるかなんて誰が気にするんだ”って言うのは、ちょっとナイーブすぎるかな。<br>サーモスタットのディスプレイを隠したくないし、家の中のインテリアを気にする人たちの層って、想像できるでしょ？<br>たぶん、そういう人たちのグループってかなりの数いると思うんだ…だから、君はOPのお祭りに水を差してないと思うよ。" userName="dfc" createdAt="2025/05/29 03:04:20" color="">}}




{{<matomeQuote body="オレがCT101を選んだのは値段が安いからね。Honeywell T5みたいにもっと見た目が良いやつもあるし、それだってZ-Waveをサポートしてるから、Home Assistantと標準のZ-Waveプロトコルで連携すれば、スマートホームのクラウドサポートがなくなる心配のないサーモスタットっていう目標は達成できるよ。<br>安いサーモスタットでも見た目が良いのはたくさんある。30ドルの丸いHoneywellのアナログサーモスタットなんて、時代を超えたデザインだよ。<br>30ドルのプログラムできないデジタルサーモスタット(RTH5160)も、十分見た目は良いと思うし、少なくとも醜いとは言えないな。このプロジェクトの目標は、特に見た目に関することだとは解釈してなかったんだ。" userName="dangus" createdAt="2025/05/29 16:41:59" color="#785bff">}}




{{<matomeQuote body="このアイデア、すごく好きだよ。オレはNestは持ってないけど、こうやってデバイスを少しでも使い続けられるようにする努力、本当にすごいと思う。" userName="sircastor" createdAt="2025/05/26 02:58:48" color="">}}




{{<matomeQuote body="16年勤めた会社辞めて原子力エンジニアリングでコンサルになったんだ。合間に個人プロジェクトいくつかやってるよ。新規参入が原子力品質保証プログラムを簡単に始められるオープンソースのキットとか、IAEAのPRISみたいな原子炉開発のDBとかね。これがあれば怪しいプロジェクトと本物を見分けやすくなると思う。" userName="acidburnNSA" createdAt="2025/05/25 20:50:34" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="すごく良いね！俺は10年くらい前に原子力業界辞めてさ、ヘルスケアとかIoTとか他のソフト技術やってきたけど、このスキルを原子力エネルギーにどうにか活かしたいんだよな。あと、whatisnuclear.com最高！10年くらい前にJSベースの可視化システム作ろうとしたことあったんだけど（github.com/ahd985/ssv見て）、全然市場とか見つけられなかったな。" userName="ahd985" createdAt="2025/05/25 21:54:12" color="">}}




{{<matomeQuote body="ちょっと聞きたいんだけど：SWEとしてこの分野の将来性ってどう？どんな経歴が必要で、需要はどうな感じ？原子力には前からすっげー興味あるんだけど、物理とか化学はちょっと苦手なんだよね。でも、君のやってることはマジでクールだよ！" userName="sky2224" createdAt="2025/05/26 02:07:10" color="">}}




{{<matomeQuote body="今原子力分野にはお金がいっぱい入ってきてて、SWEの需要はマジ高いよ。VCとかのスタートアップもたくさんあるし。物理／設計シミュレーション自動化、書類管理、QA対応、建設管理とか、SWEの仕事はたくさんあるんだ。ソフトスキル持った原子力エンジニアもいるけど、原子力に興味あるSWEが来てくれるのは超助かる。エンジニアとうまくやれば楽しいと思うよ。ただ、輸出管理法絡みで原子力ITチームと変な揉め事になるかも、そこは注意ね。" userName="acidburnNSA" createdAt="2025/05/26 10:16:45" color="#ff33a1">}}




{{<matomeQuote body="原子力エネルギープログラム進めようとしてる国（例：エストニア）に何か一般的なアドバイスある？SMRとか検討してるみたいなんだけど。あと、特にワクワクする、あるいは見過ごされてる分野とかある？（HALEU濃縮でゴッソリ資金集めたスタートアップの話みたいに）" userName="atlasunshrugged" createdAt="2025/05/27 06:30:22" color="#45d325">}}




{{<matomeQuote body="マジで大きなトピックだよ。国レベルならUAEが最近で一番参考になる例だと思う。法規制から技術実行まで彼らは上手くやった。専門家呼んで、実績ある設計選んで、複数連続で作るとかね。一番見過ごされてる設計は日立のABWRだと思う。IAEAが始めるには最高の場所。ガイダンスとかあるよ。このリンク見てね：https://www.iaea.org/bulletin/developing-nuclear-power-infra..." userName="acidburnNSA" createdAt="2025/05/27 12:31:27" color="#ff5733">}}




{{<matomeQuote body="機械エンジニアとして、長年ちょっとだけあった原子力製造とかNDEの経験を、フルタイムの仕事にどうやって繋げられるかアドバイス欲しいな。これからのスタートアップが求めてる資格とか具体的な経験、専門知識って何？俺は途上国出身でさ、こっちにはあまり機会がないんだ。この分野マジで大好きで、周りに熱弁してるんだけどね" userName="joebig" createdAt="2025/05/27 08:12:06" color="">}}




{{<matomeQuote body="マジで興味深い！どうやってこの業界に入ったの？" userName="sureglymop" createdAt="2025/05/25 20:58:20" color="">}}




{{<matomeQuote body="エネルギー関連のことがやりたくて、たまたま原子力工学科がある大学にいたんだ。同じ学生の先輩アドバイザーに学科の授業取ってみなって言われて、それがめっちゃ面白かったんだよね。" userName="acidburnNSA" createdAt="2025/05/25 21:01:47" color="">}}




{{<matomeQuote body="いやー、兵器開発プログラムにはそんなに役立たないと思うよ。キットは主に品質保証とか、コンプライアンス、構成管理、コストモデリングなんかに特化してて、高品質プルトニウムの作り方とか分離の化学とか、非公開情報は一切なし。兵器設計についても当然触れない。でも、普通の炉心設計の知識はかなり手に入るよ。" userName="acidburnNSA" createdAt="2025/05/26 10:22:46" color="#45d325">}}




{{<matomeQuote body="SMRsっていうコンセプト全般についてどう思う？この分野のスタートアップの盛り上がりも見たけど、YouTubeエンジニアたちは基本的に実現不可能だって言ってるのも見たんだ。" userName="lancekey" createdAt="2025/05/27 13:24:27" color="">}}




{{<matomeQuote body="SMRは広義で、マイクロリアクターもあるよ。過去にたくさん小型炉は作られたけど、運転コストが高くてほとんど閉鎖したんだ。<br>例としてPM-3A、SM-1A、SL-1とかがあるね。Peach Bottom HTGRやFt. St. Vrainも閉鎖。<br>歴史は失敗だらけで、簡単じゃないってこと。経験ない人がhypeしてもたぶん無理。<br>でも、小型炉は技術ノウハウ再構築に良いかも。辺鄙な場所で売るなら人材育成になる。<br>ただし、データセンターへの電力供給は難しそう。中性子が漏れすぎるからね。" userName="acidburnNSA" createdAt="2025/05/27 13:39:24" color="#45d325">}}




{{<matomeQuote body="これ、マジでめちゃくちゃ面白いね。リンクとか、HNにまた投稿してくれたりしない？楽しんでね！" userName="eftychis" createdAt="2025/05/25 21:21:59" color="">}}




{{<matomeQuote body="スターターキットのリポジトリってまだないの？ブックマークしたいんだけど。" userName="andrewfurey2003" createdAt="2025/05/25 21:00:22" color="">}}




{{<matomeQuote body="まだだよ！たぶんこの組織に登場すると思うよ https://github.com/whatisnuclear" userName="acidburnNSA" createdAt="2025/05/25 21:02:44" color="">}}




{{<matomeQuote body="古い広告集めてデジタル化してるんだ（https：//adretro.com）。数万枚あるけど、AI使ってデータ抽出してるから1日100枚ペースかな。お気に入りは1968年のコンピューター広告！" userName="rorylaitila" createdAt="2025/05/25 20:56:06" color="#45d325">}}




{{<matomeQuote body="すごいコレクションだね！机の上で写真撮ってるみたいだけど、もし持ってないならフラットベッドスキャナーおすすめだよ！" userName="mNovak" createdAt="2025/05/26 03:45:07" color="">}}




{{<matomeQuote body="貢献する方法とかある？昔10セントで買った古いNational Geographics持ってるんだ。あの雑誌の古い広告が大好きなんだよね。" userName="ashwinsundar" createdAt="2025/05/25 21:40:44" color="">}}




{{<matomeQuote body="広告って落書きみたいなもんだよね。最初は迷惑で邪魔だけど、時間が経つと面白い遺跡になるんだ。" userName="DamnInteresting" createdAt="2025/05/26 01:52:59" color="">}}




{{<matomeQuote body="ありがとう！そう、写真撮ってるだけ。スキャンも考えたけど、量が多すぎて1枚あたりの作業時間を削りたかったんだ。もう5万枚くらいあるけど、元の資料のたった1％くらいだよ！サイトには全面広告だけ載せてるけど、小さな広告も全部カタログ化してる。固定カメラといい照明を用意して、もっと画質上げたいなと思ってる。" userName="rorylaitila" createdAt="2025/05/26 06:37:40" color="#785bff">}}




{{<matomeQuote body="提供の申し出ありがとう！カタログ化するには現物の雑誌が必要なんだ。だから、手放してもいいなら教えてね。紙が多いと送料ちょっと高いかもだけど、もし大丈夫ならプロフに連絡先載せてるよ。" userName="rorylaitila" createdAt="2025/05/25 22:09:22" color="#ff5733">}}




{{<matomeQuote body="なんて素敵なアイデアなんだろう！タイムライン表示のリクエストに賛成！" userName="scroogey" createdAt="2025/05/26 07:21:40" color="">}}




{{<matomeQuote body="このアプローチ好きだな。完璧な画像撮ろうとして完璧主義の罠にはまって、結局何も公開できなくなりそうなんだ！ウェブサイトもすごくよくできてるね！" userName="tailspin2019" createdAt="2025/05/30 12:45:49" color="">}}




{{<matomeQuote body="めっちゃクールなプロジェクトじゃん！ウェブサイトも最高だね。分析データがあるとマジでやばいだろうな。なんでかは分かんないけど、色んな視点からまとめてデータを見るのは超面白そう、例えば、年別とか出版物別で一番人気の広告タイプは何だったか、とかさ。" userName="tomhavoc" createdAt="2025/05/26 07:18:59" color="#ff5733">}}




{{<matomeQuote body="＞俺のお気に入りの広告の一つ、1968年のコンピューターで”なぞなぞに答える”やつ：https://adretro.com/ads/1968-digi-comp-digi-comp-1-table-top...ちらっと見に行ったら、なんか俺のスマホのコンテンツブロッカーがちゃんと仕事したみたいで…" userName="mistersquid" createdAt="2025/05/26 17:42:42" color="">}}




{{<matomeQuote body="これマジでヤバいプロジェクトだよ！タイムラインビューで、特定の年代の広告がまとめて表示されて、その後に続く年代の広告が見れるみたいなの、超見たいわ！" userName="whiskey-one" createdAt="2025/05/26 06:44:30" color="#45d325">}}




{{<matomeQuote body="これ最高にイカしてるね！APIとか考えてる？" userName="chkpwd" createdAt="2025/05/26 03:08:25" color="">}}




{{<matomeQuote body="これマジでクールだね！広告をデジタル化するのに何使ってるの？" userName="atlgator" createdAt="2025/05/26 03:08:06" color="">}}




{{<matomeQuote body="もしアメリカにいるなら、郵送は割引が効くメディアメール料金を使うようにみんなに言っとくと良いよ！" userName="dghlsakjg" createdAt="2025/05/25 23:48:37" color="#ff5c5c">}}




{{<matomeQuote body="古い印刷広告を見るのに興味ある人向けに、archive.orgには古いカタログの超大量コレクションがあるよ" userName="washmyelbows" createdAt="2025/05/26 03:54:03" color="#ff5733">}}




{{<matomeQuote body="”answers riddles”ーどんな感じ？" userName="neonwatty" createdAt="2025/05/27 15:27:36" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これ、めっちゃすごいじゃん！お宝の山みたいなの作ってるんだね。物理的な雑誌は残しつつAIでメタデータ抽出するってアプローチ、文化遺産を保存する上でめちゃくちゃ考えられてると思う。1968年の”answers riddles”っていうコンピューター広告、マジで最高だわ。コレクションが増えていくのが楽しみ！" userName="rriley" createdAt="2025/05/26 02:16:01" color="#ff5c5c">}}




{{<matomeQuote body="ありがとう！作業を助けてサイトに自動公開するためのウェブアプリ（adverdexって呼んでるんだ）を作ったんだ。雑誌を管理して画像を撮り、OpenAIで情報を抽出してから手動で確認・追記する流れだよ。今は全ページ広告だけだけど、今後は全ての広告をカタログ化したいと思ってる。" userName="rorylaitila" createdAt="2025/05/26 06:56:27" color="#38d3d3">}}




{{<matomeQuote body="ありがと！うん、バックログを少しでも減らすために、だいぶ野望を縮小しなきゃならなかったんだ…" userName="rorylaitila" createdAt="2025/05/30 14:04:26" color="">}}




{{<matomeQuote body="ありがとう！そうそう、それ考えてるよ。どんな使い方を想定してる？カタログは自分で開発したフル機能のウェブアプリなんだ。今はサイトがごちゃごちゃしないように、一番良い広告だけ公開してる。でも、APIを提供したり、全メタデータへのアクセスを提供したりできるかもね。" userName="rorylaitila" createdAt="2025/05/26 07:03:57" color="#38d3d3">}}




{{<matomeQuote body="たぶんキャッシュの問題だと思う。時々みたいだから調べてみるね。" userName="rorylaitila" createdAt="2025/05/26 18:47:50" color="">}}




{{<matomeQuote body="ありがとう！うん、そう思う。何か面白いトレンドが見つかって、それについて書けると良いなと思ってるよ。" userName="rorylaitila" createdAt="2025/05/26 11:21:09" color="">}}




{{<matomeQuote body="そうだね！広告って、その時代の特定の信頼性を捉えてる感じがする。変わっていく願望とか、好みとか、価値観とかね。" userName="rorylaitila" createdAt="2025/05/26 06:48:28" color="">}}




{{<matomeQuote body="子供向けの新しいYouTubeアプリ/プレイヤー作ってるんだ。これだとアルゴリズムを自分で制御できるんだ。裏側ではLLMがYouTubeの検索クエリに翻訳してるだけ。見た目は同じ。<br>おすすめ動画は、子供たちが好きなテーマ（例えば、面白い数学33％、DIYエンジニアリング33％、創造的な活動33％）の事前定義バケットから来るよ。動画のおすすめで、タイトルや説明に禁止ワード（MrBeastとかMinecraft関連とか）が入ってるのは表示されないんだ。<br>興味ある人はメールちょうだい。リストに入れるよ。コミュニティのGoogle Docにアイデア貢献もできるよ。jim．jones1＠gmail．com" userName="aantix" createdAt="2025/05/25 21:36:04" color="#ff5c5c">}}




{{<matomeQuote body="このアプリ、大当たりかもね。子供へのテクノロジーの影響についてみんな心配してるし、親はお金惜しまないからね。個人的にも興味あるんだ。うちの子はまだ小さいから、YouTubeは一緒に見てるけど、それでも注意を引くおすすめに弱いんだよ。「劇場モード」とか「チャンネルをおすすめに表示しない」である程度は調整してるけど、理想はインターフェース全体を自分で制御することだよね。" userName="stopthe" createdAt="2025/05/26 13:09:43" color="#ff5733">}}




{{<matomeQuote body="これすごくいいね。16ヶ月の娘がいる新米パパとして、まだYouTube漬けじゃないけど、inevitable（避けられないこと）だと思ってる。見るようになったら、教育的な内容とスクリーンの時間制限とのバランスを取りたいんだ。今までかなりうまくやれてる方だからね。とにかく、最高って言いたかったんだ。リストに入れてほしいな。別途メールするね。" userName="nlh" createdAt="2025/05/25 22:08:42" color="#ff5c5c">}}




{{<matomeQuote body="これ最高じゃん。フィードを自分で制御できるのがすごく重要だよね。これにLLMを使うなんて考えもしなかったけど、言われてみれば納得。俺も自分のフィードをもっと整理したいな。" userName="gervwyk" createdAt="2025/05/26 05:20:50" color="#ff33a1">}}




{{<matomeQuote body="ナイスアイデアだね。タイマー機能はついてる？ 例えば30分遊んだら、親に確認してから「外で遊びなよ」っておすすめするとか。" userName="CommenterPerson" createdAt="2025/05/26 14:15:04" color="#ff5733">}}




{{<matomeQuote body="タイマーはすごく良いアイデアだね。コミュニティのGoogle Docに加えておくよ。" userName="aantix" createdAt="2025/05/26 16:44:47" color="">}}




{{<matomeQuote body="タイマー付きのブラウザ拡張作った経験から言うと、タイマーが切れた瞬間にぶった切るより、動画と動画の間とか、長い動画のチャプターの間で再生を止める方が良いと思うよ。見てて楽しんでる最中に急に画面が真っ暗になるのはちょっとjarring（衝撃的）だからさ。" userName="willlma" createdAt="2025/05/27 16:55:14" color="#ff33a1">}}




{{<matomeQuote body="これ、ファンタスティックなアイデアだね。YouTubeのURLスキームとWhac−A−Mole（モグラ叩き）みたいになってるの？" userName="jimmcslim" createdAt="2025/05/25 23:20:07" color="">}}




{{<matomeQuote body="今のYouTubeだと、Whac−A−Mole（モグラ叩き）になるのはトピックに対してだよ。Fortniteチャンネル100個ブロックしても、すぐ別の1000個が出てくるんだ。悲しいけど、YouTubeはエンゲージメント重視だから、dislikeはアルゴリズムに全く影響しない。俺のアルゴリズムは、探索と子供向けに最適化されてるんだ。" userName="aantix" createdAt="2025/05/26 18:21:07" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
