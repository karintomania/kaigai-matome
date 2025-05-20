+++
date = '2025-05-13T00:00:00'
months = '2025/05'
draft = false
title = 'Mozilla Firefox 公式GitHubリポジトリへ！'
tags = ["Firefox", "GitHub", "Git", "VCS", "オープンソース"]
featureimage = 'thumbnails/blue.jpg'
+++

> Mozilla Firefox 公式GitHubリポジトリへ！

引用元：[https://news.ycombinator.com/item?id=43969827](https://news.ycombinator.com/item?id=43969827)




{{<matomeQuote body="Mozillaで働いてるけど、VCSツールとか今回の移行担当じゃないんだ。<br>リンク先に詳しい情報がないから、ちょっと追加で説明するね。<br>Firefoxのコードは、確かに最近hg.mozilla.orgのmercurialからGitHubがメインの場所になったんだ。これはコードの話だけで、バグ報告はbugzilla、コードレビューとマージはphabricator、CIにはtaskclusterシステムを使い続けてるよ。<br>当面、mercurialサーバはまだ残ってて、GitHubから同期してる。おかげで自動システムが時間をかけてGitに移行できるんだ。mercurialは“try”リポジトリ（WIPパッチでCIを走らせるところ）でもまだ使われてるけど、だんだん抽象化されてきてるから、これも後で移行すると思う。<br>前のリポジトリを知ってる人向けに言うと、“mozilla-central”は“main”ブランチになってて、“autoland”はそのまま“autoland”ブランチだよ。<br>あと、長いことgit cinnabarっていう拡張機能を使えば、GitだけでFirefoxに貢献できたってのも事実。mercurialを学ぶか、Gitと拡張機能を使うかの選択が、多くの新規貢献者にとってちょっとしたハードルだったんだ。彼らは大体Gitは知っててmercurialは知らなかったからね。これでその選択はもういらなくなったよ。git cinnabarを書いたGlandiumは、この移行が初めて発表された時にMozillaでのVCSの歴史について詳しく書いてて、移行理由についてもちょっと詳しく説明してるよ[1]。<br>だから、当面は貢献者視点での違いは最小限。普通のGitを使うのがデフォルトで推奨されるワークフローになっただけで、それ以外はあんまり変わってないんだ。GitHubベースのワークフロー（例えばPRとか）がいつかサポートされるかはまだ分からないけど、今回の変更には明確に含まれてないよ。<br>バックエンドでは、移行が完了したら、Mozillaは自分でVCSインフラをホストする時間を減らせるんだ。これって、これだけ大規模でパフォーマンスと可用性が求められるプロジェクトでは結構大変なことなんだよね。<br>[1] https://glandium.org/blog/?p=4346" userName="jgraham" createdAt="2025/05/13 07:56:11" color="#ff5733">}}




{{<matomeQuote body="補足説明ありがとう！<br>差し支えなければ聞きたいんだけど、セルフホストのソリューションにとって、規模に関する具体的な課題って何だったの？" userName="iamcreasy" createdAt="2025/05/13 08:12:44" color="">}}




{{<matomeQuote body="さっきも言ったけど、ユーザー視点からしか話せないんだ。VCSインフラの仕事はしてないから。<br>一般的な課題としては、可用性とセキュリティが obvious だね。Firefoxには世界中に貢献者がいるから、VCSサーバが落ちたら作業が滞るんだ（もちろんローカルでは作業できるけど、パッチをマージしたり修正をユーザーに届けたりはできない）。Firefoxは結構ハイバリューなターゲットだし、VCSサーバに attacker がアクセスできたら問題だよね。<br>誤解のないように言うと、こういう特定のトラブルがあったって言ってるんじゃないんだ。ただ、self hosting する時にMozillaが対処しなきゃいけない課題だってこと。<br>規模に関するもう一つの obvious な問題はパフォーマンスだよ。巨大なリポジトリだと、読み込みも書き込みも両方心配事になる。リポジトリを clone するのが新規貢献者が最初にやるステップなんだけど、これが遅いと、多くの人にとってやる気をなくす原因になるんだ。特にネット環境が良くない場合ね。うちのHgバックエンドはこれを助けるためにレプリケーションを使ってたんだけど[1]、リンク見れば分かる通り、どれだけ複雑さが増すか分かるよね。<br>Firefoxには貢献者がたくさんいるから、書き込みの競合も問題になるんだ。例えば、“try”リポジトリに push する時（ローカルのパッチでCIを走らせるためね）、lock を待つのに何十分もかかることがしょっちゅうあったんだ。これは（最近は）landoっていうカスタムシステム経由でパッチをpushして、VCSのpush自体は非同期で queuing するようにして、end user からはほとんど隠されてたんだけど、それは本当の解決策っていうよりは軽減策だね（landoはGitHubバックエンドでも必要で、以前はhgサーバにあったカスタムVCSルールを、GitHubの機能にはマッピングできないから、ここで強制する場所になってるんだ）。<br>[1] https://mozilla-version-control-tools.readthedocs.io/en/late..." userName="jgraham" createdAt="2025/05/13 08:51:42" color="#38d3d3">}}




{{<matomeQuote body="なんでGitHubでCodebergじゃないの？<br>帯域幅？Microsoftからの$$$？（トラフィック、copilotの無料トレーニングとか・・）" userName="monegator" createdAt="2025/05/13 09:10:33" color="">}}




{{<matomeQuote body="publicなgitリポジトリとしてGitHubを使うのは、かなり value が高いと思うな。<br>無料だし、頑丈だし、Microsoftが君にできる悪いことなんて大したことないよ。標準のgitだから、lockdownもない。気に入らない決定があったら、migrate なんて git clone するだけ。Copilotのトレーニングに関しては、それは public なんだから、Microsoftが自社サーバでプロジェクトをホストしてるからって何か変わるわけじゃない。他の誰だってソースコードは手に入れられるし、多分もう手に入れてるよ。<br>Codebergじゃない理由は？分からないけど、多分 bandwidth かな。でも標準のgitなんだから、Codebergに mirror 作るなんて trivial なはずだよ。<br>それがgitのすごいところ。中央リポジトリなんて単なる convention なんだ。技術的には、original と clone に違いはない。ファイルをやり取りする方法さえあれば、collaborate するのに online である必要すらないんだ。" userName="GuB-42" createdAt="2025/05/13 10:03:20" color="#38d3d3">}}




{{<matomeQuote body="GitHubにBANされたんだ。電話番号を提供したくなかったからね。法的に拘束力のあるGDPRリクエストで全データの削除を求めたのに、向こうは無視した。まだ訴訟には踏み切ってないけどね。<br>最近は、3ページくらいウェブページを開いただけで“rate limited”にもなったよ。<br>Microsoftは君に何かできるんだ。それは、君がそれに依存した後で、恣意的にアクセスを拒否して、アクセスを取り戻すために hoops を跳ばせることさ。" userName="immibis" createdAt="2025/05/13 10:51:31" color="">}}




{{<matomeQuote body="＞これはコードだけに関わる話で、bugzillaは引き続き課題追跡に使われる<br>Grim（げんなり）。<br>そもそもGitHubを使う一番の理由は、ユーザーの大部分がバグ報告をしやすいようにするためでしょ。だって、彼らはすでにアカウントを持ってて、プラットフォームの使い方に慣れてるんだから（ネットワーク効果のおかげね）。GitHubでコードをホストしておきながら、そこでバグ報告を受け付けないプロジェクトは、実質的にバグ報告をgate keepingしてるんだよ。ユーザーにサイトを見つけて、登録して、新しいインターフェースの使い方を学ぶっていう手間をかけさせてるんだからね。俺は以前、bugzillaとFirefoxでMacOSのアクセシビリティバグを報告するためにこれをやったことがあるんだけど、大変な ass だったよ。すごく長い間後回しにして、十分にイライラしてからそのプロセスを経験したんだ。（結局、バグは確認されたけど、一度も修正されなかったけどね・・）" userName="lupusreal" createdAt="2025/05/13 10:31:49" color="#ff5c5c">}}




{{<matomeQuote body="これはちょっと weird hill to die on （こだわるには変なこと）だけど、君には完全に権利があるから、君は君でやればいいさ。<br>ただし、君がGitHubからBANされたって言うのは明らかに正確じゃないよ。“computing device を使うのを拒否したからGoogleにBANされた”って言うようなもんだ。<br>BANじゃなくて、単なる self flagellation （自己苦行）だね。まあ、君にとってうまくいくなら何でもいいけど、また言わせてもらうよ。" userName="LadyCailin" createdAt="2025/05/13 11:34:31" color="">}}




{{<matomeQuote body="＞最近は、3ページくらいウェブページを開いただけで“rate limited”にもなったよ。<br>最近ログアウトして使ってない人は驚くかもしれないけど、彼らはしばらく前から、アカウントなしでは実質的にサイトを使えなくしてるんだ。1回検索して、結果を2、3個クリックすると一時的にブロックされちゃう。実質、今はアカウント必須のウェブサイトなんだよ。" userName="alabastervlog" createdAt="2025/05/13 11:56:24" color="">}}




{{<matomeQuote body="君の social security number をくれなきゃ、俺のコメントに返信しちゃダメ。もし君が social security number をくれずに、代わりにこの weird hill （変なこだわり）で死ぬ方を選んだとしても、それはBANされたとは正確に言えないよ。単なる self-flagellating （自己苦行）だ。" userName="immibis" createdAt="2025/05/13 11:56:49" color="">}}




{{<matomeQuote body="たぶんCI／CDインフラのことだと思うな．サポートOSとか設定が増えると，テスト時間も指数関数的に増えるんだよね．ボクの研究でも10分かかったし，Debianのパッケージは3時間以上かかることもある．<br>Mozilla Firefoxみたいに，様々な設定やOSでテストするには（arewefastyet．com見てみてね），マジで巨大なインフラと計算時間が必要なんだ．これってサーバーファームがないとムリで，動かすのにも優秀な人が何人か必要だしね．<br>だからかなりの大変さなんだよ．" userName="bayindirh" createdAt="2025/05/13 08:45:05" color="#38d3d3">}}




{{<matomeQuote body="まあまあ評判の良い会社に電話番号教えるのって，ランダムなヤツにSocial Security Number教えるのとは全然違うでしょ．<br>だって，もちろんキミは彼らが評判良いって意見に反対なんだろうけど，それが一般的な意見じゃないことはわかるでしょ，それに彼らは電話番号保存してる平均的な会社よりデータ漏洩防ぐのが確実に上手だよ．<br>心からだけど，キミのGDPRリクエストがうまくいくといいね．" userName="LadyCailin" createdAt="2025/05/13 16:19:35" color="">}}




{{<matomeQuote body="＞まあまあ評判の良い会社ってMicrosoftのこと？<br>https：／／en．wikipedia．org／wiki／Microsoft#Controversies" userName="fsflover" createdAt="2025/05/13 16:38:21" color="">}}




{{<matomeQuote body="CI／CDのインフラはここに残ると思うけど？（それにしても，FirefoxみたいなプロジェクトだとGitHub Actionsの請求ヤバそう）．" userName="notpushkin" createdAt="2025/05/13 08:49:26" color="">}}




{{<matomeQuote body="Codebergは使ってる間に稼働率99％になってない気がするな．ボクの小さな趣味プロジェクトの公開ミラーとしてたまに使う分には管理できるけど，Firefoxレベルのプロジェクトには勧めないな．" userName="Macha" createdAt="2025/05/13 09:21:42" color="">}}




{{<matomeQuote body="だから『generally』って限定したんだよ．彼らが非難されるべきじゃないとは言ってないけど，データセキュリティにずっと無関心な会社，例えばほとんど全ての公共サービス（電話会社含む）は既にボクの電話番号持ってるし，それらは現実的に避けて通れないんだよ．" userName="LadyCailin" createdAt="2025/05/13 16:45:26" color="">}}




{{<matomeQuote body="gitの分散性のおかげで，これはそんなに大きな問題にならないはずだよ．" userName="fguerraz" createdAt="2025/05/13 11:43:06" color="">}}




{{<matomeQuote body="＞たぶんCI／CDインフラのことだと思うな<br>キミの推測は間違いだよ．FirefoxはGitHubをCI／CDには使ってないし，予定もない．ブログ記事に詳しくあるけど，git操作（ログとかクローンとか）がCPU食うんだ．<br>速くて可用性の高いサーバーが必要だし，無料サービスがあるのになんで？ってことだよ．" userName="arp242" createdAt="2025/05/13 08:53:41" color="#45d325">}}




{{<matomeQuote body="半分ずつできると思うな．GitHubで一部の明確なビルドをやって，テストにプルインするとか．<br>他のコメントでは，一部のユーザーはCI通すのにロック取るのに10分以上かかったって言ってるし，だからサニティテストとかをGitHub actionsにオフロードできるかも．<br>ボクのコメントが100％正確だったとは主張しないけど，彼らはCIの一部をGitHubに移す計画があるらしいよ．" userName="bayindirh" createdAt="2025/05/13 08:54:37" color="">}}




{{<matomeQuote body="もしMozillaがCEOの給料の100分の1でもCodebergに寄付したら、Codebergはめっちゃ喜んで規模を広げられる（スケールできる）かもね。" userName="Miaourt" createdAt="2025/05/13 10:07:58" color="">}}




{{<matomeQuote body="ログインしてないとGitHubでコードを探せなくなったことに、かなり呆れたよ。<br>検索するためにプロジェクトをローカルにクローンさせたいわけ？<br>結局Googleを使ってGitHubを検索してるし。マジで馬鹿げてるよ。" userName="jgrowl" createdAt="2025/05/14 16:58:09" color="#ff5c5c">}}




{{<matomeQuote body="あれは推測だったし、100%正しいなんて言ってないよ。訂正されて全然OK。<br>何も気にしてないから大丈夫。" userName="bayindirh" createdAt="2025/05/13 08:55:40" color="">}}




{{<matomeQuote body="＞データセキュリティにずっと無頓着な会社だって、携帯会社含め、もう俺の電話番号持ってるよ<br>って言うけど、これらの会社より無頓着ってこと？<br>https://news.ycombinator.com/item?id=40592789<br>https://news.ycombinator.com/item?id=12305598<br>https://en.wikipedia.org/wiki/Criticism_of_Microsoft#Privacy<br>．．．それはありえないでしょ。" userName="fsflover" createdAt="2025/05/13 17:39:48" color="#ff5c5c">}}




{{<matomeQuote body="質問：GitHubアカウントなしでパッチを提供できるのかな？<br>ソースコードにはアクセスできるけど、提案する変更をGitHub以外でホストすることなんて可能なの？無理だと思うけど。<br>これは割と理論的な質問だけど、「Microsoftが君にどんな悪いことができるか」ってリスク：Microsoftは君のGitHubアカウントを閉じることができて、貢献する能力を深刻に邪魔する可能性があるってことだね。" userName="nine_k" createdAt="2025/05/13 16:25:20" color="#785bff">}}




{{<matomeQuote body="今あるデータを移すのは簡単じゃないから、段階的にやってるのかもしれないね。<br>あと、GitHubだとバグ報告の質が低い人を事実上ブロックできるってのは、もしかしたらメリットにもなりうるかもね（皮肉だけど）。" userName="dspillett" createdAt="2025/05/13 10:48:48" color="">}}




{{<matomeQuote body="Firefoxは、もらったバグ報告の数で開発が遅くなってる（ボトルネックになってる）わけじゃないと思うよ。" userName="matkoniecz" createdAt="2025/05/13 11:06:45" color="">}}




{{<matomeQuote body="もし本当にバグ報告が欲しいなら、アカウントを作る必要がない、単一のフォームにしなよ。<br>GithubとかGitlabとかは、ウェブブラウザ使う人の99%にとっては壁みたいなもんだからね。" userName="AlienRobot" createdAt="2025/05/13 12:20:23" color="#45d325">}}




{{<matomeQuote body="それはちょっとイマイチな主張に見えるね。<br>俺もGitHubに電話番号教える義務があるのはあんまり好きじゃないけど、社会保障番号（SSN）と同じってわけじゃないでしょ？<br>違うって言うの？" userName="GabrielTFS" createdAt="2025/05/13 20:28:48" color="">}}




{{<matomeQuote body="まさにこれだね。Microsoftに標準的なVCSでコード置かせつつ、Issueトラッカーとかは自分とこので続けることで、囲い込みは避ける。良いとこ取りってわけ。" userName="JeremyNT" createdAt="2025/05/13 12:33:22" color="#ff5733">}}




{{<matomeQuote body="Mozillaの戦略として理解できるな。開発続けるためにコミュニティを巻き込みたいんだろ。GitHubが一番開発者に知られてて、参加のハードル下がるから。GitHub自体は気に入らないかもだけど、Firefox開発が続いて競合エンジンがあるのはみんなに良いことだよ。" userName="floriangosse" createdAt="2025/05/13 06:55:00" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺の経験だと、GitHub使えないからって貢献やめる人って、あんまり価値のある貢献者じゃないことが多いんだよね。例外はいるだろうけど、俺が関わったちょっと難しいOpen Sourceプロジェクトではそんなの見なかったな。むしろ、ちょっとハードル上げて質の低い一回きりの貢献者を防ぐのは良いことかもしれない、とすら思うよ。" userName="fhd2" createdAt="2025/05/13 08:14:46" color="">}}




{{<matomeQuote body="お前、Open Sourceをダメにしてるゲートキーピングの典型だ。「貢献する」って言葉の通り、貢献者はみんな価値があるんだよ。参入ハードルは全部ダメ。別の問題（全部管理できないとか）の解決策になんて絶対にならないし、長い目で見たら悪くなるだけだ。GitHubは今は障壁を下げる「解決策」だとは思うけど、良い代替がないってのは別の問題だ。" userName="berkes" createdAt="2025/05/13 08:24:11" color="#ff5c5c">}}




{{<matomeQuote body="これ、マジで色んな意味で完全に間違ってるって。提案された貢献って、実際マイナスの価値を持つこともあるんだよ。メンテ難しくしたり、他のコードにバグ入れたりするやり方とか。たとえ却下されるとしても、詳しい誰かがレビューに時間と労力使わなきゃならないんだ。それは、別の、もっと役立つPRに使えた時間だよ。" userName="int_19h" createdAt="2025/05/13 08:47:43" color="#ff5c5c">}}




{{<matomeQuote body="数ヶ月前にFreeBSDとLinuxのパッチ書くのに時間かけたんだ。貢献プロセス理解するのも含めて。どっちも今んとこ無視されてるけど、リソースがないのは分かってる。これ全部文句じゃなくて、Open Sourceってこういうもんだから。でも、貢献プロセス調べるのに使った時間が無駄になったってことでもあるんだよね。別の、もっと他のパッチに使えた時間だ。確かにハードル高くすれば質の低い貢献は減るだろうけど、それは貢献全部が減るから。（ちなみに、FreeBSDはGitHub経由も受け付けてるけどあんまり推奨してなくて、時間かかったよ）" userName="arp242" createdAt="2025/05/13 08:39:17" color="#785bff">}}




{{<matomeQuote body="これってプラットフォームの問題じゃないよ。PRシステム、っていうかたぶんOpen Source自体に問題があるんだ。コード書く以外に時間使う気がないなら、プロジェクトはClosed-sourceにしとけば？" userName="lpln3452" createdAt="2025/05/13 09:33:33" color="#45d325">}}




{{<matomeQuote body="俺も前に無視されたpull requests作ったことあるから、GitHubでこの問題が解決するのかどうかはよくわかんないんだよね。" userName="struanr" createdAt="2025/05/13 08:47:19" color="">}}




{{<matomeQuote body="もっと分かりやすく言うと、Open-sourceにして、READMEに「このリポジトリは見るだけで、PRは受け付けないよ。変えたいならforkしてね」ってデカデカと注意書き入れるとかね。" userName="majewsky" createdAt="2025/05/13 09:45:25" color="">}}




{{<matomeQuote body="これって白黒はっきりしてるわけじゃないんだよ。多くのプロジェクトはPR欲しいと思ってるけど、それはどんな適当なPRでも受け入れなきゃいけないとか、明らかに手抜きなやつ作った貢献者全員におべっか使わなきゃいけないって意味じゃない。品質に関して「gatekeep」するのは全然オッケーだし、それは全ての貢献者が同じくらい価値があるわけじゃないっていう事実を認めることでもあるんだ。" userName="int_19h" createdAt="2025/05/13 11:17:16" color="#45d325">}}




{{<matomeQuote body="貢献って見返りを求めてやるんじゃなくて，善意でやるもんだよ．摩擦は邪魔なだけ．その摩擦がそれに見合う価値があるなら良いけど－ 一体何を失うっていうのさ？" userName="lpln3452" createdAt="2025/05/13 08:38:31" color="">}}




{{<matomeQuote body="GitHub PRsもそれを解決するわけじゃないけど，貢献プロセスを理解するのに時間を使わなくて済む（無駄にしなくて済む）のは大きいね．少なくともパッチ書いてる間はいくつか学べたし．でもgit emailやPhabricatorとやり取りしても何も価値あることは学ばなかったな．あれは退屈で面倒なだけの作業だったよ．" userName="arp242" createdAt="2025/05/13 08:58:27" color="">}}




{{<matomeQuote body="＞明らかに手抜きな貢献者一人一人にへつらう<br>その優越感みたいなのがムカつくんだよ．多くのメンテナーはユーザーの不満に『貢献歓迎』って返事するけど，どんなのでも受け入れるべきだ．自分で簡単にできたはずなのに人にやらせて，後から要らないとかふざけんな．プロジェクトなんて大したことないし，不感謝なメンテナーの為にタダで他人の技術的負債を負うリスクなんて負いたくないよ．動けばいいじゃん．自分の問題が直るならそれで良い．感謝すべきだろ．文句あるなら自分のパッチ使えば？そうすればメンテナーも自分で直すようになる．笑" userName="matheusmoreira" createdAt="2025/05/13 14:35:43" color="#ff5c5c">}}




{{<matomeQuote body="GitHubのWebサイトは退屈で面倒だよ．大量の独自Javascriptが重いし，変なUXについていけない．ブラウザ開くのにX11が必要だったり，大量のPRレビューでCPUが固まりそうになったり…コメント隠されて『もっと読み込む』をクリックしまくりなのに重い．<br>メールはシンプルで良い．テキストだけで重さもない．muttで読書きして，”git send-email”って打てば終わり．オープンソースで速い．Phabricatorについては完全に同意だけどね．" userName="TheDong" createdAt="2025/05/13 10:42:09" color="#ff33a1">}}




{{<matomeQuote body="＞リポジトリをGitHubに移すことで何を失うの？<br>GitHubの代替の話ね．Googleのブラウザ独占みたいに，OSプロジェクトがGitHubに集中するのは懸念だよ．Microsoftがエンシット化したら歴史を繰り返すかも．GitHubはFOSS好き企業だけど中央集権的な閉鎖システムだ．Mozillaがここを使うのは理解できるけど，みんながGitHubに移ることに何も懸念がないわけじゃない．" userName="Aachen" createdAt="2025/05/13 09:57:34" color="#45d325">}}




{{<matomeQuote body="GitHub以外のワークフローで修正を送る時は気にしないことにしてる．特にPR/MRを使わない所はね．変わったやり方に付き合う時間はないんだ．長期貢献者になりたいなら話は別だけど，最初の経験が苦痛だと続かない．大きな理由は登録の手間だよ．フェデレーションフォージが普及して，パスワード増やさずに色んなフォージを使えるようになれば良いのにね．" userName="Philpax" createdAt="2025/05/13 09:01:43" color="">}}




{{<matomeQuote body="GitHub流行る前に代替使ったことある？GitLabもSourceForgeも昔はひどかったんだよ．GitHubが成功したのは特別優れてたからじゃなく，競合のUXが最悪だったから．Gitプロジェクトは移動簡単だから，もしGitHubがエンシット化しても移れば良いだけさ．Mozillaみたいにね．" userName="lpln3452" createdAt="2025/05/13 10:16:57" color="">}}




{{<matomeQuote body="残念だよ，フリーソフトウェアプロジェクトに貢献しないって人がいるなんてね，そのサービスが独自仕様の巨大企業のものじゃないってだけでさ．”Friction in signing up”が大きいってのも変だね，GitHub以外のほとんどのフリーソフトウェア代替（Gitea，GitLab，Forgejo）がGitHub経由のSSOに対応してることを考えたら．" userName="Handler9246" createdAt="2025/05/13 11:17:33" color="">}}




{{<matomeQuote body="＞ああいう人はどんな貢献でも受け入れるべきだね．<br>いや，自分で機能実装する時間がなかったからって，バグを仕込むようなひどいPRsをマージする義務はないね．" userName="matkoniecz" createdAt="2025/05/13 18:54:19" color="">}}




{{<matomeQuote body="コントリビューター募集を前提にしてるだけだよ。摩擦があると参加しにくくなるし、最初からやる気ある人だけじゃない。気軽に試したい人もいるんだ。ある程度の gatekeeping は必要だけど、認知度高いツールを避けるのが解決策かは疑問。もっと高度なフィルターが必要かもね。" userName="dgb23" createdAt="2025/05/13 10:47:12" color="#ff33a1">}}




{{<matomeQuote body="すべてのコントリビューターが価値あるわけじゃないよ。誤解を招くバグ報告やくだらない機能リクエストを大量に出す人、自分でデータを壊したのに文句言う人、バックドア仕込むPR、政治的な混乱を起こすPR、自作自演、有害なコンテンツを入れようとする人とか、いっぱい見てきた。<br>だから、価値のないコントリビューターもいるし、バンしたり教育が必要な人もいるんだ。sgtathamさんのガイドも見てみて！" userName="matkoniecz" createdAt="2025/05/13 11:12:12" color="#45d325">}}




{{<matomeQuote body="”Boo hoo I need to start X11”だって？マジかよ？<br>俺はちょっと変わったワークフローだけど、それで他の人に迷惑かけないようにしてるんだ。特にボランティアでやってるオープンソースだと、そうしないと自己中だろ。<br>正直、あんたがここに書いたこと読むと、俺のプロジェクトからは締め出しといて正解って感じ。<br>他の人が自分たちに合ったやり方で選んでやってることに、何そんなにイライラしてるんだ？" userName="arp242" createdAt="2025/05/13 12:03:25" color="">}}




{{<matomeQuote body="たぶん、パッチがPull Requestだったとしても、無視されてたと思うよ。<br>だって、いろんな大規模オープンソースプロジェクトで何千件ものPull Requestが無視されてるんだから。<br>知らないコントリビューターからのドライブバイなPull Requestを全部トリアージしてる暇なんて、誰も持ってないよ。簡単な解決策なんてないんだ。<br>最近の curl のセキュリティ騒動みたいに、 signal:noise ratio はすごく大事で、維持するのが難しいんだ。" userName="elric" createdAt="2025/05/13 09:17:09" color="#38d3d3">}}




{{<matomeQuote body="それってさ、Aの使い方知らないからBへの貢献に必要なことも知らないだろうって言ってるの？<br>良いコーダーであることと、Mercurialを使いこなせることには、全然関連性ないだろ。" userName="7bit" createdAt="2025/05/13 09:28:48" color="">}}




{{<matomeQuote body="理屈はわかるけど、実際にはCVとかで質の低いPRが山ほど来て、正直疲れるんだ。自分で書いた方が早いレベル。<br>GitHubで見た貢献の多くは雑でテストもされてないとか。メンテナーの立場だと、手間がかかるPRが多いとマジで大変だよ。<br>一番ありがたいのは、ソフトが好きで良くしたいと思ってくれる思慮深い人。でも、GitHubだとそういうケースは一番多いわけじゃないんだ。" userName="fhd2" createdAt="2025/05/13 09:29:28" color="#ff5c5c">}}




{{<matomeQuote body="「君のウェブサイトはクリックジャッキング攻撃に弱いよ。PS: 懸賞金いくらもらえる？」みたいなメールが大量に来るんだけど、これ見るとマジで報酬だけが目的ってやつが多いんだ。<br>それに、curl に報告されるAI生成のセキュリティ”問題”とかさ。<br>報告とか貢献の中には、マジでマイナスの価値しかないものもあるってことだよ。" userName="stevekemp" createdAt="2025/05/13 10:09:24" color="#ff5733">}}




{{<matomeQuote body="多くのプロジェクトってさ、どんなプルリクを受け入れるかルール決めてるんだよね。<br>普通のコーディングスタイルとかテストの方針とかに加えて、そういうルールにも慣れる必要があったはずだよ。" userName="elric" createdAt="2025/05/13 09:18:19" color="">}}




{{<matomeQuote body="使える機能とか直しが入ってるのに「悪いPR」として放置しちゃうとさ、後で痛い目見るかもよ。<br>ある日気づいたら、他の誰かがフォークに全部取り込んでて、自分たちが本流じゃなくなってた、なんてこともあり得るんだ。<br>マジで見たことあるよ。" userName="matheusmoreira" createdAt="2025/05/14 01:53:43" color="">}}




{{<matomeQuote body="Firefoxに貢献する上での大きな課題だった技術的な問題を一つ解決してくれたのは、マジで良かったね。<br>数年前にやってみようとした時、Mercurialのクローンに何時間もかかったし、非公式のGitサポート使わないと一日で作業終えられなかったんだ。当時のドキュメントもグチャグチャで、別にいらないのに全部再コンパイルさせられたりしたし。" userName="Kuinox" createdAt="2025/05/13 07:40:45" color="#ff5733">}}




{{<matomeQuote body="なんで既存のmozillaの組織じゃなくて、mozilla-firefoxって別の組織を選んだのかな？" userName="upcoming-sesame" createdAt="2025/05/13 12:14:56" color="">}}




{{<matomeQuote body="たぶん、アクセス権のルールが違うんじゃない？<br>それか、既存の組織から分けて、カスタムで組んだ自動化ツールが変な影響出しちゃわないようにしたかったとか。" userName="heftig" createdAt="2025/05/13 14:04:06" color="">}}




{{<matomeQuote body="Firefox Mobileが最近Mercurialに移ったばっかりなのに、今度はデスクトップ版と一緒にGitHubへ。issueはBugzillaに残るって。<br>これ、GitHubの検索とかソース見る機能とGitの慣れたシステムの両方使えて良いね。<br>元貢献者としてはローカル検索よく使ってたけど、サイトで簡単に見つかるようになるのは新しい貢献者には優しいと思うよ。" userName="antalis" createdAt="2025/05/13 07:02:36" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="逆に言うとさ、searchfoxは俺が使った中で最高のコード見るツールだと思う。<br>.webidlの定義からC++の実装に飛んだりとか、色んな言語またいでのナビゲーションがすごいんだよ。<br>常にblame（誰が書いたか）も見れるし、機能いっぱいあるのにGitHubの画面よりマジで速くて軽い。<br>もっとたくさんのプロジェクトでこれ使えたら良いのにって思うし、もし無くなっちゃったら悲しいな。" userName="adrian17" createdAt="2025/05/13 07:53:46" color="#38d3d3">}}




{{<matomeQuote body="searchfoxって当時はなかったんだよ。「xulしかなかった」ってのは、もちろんMXRのことね。<br>その後、MXRはDXRになって、さらにDXRが2020年にsearchfox（2016年スタート）に代わったんだ。" userName="antalis" createdAt="2025/05/13 09:57:28" color="#38d3d3">}}




{{<matomeQuote body="GitHubのソース見る機能、最近マジでひどくなったと思う。<br>JavaScript必要で遅延ロードされるし、回線不安定だと壊れるし、ページ内検索もダメ。<br>最近のissue/PRの見た目変更も使いにくい。<br>uBlock Origin全部オンにしてPR検索してみて、マジでヤバいから。" userName="baobun" createdAt="2025/05/13 12:37:50" color="#ff5c5c">}}




{{<matomeQuote body="「Firefox Moves to GitHub」の元ネタは何？ Linuxみたいにミラーかもしれないじゃん。 GitHubにtorvalds/linuxのミラーもあるし。 EDIT: ソースはhttps://news.ycombinator.com/item?id=43970574だってさ。" userName="mritzmann" createdAt="2025/05/13 07:29:41" color="#38d3d3">}}




{{<matomeQuote body="俺もそう思ったよ。唯一あるGitHub Workflowが、Pull Requestsをデフォルトの返信で閉じるやつだったの見て、さらにそう確信したね。https://github.com/mozilla-firefox/firefox/blob/main/.github..." userName="xrdev" createdAt="2025/05/13 07:38:25" color="#ff33a1">}}




{{<matomeQuote body="GitHubでPull Requestsタブだけ無効にできないの面白いね。これはGitHubが”social coding”を広めるための戦略だと思うんだ。強制的なソーシャル化が彼らの成功の要因だろうね。自分はGitHubには幻滅したけど、このやり方でうまくいってるのは本当にすごいと思うよ。" userName="sakjur" createdAt="2025/05/13 08:16:15" color="#45d325">}}




{{<matomeQuote body="OSSでも集約が進んで、なんか夢は終わった感じだね。 EDIT: みんなGitHubにしか注目してなくて、mercurialからgitへの移行っていう、もっと大事な話をしてないのが残念。これでhgは忘れられちゃうな。gitとGitHubの違いも理解されてないみたいだし、技術的な議論が少ないのに驚いてるよ。" userName="noobermin" createdAt="2025/05/13 12:24:20" color="#ff5733">}}




{{<matomeQuote body="hgからgitへの移行はFirefoxが初めてじゃないよ。mercurial使ってるプロジェクトがコード管理変えるなら、みんなこうなるって大体の人は予想してるんじゃないかな。mercurialはもう何年も前からほとんどの人にとって死んでるようなもんだしね。" userName="dzaima" createdAt="2025/05/13 13:23:29" color="">}}




{{<matomeQuote body="別にhgが”for most people”って話に異論はないんだけど、以前hg使ってる人が例として挙げられたFirefoxを失ったことで、もう完全に死んだって言っていいと思うんだ。正直、Firefox以外にhg使ってる有名なプロジェクト知らないんだよね。実際、何年も前にFirefoxでhgを知ったくらいだし。" userName="noobermin" createdAt="2025/05/13 13:46:05" color="">}}




{{<matomeQuote body="MercurialからGitに移行するなんて考えられないよ。Gitはなんか使いづらく見えるんだよね。まあ動くのは動くけど、Gitで作業するのは使いやすさ的に拷問だよ、ごめんけど本当なんだ。Gitでいくつか良い機能もあるけど、ほとんどはそうじゃないな。" userName="garganzol" createdAt="2025/05/13 14:23:54" color="">}}




{{<matomeQuote body="正直な意見だけど、gitが勝ったのが嫌なんだよね。複雑すぎてもメリットないし、大規模チームで働かない科学者としては、その複雑さを活かせないんだ。見やすさと手軽さのために使ってるだけ、それだけだよ。ぶっちゃけ個人的には嫌いかな。" userName="noobermin" createdAt="2025/05/13 20:30:20" color="">}}




{{<matomeQuote body="俺はまだ若い開発者で、gitしかVCS知らないんだ。ちょっと癖はあるけど、かなり強力で仕事には十分なツールだと思うよ。Mercurialの方がどう優れてるの？" userName="static_motion" createdAt="2025/05/13 18:11:48" color="">}}




{{<matomeQuote body="俺的にはMercurialの方がユーザーフレンドリーだよ。Mercurialはリポジトリ作成やコミット時に余計なこと言わないけど、Gitは”master”ブランチだとか”stage”しないとダメだとか、初心者には分かりにくい警告やメッセージが多いんだ。やってることは同じだけど、新規ユーザーにはMercurialの方が親切だと思うよ。" userName="probably_wrong" createdAt="2025/05/13 18:48:31" color="#ff5c5c">}}




{{<matomeQuote body="git commitでファイルパーミッションが出るのはややこしいね。個人的にgitの使いやすさの主張は逆だと思う。初めてhgを使ったら”何も変わってない”って出て戸惑ったよ。gitは”git add”が必要って教えてくれる。hgは追跡、gitは変更を明示するモデルで、gitの方が好み。gitのステージングは名前は悪いけど強力で他のVCSにはない必須機能だと思う。”hg commit -i”も使いにくい。自分のgitワークフローでは未コミットの変更があるのが普通だ。" userName="dzaima" createdAt="2025/05/13 22:46:55" color="#ff5c5c">}}




{{<matomeQuote body="それ開発者視点だよ。スクリプトを安全に保管したいだけの初心者とは違う。Mercurialは9割の開発者向けで、デフォルトがgitより使いやすかったんだ（Firefoxが証明）。2012年の投稿[1]はgit普及初期の雰囲気を伝えてる（”代わりにMercurialを使え！”も）。gitのエラーメッセージは改善されてるよ。 [1] https：//stevebennett.me/2012/02/24/10-things-i-hate-about-gi..." userName="probably_wrong" createdAt="2025/05/14 06:34:33" color="">}}




{{<matomeQuote body="CLI使うのは大半ソフト開発者だよ。gitは学習しやすくないけど、Mercurialも特別良くはない。よく使う場合、違いは単に毎回”git add .”が必要か、いくつかの前に”hg add .”が必要かってだけ。俺のgit使い方は開発者2人以下のプロジェクトがメインだけど、ローカルブランチやスタッシュ、rebaseを結構使うよ（でも”git add .； git commit -m whatever”しかやらないプロジェクトもある）。" userName="dzaima" createdAt="2025/05/14 10:08:57" color="">}}




{{<matomeQuote body="彼らの理由は知らないけど、複数のorgが理にかなうようにorgに紐づいてることがいくつかあるんだ。例えばSSOをやるなら、orgをSSOプロバイダーに紐づけるでしょ。でも”一部のユーザーだけ”をSSOプロバイダーに紐づけることはできない（俺の知る限り）。Firefoxのリポジトリは、メインのMozillaリポジトリとは全く違う認証／ユーザーを持つのかもしれないね。" userName="moontear" createdAt="2025/05/13 06:03:03" color="#ff33a1">}}




{{<matomeQuote body="GitHubのSSOはうざいね。GitHubにログインしてても、最近SSOで再認証してないと公開issueも見れないんだよ。GitHubは全orgに紐づく機能や認証スコープも多いから、Mozillaみたいに大きなorgだと結構リスク高いんだ。" userName="pornel" createdAt="2025/05/13 09:59:15" color="">}}




{{<matomeQuote body="GitHubはOrgとRepository以外のレベルがなく、SSOや設定の多くがorgレベルでひどい。別のorgを作るのがクリーンだけど面倒（ログインやPATs承認が個別）。GitlabならMozilla用orgの中にFirefoxなどのネームスペースを持てる感じだね。" userName="sofixa" createdAt="2025/05/13 06:16:29" color="#ff5c5c">}}




{{<matomeQuote body="orgの上に”Enterprise”レベルってのがあるけど、それは明らかにEnterpriseアカウントが必要だよ。メンバーシップを含めて、複数のorgにまたがるいくつかのポリシーを管理できるんだ。" userName="captn3m0" createdAt="2025/05/13 06:44:55" color="">}}




{{<matomeQuote body="でもそれでも複数のorgが必要だし、UXもまだひどいんだよ。AWSアカウント対GCPプロジェクトみたいな感じかな。まあ、組織的な制限を回避する方法はあるけど、UXはまだイケてない。" userName="sofixa" createdAt="2025/05/13 07:14:07" color="">}}




{{<matomeQuote body="彼ら、たくさんorg持ってるよ - https：//wiki.mozilla.org/GitHub#other_github" userName="temp0826" createdAt="2025/05/13 05:49:58" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
