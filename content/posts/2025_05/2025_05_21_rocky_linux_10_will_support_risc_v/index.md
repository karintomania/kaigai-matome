+++
date = '2025-05-21T00:00:00'
months = '2025/05'
draft = false
title = 'Rocky Linux 10、RISC-V対応へ'
tags = ["Rocky Linux", "RISC-V", "Linux", "ディストリビューション", "ハードウェア"]
featureimage = 'thumbnails/purple1.jpg'
+++

> Rocky Linux 10、RISC-V対応へ

引用元：[https://news.ycombinator.com/item?id=44056104](https://news.ycombinator.com/item?id=44056104)




{{<matomeQuote body="Red Hatが昨日RHEL 10でRISC-Vを発表してたから、これはまあ予想通りだよね。参考になるリンクもあるよ：https：//www.redhat.com/en/blog/red-hat-partners-with-sifive-..." userName="audidude" createdAt="2025/05/21 22:08:35" color="#ff5c5c">}}




{{<matomeQuote body="Debian Trixieも今はハードフリーズ中で、RISC-V64を公式サポートしてるよ[１]ね。[１] Debian 13の新機能：https：//www.debian.org/releases/trixie/release-notes/whats-n..." userName="teleforce" createdAt="2025/05/23 11:46:55" color="">}}




{{<matomeQuote body="RHとかRockyとかOracleを使う理由（rpm wranglersとか）は分かるけど、俺には合わないな。最初のRed HatはIBM買収前で楽しかった頃。Mandrakeにも移った。Yggdrassilから始めたんだ。仕事でRH関連触るけど、古いのがマジで面倒。Tomcat？1863年の？セキュリティのバックポートはすごいけど、なんで歩行器使ってるカーネルから始めるわけ？失礼かもしれないけど、RHは（多分）すごく安定してるけど、ちょい古い。ディストロ自体じゃなくて、ユーザーもアップデートで困ってるみたい。[redacted]なのはRH系ショップが一番ひどい（超個人的意見）。" userName="gerdesj" createdAt="2025/05/21 23:38:36" color="#785bff">}}




{{<matomeQuote body="UbuntuよりRed Hatの方がいいな。この前業者カスタムのUbuntu 23.10のPC渡されたんだけど、OSからでっかいカスタム入り。Aptが死んでた。マジふざけんな。Red Hatは少なくともリポジトリ殺さないし。" userName="dgfitz" createdAt="2025/05/21 23:47:04" color="">}}




{{<matomeQuote body="Ubuntu 22.04ならLTSだからまだアップデートされるよ。Ubuntuのリリース方針はちゃんと公表されてるし、もちろん読んでるだろ。do-release-upgrade試してみなよ。<br>あと”業者カスタムのUbuntu 23.10でAptが死んでた”って言ってるけど、それUbuntuの問題なわけ？" userName="gerdesj" createdAt="2025/05/22 00:05:25" color="">}}




{{<matomeQuote body="＞Tomcat ... OK you can have one from 1863. There is a really good security back port effort but why on earth start off with a kernel that is using a walking stick.<br>古いソフトは実践で鍛えられてて信頼できるからだよ。それに、ソフトのアップグレードは常に面倒だから、やる回数を最小限にするのが一番。10年のサポートポリシーがあるRHEL（とその派生）に、安定性では勝てないね。" userName="bigstrat2003" createdAt="2025/05/22 00:58:38" color="#ff5733">}}




{{<matomeQuote body="契約でOSアップデートできないんだよ。<br>リポジトリを勝手に消すなんて、ユーザーより自分たちが賢いとUbuntuが決めつけてるから問題なんだろ。<br>そんなのクソくらえだね。" userName="dgfitz" createdAt="2025/05/22 02:48:42" color="">}}




{{<matomeQuote body="告白すると、ティーンエイジャーの頃のRedHatの最初の体験で、悪夢みたいなRPMの依存関係にうんざりしたんだ。Debianとその子孫に移ってからはもう戻らなかった。APTは魔法みたいに見えたよ。<br>今は依存関係をちゃんと解決するパッケージマネージャーがあるんだよね？それがRPM wrangler？" userName="copperx" createdAt="2025/05/22 00:55:41" color="">}}




{{<matomeQuote body="俺は年寄りだよ。最初の箱入りRed Hatディストロ使ったことある。当時はクールだった。もう30年近く前か。<br>彼らがLinuxに貢献してるのは知ってるし、エンタープライズがお金を払ってることには感謝してる。悪い会社じゃないと思う。ただ、優れた開発者でもプロジェクトカットされたらチームが拾わない限りクビになるって聞くのは変な話だけど。<br>LinusがLinux作ったのは金のためじゃなかったし、Red HatはMicrosoftが自社Linux持つ前のMicrosoftみたいに、俺には企業って感じなんだよ。俺のLinuxは放し飼いがいいんだ、囲われたくない。彼らは何も悪いことしてない。ただ、雰囲気が違う。金のためにやってる奴らは”分かってない”って俺には思える。" userName="rubitxxx10" createdAt="2025/05/22 01:34:00" color="">}}




{{<matomeQuote body="（カーネル開発に関わる立場から）RHELのカーネルは時間が経つにつれてかなり更新されてるんだ。パッケージ名とは違って、EoL時のコードは初期版より進化してる。客やパートナーからの機能リクエスト、CVE修正、バグ修正がほぼ毎日入ってる。バージョン文字列が実コードと違うのが「古いカーネル」に見える原因の一つ。<br>多くの会社が最新じゃなく「n-1」を使うのも問題。展開する頃にはn-1がメンテナンス期に入ってて修正が難しくなる。解決策があれば聞きたい。<br>新しいカーネルバージョンを継続的に出さない元の理由は、サードパーティベンダーが上に構築できる安定したkABIを提供すること。アップストリームや多くのOSベンダーはこれをサポートしてないけど、kabiを壊さない「約束」があれば、ドライバ更新なしでスムーズにアップデートできるはずなんだ。<br>kabiメンテナンスは裏で行われてて、CVE修正や新機能はライフサイクル中に提供されてるよ。<br>rhel10のカーネルバージョンは6.13に近いけど、初版でもゼロデイ修正とか新しいコードがバックポート、テストされてる。<br>セキュリティ情勢は変わってきてるから、Red Hatのビジネス部門もいつかローリングリリースでテスト済みのカーネル（内部にCKIプロジェクトがある）を出すかもしれない。でもこれだとサードパーティベンダーへのkABI安定保証がなくなるし、RHELの価値が分かりにくくなって、どのカーネルを使えばいいか混乱させるデメリットがある。<br>これが見たい（新機能欲しい）顧客と、嫌だ（リスクや問題が増える）顧客の2タイプがいると思う。全員を満足させるのは難しいし、多分不可能だね。" userName="worthless-trash" createdAt="2025/05/22 04:55:17" color="#785bff">}}




{{<matomeQuote body="やっほ！そんな経験させちゃってごめんね。これを完成させるために裏で動いてたRed Hattersのひとりなんだ。正直な気持ちを伝えてくれて、本当に感謝してるよ。バージョンとＡＢＩの保証はみんな向けじゃないんだ。同時に、僕が”古いカーネルを動かすことの擁護者じゃない”ってこと知ってる人もいると思うよ。これから出すＰ５５０イメージに入ってるものは全部新しいって保証するよ。ＧＣＣ １５、ＬＬＶＭ １９とかね。これはＲＩＳＣ－Ｖ向けにもっと多くのソフトウェアを完成させるための開発用なんだ。<br>利益相反の表明：俺はＲｅｄ Ｈａｔ（元ＣｏｒｅＯＳ）で働いてて、ＲＩＳＥ（ＲＩＳＣ－Ｖ Ｓｏｆｔｗａｒｅ Ｅｃｏｓｙｓｔｅｍ）の中のディストロ統合ワーキンググループのリーダーもやってるんだ。" userName="thebeardisred" createdAt="2025/05/22 03:34:57" color="#ff33a1">}}




{{<matomeQuote body="彼らが古くてＬＴＳじゃないディストロのサポートを維持しないのは周知の事実だよ。文字通り約束したことを実行しただけ。ＬＴＳディストロを使っていれば避けられたのにね。Ｆｅｄｏｒａも同じことしてるよ。企業ベンダーで６ヶ月サイクルのディストロを１年以上サポートするところなんてないよ。ＲＨＥＬのリリースはものすごくゆっくりなんだ、例えばね。" userName="dismalaf" createdAt="2025/05/22 02:56:04" color="">}}




{{<matomeQuote body="＞ バージョンとＡＢＩの保証は皆のためじゃない。<br>ついでに言うと、そのｋＡＢＩ保証だってそんなもんだよ。俺はＨＰＣ／ＡＩで働いてるんだけど、俺たちが使うＭＯＦＥＤやＬｕｓｔｒｅドライバーみたいなアウト・オブ・ツリーのドライバーは、ＲＨＥＬのマイナーアップデート（ＲＨＥＬ Ｘ．Ｙ → Ｘ．（Ｙ＋１）みたいなの）があるたびに必ず壊れたんだ。ここでは過去形を使ってるのは、過去５年くらいこの目的でＲＨＥＬを使ってないからなんだけど、それから変わったかもしれないけど、そうは思わないな。" userName="jabl" createdAt="2025/05/22 05:13:00" color="#38d3d3">}}




{{<matomeQuote body="ＯＳの選択について俺には発言権がなかったんだ、Ｕｂｕｎｔｕの立場がどれだけ広まってても関係ない、それは間違いだ。ＬＴＳじゃなくてもいいから、糞みたいにｒｅｐｏｓを開けっ放しにして、安全じゃないＯＳ使ってるって宣伝しろよ。その選択を俺、ユーザーにさせろ。俺が馬鹿で、何か慈悲深い独裁者に選択をしてもらう必要があるとか、彼らが俺より賢いからって俺をハンディキャップつけるとか、そういうフリすんな。彼らは賢くない。" userName="dgfitz" createdAt="2025/05/22 03:23:10" color="">}}




{{<matomeQuote body="Ｕｂｕｎｔｕって基本的にａｐｔを殺そうとしてない？俺のＵｂｕｎｔｕはＦｉｒｅｆｏｘのｓｎａｐバージョンをインストールしようとし続けて、いろんなワークフローをぶち壊して使い物にならなくなったんだ。ＲＨ系のＯＳ（たぶんＦｅｄｏｒａ）を試してみたいとは思ってるんだ、そうすれば色々変えられ続けずに済むからね、でも今の俺の人生の状況だと、そんな時間もエネルギーもないから、今はＭａｃに頼ってるよ。数ヶ月後には新しいＬｉｎｕｘディストロを試せるようになるといいな、まだよく分からないんだけど、ｍａｃＯＳの何か、仕事を終わらせるって観点からだとどうにも合わないんだ。" userName="hshdhdhj4444" createdAt="2025/05/22 01:34:46" color="">}}




{{<matomeQuote body="”ｒｅｐｏｓを開けっ放しにする”のは彼らの側にコストがかかるんだよ。サーバーはタダじゃない。自分が賢いと思うなら、自分のｒｅｐｏｓをミラーリングすればいい。" userName="dismalaf" createdAt="2025/05/22 03:59:30" color="">}}




{{<matomeQuote body="Ｐｏｐ ＯＳについて良い話をたくさん聞いたよ。Ｕｂｕｎｔｕをうまくやったみたいで、Ｆｉｒｅｆｏｘ用のａｐｔパッケージもある。（俺は自分でＶｏｉｄを動かしてて、こういうややこしいのからは楽しく離れてるけどね。）" userName="nine_k" createdAt="2025/05/22 01:46:23" color="">}}




{{<matomeQuote body="マジで？彼らのＬＴＳと非ＬＴＳのｒｅｐｏｓを同時に開けっ放しにするのに、あとどれだけコストがかかるんだ？頼むよ、それすごく弱い論点だって、君も分かってると思うんだけど。" userName="dgfitz" createdAt="2025/05/22 04:15:27" color="">}}




{{<matomeQuote body="ＵＮＩＸにお金を払いたくなかった人たちや、自社のＵＮＩＸクローンの研究開発コストを削減したいＵＮＩＸベンダー、それからＡＴ＆Ｔの訴訟が続いててＢＳＤを使うのがまだ安全か分からなかった人たちのおかげでＬｉｎｕｘが離陸したっていうのを除けばね。" userName="pjmlp" createdAt="2025/05/22 09:29:25" color="">}}




{{<matomeQuote body="時間とか労力、設備のコストがかからないなら、自分でミラーリングすればいいじゃん。簡単だろ？<br>それか、Ubuntuにビジネスを依存してる文字通り他の全組織みたいにLTSディストロ使えばいいだけじゃん。SMH<br>なんていうか、考えることすらアホらしいわ…" userName="dismalaf" createdAt="2025/05/22 04:39:47" color="">}}




{{<matomeQuote body="ユーザーとしてああいうマシンをよく使わされたけど、マジで最悪なんだよね。<br>なぜか、こういうエンタープライズLinuxは科学計算とか機械学習クラスターでめっちゃ使われてる。<br>他のディストロじゃとっくに解決済みの古いバグと戦わなきゃいけないし、モダンソフト動かすために回り道ばっかり。<br>いつもシスト管理者がユーザーに負担押し付けてるみたいに感じてたな。<br>エンタープライズLinuxは嫌いだけど、Red Hatは技術スタック全体ですごい仕事してるよ。<br>個人的にはFedoraとimmutable distrosが一番の成果だと思うね。" userName="danieldk" createdAt="2025/05/22 06:50:38" color="#ff33a1">}}




{{<matomeQuote body="それはマジで古い見方だよ。<br>dnfはaptを圧倒してる。<br>試してみるか、せめてネットでmanページでも見て何ができるか知っとけよ。<br>俺が一番好きなのは、パッケージ操作のトランザクションインストールとかで、ちゃんと履歴が残ってて、一つのコマンドで元に戻せる機能だね。" userName="homebrewer" createdAt="2025/05/22 06:54:36" color="#45d325">}}




{{<matomeQuote body="第一印象ってマジ大事。俺がDebianに行ったのもそれが理由。<br>これ言っただけで低評価されるべきじゃないよ。<br>昔は28.8kモデムで、検索も全然ダメ、rpmの依存関係の手動解決も大変だった。<br>カーネルコンパイルなんて一晩仕事。<br>CDかDVDで起動してた時代、Debianのapt-getやSuseのyastは全部自動で楽だったんだ。<br>DebianとSuseは楽しかったけど、RedHatは企業向けって感じだったね。<br>SystemDもRedHatが推したんだ。" userName="speakspokespok" createdAt="2025/05/22 04:39:04" color="">}}




{{<matomeQuote body="以前のコメントで言ったkABI保証の話だけどさ。<br>HPC/AIで使ってたMOFEDとかLustreドライバーは、RHELのマイナーアップデートごとに毎回壊れたんだ。<br>これ過去5年使ってないけど、変わったとは思えないな。<br>kABI保証ってそもそも価値ないのか、それともこれらのドライバが特別な機能使うから保証外なのかな？ よく分かんないや。" userName="jabl" createdAt="2025/05/22 05:18:49" color="#38d3d3">}}




{{<matomeQuote body="最後の部分について：USL vs BSDiの訴訟は1992年に始まって1994年に和解したんだ。<br>Linuxが注目されるよりずっと前だよ。<br>（Linuxカーネル1.0が出たのは訴訟和解とほぼ同時期。）<br>だから、その話は論拠として使うべきじゃないね。" userName="inejge" createdAt="2025/05/22 11:42:56" color="">}}




{{<matomeQuote body="コンテナの中で好きなもの動かせるんだよ。<br>root権限すら要らない。<br>Red Hatのpodmanならrootなしでコンテナ起動できるぞ。<br>＞エンタープライズLinuxは嫌いだけど、Red Hatは技術スタック全体ですごい仕事してるよ。<br>＞個人的にはFedoraとimmutable distrosが一番の成果だと思うね。<br>今日のFedoraは明日のRHELだよ。<br>FedoraのリリースをRHELの次のベースにしてるんだ。<br>Fedora好きなら、将来のFedora（＝将来のRHELのベース）も好きになるだろうね。" userName="znpy" createdAt="2025/05/22 06:59:48" color="#38d3d3">}}




{{<matomeQuote body="ローリングカーネルじゃなくって、2年ごととか、大きなリリースの途中で新しいカーネルになるのはどうかな？あるいは予想されてるメジャーリリースの寿命の真ん中くらいで？<br>ちょっと考えただけだけど、カーネルのバージョンを維持するのは大変な作業だ（たぶんエンジニアリングにすごく時間がかかる）ってことは分かってるよ。" userName="znpy" createdAt="2025/05/22 07:22:24" color="">}}




{{<matomeQuote body="そうそう、その通り。<br>MOFEDのカーネル部分は、顧客が実際に使ってるいろんなディストロのカーネルに、最新のすごいアップストリームカーネルドライバーをバックポートしたものなんだ。（MOFEDのカーネル以外の部分はほとんどオープンソースだけど、上にいくつかのプロプライエタリな特別なソースも含まれてる、例えばIIRC SHARPサポートはFOSSでは利用できない）。HPCコミュニティは、スケール時のパフォーマンスに不可欠だから、最新のRDMAドライバーを使いたがる傾向があるね。<br>Lustreについては、クライアントドライバーはstagingに取り込まれたんだけど、AFAIUでは数年間ほとんど使われずに放置されて、また削除されちゃった。問題はLustre開発者たちがアップストリームファーストの開発アプローチを採用しなかったことで、カーネル内のドライバーは基本的に誰も気にしないような、投げっぱなしのフォークだったんだ。今、もう一度試して、アップストリームファーストのアプローチを採用しようという努力があると思うけど、うまくいくかどうかは見守る必要があるね。" userName="jabl" createdAt="2025/05/22 09:01:01" color="#ff33a1">}}




{{<matomeQuote body="新しいカーネルのコンパイルは一晩、いや週末の作業だったな。<br>友達と僕で、それぞれのハードウェアで動作する最小カーネル構成の競争をしたこともある。たしか10分くらいでビルドできた時もあったっけ。これは90年代のどこかで、彼のDX2-50がうらやましかったな。<br>当時のDebianのapt-getとかSuseのyast/yast2と比べてみてよ、どっちも全部やってくれたんだから。<br>90年代のヨーロッパにおけるS.u.S.E.の本当に大きなメリットの一つは、ほぼ全ての書店で買えたこと、そしてインストール/管理の本と、ほぼ全てのパッケージが入った複数のCD-ROMが付属してたことだよ。多くの人がインターネットを全く使ってなかったか、せいぜいダイヤルアップだったから、完全なシステムを持つための全てを提供してくれたんだ。" userName="danieldk" createdAt="2025/05/22 06:56:50" color="">}}




{{<matomeQuote body="多分バカな質問なんだけど、x86以外のボードってどうやって普通にLinuxイメージを起動するの？組み込みやってた時は、うちのボードは全部すごく特定のDevice Tree blobsに頼ってたんだ。これらのボードも同じ戦略？それともACPIか何かを使うの？" userName="publicmail" createdAt="2025/05/22 02:11:25" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Linuxを動かしてるRISC-Vコンシューマーボードは全部DTも使うよ。RISC-VはACPIも使えるように進めてるけど、主にサーバーのため、ちょうどARMでACPIが主にサーバーで使われるのと同じように（ARM SBBR / ServerReady）。<br>ARMのWindowsノートPCはACPIだけ使うけど、それはWindowsがDTに関心ないからで、LinuxではこれらのデバイスはまだDTを使って起動されるよ。確かじゃないけど、いつもの理由は、これらのACPI実装がメーカーによってWindowsで動くようにハックされてて、LinuxでサポートするのがDTを書くより大変だからじゃないかな。" userName="Arnavion" createdAt="2025/05/22 03:42:40" color="#ff5c5c">}}




{{<matomeQuote body="ユニークなボードごとにイメージ作るより大変なの？" userName="ChocolateGod" createdAt="2025/05/22 05:16:13" color="">}}




{{<matomeQuote body="うん、見てみて。<br>https://github.com/aarch64-laptops/edk2/tree/dtbloader-app?t..." userName="Arnavion" createdAt="2025/05/22 06:48:09" color="#ff33a1">}}




{{<matomeQuote body="DTアプローチが、メーカーがアップデートを提供しなくなったらボードがゴミになるのを助長するのは残念だよね。" userName="ChocolateGod" createdAt="2025/05/22 07:23:59" color="">}}




{{<matomeQuote body="必ずしもそうじゃないよ。DTはu-boot tree / kernel tree / dtoverlay fileから別にロードできるからね。" userName="Arnavion" createdAt="2025/05/22 17:39:10" color="#ff5733">}}




{{<matomeQuote body="DTはACPIがx86のファームウェア（bios/efi）にあるみたいに、ファームウェア（例えばu-boot）に入れるべきなんだよ。<br>そしたらユニークなカーネル/OSイメージがいらなくなるでしょ。u-bootがROMにあるデバイスは、大体そこにDT（fdt）としてあるよ。" userName="mappu" createdAt="2025/05/22 08:37:25" color="#ff33a1">}}




{{<matomeQuote body="RISC-V Server TGが標準化しようとしてることだよ。<br>https://lists.riscv.org/g/tech-server-platform<br>https://lists.riscv.org/g/tech-announce/topic/public_review_..." userName="rwmj" createdAt="2025/05/22 07:33:01" color="#ff33a1">}}




{{<matomeQuote body="x86プラットフォームはUEFIやACPI、PCIとかISAプラグ＆プレイ（昔ね）、APICとか、いろんな名前でたくさんのプラットフォームサービスを使ってるんだ。これのおかげでジェネリックカーネルが起動時に何が使えるか見つけて、正しいドライバーを読み込めるわけ。ARMサーバーもSBSA（UEFIとかACPIとかを必須にする仕様だよ）とかで同じことしてるよ。RISC-Vの世界でも、UEFIとACPIを使って同じようなことしようとしてる努力があると思うな。" userName="jabl" createdAt="2025/05/22 05:05:12" color="#785bff">}}




{{<matomeQuote body="間違ってるかもだけど、それってSBI［0］のためのものじゃないの？［0］ Supervisor Binary Interface" userName="skywal_l" createdAt="2025/05/22 06:07:25" color="">}}




{{<matomeQuote body="今のところ基本的にはそうじゃないんだ。RISC-VはACPIと”universal discovery”っていう解決策に取り組んでるけど、まだ存在しないんだよね。" userName="IshKebab" createdAt="2025/05/22 10:55:42" color="#ff5733">}}




{{<matomeQuote body="windows ARMのノートPCってUEFI使ってるんだっけ？" userName="beeflet" createdAt="2025/05/22 03:02:37" color="">}}




{{<matomeQuote body="publicmailさんが聞いてたのはACPIとDTのどっちかって話で、UEFIじゃなかったよ。UEFIを使うのとACPI/DTを使うのは直交してる関係。DTを使ってるデバイスも、ファームウェアが対応してたらUEFIから起動できるんだ。<br>例えばこのリンクを見て。<br>https://github.com/TravMurav/dtbloader" userName="Arnavion" createdAt="2025/05/22 06:45:29" color="#45d325">}}




{{<matomeQuote body="これがまさにRHELでP550を使ってやってることだよ。u-bootとそのEFI機能を使ってgrubを初期化してるんだ（別のu-bootインスタンスじゃなくてね）。" userName="thebeardisred" createdAt="2025/05/22 07:43:30" color="#38d3d3">}}




{{<matomeQuote body="systemd-bootを使わないのはなんで？" userName="ChocolateGod" createdAt="2025/05/22 07:52:11" color="">}}




{{<matomeQuote body="使ってるよ。Windows Phoneでさえ昔はUEFIを使ってたんだ（完全に準拠してたかは知らないけどね）。" userName="ChocolateGod" createdAt="2025/05/22 05:15:46" color="">}}




{{<matomeQuote body="Linuxを起動するには、まだカスタムのdevice treeが必要みたいだね。" userName="pantalaimon" createdAt="2025/05/22 12:00:10" color="#38d3d3">}}




{{<matomeQuote body="Debianもだってさ：https://news.ycombinator.com/item?id=44034528" userName="pabs3" createdAt="2025/05/22 05:47:54" color="">}}




{{<matomeQuote body="俺も！普段使いできるハードウェアはまだ見つかってないけど、ずっと探してるんだ。例えばこれ→ https://store.deepcomputing.io/products/dc-roma-ai-pc-risc-v... 特に、マザーボード交換できるframework版ってのが良いね。ただ、開発者向けでまだ製品版じゃないって書いてあるし、USからの関税も気になるな。" userName="agarren" createdAt="2025/05/21 23:57:03" color="#38d3d3">}}




{{<matomeQuote body="RISC-Vのソフト環境はかなり整ってるよ。みんな高性能CPUコア待ちって感じだね。シリコン開発は時間かかるもんね…。今はSBC（シングルボードコンピューター）買うのが賢明だよ（OrangePi RV2、めちゃ良い！）デスクトップ・ノートPC級が出るまで待つのが吉：）" userName="0x000xca0xfe" createdAt="2025/05/22 02:19:46" color="#ff5c5c">}}




{{<matomeQuote body="または、https://www.crowdsupply.com/sutajio-kosagi/precursorみたいなFPGAベースのプラットフォームを買うのが良いかも。プログラマブルロジック機能はいつ必要になるかわからないし、もし必要になった時にそれがあると分かってるだけで助かるよ。" userName="tucnak" createdAt="2025/05/22 08:16:49" color="#ff5c5c">}}




{{<matomeQuote body="FPGA良いよね、でもRISC-VでしっかりしたLinux動かすなら実用的じゃないかな。一般的に手頃なFPGAだと100 MHz止まりだし、RAM少ないとか他にも問題あるんだ。" userName="rwmj" createdAt="2025/05/22 12:34:32" color="#785bff">}}




{{<matomeQuote body="PrecursorはXilinx Spartan 7クラスで100 MHz VexRISC-V（RV32IMAC+MMU, 4k L1 I/D cache）だけど、最近は1M+ LUT、10万DSPスライスのVersalが1000ドル以下で買える。でも統合が大変。FPGA自体はLinuxアプリに十分でも、オープンハードウェアの—ゲートウェア—がまだ追いついてないんだ。これはハードのせいじゃなく、ゲートウェアの制限だよ。" userName="tucnak" createdAt="2025/05/23 07:46:31" color="#38d3d3">}}




{{<matomeQuote body="最新プロセスで作られる超高性能なrv64マイクロアーキテクチャが待ちきれないな。有毒なPI lockが減るし、アセンブリもだいぶスッキリするだろうから。" userName="sylware" createdAt="2025/05/22 09:36:09" color="#45d325">}}




{{<matomeQuote body="ソースコードにはどうやってアクセスするんだろう？RHがソースコードの提供方法を変えて、今じゃ（ほとんど）手に入らないって前に読んだんだけど？" userName="kwanbix" createdAt="2025/05/22 11:24:58" color="">}}




{{<matomeQuote body="どこで聞いたの？  Red HatのRISC-V開発者プレビューのソースコードは、バイナリと一緒に6月1日にリリースされるよ。  でもほとんどはもうCentOS Stream 10に入ってて、ここで見れるよ： https://gitlab.com/redhat/centos-stream<br>ちょっとパッチ当てたパッケージ（とかなり大きいカーネルパッチ）があって、それは開発者プレビューが実際にリリースされるときに別のgit repoで出す予定だよ。" userName="rwmj" createdAt="2025/05/22 12:31:36" color="#ff5733">}}




{{<matomeQuote body="一般的に言えばね、例えばここで読めるよ：https://www.theregister.com/2023/07/10/oracle_ibm_rhel_code/…" userName="kwanbix" createdAt="2025/05/22 13:07:55" color="">}}




{{<matomeQuote body="うん、Oracleが言うことは信じない方がいいよ。彼らは全然公平な立場じゃないしね。<br>上のリンクからCS10のソースを引っ張ってこればいいじゃん、それはRHEL 10とほぼ同じなんだから。<br>それにRHEL 10のソースは顧客にも配布されてるよ。" userName="rwmj" createdAt="2025/05/22 15:04:53" color="#ff33a1">}}




{{<matomeQuote body="僕たちは2024年の初めから、コアOperating Systemと同じくFedoraとCentOS Streamのソースを組み合わせてRISC-Vポートを構築してるんだ。<br>RISC-Vのサポートの多くはもうF40（EL10の元になってるやつ）に入ってたから、残りは主にRHELへのバックポートと統合だったんだ。それもCentOS Stream 10が去年Fedoraから分岐して以来、追跡してたんだよ。" userName="nhanlon" createdAt="2025/05/22 14:35:44" color="#ff5c5c">}}




{{<matomeQuote body="もっと良いタイトル：Rocky Linux 10 Will Support Two RISC-V Boards" userName="mrbluecoat" createdAt="2025/05/21 22:38:35" color="">}}




{{<matomeQuote body="ディストロにとって、特定のアーキテクチャ向けにパッケージをビルドするだけでも、サポートという点では注目に値するんだ。<br>カスタムファームウェアやカーネルを持ってる人は、それらをRocky 10のuserspaceと組み合わせることができるよ。" userName="NewJazz" createdAt="2025/05/21 23:25:26" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="その通り！ AltArch SIGこそ、communityのサポートによってそういうカスタマイズが生まれる場所なんだ。" userName="nhanlon" createdAt="2025/05/22 14:32:22" color="">}}




{{<matomeQuote body="だって彼らのmodelが、あり得ないくらい一番laziest possible oneなんだもん。" userName="dismalaf" createdAt="2025/05/22 02:58:13" color="">}}




{{<matomeQuote body="うん、だってさ、他の人の成果をちゃっかり自分のものにするなんて、せいぜい不誠実で怠慢な考え方だよ。" userName="rob_c" createdAt="2025/05/22 16:21:41" color="">}}




{{<matomeQuote body="実はね、1年以上前からFedoraとRHとRISC-Vで一緒にやってるんだよ :）" userName="nhanlon" createdAt="2025/05/22 14:30:51" color="#ff5c5c">}}




{{<matomeQuote body="じゃあさ、なんでこの記事、Fedoraには”特別感謝”してるのにRed Hatにはしてないの？<br>あとさ、FedoraのRISC-V移植作業のほとんどがRed Hatの社員によってやられてるって事実を指摘しないのはなんで？" userName="carlwgeorge" createdAt="2025/05/25 20:04:29" color="#45d325">}}




{{<matomeQuote body="それでもさ、過去の失敗とかいろいろあるし。<br>それにトップからのやり方とか指示もね。<br>貢献自体はいつもすごいと思うし応援したいよ。でもさ、プロジェクトのかなり上の立場の人たちがやらかした損害を見て、そういう人たちからは距離を置いてほしいんだ。" userName="rob_c" createdAt="2025/05/22 16:21:13" color="">}}




{{<matomeQuote body="他人に向けたその大きな物差しで、まず自分自身を測ってみたらどうかな。<br>プロジェクトの創設者の一人として、自分自身から距離を置くなんてことはないと思うよ。" userName="nhanlon" createdAt="2025/05/23 13:37:23" color="#785bff">}}




{{<matomeQuote body="Pine64 Star64ボードも簡単にサポートできるはずだよ、だってVisionFive2向けのu-bootビルドはStar64でも動くんだから。" userName="rjsw" createdAt="2025/05/21 23:23:25" color="#ff33a1">}}




{{<matomeQuote body="うん、きっとうまくいくはずだよ、ただ今はアップストリーム（Fedora）のサポートを追い越さないようにしてるだけなんだ。" userName="nhanlon" createdAt="2025/05/22 14:31:27" color="#ff5c5c">}}




{{<matomeQuote body="たとえボードが一つだけでも、RISC-V全体のビルドとかテストの仕組みが必要になるはずだよね。<br>いったんそれがあれば、他のボードを追加するのはきっと楽になるし、アーキテクチャ固有の問題も見つけやすくなって、すぐ直せるようになるだろうね。" userName="nine_k" createdAt="2025/05/21 22:42:24" color="#45d325">}}




{{<matomeQuote body="うん、RISC-Vのビルド環境は確かに必要だったんだ。最初はVisionFive 2 5台で始めたけど、GCCビルドに7日とかかかってマジ大変だったよ。SiFive P550加えたらビルド問題見つけて直すのが速くなった。<br>VF2は”小さい”ビルドにまだ使ってる。<br>2024年末からビルドルートが使えて、AltArchグループがARMみたいに他のボードのカーネルビルドできるようになったんだ。<br>VF2とQEMUはそのままサポートするけど、AltArchが追加ハード担当ね。<br>AltArchがどんなボードサポートするのか楽しみ！" userName="nazunalika" createdAt="2025/05/22 15:47:19" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
