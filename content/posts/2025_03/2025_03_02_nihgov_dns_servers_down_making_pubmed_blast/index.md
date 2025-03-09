+++
date = '2025-03-02T00:00:00'
draft = false
title = 'NIH.govのDNSサーバーダウンでPubMedやBLASTが利用不能に、しかし復旧の兆しも'
tags = ["NIH", "DNS", "PubMed", "科学", "システムダウン"]
featureimage = 'thumbnails/purple1.jpg'
+++

> NIH.govのDNSサーバーダウンでPubMedやBLASTが利用不能に、しかし復旧の兆しも

引用元：[https://news.ycombinator.com/item?id=43229201](https://news.ycombinator.com/item?id=43229201)

{{<matomeQuote body="DNS解決は今はまたうまくいってるみたいだね。" userName="raphman" createdAt="2025-03-02T18:44:16" color="">}}

{{<matomeQuote body="うん、タイトルに「修正済み」を追加したよ。もし間違ってたら教えてね！" userName="dang" createdAt="2025-03-02T21:05:40" color="">}}

{{<matomeQuote body="この問題は解決したけど、検閲が追加されたみたい。NIH.govで「transgender」を検索すると、検索結果から弾かれちゃうよ。" userName="directevolve" createdAt="2025-03-03T06:27:06" color="">}}

{{<matomeQuote body="Redditのコメントによると、検索の問題は以前からあったみたい。DNSの問題が原因じゃないってことさ。実際に「transgender」を検索してみたけど、たくさんのヒットがあったよ。" userName="raphman" createdAt="2025-03-03T15:21:54" color="#ff5c5c">}}

{{<matomeQuote body="追記：別のコメントが指摘してるけど、君はスペルミスしてるから検索できたんだ。このリンクが検閲を証明してるよ。検閲された検索に別の単語を追加すると、うまくいくみたい。" userName="directevolve" createdAt="2025-03-03T15:30:55" color="#ff5c5c">}}

{{<matomeQuote body="ああ、確かに自分の検索クエリを間違えちゃった。transgenderの検閲は単純な文字列照合みたいで、禁止された単語を引用符で囲むと検索できるよ。これをNIHのスタッフが適当な仕方で実装したのかも。" userName="raphman" createdAt="2025-03-06T22:46:11" color="#45d325">}}

{{<matomeQuote body="説明してくれてありがとう。ただ、上のリンクは「trangender」というスペルミスのものだね（でも検索は成功する）。これは『検索問題』じゃなくて、「gender」と「transgender」を検索するとすぐメインページに戻されるよ。" userName="wadadadad" createdAt="2025-03-03T15:27:33" color="">}}

{{<matomeQuote body="いい指摘だね、スペルミスに気づいてなかった。" userName="directevolve" createdAt="2025-03-03T15:43:40" color="">}}

{{<matomeQuote body="NIHのサブレディットで聞いたけど、この検閲は実は週末じゃなくて1月に追加されたらしい。トランプとマスクがNIHのウェブサイトを壊してる間にっていうのはあくまで噂だよ。" userName="directevolve" createdAt="2025-03-03T16:15:43" color="">}}

{{<matomeQuote body="このサーバーはTCPでは応答するって指摘もあったようだね。サービスは部分的には動いているから、何が起こってるのか外からは分からないな。" userName="fweimer" createdAt="2025-03-02T11:50:31" color="">}}

{{<matomeQuote body="これは確実にファイアウォールの設定ミスだと思う。もし悪意があったら、悪人はUDPだけを閉じたりしないよ。" userName="stwrzn" createdAt="2025-03-02T13:20:02" color="#ff5c5c">}}

{{<matomeQuote body="確認できた！指摘してくれてありがとう。サーバーかファイアウォールの設定を誰かがミスした可能性が高いね。マスクがNIHのケーブルを引き抜くなんてことは考えにくい。" userName="raphman" createdAt="2025-03-02T12:43:19" color="">}}

{{<matomeQuote body="一方で、サイトを妨害するにはDNSをいじるのが一番簡単かもしれないね。" userName="softwaredoug" createdAt="2025-03-02T13:00:53" color="">}}

{{<matomeQuote body="つまり、無責任な incompetence であって、悪意はないってこと？今はそれを証明してほしいな。" userName="daveguy" createdAt="2025-03-02T14:41:23" color="">}}

{{<matomeQuote body="PubMedって、インターネットの歴史の中で最も信頼性のあるサービスの一つだよね。具体的な問題は不透明だけど、やっぱり頭から腐ってるってことだ。" userName="thomasingalls" createdAt="2025-03-02T12:33:13" color="">}}

{{<matomeQuote body="スレッドにはちょっと遅れたけど、PubMedって本当にインターネットの歴史の中で最も信頼できるサービスなの？2010年代にNational Library of Medicineのインフラを担当してたんだけど、その時はPubMedの重要性に気づいてなかった。リアルタイムのトラフィック解析を見てその重要性を実感したよ。面白い経験だね。" userName="hoofhearted" createdAt="2025-03-03T15:03:08" color="#ff5c5c">}}

{{<matomeQuote body="Pubmedは動いてるね。科学の基礎の一部だから良かったよ。" userName="prepend" createdAt="2025-03-02T13:24:49" color="#ff5733">}}

{{<matomeQuote body="Pubmedは科学者にとってのGoogleみたいなもんだね。科学出版物検索の手段として使うのが普通。もちろん他の選択肢もあるけど、今までみんなPubmedを使ってたんじゃないかな。EUの科学者も、普段使いの代替手段を知らなかったかもしれない。NIHが提供してる機能もすごく重要だよ。" userName="fabian2k" createdAt="2025-03-02T11:42:57" color="#785bff">}}

{{<matomeQuote body="Pubmedはあんまり使わないけど、Google Scholarは毎日使ってるよ（神経科学・医学・コンピュータ科学の研究で）。でも医療研究者はみんなPubmedしか使わないことは認める。" userName="rossant" createdAt="2025-03-03T08:14:08" color="">}}

{{<matomeQuote body="FAAの事故調査データベースもダウンしてるらしいし、他にも一般の人が知らない重要なシステムがたくさん影響を受けてるみたい。もしこれが中国のサイバー攻撃だったら大騒ぎだっただろうけど、実際は故意みたいだね。" userName="gary_0" createdAt="2025-03-02T12:11:30" color="#38d3d3">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="技術的に見ると、NIH.govには3つのネームサーバーがあって、各ホストはまだ生きてるけど、DNSはTCPでしか応答してなくてUDPには反応してない。3つとも同じASに属していて、1つの運営者が責任を持ってることがわかる。IPv6もないし、外部企業には運営を委託してないように見える。NIHにはCenter for Information Technologyって部門があって、DNSサーバーの運営をしてるみたいだね。" userName="belorn" createdAt="2025-03-02T12:29:42" color="#ff33a1">}}

{{<matomeQuote body="これを言うと後悔するかもしれないけど、昔NIH/CITのチームで、境界ファイアウォールとDNSサーバーを運営してた時期があったんだ（正確にはNIH/CIT/DNST/NEB/NSS）。今はいないから特別な内情は知らないけど、DNSサーバーがアウト時にTCPにしか応答してなかったことから、悪意じゃなくて単純なファイアウォールのミスだと思うんだ。こういうことは起こるから、いちいち気にしない方がいいよ。" userName="g-clef" createdAt="2025-03-02T12:48:37" color="">}}

{{<matomeQuote body="ここを見てみて<br>https://18f.org/" userName="vaylian" createdAt="2025-03-03T06:19:23" color="">}}

{{<matomeQuote body="ちなみに、nameservers lhcns1.nlm.nih.gov (130.14.55.72) と lhcns2.nlm.nih.gov (130.14.55.128) はまだnlm.nih.govのサブドメインを解決するよ。" userName="raphman" createdAt="2025-03-02T12:54:33" color="#ff5c5c">}}

{{<matomeQuote body="興味深いね、そのIPアドレスは別のASに属していて、National Library of Medicineの組織下にあるみたい。NIH.govのITインフラを使ってないみたい。" userName="belorn" createdAt="2025-03-02T13:08:09" color="#38d3d3">}}

{{<matomeQuote body="イェーーー！NLMはNIHの中でも特別な存在だね。俺がいた時も予算がすごくて、PubMedは世界でトップ300のウェブサイトの一つだったと思う。NLMはPubMedのおかげで多くのトラフィックがあったから、NIHの他のデスクトップトラフィックに影響を与えないように独自のインターネット接続を持ってたんだ。" userName="g-clef" createdAt="2025-03-02T14:17:00" color="#785bff">}}

{{<matomeQuote body="その通りだよ。PubMedはNIHキャンパス内のNLMにあるデータセンターでホストされてる。君が言ったように、自分たちの光ファイバー接続も持ってるし、そこにはデジタルでない記録が保管されている倉庫もあるんだ。数千年前の医療記録が保管されていると言われていたし、エジプト時代のものもあるかもしれない。" userName="hoofhearted" createdAt="2025-03-03T15:14:26" color="#785bff">}}

{{<matomeQuote body="これをテストするための2つのアドバイスをあげるよ。最もアクセスしやすいツールはzonemaster.netで、これはAFNICとスウェーデンのインターネット財団が開発したものだよ。進んだ設定に行ってnlm.nih.govというドメインと、上にリストされた2つのネームサーバー、そのIPアドレスを入力してテストすれば、ドメインとそのネームサーバーのステータスサマリーが表示されるんだ。（またはこのリンクを使ってね： https://zonemaster.net/en/result/4a7d593dce6e167b）代わりに業界標準のdnsデバッグツールであるdigコマンドを使うのも良いよ。WindowsやMacにインストールするのは少し手間がかかるけど、Linux上では簡単だよ。このコマンドは「dig @130.14.55.128 nlm.nih.gov」となる。@はどのネームサーバーを使うかを示し、最後の部分が探しているドメイン名さ。" userName="belorn" createdAt="2025-03-02T19:52:33" color="#785bff">}}

{{<matomeQuote body="BLASTっていうのは、「Basic Local Alignment Search Tool」の略で、バイオインフォマティクスツールキットの一部なんだ。興味のあるクエリーシーケンスを他のシーケンスデータベースに送って、類似性を探すんだよ。" userName="gilleain" createdAt="2025-03-02T11:36:22" color="">}}

{{<matomeQuote body="最近この分野から離れていたから、今もどれくらいBLASTが使われているかわからないんだ。ただ、昔はDNAやタンパク質のシーケンスをBLASTするのは、Google検索みたいなものだった。これは特に特定のシーケンスが何をしているかを調べる研究には役立つ。研究する意味がないなら即座の答えをくれるわけでもないけど、シーケンスの類似性はしばしば似た機能を示唆してくれるんだ。例えるなら、StackOverflowが突然ダウンして、いつ復旧するかわからない感じかな。" userName="bow_" createdAt="2025-03-02T11:51:51" color="">}}

{{<matomeQuote body="私の兄弟は業界で働く分子生物学者で、BLASTデータを使ってるよ。彼女は数ヶ月間、会社に代替ソースやオフラインバックアップを用意すべきだと伝えているんだ。彼女のソフトウェアチームが間に合っているといいけど。" userName="dharmab" createdAt="2025-03-02T12:07:02" color="#45d325">}}

{{<matomeQuote body="誰でも自分のBLASTデータベースを設定できる。特定の種に特化した場合は、効率のためにローカルでDBをメモリにキャッシュしていることが多い。代替手段もあるし、NCBI BLASTはその一つに過ぎない。全てのシーケンスは世界中の異なる地域で保存されていて同期されているから、もし一つのデータセンターがダウンしても、ヨーロッパや日本など他の場所から同じデータを使うことができる。" userName="wisidisi" createdAt="2025-03-02T12:25:10" color="#785bff">}}

{{<matomeQuote body="そうそう、彼女の会社のソフトウェアはNCBIのみを使うように設計されていて、彼女はそれがリスクだと警告していたんだ。" userName="dharmab" createdAt="2025-03-02T12:44:00" color="">}}

{{<matomeQuote body="公平に言えば、確かに自分も現場にいた時（かなり前）、シーケンス系は得意じゃなかった。でも、シーケンス比較は基本的なツールだよね。当然、ローカルで動かせるし、他にもEBI EuropeやJapanなど提供企業はある。でも、こういう問題が続くのはあまり良くないと思う。" userName="gilleain" createdAt="2025-03-02T12:50:07" color="">}}

{{<matomeQuote body="プロではないけど、使うには使ってるよ。新しいスマートブラストもあって、こっちは高速で動く（マジでGoogleみたい！）けど、非常に似たタンパク質にしか使えないんだ。" userName="arthur2e5" createdAt="2025-03-02T12:32:19" color="">}}

{{<matomeQuote body="ヨーロッパの代替サイト：<br>https://europepmc.org/<br>https://www.ebi.ac.uk/ena/browser/home<br>https://www.ensembl.org/" userName="DangerousPie" createdAt="2025-03-02T11:42:46" color="#ff5733">}}

{{<matomeQuote body="パンヨーロッパのゲノミクスやバイオテクノロジーへの取り組みを見れて嬉しい。<br>デンマークのエコシステムは北極星だね。<br>それにしても、BLASTは復旧してるみたいだよ。" userName="alephnerd" createdAt="2025-03-02T13:48:06" color="">}}

{{<matomeQuote body="DNSサーバーが一時的にダウンしてるかもだけど、NIHがメンテしてるだけで、サイトはアクセス不可じゃないかも。<br>タイトルの「アクセス不可」は冗談だと思うよ。<br>自分は普通にサイトにアクセスできるし、必要な人にIPも提供できるし。" userName="1vuio0pswjnm7" createdAt="2025-03-02T16:23:28" color="#ff5733">}}

{{<matomeQuote body="自分の地域（NY州北部）でもメインのPubMedサイトは普通に動いてる。<br>NIHやNSFのページはメンテナンスでたまにダウンするけど、週末に多いよね。<br>このHNコミュニティの反応はちょっと早すぎる気がする。" userName="chriskanan" createdAt="2025-03-02T17:29:22" color="">}}

{{<matomeQuote body="130.14.29.110にアクセスすると、<br>https://www.ncbi.nlm.nih.gov/<br>にリダイレクトされるけど、そこはアクセス不可だね。<br>23.41.4.71は「無効なURL」のエラーが出たよ。" userName="catlikesshrimp" createdAt="2025-03-02T17:07:35" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="FYI、これが始まったのは少なくとも16時間前だよ。<br>昨夜もそのサイトを使おうとしたけどダメだったし、バックアップがどこかにあればいいなと思ってる。<br>この状況なら、非公式なソースを使うのも仕方ないかな。" userName="jjallen" createdAt="2025-03-02T11:29:05" color="">}}

{{<matomeQuote body="誰かがNIHのDNSサーバーをシャットダウンしたみたい。今はNIHのサイトやPubMed、BLASTは動いてるけど、名前解決できない状態。Cloudflareの1.0.0.1のDNSリゾルバーはキャッシュがまだ残ってるみたい。Googleや他のはダメだったから、SNSでアクセスできてる人とそうでない人に分かれてる理由かな。/etc/hostsでのワークアラウンド：<br>156.40.212.210 nih.gov<br>96.17.96.9 www.nih.gov<br>34.107.134.59 pubmed.ncbi.nlm.nih.gov<br>130.14.250.10 ftp.wip.ncbi.nlm.nih.gov<br>130.14.29.110 blast.ncbi.nlm.nih.gov<br>EDIT：ns.nih.gov, ns2.nih.gov, ns3.nih.govは応答しないけど、lhcns1.nlm.nih.govのは応答するよ。" userName="raphman" createdAt="2025-03-02T10:50:52" color="#785bff">}}

{{<matomeQuote body="シャットダウンはされてないみたい。以下の方法で確認できるよ：<br>　　dig +tcp @$(dig +short ns.nih.gov @a.ns.gov) www.nih.gov" userName="stwrzn" createdAt="2025-03-02T13:24:56" color="">}}

{{<matomeQuote body="そう。スレッドの他のところでも言ってたけど、TCPリクエストには応答するみたい。" userName="raphman" createdAt="2025-03-02T13:30:53" color="">}}

{{<matomeQuote body="この情報を書いてくれてありがたい。月曜までに解決しないと重要になるかもしれない。これは意図的でないことを願うばかり。" userName="anotherpaul" createdAt="2025-03-02T11:58:24" color="#ff5733">}}

{{<matomeQuote body="クール、ありがとう！カオスモンキーが働いてる間も、真のARPANET精神は生きてるね！" userName="imhoguy" createdAt="2025-03-02T12:13:21" color="">}}

{{<matomeQuote body="予算カットだけじゃなくて、政府の各機関を狙って意図的にダメにする計画も考慮しないといけないかも。" userName="qgin" createdAt="2025-03-02T11:36:36" color="#ff5c5c">}}

{{<matomeQuote body="＞予算カットだけじゃなくて、こうなることは数週間前からわかっていたと思うけど。" userName="throw0101c" createdAt="2025-03-02T12:10:18" color="">}}

{{<matomeQuote body="ケネディがワクチン義務を撤回したことから、ひどい無能さが影響してるんじゃないかとも思う。" userName="csomar" createdAt="2025-03-02T13:11:10" color="">}}

{{<matomeQuote body="通常はハンロンの剃刀を信じるけど、この政権だと無能か悪意かの50/50な気がする。彼らの意図は、彼らが対象としている大多数の人々を利益をもたらすことじゃないことだけは分かる。" userName="kennysoona" createdAt="2025-03-02T13:48:13" color="#45d325">}}

{{<matomeQuote body="急いで決断してるって言うなら、確かにその証拠があるね。でも引用した文の残りはこうだよ。＞”政府の各部署を訪ねて刺し傷を与え、1年か2年で死に至らしめる意図的な計画なんてないと思う”果たして彼らが本当に政府を滅ぼしたいと思ってるのか、核爆弾や鳥インフルの管理を失わせたがってるのか、納得できる理由が必要だと思う。" userName="orblivion" createdAt="2025-03-02T15:05:21" color="">}}

{{<matomeQuote body="彼らが政府を壊そうとしてるって言ってるんだけど、これが証拠だとは思わない？特にこの件については、これは多数の意見があって、政府を弱体化させる意図があるんだと思う。リンクを見てみて。" userName="throw0101c" createdAt="2025-03-02T15:16:28" color="">}}

{{<matomeQuote body="同意はするけど、すぐにアナーコキャピタリズムに飛びつく準備ができてるわけじゃないし、核爆弾の管理をほったらかすなんてことはしないと思うよ。具体例はあまり良くないと思うから、逆に反論になるかも。" userName="orblivion" createdAt="2025-03-02T15:20:19" color="">}}

{{<matomeQuote body="南スーダンの内戦でコレラのアウトブレイクを防ごうとした元USAID職員が見捨てられている。彼らの家族のことを含めて、セキュリティチームや物流チームは解雇された。水も電力も燃料も無い。十分に進んだ無能さや不注意は、悪意と同じだ。核兵器を注意深く見守りたいと思っていても、もしそれができないなら、意図は無意味で結果が全てだ。" userName="freen" createdAt="2025-03-02T15:31:56" color="#ff5c5c">}}

{{<matomeQuote body="それは理にかなってるけど、私の最初の指摘は意図についてのものだった。" userName="orblivion" createdAt="2025-03-02T15:35:35" color="">}}

{{<matomeQuote body="意図は関係ないよ。確かに刑事過失と殺人は違うけど、もしそれが君の子供だったら気にする？" userName="freen" createdAt="2025-03-02T16:21:20" color="#ff5c5c">}}

{{<matomeQuote body="また、意図についての他の投稿に返答してるんだ。気に入らないなら、彼らに言ってみて。君のポイントは正しいと思うけど、別の話だよ。" userName="orblivion" createdAt="2025-03-02T17:22:20" color="">}}

{{<matomeQuote body="連邦政府を壊す統一した計画はないと思うけど、現政権の影響力のある人たちは特定の機関を壊そうとして、邪魔しない形になっている。この結果、現在の政権は、影響力のある人々が壊したいと思っている機関を攻撃しようとするだろう。" userName="Centigonal" createdAt="2025-03-02T16:57:38" color="">}}

{{<matomeQuote body="Project 2025の中の人が軍隊を解散させるとは思えない。だから、核の管理を失うとは考えにくい。DOE（エネルギー省）削減のための手段だったかも。人員再雇用に動いてるとのことだし。" userName="orblivion" createdAt="2025-03-02T17:45:01" color="">}}

{{<matomeQuote body="DOEの問題は間違いだと思う。実行プロセス内の誰も、DOEが何をしているのか知らなかったのは驚きだけど、意図的だったとは思わない。" userName="Centigonal" createdAt="2025-03-02T18:16:49" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="共和党の計画とUSPSには、意図的に機関を妨害して、作り出した混乱を理由に機関を潰そうとする歴史があると思う。1月20日以降、いくつかの機関が非生産的だからカットすべきって聞くと思うけど、それは完全に目をつぶった結果だ。" userName="ldoughty" createdAt="2025-03-02T11:47:13" color="">}}

{{<matomeQuote body="この現象をどうにかしたいけど、共和党が楽しむために何かを壊し、民主党がそれを修復しようとするけど難しい、そして有権者が共和党を選ぶってのがずっと続いてるのが辛い。" userName="i80and" createdAt="2025-03-02T12:23:57" color="">}}

{{<matomeQuote body="単純には言えないけど、民主党も馬鹿なアイデアが多いし、共和党は良いアイデアを通したこともある。過度に単純化すると、偏見が強くなるよ。今の共和党は、6年前とは異なる党になってる。" userName="ethbr1" createdAt="2025-03-02T12:32:50" color="#785bff">}}

{{<matomeQuote body="2010年から2014年頃のGOPの集まりにいたけど、健康的で良識のある保守党があったと思いたい。しかし、私の目には何もハイジャックされてない。MAGAが私の大人の人生の全てだったから。" userName="i80and" createdAt="2025-03-02T13:35:20" color="">}}

{{<matomeQuote body="10年間も一人の男が政党を支配してるのはハイジャックではなくて、好みが明らかになっただけだ。" userName="aswanson" createdAt="2025-03-02T12:51:09" color="">}}

{{<matomeQuote body="彼らは12年前からハイジャックが始まったと思ってると思う。" userName="pclmulqdq" createdAt="2025-03-02T12:55:26" color="">}}

{{<matomeQuote body="2008年に始まり、2010年に本格的に加速した。" userName="natebc" createdAt="2025-03-02T13:36:26" color="">}}

{{<matomeQuote body="ああ、確かにこれは正しいかも。Trumpismは茶会運動の自然な延長線上にある可能性がある。" userName="pclmulqdq" createdAt="2025-03-02T13:39:01" color="">}}

{{<matomeQuote body="2000年以降に共和党が聯邦政府で提案して実施した良いアイデアを一つ挙げてみて。私が思い出せる最新のものは、クリントンがバランスの取れた予算を作ったことだけど、彼は民主党員だ。" userName="hedora" createdAt="2025-03-02T14:55:03" color="#38d3d3">}}

{{<matomeQuote body="過去の激しい流れから考えると、借金を直す方向には進まないだろう。キャピタル・ゲイン税の引き下げが来るって感じだ。" userName="smallmancontrov" createdAt="2025-03-02T11:43:24" color="">}}

{{<matomeQuote body="今度の選挙で共和党はまた0.1％の超富裕層向けに4.5兆の税減を通そうとしてるって。彼らは支持者に嘘をついて、政府は悪、企業は良い、税金は悪、金は良いっていう信念を植え付けられてるから信じちゃうんだよね。トランプは選挙前にProject 2025が何か分からないって言ったけど、それは嘘だよ。" userName="bloopernova" createdAt="2025-03-02T11:58:59" color="">}}

{{<matomeQuote body="悪意を考える必要はないと思う。少数の金持ちの頭の中を議論することが問題をこじらせるだけだし、単純に無能ってだけで十分に不適格な理由になるよ。MAGAと議論する時には、無能を問題にする方がずっと説得力がある。" userName="llamaimperative" createdAt="2025-03-02T11:42:23" color="#ff5c5c">}}

{{<matomeQuote body="明らかに悪意のある行動が続いてるってことは認めるべき。現状を隠すようなことは誰のためにもならないし、素直に何が起こっているかを話す必要がある。" userName="lkrubner" createdAt="2025-03-02T12:10:11" color="">}}

{{<matomeQuote body="無能さの多さから悪意があると考えるのがもっと自然だね。" userName="croes" createdAt="2025-03-02T11:46:32" color="">}}

{{<matomeQuote body="何が真実かは別として、反論に使えるかどうかが大事なんだ。相手を説得するのが目的だから、既に信じている人たちに迎合するだけでは意味がないよ。実際、数日でウェブサイトが復旧するなら、それが悪意なのか、ただの「政府運営ができない人たち」なのか、どっちが説得力あるかが重要。" userName="llamaimperative" createdAt="2025-03-02T11:51:04" color="#785bff">}}

{{<matomeQuote body="2024年の選挙では民主党の投票率が問題だったんだよね。応援することも大事なんだけど、それが好きじゃなくてもしょうがない。" userName="smallmancontrov" createdAt="2025-03-02T11:59:15" color="">}}

{{<matomeQuote body="もっと「彼はファシストだ」って発信すれば、もっと多くの人が動いたって証拠はあるの？" userName="llamaimperative" createdAt="2025-03-02T12:10:18" color="">}}

{{<matomeQuote body="最初にIMOって言ったけど、俺に証拠を求めるの？笑。トランプを面白いオレンジ色の男だと思ってた多くの民主党の人たちがいて、彼に対して投票する気がなかったんだ。左側の「両方悪い」ってメッセージに騙されちゃったから、俺は「トランプはファシスト」って言うよりも「両方悪い」を抑えるべきだったと思う。" userName="smallmancontrov" createdAt="2025-03-02T12:29:05" color="#785bff">}}

{{<matomeQuote body="両方とも悪かったよ。バイデンとカマラは民主党にとって最悪の候補で、キャンペーンの方針も統一感のあるメッセージが欠けてた。カマラの2024年のキャンペーンスローガンって何だったの？" userName="ethbr1" createdAt="2025-03-02T12:38:09" color="">}}

{{<matomeQuote body="これはProject 2025の明確な目標だよ。" userName="MattGaiser" createdAt="2025-03-02T11:48:44" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
