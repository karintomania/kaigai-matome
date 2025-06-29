+++
date = '2025-06-22T00:00:00'
months = '2025/06'
draft = false
title = 'Git Notes Gitの最高なのに不遇な機能とは？'
tags = ["Git", "Git Notes", "バージョン管理", "メタデータ", "Tips"]
featureimage = 'thumbnails/orange3.jpg'
+++

> Git Notes Gitの最高なのに不遇な機能とは？

引用元：[https://news.ycombinator.com/item?id=44345334](https://news.ycombinator.com/item?id=44345334)




{{<matomeQuote body="Git trailersっていうあまり知られてない機能があるんだ。見てみてよ：https://alchemists.io/articles/git_trailers<br>コミット作成時に入れられるキーバリューのデータ構造だよ。いくつかのシステムではメタデータの追加に使われてる。例えば、GerritはChange-Idに使ってるね。" userName="oftenwrong" createdAt="2025/06/22 14:20:54" color="#ff5c5c">}}




{{<matomeQuote body="違うシステムからもう一つ似た機能を紹介するね。PostgreSQL COMMENTだよ：https://www.postgresql.org/docs/17/sql-comment.html<br>これはPostgreSQLのいろんなデータベースオブジェクトにテキストをつけられるんだ。PostgreSQLにも、編集できる構造化されたキーバリューのデータベースオブジェクトメタデータみたいな機能があるといいな。" userName="oftenwrong" createdAt="2025/06/22 14:38:04" color="">}}




{{<matomeQuote body="余談だけど：GOOGで働いてた頃のGerritはマジで懐かしい。でもさ、2020年代のデプロイはマジでクソだよな。ローカルでインスタンス動かそうとして、githubのリポジトリと連携させようとしたけど、イライラするだけだった。<br>GHよりコミット間の変更追跡とかをうまく処理できて、GHと連携しやすい代替ツールってない？ GHのコードレビューツールは1万個の太陽の熱くらい嫌い。" userName="cmrdporcupine" createdAt="2025/06/22 16:55:42" color="#ff33a1">}}




{{<matomeQuote body="GitLabはstacked diff workflowのネイティブサポートを積極的に開発してるよ。スタック作成のCLIサポートはGitLab 17で入ったし、今はコードレビューworkflowに取り組んでるね。<br>正直、俺はJujutsuでいくつかのbranch作って、MRを手動でチェーンさせるのが一番楽だと思う。glab stackコマンドも裏でそうしてるしね。将来のバージョンのコードレビューツールに期待してる。<br>ただ、GitHub向けならGraphiteが一番良さそうだけど、仕事ではGitLab使ってるから、大規模での使用経験がない分、GitHubツールの良い判断者じゃないかも。" userName="hxtk" createdAt="2025/06/22 20:36:35" color="#45d325">}}




{{<matomeQuote body="stacked diffsは置いといて、正直、コミットハッシュが変わってもコメントを追跡できる機能があれば嬉しいんだ。これはGitLabもGitHubもできない：<br>1. ”これを変更してください”<br>2. ＼変更してforce-pushする［だって汚いgit history嫌いだから］＼<br>3. コメントが元の行か新しい行に紐づいたままになる。<br>Gerritはこのフローで全く問題ない。GHもGLもできないんだ。<br>GHは「fix」コミットを積み重ねて、merge commit（うわっ）か全体をsquash（場合によっては良くない）するのを強制したがる。" userName="cmrdporcupine" createdAt="2025/06/22 21:18:36" color="#ff5c5c">}}




{{<matomeQuote body="面白いね。Gerritってどうやってこれ管理してるの？ コメントはコミットじゃなくて、ソースの中身に関連付けられてるってこと？" userName="angus-g" createdAt="2025/06/23 01:10:48" color="">}}




{{<matomeQuote body="興味深い、この機能は知らなかったな。<br>俺はconventional commitsの大ファンなんだ。trailersはそういうmetadataを追加するのにもっと良い方法みたいだね。<br>手動でcommit messageに追加するのと、`--trailer`フラグを使うのは機能的に同じなの？" userName="imiric" createdAt="2025/06/22 16:49:38" color="">}}




{{<matomeQuote body="俺はgit notesを、自分のbranchのどのcommitでunit testsを実行したかをマークするのに使ってたんだ（そうすれば俺のscriptがそれらをスキップするから）。これは、git rebase -iでbranchを完璧に整形したいようなopensource upstreamで作業する時に便利だったんだ。<br>今はgit trailersの方がその情報を置くのには良い場所みたいだね。<br>change idsに関して：git自体にそういうのがあればいいのにって思う。そうすればtoolingも理解してくれるだろうし。commit messageでcommitを識別するのは脆いよね。特にMRのために更新するかもしれないし。commit idはcommitを一意に識別するけど、同じ変更が他のcommitの上に移される場合、有用な識別子じゃない。<br>edit：あ、あれらは実際にはcommitの一部なんだね。notesはそうじゃないから、俺の用途には良い代替にならないな。" userName="_flux" createdAt="2025/06/22 17:05:48" color="#ff33a1">}}




{{<matomeQuote body="Gerritはユニークな値を持つ“Change-Id” trailerを使うんだ。commitを“fix up”する時、commit SHAは変わるけどchange idは同じまま。そうやって、同じchange idを持つ異なるcommitを同じchangeのpatchsetsとして識別できるんだ。<br>これは俺の記憶に基づいてる（しばらくGerrit使ってない）から、正確じゃないかもしれないけどね。<br>前の仕事でGerrit使ってたけど、懐かしいな。人気がある（そしてもちろん便利、それは否定しない）GitHubより絶対Gerritの方が好き。" userName="naiquevin" createdAt="2025/06/23 02:07:04" color="#785bff">}}




{{<matomeQuote body="俺PostgreSQL COMMENT好きなんだよね。Supabaseで友達のためにprototypeアプリ作った時、全テーブルにCOMMENTつけたわ。" userName="stephenlf" createdAt="2025/06/22 15:20:16" color="">}}




{{<matomeQuote body="Git Notesは素晴らしい機能だけど、GitHubのパーサーだと上手くいかないんだよね。例えば https://github.com/jchester/spc-kit/blob/eb2de71d815b0057e20... と https://github.com/jchester/spc-kit/blob/main/sql/02-spc-int... を比べてみて。オリジナルの表示だと、さっと見る人にはcompetentじゃないみたいに見えちゃう。それに、JetBrains IDEsみたいなツールなら、どのcommentsがどのDDLに属してるかちゃんと分かるんだよ。" userName="jacques_chester" createdAt="2025/06/22 18:50:03" color="">}}




{{<matomeQuote body="conventional commitsのアイデアは好きなんだけど、便利なカテゴリが少なすぎて、自分で作るとtoolingが認識してくれないのが困るんだよね。conventional commitsなんて名前付けて、何かをコード化するのも、ちょっとcounterintuitiveな感じもするけど。" userName="chuckadams" createdAt="2025/06/22 22:54:13" color="">}}




{{<matomeQuote body="君のChange-Id footerについての理解、僕と同じみたいだね。今はそういう仕組みだけど、gitとかgerrit、jj-vcsとか、他の関係者たちが、jj-vcsのアプローチで標準化しようってemailで話し合ってるらしいよ。詳しくは https://lore.kernel.org/git/CAESOdVAspxUJKGAA58i0tvks4ZOfoGf... を見て。" userName="hxtk" createdAt="2025/06/23 02:22:44" color="#ff5c5c">}}




{{<matomeQuote body="流れに乗ろうとはしてるんだけど、issue tracking systemと連携するのにtrailerとか、もっと自然な場所があるのに、issue trackersのhappy pathから外れてるから使う価値がないのが frustrating なんだよね。<br>issue trackersって流行り廃りがあって、flavor of the weekを使ってることが多くて、それがfeature completeじゃなくて、新しい機能もglacial paceでしか追加されないのが問題を exacerbate させてると思う。<br>要するに、tracking目的でlinear ticketのtitleから branch names 作って、PR titlesもそのlinear branch nameを使わなきゃいけないのに annoyed って話。metadataでcommitsとissueを関連付けられたら良いのにって思うけど、まあ、これはインターネットでgripe aboutするレベルの問題かな。" userName="adregan" createdAt="2025/06/22 16:11:41" color="">}}




{{<matomeQuote body="rebaseを多用するworkflowでテストを走らせる時のtrickとして、commit自体のmetadataじゃなくて、commitのtree hashをcache keyに使うといいよ。<br>そうすると、commitの内容が同じならテストはskipされるし、commit messageの変更とかsquashesには影響されないんだ。<br>でも、commitsのreorderingみたいな状況ではre-runされる（reordered rangeだけ、その後のunchanged commitsはcacheが効く）。これは重要だと思う、notesはcommitsがrewriteされてもついてくるけど、reorderingでlogical contentsが変わっちゃう可能性があるからね？commitのamendingとか、non-adjacentな2つのcommitのsquashingも、両方のnotesをmergeしちゃったり、cacheをinvalidateできなかったりするかもしれない？<br>僕の `git test` commandはこうやってるよ https://github.com/arxanas/git-branchless/wiki/Command:-git-...<br>---<br>cache keyに他の چیز を使いたいuse-casesも見たことあるよ：<br>- The commit message：僕の最近のworkflowでは、特定のtest commandsをmessageに埋め込んでるから、test commandsが変わったらテストをre-runしたいんだ。<br>- The patch ID：main branchとのrebase/mergeとか、commitsをreorderする時にテストをre-runしたくない場合に特に有効。<br>残念ながら、今は良いsolutionがないんだよね。" userName="arxanas" createdAt="2025/06/22 17:33:29" color="#ff5c5c">}}




{{<matomeQuote body="TIL `--trailer` CLI option。text editorでcommit messageを編集して、manuallyにtrailersを追加してたんだ（GitHubの `Co-Authored-By` はこれで動く）。<br>`git log` formatで使えるのは pretty cool だね。" userName="Ayesh" createdAt="2025/06/23 06:04:03" color="">}}




{{<matomeQuote body="MS SQLにもExtended Propertiesっていう似た機能があるんだけど、APIがかなりtediousなんだ。" userName="Pxtl" createdAt="2025/06/22 15:59:39" color="">}}




{{<matomeQuote body="僕の場合、commitsをrearrangingする時にNotesをinvalidateしたかったんだ。順番を変えるとbugsが入る可能性もあるからね。でも、pull requestを送る前に全てのcommitsがtestedであることを保証する single command が欲しかったんだ。その時はout of the boxでそう動いたのかもしれない（rebasingでnotesがremoveされるとか）、そうじゃなければ、単にgit commit idをnoteに追加したんだと思う、それはvalidity checkingに effectivelyに使えるから。<br>もちろん、notes mechanismがなかったら、just a local fileを使えただろうね。でも、git logでmessagesを見れるのはniceだよ。<br>まあ、両方の種類のkeysがこの目的にはusefulだろうね、exact needsによるけど。" userName="_flux" createdAt="2025/06/22 20:38:06" color="#ff5c5c">}}




{{<matomeQuote body="Change IDってGit自体にあったらいいのにね、ツールも理解するし。コミットメッセージで識別するのって、いじる可能性あるから危ういじゃん。コミットIDは確かに唯一無二だけど、他のコミットの上に動かされると使いにくいんだよね。Linux Kernelとか、変更を単位にするプロジェクトは標準化しようとしてるみたいだよ。Gitのサポートは必須じゃないけど、いつか公式機能になるかもね。URL: https://lore.kernel.org/git/CAESOdVAspxUJKGAA58i0tvks4ZOfoGf..." userName="masklinn" createdAt="2025/06/22 18:00:21" color="#ff5733">}}




{{<matomeQuote body="GitHubが[skip ci]の代わりにトレーラー使ってるって最近知ったんだ。たぶん後続の人がコミットメッセージ消しやすくするためじゃないかな。なんで最後のトレーラーじゃないといけないのか分かんないけど、regexの関係かな？URL: https://docs.github.com/en/actions/managing-workflow-runs-an..." userName="mdaniel" createdAt="2025/06/22 16:03:06" color="#38d3d3">}}




{{<matomeQuote body="PostgreSQLのコンテンツ好きだなあ。昔、テーブルとかカラムのコメントにメタデータ入れる商用製品で使ったことあるけど、その製品、もうないんだ。開発者としてめっちゃイケてるって思ったときほど、市場見失いがちだよなっていう教訓になったよ。" userName="eastbound" createdAt="2025/06/22 18:51:55" color="">}}




{{<matomeQuote body="Supabaseだとほぼ必須だよね。でもコメントをマイグレーションで追加するのってちょっと面倒なんだよな、実際のSQL書いてるなら話は別だけどさ。ほら、Supabaseとかでね。" userName="codesnik" createdAt="2025/06/22 16:18:39" color="">}}




{{<matomeQuote body="あれ（PostgreSQLのコメント）嫌いなんだよね。いっぱいあるテーブルのデータに、ソースとか超丁寧に整理したメタデータ入れてたんだけど、他の誰かがDBをバックアップしてリストアしたら、全部消えちゃったんだよ。" userName="jaakl" createdAt="2025/06/22 20:14:10" color="">}}




{{<matomeQuote body="--trailerフラグ使うのと、手動でコミットメッセージに追記するのって、機能的には同じ？<br>そうだよ。フラグはスクリプトには完璧だけど、手動でテキスト入れるのと全く同じ機能なんだ。" userName="wiktor-k" createdAt="2025/06/22 18:13:01" color="#45d325">}}




{{<matomeQuote body="phabricatorはそういうメタ履歴追跡を結構うまくやってた気がするな。たしか放棄されてフォークされたから今はどうかわからないけど。メタ履歴を追跡する最高のやり方は、VCSに直接組み込むことだよ。だからMercurialが最強。GitlabのフォークでMercurial対応のHeptapodは、Mercurial自体の開発に使われてるくらいだから、うまくいってるみたいだね。" userName="ezst" createdAt="2025/06/22 17:37:30" color="#785bff">}}




{{<matomeQuote body="プロジェクトがSQLファイルたくさんあるなら、ワークアラウンドだけど、各ファイルから “comment on” ステートメントを別のファイルに分けるのはどうかな？<br>例えば、02ファイルにcreate文とか入れて、03ファイルにはそれに関するcomment onだけ入れるとか。02と04にコメントで03と05を参照させたり、コメントファイルにPostgreSQL用だけどGitHubで表示がおかしいって書いたりね。ちょっとごちゃごちゃするけど、まあワークアラウンドだし。でも試す価値はあるかも。" userName="57473m3n7Fur7h3" createdAt="2025/06/23 04:56:09" color="#38d3d3">}}




{{<matomeQuote body="「VCSのWeb画面が文字列をちゃんと解析しない」ってのは、PostgreSQL機能への文句じゃなくて、シンタックスハイライトのバグだよ。COMMENT機能はVIEWとかFUNCTIONには向いてないね、それらは定義の中にコメント書けるから。いや、一番役立つのは、TABLEとかCOLUMNとか、コメントを残してくれないオブジェクトにコメント付ける時なんだよ。" userName="da_chicken" createdAt="2025/06/22 21:04:39" color="#45d325">}}




{{<matomeQuote body="AIがやった変更を追跡するのにGit Notes使いたかったんだけど、対応してないのが困ったな。" userName="pyuser583" createdAt="2025/06/23 06:12:10" color="">}}




{{<matomeQuote body="Forgejoでもバージョン10から対応したらしいよ。<br>https://forgejo.org/2025-01-release-v10-0/#new-features<br>https://codeberg.org/forgejo/forgejo/pulls/4753" userName="homebrewer" createdAt="2025/06/22 14:57:47" color="#ff33a1">}}




{{<matomeQuote body="それめっちゃクールだけど、rebaseとかamendみたいに履歴書き換える時にNotesってどうなるの？新しいコミットにもちゃんと付いてくるの？それとも消える？<br>あと、blobやtreeにNotes付けるのは、ファイルじゃなくてその内容に付くってこと？内容変わったらNotes消えちゃうの？" userName="xg15" createdAt="2025/06/22 19:16:00" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="コピーされるかどうかは設定できるよ。デフォルトでamendとrebaseではコピーされるようになってる。<br>詳しいことはgit-configの`notes.rewrite`を見るといいよ。" userName="rlpb" createdAt="2025/06/22 19:31:11" color="#45d325">}}




{{<matomeQuote body="いや、デフォルトじゃコピーされないよ。<br>`notes.rewrite.amend`と`notes.rewrite.rebase`がtrueでも、どのNotesを書き換えるか指定する`notes.rewriteRef`も必要で、これにはデフォルト値がないんだ。<br>全部のNotesに適用したいならglob指定すればいけるけどね。" userName="chrishill89" createdAt="2025/06/23 15:31:46" color="#ff5c5c">}}




{{<matomeQuote body="あー、警告サンキュー！Gitのドキュメントには`refs/notes/commits`ってデフォルトのcommit Notesを有効にするって書いてるけど、なんでこれがデフォルトじゃないんだろ？そもそも、なんでNotesの書き換えがデフォルトでオフになってるわけ？" userName="fnl" createdAt="2025/06/25 20:30:34" color="">}}




{{<matomeQuote body="俺、10年くらいGit使ってるのにGit Notesなんて知らなかったよ。クールだね！<br>著者が言ってる「forgeにコードレビューのメタデータをGitの中にオフラインで置けるようにしてくれ」ってのは、GitHubみたいな商業的なforgeには響かないだろうね。<br>だって、Gitリポジトリの価値の多くはGitHubみたいなforgeにロックインされてるわけじゃん？自分たちの価値をコモディティ化するわけないよ。GitHubを責めてるわけじゃなくて、商業ビジネスなら当然だよね。" userName="akoboldfrying" createdAt="2025/06/22 09:53:31" color="">}}




{{<matomeQuote body="その機能を差別化ポイントとして提供する新しいサービスが出てくれば、他の競合も追いつくために（その機能を）また追加するかもね。" userName="esafak" createdAt="2025/06/22 13:52:35" color="">}}




{{<matomeQuote body="見つけた関連イシューはこれだけ→https://codeberg.org/forgejo/forgejo/issues/6385<br>たぶん誰も提起してないからじゃない？" userName="bicolao" createdAt="2025/06/22 14:58:01" color="">}}




{{<matomeQuote body="ニワトリと卵みたいだよね．ほとんどのプロバイダーがサポートしてないからあまり知られてないし、知られてないからサポートするプレッシャーもかからない．" userName="saghm" createdAt="2025/06/22 15:48:29" color="#38d3d3">}}




{{<matomeQuote body="Git notesが役立つのは、コミットした後で、みんなが見れるようにテキストを追加したい時だけだね．Acked-Byとかメーリングリストの議論リンクは良い例じゃないと思う．これらはコミットする時には分かってるだろうし．コミットメッセージは長さ無制限だから、forgeでの議論全部そこに入れられるしね．より良いユースケースは、後でrevertされたコミットにnoteを追加することかな．" userName="kccqzy" createdAt="2025/06/22 13:46:15" color="#ff5c5c">}}




{{<matomeQuote body="よくある失敗は、直してないバグを直したと自慢するコミットメッセージとか、自分の修正で発生した新たなバグを一つのバグに結びつけることだね．自分が変わってるのかもしれないけど、何のためにそのコードが書かれたかを思い出すために注釈さえ見ない同僚が多すぎるんだ．彼らはとにかくやってみて、誰も問題の原因を自分に結びつけないことを願ってる．<br>でも、バグが直るのを待ち焦がれていた怒った顧客に対応して、そのバグがすぐに再発するのを経験すると、バグ修正についてはもっと慎重になるかもね．<br>複数のバグを一度に直すにはrefactorが必要なことが多いし、refactorは新しい機能の機会やパフォーマンス向上につながることもよくあるんだ．" userName="hinkley" createdAt="2025/06/22 18:39:13" color="">}}




{{<matomeQuote body="＞Acked-Byとかメーリングリストの議論リンクは良い例じゃないと思う．これらはコミットする時には分かってるだろうし．<br>コミットに関する議論（レビュー）や承認は、コミットが作られる前に起こるわけないだろ．<br>＞より良いユースケースは、後でrevertされたコミットにnoteを追加することかな．<br>このユースケースにはコミットメッセージの方が向いてるよ．git blameすると、そのファイルの最新の変更が表示されるんだ．もしあるコミットが別のコミットからの変更をrevertしたら、古いコミットをrevertする新しいコミットがblameに表示されるからね．" userName="Zambyte" createdAt="2025/06/22 15:22:31" color="#45d325">}}




{{<matomeQuote body="＞コミットに関する議論（レビュー）や承認は、コミットが作られる前に起こるわけないだろ．<br>フィーチャーブランチでのコミット前には起こらないけど、メインの開発ブランチにマージする前には起こり得るよ．レビューが終わったフィーチャーブランチからの変更を統合するためにrebaseやmerge commitが頻繁に必要になることを考えると、この種の情報をマージ前に追加（あるいは必須にする）できない理由が分からないね．" userName="saghm" createdAt="2025/06/22 15:45:44" color="#ff5733">}}




{{<matomeQuote body="rebaseの履歴を破壊する問題は、それだけで長文の愚痴になるね．" userName="Pxtl" createdAt="2025/06/22 16:01:11" color="">}}




{{<matomeQuote body="それはgitのUIの問題で、隠されたコミット（rebase前）を見つけにくくしてるんだ．コミットは破壊されてなくて、隠されてるだけだよ．Jujutsu CLIは、このUIの問題を直してくれてるから良いね．" userName="Zambyte" createdAt="2025/06/22 16:49:59" color="">}}




{{<matomeQuote body="それだけじゃない．gitには隠されたrebase前のコミットとrebase後のコミットの間に内部的なリンクがないみたいで、それが後続のコミットをそのrebaseをまたいでコピーする能力を損なってるんだ．<br>うん、rebaseをまたいで後続のコミットを移動するのは避けるべきだって言われてるけど、それを避けるべき理由は、gitがそれがすごく苦手だからなんだよね．" userName="Pxtl" createdAt="2025/06/23 12:59:08" color="#ff5733">}}




{{<matomeQuote body="Rebaseってさ、git logできれいな履歴を見せたいから使われることもあるんだよね。GitのUIの問題を回避するのにさ。" userName="leni536" createdAt="2025/06/22 19:42:38" color="">}}




{{<matomeQuote body="この意見には完全に disagree できないな。Feature branch ではしょっちゅう commit するけど、それを main に全部含めたくないんだ。Rebase で review 前後に history をきれいに整理するんだよ。開発中の exact history を残すのはダメだと思うな。Git の UI は最悪だけどね。History をいじるのが問題じゃなくて、UI の悪さが根本原因だと思うよ。" userName="saghm" createdAt="2025/06/23 00:54:31" color="#785bff">}}




{{<matomeQuote body="自分の repository では好きにすればいいけど、public にしたら別。Push されたら、もうみんなが pulling してるって考えるべきだよ。Rebase で history 変えたら、新しい branch 作ったのと同じ。Git は decentralized な system だから、Bitcoin みたいに pushed commit は final なんだ。Merge commits が混乱を解決するやり方だよ。" userName="GuB-42" createdAt="2025/06/23 02:15:16" color="#ff33a1">}}




{{<matomeQuote body="Git の使い方について fundamental に disagree だね。Public repo だからって、tool がサポートしてるからって、全ての branch を永久に残す必要はないと思う。もし confusing なら、それは他の人が public feature branches を publish することで何か intent を伝えてると誤解してるからじゃないかな。" userName="saghm" createdAt="2025/06/23 15:05:54" color="">}}




{{<matomeQuote body="これが Git の history を壊す behavior に対する俺の core complaint だよ。Git は clean history を望んでるみたいだけど、共同作業した history を変えると awful behavior になる。これは fundamental flaw だね。Git は real な history を better に使うか、history modification に対応する better な automation や mapping concepts が必要だよ。" userName="Pxtl" createdAt="2025/06/23 18:06:01" color="#785bff">}}




{{<matomeQuote body="Git は clean history を望んでないよ。ただ DAG 構造で commit を保存して、lots of freedom を与えてるだけ。UI は notoriously terrible だから、presentation の complain は justified だろうね。Merge commits だけできれいな branch を作って presentation layer にすればいい。Mutable なのは distributed system では problem だしね、CAP theorem の通り。" userName="GuB-42" createdAt="2025/06/23 19:47:30" color="#ff33a1">}}




{{<matomeQuote body="Git の lots of features が history rewriting を accommodate してないように感じるのが problem だね。Comment 変えたり squash したりすると hash が変わるから、’hey is commit X in the history of both branches A and B’ を check する useful な ability が break する。Merge や rebase で conflict が起きるのも worse だよ。History rewriting action の proper な synced graph があれば、better な responses を提供できるはず。" userName="Pxtl" createdAt="2025/06/23 12:55:38" color="#38d3d3">}}




{{<matomeQuote body="Yep、君の言うことには disagree しないよ。History rewriting を防ぐ workflow に stick する cost を払っても、merge commits なしで clean history を持つのは still worth it だと思ってる。でも、これは personal preference の問題だし、team の consistent workflow が more important だよね。今は merge commits を使う team で働いてるけど、慣れるのに time がかかってるよ。" userName="saghm" createdAt="2025/06/23 15:13:25" color="">}}




{{<matomeQuote body="もっと詳しく教えて？俺は rebase を history destruction/obscuration を避けるために使ってるんだけど。Squash のこと？もしそうなら agree だよ。" userName="hinkley" createdAt="2025/06/22 18:47:00" color="">}}




{{<matomeQuote body="Basically、commit comments や grouping together related commits を tweak すると hash が変わるんだよ。これが、’hey is commit X in the history of both branches A and B’ を check する git の useful な ability を break するんだ。Rebase on merge とか squash on merge が impractical になるのもこれ。Git は history rewriting を love するのに properly accommodate してないんだよ。In-repo objects で rebased commits と predecessors の関係を reify すれば better な response ができるはずだよ。" userName="Pxtl" createdAt="2025/06/23 12:43:29" color="#ff5733">}}




{{<matomeQuote body="Ah, Gitの歴史破壊について知ってるよ。マージの時に他人のコミットをコッソリ変えて、バグをそいつのせいにできるズル技もあるんだ。昔、実際にやった奴を捕まえたことがあるよ。Git blameの履歴と実際のコードが食い違ってたからバレたんだ。Git notesとは関係ない話かもね。" userName="hinkley" createdAt="2025/06/23 17:39:40" color="">}}




{{<matomeQuote body="Rebaseは新しい履歴を作って古いのは捨てるから、歴史破壊の一種だよ。コミットは差分じゃなくてリポジトリ全体のスナップショットなんだ。だからRebaseで古いコミットも残るけど、参照されなきゃガベージコレクションで消えるよ。" userName="GuB-42" createdAt="2025/06/23 02:25:26" color="#38d3d3">}}




{{<matomeQuote body="squashにもちゃんと使い道はあるさ。例えば、簡単なtypo直しとかね。直前のコミットとまとめてスッキリさせたい時とかに便利だよ。" userName="johnisgood" createdAt="2025/06/22 18:58:02" color="">}}




{{<matomeQuote body="君はコミットをアトム＝indivisible（不可分）なものとして捉えてるみたいだけど、Linuxみたいなパッチベースの開発だとちょっと違うんだ。多くの人は3-way mergeしかやらないけど、Linuxみたいな開発は違う。間違った3-way mergeを直すのを冗談で“5-way merge”って呼んだりするよ。" userName="hinkley" createdAt="2025/06/22 18:46:11" color="">}}




{{<matomeQuote body="それ、どういう意味？Gitはコミットをatomic（変更不可能）として扱うから、atoms（indivisible、不可分）だよ。パッチとは関係ないと思うんだけど、どういうことか詳しく教えてくれない？" userName="Zambyte" createdAt="2025/06/23 00:24:43" color="">}}




{{<matomeQuote body="この人が俺より上手く説明してるよ。見てみて。<br>https://news.ycombinator.com/item?id=44355218" userName="hinkley" createdAt="2025/06/23 16:39:22" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="コミットメッセージって、ハッシュ値に影響するの？それともタグみたいに本体とは別扱いなの？" userName="cma" createdAt="2025/06/24 00:07:50" color="">}}




{{<matomeQuote body="うん、コミットメッセージはハッシュ値に影響するよ。" userName="Zambyte" createdAt="2025/06/24 12:12:29" color="">}}




{{<matomeQuote body="俺、今の仕事でGit notesをかなり使ってるんだ。最初はコードレビューの記録とかに使ってみたんだけど、コミットにチケットとの連携、インフラの制約、障害対応のリンクとかを全部メモしてる。これのおかげでSlackとかJiraを探しまわなくて済むようになったよ。規模が大きくなると、GitHubとかのプラットフォームのUIってそんなにいらないんだなって気づく。ビルドの再現性ってよく言うけど、コミットの意図の再現性も大事だよね。Git notesはまさにそこから始まるのかも。" userName="b0a04gl" createdAt="2025/06/22 14:05:06" color="#ff5733">}}




{{<matomeQuote body="それってコミットメッセージにするべきじゃない？それとも、「このコミットがバグ#123を引き起こした」みたいに将来に紐付けるのが目的？" userName="smallpipe" createdAt="2025/06/22 16:23:29" color="#45d325">}}




{{<matomeQuote body="ハハ、ちょっと待って。長いコミットメッセージ（一行以上の）を最後まで全部読むの？僕的には、コミットメッセージはツイート、Git Notesはブログ記事って感じ。" userName="b0a04gl" createdAt="2025/06/22 16:43:41" color="">}}




{{<matomeQuote body="僕の仕事ではバグで数億円かかることがあるから、長いコミットメッセージは読むよ。長いのも書くし。同僚にももっと長いコミットメッセージを書いてほしいと思ってる。" userName="smallpipe" createdAt="2025/06/22 16:56:03" color="#45d325">}}




{{<matomeQuote body="僕もだよ。ほとんどの場合、コミットメッセージは10行以上で、変更は+-1行だったりする。GitHubでホスティングして、Issue Trackerで変更を管理してるんだけど、GitHubのUIがコミットメッセージのMarkdownをレンダリングしないのがすごく嫌なんだよね。みんなすごく詳しく丁寧にフォーマットして書いてるのに、Issue TrackerにMarkdownで完璧に表示されるように、コミットメッセージの同期を工夫しないといけなかった。" userName="Ayesh" createdAt="2025/06/23 06:13:41" color="#ff5733">}}




{{<matomeQuote body="もしコミットメッセージを読まないだろうって思うなら、どうしてNotesは読むと思うの？" userName="scubbo" createdAt="2025/06/22 21:52:10" color="#ff5c5c">}}




{{<matomeQuote body="コミットメッセージに情報を追加する方が、もっとシンプルに思えるな。Gitには読む時にコミットメッセージをトリミングするオプション (--oneline) もあるし。" userName="mojifwisi" createdAt="2025/06/22 16:57:00" color="">}}




{{<matomeQuote body="これはUIの問題だよ、知識不足じゃない。GitHubのUIがNotesを表示したら、すぐにもっと使われるようになるはず。" userName="noelwelsh" createdAt="2025/06/22 14:15:49" color="#ff5733">}}




{{<matomeQuote body="うん、GitHubがNotesをサポートしてくれたらいいのにね。" userName="stephenlf" createdAt="2025/06/22 15:17:59" color="">}}




{{<matomeQuote body="記事で説明されてる通り、GitHubは過去にNotesをサポートしてたんだよ。このリンク見て。<br>https://github.blog/news-insights/git-notes-display/" userName="wiktor-k" createdAt="2025/06/22 18:16:30" color="#38d3d3">}}




{{<matomeQuote body="なぜGitHubがNotesの表示をやめたのかは記事には書いてないね。" userName="johnisgood" createdAt="2025/06/22 18:58:53" color="">}}




{{<matomeQuote body="Gitってさ、bisectとかreflogとかpickaxeとか、知られてないけど超便利な機能いっぱいあるんだよ。みんなGoogle Driveみたいにしか使ってないから、もったいないんだよね。" userName="lucasoshiro" createdAt="2025/06/22 16:24:26" color="#ff33a1">}}




{{<matomeQuote body="Git notesって、Jiraみたいな別のプロジェクト管理ツール使うなら要らない機能だよね。Unix哲学みたいに、Gitは一つのことだけちゃんとやればいいんだと思うよ。" userName="knallfrosch" createdAt="2025/06/22 16:48:17" color="">}}




{{<matomeQuote body="Notes使うプロジェクト管理ツールならIDE連携はしやすいかもね。でもNotesって、設定とか手がかかるのがダメなんだよな。デフォルトでONになって、pull/pushで勝手に同期されるくらいじゃないと、みんな使わないよ。" userName="hinkley" createdAt="2025/06/22 18:51:32" color="#785bff">}}




{{<matomeQuote body="プロジェクト管理ツール使ってても、Git notesは使える場面あるんだよ。開発者しか見ない情報とか、上の目標のための元データとかね。" userName="chrishill89" createdAt="2025/06/23 15:33:56" color="">}}




{{<matomeQuote body="俺はツールの多くの機能は、マジで困った時だけ使う。そういう時パッとやると感謝されるんだけど、普段からツールを汚されるのは嫌なんだよな。<br>ファイルを間違って名前変更してGit履歴壊すとか。こういう規律は大事なんだって説明するの難しいよね。" userName="hinkley" createdAt="2025/06/22 18:53:56" color="">}}




{{<matomeQuote body="俺がさっき挙げた機能（bisectとか）を他の奴らに教えたら、もっと早く知りたかった！ってすぐ使い始めたんだよね。だから、機能盛りだくさんすぎるツールもあるけど、Gitの場合は違うと思うよ。" userName="lucasoshiro" createdAt="2025/06/22 19:07:25" color="#ff5c5c">}}




{{<matomeQuote body="記事に挙がる機能は知ってると思ってたけど、pickaxeってやつは初耳！なんだそれ？俺もまだまだだな。" userName="steve_adams_86" createdAt="2025/06/22 18:45:18" color="">}}




{{<matomeQuote body="pickaxeはGitコマンドじゃなくて、git logの-Sとか-Gっていうオプションのことだよ。git-blameより便利だって話は、このウェビナーで見れるよ→https://nofluffjuststuff.com/webinar/142/level_up_your_git_g..." userName="raju" createdAt="2025/06/22 20:25:50" color="#ff5c5c">}}




{{<matomeQuote body="pickaxeって基本的にはそのオプションのことだけど、もしかしたら古いgit-blameのコマンドエイリアスでもあったらしいよ。" userName="chrishill89" createdAt="2025/06/23 15:28:55" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
