+++
date = '2025-03-09T00:00:00'
months = '2025/03'
draft = false
title = 'Appleが採用したセキュアなエクスクレーブ技術とは？カメラLED制御が示す新たなセキュリティの進化'
tags = ["Apple", "セキュリティ", "エクスクレーブ", "ハードウェア", "テクノロジー"]
featureimage = 'thumbnails/green4.jpg'
+++

> Appleが採用したセキュアなエクスクレーブ技術とは？カメラLED制御が示す新たなセキュリティの進化

引用元：[https://news.ycombinator.com/item?id=43314657](https://news.ycombinator.com/item?id=43314657)

{{<matomeQuote body="＞ SKはXNU/iOSと同じ高速アプリケーションプロセッサで動作してるみたい。これを実現するには、仮想化拡張が必要なんだよ。最近のAppleのチップには、ネストされた仮想化をサポートするハードウェアが含まれていて、特にM4 iPad ProはカメラLED用にエクスクレーブを使っていると思うんだ。次のApple Platform SecurityガイドにはSKエクスクレーブやWi-Fiレーダー検知用のベースバンド緩和策について触れられるといいな。> XNUはマイクロカーネル型アーキテクチャに改編中で、セキュリティ関連オペレーションを分けることが目指されているんだ。" userName="transpute" createdAt="2025-03-09T23:59:12" color="#45d325">}}

{{<matomeQuote body="＞ 150件以上のTrustZoneのCVEがあるけど、そのほとんどは製造メーカーが入れた脆弱なソフトに関するもので、ハード自体の脆弱性はほとんど報告されてないことを覚えておくべきだよ。" userName="als0" createdAt="2025-03-10T13:42:14" color="">}}

{{<matomeQuote body="自分も思うけど、こうした脆弱性が起きるってことはTrustZoneの設計が良くないんじゃないかな。PINの検証など信頼できる実行環境に入れるのはわかるけど、DRMのコードがそこにあるとPIN検証に影響が出るのは大問題だよね。あんなふうに設計されたら、セキュリティが大きく傷つくよ。" userName="michaelt" createdAt="2025-03-10T22:09:52" color="#785bff">}}

{{<matomeQuote body="そういう脆弱性があるのは一般的にそうだよね。TrustZoneはセキュリティメカニズムじゃなくて、隔離メカニズムなんだよ。" userName="sly010" createdAt="2025-03-11T02:49:32" color="">}}

{{<matomeQuote body="＞ 著者はフォローアップポストを出して、改訂された図も示したみたい。TrustZoneの使用を推測してたけど、もしかしたらエクスクレーブは既存のSPTMやGXF特権レベルを使ってるかも。なので、iPhone 13以降でサポートできる理由はRAMの要件と開発の手間だけかも。Appleでも大規模な取り組みになるのは確かだね。" userName="transpute" createdAt="2025-03-10T07:45:47" color="#ff33a1">}}

{{<matomeQuote body="スティーブは本当に、自分のノートパソコンは日記みたいなもので、それを守る責任があるって信じてたんだろうね。ティムもスティーブが持ってた信念を受け継いでると思う。スティーブがいなくなったのが本当に寂しいよ。" userName="neom" createdAt="2025-03-10T00:25:12" color="">}}

{{<matomeQuote body="工業機械や研究機械を作ってる者として、Appleの消費者向けデバイスは全く使えないよ。性能を制限するなんて、無駄でしかない。Appleがデバイスやソフトウェアを所有者が変わった後も制御するのが好きじゃない。こんな「フタが溶接された」システムに熱心なハッカーたちが理解できないな。" userName="amelius" createdAt="2025-03-10T11:10:05" color="">}}

{{<matomeQuote body="自身を「ハッカー」と名乗ることもあるけど、UXやConvenience、Privacyも気にしてる。Appleは他のデバイスと比べてプライバシーも上手く扱ってくれるし、99％安全なデフォルトシステムがあるから便利だよ。ただ、カーネルには触れられないからって、それが「フタが溶接された」とは思わない。Windowsには手を出せないくらいストレスがたまると感じてる人たちも多いし、Appleのシステムがあればそれで満足だよ。" userName="adamtaylor_13" createdAt="2025-03-10T22:30:34" color="#ff5733">}}

{{<matomeQuote body="macOSにはSIPを無効にしないとシグナルできないプロセスがあるんだよ。" userName="saagarjha" createdAt="2025-03-11T05:39:54" color="">}}

{{<matomeQuote body="その通りだけど、それは「ミッションクリティカル」なものなので、やる気次第で影響を与えることができるよね。Windowsだって、Microsoft Edgeを完全にアンインストールすることさえできないんだから。OSがウイルス的性質を帯びてるように感じるよ。" userName="adamtaylor_13" createdAt="2025-03-11T12:05:39" color="">}}

{{<matomeQuote body="Microsoft Edgeは完全にアンインストールできるけど、ちょっと手間が必要だと思う。前にMacを触った時、rootアカウントにアクセスするのさえ難しかった。Appleのデバイスはほんとに管理が厳しいけど、そういうのを好む人もいるみたいだね。" userName="kennysoona" createdAt="2025-03-13T11:01:25" color="">}}

{{<matomeQuote body="自称ハッカーとしてのモチベーションを言うと、使いやすさが大事なんだ。Debianを15年使ってるけど、他のOSも経験してきた。どのディストロも似たようなもので、選択肢よりも考えられたデザインが大事だと思う。" userName="rollcat" createdAt="2025-03-10T13:38:50" color="#ff5c5c">}}

{{<matomeQuote body="今のM1 MacBookが全然使えない。デスクトップに比べて信頼性が低くて、月に2回は強制的に電源ボタンを押さなきゃいけないし、KVMとの相性も最悪。キーボードのセキュアイinput機能もまともに動かない。" userName="Vendan" createdAt="2025-03-10T15:22:18" color="">}}

{{<matomeQuote body="月に2回は電源ボタンを押さないとダメみたいだけど、僕はこの1年で電源ボタンを使ったことない。Mac miniを使ってるけど、確かにKVMは運次第だね。満足できてるとは言えないけど、まあ僕には合ってる。" userName="rollcat" createdAt="2025-03-10T16:21:08" color="">}}

{{<matomeQuote body="3年ほどNixOSを使ってて、今はMacBookを試してるけど、NixOSは全然別の体験だ。ファイルの管理が厳密で、必要なファイルだけを保持するから長期的にクリーンな状態が保てる。macOSも好きだけど、NixOSの設定管理には感謝してる。" userName="t0astbread" createdAt="2025-03-11T00:03:30" color="#ff5c5c">}}

{{<matomeQuote body="NixOSを使って2年、RasPiにもインストールしてるけど、他のディストロとの差はあんまり感じない。ただ、KDEやGnomeはUXがイマイチだと思う。" userName="rollcat" createdAt="2025-03-11T08:12:33" color="">}}

{{<matomeQuote body="Fedoraはめっちゃいいよ。他のOSも使ってきたけど、開発者としてはFedoraが一番使いやすかった。さらっと設定するから、問題も少ない。" userName="spyke112" createdAt="2025-03-10T20:55:32" color="#45d325">}}

{{<matomeQuote body="FedoraはZFSをサポートしてるのかな？スナップショット機能は手放せないし、KDEやGnomeには色々不満があるよ。" userName="rollcat" createdAt="2025-03-11T08:22:47" color="">}}

{{<matomeQuote body="僕の作業環境は大体DropboxやOnedrive、GitHubに依存してるから、マシンは一時的な感じ。NASでも買ってデータをバックアップした方が良さそうだ。" userName="spyke112" createdAt="2025-03-12T08:06:17" color="">}}

{{<matomeQuote body="Timはその役割を果たしてるけど、Steveがいた頃はもっと人間味があった気がする。企業っぽくなくて、懐かしいよね。シェアしてくれてありがとう。" userName="eleveriven" createdAt="2025-03-10T07:20:12" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="ティム・クックはオープンリーゲイだってのはあんまり知られてないけど、プライバシーとデータ保護の必要性を理解してるのはゲイの人たちなんだよね。でも、彼は取締役会の意向に左右されるし、後任がどうなるかはわからない。彼自身はプライバシーについて真剣だと思うけど。" userName="ChrisMarshallNY" createdAt="2025-03-10T10:19:19" color="">}}

{{<matomeQuote body="＞もちろん、彼は取締役会の意向に左右されるし、彼は若くないから、後任が同じ考えとは限らない<br>こういう壁のあるエコシステムを買うのが問題なんだよ。Appleがプライバシーと権利を奪うアップデートを押し付けてこないとは限らないからね。iPhoneの写真をハッシュ化して送り、データをiCloudにアップロードさせるためのダークパターンも使ってる。CEOが変わるだけで、プライバシーの擁護者から悪夢に変わるかも。" userName="lordofgibbons" createdAt="2025-03-10T12:04:34" color="#ff5733">}}

{{<matomeQuote body="レストランで食べてるときに毒を盛られるリスクはあるけど、ほとんどの人には関係ない話だよね。理想主義的な考え方では、‘お気に入りのレストランが今日毒を盛るかも’と思って利用しないのは分かるけど、現実的にはそうならないと思う。ただ、無理に理想主義者を責めるつもりはないし。でも、そういう考え方をしていると、ちょっと厳しいかもしれない。" userName="brookst" createdAt="2025-03-10T13:04:50" color="">}}

{{<matomeQuote body="より良い例えは、『道徳警察がレストランに電話して、ランチの時いつも座るテーブルを教える』じゃないかな。ましてやそれがバレないかは不明だし。完全に自立した生活は理想だけど、信頼できる公共機関と個人の自己主権の手段を両立できると思う。だからこそ、Stallmanタイプの人たちには感謝してるし、Appleに依存しない日が来ることを楽しみにしてる。" userName="lukifer" createdAt="2025-03-10T14:17:27" color="#45d325">}}

{{<matomeQuote body="＞完全に自己主権のある生活は実現不可能な理想だ<br>この意見には同意だけど、Appleに頼るのは自己主権とはほど遠いと思う。Appleに依存することで、抵抗する能力を大きく失ってしまうんだよね。彼らが自分たちの言うことに従わない限り、個人でのE2EEバックアップもできなくなる。今のコンピュータセキュリティの仕組みは、信頼できない実体に過剰な信頼を寄せているのが問題。" userName="alwayslikethis" createdAt="2025-03-10T17:48:52" color="#38d3d3">}}

{{<matomeQuote body="Stallmanは素晴らしいし情熱的だけど、彼は生涯学者で、物を運ぶ必要がある人たちとは生活の優先順位が異なるからね。彼は一つの極にいて、NSOはその対極って感じ。ベストな場所はその中間にあると思う。" userName="ChrisMarshallNY" createdAt="2025-03-10T13:18:53" color="">}}

{{<matomeQuote body="ティム・クックがオープンリーゲイだってあんまり知られてないけど、最近の彼の行動を見てたら、彼も金で動く存在なんじゃないかと思い始めたよ。自分の好きなことを守るために、1百万ドルの小切手を書く人とは、バランスを取れないと思う。" userName="reaperducer" createdAt="2025-03-10T13:49:05" color="#45d325">}}

{{<matomeQuote body="本当に質問なんだけど、彼はその状況でどうすべきだったと思う？みんながやり始めた後にクックはそうしたのは注目に値するし、Appleは一人で戦えないから、右翼のスミアキャンペーンやAppleストアでの暴力に晒される可能性もある。企業として対抗するには集団行動が必要だし、彼が政治的に naive だったことが問題だと思う。" userName="KerrAvon" createdAt="2025-03-10T15:10:23" color="">}}

{{<matomeQuote body="本当に質問なんだけど、彼にどうしてほしかったの？彼はリーダーなんだから、リードするべきだよ。" userName="reaperducer" createdAt="2025-03-10T21:15:50" color="">}}

{{<matomeQuote body="おかしな話だね。Jobsは分かれる意見を持っていて、あんまり好かれなかった。でも、MacやiPod、iPadを作ったAppleの人たちに感謝してる部分もある。Jobsが言ったことは今でも響いてるし、最近Appleが導入した‘クラシックMac’のスクリーンセーバーは、当時のデザインの丁寧さをよく表してると思うんだよね。" userName="musicale" createdAt="2025-03-10T01:06:19" color="#38d3d3">}}

{{<matomeQuote body="年を取ってきたから、彼の考えや言葉をもっときちんと聞いて分析するようになったんだ。Steve Jobsは誤解されていたと思う。彼の考えはその時代にはすごく洗練されていたから、もっと彼の考えを聞けたらよかったなぁ。ファンなんかな？まぁ、悪いことじゃないよね。" userName="neom" createdAt="2025-03-10T01:23:29" color="#ff5733">}}

{{<matomeQuote body="彼は確かに誤解されてる。伝記を読むと、著者がかなり誤解してるのが分かる。でも、行間を読めば彼の本当の姿が見えてくる。特に結婚前後の変化には注目すべきだ。ただ、その伝記はひどい。執筆内容が間違ってるし、なんで息子が言ったダジャレばかり引用されるのかもよく分からない。" userName="astrange" createdAt="2025-03-10T04:08:56" color="">}}

{{<matomeQuote body="伝記の詳細はあまり覚えてないけど、好きじゃなかった。Steveの公私を知っている前提で書かれている感じがして、間違っても未来の世代に良い情報源にならないと思った。批判的な意見ばかり強調されて、いい部分が軽視されてた気がする。ちょっとネガティブ過ぎたかも。" userName="al_borland" createdAt="2025-03-10T04:54:20" color="">}}

{{<matomeQuote body="癌をクリスタルで治そうとして、それがダメだったらお金で州を変えて移植の順番を飛び越えたってのが印象に残ってる。彼は分かりやすい行動をとってたから、誤解なんてしてない。特に障害者駐車場の件なんか、彼の人間性がよく出てると思うよ。" userName="6stringmerc" createdAt="2025-03-10T02:44:44" color="">}}

{{<matomeQuote body="順番を飛び越えたわけじゃなくて、いくつもの順番に並んでただけだよ。" userName="al_borland" createdAt="2025-03-10T04:46:45" color="">}}

{{<matomeQuote body="確かに法律には従ってたけど、彼はお金で他の人より早く受けられた。これはシステムの問題でもあると思う。なんで移植に複数の順番が必要なのか、考えさせられるよね。そんなとこで特権を利用する彼の性格を疑うのも分かる。" userName="hansvm" createdAt="2025-03-10T06:19:29" color="">}}

{{<matomeQuote body="多くの人が、自分や愛する人の命を救うためにお金を使うと思う。お金があるからこそできる行動だよね。" userName="auggierose" createdAt="2025-03-10T06:56:09" color="">}}

{{<matomeQuote body="それでも悪いことだって分かってるよね？" userName="sapphicsnail" createdAt="2025-03-10T07:26:22" color="">}}

{{<matomeQuote body="なんで最低限の税金しか払わないの？" userName="globular-toast" createdAt="2025-03-10T08:02:26" color="">}}

{{<matomeQuote body="＞ なんで最低限の税金しか払わないの？<br>質問を受けてないのに答えちゃうけど、多くの人がそうしてない。税金を減らす方法はあるのに、わざわざ追求しない。私たちは社会の一部だから、できるだけ少なく済まそうとする理由はないと思うよ。" userName="elygre" createdAt="2025-03-10T08:51:24" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="膵臓癌は治療が難しいことで知られてるから、早期発見でも厳しいんだよね。家族に同じ経験をした人として、Jobsが何でも試そうとする気持ちは理解できるよ。" userName="orangepanda" createdAt="2025-03-10T08:49:20" color="#ff33a1">}}

{{<matomeQuote body="この記事がEnclavesのことを話題にして、突然Steveのことを思い出したんだよね。でも、どう繋がるのか説明してくれない？" userName="yalogin" createdAt="2025-03-10T03:53:12" color="">}}

{{<matomeQuote body="スケールするにつれて、たくさんの人が関わってるから難しいんだよね。ビジネスはアートでありサイエンスで、顧客との価値の交換を考える必要がある。DigitalOceanの決断で怒ってる人も多いけど、愛情をもって顧客に接するのは簡単なようで難しい。Appleが顧客データを守るためにすごい努力してるのは褒められるべきことだし、これがSteve Jobsの哲学だよ。" userName="neom" createdAt="2025-03-10T04:06:27" color="#785bff">}}

{{<matomeQuote body="Steveはデバイスのロックがユーザーからビジネスバリューを得る最善の方法だと信じてたんだよね。だから、Appleの許可なしにアプリをインストールしたり、位置情報を取得したりできない。マーケティングにもこだわってて、FacebookやGoogleのプライバシー問題を機にプライバシーマーケティングに乗り出したんだ。" userName="lern_too_spel" createdAt="2025-03-10T01:15:48" color="#ff5c5c">}}

{{<matomeQuote body="＞Steveはマーケティングを非常に重要視していて、FacebookとGoogleのプライバシー問題の後、すぐにプライバシーマーケティングに乗り出した。<br>二つの考えがある。一つ目は、強く物語を語るとそれが現実になるかも、ということ。二つ目は、マーケティングは通常批判的に使われるが、実際には人々が欲しいと思うことを知る手段だということ。ここでは人々がプライバシーを求めてるんだ。" userName="astrange" createdAt="2025-03-10T04:02:53" color="#ff5c5c">}}

{{<matomeQuote body="関連スレッド、”Apple rearranged its XNU kernel with exclaves”、https://news.ycombinator.com/item?id=43314171" userName="transpute" createdAt="2025-03-09T23:46:37" color="">}}

{{<matomeQuote body="この記事はかなり良いと思うよ。" userName="tptacek" createdAt="2025-03-10T01:00:29" color="">}}

{{<matomeQuote body="詳細を知りたいなら、iOS SPTMとTXMに関する3部作があるよ：2023年8月、https://www.df-f.com/blog/ios17、2023年11月、https://www.df-f.com/blog/ios-17round2、2025年2月、https://www.df-f.com/blog/sptm3" userName="transpute" createdAt="2025-03-10T01:07:34" color="">}}

{{<matomeQuote body="実際にはあまり詳細はないかも。" userName="saagarjha" createdAt="2025-03-10T03:28:19" color="">}}

{{<matomeQuote body="DFブログシリーズの参照、https://randomaugustine.medium.com/on-apple-exclaves-d683a2c...<br>Dataflow Forensicsの進んだSPTMの解明には期待してる。彼らのブログポストを待ってるよ！" userName="transpute" createdAt="2025-03-10T04:46:43" color="#45d325">}}

{{<matomeQuote body="丁寧に言ってるな。ただDataflowのブログ記事は、実際には文字列を実行する以上のことはほとんど触れてない。" userName="saagarjha" createdAt="2025-03-10T05:42:47" color="">}}

{{<matomeQuote body="丁寧に言ってるの？記事の締めくくりには、読者に将来のDataflowのブログ投稿を宣伝してるし、3月の訂正も2月の要約とは一致してる。" userName="transpute" createdAt="2025-03-10T07:43:59" color="">}}

{{<matomeQuote body="そうだね、取り上げなかったことがあるって言ってるし、Dataflowの人たちに期待してるんだろう。ただ最初の数件はあまり答えになってないから、あんまり期待してないよ。" userName="saagarjha" createdAt="2025-03-10T07:49:01" color="">}}

{{<matomeQuote body="100％同意だよ。議論は期待外れだね。TFAを読んでも、何を思えばいいのか全然わからなかった。" userName="metadat" createdAt="2025-03-10T01:02:33" color="">}}

{{<matomeQuote body="それは期待外れだね！でもそれもこの議論で、他の議論はGPによって既にリンクされてるから、あなたの狙いが何なのかわからない。" userName="gnabgib" createdAt="2025-03-10T01:06:24" color="">}}

{{<matomeQuote body="ただ情報を共有しようとしてるだけだよ。Appleの動きに関しての次のステップ（または次の次のステップ）はあるのかな？" userName="metadat" createdAt="2025-03-10T01:08:55" color="">}}

{{<matomeQuote body="彼は、この議論のHNのURLをこの議論に投稿していると言ってるよ。" userName="thrdbndndn" createdAt="2025-03-10T01:17:37" color="">}}

{{<matomeQuote body="その記事の概要は：> exclavesは、主なカーネル（XNU）から分離されていて、たとえカーネルが侵害されてもアクセスできない特定のリソースを指す。<br>それに加えて面白い点：> macOSの途中リリースには、新機能が追加されることがよくある。Sonoma 14.4で追加された特徴の1つがexclavesだ。" userName="GeekyBear" createdAt="2025-03-10T01:08:55" color="#785bff">}}

{{<matomeQuote body="＞ macOS 15以降では、macOS 15以降のVMを作成できて、ホストのSecure Enclaveから派生したアイデンティティを構成できるようになる。このプロセスは、Secure Enclaveのexclaveを使用してApple IDが必要なリソースへのアクセスを可能にする。<br>これは間違ってる。" userName="saagarjha" createdAt="2025-03-10T07:56:13" color="">}}

{{<matomeQuote body="ただのエンクレーブとエクスクレーブが関係あるようには思えない。隔離のアイデア自体は共通だけど、全然違うやり方だし。Apple IDのVMへのサインインは、ホストがゲストに情報を渡すだけで特別なことはないし。" userName="saagarjha" createdAt="2025-03-15T10:40:26" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="カメラのLED制御にセキュアエクスクレーブを使うって、過剰な設計だと思う。カメラモジュールにハードウェアでロジックを組み込めば簡単にできるのに。デジタルI/Oか電源を制御して、LEDを数秒点灯させる仕組みだけで十分なはず。" userName="lambdaone" createdAt="2025-03-10T12:14:41" color="">}}

{{<matomeQuote body="カメラは複数の部品から成っていて、CMOSセンサーの電源で作動するか考えたり、パワーモードの変化をI2Cで解析する必要もあるかも。LEDの明るさ調整も必要だし、ハードウェア回路だけでやるのは難しそう。" userName="brookst" createdAt="2025-03-10T12:51:52" color="">}}

{{<matomeQuote body="過剰設計ではないと思う。研究や他の専門家の意見に基づいている。Appleは理由もなく物事を難しくしようとはしないんだよ。" userName="runjake" createdAt="2025-03-10T15:49:40" color="">}}

{{<matomeQuote body="Appleを信頼できない場合は、ハードウェアガーティングが非プログラムであることの方が優れていると思う。" userName="lambdaone" createdAt="2025-03-10T19:57:44" color="">}}

{{<matomeQuote body="2014年以降のMacBookでは、ファームウェアが関与していない。" userName="runjake" createdAt="2025-03-11T14:59:28" color="">}}

{{<matomeQuote body="これが過剰設計かどうかは、いろんな製品を出した結果なのかもしれない。カメラはセキュリティの対象になり得るのかな？" userName="andrewcl" createdAt="2025-03-10T13:32:53" color="">}}

{{<matomeQuote body="カメラとマイクは監視に使えるリスクがあるから、ハードウェアやインジケーターを物理的に設けるのはセールスポイントになる。" userName="TheNewsIsHere" createdAt="2025-03-10T14:35:35" color="#45d325">}}

{{<matomeQuote body="カメラのLEDだけじゃなく、マイクや画面録画時に表示されるインジケーターも重要だと思う。" userName="linux2647" createdAt="2025-03-10T15:19:53" color="">}}

{{<matomeQuote body="回路や素子を追加するだけじゃ、RF感度を壊しちゃうから無理だよ。例えば「Rfの感度低下」ってのがあるし。" userName="jjtheblunt" createdAt="2025-03-10T13:10:52" color="">}}

{{<matomeQuote body="＞デジタルI/Oかカメラの電源を制御するだけで、LEDが数秒間点灯するようにパルスを伸ばすのが必要だね。そうしないとカメラの論理が急に点いたり消えたりして攻撃されるかも。古いiPhoneにはこの機能を展開できなくなるね。新しいiPhoneはノッチがあるから大したことないけど、古い製品はセキュリティが劣るって言いたくないだろうし。" userName="supriyo-biswas" createdAt="2025-03-10T15:23:28" color="">}}

{{<matomeQuote body="どこの製品ラインが「私たちの古いモデルも最新と同じくらい良い！」なんて言うんだよ。" userName="0cf8612b2e1e" createdAt="2025-03-10T16:53:53" color="">}}

{{<matomeQuote body="もしFace IDをMacに追加するとき、内蔵カメラのLEDが点かないようにできるなら、それはユーザー空間からカメラにアクセスできないように開発できるよ。" userName="api" createdAt="2025-03-10T13:41:07" color="#45d325">}}

{{<matomeQuote body="Face IDは標準のカメラを使ってないよ。例えばKinectみたいに、IRでパターンを投影して、IRカメラで奥行きを測定するんだ。" userName="MBCook" createdAt="2025-03-11T03:12:33" color="">}}

{{<matomeQuote body="この著者は誰なの？すごく詳しくて、うまく書かれてるな。Exclavesを追ってきた僕にとって、良くできた記事だよ。" userName="yalogin" createdAt="2025-03-10T03:56:38" color="#45d325">}}

{{<matomeQuote body="これは非常に良く調査されてて、書かれた深い内容だね。こんな技術的な話がこんなに面白く読ませるのは珍しいよ。" userName="eleveriven" createdAt="2025-03-10T07:26:08" color="#ff5733">}}

{{<matomeQuote body="Linuxの仮想化ベースのセキュリティと比べたらどうなるんだろう？「これはa)カーネルを堅守し、b)重要なカーネルリソースを改ざんされないようにするセキュリティ機能」なんて感じられるけど。" userName="kennysoona" createdAt="2025-03-10T11:44:11" color="">}}

{{<matomeQuote body="Exclavesは平行な信頼レベルで動作するんだ。" userName="saagarjha" createdAt="2025-03-10T18:25:55" color="">}}

{{<matomeQuote body="Exclavesは中間的なステップだと感じる。AppleはXNUをリスク減少させつつ、マイクロカーネルアーキテクチャを全面的に受け入れてない。Exclavesはもっと大きなものへの橋だと思うよ。" userName="fedxc" createdAt="2025-03-11T02:28:13" color="#45d325">}}

{{<matomeQuote body="過去のマイクロカーネルに戻る手段だと思うけど、現代の技術や新しい要件に合わせてるね。Machが作られた時はセキュリティがあんまり気にされてなかったけど、今のマシンの性能を見るとマイクロカーネルのプロセス間通信のオーバーヘッドは無視できるかも。" userName="JoachimS" createdAt="2025-03-11T14:13:01" color="#ff33a1">}}

{{<matomeQuote body="その知識はあんまりないんだけど、エンクレーブを攻撃してカーネルよりも高い特権を得ることができるのかな？このハードウェアって、コプロセッサみたいなもん？" userName="markus_zhang" createdAt="2025-03-09T23:50:55" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
