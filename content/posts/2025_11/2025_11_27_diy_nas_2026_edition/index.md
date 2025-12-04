+++
date = '2025-11-27T00:00:00'
months = '2025/11'
draft = false
title = '2026年版 自作NASはここまで進化した！Ryzen搭載でゲームもHTPCもこなす最強ホームサーバーが爆誕！'
tags = ["自作NAS", "ホームサーバー", "Ryzen", "PC自作", "ゲーミングPC"]
featureimage = 'thumbnails/color4.jpg'
+++

> 2026年版 自作NASはここまで進化した！Ryzen搭載でゲームもHTPCもこなす最強ホームサーバーが爆誕！

引用元：[https://news.ycombinator.com/item?id=46065034](https://news.ycombinator.com/item?id=46065034)




{{<matomeQuote body="NASに興味あったけど、既製品は高くてスペック低いか、SATA多いマザボが手に入らないのがネックだったんだ。<br>でもSASボードを知って変わったよ。最終的にJonsbo N3ケース、ASRock B550M/ITX、Ryzen 5500GT、LSI 9207-8iとかで組んで、約1000ドルで8ベイのNASとHTPC、それにSilksongみたいなゲームも動かせる最強ホームサーバーができたんだ！<br>Ryzen 5500GTはアイドル時1Wで低消費電力なのに、高い処理能力とAPUでゲームもできるのが最高だよ。" userName="zeroq" createdAt="2025/11/28 02:06:01" color="#ff5733">}}




{{<matomeQuote body="LSI 9207-8i、いいね！<br>Truenas消してXCP-ng入れて、LSIをTrueNas VMにパススルーしちゃいなよ :)" userName="nuker" createdAt="2025/11/30 00:55:09" color="">}}




{{<matomeQuote body="良い意見だね。結局どんなドライブにしたの？N3のファンで何か問題はあった？<br>LSI 9300のITモードで似たようなの組もうか考えてるんだ :)" userName="sundar28" createdAt="2025/11/29 12:34:30" color="#ff33a1">}}




{{<matomeQuote body="もし予算重視ならTerraMasterは良いよ。ソフトウェアは少し粗いけど（機能は全部あるしアプリも入れられる、ただ洗練度は7-8/10くらい）、ハードウェアの作りはしっかりしてる。<br>10ベイならASUS Lockerstoreも好き。NVMeも2つあるし。僕はどっちの会社とも関係ない、ただのデータホストだよ。<br>これはここ1年くらいの話だから、最近何か変わったかは分からないけどね。" userName="amy_petrik" createdAt="2025/11/28 15:45:15" color="#45d325">}}




{{<matomeQuote body="RyzenってこのシステムのNAS部分に何を追加してるの？それともゲーミングだけ？" userName="SJetKaran" createdAt="2025/11/28 09:37:32" color="">}}




{{<matomeQuote body="Ryzenの主な利点は、以前は低消費電力でAtomやN300みたいなのを考えてたんだけど、Ryzenなら10倍の計算能力と強力な内蔵GPUがあって、アイドル時は1Wだよ。これで本格的なゲーミングもできるんだ。" userName="zeroq" createdAt="2025/12/02 06:39:38" color="#ff5733">}}




{{<matomeQuote body="この文脈でのNASは、単なるネットワークアタッチトストレージというよりホームサーバーのことだよね。<br>僕も自分のをNASって呼んでるけど、実際はセルフホスティングに使うことが多くて、データボリュームをマウントすることはほとんどないよ。<br>最近のユーザーはみんなそうだと思う。だから既製品はあんまり関係なくなってきてるんだ。<br>既製品のCPUはNASとしては十分だけど、サービスを動かすには力不足だからね。" userName="ffsm8" createdAt="2025/11/28 12:47:36" color="#785bff">}}




{{<matomeQuote body="AliExpressみたいな中国のECサイトでマザーボード買うのは、NASには問題視されるよね。<br>趣味の買い物ならAliExpressのセールは好きだけど、NASのマザボは違う。<br>おしゃれなケースやNoctuaファンとAliExpressのマザボの組み合わせは、信頼性に欠けるな。<br>NASのコアパーツは信頼できるメーカーから買うべきだよ。AliExpressは偽物やB品のリスクがあるから、NASの主要部品を買う場所としては論外だね。" userName="Aurornis" createdAt="2025/11/27 15:02:20" color="#ff5733">}}




{{<matomeQuote body="それはAliExpressのTopton公式ストアで売ってるToptonボードだよ。<br>メーカーから直接買うのと全く同じで、AliExpressじゃなくてToptonから発送されるんだ。<br>Jonsboケースも、AmazonよりAliExpressの方が安くて手に入れやすいんじゃないかな。<br>Jonsboも中国ブランドだしね。" userName="StopDisinfo910" createdAt="2025/11/27 15:51:24" color="#45d325">}}




{{<matomeQuote body="筆者だよ。みんなの意見に全く同意するね！AliExpressでのマザーボード購入は、ほぼ確実な当たりって思っていいはず。でも、何かトラブルがあった時のAliExpress対応はあまり良くないかもね。俺はこのリンクからマザーボード買ったし、また必要なら迷わず買うよ。もちろんAliExpressを避ける人がいても責めないけどね。AmazonとかeBayでもリセラーから買えることもあるけど、値段はちょっと高めになるかもね。ブログでも書いたけど、Intel CPUが品薄で値上がりしてるみたいだし。" userName="briancmoses" createdAt="2025/11/27 19:49:03" color="#ff33a1">}}




{{<matomeQuote body="N class CPUでのNASビルドを考えてたけど、すぐ自分には合わないって分かったよ。LAN経由のストレージ専用で低消費電力優先ならアリだけど、一見分かりにくいトレードオフがあるんだ。彼が突っ込んでるNVMe見た？あれ、定格の1＼8の速度で動いてるんだよ。マジで12.5%ね。（PCIe 4.0 x4とPCIe 3.0 x1の比較）。このボードはPCIeレイアウトではマシな方だけど[0]、Gen3レーンが9本ってのはどう見ても少ないから、どのボードもどこかで妥協してるんだよね。俺はeBayのAM4ビルドの方がいいって結論になったな。PCIeは全然いいし、ECCも使えるし、CPUもパワフルだし、SATAも多いし、安いし、NVMeは6本全部X4レーンだし、標準ファンも使えるしね。主な欠点はQuicksyncがないことと、消費電力、あと高速なECC UDIMMが手に入りにくいことくらいかな。これはProxmox＼NASハイブリッドビルドでの話で、性能重視だったからね。<br>詳しくはこれ見て→https://youtu.be/1YJ0s_LxXgU?t=690" userName="Havoc" createdAt="2025/11/27 18:02:33" color="#ff5733">}}




{{<matomeQuote body="なるほど。でも完全に理解できてるか確認したいんだけど、これって計算重い作業の時だけ関係する話？" userName="femiagbabiaka" createdAt="2025/11/27 19:04:35" color="">}}




{{<matomeQuote body="NASビルドだと、大抵はネットワークがボトルネックになるんだよ。ストレージの数字はギガバイト、ネットワークはギガビットだから、つまり1＼8ってこと。だから計算してみると、ストレージ（特にフラッシュ）はネットワークよりずっと速いから、NASはストレージで妥協できるんだ。もしVMみたいにストレージに直接アクセスするようなことをするなら、急にストレージの速度が重要になるね。" userName="Havoc" createdAt="2025/11/27 19:57:58" color="#38d3d3">}}




{{<matomeQuote body="うん、だいたい合ってる。PCIe 3.0 x1レーンだと500MB＼s [1]だから、SATA3の普通のSSDが600MB＼s出ることを考えると、あまり意味ないかもね。だから、めちゃくちゃ速いストレージが欲しいなら考えるべきだよ。現実的にDIYでやるなら、こういうNASとは全然違うものになるだろうね。費用対効果を考えたら、大容量の3.5インチストレージは中古のJBODエンクロージャーにくっつけて、メインデバイスは速いストレージを扱って、HBAで接続するのがいいんじゃないかな。<br>追記：ごめん、Havocが指摘してくれたけど、PCIe 3.0 x1は2GB＼sだったわ。これだと話が変わってくるね。" userName="greycol" createdAt="2025/11/27 19:48:00" color="#785bff">}}




{{<matomeQuote body="違うよ。Gen 3レーンは1 GB＼sのリンク速度だよ。それより、記事のFIOテストで1.2 GB＼sって出てるのがどういうことか。テストミスじゃないかな。" userName="Havoc" createdAt="2025/11/27 19:55:23" color="">}}




{{<matomeQuote body="え、毎年新しいのを組んでるの？！ハードウェア（特にAliExpressのマザーボード）の信頼性とか、データの保ちはどうしてるの？最長寿命が365日って短すぎない？" userName="mvkel" createdAt="2025/11/27 06:29:57" color="#ff5c5c">}}




{{<matomeQuote body="そりゃ、クリック数稼ぐためでしょ？" userName="SirFatty" createdAt="2025/11/27 10:29:25" color="">}}




{{<matomeQuote body="それに、記事には書いてないけどAmazonのアフィリエイトリンクからの報酬もあるんじゃない？記事と年ごとにタグ付け（tag=diyans2024-20, tag=diynas2025-20, tag=diynas2026-20）してるのも、ブログ全体に汎用タグ使うより、そこまで手間かける価値があるからだろうね。" userName="cube00" createdAt="2025/11/27 11:12:39" color="#ff33a1">}}




{{<matomeQuote body="新しいNASを組んでるけど、ドライブは使い回してるみたいだね。ドライブってNASの全体コストの大部分を占めるだろうし。<br>追記：読み間違えちゃった、古いNASからじゃないみたい。でもドライブの寿命は何十年も持つし、TBWも莫大なんだから、毎回新しいのを買うのは馬鹿みたいだね。" userName="p1necone" createdAt="2025/11/27 06:51:51" color="#ff5c5c">}}




{{<matomeQuote body="なんでアフィリエイトリンクが問題なの？価格も変わらないし、良い商品見つけられたんなら、著者が紹介料もらってもいいじゃん。なんか意地悪な考え方だよね。" userName="hamdingers" createdAt="2025/11/27 17:47:51" color="">}}




{{<matomeQuote body="アフィリエイトって、購入体験に影響あるよ。報酬が出ない「Xが好き」と、報酬が出る「Xが好き」じゃ全然違う。お金目当てで嘘つく人もいるし、これはインターネットの長年の問題だよね。" userName="Strom" createdAt="2025/11/27 19:18:28" color="">}}




{{<matomeQuote body="ドライブよりマザーボードとか、他の要素の方が心配だわ。" userName="adastra22" createdAt="2025/11/27 08:10:33" color="">}}




{{<matomeQuote body="システム障害なら前の意見もわかるけど、データ保持と復旧が最優先なら違うでしょ。個人的なものを保存するデバイスを作るなら、ドライブをケチるよりマザーボードを安くして壊れるリスクを取る方がいいと思うな。" userName="zdragnar" createdAt="2025/11/27 11:39:51" color="">}}




{{<matomeQuote body="僕がこのブログの著者だよ。君たちの疑問はわかるけど、ブログで助かる人の視点じゃないね。「毎年作ってるの？」ってよく聞かれるんだけど、ブログには賞味期限があるんだ。ハードウェアの信頼性を個人で証明するのは無理だけど、とにかくストレージが必要な人に解決策を見つけてもらうのが僕のブログの目的さ。" userName="briancmoses" createdAt="2025/11/27 15:21:29" color="#38d3d3">}}




{{<matomeQuote body="アフィリエイトの話ってそんなに二択じゃないと思うよ。報酬よりも影響力や権力の方が、人を動かすもっと強い力があるんじゃないかな。結局、何かしらのインセンティブが人の行動を動かしてるんだから、アフィリエイトを拒否したからって、それだけで「良い人」とは言えないんじゃない？" userName="mvkel" createdAt="2025/11/27 22:14:56" color="#45d325">}}




{{<matomeQuote body="このスレッド、大事なこと見落としてない？それは「非開示のアフィリエイトリンク」のことだよ。開示されてるアフィリエイトリンクとは全然違うし、こっちの方がかなり議論になるべき問題だと思うな。" userName="nothrabannosir" createdAt="2025/11/28 07:49:50" color="#ff33a1">}}




{{<matomeQuote body="安いマザーボードって、他のハードウェアを壊すこともあるから万能じゃないよ。俺はマザーボードはケチらないし、冗長性があるからドライブの方をケチるね。データ保持が最優先だから。マザーボードが接続機器を壊した話は聞くけど、ドライブが他の部品を壊した話は聞いたことないし。" userName="embedding-shape" createdAt="2025/11/27 12:06:19" color="">}}




{{<matomeQuote body="なんで「アフィリエイトリンク使ってます」って開示する必要があるんだろ？スポンサー案件とかならわかるけど、単なるアフィリエイト開示って、「このサイトは広告で生きてます」って言うのと同じで無意味じゃない？ただスペースと読む時間を無駄にしてるだけだと思うんだけど、これって何の役に立つの？" userName="machomaster" createdAt="2025/11/28 15:38:31" color="">}}




{{<matomeQuote body="レトリック抜きに聞くけど、アフィリエイトリンクって開示する必要ある？最近じゃマーケットプレイスへのリンクは全部アフィリエイトだってみんな思ってるんじゃない？" userName="whynotmaybe" createdAt="2025/11/27 15:36:24" color="">}}




{{<matomeQuote body="アフィリエイトリンクと他のケースって何が違うの？俺には全部同じ「キックバック」に見えるんだけど。全部許可されてるし、開示もすべきだよね。なんでアフィリエイトリンクだけ例外なの？" userName="nothrabannosir" createdAt="2025/11/28 16:31:31" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="なんで俺が低評価されてるか謎だな。このシステムじゃMBが単一障害点で、ドライブは違うだろ。長年ドライブ故障はたくさん経験してきたけど、RAIDのおかげでデータは失ったことないし。でも、MBやPSUが壊れた時はシステム全体が吹っ飛んだよ。" userName="adastra22" createdAt="2025/11/27 19:42:50" color="">}}




{{<matomeQuote body="「ネットの意見はあくまで個人の経験談」ってのはその通りだね。でも、レビュアーとかDIYerとか、ネットのほぼ全員が「開封レビュー」みたいなことしてるのが問題だよ。「このスマホやGPUを1ヶ月使ったレビュー」みたいなのばっかり。それでオンラインレビューを信用しなくなったんだ。<br>レビュアーが問題に直面しても、会社に連絡して交換品をもらって終わり。まるで全員が同じ状況になるかのようにね。ThermapenやPixel 4も、発売当初は絶賛されてたけど、半年から1年で色々な不具合が出た経験があるよ。" userName="eddythompson80" createdAt="2025/11/27 17:41:57" color="#785bff">}}




{{<matomeQuote body="君は特定の人物（自分？）を読者と想定してるみたいだけど、もっと広い視野で見てもいいんじゃないかな。ハードウェアの選択を見ると、信頼性より目先のコストを重視してるように見える。僕たちみたいに、みんなの意見を参考にして選ぶべきだよ。平均的な読者は「セットしたら後は忘れる」くらい信頼できるものを求めてるんだから。" userName="mvkel" createdAt="2025/11/27 16:59:07" color="#785bff">}}




{{<matomeQuote body="社会的な強制力しかないだろうけど、アフィリエイトリンクは開示すべきだね。「affiliate link」ってアンカーテキストにするか、アフィリエイトリンクの前にコミッションについての短い一文を入れれば十分だよ。" userName="toast0" createdAt="2025/11/27 16:18:03" color="">}}




{{<matomeQuote body="「毎年新しいNASを組むのか？」って？人によってはNASやホームラボの構築自体が趣味なんだよ。この手の記事は、そういう人向けに書かれてるもの。もっと意地悪な言い方をすれば、ブログが人気ならアフィリエイトリンクからの収益も無視できないし、前の年の記事はそんなに注目されないだろうね。" userName="dspillett" createdAt="2025/11/27 17:55:20" color="">}}




{{<matomeQuote body="読者層の理解に関しては、俺を信じてほしい！14年間もブログを書いて、読者と交流してきたから、彼らが何に価値を見出すか、よく分かってるつもりさ。読者は「セットしたら後は忘れる」ものを求めてるし、実際に僕が作ったDIY NASを何年も使ってくれてるって報告もたくさん受けてるよ。だから、今回のDIY NASも何年も信頼して使えるって、信じられないかもしれないけど、すごく自信があるね。" userName="briancmoses" createdAt="2025/11/27 18:18:29" color="#45d325">}}




{{<matomeQuote body="アフィリエイトリンクは開示すべき？イエスだよ。他の人が間違ったことをしてるからって、自分も間違っていい理由にはならないだろ。個人的な話だけど、開示されてる記事ならアフィリエイトリンクを積極的に使うし、されてないならアフィリエイトIDなしでアクセスしてるよ。もしアフィリエイトとそうじゃないリンク両方あれば、前者を使うし、書いた人の意見ももっと信用するね。" userName="dspillett" createdAt="2025/11/27 18:05:49" color="#ff5733">}}




{{<matomeQuote body="電源ユニット（PSU）はケチるなよ。ヤバいPSUだと接続機器が全部燃えちゃうぞ。なんで知ってるかって？俺は静かに壊れていく電源のせいで、ドライブ2台とマザーボード（MB）が連続でダメになったんだ。マジで気をつけろよ。" userName="bostik" createdAt="2025/11/27 14:24:37" color="#ff5733">}}




{{<matomeQuote body="データがメモリで壊れないように、信頼できるマザーボード（MB）とメモリ（RAM）を選ぶのが大事だぞ。ディスクへのデータ書き込みは耐障害性のある色々な方法があるけど、まずメモリがしっかりしてないと話にならないからな。" userName="aynyc" createdAt="2025/11/27 13:09:57" color="#785bff">}}




{{<matomeQuote body="昔はAmazonアフィリエイトやってたけど、今は辞めてるよ。でも役立つと思って、今でもAmazonリンクは共有してる。Amazonは一貫性があってアクセスしやすく、値段もわかるからね。メーカーサイトは酷いのが多いんだ。<br>アフィリエイトを辞めたのは、Amazonが全ソーシャルメディア情報の提出を要求してきたから。俺は嫌だったから従わなくて、追い出されたんだ。" userName="ssl-3" createdAt="2025/11/28 01:02:17" color="#45d325">}}




{{<matomeQuote body="良い製品を共有するのに、何も見返りがないのは嫌だろ？この人はAIの適当な記事じゃなくて、ちゃんと調査して最高の（高すぎない）パーツを選んで、ダイレクトリンクを共有してくれてる。アフィリエイトリンクを使うのは全然問題ないし、「アフィリエイトリンク使ってます」なんて注意書きも要らないと思うね。ウェブサイトが広告で成り立ってるのと同じくらい当たり前の話だろ。" userName="machomaster" createdAt="2025/11/28 15:24:24" color="#45d325">}}




{{<matomeQuote body="俺はIntelのBIOS RAIDのエラーでデータを失ったことがあるぞ。" userName="machomaster" createdAt="2025/11/28 17:14:46" color="">}}




{{<matomeQuote body="大事なのは「何のために紹介してるか」と「意見にどう影響してるか」だよ。メーカーからのスポンサー料が目的か、それとも純粋な意見でアフィリエイトリンクがあっても判断が変わらないかだ。人助けをしてお金をもらうのは全然悪いことじゃないし、むしろポジティブだと思うね。YouTubeやTikTokで役立つ動画を投稿してお金をもらうのと同じだろ。" userName="machomaster" createdAt="2025/11/29 21:57:37" color="#785bff">}}




{{<matomeQuote body="こういうコンテンツやクリエイターがシニシズムを生むのは分かるよ。でも俺にはどうすることもできない。DIY NASブログってのは「基準→選んだパーツ→使ってみた感想」ってフォーミュラがあるんだ。俺のブログは、みんなが自分なりの基準でユニークなものを建てるきっかけになれば良いんだけど、大抵は俺のビルドを丸々コピーするだけなんだよね。過去にIntelのCPUで問題があった時は、しっかりブログを更新して詳細を伝えたし、今回のNASにも自信があるよ。" userName="briancmoses" createdAt="2025/11/27 19:00:19" color="#ff5c5c">}}




{{<matomeQuote body="去年、同じケースでNASを組んだんだけど、HDDの温度がファンなしだと50℃台、純正ファンだと40℃くらいだった。ケースのバックプレーンのファン制御がPWMに対応してないから、全開か停止かだ。Thermalright TL-B12にファンを交換したら、HDDは37℃くらいで動いてるのにファンはほとんど聞こえないくらいになったよ。Hddfancontrolでsmartctlの出力に基づいて回転数を制御してる。ちなみに、このケースには薄型GPUも積めるスペースがあるぞ。" userName="VTimofeenko" createdAt="2025/11/27 04:22:02" color="#ff5c5c">}}




{{<matomeQuote body="新しいネットワークスイッチ（TP-Link）が結構熱くなるんだけど、内蔵ファンがゼロか全開（うるさい）のどっちかしか動かないんだ。OpenWRTを一時的にインストールしたら、もっと良いファン制御ができたよ。なんでハードウェアの温度に基づいて基本的なファンカーブを設定するのがこんなに難しいんだろうね？センサーもコントローラーも全部あるのに、ただのソフトウェアの問題なのにさ。" userName="embedding-shape" createdAt="2025/11/27 12:03:29" color="#45d325">}}




{{<matomeQuote body="ホームネットワーク機器のメーカーは、ノイズレベルや消費電力をあまり優先してない印象があるな。新しい家に引っ越してISPのモデムルーターを使ってるんだけど、ファンがあって静かじゃないし、20Wも消費するから年間45ポンドくらい電気代がかかる。パッシブ冷却でもっと消費電力を抑えたモデムは技術的には可能だと思うけど、ISPもメーカーもそこを気にしてないみたいだね。" userName="citrin_ru" createdAt="2025/11/27 12:54:34" color="#ff5733">}}




{{<matomeQuote body="HDDやSSD、RAMの価格が上がってて悲しいけど、24TB Barracudaを4台使ってZFSプールを組んだよ。1TBあたり10ドルは悪くないね。Barracudaの年間稼働時間はExos再生品と同じくらいだし。<br>記事主が安物の中華マザーは平気なのに、高価なNoctuaファンを選んでるのが面白いね。Thermalright TL-B12の方がずっと安いのに同性能だよ。あとSFXの低電力電源が少なくて残念。SilverStone SX500-Gは高いし。中国サイトのDelta flex 400W PSUは安くて良さそうだけど、まだ試してないな。<br>[1] https://www.newegg.com/seagate-barracuda-st24000dm001-24tb-f...<br>[2] https://www.seagate.com/content/dam/seagate/en/content-fragm..." userName="dllu" createdAt="2025/11/27 03:53:26" color="#ff33a1">}}




{{<matomeQuote body="ShuckすればSeagateドライブはまだ1TBあたり10ドル以下だね。24～26TBあれば写真やメディア、仕事のデータバックアップに十分すぎるよ。写真とかYouTubeチャンネルは年に1～2枚のBluRayにバックアップするつもり。5～10年放置できるから、お金払って忘れちゃいたい。<br>ケースはMakerbeamと3Dプリントパネルで自作して、Corsair SF600、4年前のITXシステム、Silverstoneのバックプレーンを使った。5950Xはちょっとオーバースペックだけど、ZFSプールを組んで自宅サーバーとして使ってる。トランスコードや写真タグ付け用に1080tiも入れた。ResNet50も動くし、SLURMサーバーにもできるかも。" userName="joshvm" createdAt="2025/11/27 17:45:26" color="#785bff">}}




{{<matomeQuote body="＞4x 24TB ZFSプール作ったって？<br>RAMはどれくらい積んだの？ZFSの推奨通り、1TBあたり1GBのRAM（つまり96GB）にした？" userName="meindnoch" createdAt="2025/11/27 10:52:23" color="#ff5733">}}




{{<matomeQuote body="それはZFSの重複排除（deduplication）を使う場合の話だよ。特殊なケース以外は絶対有効にしない方がいい。<br>通常利用なら2GBのRAMで十分。RAMが多いほどキャッシュとして使えるから良いけど、必須じゃない。ZFSには古い誤解が多いんだ。ECCもRAM増量もL2ARCも、「あるとより良い」ってだけで必須じゃないんだよ。" userName="dwood_dev" createdAt="2025/11/27 13:49:58" color="#38d3d3">}}




{{<matomeQuote body="ZFSの重複排除には、fast dedupとか、RAMから溢れたdedupテーブルをspecial vdevで保持できるようになったとか、最近の進展がいくつかあるよ。<br>でも、やっぱり一般のホームユーザーが有効にするべき場面はほとんどないな。従来の「1TBあたり5GB」ってルールでも、小さいファイルが多いシステムだと全然足りなくなることもあるんだ。" userName="AlanYx" createdAt="2025/11/27 15:09:06" color="#45d325">}}




{{<matomeQuote body="いいね！dedupテーブル用のvdevが出るのを期待してたんだ。<br>Optaneをdedupテーブルに使って、どんな性能が出るか見てみたいね。" userName="dwood_dev" createdAt="2025/11/27 15:35:36" color="">}}




{{<matomeQuote body="一点注意だけど、special vdevは冗長性が必要で、プールの必須要素になるんだよね。<br>ZFSの議論で、L2ARC vdevがDDTをキャッシュできるって話があるんだけど、これって本当？" userName="archagon" createdAt="2025/11/27 20:49:37" color="#785bff">}}




{{<matomeQuote body="そう、メインプールより冗長性の低いdedup vdevだと、-f（force）フラグを使わない限り「mismatched replication level」でエラーになるよ。<br>L2ARC vdevがDDTをオフロードできるかは分からないけど、整合性の警告を考えると無理だと思うな。" userName="AlanYx" createdAt="2025/11/27 21:26:14" color="#ff33a1">}}




{{<matomeQuote body="うん、dedup vdevにDDTが実際に保存されるんだから、警告が出るのは当然だよね。<br>一方、L2ARCはRAMにあるDDTと同じように、単なるリードキャッシュとして機能するだけだと思うよ。" userName="archagon" createdAt="2025/11/27 21:36:38" color="#38d3d3">}}




{{<matomeQuote body="僕のはメインワークステーションに接続したDASで、RAMはちゃんと96GB積んでるよ。<br>[1] https://daniel.lawrence.lu/blog/2024-04-26-small-form-factor..." userName="dllu" createdAt="2025/11/28 17:08:21" color="#ff33a1">}}




{{<matomeQuote body="64GB（4x16GB ECC）で大丈夫だと思うよ。俺の8x10TB RAID-Z2でも34GBくらいしか使ってないし。" userName="execution" createdAt="2025/11/27 12:16:31" color="#ff5c5c">}}




{{<matomeQuote body="ZFSはデフォルトでRAMの50％をキャッシュに使うはずだよ。" userName="cm2187" createdAt="2025/11/27 15:06:59" color="">}}




{{<matomeQuote body="あれは神話じゃなかったんじゃない？どのユースケースに適用されるかの情報がないまま繰り返された、的確なアドバイスだっただけだよ。" userName="wtallis" createdAt="2025/11/27 17:26:56" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ファンのことは驚かないな。一度Noctuaを使ったらもう他のは使えないよ。" userName="ghthor" createdAt="2025/11/27 04:02:40" color="">}}




{{<matomeQuote body="1TBあたり10ドルはめちゃくちゃいい値段だね。もし1500ドルあったら、かなり惹かれるなあ（Seagateだけど）。" userName="WarOnPrivacy" createdAt="2025/11/27 04:03:38" color="#785bff">}}




{{<matomeQuote body="いい値段だけど、BarracudaはNAS用じゃないから信頼性は謎だね。でも、今のドライブ価格が高いことを考えると、ちょっと賭けてみたくなる気持ちもわかるよ。" userName="dddgghhbbfblk" createdAt="2025/11/27 10:18:13" color="#ff5c5c">}}




{{<matomeQuote body="メーカーの推奨を真に受けすぎない方がいいよ。俺はWD Green 6台をraidzで81000時間、問題なく使ってるし。結局、CMRディスクは製造不良がなければ基本的にどれも同じだろ。" userName="fluoridation" createdAt="2025/11/28 03:31:01" color="#ff5733">}}




{{<matomeQuote body="28TBのRecertified Seagate ST28000NM000Cを4台買うのに惹かれたけど、何に使うか思いつかなくてやめたよ。" userName="execution" createdAt="2025/11/27 12:18:50" color="">}}




{{<matomeQuote body="最近Seagate HAMR 26TBドライブをいくつかシュックしたんだ。長く持ってくれるといいけどな。" userName="rubatuga" createdAt="2025/11/27 04:04:37" color="">}}




{{<matomeQuote body="26TBのExos HDDを3台ゲットして、さらに2台追加しようとしたらHAMR版で返品したんだ。その後、たまたま通りかかったBest Buyで古い製造日のやつを2台見つけたよ。当時はちょっと無駄遣いかなって思ったけど、この破格のセールは今後数年の間では最高水準になるだろうね。今はCPUクーラーの取り付けソリューション待ちで、まだ組めてないけどさ。" userName="mindslight" createdAt="2025/11/27 15:35:05" color="">}}




{{<matomeQuote body="このNAS、Raid-Z2で動かしてるの？俺としては、そのサイズのディスクだとリシルバーにどれくらい時間かかるのか気になってしょうがないよ。" userName="Glemkloksdjf" createdAt="2025/11/27 11:00:59" color="">}}




{{<matomeQuote body="うわっ、このNASのアイドル時の消費電力、俺のUNAS Pro（4x8TB HDD、2x8TB SSD）とMac mini M1、それにAP4台とProtectカメラ4台を全部合わせたよりも多いじゃん！ちなみにUNAS Proは10Gネットワーキングで、4HDDのRAID5アレイから約500MB/s、SSDからはほぼ1GB/s出るんだ。俺のネットワークスタック全体でも96Wしか食わないよ。メインストレージはクラウドだけど、参考までにね。" userName="8fingerlouie" createdAt="2025/11/27 21:46:10" color="#785bff">}}




{{<matomeQuote body="「NASのアイドル消費電力がMac miniとか全部合わせたより高い」ってのはありえないね。俺が個別の部品の消費電力も測ってるから分かるんだ。OPのNASはHDDなしで37W、UNAS ProはHDDなしで20W。HDD込みだとOPのNASが67W、UNAS Proが40Wくらいだから、残りのMac miniとかが17W以下は不可能だよ。OPへのアドバイスだけど、500WのPSUをもっと小さい250〜300Wのに変えたら、効率が上がってアイドル時の消費電力を10Wくらい節約できるはずだよ。" userName="mrb" createdAt="2025/11/27 23:13:25" color="#ff33a1">}}




{{<matomeQuote body="壁コンセントでの96Wってのは全部合わせた数値だよ。スイッチが36W PoE消費、Mac Miniが5〜6W、UNAS Proはドライブ込みで35Wくらい。合計で約75Wだから、指摘通り8.5W分は超えてたね。残りの21WはUDM Pro、USW Pro Max 16 POE、Hue Bridge、Tado Bridge、Homey Pro、Unifi UPS Towerだね。これはアイドル時で、全部が何かしてると120〜130Wまで上がるよ。" userName="8fingerlouie" createdAt="2025/11/28 07:56:52" color="#ff5c5c">}}




{{<matomeQuote body="「8.5Wオーバー」やっぱりね。PoE消費電力の計測もAC-DC変換ロスを含んでないから、比較がちょっとずるいよ。公平に比べるなら、君のNAS部分（35Wか40W）と、OPのNAS（PSU変えれば47W）を比較するべきだね。UNAS Proが優れてるのは確かだけど、この7Wとか12Wの差なんて、家庭でNAS一台動かすなら月1〜2ドル程度の電気代にしかならないから、大した問題じゃないでしょ。" userName="mrb" createdAt="2025/11/28 08:51:43" color="#38d3d3">}}




{{<matomeQuote body="PoE消費電力の件はわかってるよ。でも、壁での96Wが全体の予算なんだから、数字を動かしてるだけだよ。俺のUNAS Proの35Wは、WD Red Plus 4x8TBが3.4Wで、Samsung QVO 8TBが45mWってWDの公称値に基づいた計算で、だいたい合ってるんだ。OPのNASがアイドルで66.7Wなのに、俺の全インフラが96Wで済んでるって、その30Wの差で全部賄えてるってことに驚いてるんだよ。過去に電気代が高騰した時、350Wアイドルだったのを67Wまで減らした経験があるからさ。電力価格が落ち着いてからUNASを導入して、今96Wなんだ。" userName="8fingerlouie" createdAt="2025/11/28 09:51:31" color="#ff5c5c">}}




{{<matomeQuote body="ファイルをネットワークに流す以外の用途に踏み込むと、それは「リンゴとオレンジ」の比較になるよ。CPU性能が約10倍、RAMが4倍、ZFS vs Btrfs、QuickSync、Kubernetes／Dockerとか、色々違うんだからさ。UNASが劣ってるわけじゃなくて、単にファイルサーバーとしての用途に特化してるから、アイドル時の消費電力が低いんだよ。" userName="Havoc" createdAt="2025/11/28 01:26:06" color="#ff5733">}}




{{<matomeQuote body="比較対象にMac Mini M1を忘れてない？俺のセットアップ、UNASとMac Mini M1なら10Gbpsネットワーキングで、OPのNASと同じくらい高性能を簡単に出せるよ。でもMac Miniはアイドルで4.6Wしか使わないから、めちゃくちゃ効率的だね。ZFSとBtrfsも、よっぽど特殊な使い方じゃなければほとんど変わらないし。ZFSのRAM使用量が多いって話も都市伝説で、自分のファイルキャッシュ使うからそう見えるだけだよ。" userName="8fingerlouie" createdAt="2025/11/28 11:16:24" color="#785bff">}}




{{<matomeQuote body="OPのNASのアイドル時消費電力、高すぎじゃない？俺のUNAS Pro、Mac mini M1、AP、カメラ全部合わせてもOPのNASより電力使わないんだけど。ドライブはスピンしてるの？70Wはかなり低い数値だと思うけどね。" userName="shadowpho" createdAt="2025/11/28 00:32:43" color="#45d325">}}




{{<matomeQuote body="ドライブはスピンしてるよ。4x8TBのWD Red Plusを使ってて、アイドル時3.4W。NAS本体を20Wと仮定すると約34Wだよ（実測35W）。Mac Miniはアイドル時4.6W。POE消費は37W。全部で壁コンセントで96Wなんだけど、別のコメントで書いたように7-8W差があったから、俺のセットアップはOPのNAS（66.7W）より7-8W多いだけなんだ。" userName="8fingerlouie" createdAt="2025/11/28 11:18:50" color="#38d3d3">}}




{{<matomeQuote body="“メインストレージはクラウド”って、結局コストを外部化したってことだろ？" userName="downrightmike" createdAt="2025/11/27 22:33:58" color="">}}




{{<matomeQuote body="いやいや、外部化じゃないよ。これは3-2-1バックアップの設定の一部なんだ。他の人がオフサイトバックアップをクラウドに置くのと同じで、俺は作業コピーをクラウドに置いてて、バックアップは家にある。オペレーションはアウトソースしたけどね。何十年もセルフホストしてきたけど、15～20年ぶりにノートPCなしでバケーションに行けるようになったんだ。全てのストレージをクラウドにしてるわけじゃないよ。大事なものだけクラウドで、それ以外は家にある。家のものはVPNを使わない限りインターネットからはアクセスできないしね。" userName="8fingerlouie" createdAt="2025/11/27 22:47:04" color="#ff33a1">}}




{{<matomeQuote body="みんなにOdroid H4シリーズのボードをおすすめしたいね。N97かN355を選べて、2*2.5GbE、4*SATA、アイドル時2Wだよ。拡張ボードを使えばルーターにもなるし、開発元のHardkernelはボードの回路図とかも全部公開してるんだ。" userName="mzhaase" createdAt="2025/11/27 06:48:50" color="#38d3d3">}}




{{<matomeQuote body="最高の機能はインバンドECCがあることだね。1ビットエラーを修正できて、2ビットエラーを検出できるんだ。他のAlder Lake-NやTwin Lake SBCでこの機能を使えるものはないよ。" userName="antonkochubey" createdAt="2025/11/27 09:43:18" color="#ff33a1">}}




{{<matomeQuote body="ECCのリファレンス、教えてくれる？Odroidのサイトで見つけられないんだけど。" userName="ceving" createdAt="2025/11/27 15:17:49" color="">}}




{{<matomeQuote body="Intel N97を使った4コア版は、Intelが組み込み用CPUと指定してるから、インバンドECCがあるのは間違いないね。レビューアも確認済みだよ。8コア版のH4 UltraもインバンドECCを有効にできた人がいるみたいだから、全てのモデルでサポートされてるっぽいね。ECC有効/無効でのベンチマーク結果は、実際のワークロードと違うかもだけど、通常はキャッシュヒット率が高いからパフォーマンス低下は目立たないはずだよ。<br>https://www.cnx-software.com/2024/05/26/odroid-h4-plus-revie...<br>https://forum.odroid.com/viewtopic.php?f=171&t=48377" userName="adrian_b" createdAt="2025/11/27 15:26:22" color="#ff33a1">}}




{{<matomeQuote body="Odroid H4 PlusもインバンドECCをサポートしてることを確認したよ。Memtest86でECCの有効/無効を切り替えたら、違う統計が表示されたんだ。実際にエラーが修正されたかをテストする良い方法はなかったけどね。" userName="samhclark" createdAt="2025/11/27 15:59:10" color="#45d325">}}




{{<matomeQuote body="システムによってはECCエラーを強制できるものもあるけど、もしできないならメモリの電圧やタイミングを調整してみて。そうすればエラーを誘発できて、MemtestでECC補正を確認できるはずだよ。" userName="toast0" createdAt="2025/11/27 16:23:47" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
