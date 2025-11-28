+++
date = '2025-11-21T00:00:00'
months = '2025/11'
draft = false
title = '依存関係の即時更新、実は危険？セキュリティを高める『冷却期間』が今こそ必須'
tags = ["依存関係", "セキュリティ", "ソフトウェア開発", "アップデート", "バージョン管理"]
featureimage = 'thumbnails/purple5.jpg'
+++

> 依存関係の即時更新、実は危険？セキュリティを高める『冷却期間』が今こそ必須

引用元：[https://news.ycombinator.com/item?id=46005111](https://news.ycombinator.com/item?id=46005111)




{{<matomeQuote body="みんなすぐアップデートしないとヤバいって心配してるけど、実際はそんなことないよ。多くのソフトウェアは継続的デプロイじゃないし、数週間から数ヶ月のスローなリリースサイクルなんだ。ほとんどの脆弱性は特殊な状況でしか悪用されないし。大事なのは依存関係と脆弱性をちゃんと監視して、ヤバいのが出たら自分のプロダクトに影響があるか評価すること。その時だけすぐにアップデートすればいいんだよ。" userName="layer8" createdAt="2025/11/21 17:07:51" color="#785bff">}}




{{<matomeQuote body="「クリティカルな脆弱性があるか評価して、影響がある時だけすぐアップデートする」ってのが、今のエコシステムに欠けてるんだよね。みんな新バージョンが出たら今日中にアップデートしなきゃって思ってるみたいだけど、変更点を確認せず、何か壊れて初めて見るくらい。無駄な作業を増やして、セキュリティ面でも最新バージョンに追従し続けるのはトレードオフだと分かってきたけど、まだ適切なツールがないのが残念だね。" userName="embedding-shape" createdAt="2025/11/21 17:27:09" color="#38d3d3">}}




{{<matomeQuote body="前の職場では、必要な時だけ依存関係をアップデートしてたけど、いざ必要になると何世代も遅れてて地獄だった。担当者は大量の更新と影響範囲の特定、テストをやらされる羽目だよ。俺は、依存関係のリリーストレインに乗るなら、そこそこ最新にしておくべきだと思う。毎日じゃなくていいけど、何ヶ月もメジャーリリースをスキップするのは避けるべきだね。これはNode.jsでの経験だけど、Rustならコンパイルとテストが通れば安心だし、そこまで大変じゃないんだ。" userName="dap" createdAt="2025/11/21 18:40:49" color="#785bff">}}




{{<matomeQuote body="依存関係を監視して、クリティカルな脆弱性があったら評価してアップデートする、って話だけど、実際は多くの大企業でセキュリティチームが「CVEゼロ」を強制してるんだよね。俺の職場では、Infosecチームが脆弱性を検出したら7日以内にアップデートしなきゃいけない。これを逃すと「コンプライアンス違反」で面倒なことになっちゃう。だから、一番楽なのは、アップデートが出たらすぐに全部やることになっちゃうんだ。結果がどうなろうとね。" userName="bumblehean" createdAt="2025/11/21 20:36:39" color="#785bff">}}




{{<matomeQuote body="多くの大企業でセキュリティチームが「CVEゼロ」を強制してるって？解決策は、そういうチームを解雇することだよ。" userName="BrenBarn" createdAt="2025/11/21 20:52:04" color="">}}




{{<matomeQuote body="1年くらい前、俺はDependabotの盲目的な導入に反論したんだ。なぜなら、無意味に追従するとサプライチェーン攻撃の脆弱性を最大化するから。開発チームを些細なバージョンアップで煩わせたくないしね。「Dependabotを2週間遅らせる」のは良いかもしれないけど、Goで作業してるとセキュリティ問題じゃない依存関係アラートはただの迷惑だったりする。動的言語と静的言語ではリスクが全然違うし。常に全部の依存関係を更新すべきって考えは、特定の言語とそのコミュニティに固有のものだよ。" userName="jerf" createdAt="2025/11/21 18:24:26" color="#ff5c5c">}}




{{<matomeQuote body="コミュニティにもよると思う。Node.jsやJavaScript関連を触ってた時は、何かアップデートしようとすると、意味もなく壊れるのがお約束だったよ。<br>一方で、最近のレガシーJavaプロジェクトでJDK 8から21へ移行しつつ大量の依存関係をアップグレードした時は、かなりスムーズだったね。" userName="lock1" createdAt="2025/11/21 19:33:37" color="#38d3d3">}}




{{<matomeQuote body="「適切なツールがない」って話だけど、Dependabotみたいなほとんどのツールはバージョンチェックの間隔を設定できるよ。それ以上に何ができるっていうの？開発者はすでにチェック頻度を減らすことができるはずだけど。" userName="hypeatei" createdAt="2025/11/21 17:32:48" color="">}}




{{<matomeQuote body="こういうのって、クラウドとか政府の規制も関係してるんじゃないの？" userName="IcyWindows" createdAt="2025/11/21 22:40:10" color="">}}




{{<matomeQuote body="今の会社では、プロジェクトごとに「古さ」の指標を出してるよ。依存関係の重み付けは完璧じゃないけど、何もないよりは全然マシだね。" userName="coredog64" createdAt="2025/11/21 20:48:17" color="">}}




{{<matomeQuote body="これって負担って思うかもしれないけど、EUでビジネスしてるなら、実は大きな競争優位性になるよ。2027年12月にはCyber Resilience Actが完全に施行されて、「注意義務」が課されるんだ。盲目的なアップデートでセキュリティ問題起こしたら、最大15Mユーロの罰金かグローバル売上高の2.5%だよ！ほとんどの企業は何も対策してないから、今の君らの「影響評価」って考えは、市場をかなりリードしてるってことさ。" userName="hiAndrewQuinn" createdAt="2025/11/22 08:04:55" color="#45d325">}}




{{<matomeQuote body="頻繁なリリースと同じで、依存関係の更新も定期的（週次とか月次とか）にした方がいいんじゃないかな。やり方を忘れなくなるし、作業が溜まらない。それに、変更が少ない方が問題が出た時にデバッグしやすいよ。もちろん、状況によってはリスケしてもいいけどね。" userName="skybrian" createdAt="2025/11/21 18:50:42" color="">}}




{{<matomeQuote body="まったく同感！バグ修正とか新機能（脆弱性パッチ含む）が必要な時だけ、依存関係を更新すべきだよ。それ以外はシステムにただリスクを増やしてるだけ。サプライチェーン攻撃だけじゃなく、依存関係がたまたま何かを壊しちゃうリスクもあるんだ。依存関係はいいけど、頻繁な変更は良くないよ。" userName="duped" createdAt="2025/11/21 17:23:38" color="#38d3d3">}}




{{<matomeQuote body="問題はチェック頻度じゃなくて、リリースから更新までのタイムラグだよ。Dependabotが動く5分前に新しいパッケージが出ちゃって、それにすぐ更新しちゃったら、チェック頻度を下げても意味ないじゃん。" userName="mirashii" createdAt="2025/11/21 17:43:38" color="">}}




{{<matomeQuote body="この自動化を手助けするツールってあるのかな？パッケージの「古さ」を単なる更新有無じゃなくて、未適用パッチ、マイナー、メジャー更新にそれぞれ重みをつけて、インストールからの経過期間も考慮するような値で評価したり、パッケージごとに重み付けしたりするやつ。例えば、こんな計算式で！<br>pkg_staleness = (1 * missed_patch + 5 * missed_minor + 10 * missed_major) * (month_diff(installed_release_date, latest_release_date)/2)^2<br>proj_staleness = sum(pkg.staleness * pkg.weight for pkg in all_packages)" userName="m000" createdAt="2025/11/22 13:57:42" color="#45d325">}}




{{<matomeQuote body="そんな偶然ってある？バージョンが「成熟」するまで何日か待っても、セキュリティ問題が更新後5分で見つかるってことは同じじゃないかな。Githubもこのシナリオをサポートしてるよ（記事にもあったけど）:<br>https://github.blog/changelog/2025-07-01-dependabot-supports...<br>https://docs.github.com/en/code-security/dependabot/working-with-dependabot/managing-dependabot-security-updates#about-security-updates" userName="hypeatei" createdAt="2025/11/21 18:06:07" color="">}}




{{<matomeQuote body="筆者が言ってた「重大な脆弱性なら、例外として実際の露出を評価すべき」って話に賢明さがあるね。「X日間公開された最新リリースをインストールする」みたいなルールから外れてもいい、ってこと。例えば、カレンダーウィジェットのパッケージで、イスラム暦だけで出る重大な脆弱性があったとして、自分のアプリが西洋暦しか使ってないなら、心配する必要はまったくない。これは理にかなってると思うよ。" userName="xp84" createdAt="2025/11/22 05:08:30" color="#ff33a1">}}




{{<matomeQuote body="私も同じ経験があるよ。Rustを使ってるチームだと、コンパイルとテストが通れば更新にかなり自信を持てるんだ。それに、RustのエコシステムはSemVerをほとんど守ってるから、メジャーじゃないアップグレードは楽だし、メジャーアップグレードなら、すぐにやらないと移行が大変になるってわかるから助かるね。" userName="JoshTriplett" createdAt="2025/11/21 19:12:56" color="#45d325">}}




{{<matomeQuote body="oss-rebuildの`timewarp`ってツール、レジストリをプロキシして過去の状態を返せるんだって。これ使って依存関係の更新を遅らせるのに役立つかもね！<br>URL: https://github.com/google/oss-rebuild/tree/main/cmd/timewarp" userName="tracnar" createdAt="2025/11/21 18:23:32" color="#38d3d3">}}




{{<matomeQuote body="定期的な更新だけじゃダメだよ。記事が言ってるように、依存関係を「遅延」させるのが大事なんだ。毎日更新したって、新しいものが落ち着くまで待つべきだよね。" userName="michaelcampbell" createdAt="2025/11/22 15:27:01" color="">}}




{{<matomeQuote body="セキュリティ修正のためにすぐ新しいリリースに飛びつくのって、なんか変じゃない？他の変更で新しい脆弱性が増えるかもしれないし、セキュリティ・バイ・オブスキュリティみたいだよ。" userName="patrick451" createdAt="2025/11/22 14:35:47" color="#ff5733">}}




{{<matomeQuote body="JavaScript/Node.jsのエコシステムは本当に大変だよ。セマンティックバージョニングも当てにならないし、マイナーアップデートでさえ壊れることがあるんだ。Javaのエコシステムがうらやましいな。" userName="zdc1" createdAt="2025/11/22 12:42:13" color="">}}




{{<matomeQuote body="昔のPHP 5プロジェクトをPHP 8に更新しようとしたら、MSSQLのTLS 1.0問題にぶつかってさ。結局、PHP 5のリレーを作ってSQLリクエストを翻訳したんだ。達成感はあったけど、次に触る人には悪いことしたなって罪悪感が残ってるよ。" userName="adamanteye" createdAt="2025/11/23 05:29:31" color="#ff5733">}}




{{<matomeQuote body="Goでも似たような経験があるよ。URLでインポートするからメジャーバージョンが変わるとURLも変わるし。それに、`v0`の依存関係が破壊的変更し放題なのが一番困るんだよね。" userName="darccio" createdAt="2025/11/22 10:09:54" color="#45d325">}}




{{<matomeQuote body="Dependabotの設定で、セキュリティ更新とそれ以外の更新を別々のプルリクエストに分けてるんだ。そうすれば、セキュリティ更新をじっくり確認できるし、他の更新は情報として見てるよ。" userName="catlifeonmars" createdAt="2025/11/21 21:06:59" color="#ff5c5c">}}




{{<matomeQuote body="あのツール、npmとPythonでまさに求めてたものだ！C++は全部手動でやってるけどね。教えてくれてありがとう！" userName="hoistbypetard" createdAt="2025/11/22 15:17:55" color="">}}




{{<matomeQuote body="「将来はもっと難しくなる」ってのは、その通りだよね。CVEがない限りは、数日〜数週間の冷却期間は最低限必要だと思うな。" userName="pas" createdAt="2025/11/21 18:24:10" color="">}}




{{<matomeQuote body="DependabotはCVEがあるときだけアップグレードを提案するし、強制はしないんだ。チームとしては、便利な機能だと思って活用してるよ。" userName="dudeinjapan" createdAt="2025/11/21 23:37:56" color="">}}




{{<matomeQuote body="うん、分かったよ。冷却期間には反対しないね。" userName="skybrian" createdAt="2025/11/22 17:05:29" color="">}}




{{<matomeQuote body="これって有効なセキュリティ戦略だよ、攻撃者の足元を常に揺さぶるんだから。コードを書いた本人も脆弱性が分からないことあるけど、攻撃者は知ってる。バグのないコードなんて無理だから、変わらないアプリを何ヶ月も何年も分析されるより、常に変化させ続ける方がいいってこと。" userName="jazzyjackson" createdAt="2025/11/22 16:27:45" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="数年ごとのフルシステムアップグレードで共通の依存関係をディストリビューションが管理するDebianの安定モデルって、年々まともに思えてくるよ。一部のエコシステムが早すぎたり、ディストリビューション固有のパッケージのいい話がないのは残念だね。例えば、aptからインストールしてプロジェクトで使えるNode.jsライブラリがDebianにはないと思うけど、間違ってるかな。" userName="gr4vityWall" createdAt="2025/11/21 17:10:18" color="#38d3d3">}}




{{<matomeQuote body="動きと行動を混同しちゃダメだよ。根本的に変わってないのにエコシステムが速すぎるのは、健全じゃなくて病的だね。JavaScriptがここ3年で大きく進歩したって誰も思わないけど、3年前のプロジェクトを更新なしで動かそうとするのは、書き直すのが妥当なくらい難しいんだ。" userName="noosphr" createdAt="2025/11/21 20:24:20" color="#785bff">}}




{{<matomeQuote body="＞ JavaScriptがここ3年で大きく進歩したって誰も思わない<br>言語の話？それともエコシステム全体の話？もし後者なら、多くの人が同意しないと思うよ。Bunは3年くらい前からあるし、Node.jsがオプションなしでTypeScriptファイルを動かせたり、ES Modulesでrequireを使えたりするのも大きな変化だね。最近のエコシステムには前向きな変化が見られるよ。" userName="gr4vityWall" createdAt="2025/11/21 20:48:43" color="#785bff">}}




{{<matomeQuote body="それは動きであって行動じゃないよ。JavaScriptの目的はブラウザでウェブサイトを表示することだよね。自問自答してみて。この3年でウェブサイトへのアクセス方法に大きな改善があった？それとも、もっと遅く、バグだらけで、イライラするものになった？" userName="noosphr" createdAt="2025/11/21 23:05:18" color="#38d3d3">}}




{{<matomeQuote body="いや、でも開発者たちは、もっと遅く、バグだらけで、イライラするウェブサイトを本番環境に、より速くデプロイできるようになったんじゃない！？結局、開発速度（と投資家への利益）だけが大事ってことだよね？？？（皮肉）" userName="FridgeSeal" createdAt="2025/11/22 02:34:37" color="#38d3d3">}}




{{<matomeQuote body="＞ JavaScriptの目的はブラウザでウェブサイトを表示すること<br>それは違うんじゃないかな。JavaScriptは動的な汎用プログラミング言語だよ。ウェブサイトの表示に限定されるものではないし、それが必須というわけでもない。前の投稿で挙げた改善点は、ウェブブラウザ内で恩恵を受けるものではないよ。" userName="gr4vityWall" createdAt="2025/11/22 17:57:15" color="#ff33a1">}}




{{<matomeQuote body="＞ 最新のウェブサイト<br>JavaScriptエコシステムとプロジェクトの実装やデザインの悪さを比較してるよ。<br>＞ 行動 vs 動き<br>君が言いたいのは、変化の動機が、測定可能な目標達成のための（再）行動なのか、重大なCVEの修正なのか、それとも単に開発者が楽しんで数字を増やしてるだけなのかってことだと思う。祖父が言ってたTypeScript実行の最近の機能は、僕的には合理的な目標で、多くのメリットがあるけど、現状では単なる別の手間だね。だから、これは無意味な動きなのか、価値ある行動なのか？目標次第でどちらの意見も正しいと思うよ。" userName="throwawayqqq11" createdAt="2025/11/22 08:48:43" color="#785bff">}}




{{<matomeQuote body="＞ 例えば、aptからインストールしてプロジェクトで使えるNode.jsライブラリがDebianにはないと思う<br>ウェブ検索したらいくつか出てきたよ：https://packages.debian.org/search?keywords=node&searchon=na... （ただし”最適化のため一部の結果が抑制された可能性がある”ってあるから全部じゃないかもね）。他のディストリビューションとは違うだろうけど、Archなんかは何もなさそうだよ。" userName="embedding-shape" createdAt="2025/11/21 17:29:58" color="#ff5733">}}




{{<matomeQuote body="Locally、`apt-cache showpkg ’node-*’`を実行すると、4155件の結果が返ってくるんだ。そのうち727件がTypeパッケージだけどね。`commonjs`コードでこれらを使うのは簡単で、`require`で自動的に見つかるんだ。残念ながら、システムインストールされたパッケージはESM移行のもう一つの犠牲になっちゃったんだよね…動かす方法はいくつかあるけど、以前みたいに自動じゃないんだ。" userName="o11c" createdAt="2025/11/21 20:14:02" color="">}}




{{<matomeQuote body="ESM移行で自動で動かなくなった件について、興味があるんだけど、何がおすすめかな？自動で動くようにするには何が必要なの？もしよかったら教えてほしいな。" userName="gr4vityWall" createdAt="2025/11/23 19:21:28" color="">}}




{{<matomeQuote body="いくつかの解決策としては、コマンドラインで`node`にフックを追加したり、`node_modules`を偽装したり、`import map`を試したり、パスをハードコードしたりとかがあるよ。でも、そのほとんどはシンプルな`require`パスと違ってかなり侵襲的なんだ。ハック以外の具体的なおすすめはないね。JavaScriptの世界はハックの上にハックを重ねるばかりで、どこにも正気なんて見当たらないよ。" userName="o11c" createdAt="2025/11/24 02:19:24" color="">}}




{{<matomeQuote body="システムインストールされたパッケージがESM移行の犠牲になった件は、ESMがもたらす豊かなメリットを考えたら、ほんの小さな代償じゃないかな。" userName="9dev" createdAt="2025/11/21 22:39:26" color="">}}




{{<matomeQuote body="正直、ESMに価値があるとは思えないな。JavaScriptのツールには他の問題もたくさんあるし（エコシステムは置いといて）。特にTypeScriptは、ブラウザと`node`両方の機能を使うプロジェクトを書くのをすごく難しくしてるのが最悪だよ。" userName="o11c" createdAt="2025/11/22 00:18:18" color="">}}




{{<matomeQuote body="Rustを使えば、Debianのリポジトリだけを唯一のソースとして作業を進めることもできるよ。" userName="kykat" createdAt="2025/11/21 17:13:12" color="">}}




{{<matomeQuote body="安定版モデルだと、アプリが古いディストロと新しいディストロの両方をしばらくターゲットにする必要があるんだよね。それは、一部の人にとってはちょっと要求が多すぎるかもしれないな、残念ながら。" userName="mkoubaa" createdAt="2025/11/22 01:14:18" color="">}}




{{<matomeQuote body="これはトレードオフだね。盲目的に依存関係の冷却期間を使う方が、盲目的に新しいリリースを使い続けるより、サプライチェーン攻撃を防ぐメリットがあるっていう仮説は正しいと思うよ。記事は意図的なサプライチェーン攻撃に焦点を当ててるけど、ほとんどのバグや脆弱性は、普通のソフトウェア開発で意図せず導入されたものじゃないかな。意図しないバグでも似たような議論ができるし、SemVerもヒントになるよ。パッチバージョンアップはマイナーバージョンアップより安全だから、冷却期間を短くできるかも。もしバージョン2.3.4を使ってて、新しい2.4.0が出たら、今すぐ必要な機能やバグ修正がない限り、数日待つか、2.4.0で導入された新しいバグが2.4.1で修正されるまで待つ方がいいと思うな。" userName="compumike" createdAt="2025/11/21 18:38:58" color="#785bff">}}




{{<matomeQuote body="うん、まさにそれが前提だね。でも、ゼロデイ脆弱性は開示されたら通常アドバイザリが出るんだ。そうすると、Dependabotなんかでは冷却期間の制御をバイパスするようになってる。知られてる脆弱性に対処する方が、妥協されたアップデートの不確定なリスクよりも重要っていう考え方だね。もちろん、脆弱性の圧倒的多数は普通の偶発的なバグ導入からくるものだよ。でも、依存関係の侵害は、例えばネットワークスタックのどこかでDoS攻撃を受けるのとは違って、すぐに危険だってところが特に興味深いんだ。" userName="woodruffw" createdAt="2025/11/21 18:53:46" color="#38d3d3">}}




{{<matomeQuote body="サプライチェーン攻撃を企む人が、アドバイザリを装ったリリースをして、冷却期間のバイパス機能を悪用できないかな？" userName="mik3y" createdAt="2025/11/22 05:23:59" color="">}}




{{<matomeQuote body="もちろん。攻撃者は脆弱性を悪用するのをただ待つだけさ。もしそれがうまく隠されていたら、しばらくの間は気づかれないだろうし、ターゲットのほとんどのシステムで動作するようになるまで待ってから悪用できるんだ。彼らから見れば、脆弱なターゲットの数、経営陣の焦り、さらには時間の価値とのトレードオフだね。市場投入までの時間が、本来そうあるべきでない議論で勝ちがちだけど、それは一般人にとっては良いニュースだよ。" userName="ted_dunning" createdAt="2025/11/22 08:03:42" color="#ff33a1">}}




{{<matomeQuote body="ゼロデイ脆弱性は、一緒に突破する必要がある他のレイヤーを持つオニオンモデルを使っている場合、悪用できる状態にはならないことが多いってことも考慮すべきだね。あらゆる手段でアウトバウンド接続を積極的に行うように設計されたサプライチェーン脆弱性とは対照的だよ。" userName="Too" createdAt="2025/11/22 08:02:33" color="#ff5c5c">}}




{{<matomeQuote body="ありがとう。このスレッドで誰かこの点を指摘しないかと探してたんだ。冷却期間のセキュリティ手法って、なんか逆“security by obscurity”みたいに見えるね。誰もバックドアを見つけられないから、セキュリティが確保されてるって思い込む。この手法は仮定されたタイムライン次第で、その仮定が崩れたら冷却期間を選ぶのは当てずっぽうになる（あるいは、もう一つのコンプライアンスのチェック項目が増えるだけ）。一方で、その仮定は非常に的確で、将来のバックドアの約90%はそれで軽減できるかもしれない。でも、誰に分かるだろう？これは生存者バイアスに見えるね、だって見つかったケースに基づいて意思決定をしてるんだから。" userName="throwawayqqq11" createdAt="2025/11/22 09:04:48" color="#785bff">}}




{{<matomeQuote body="サードパーティのソースにあるほとんどのCVEは、直接的にも間接的にも悪用できないと思うよ。CVSS採点システムは、モジュールが展開される最悪のシナリオを想定しているんだ。スコアを自動調整したり、誤検出を見つけたりする良い方法がまだないんだよね。" userName="goalieca" createdAt="2025/11/22 14:22:02" color="#ff5733">}}




{{<matomeQuote body="デフォルト設定ってのは常に仮定なんだ。それを変えるってことは、通常、新しい情報があるってことだよ。" userName="hinkley" createdAt="2025/11/21 21:41:48" color="">}}




{{<matomeQuote body="大きな問題は、急速に進化するソフトウェアエコシステムにおける「赤の女王のレース」的な開発だね。みんなが依存関係の変更や自身の開発のために、常にバージョンアップし続けなきゃいけない。それに、急速なエコシステムで見られる「何でも次のリリースで直せる」というまずい設計判断が合わさると、大惨事になるよ。" userName="lambdaone" createdAt="2025/11/22 14:50:44" color="#38d3d3">}}




{{<matomeQuote body="依存関係の数と複雑さを制限するポリシーの方が、ずっと説得力があると思うよ。本当に価値が高くて特化してない限り（独自の宇宙を引き込むような“everything libraries”はダメ）、追加すべきじゃない。プロジェクト全体の依存ツリーは小さくクリーンであるべきだね。ライブラリ自体もLinuxディストリビューションを見習って、機能凍結されセキュリティパッチのみを含むLTS（長期サポート）リリースを提供すべきだよ。そうすれば、理解しやすく定期的な監査もずっと楽になる。" userName="cosmic_cheese" createdAt="2025/11/21 17:09:02" color="#785bff">}}




{{<matomeQuote body="この議論はよく聞くね。人気のある意見だけど、深く考えないと理論上は良いことのように聞こえるだけだと感じるよ。（正直に言うと、個人的には、何百万もの他のプロジェクトで使われているような、実績のあるコードを共通の問題解決のために取り込めるのがすごく好きだし、すでに他の場所で解決した同じ問題を再び解決しなきゃいけないのは嫌なんだ。）適度に広く使われているオープンソースプロジェクトやライブラリで、依存関係としてコードを取り込んでるけど、本当は自分で実装すべきだったと思う例を挙げられる？問題視する「Everything Libraries」の例もいくつか教えてくれる？" userName="xmodem" createdAt="2025/11/21 19:04:57" color="#ff5c5c">}}




{{<matomeQuote body="chalkを取り込むものなら何でもそうだね。エスケープシーケンスを出すにはすごく良い理由が必要だよ。npm（Rust、Pythonなども）エコシステム全体が、ttyなら完全に機能するxterm-256colorターミナルだと仮定してる。だから、適切な出力を得るには`cat`や`less`にパイプする必要がある。chalkを追加するなら、大抵ターミナルのこと全然分かってないってことだね。" userName="skydhash" createdAt="2025/11/21 20:22:39" color="#785bff">}}




{{<matomeQuote body="Pythonの世界では、みんな[red]みたいなコードを文字列に入れてANSIに変換するためにRichをよく使うよね。デフォルトで数MBを支払うことになるんだ。RichはPygmentsも取り込むんだけど、これは基本的に様々なプログラミング言語の構文ハイライトを可能にする字句解析器のコレクションだ。それに、かなり大きな絵文字名のデータベース、Markdownパーサー、テーブル生成やカラム整形ロジックなんかも支払うことになる。でも`\e[31m`を覚えたり、ルックアップテーブルと置換コードを再作成したくない人にとっては、これらは使われないかもしれないんだ。" userName="zahlman" createdAt="2025/11/22 05:10:30" color="#38d3d3">}}




{{<matomeQuote body="Exactly!  ANSI escape codes are old and well defined for all the basic purposes.Pulling in a huge library just to set some colors is like hiring a team of electrical contractors to plug in a single toaster." userName="joquarky" createdAt="2025/11/22 21:19:01" color="#38d3d3">}}




{{<matomeQuote body="Some people appreciate it when terminal output is easier to read.If chalk emits sequences that aren’t supported by your terminal, then that’s a deficiency in chalk, not the programs that wanted to produce colored output. It’s easier to fix chalk than to fix 50,000 separate would-be dependents of chalk." userName="igregoryca" createdAt="2025/11/21 20:51:22" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="I appreciate your frustration but this isn’t an answer to the question.  The question is about implementing the same feature in two different ways, dependency or internal code.  Whether a feature should be added is a different question." userName="Dylan16807" createdAt="2025/11/21 21:08:53" color="">}}




{{<matomeQuote body="Chalk appears to be a great example.I wonder how many devs are pulling in a whole library just to add colors.  ANSI escape sequences are as old as dirt and very simple.Just make some consts for each sequence that you intend to use.  That’s what I do, and it typically only adds a dozen or so lines of code." userName="joquarky" createdAt="2025/11/22 21:13:22" color="#ff5733">}}




{{<matomeQuote body="The problem isn’t the implementation of what I want to do. It’s all of the implementations of things I never cared about doing. And the implementation of what I want to do that is soooo much more complex than it needs to be that I could easily have implemented it myself in less time.The problem is also less about the implementation I want, it’s about the 10,000 dependencies of things I don’t really want. All of those are attack surface much larger than some simple function." userName="ted_dunning" createdAt="2025/11/22 08:07:45" color="#38d3d3">}}




{{<matomeQuote body="Most of your supply chain attack surface is social engineering attack surface. Doesn’t really matter if I use Lodash, or 20 different single-function libraries, if I end up trusting the exact same people to not backdoor my server.Of course, small libraries get a bad rap because they’re often maintained by tons of different people, especially in less centralized ecosystems like npm. That’s usually a fair assessment. But a single author will sometimes maintain 5, 10, or 20 different popular libraries, and adding another library of theirs won’t really increase your social attack surface.So you’re right about ”pull[ing] in universes [of package maintainers]”. I just don’t think complexity or number of packages are the metrics we should be optimizing. They are correlates, though.(And more complex code can certainly contain more vulnerabilities, but that can be dealt with in the traditional ways. Complexity begets simplicity, yadda yadda; complexity that only begets complexity should obviously be eliminated)" userName="igregoryca" createdAt="2025/11/21 20:38:38" color="#785bff">}}




{{<matomeQuote body="I think AI nudges the economics more in this direction as well. Adding a non-core dependency has historically bought short-term velocity in exchange for different long-term maintenance costs. With AI, there are now many more cases where a first-party implementation becomes cheaper/easier/faster in both the short term and the long term.Of course it’s up to developers to weigh the tradeoffs and make reasonable choices, but now we have a lot more optionality. Reaching for a dependency no longer needs to be the default choice of a developer on a tight timeline/budget." userName="buu700" createdAt="2025/11/21 18:33:14" color="#ff5733">}}




{{<matomeQuote body="Let’s have AI generate the same vulnerable code across hundreds of projects, most of which will remain vulnerable forever, instead of having those projects all depend on a central copy of that code that can be fixed and distributed once the issue gets discovered. Great plan!" userName="xmodem" createdAt="2025/11/21 19:10:12" color="#38d3d3">}}




{{<matomeQuote body="You’re attacking a straw man. No one said not to use dependencies." userName="buu700" createdAt="2025/11/21 19:12:31" color="">}}




{{<matomeQuote body="昔、勤めてたスタートアップが買収されることになり、デューデリジェンスに参加したんだ。外部監査がリポジトリをスキャンして、俺のチームは数千のコードスニペットを修正することに。ほとんどは既存の依存関係の関数呼び出しに置き換えられたよ。Stack Overflowで一番コピペされてたバグだらけのコードもいくつか見つかったんだ。もしデューデリジェンスがなかったら、今も残ってたはず。https://news.ycombinator.com/item?id=37674139" userName="xmodem" createdAt="2025/11/21 19:56:15" color="#38d3d3">}}




{{<matomeQuote body="もちろん、新しい依存関係を保守的に追加するべきって意見には反対しないよ。でも、あまりに自由すぎてもダメだよね。例えば、GitHubスターが2つのライブラリとか、10年前から更新されてないやつ、未解決のCVEがあるライブラリ、99%使わないような巨大コード、不安定なAPIに頼るのは問題。どんなコードでも負債になるし、依存関係自体もコストがかかる。AIを使ってもファーストパーティコードが魔法みたいに安全になるわけじゃない。ただ、AIがファーストパーティコードの初期費用を減らすから、目先の利益で短絡的な依存関係を選んじゃう誘惑は減ると思うんだ。" userName="buu700" createdAt="2025/11/21 21:13:26" color="#ff5c5c">}}




{{<matomeQuote body="GitHubスターが少ないライブラリでも、AIの不正確な生成物よりはマシだと思うな。古いライブラリだって、更新されてなくてもずっと動いてるならむしろ頑丈ってことじゃない？CVE問題は、ライブラリ導入後に発覚することが多いよ。巨大なコードを取り込む話だけど、標準ライブラリの5%も使ってないことなんてザラだよね。チームがメンテナンスリソース不足なのが問題で、コード複製じゃ解決しないよ。”依存関係にCVEがあるから更新しろ”って言われるのが、むしろメンテの重要性をリーダーに伝える数少ない方法だったりする。ファーストパーティコードは個人の負債だけど、サードパーティコードは共有の負債だね。" userName="xmodem" createdAt="2025/11/21 22:55:38" color="">}}




{{<matomeQuote body="AIの生成物よりオリジナルがいいってのは分かるけど、依存関係自体が負債なんだ。無名のライブラリだとサプライチェーン攻撃に気づきにくいし、突然メンテされなくなるリスクもある。標準ライブラリの5%しか使わないって話は、俺が言ってる”非コア”の話で、むしろ俺の意見を補強してるんだよ。AIは最適な依存関係管理戦略を選ぶ自由をくれるんだ。ライブラリからコードをコピペしろとは言ってない。でも、もしUIコンポーネントを200行のJSXで自分で書けて、5分でレビューできるなら、なんでカスタマイズが必要な巨大なUIフレームワークを入れるの？それじゃ初期費用も節約できないし、何年も破壊的変更やバグに苦しむことになる。すべてトレードオフなんだから、ケースバイケースで考えるべきだよ。" userName="buu700" createdAt="2025/11/21 23:35:03" color="#ff33a1">}}




{{<matomeQuote body="GuavaやApache CommonsみたいなJavaのライブラリは、ほとんど標準ライブラリみたいなもんだよね。たとえ99%使わなくても、何か問題を解決するなら導入するのが普通だと思う。俺の意見は白黒はっきりしてるわけじゃないんだ。AIがフロントエンドでの依存関係の選択肢をどう変えるのかはまだよく分からないな。Stack Overflowから間違ったコードをコピペしたって話があったけど、AIが訓練データから似たようなコードを生成するのも、機能的にはコピペと同じだと思ってるよ。" userName="xmodem" createdAt="2025/11/23 11:09:19" color="">}}




{{<matomeQuote body="最高のツールを使うべきって点では全く同意見だよ。俺が言ってるのは、開発者が以前は”理想的にはXだけど、時間とリソースの制約で新しい依存関係Yを選ぶしかない”って考えてたのが、AIの登場で理想的な解決策Xのコストが下がったから、選択が変わるってこと。AIがXのコストを減らせるってのは経験から断言できるよ。AIが訓練データからXの正確な実装をいつも生成するって仮定は違うんじゃないかな。フロントエンドにはXの例が多いけど、バックエンドでも同じ論理が当てはまる。結局、AIがこの選択肢を大幅に増やしてくれるってのが俺の主張だよ。" userName="buu700" createdAt="2025/11/23 22:08:26" color="#38d3d3">}}




{{<matomeQuote body="高度に特化した依存関係を使うと、かえって依存関係の総数は増えない？依存関係を減らして自分でコードを書き直すと、メンテナンスの手間もコンパイル時間も増えちゃうよね。" userName="tcfhgj" createdAt="2025/11/21 18:32:57" color="">}}




{{<matomeQuote body="多くのプロジェクトは依存関係を使ってるけど、ほんの一部しか使ってないことが多いよね。例えば、Formik（npm）をたった一つのフォームのために導入したりとか、Momentをたった一つの日付をフォーマットするためだけに使ったりしてるんだ。" userName="skydhash" createdAt="2025/11/21 21:37:19" color="">}}




{{<matomeQuote body="依存関係が低レベルになればなるほど、その依存関係自体がまた別の依存関係を持つのは納得しにくいよね。これはライブラリ間の競争点になるべきだし、C++の世界ではよくある話だよ。" userName="mkoubaa" createdAt="2025/11/22 01:15:55" color="">}}




{{<matomeQuote body="あなたのコメント、100回アップボートするためなら100ドル払ってもいいくらいだよ！" userName="pengaru" createdAt="2025/11/21 17:16:15" color="">}}




{{<matomeQuote body="最新版へ常にアップデートしろって圧力、おかしいよね。ソフトが毎回良くなるとは限らないし、アップデートで既知のバグが未知のバグになるだけかも。盲目的な更新じゃなくて、問題があればパッチを当てればいいんだよ。" userName="DrScientist" createdAt="2025/11/21 17:27:22" color="#ff5733">}}




{{<matomeQuote body="前のコメントの例だけど、log4shellがまさにそれ。log4j 1.xなら脆弱性なかったし、バグは2.xで入ったんだ。1.xにも脆弱性はあったけど、普通の使い方なら問題なかったよ。" userName="cesarb" createdAt="2025/11/22 00:28:30" color="#ff5733">}}




{{<matomeQuote body="log4jパニックの時、古いバージョンがディスクにあるだけでITセキュリティが発狂したんだ。でもね、俺らが更新してなかったからこそ脆弱性がなかったって、俺が指摘しなきゃいけなかったんだよ。" userName="DrScientist" createdAt="2025/11/24 11:13:16" color="#785bff">}}




{{<matomeQuote body="log4jの脆弱性は、実は導入当初は機能だったんだ。数年経って初めてセキュリティ脆弱性って言われた。ActiveXとかも同じだよ。ダウングレード攻撃も、最初は互換性のために良いとされてたのに、後からダメってなったんだ。" userName="jbkgujklgui" createdAt="2025/11/22 16:40:10" color="#ff33a1">}}




{{<matomeQuote body="昔はリリース間隔が長くて品質も低かったから、改善も大きかったんだ。でも最近のソフトはもう「完成」してる感じで、ほとんど細かい変更ばかりで大きくは良くならないよね。もしかしたら、俺が使ってるソフトが安定してるってことなのかな。" userName="switchbak" createdAt="2025/11/21 18:59:45" color="">}}




{{<matomeQuote body="アップデートサイクルを自分で管理するのか、それとも人に任せるのか。自分でやる労力とリスク、依存関係の変動で生まれるリスクや手間、そのバランスが大事なんだ。常に最新にする方針は開発速度を上げるけど、その分変更も多くなるんだよね。" userName="DrScientist" createdAt="2025/11/24 10:42:04" color="#ff33a1">}}




{{<matomeQuote body="コモンズの悲劇みたいに、誰も責任を取りたくなくて、ただ待つだけだとどうなるんだ？みんなが待つなら、誰かが最初に犠牲になるのを待つってこと？アップグレードを待つのは技術的負債を溜めるようなもんだよ。待てば待つほど辛くなるから、少しずつ上げて、ゼロトラストや監視で変な動きを早く見つけるべきだよ。" userName="gbin" createdAt="2025/11/21 20:49:59" color="#ff5733">}}




{{<matomeQuote body="新しいバージョンが出た後、1週間くらい待ってもそんなに技術的負債にはならないよ。記事の筆者も言ってるけど、人気のOSSツールはリリースされたらすぐに脆弱性スキャンされるし。みんなが1週間待っても、その間に発見されることは多いし、すぐに更新する人もいるからね。" userName="tempestn" createdAt="2025/11/21 20:53:02" color="">}}




{{<matomeQuote body="悪意のあるパッケージが発見されるのは、ユーザーに公開されたからって考えてるけど、最近のサプライチェーン攻撃ではそうじゃなかったんだ。むしろ、メンテナーが被害を元に戻すための時間を稼いだだけだよ。" userName="catlifeonmars" createdAt="2025/11/21 21:04:23" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
