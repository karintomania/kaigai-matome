+++
date = '2025-08-09T00:00:00'
months = '2025/08'
draft = false
title = '伝説の安定性！Debian 13 “Trixie”がついに登場！'
tags = ["Debian", "Linux", "OS", "ディストリビューション", "オープンソース"]
featureimage = 'thumbnails/orange_pink4.jpg'
+++

> 伝説の安定性！Debian 13 “Trixie”がついに登場！

引用元：[https://news.ycombinator.com/item?id=44848782](https://news.ycombinator.com/item?id=44848782)




{{<matomeQuote body="俺は今Debianシステムから書いてるけど、日々の使用に最高のディストロだね。Ubuntuが落ちぶれてからDebian 6に切り替えて後悔してないよ。<br>Debianはイデオロギーと現実主義のバランスがいいし、デフォルトでフリーソフトウェアだけどノンフリーも簡単に入れられるのが好きだ。dpkgやドキュメントもいいし、stable／testingのストリームも使いやすい。<br>そして、俺のミス以外でDebianが壊れたことが一度もないんだ。起動不能とか深刻な問題は全部、サードパーティリポジトリ追加とか設定ミスとか、俺のせいだった。Debian自体には問題なかったよ。" userName="ACS_Solver" createdAt="2025/08/09 19:32:33" color="#ff5c5c">}}




{{<matomeQuote body="Ubuntuが落ちぶれて後悔してないって？どういう風に落ちぶれたの？" userName="zvmaz" createdAt="2025/08/09 20:00:01" color="">}}




{{<matomeQuote body="Snapsかな？独自のパッケージマネージャーは全然良くないよね。" userName="happymellon" createdAt="2025/08/09 20:02:06" color="">}}




{{<matomeQuote body="これがそんなに大問題なのか俺にはよく分からないな。Snapsを使わなくてもいいんだし。" userName="mmcnl" createdAt="2025/08/09 20:04:37" color="">}}




{{<matomeQuote body="俺のミス以外でDebianが壊れたことがないって？Debianは良いけど、みんながそうとは言えないな。特にDebian stableのカーネルへの重いパッチには苦しめられたよ。<br>DRMサブシステムでのバックポートのリグレッションで、デバッグしにくいクラッシュが起きたんだ。Debianはリリース中“同じ”カーネルなのにね。<br>Ubuntuは新しいカーネルを使うし、-hweでパッチの摩擦を避けてる。だから俺はDebianはVM、ベアメタルにはUbuntuを使ってるよ。debian-backportsのカーネルは試してないけど。" userName="madars" createdAt="2025/08/09 20:40:31" color="#ff33a1">}}




{{<matomeQuote body="デフォルト設定はすごく重要で、SnapsはUbuntuでデフォルトなんだ。論点はSnapsが避けられるかじゃなく、Ubuntuが落ちぶれてるかどうかだろ。Snapsはその要因の一つとされてるし、それはUbuntuのNIH症候群だよ。<br>俺が知る限り、Ubuntuの唯一成功した開発はUbuntu自体だね。他のプロジェクトは長年失敗ばかりだし、Snapも人気争いには勝ててない。" userName="npteljes" createdAt="2025/08/09 20:14:51" color="#38d3d3">}}




{{<matomeQuote body="Debian stableのカーネルへの重いパッチだって？出典が必要だね。Debian stableはアップストリームのLTSカーネルを使ってるし、その上に重いパッチをしてるなんて聞いたことないけど。<br>アップストリームの-stableツリーはパッチの受け入れに緩いし、リリース前に本格的なテストもされないんだ。毎週新しいリリースが出てるのを見ればわかるよ。だから、君がやられたのはおそらくそれだね。" userName="kasabali" createdAt="2025/08/09 21:20:24" color="#45d325">}}




{{<matomeQuote body="最近、LTSでも色々な分野で大きな破壊的変更があったよ。今年ある時、virtioも一般的なnetlinkインターフェースもひどく壊れてたね。Archのカーネルコントリビューターたちには感謝だよ。彼らが原因を追跡し、アップストリームを追及してくれたから。<br>DebianとUbuntuのバグトラッカーは沈黙で、AWSやGCPも問題をコピーしてユーザーに送りつけ、返答しなかったからイライラが続いたよ。安定性はテストから来るんだ。Linux全体で十分なテストが行われてないんだね。" userName="raggi" createdAt="2025/08/09 21:43:28" color="#38d3d3">}}




{{<matomeQuote body="俺の理解では、パッケージ形式としてのSnapはプロプライエタリじゃない。Flatpakと同じくらいオープンソースだよ。プロプライエタリなのはCanonicalの公式Snap Storeだ。<br>彼らは自分たちのSnapのバージョンをそのストアだけを使うようにパッチしてるんだ。FlatpakがFlathubだけに縛られるのと同じだよ。もちろんFOSSの精神に反するけど、“Snapsはプロプライエタリ”と一言で言うよりも、もう少しニュアンスがあるね。" userName="Santosh83" createdAt="2025/08/09 20:16:24" color="#ff33a1">}}




{{<matomeQuote body="Debianは新しいサーバーソフトウェアをインストール後すぐに起動するから、設定前に動くのがちょっと怖いな。デフォルトは健全だけど、それでも気になるんだ。Red Hatみたいに、自分でオンにするまでオフにしてくれる方が好きだね。" userName="rbanffy" createdAt="2025/08/09 22:15:32" color="#ff33a1">}}




{{<matomeQuote body="SnapsとFlatpakはそれ自体は変わらない。Canonicalの失敗は、Snapを自社ストアでしかホストできないようにしたことだよ。みんなが言う”プロプライエタリ”ってのはこの点だね。実際FlatpakもFlathubが唯一の現実的な公開先だけど、Flatpakはカスタムストアを許可してるのに、Snapはなぜかそうじゃないんだ。" userName="Santosh83" createdAt="2025/08/09 20:21:31" color="#38d3d3">}}




{{<matomeQuote body="UbuntuのNIH症候群って話だけど、Red Hatも同じことしてるよ。彼らもsystemdとかpodman、buildah、dnfとか、何度も車輪の再発明をしてるんだ。ただRed Hatの方が、自社のNIH成果物を標準としてみんなに受け入れさせるのに成功してるってだけ。Canonicalはそれが苦手で（Unityがひどかった時期とかね）、結局途中で諦めちゃうから、今後が厳しくなるんだ。" userName="sofixa" createdAt="2025/08/09 22:10:47" color="#ff33a1">}}




{{<matomeQuote body="健全なファイアウォールルールさえあれば大丈夫だよ。例えば、openssh-serverをインストールして自動起動しても、nftablesでポート22のインバウンドを許可してないから、外部からはアクセスできないんだ。デフォルトの挙動を知って、それに対応する運用をすればいいだけだよ。" userName="JackeJR" createdAt="2025/08/10 04:08:19" color="#ff33a1">}}




{{<matomeQuote body="忘れないでね、LTSとELTSはDebianが直接メンテナンスしてるわけじゃないよ。詳細はWikiに載ってるから見てみて。" userName="bbarnett" createdAt="2025/08/09 23:27:30" color="">}}




{{<matomeQuote body="隣のコメントに賛成だよ。UbuntuでSnapを使わない方法ってどうやるの？ベースのUbuntuにはもうSnapがいくつか入ってるし、aptで適当なものをインストールしてもSnapが来ちゃうんだ。個人的にはUbuntuでSnapを避ける方法が分からないよ。" userName="tasuki" createdAt="2025/08/09 20:16:10" color="#45d325">}}




{{<matomeQuote body="自分でディストロを作るなら、独自のFlatpakストアを作るのは簡単だよ。それが大事なんだ。Linux MintがSnapを使わないのは、Canonicalがみんなに自社ストアを使わせようとしてるからなんだよね。" userName="type0" createdAt="2025/08/09 21:30:32" color="#45d325">}}




{{<matomeQuote body="Canonicalは誰かに何かを強制してるわけじゃないよ。Snapはオープンソースなんだから、もし違うストアを使いたいなら自分で変更すればいいじゃん。Mintは「ゾンビDE」をフォークするくらいなのに、Snapの数行のコード変更が問題なの？" userName="dismalaf" createdAt="2025/08/09 22:21:22" color="">}}




{{<matomeQuote body="Archがあまり語られない美点として、何千人ものユーザーをテスターに変えたことがあるよね。”それはユーザーの責任じゃない”って言う人がいるかもしれないけど、俺はそうは思わないな。みんなで協力し合うんだよ。自宅のデスクトップでバグが1、2個出るくらいなら、それが職場のサーバーで使われるディストロに影響する前に修正される方が、よっぽどいいからね。" userName="WD-42" createdAt="2025/08/09 23:58:55" color="#ff5c5c">}}




{{<matomeQuote body="スナップ使わなくていいって？ウブンツはパッケージをゆっくり移行するって言ってるけど、aptでパッケージをインストールするとスナップの配管が自動で入って、パッケージもスナップとしてダウンロードされるんだ。自分でインストールする必要はないよ。でも悪意はなくて、「スナップチームに良い仕事をして品質を高く保つように良いプレッシャーをかけるため」らしいよ（ paraphrased）。" userName="bayindirh" createdAt="2025/08/09 20:08:06" color="#45d325">}}




{{<matomeQuote body="スナップ、そしてmotdにある広告ね。" userName="yjftsjthsd-h" createdAt="2025/08/09 20:04:47" color="">}}




{{<matomeQuote body="DebianのLTSじゃなくて、LTSカーネルのこと言ってるんだと思うよ。" userName="aragilar" createdAt="2025/08/10 05:51:16" color="">}}




{{<matomeQuote body="デフォルトってマジ大事だよね。スナップはオープンソースじゃないし（バックエンドは違う）、ウブンツはaptでもスナップをインストールしちゃうから、他のストアを使うように“ただ変更する”なんてできないよ。ミントは今回の話とは関係ないし。" userName="npteljes" createdAt="2025/08/10 09:44:27" color="#38d3d3">}}




{{<matomeQuote body="インテルの統合GPUでグラフィカルシステムなし、KMS VT（テキストコンソール）だけ使ってたんだけど、CPU負荷でカーネルパニック起こしまくってマジ最悪だったよ。これは昔の話だし、デビアンも今じゃRHELみたいな「フランケンカーネル」は減ってるみたいだけどね。" userName="madars" createdAt="2025/08/09 20:56:10" color="">}}




{{<matomeQuote body="ウブンツのデブが言ってたんだけど、ファイアフォックスのスナップだけでも、流行りのディストロ全体のユーザー数より多いんだって。ほとんどのユーザーは、2年ごとにアップデートするLTS版で黙々と作業してるだけだよ。そういう背景も踏まえて、ウブンツが批判されることについて考えるべきだと思うんだ。" userName="doublepg23" createdAt="2025/08/09 20:38:37" color="#45d325">}}




{{<matomeQuote body="自分でスナップリポジトリをホストするためのサーバーコンポーネントって、もうリリースされたんだっけ？見つけられないんだけど。最新状況を知るためにも、情報あったら教えてくれると助かるな。" userName="bayindirh" createdAt="2025/08/09 20:21:54" color="">}}




{{<matomeQuote body="スナップパッケージ作ってみたけど、ウブンツのベースパッケージに超密着してて、全然ポータブルじゃないんだよね。例えばフラットパックだと、システムに依存しないライブラリが含まれるベースランタイムをパッケージに選べるけど、スナップだとウブンツのバージョンとウブンツのパッケージを追加依存として指定する感じだよ。" userName="BearOso" createdAt="2025/08/10 00:56:09" color="#ff5c5c">}}




{{<matomeQuote body="カノニカルの変なプロプライエタリなものが、素のDebianに無理やり入れられて、一般的なものと置き換えられようとしてるんだよな。スナップ、LXD（LXCじゃない！）、Mir、Upstart、UFWとかさ。もうキリがないし、いつも失敗してるけどね。" userName="Eduard" createdAt="2025/08/09 20:10:37" color="#38d3d3">}}




{{<matomeQuote body="カノニカルが作ったNIH（Not Invented Here）なinitデーモン、アップスタートは、根本的な設計と実装がダメダメで失敗したんだよな。レッドハットの方が良いソフト作るから、そっちのNIHの方がもっと採用されてるんだ。" userName="jeltz" createdAt="2025/08/09 22:59:57" color="#ff5733">}}




{{<matomeQuote body="Ubuntu Proの採用を増やすためにサポート期間を短くしたり、いくつかのパッケージをちょっとだけ変えて動作を変えたりしてるんだ。sudo-rsとかuu-coreutils（Rustベースのやつ）とかに切り替えたりね。もうDebianの派生じゃないよ、なんか別のものだ。前からも俺の好みじゃなかったけど、今はもっと無理。" userName="bayindirh" createdAt="2025/08/09 20:13:02" color="">}}




{{<matomeQuote body="俺も似たような経験があるよ。そんなに詳しくない弟も俺と同じArch+XFCEのラップトップを使ってるんだけど、彼はyay -Syyuを知ってて、いつも問題なかったんだ。最近のアップグレードでVLCパッケージの分割問題があったから、アップグレードを待っててって言って、俺がやってあげようとしたんだ。俺自身はオプションの依存関係を自分でフィルタリングしてインストールする必要があったけど、1週間後には（たぶんユーザーからのフィードバックで）それが解決されてて、通常のyay -Syyuで適切なオプションの依存関係がインストールされたよ。" userName="porridgeraisin" createdAt="2025/08/10 02:36:52" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Debianとすべての派生を可能にしてくれたDebianボランティアの皆さんに感謝します。皆さんの仕事によって、どれだけ多くの人々やビジネスが恩恵を受けてきたか、本当に素晴らしいことです。ありがとうございます！個人的には、Trixieは俺のサイドプロジェクトntfy [1] がパッケージ化 [2] されて、Trixieに含まれることになったから、すごくワクワクしてるんだ。パッケージメンテナがライセンスの明確化を求めてきたのがサイクルのかなり遅い段階だったから、含まれたことを知ったのは本当に最近だった。その結果、Debian版のntfyにはWebアプリが含まれてないんだ（これ、マジで残念）、それにいくつかのものが”パッチで除外”されてる（これはいいんだけど）。俺はメンテナに連絡して、最近ビルドタグ [3] を追加したから、Stripe、Firebase、WebPushを削除しやすくなったし、次のDebian版では（そんなに多くの）変なパッチを当てる必要がなくなるはずだよ。”上流メンテナ”として言わせてもらうと、Webアプリがなぜ含まれなかったのか全く明らかじゃないんだ。意図的に削除されたのは明らか [4] だけど、次のDebianリリースでそれを含めてもらうにはどうすればいいか、正直わからない。「apt install ntfy」でWebアプリが動かないのは、ほとんどの人にとってかなりがっかりするだろうね。どんな助けやガイダンスでも大歓迎だよ！<br>[1] https://github.com/binwiederhier/ntfy<br>[2] https://tracker.debian.org/pkg/ntfy<br>[3] https://github.com/binwiederhier/ntfy/pull/1420<br>[4] https://salsa.debian.org/ahmadkhalifa/ntfy/-/blob/debian/lat..." userName="binwiederhier" createdAt="2025/08/09 19:51:18" color="#ff5c5c">}}




{{<matomeQuote body="メンテナがここで簡単に説明してるよ: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1098866#10<br>＞ WebアプリはNode.jsアプリで、現在Debianにはないパッケージが必要なんだ。Debianではパッケージ内に依存関係をベンダーに任せるのが嫌われるから、メンテナはそれらのパッケージを自分で追加して保守する必要があったんだよ。推測だけど、彼らはその労力を引き受けたくなかったんじゃないかな。" userName="tremon" createdAt="2025/08/09 20:30:50" color="#ff5733">}}




{{<matomeQuote body="＞ でも、ntfyのいくつかの機能は、Go言語とNode.jsのパッケージが不足してるからDebianのパッケージでは使えないんだって。えっ。NodeとGo言語って、もうDebianの公式リポジトリにあるべきじゃないの？" userName="winter_blue" createdAt="2025/08/09 21:38:43" color="">}}




{{<matomeQuote body="Node.js自体はDebianにあるよ。でも、Nodeプロジェクトを手動でインストールするときって、npm installって入力して、それが依存する500もの異なるパッケージをダウンロードするのを待つでしょ。Debianは他のより伝統的な言語と同じ哲学で、これらの依存関係すべてが個別のDebianパッケージとしてパッケージ化されることを期待してるんだ。" userName="jonp888" createdAt="2025/08/10 11:54:22" color="#45d325">}}




{{<matomeQuote body="ちょっと口を挟むけど、これって、再パッケージを禁止するライセンスやポリシーを採用することを真剣に考えさせられるね。誰かが俺のプロジェクトを再パッケージして、しかもひどい内容なのに俺のプロジェクト名を使うなんて？ありえないね。その再パッケージ版に何かが欠けてるとか苦情が俺に来るなんて、そんな負担は絶対負いたくない。" userName="Defletter" createdAt="2025/08/11 14:25:03" color="">}}




{{<matomeQuote body="つまり、それがOSSの仕組みってことだよ。誰だって君のものをフォークして、好きなことをして、それで終わりなんだ。MITとかのライセンスにしたって救われないよ。この再パッケージビジネスは、基本的にAWSのビジネスモデルそのものなんだから。" userName="const_cast" createdAt="2025/08/11 15:43:54" color="">}}




{{<matomeQuote body="フォークはいいし、何でもやっていいけど、実際にコードを変更するなら、自分の名前を使うべきだよね。これは商標の目的だけど、オープンソースプロジェクトにとって公式の商標登録ってのはちょっと手が出しにくい（例えば費用とか）んだよ。ちょっとしたプロジェクトでも、誰かに再パッケージされて、その巨大な部分が削られたら困るからって、いちいち商標登録できると思う？" userName="Defletter" createdAt="2025/08/11 16:26:53" color="">}}




{{<matomeQuote body="結局のところ、小規模なオープンソースプロジェクトの商標は実質的に無価値なんだ（https://news.ycombinator.com/item?id=44883634）。だから、誰かに自分のプロジェクトの名前を勝手に使われて、劣悪なフォークを再パッケージされることに対して、実質的な解決策はないってことだね。" userName="Defletter" createdAt="2025/08/13 23:36:37" color="#45d325">}}




{{<matomeQuote body="Web部分についてだけど、Debianソースはビルドに十分である必要があるんだ。npmプロジェクトの場合、通常はDebian固有のpackage.jsonがあって、npm依存関係はDebianパッケージに置き換えるか、ベンダー化するか、削除する必要があるんだよね。バージョンの調整も大変だし、メンテナーはそこまでの労力を正当化できなかったんだろうな。Debian流ならntfy-webパッケージを別に分けるだろうね。" userName="baobun" createdAt="2025/08/09 20:41:06" color="#45d325">}}




{{<matomeQuote body="「Debian版ntfyにはWebアプリがないし、パッチで色々変更されてる」って件だけど、Debian版を使ってる人からのサポートは拒否して、バグ報告も外部パッチ済みソフトはサポートしないって言って閉じるべきだよ。そういう判断は全然おかしくないし、Debianのポリシーがメンテナーやユーザーに押し付ける非常識なことに関わる必要はないんだ。" userName="StopDisinfo910" createdAt="2025/08/10 16:02:05" color="#ff5c5c">}}




{{<matomeQuote body="メンテナーがパッチ版をサポートする必要はないってのは同意するけど、ユーザーとしては君が「非常識」って呼ぶDebianのポリシーが好きだな。俺は依存関係に慎重なDebianを選ぶよ。" userName="jraph" createdAt="2025/08/10 19:08:04" color="">}}




{{<matomeQuote body="Debianは依存関係に慎重じゃないよ。彼らは出荷するものをたくさん壊すし、機能削除みたいなあからさまなことや、新しいバグを導入することもあるんだ。俺の製品を使おうとするユーザーは、期待以下の体験をしてる。個人的にはDebianを使わないけど、人々は自由だ。Debianメンテナーと彼らのソフトウェアの考え方と関わるのは時間の無駄だよ。すべてのソフトウェア開発者に同じことを勧めるし、声を大にして言うよ。Debianがパッチに関して最悪の違反者だけど、このコメントは侵襲的なパッチを適用する他のディストリビューションにも当てはまるんだ。" userName="StopDisinfo910" createdAt="2025/08/11 12:29:46" color="#ff5733">}}




{{<matomeQuote body="Debianは依存関係に「もっと」慎重だよ。リポジトリにない隠れた依存関係は入らないからね。何をするかわからない500個のNodeパッケージをダウンロード・実行するアプリなんて入れたくないよ。それらはDebianで審査されてるべきなんだ。そうじゃなきゃ興味ないね。リポジトリ内のソフトウェアの依存関係でディストロのリポジトリを迂回するのは予期せぬ動作につながるんだ。" userName="const_cast" createdAt="2025/08/11 15:47:01" color="#ff5c5c">}}




{{<matomeQuote body="「Debianはリポジトリにない隠れた依存関係がない点で慎重だ」って言うけど、俺はそういう「慎重」さには同意しないな。Debianはパッケージを審査しないし、メンテナーは「アップストリーム」より能力が低いから、OpenSSLとかLibavみたいにしょっちゅうものを壊すんだ。ユーザーが求めてるソフトウェアじゃなくて、メンテナーが好き勝手フォークをサポートするとか、そういう非常識な話はやめてくれ。君が興味ないって言うのは君の選択だけど、それが開発者が気にするべきことだとか、良いアイデアだっていう意味じゃないんだよ。" userName="StopDisinfo910" createdAt="2025/08/12 10:13:23" color="#ff33a1">}}




{{<matomeQuote body="有能さと悪意は別物だよ。Debianメンテナーが総じて無能ってのは同意できるけど、彼らは実際にDebianの思想に合うように依存関係を審査してるんだ。アップストリームはマルウェアを開発したり、テレメトリや広告を追加したりするかもしれないだろ？だから、何をするかわからない500個のNodeパッケージをインストールさせるのは疑わしいし、トラブルを招くよ。Debianはサプライチェーンを厳しく管理してる。完璧じゃないけど、Debianの目標内なんだ。だから、ほぼ完全にフリーなソースを持つフリーなディストロが欲しいなら、Debianは唯一の選択肢だよ。" userName="const_cast" createdAt="2025/08/13 18:20:26" color="#45d325">}}




{{<matomeQuote body="コンテナとしてリリースすれば、依存関係の管理が楽になるかもね。もうコンテナ版はあるのかな？" userName="esseph" createdAt="2025/08/09 21:30:10" color="#ff5c5c">}}




{{<matomeQuote body="ntfyのDockerイメージはamd64、armv6、armv7、arm64で利用できるよ。使うのはかなり簡単そう。<br>URL: https://docs.ntfy.sh/install/#docker" userName="yjftsjthsd-h" createdAt="2025/08/10 00:05:50" color="#45d325">}}




{{<matomeQuote body="ntfyはすごく便利なツールだね。作ってくれて本当にありがとう！あと、自分でホストするのが面倒な人のために、ntfy.shサービスを維持してくれていることにも感謝してるよ。" userName="scbrg" createdAt="2025/08/10 07:29:21" color="#ff5733">}}




{{<matomeQuote body="おめでとう！Debianは僕の30年間のフリーなコンピューティングライフの安定した基盤だったよ。Condorcetを教えてくれたり、安定したカオスを組織したり、合意に基づいて着実に前進したり、練り上げられた原則に基づいて全てを構築したりと、彼らのアプローチ全てが、技術的にも社会的にも僕に何らかの影響を与えてきたんだ。リリースと文化を通じて世界に計り知れない影響を与えてきたこのプロジェクトを愛してるよ。愛を込めて、g’o xxより。" userName="gorgoiler" createdAt="2025/08/09 18:49:38" color="#38d3d3">}}




{{<matomeQuote body="i386はもはや通常のアーキテクチャとしてはサポートされないんだね。公式カーネルもDebianインストーラーもi386システム用にはないって。i386アーキテクチャは今や64bit (amd64) CPUで使うことだけを想定されてるんだね。i386システムを使ってるユーザーはtrixieにアップグレードしちゃダメで、可能ならamd64として再インストールするか、ハードウェアを引退させることをDebianは推奨してるよ。<br>2025年8月までi386がサポートされたのはすごいね。僕のPentium 3で動いてるDebian 10 Busterは去年の2024年6月にEOLになったばかりだけど、そのハードウェアでまだ役に立ってるし、サポートが長く続いたことに感謝してるよ！古い32bitハードウェアでモダンOSを探してる人には、OpenBSDがまだi386をサポートしてるよ。" userName="accrual" createdAt="2025/08/09 19:25:31" color="#45d325">}}




{{<matomeQuote body="i386（あるいは64bitのタイム値に対応した新しいi386風のポート）が、Debian 14 (forky) か Debian 15 (duke) で非公式のDebian Portsインフラストラクチャに移行できるといいな。Debian Portsにはm68kポートもあるし、i386のサポートもそんなに大きな問題じゃないはずだよ。" userName="zozbot234" createdAt="2025/08/09 19:29:06" color="#38d3d3">}}




{{<matomeQuote body="何のために？もしすごく古いハードウェアを動かしてるなら、単なるノスタルジー以外に、その環境を必要とする特殊なアプリケーションがあるんだろうね。技術的な理由か、コンプライアンスか、あるいは未知への恐れから変えられないとか。インターネットからファイアウォールで隔離して、最後に動いたリリースを動かし続ければいいんじゃないかな。不必要なE-wasteは嫌だけど、i386はRaspberry PiやN100と比べたら、ほぼ確実に桁違いに非力だよ。" userName="3eb7988a1663" createdAt="2025/08/09 20:09:35" color="#ff5733">}}




{{<matomeQuote body="あれ、古い安定版には追加で1年くらいのサポートがあるんじゃない？だから2025年以降もサポートされるんじゃないかな。" userName="NewJazz" createdAt="2025/08/09 19:40:23" color="">}}




{{<matomeQuote body="“386”を32bitと混同してない？686が通常の32bitアーキテクチャだよね。386って1980年代のものだろ？" userName="esaym" createdAt="2025/08/09 20:41:35" color="#ff5733">}}




{{<matomeQuote body="Busterは2028年6月までサポートされてるよ。" userName="abhinavk" createdAt="2025/08/09 20:04:04" color="#ff33a1">}}




{{<matomeQuote body="Not by Debian it isn’t.https://www.debian.org/releases/Buster has not been supported by Debian for many years.Buster LTS was EOL last summer.  Note that LTS is supported by volunteers via a non-profit, not Debian (though they do a good job).ELTS is paid support, again not by Debian.Do look at Debian’s wiki for more info on support timeframes, and what LTS and ELTS means." userName="bbarnett" createdAt="2025/08/09 23:35:32" color="#785bff">}}




{{<matomeQuote body="My Linux machine is very modern, but I still need i386 architecture support installed, because Steam requires 32-bit support. And Steam requires 32-bit support so people can play 15-year-old games.(Admittedly, the 32-bit support Ubuntu ships is less than a full OS and you can’t install Ubuntu on a 32-bit machine these days)" userName="michaelt" createdAt="2025/08/09 20:42:59" color="">}}




{{<matomeQuote body="In case anyone wants to do that, here is the doc for new ports:https://wiki.debian.org/PortsDocs/New" userName="pabs3" createdAt="2025/08/10 06:29:23" color="#45d325">}}




{{<matomeQuote body="When distros mention i386 support they often actually refer to i586 or i686, yes.True i386 support would mean compatible with the original Intel 386 processor from 1985. The 486 added a few additional instructions in 1989 but things really changed with the Pentium in 1993 - that gave us i586 which is the bare minimum for most modern software today. Much software can still run on regular Pentiums today if compiled for it, but SSE2 optimizations requires at least a Pentium 4 or Core CPUs instead.I play with retro PCs often and found OpenBSD’s i386 target stopped supporting real 386 CPUs after the 4.1 release, and dropped support for i486 somewhat recently in 6.8. It now requires at least a Pentium class CPU, i586, though the arch is still referred to as i386 likely because it’s a common proxy for ”32-bit”." userName="accrual" createdAt="2025/08/09 21:01:54" color="#ff33a1">}}




{{<matomeQuote body="It still exists but without any official iso or installer.If that’s all there’s to it, you can still use debootstrap, compile a kernel, and point the root parameter to your shiny new install.If the official i386 arch was built with instructions that your hardware doesn’t support, tough cookies." userName="munchlax" createdAt="2025/08/09 20:10:32" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Much of that information has to do with creating a new hardware port from scratch.  The i386 support just needs to be ”demoted” to the Debian ports infrastructure once it’s officially scheduled to get dropped from the main Debian repository (which could well happen starting either in Debian forky or duke), and this can probably be done with some special handling.(Answering the ”to what end?” question, a lot of 32bit-only hardware is still available and dirt cheap in the second-hand market (e.g. early ”netbooks”), much of it quite well-built and enjoyable to use.  While such hardware can no longer realistically browse the ”modern” web, it can still find a lot of use for more lightweight tasks, including acting as a ”thin client” for more powerful machines.)" userName="zozbot234" createdAt="2025/08/10 10:18:44" color="#ff5c5c">}}




{{<matomeQuote body="Freexian is for-profit, and all the LTS/ELTS contributors are Debian maintainers, and LTS is part of Debian, while ELTS is publicly available too, but in an external archive.https://wiki.debian.org/LTS<br>https://wiki.debian.org/LTS/Team<br>https://wiki.debian.org/LTS/Extended<br>https://wiki.debian.org/LTS/Funding" userName="pabs3" createdAt="2025/08/10 06:32:12" color="#ff5733">}}




{{<matomeQuote body="If the official i386 arch was built with instructions that your hardware doesn’t support, tough cookiesWhile theoretically possible, that would only happen on processors older than 30 years. Debian’s i386 architecture still uses -march=i686 as its baseline compiler target, which is the venerable Pentium Pro: https://en.wikipedia.org/wiki/P6_(microarchitecture)" userName="tremon" createdAt="2025/08/09 21:19:06" color="#38d3d3">}}




{{<matomeQuote body="AFAICTこれはDebianのサポートの話みたいだけど、LinuxカーネルはオリジナルのPentium以降なら32bit CPUもサポートしてるよ（一部クローン除く）。" userName="badsectoracula" createdAt="2025/08/09 20:19:18" color="">}}




{{<matomeQuote body="Passmarkによると、Pentium 4 1.3GHzはRaspberry Pi 5より55倍遅いらしい。初代PiでさえP4 1.3GHzより16倍速いんだって。<br>E-wasteのリサイクルはともかく、電力消費によるカーボンフットプリントの差の方がはるかに心配だね。" userName="KennyBlanken" createdAt="2025/08/09 22:51:21" color="#ff5c5c">}}




{{<matomeQuote body="既存のi386ポートは古いソフトウェア（特にゲーム）をサポートするために残るよ（CPUのベースラインは上がるかもだけど）。<br>新しいABIを作らないとi386は2038年問題に対応できないし、32bitバグも増えるからメンテナンスも大変になるだろうね。" userName="pabs3" createdAt="2025/08/11 03:17:01" color="#785bff">}}




{{<matomeQuote body="amd64 CPUを使ってるなら、Debianの「i386」パッケージは動き続けるよ。<br>リリースノートにも「i386アーキテクチャは64bit（amd64）CPUで使うことだけが意図されてる」って書いてあるしね。" userName="progval" createdAt="2025/08/09 20:54:13" color="#ff5733">}}




{{<matomeQuote body="俺は2007年頃のAMD Geodeハードウェアを持ってるんだけど、i686の部分的なサポートしかないんだよね。<br>本当の3/4/586カーネルが必要になるんだ。" userName="avhon1" createdAt="2025/08/09 22:06:09" color="">}}




{{<matomeQuote body="FreexianはDebianとは別の組織で、LTSはDebianのインフラを無料で使ってるだけだよ。<br>LTSはボランティアと企業の協力で成り立っていて、人気のあるパッケージが優先的にサポートされるんだ。マイナーなパッケージはサポートされにくいから注意が必要だね。<br>ELTSはさらにサポート範囲が狭いから、デスクトップとかで使うのは賢明じゃないと思う。<br>Debianのセキュリティサポートもmain、non-free、contribで違うから、LTSやELTSもそのニュアンスを理解しておくべきだよ。<br>俺はLTSは一般的なユーザーが使うべきじゃないと思ってるし、デスクトップユーザーにはおすすめしないね。<br>https://www.freexian.com/lts/extended/docs/debian-10-support<br>https://www.debian.org/security/faq#contrib" userName="bbarnett" createdAt="2025/08/10 07:13:21" color="#38d3d3">}}




{{<matomeQuote body="最近OpenBSDはPentium以上を要求するようになったんだって。" userName="spauldo" createdAt="2025/08/10 09:30:32" color="">}}




{{<matomeQuote body="i386アーキテクチャは削除されてなくて、32bitアプリをサポートするためにアーカイブに残ってるよ。<br>大きな変更点は、アーカイブに32bitカーネル（linux-image-686パッケージ）がなくなったことだね。<br>ほとんどのパッケージはi386版もまだあるよ。<br>$ curl -s http://deb.debian.org/debian/dists/trixie/main/binary-amd64/Packages.gz | zgrep ^Package: | wc -l<br>68737<br>$ curl -s http://deb.debian.org/debian/dists/trixie/main/binary-i386/Packages.gz | zgrep ^Package: | wc -l<br>66958" userName="tremon" createdAt="2025/08/09 20:57:55" color="#ff5733">}}




{{<matomeQuote body="Linuxカーネルも今は少なくともi486が必要なんだ。<br>SMPサポートをスムーズにするためらしいけど、実際の80386システムでSMPなんて一般的じゃないからちょっと変な決定だよね。" userName="zozbot234" createdAt="2025/08/10 07:47:55" color="">}}




{{<matomeQuote body="Linuxはもともと386チップで開発されたんだけど、Intelが486、Pentium、Pentium Proで色々機能を追加したから、いつの間にかP6以前のチップをサポートする価値がないって判断されたみたいだね。<br>386、486、Pentiumのユーザーは、Linuxがサポートし続けた他のプラットフォームよりも多かったはずだから、ちょっと変な選択だったかも。<br>NetBSDでさえ486DX以上を要求するし、他のOSも同様の動きをしてるよ。" userName="spauldo" createdAt="2025/08/10 09:29:40" color="#ff5733">}}




{{<matomeQuote body="Debianは32ビット要件が進化した後も、i386というアーキテクチャ名を使い続けてるみたいだね。" userName="NewJazz" createdAt="2025/08/09 20:42:46" color="">}}




{{<matomeQuote body="i386は32ビットx86で一番よく使われる用語だよ。詳しくはここ見てね: https://en.m.wikipedia.org/wiki/IA-32" userName="bowsamic" createdAt="2025/08/09 20:54:11" color="">}}




{{<matomeQuote body="そう、90年代はずっと386や486が人気だったんだ。新しいプロセッサはいつも高かったし、みんなはCPUベンチマークより、RAMやディスクスペース、グラフィックカード、サウンドカード（当時は重要だったね）なんかを優先してたからね。" userName="astrobe_" createdAt="2025/08/10 08:55:23" color="#45d325">}}




{{<matomeQuote body="今日の最新Linuxカーネルでもまだ486SXをサポートしてるんだって！マジかよ: https://github.com/torvalds/linux/blob/v6.17-rc1/arch/x86/Kc..." userName="matja" createdAt="2025/08/14 09:03:04" color="#785bff">}}




{{<matomeQuote body="Debian 3.0が80386プロセッサで動いた最後のバージョンだけど、i386アーキテクチャのCPU要件が486、それからPentium、Pentium IIへと上がっても、その名前は残ったんだ。これは惰性と、既存のミラーインフラを壊さないためだよ。" userName="chungy" createdAt="2025/08/10 05:16:15" color="#ff5733">}}




{{<matomeQuote body="SysVinitはまだ使えるよ。俺はサーバーもデスクトップもビルドしてテスト済み。俺のビルド環境からだと: chroot $MOUNTPOINT/ /bin/bash -c ”http_proxy=$aptproxy apt-get -y --purge --allow remove-essential install sysvinit-core sysvinit-utils systemd-sysv- systemd-”<br>同時に削除とインストールしないと回避できない変な依存関係があるんだ。Debianのバグで指摘されたのが、systemd-sysv- systemd-に”-”を付ける修正と、allow remove essentialを使う方法。この修正の後、debootstrapでのSysVinitビルドはBookwormとほぼ同じだったよ。デスクトップでもね。BookwormからBusterまでの間は、これも必要だよ: $ cat /etc/apt/preferences.d/systemd<br># this is the only systemd package that is required, so we up its priority first...<br>Package: libsystemd0<br>Pin: release trixie<br>Pin-Priority: 700<br># exclude the rest<br>Package: systemd<br>Pin: release *<br>Pin-Priority: -1<br>Package: *systemd*<br>Pin: release *<br>Pin-Priority: -1<br>Package: systemd:i386<br>Pin: release *<br>Pin-Priority: -1<br>Package: systemd:amd64<br>Pin: release *<br>Pin-Priority: -1" userName="bbarnett" createdAt="2025/08/09 19:20:41" color="#ff33a1">}}




{{<matomeQuote body="Hacker Newsの適当なリンクじゃなくて、WWW上のもっと良い情報があるなら、バージョン1.42でクレジットしてあげるよ。参考資料: https://jdebp.uk/Softwares/nosh/guide/services/systemd-login..." userName="JdeBP" createdAt="2025/08/11 07:59:33" color="">}}




{{<matomeQuote body="待って、Debian 13でSysVinitが本当に実用的に動くってこと？Systemdを削除して、SysVinitでちゃんと動くサーバーOSができるってことなの？？" userName="egorfine" createdAt="2025/08/09 20:41:15" color="#45d325">}}




{{<matomeQuote body="うん、MX Linuxがそうする予定だよ（別ISOとしてね）。今までは1つのISOでSystemdとSysVinitを起動時に選べたけどね。詳しくはこちら: https://mxlinux.org/blog/changes-coming-with-mx-25/" userName="UncleSlacky" createdAt="2025/08/10 12:38:46" color="#ff33a1">}}




{{<matomeQuote body="うん。俺はSystemdなしでフルデスクトップも動かしてるよ。何種類かの構成でね。Gnomeのデスクトップ環境は使ってないから（GTKやGnomeのソフトウェアは使うけど）、それについてはコメントできないな。" userName="bbarnett" createdAt="2025/08/09 21:25:28" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
