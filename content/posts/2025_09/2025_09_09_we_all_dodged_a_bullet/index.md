+++
date = '2025-09-09T00:00:00'
months = '2025/09'
draft = false
title = 'NPMのサプライチェーン攻撃、俺たち全員難を逃れたってマジ！？'
tags = ["NPM", "サプライチェーン攻撃", "セキュリティ", "JavaScript", "プログラミング"]
featureimage = 'thumbnails/cyan2.jpg'
+++

> NPMのサプライチェーン攻撃、俺たち全員難を逃れたってマジ！？

引用元：[https://news.ycombinator.com/item?id=45183029](https://news.ycombinator.com/item?id=45183029)




{{<matomeQuote body="関連する話だけど、NPMのdebugとchalkパッケージも侵害されたんだってさ。<br>詳しい情報はここ見てね：https://news.ycombinator.com/item?id=45169657" userName="WhyNotHugo" createdAt="2025/09/09 15:11:26" color="">}}




{{<matomeQuote body="NPM経由のnxサプライチェーン攻撃は多くの会社を直撃した。VS Codeのnxプラグインを入れてGitHubにログインしてたり、.envファイルにクレデンシャルがあれば、情報が抜かれたんだ。<br>依存関係を固定しててもセキュリティ更新をしっかりしてても防げなかったって。<br>エコシステムに根本的な変化が必要だね。詳細は：https://github.com/nrwl/nx/security/advisories/GHSA-cxm3-wv7..." userName="anon7000" createdAt="2025/09/09 16:24:24" color="#ff5c5c">}}




{{<matomeQuote body="「エコシステムに根本的な変化が必要」って言うけど、俺はTypeScriptコンパイラ以外NPMは使ってないんだ。Goへの書き換えが進めばそれも外すつもりだよ。<br>Goだと最小バージョン指定があって、ダウンロードしたものを実行しないよう徹底してる。<br>NPMはGitHubのリポジトリとソースが違うことも多いし、こんなシステムどうやって信用できるんだ？" userName="kardianos" createdAt="2025/09/09 21:13:59" color="#785bff">}}




{{<matomeQuote body="まったくその通りだよ！この手のサプライチェーン攻撃は直すのが難しいって言われるけど、そんなことないんだ。<br>これはNPMが巨大な依存関係ツリーを奨励してるせいで、依存関係のレビューが現実的じゃなくなり、開発者がレビューしないっていうエコシステムと文化の問題なんだよ。" userName="RVuRnvbM2e" createdAt="2025/09/09 22:06:32" color="#ff5733">}}




{{<matomeQuote body="pnpmがもう解決済みだよ。pnpmは手動でホワイトリスト化したもの以外、postinstallスクリプトを実行させないんだ。<br>ほとんどのプロジェクトでスクリプトを有効にしてないけど問題ないし、最悪でも2つだけだった。<br>ただし、コンパイル後のバイナリを実行するなら、どの言語でも防げないけどね。" userName="homebrewer" createdAt="2025/09/09 22:42:41" color="#45d325">}}




{{<matomeQuote body="サプライチェーン攻撃がNPMだけだと思うのは早計だよ。<br>最後にVS Codeを使った時、DjangoとかのPythonタイピングスタブが、非公式PyPIから自動でインストールされてたんだ。オプトアウトなしにね。（だからVS Codeを使うのをやめた）<br>JavaScript以外の言語の obscurity (不明瞭さ) がセキュリティ対策になるのも、長くは続かないさ。" userName="strogonoff" createdAt="2025/09/10 08:43:23" color="#785bff">}}




{{<matomeQuote body="JavaScriptに標準ライブラリがないことが、NPMを広げた原因の一つだと思うよ。そこから全てが手に負えなくなったんだ。" userName="WD-42" createdAt="2025/09/10 05:53:57" color="">}}




{{<matomeQuote body="Pylanceが何かを自動インストールするなんて見たことないな。Microsoftがメンテナンスしてる、Pylanceに同梱のスタブのこと言ってるの？" userName="maleldil" createdAt="2025/09/10 13:01:51" color="">}}




{{<matomeQuote body="「直すのは難しくない、文化全体を変えればいいだけだ」って言うけど、その文化全体を変えるのが難しいんだよ。" userName="alehlopeh" createdAt="2025/09/09 23:13:42" color="">}}




{{<matomeQuote body="(開発者じゃないんだけど) なんでNPMには“Linuxディストリビューション”みたいなものがないんだろう？<br>開発者ごとに必要なライブラリが違うのはわかるけど、基本的な“stdlib-like機能”に何千ものパッケージが必要なら、安全なNPMディストリビューションをスタート地点にできないのかな？<br>それって、ただの肥大化したFrameworksになっちゃうのかな？" userName="raffraffraff" createdAt="2025/09/10 06:16:32" color="#ff5733">}}




{{<matomeQuote body="「先生、これやると痛いんだって！」「じゃあやめれば？」「でもやりたいんだもん！」って感じ。サプライチェーン攻撃の危険性はわかるけど、利便性を捨てられない状況を面白く表現してるね。" userName="aspenmayer" createdAt="2025/09/10 00:31:53" color="">}}




{{<matomeQuote body="覚えてる限りでは、Microsoft公式のPython拡張機能が原因だったと思うよ。型チェックには他の拡張機能も使えたけど、そっちは別の問題があったな。今はNeovimで全部完璧に動いてて、プロジェクトで指定した型スタブだけ使うようにしてるんだ。" userName="strogonoff" createdAt="2025/09/10 15:41:20" color="">}}




{{<matomeQuote body="結局、こういう依存関係が使えると生産性が爆上がりするんだよな。CとかC++以外の言語がこのモデルに移行してるのも偶然じゃないし（PerlやHaskellなんかはnpmより前からだ）。C++みたいに毎回車輪の再発明から始めるのは、それ自体に脆弱性があるし。このマジな問題をどう解決すればいいか、俺にはまだよく分からないけどさ。" userName="Yoric" createdAt="2025/09/10 07:13:25" color="#ff33a1">}}




{{<matomeQuote body="結局必要なのは、has-ansiとかcolor-nameみたいな小さい関数ライブラリを10万個も全部含んだ標準ライブラリだよ。" userName="oezi" createdAt="2025/09/10 04:35:07" color="">}}




{{<matomeQuote body="has-ansiってライブラリ、なんで存在してて人気なんだろう？<br>ほとんどの処理はansi-regexをインポートしてて、ただansi-regex.test(string)を返すだけなのに、ansi-regexの週ダウンロード数の5%もあるって。ansi-regexだって10行もコードないし。<br>npmエコシステムのこと全然知らないんだけど、こういうライブラリをインポートするのって、コードを直接プロジェクトに入れるのと比べて何かメリットあるの？" userName="lynnharry" createdAt="2025/09/10 08:26:29" color="#785bff">}}




{{<matomeQuote body="「歩くと痛い」って言ってる人に「歩くな」って言うのはおかしいよな。なぜ痛いのか、どうすれば直せるのかを考えるべきだろ。<br>他の言語にもnpmと似たパッケージマネージャーがあるけど、問題はずっと少ないんだから、パッケージマネージャーを全部変えなくても解決できるはずだよ。" userName="Jensson" createdAt="2025/09/10 12:54:45" color="#ff33a1">}}




{{<matomeQuote body="もしかしたらPnpmは、今回のサプライチェーン攻撃には役立たなかったんじゃないかな。この問題は単に、新しいコードを検証なしで大量のマシンに迅速かつ自動でデプロイすることにあるんだよ。" userName="jvanderbot" createdAt="2025/09/10 00:05:40" color="">}}




{{<matomeQuote body="俺はいつもパッケージとかDBを全部ローカルにして、開発マシンは機内モードで動かしてるよ。ネットに繋ぐのはgit pushする時だけなんだ。" userName="zenmac" createdAt="2025/09/09 19:40:54" color="">}}




{{<matomeQuote body="Microsoft公式のPython拡張機能はPylanceを使ってるんだ。これはPyrightのクローズドソース版で、追加機能とか組み込みの型スタブがあるやつだよ。たぶん君が見たのはそれだね。" userName="maleldil" createdAt="2025/09/11 12:51:29" color="">}}




{{<matomeQuote body="「C++は毎回車輪の再発明から始める」なんて話は、1995年の話だよ。今のC++プロジェクトは、Qt、LLVM、ROOT、tensorflowみたいな巨大な「エコシステム」ライブラリを普通に使うからね。小さいプロジェクトならboost、folly、abseilとかもあるし。誰かが何十年も前に車輪を再発明したおかげで、2025年にそんなことする必要はもうないんだ。" userName="fooker" createdAt="2025/09/10 16:08:21" color="#ff33a1">}}




{{<matomeQuote body="これ、誰がメンテしてんの？Node自体もOSSだろ。Microsoft .NETならMicrosoft製じゃないものを引っ張ってこなくても色々できるのが利点だよな。こんなに多機能でファーストパーティのサポートが多いエコシステムは他に知らないわ。セキュリティ面ではオープンソースよりソース公開の方がいいよ。" userName="rafaelmn" createdAt="2025/09/10 14:57:11" color="#ff33a1">}}




{{<matomeQuote body="npmは依存関係が肥大化するエコシステムと文化が問題だよね。left-padの騒動から何も学んでない。AIコーディングが普及したらもっと悪くなるぞ。VCやビジネスマンに『ノー』と言える大人が少なすぎるし、AIに『ノー』と言わせるのはほぼ無理だろうな。" userName="zer00eyz" createdAt="2025/09/10 03:15:51" color="#785bff">}}




{{<matomeQuote body="お前は自分を騙してるだけだ。今回の攻撃ではnpmが何かを実行したわけじゃなく、グローバル関数を『ただ』置き換えただけ。Goのパッケージじゃそれはできないけど、いずれにせよランタイムでマルウェアを実行することは可能。IDEを使ってる時に間違ってインポートされるような新しいインポートを公開することもできるぞ。" userName="h1fra" createdAt="2025/09/10 08:31:11" color="#ff5c5c">}}




{{<matomeQuote body="Nodeの型除去機能を使ってTypeScriptをネイティブで実行してるよ。すごく速くて最高だね。それでも、型監査のためだけに、no compileオプション付きでTSCを実行できるようにTypeScriptコンパイラはプロジェクトに含めてるけど。" userName="austin-cheney" createdAt="2025/09/09 22:47:15" color="">}}




{{<matomeQuote body="『どんな言語で書かれたバイナリを実行しても意味がない』って？いや、そんなことないだろ。Denoの全容がそこにあるんじゃないのか？ネットに接続させなければ、バイナリは何も情報漏洩できないぞ。" userName="hdjrudni" createdAt="2025/09/10 04:14:33" color="#ff33a1">}}




{{<matomeQuote body="『ビルドしたバイナリを実行しても助けにはならない』って？Lavamoatなら大丈夫だろ。lavamoat-nodeでプログラムを実行するか、lavamoat webpack pluginでビルドすればね。詳しくはここ見てくれ。https://lavamoat.github.io/guides/getting-started/" userName="ryukafalz" createdAt="2025/09/10 04:08:13" color="#ff33a1">}}




{{<matomeQuote body="それは標準ライブラリの形であるかもしれないな。誰かがその形式、命名規則、アーキテクチャ、思想、あるいは思想の欠如、その他何かに不満を抱いて、全部を少し違うやり方で再発明するまではうまくいくんだ。そうこうしているうちに、たくさんのディストリビューションの中から選ぶことになって、それぞれに問題がある状態になるんだよ…" userName="chha" createdAt="2025/09/10 12:26:43" color="#ff33a1">}}




{{<matomeQuote body="これはCAPEXとOPEXみたいなもんだな。一部の言語やフレームワークだと、アプリを動かし続けるためだけに同じレベルの労力を維持しなきゃならないんだ。" userName="fdsfdsfdsaasd" createdAt="2025/09/10 08:21:43" color="">}}




{{<matomeQuote body="ってことは、JavaScript版Boostってこと？" userName="Sanzig" createdAt="2025/09/10 12:00:16" color="">}}




{{<matomeQuote body="正直、他の多くのコンピューティング分野でも同じだよな。オープンソースプログラムをコンパイルせずにダウンロードすると、公開ソースコードと違うコードを動かすリスクがあるんだ。xzバックドアの時みたいに、配布tarballがリポジトリと違うコードを含んでたケースもあったしね。" userName="Sophira" createdAt="2025/09/10 12:21:44" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="エディタの拡張機能って自動更新されるし、高リスクな開発環境にインストールされるから、かなり狙われやすいターゲットだよね。ブラウザ拡張みたいに、悪意のある大規模な買収がまだないのが意外だよ。VsCodeチームはマルウェア対策に力を入れてるって聞いたけど、Sublimeみたいな他のエディタもちゃんとチェックしてるのかな？" userName="captn3m0" createdAt="2025/09/09 18:41:25" color="#45d325">}}




{{<matomeQuote body="「先延ばしのおかげで助かった！」って、これ俺の主要な生き残りメカニズムだよ。小さい会社のシステム管理者になった時、人にベータテストさせるのを学んだんだ。Microsoft Office 2000を12年間使って、アップグレードの苦労をめっちゃ避けたし、10年間も再教育いらなかったんだぜ。<br>それに、みんなが言ってるように、メールのリンクは絶対クリックしないってのも大事だよな。" userName="mikewarot" createdAt="2025/09/09 16:21:11" color="">}}




{{<matomeQuote body="これ、俺のHondaと、ある程度Kubernetesにも言えることなんだ。Hondaは2006年モデルを長く使って、少なくとも2世代分のカー・トゥ・フォン接続問題の苦労をスキップできた。23年型にiPhoneをつないだら、めちゃくちゃ楽だったよ。<br>Kubernetesも、上司から何年も言われてたけど、今EKSやGKEのマネージドソリューションが成熟してて、K8Sへの移行がだいぶ楽になった。6、7年前にやってたら、どんなに苦労してたか想像もできないね。（それに、俺が自分のペースでやらせてもらえてるのもラッキーだよ。）" userName="mesofile" createdAt="2025/09/09 19:14:50" color="">}}




{{<matomeQuote body="その間、お前はiPhoneを車に接続できないまま何年も過ごしてたってことだよね？その機能、全く使えなかったじゃん！何事にも長所と短所はあるけど、俺は機能を安定するまで待って使わないよりも、頻繁に変更して問題を解決する方が好きだな。<br>もちろん、車を2年ごとに買い換えるとかは無理だけどさ:’)" userName="cirelli94" createdAt="2025/09/10 07:11:04" color="">}}




{{<matomeQuote body="これだよな。前の会社では2016年頃にDockerを採用した「だけ」で、デプロイは昔のuWSGIやApacheアプリとほぼ同じやり方だったんだ。VMをいくつか用意して、Ansibleロールを動かして、コード（今はイメージ）をプルして、再起動して終わり。k8sに移行するのは、k8sサイズの大きな問題がある時だよ。<br>GitHubを見てごらん、760リリース、3866コントリビューターもいるんだぜ。うん、今はまだ必要ないな。" userName="rollcat" createdAt="2025/09/10 13:25:19" color="">}}




{{<matomeQuote body="「NPMエコシステム」ではそうはいかないよ。54秒前にアップデートしてなかったら、もう絶望的に遅れをとってるぜ。" userName="nottorp" createdAt="2025/09/09 17:10:23" color="#785bff">}}




{{<matomeQuote body="まあ、この件に関しては、すぐにアップデートするのが筋だよね？" userName="ainiriand" createdAt="2025/09/09 19:01:30" color="">}}




{{<matomeQuote body="ごめん、「npm ecosystem」コマンドは非推奨になったよ。代わりに「npm environment」を使ってね（あるいは、オートコレクトとエイリアスになった「npm under-your-keyboard」でもいいけど）。" userName="ohdeargodno" createdAt="2025/09/09 18:04:17" color="#45d325">}}




{{<matomeQuote body="“新しいバージョンをデフォルトで2週間待ってから使う”って、サプライチェーン攻撃対策としてすごく良い方法だよね！" userName="blamestross" createdAt="2025/09/09 17:40:21" color="">}}




{{<matomeQuote body="これを簡単に運用する方法ってあるのかな？有名なテック企業は社内でやってるけど、VerdaccioみたいなOSSレジストリにはそういう機能がないんじゃない？" userName="booi" createdAt="2025/09/10 00:07:51" color="">}}




{{<matomeQuote body="Renovateは依存関係を更新するのにすごく良い（しかも無料の）ツールだよ。デフォルトではリリース後すぐ更新するけど、`minimumReleaseAge`パラメーターで更新タイミングを遅らせられるんだ。<br>https://docs.renovatebot.com/configuration-options/#minimumr..." userName="fclairamb" createdAt="2025/09/10 05:36:34" color="#ff5733">}}




{{<matomeQuote body="そうそう、Renovateの`minimumReleaseAge`がまさに求めてる機能だね。Dependabotも最近`cooldown`っていう機能を追加したよ。<br>https://docs.github.com/en/code-security/dependabot/working-..." userName="jamietanna" createdAt="2025/09/10 17:02:46" color="#ff33a1">}}




{{<matomeQuote body="読者の皆へ、僕たちRenovateのメンテナーがこの機能を組み込みの”ベストプラクティス”にする予定だよ！`config:best-practices`プリセットを使ってる人は無料で使えるようになるぞ！<br>https://github.com/renovatebot/renovate/pull/37967" userName="jamietanna" createdAt="2025/09/11 17:54:59" color="#ff33a1">}}




{{<matomeQuote body="Renovateの大きな問題は、TypeScriptのアップグレードとかでオートマージされて全部壊れちゃうことだね。対処は簡単だけど、フロントエンド詳しくない開発者にはかなり使い方を教える必要があったんだ。" userName="Apfel" createdAt="2025/09/10 13:00:57" color="#ff5733">}}




{{<matomeQuote body="面白いね、Renovateのオートマージ機能を有効にしてるの？RenovateはCIのシグナルで破損を確認するんだけど、CIが検知しなかったってこと？それとも何か見落としてるかな？（”merge confidence”も役立つかもね）" userName="jamietanna" createdAt="2025/09/10 17:05:22" color="">}}




{{<matomeQuote body="これを強制できる依存関係ファイアウォールもあるよ（例：https://docs.bytesafe.dev/policies/delay-upstream/）。でもOSSソリューションは知らないんだ。" userName="wallrat" createdAt="2025/09/10 08:23:12" color="#ff5c5c">}}




{{<matomeQuote body="それと、ゼロデイ攻撃には全く効果がない防御策だぞ！" userName="kevinrineer" createdAt="2025/09/09 17:55:56" color="">}}




{{<matomeQuote body="シングルシステムにおいて、”0-dayに対する効果的な防御”なんてのはマーケティングの言葉遊びだよ。0-dayってのは、防御策がないエクスプロイトのことだからね。文字通り、それが意味するところだよ。" userName="easterncalculus" createdAt="2025/09/09 23:56:10" color="#ff5733">}}




{{<matomeQuote body="それってなんか違うんじゃないかな？0-dayエクスプロイトは、未知のセキュリティ欠陥を悪用するサイバー攻撃のことだよ。ベンダーが修正する時間が“ゼロ日”ってことで、悪意のある奴らがすでに利用できる状態ってことだね。もし感染したソフトウェアをインストールしなきゃ、脆弱じゃないはずだよ。ただ、発見されないまま2週間以上潜伏する可能性もあるから、“ちょっと待つ”戦略が通用しないかもって意見もわかるけどね。でもハッカーなら、発覚を恐れてすぐに使うんじゃない？" userName="hdjrudni" createdAt="2025/09/10 04:24:18" color="#ff5733">}}




{{<matomeQuote body="うん、でも0-dayって普通、WindowsとかmacOSみたいに、よく使われてるソフトウェアのことを指すことが多いよね。誰もインストールしてないようなソフトウェアの0-dayを見つけようとはしないじゃん。" userName="saberience" createdAt="2025/09/10 10:19:07" color="">}}




{{<matomeQuote body="残念だけど、緊急パッチが攻撃自体と区別できないなら、0-dayに対する防御策はないんだよね。もっと良い防御策は、侵害されたバージョンを削除か隔離して、ビルドを失敗させて、人にエスカレートして0-day対策をすることだよ。" userName="blamestross" createdAt="2025/09/09 18:40:47" color="#38d3d3">}}




{{<matomeQuote body="緊急パッチのコード内容を読むのは仕事の一部であるべきだよね。もちろん、もっと良いコード信頼ツールがあれば（最近そういう試みがあったみたいだけど、どこまで進んでるか不明だけどさ）、それを任せられるし、現状よりずっとマシになるはずだよ。" userName="minitech" createdAt="2025/09/09 22:22:58" color="">}}




{{<matomeQuote body="リスク管理の帽子をかぶって考えると、NPMエコシステムでの0-dayはそこまで大きな問題じゃないんだよね。使えるようになる前に効かなくなるからさ。" userName="ozim" createdAt="2025/09/09 20:49:53" color="#ff33a1">}}




{{<matomeQuote body="新しくエクスプロイトされたパッケージには効果的だけど、すでにワームに感染してるソフトウェアには、あまり効果がないんじゃないかな。" userName="pixl97" createdAt="2025/09/09 22:45:13" color="">}}




{{<matomeQuote body="俺はOffice XPをデスクトップで、2000をノートPCで使ってたよ。大学に入って、みんなと仕事するためにアップグレードが必要になるまでね。ファイアウォールでブロックすれば大丈夫だったんだ。今はほとんどWordPadを使ってて、たまにOffice Suiteやスプレッドシートが必要な時は、最近の（でもあまりアップデートされてない）Open Officeを使ってるよ。最近のWindowsには、古いソフトウェアの脆弱性対策としてサンドボックスやControlled Folders Access（ランサムウェア対策だと思ってたけど、俺はメディアサーバーがタグをいじるのを防ぐのに使ってるよ）みたいな、セキュリティ機能が組み込まれてるんだよね。" userName="efreak" createdAt="2025/09/11 20:24:48" color="#38d3d3">}}




{{<matomeQuote body="危なかったな。マジで信じられないのが、NPMパッケージにアクセスできるほどの奴が、なぜショボい仮想通貨窃盗ツールしか仕込まなかったのかってこと。ワンチャンを棒に振ってないか？<br>APIキーとかSSH鍵、ブラウザプロファイルなんかも抜けば、もっと稼げただろ。売る場所だってあるのに。優秀なサイバー犯罪者はみんな高給取りで、残ってるのはこんな連中だけなのかね？" userName="sebstefan" createdAt="2025/09/09 16:47:57" color="#ff33a1">}}




{{<matomeQuote body="すぐにバレるやり方だったからだよ。こっそり仕込むんじゃなくて、アカウントを完全に乗っ取ったんだ。攻撃者は数時間しか時間がなかったから、ヒット＆ランが賢い選択。短時間で自動的に一番稼げるのは仮想通貨だったってこと。<br>どうせすぐにバレるんだから、手の込んだバックドア仕込んでも意味ないって判断したんだろうね。" userName="com2kid" createdAt="2025/09/09 16:59:06" color="#45d325">}}




{{<matomeQuote body="”すぐにバレる”って言うけどさ、それはセキュリティ情報をチェックする時間がある奴らの話だろ。多くの場所じゃ、何ヶ月も気づかれずに放置されちゃうことだってあると思うけどね。" userName="pluto_modadic" createdAt="2025/09/09 17:14:56" color="">}}




{{<matomeQuote body="みんな開発用ノートPCへの制限とかEDRを批判するけど、リスクは分かってるんだろ？HNでもよく見るけどさ。<br>Ops側は何年も前からリスクを認識してるし、それがセキュリティポリシーを決めるんだ。セキュリティは大変で不便だけど、どんどん重要になってるんだよ。" userName="thewebguyd" createdAt="2025/09/09 17:06:09" color="#38d3d3">}}




{{<matomeQuote body="EDRやセキュリティが批判されるのは、説明不足か、ただの”プロセスのため”になってるからだろ。<br>今俺が抱えてる件だと、自動コードレビューが誤検知したのに、それを無視する許可を得るのに何ヶ月もかかってる。３人のシニアが誤報だと認めてるのに、承認プロセスがバカげてるんだよ。<br>これじゃあ、セキュリティ自体が時間の無駄だと思われる。問題はセキュリティじゃなくて、セキュリティ”劇場”だ。" userName="dghlsakjg" createdAt="2025/09/09 17:32:40" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="盗まれた仮想通貨は取引を止められないから確実な稼ぎになるんだ。<br>でも、適当な開発者のAPIキーやSSH鍵なんて、よっぽど運が良くないとほとんど価値がない。それに、それを売って金にするにしても、結局仮想通貨で受け取ることになるだろ。" userName="root_axis" createdAt="2025/09/09 17:09:20" color="">}}




{{<matomeQuote body="その”Ops担当者”の行動は筋が通ってるように聞こえるけどな？<br>組織全体としては賢明じゃないかもしれないけど、何千もの可能性や例外を全部検討しないと、そうは断言できないんじゃないか？" userName="MichaelZuo" createdAt="2025/09/09 18:58:44" color="">}}




{{<matomeQuote body="いや、このエコシステムには（問題を発見する）時間もやる気も能力もある奴らがいっぱいいるんだよ。<br>一度問題が報告されれば、みんながめっちゃ警戒するようになるから。" userName="zahlman" createdAt="2025/09/09 17:25:32" color="">}}




{{<matomeQuote body="何が”筋が通ってる”って言うんだ？俺はすでに複数の場所で誤報だと書面で説明してるのに、アクセス権すらない場所にさらに文書化しろって要求されてるんだぞ。<br>こんなバカげたプロセスじゃ、アラートは無視されるかバイパスされるだけだ。<br>昔DDOS攻撃があった時も、セキュリティは気づかずに、Devチームが教えたのに、またアクセス権のせいで足を引っ張られたんだ。良いセキュリティは尊敬するが、悪いセキュリティは批判されるべきだ。" userName="dghlsakjg" createdAt="2025/09/09 19:13:05" color="#38d3d3">}}




{{<matomeQuote body="もし君が完全に自信があるなら、そのOps担当者の上司と君の上司をCCに入れて、責任は取るって書面で保証するメールを送ればいいんじゃないか？<br>Ops担当者が君の代わりにそんなことできるような組織体制は聞いたことないし。" userName="MichaelZuo" createdAt="2025/09/09 20:01:23" color="">}}




{{<matomeQuote body="サプライチェーン攻撃で数十万ドル盗んで、仮想通貨に変えて…って手口を繰り返せば引退まで安泰ってわけか。AWSキーなんて大した金にならないし、やっぱ狙いは仮想通貨ウォレットやパスワードマネージャーのDBだよね。でも、完璧なタイミングを狙う奴らは捕まりにくいってのが怖い。" userName="jeroenhd" createdAt="2025/09/09 17:29:09" color="#ff5733">}}




{{<matomeQuote body="これって一世一代のチャンスじゃないんだよな。犯罪者たちが、ちょっとした「ギーク」が大金にアクセスできるって気づき始めたら、もっとひどいことになる。コードのメンテナーとしては、オンラインでの身元がどれだけ隠されてるか、マジで考えちゃうね。" userName="boznz" createdAt="2025/09/09 19:33:11" color="#ff5733">}}




{{<matomeQuote body="devマシンからクッキーやSSHキー、接続履歴なんかを盗まれたら、たくさんの人が影響を受けるぞ。 techニュースとかセキュリティ速報を見て、ヤバいって気づいて認証情報を破棄する人もいるだろうけど、多くの人は「自分は大丈夫」って思い込んで、古い認証情報を放置しちゃうんだよな。" userName="wongarsu" createdAt="2025/09/09 17:36:42" color="#ff33a1">}}




{{<matomeQuote body="コードベースのセキュリティアラート担当者として、俺はもう責任感じてるし、だからこそ最初に免除申請出したんだ。でも、このアラート何ヶ月もアクティブなのに、セキュリティチームは俺の免除申請以外何も聞いてこないんだよ。実際の修正（コード変更とか）より、プロセスとアラート自体が重要なんだな。不合理なプロセスを迂回するしかないってことか？俺の主張を証明してるじゃん。だからみんなセキュリティプロセスを真剣に受け止めないんだよ。" userName="dghlsakjg" createdAt="2025/09/09 20:32:45" color="#38d3d3">}}




{{<matomeQuote body="これを修正するためのJiraチケットが何十万枚も発行されてるけど、スプリントにアサインされてない、なんてことになってるんだろうな…。<br>" userName="benoau" createdAt="2025/09/09 17:48:29" color="">}}




{{<matomeQuote body="結局のところ、盗まれた仮想通貨って、現実の人々に実害を与えるわけじゃないんだよね。怪しい投機に手を出した人が「今日は最悪」って思うだけ。もしこれが、子どもを養うために使うような生活に必要なお金を盗むハックだったら、もっとひどいことになってたはずだよ。" userName="babypuncher" createdAt="2025/09/09 18:04:56" color="">}}




{{<matomeQuote body="危険なパッケージが公開されて、npmがそれを削除するまでの期間（今回のケースみたいに注目されるやつなら通常数時間、何日もじゃない）にdevがnpm installを実行しなければ、影響は受けない。だから、攻撃者がどれだけ待っても有効な認証情報はそんなに手に入らないってこと。" userName="ameliaquining" createdAt="2025/09/09 17:42:38" color="#ff5733">}}




{{<matomeQuote body="君は文脈をちょっと勘違いしてるよ。「リアルマネー」を大量に盗むってなると、銀行とかその顧客、デビットカード、クレジットカードから盗むことになる。これらはFDIC保険とかチャージバックみたいな既存の保護があるから、エンドユーザーが直接的な被害を受けることはほとんどないんだ。今回のNPMの件みたいな攻撃と、誰かの食費を盗むような個人のリアルな損失は、規模も仕組みも全然違うってこと。そもそも、大金を常に持ち歩くのは自己責任だしね。" userName="aspenmayer" createdAt="2025/09/10 00:42:00" color="#45d325">}}




{{<matomeQuote body="じゃあ、現実的な制約を考えたら、ops担当者の行動は理にかなってるってことで、俺と意見が一致してるってことかな？" userName="MichaelZuo" createdAt="2025/09/09 21:32:50" color="">}}




{{<matomeQuote body="Opsが自分たちで不条理な制約作っといて、それに従ってるから合理的とか言ってるのはマジでないわ。ふざけんなって感じ。" userName="dghlsakjg" createdAt="2025/09/09 22:45:59" color="">}}




{{<matomeQuote body="マジで攻撃された気分だよ。でも、うちがNPMへのアクセス全部Artifactory通してるおかげで、影響あったバージョンをブロックできて、ビルドに一切プルされてなかったって確認できたのは超嬉しいね。" userName="brazzy" createdAt="2025/09/09 22:19:11" color="#45d325">}}




{{<matomeQuote body="それが個人の決定だったってどうして分かるんだよ？誰が制約課したかなんて、どうやって知るんだ？" userName="MichaelZuo" createdAt="2025/09/10 16:08:56" color="">}}




{{<matomeQuote body="エクスプロイトがもう終わったって、どうしてそんなに確信できるんだ？もしかしたら、みんなを安心させるために二次エクスプロイトだけわざと捕まるように仕向けたのかもしれないぞ。主要なエクスプロイトがまだコードのどこかに隠れてる可能性だってあるだろ？" userName="deepanwadhwa" createdAt="2025/09/09 20:18:17" color="#ff5733">}}




{{<matomeQuote body="俺も似たようなコメントしたばっかだよ。マジでその通り。たった数千ドルでどの開発者でもできるような簡単な機会が、一世一代のチャンスだなんて笑えるぜ。北朝鮮は人気のNPM依存関係のほとんどを買う金を持ってるだろうし、ほとんどの開発者は喜んで、しかも無意識に売っちゃうだろうな。北朝鮮のハッカーは政府の支援もあって合法的にこれできるからヤバい。それに、人気NPM開発者はほとんど金ないんだぜ。" userName="jongjong" createdAt="2025/09/09 23:25:37" color="#ff33a1">}}




{{<matomeQuote body="もし不正に手に入れた認証情報を使ってパッケージを更新するのを一週間待ってたら、その間に検出されてたのかな？" userName="bobbylarrybobby" createdAt="2025/09/09 17:22:16" color="">}}




{{<matomeQuote body="だから銀行は今、お前のスマホで取引承認させるんだよ。適当なNPMパッケージがお前の金をリダイレクトできるなんて、マジで大問題だろ。" userName="SchemaLoad" createdAt="2025/09/10 01:24:37" color="">}}




{{<matomeQuote body="『それは十分な大金だけど、不正な取引はFDIC保険とかチャージバックでカバーされるだろ』って？そんなわけない。多くの銀行は、例えばフィッシングメール開いた人の損失なんてカバーしないって言うだろうし、銀行自体も怪しいメールしょっちゅう送ってるくせにね。それに、たとえカバーされても、その金はどこから湧くんだよ？結局、保険で広く分散されるとしても、普通の銀行利用者のポケットから出てるんだぜ。" userName="lmm" createdAt="2025/09/10 04:16:06" color="#ff33a1">}}




{{<matomeQuote body="プッシュされたペイロードは、新しいトラフィックを全然作ってない。ただ暗号取引の受取人を別のアカウントに変えただけだから、マジで検出は超難しかっただろうな。APIキーの流出なら、もっと早くバレてただろうに。でも、このやり口、開発者アカウント乗っ取って注入したコードを公開した方法とは全然合ってないんだよ。これじゃすぐバレるはずだ。もしペイロードがもっと巧妙に注入されてたら、被害者が『自分がミスったんだ』って思わせるようなレーベンシュタイン距離のロジックとか使って、特定にめちゃくちゃ時間かかったかもな。" userName="WhyNotHugo" createdAt="2025/09/09 18:02:17" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
