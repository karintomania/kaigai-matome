+++
date = '2025-11-13T00:00:00'
months = '2025/11'
draft = false
title = 'Zedが職場を席巻する？ユーザーが指摘する不安定な基本機能とAIの課題！'
tags = ["プログラミング", "開発ツール", "エディタ", "AI", "IDE"]
featureimage = 'thumbnails/cyan_orange2.jpg'
+++

> Zedが職場を席巻する？ユーザーが指摘する不安定な基本機能とAIの課題！

引用元：[https://news.ycombinator.com/item?id=45916196](https://news.ycombinator.com/item?id=45916196)




{{<matomeQuote body="Zedの将来性には期待してるけど、基本的なエディタ機能が不安定なのがイライラする。例えば、外でファイルを編集してもプロジェクトペインやgit diffに反映されないし、コンテナ内で作業するとAI機能が壊れる。ACPもCLIの方がマシ。機能拡張の前に、まずはコア機能を完璧にしてほしいね。今はNeoVIMに戻ってるよ。早く改善して、またフルタイムで使えるといいな。<br>https://github.com/zed-industries/zed/issues/38109" userName="BinaryPie" createdAt="2025/11/13 18:34:46" color="#38d3d3">}}




{{<matomeQuote body="「2025年だしコンテナで作業すべき」って意見に対して「Nixって知ってる？」って返してるね。冗談だけど、コンテナでの作業ってツールがあっても少しぎこちないと感じるよ。Nixとか、システムを汚染しない再現可能なツールチェーンは他にもあるんだからさ。" userName="rounce" createdAt="2025/11/14 00:33:37" color="">}}




{{<matomeQuote body="くだらないって思うかもしれないけど、1440pスクリーンで見た時にすっごくぼやけて見えるのが、Zedから離れる一番の理由なんだよね。" userName="girvo" createdAt="2025/11/13 21:26:17" color="">}}




{{<matomeQuote body="「Nix使えばいいじゃん」って人たちは、「Rustで書けばいい」って人たちと一緒だよ。両者が推してるものの共通問題は、めちゃくちゃ高い学習コストなんだ。だから一般の人は、Nixよりコンテナ、RustよりGoでサクッと終わらせたいんだよね。NixもRustも素晴らしいとは思うけど、仕事もプライベートも忙しいのに、さらに難しい設定（Nix）や複雑な言語（Rustのborrow-checkerとか）を覚える余裕なんてないよ。見るたびに「やっぱ無理」ってなるもん。" userName="traceroute66" createdAt="2025/11/14 08:56:45" color="#ff5733">}}




{{<matomeQuote body="AI機能には少し時期尚早な投資だった気がするね。Agentic editingのデモが出た時は（いつだったか忘れたけど）ペアプロみたいで良かったんだ。ACPも自然な進化だと思った。でも、CLIツールがどんどん良くなってるから、今ではIDE／エディタでのライブレビューや編集承認って面倒に感じるんだよね。個人的には、もうIDEを使わずにClaude Codeで自動承認して、後でエディタで調整する方がいい。Max subscriptionとか使ってる人たちは、エディタにAI統合があるかどうかなんて気にしないんじゃないかな。" userName="tecoholic" createdAt="2025/11/13 20:35:39" color="#38d3d3">}}




{{<matomeQuote body="じゃあ、1080pか4Kに最適化されてるってこと？調整設定はないの？" userName="qmr" createdAt="2025/11/14 01:08:44" color="">}}




{{<matomeQuote body="AIツールの場合、再現可能なツールチェーンだけじゃなくてセキュリティ上の理由もあるんだよ。" userName="adastra22" createdAt="2025/11/14 00:55:40" color="">}}




{{<matomeQuote body="HiDPIスクリーン（Appleデバイスみたいに）に最適化されてるよ。" userName="phcreery" createdAt="2025/11/14 02:22:47" color="">}}




{{<matomeQuote body="じゃあ、Neovimって外部の変更をどうやって扱ってるの？それを可能にするプラグインとかあるのかな？俺が知る限り、ファイルが変わってもバッファはリロードしないよね。IntelliJだけが透過的にやってるのを知ってるけど。" userName="mystifyingpoi" createdAt="2025/11/13 19:09:19" color="">}}




{{<matomeQuote body="毎日selinuxやsandbox-execをもっと使おうよ。アクセス制限するだけなのに、わざわざ新しいシステムを導入する必要なんてないでしょ。" userName="viraptor" createdAt="2025/11/14 01:32:10" color="#785bff">}}




{{<matomeQuote body="昔はAI関係はJetBrainsだけだったけど、今はZedのClaude Code統合があるから全部Zedで開いちゃうんだよね。リンターとかも超便利だし、JetBrainsはもうすぐ解約しそうだよ。" userName="giancarlostoro" createdAt="2025/11/14 01:36:47" color="#785bff">}}




{{<matomeQuote body="あー、これってアンチエイリアシングのことを「ぼやけてる」って言うアレ？本当はピクセルが見える方がいいって言いたいのかな？" userName="marssaxman" createdAt="2025/11/14 02:26:00" color="">}}




{{<matomeQuote body="全く同意だよ。Zedってセカンドモニターにウィンドウが出せないのに、なんでこんなに話題になってるのかマジでわからん。" userName="recroad" createdAt="2025/11/13 20:43:41" color="">}}




{{<matomeQuote body="Dockerってカーネルの隔離APIの単なるシムだよ。別に大差ないけど、パッケージングはうまいよね。でもこのケースには関係ないか。俺はmacOSで開発してるけど、他に選択肢は知らないんだよね。" userName="adastra22" createdAt="2025/11/14 02:57:19" color="">}}




{{<matomeQuote body="macOS 10.15で、MacBook Proに外部モニター2つと本体ディスプレイの計3つ使ってるけど、Zedのウィンドウはいつも全部に出せてるよ。" userName="zie" createdAt="2025/11/13 21:54:17" color="#ff5733">}}




{{<matomeQuote body="sandbox-execね。最高じゃないけど使えるよ。https://igorstechnoclub.com/sandbox-exec/ <br>「違いはない」って言ってるけど、全然違うよ。Docker on MacはVMで完全なシステムを動かすけど、selinux/sandbox-execならアプリだけ動かせるし、Dockerの追加パッケージとかマウントをスキップできるからパフォーマンスも上がるんだ。" userName="viraptor" createdAt="2025/11/14 03:15:04" color="#ff33a1">}}




{{<matomeQuote body="Neovimはファイルが変更されたら、自動でリロードするか、毎回確認するか設定できるよ。（どっちがデフォルトだったか忘れちゃったけど、たぶん確認する方だったはず。）" userName="lawn" createdAt="2025/11/13 19:20:57" color="#785bff">}}




{{<matomeQuote body="いやいや、これは「ぼやけてる」って言ってるのが本当に「ぼやけてる」ってことだよ。https://github.com/zed-industries/zed/issues/7992#issuecomme...<br>俺のPCでもZedはこんな見た目なんだ。VSCodeはきれいに表示できるのに、Zedはぼやけててマジでひどい。" userName="gkbrk" createdAt="2025/11/14 07:21:35" color="#ff5733">}}




{{<matomeQuote body="じゃあ君は、いつもやってる快適なやり方を続ける方がいいってこと？それもアリだけど、プログラミングってそういうもんじゃないと思うんだよな..." userName="tempaccount420" createdAt="2025/11/14 10:59:53" color="">}}




{{<matomeQuote body="例ありがとう！まさに言いたかったことだね。この問題は明らかに（少なくともある程度は）好みの問題だってことがわかる。俺の目には、VSCodeのサンプルは90年代の粗いピクセルみたいで厳しく見えるけど、Zedのサンプルは普通のアンチエイリアスされたテキストに見えるよ。" userName="marssaxman" createdAt="2025/11/14 16:28:26" color="#ff5733">}}




{{<matomeQuote body="うん、Zedでエージェントにホストのpodmanを使わせようと奮闘してるんだけど、Flatpakがサンドボックス化されてるからほぼ無理なんだ。理想的な解決策は、ZedがpodmanかDockerを使ってコンテナを起動し、そこでエージェントを自由に実行できることだね！" userName="rsolva" createdAt="2025/11/13 20:02:31" color="#785bff">}}




{{<matomeQuote body="複雑さのための複雑さは、みんなが目指すべき目標じゃないよね。" userName="miroljub" createdAt="2025/11/14 11:19:18" color="">}}




{{<matomeQuote body="JetBrains製品にはClaude Codeが統合されてるじゃん。それってZedより悪いの？WebStormユーザーとしては、いまだにCLIでClaude Codeを使ってるよ。" userName="hboon" createdAt="2025/11/14 02:46:59" color="">}}




{{<matomeQuote body="Claude Codeのプラグインもあるし、IntelliJのCopilotからClaudeモデルを使えるよ。Zedの基本的なエディタ機能が欠けてるって他のコメントを考慮すると、それらのオプションの方がZedより悪いのかな？" userName="brabel" createdAt="2025/11/14 11:48:51" color="#785bff">}}




{{<matomeQuote body="最新バージョンを試してみてよ、良くなってるはずだよ。個人的には、あれを問題だと思ったことはないけど、バージョン間のスクリーンショットでの違いはわかるよ。" userName="jokethrowaway" createdAt="2025/11/13 22:33:45" color="">}}




{{<matomeQuote body="IntelliJのClaude Codeはただターミナルタブを開くだけだよね。ZedのClaude Codeは、まるでネイティブでサポートされてるモデルみたいにエディタに統合されてる感じがするよ。" userName="giancarlostoro" createdAt="2025/11/14 14:27:22" color="#ff5c5c">}}




{{<matomeQuote body="いや、これは一つの<br>Zedインスタンスで問題なく動くよ。" userName="foldr" createdAt="2025/11/14 09:30:16" color="">}}




{{<matomeQuote body="エディタの統合で一番使えるのは、Diagnostics/ProblemsデータにAIを繋げることだよ。そうすれば、AIはeslintを毎回実行するより、そのデータでサッと確認できて超速くなるんだ。これって、MCP拡張で簡単にできるからね。" userName="girvo" createdAt="2025/11/13 21:28:36" color="#785bff">}}




{{<matomeQuote body="他のIDEのAIプラグインはただターミナルを開くだけなのに、Zedはもっと自然にAIと連携できるのがいいよね。JetBrainsは自社のAIクレジットを使わせようとしてて、Claudeのサブスクじゃダメなんだ。ZedはユーザーのClaude Codeサブスクを使えるように月額料金を下げてくれたのが素晴らしいよ。" userName="giancarlostoro" createdAt="2025/11/14 14:28:29" color="#785bff">}}




{{<matomeQuote body="IDEにコミュニケーションツールとかマルチプレイヤー機能とか、マジでいらないんだけど。俺の集中する場所なんだから、余計なノイズを持ち込まないでほしいな。" userName="verdverm" createdAt="2025/11/13 18:24:27" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="マルチプレイヤー機能には別にワクワクしないけど、使うならIDEにはちゃんと動いてほしいね。他のペアプロツールはもっと最悪だし、Zedのこの機能は、好きじゃないけど評価してるよ。俺は個人の好みに合うかより、拡張性とか柔軟性でIDEを選ぶんだ。" userName="aeturnum" createdAt="2025/11/13 20:31:21" color="">}}




{{<matomeQuote body="コラボレーションパネルを下のバーから消しちゃったから、もう全く気にならないよ。おすすめ！" userName="pprotas" createdAt="2025/11/13 18:36:50" color="">}}




{{<matomeQuote body="君が考えてるのはGhosttyだよ。これはZedの話題で、Ghosttyとは違うんだ。ZedはAlacrittyをターミナルに使ってるんだけど、Ghosttyだったらもっと良かったのにね！" userName="pprotas" createdAt="2025/11/13 19:44:13" color="">}}




{{<matomeQuote body="Zedは全部Rustで作りたいみたいだから、Ghosttyは使えないだろうね。GhosttyはUI機能が多いから、ZedのUIに組み込むのは難しそうだし。TUIメインのAlacrittyの方が、Zedの設計には合ってるんじゃないかな。" userName="satvikpendem" createdAt="2025/11/13 20:16:01" color="">}}




{{<matomeQuote body="Mitchellが、IDEに埋め込むためのターミナルコア機能「libghostty」をリリースしてるよ。" userName="jabbywocker" createdAt="2025/11/14 01:50:27" color="">}}




{{<matomeQuote body="Terraform/HCLの問題って、具体的に何？俺も色々あったけど、結局はあの複雑さの中でよくやってるって思ったよ。あと、俺らが期待しすぎてたんだなって。Mitchell本人もTerraformは時代遅れって言ってたけど、インフラ界を独占してるわけじゃないしね。もっと良いツールが出てくることを期待してるけど、今のところはTerraformで十分だよ。" userName="chanux" createdAt="2025/11/15 03:56:09" color="">}}




{{<matomeQuote body="Mitchell Hashimotoって、ゲストブログ記事以外でZedと何の関係があるの？" userName="hrimfaxi" createdAt="2025/11/13 19:00:51" color="">}}




{{<matomeQuote body="彼はZedの開発に関わってるって思ってたよ。Zedの機能ってマジでひどいと思うし、彼がZedについて話してたから、多分そこで勝手に悪い連想しちゃったんだろうね。" userName="verdverm" createdAt="2025/11/13 19:08:54" color="">}}




{{<matomeQuote body="HashimotoはZig言語でGhosttyを書いてるんだ。ZigとZedを混同してるんじゃないかな。" userName="RaoulP" createdAt="2025/11/13 19:55:11" color="#45d325">}}




{{<matomeQuote body="そうそう、ZigじゃなくてZag、いやZedの方だよね..." userName="rob74" createdAt="2025/11/14 09:03:42" color="">}}




{{<matomeQuote body="彼がGhosttyに取り組んでるのは知ってるけど、Zedの方で働いてるなんて聞いたことないよ。君が考えてたのはそれだった？" userName="smj-edison" createdAt="2025/11/13 19:35:26" color="#ff33a1">}}




{{<matomeQuote body="ごめん、そしてありがとう。HashimotoがZedのために書いたブログ記事を元にした自分の誤解について、色々なコメントで訂正されたよ。" userName="verdverm" createdAt="2025/11/14 00:18:37" color="#45d325">}}




{{<matomeQuote body="これは考え方の違いが大きく出る点だね。君の考え方も尊重するけど、他の人もいるし、そういう人たちはこういうのを求めてるんだ。おかしいんじゃなくて、ただ別のやり方ってだけだよ。" userName="patcon" createdAt="2025/11/14 00:38:47" color="#ff5c5c">}}




{{<matomeQuote body="そうだね、開発者に特定のツールを強制すべきじゃない。問題はコミュニケーション製品が相互運用できないことだね。結局、組織全体で一つにまとめるのが一番か、会話が分断されちゃうかだね。" userName="verdverm" createdAt="2025/11/14 10:13:59" color="#ff5733">}}




{{<matomeQuote body="これってIDE開発からめちゃくちゃ脱線してる気がするな。壮大なヤクの毛刈りだよ。VSCodeやJetBrainsのマルチプレイヤー機能なんて使ったこともないし、どうでもいい。バカみたい。ペアプログラマータイプでもないしね。IDEを共有する必要があったのは、SEVかめちゃくちゃ複雑なシステムバグの時だけだよ。それって全体の1%くらいだろ。" userName="echelon" createdAt="2025/11/13 19:52:47" color="#ff33a1">}}




{{<matomeQuote body="彼らの複数回にわたるVCからの資金調達は、コラボレーションっていうビジョンが前提になってるから、それをやるしかないんだよ。" userName="agrippanux" createdAt="2025/11/13 20:53:55" color="#ff5c5c">}}




{{<matomeQuote body="みんなはこんな問題について抽象的に考えてるんだよ。<br>1. 特定のIDEに縛られずに使えるようになるまで、導入とネットワーク効果で大きく制限されるね。<br>2. IDEを使わない非開発者とのコミュニケーションはどうする？チャットツールを複数使う羽目になるの？<br>3. 仕事の主要ツールにアテンションエコノミーを持ち込むのは、長期的には多分悪い考えだよ。<br>4. 新しいバージョン管理データベースも提案してるけど、導入と相互運用性をさらに難しくするだけだよ。https://zed.dev/blog/sequoia-backs-zed#introducing-deltadb-o...<br>5. 今はAIのハイプサイクル中で、たくさんの実験や問題があるから、この試みに対してファンと理性的な反発の両方が見られるよ。" userName="verdverm" createdAt="2025/11/14 00:11:25" color="#ff33a1">}}




{{<matomeQuote body="僕が返信した投稿は、そんなこと全然言ってなかったよ。ここにある他の多くのコメントと同じで、みんなソロで仕事するのが好きで、ペアプロは最悪、この試みは無駄だってことに集中してたんだ。" userName="gherkinnn" createdAt="2025/11/14 07:03:19" color="">}}




{{<matomeQuote body="この機能、マジで試したいんだけど、コラボレーションサーバーをセルフホストできる場合だけだよ。もしできる方法があるなら、全然分かりにくいね。僕が理解してる限り、たくさんのプロジェクト詳細がZedのサーバーを通るなら、ZedとのSLAなしに、どの企業もこれを意図的に許可するなんて想像できないな。" userName="Octoth0rpe" createdAt="2025/11/13 16:47:09" color="#ff5733">}}




{{<matomeQuote body="もっと簡単ならいいけど、僕が知る限りサポートされてるよ。https://github.com/zed-industries/zed/issues/8260#issuecomme..." userName="nixpulvis" createdAt="2025/11/13 17:30:22" color="">}}




{{<matomeQuote body="残念ながら、もうセルフホスティングはサポートしてないんだ。シングルプレイヤー体験をもう少し磨いたら、また再導入する予定だよ :)" userName="mikaylamaki" createdAt="2025/11/13 17:57:34" color="#785bff">}}




{{<matomeQuote body="ああ、それは残念。ちょっとハックしてでも使いたい人向けに、なぜ全くサポートしないの？" userName="nixpulvis" createdAt="2025/11/13 18:22:29" color="">}}




{{<matomeQuote body="僕たちは成長していて、認証を元のコラボサーバーが扱える範囲を超えてスケールさせる必要があったんだ。まだコラボ機能を使ってる人は多くないし、非コラボ機能（最近のWindowsリリースみたいにね）を優先してる。それに、これら全部をDeltaDBの上に再構築する予定だよ。基本的には、手が回らなくなってたってことだね。でも、セルフホスティングはユーザーや企業にとって不可欠な機能だから、いくつかの機能が落ち着いたら再検討するつもりだよ :D" userName="mikaylamaki" createdAt="2025/11/13 18:34:27" color="#785bff">}}




{{<matomeQuote body="いいね、透明性と情報提供ありがとう。みんなを本当に応援してるよ。方向性と品質にワクワクするね。" userName="nixpulvis" createdAt="2025/11/13 19:37:17" color="">}}




{{<matomeQuote body="どうやらDeltaDBの開発は中止されたみたいだね。https://github.com/delta-db/deltadb?tab=readme-ov-file#-upda..." userName="UtahDave" createdAt="2025/11/13 19:52:12" color="#ff33a1">}}




{{<matomeQuote body="それ、別のプロジェクトだよ！うちの全体的なピッチはここを見てね：https://zed.dev/blog/sequoia-backs-zed#introducing-deltadb-o..." userName="mikaylamaki" createdAt="2025/11/13 19:58:59" color="">}}




{{<matomeQuote body="いい感じだね。LoroとかAutomergeみたいなCRDTを使ってるんだけど、DeltaDBの改善で何か学んだり連携したりしてる？あと、”DB”って名前のせいでデータベースって思っちゃったよ。誤解を招くけど、なんでその名前なの？" userName="satvikpendem" createdAt="2025/11/13 20:14:35" color="#ff33a1">}}




{{<matomeQuote body="これってオープンソースになるの？今すぐにこれが必要で、ちょうど新しい実装を始めるところだったんだ。Zedが似たようなものを作ってるなんて知らなかったよ。競合するVCSを維持するより、もちろんコラボレートしたいね。" userName="adastra22" createdAt="2025/11/14 01:04:38" color="#ff33a1">}}




{{<matomeQuote body="おお、これって俺が大好きなデータ構造、ZedのSum Treeがベースなの？" userName="infogulch" createdAt="2025/11/13 21:05:27" color="">}}




{{<matomeQuote body="＞ 最後のコミットは10年前" userName="Xevion" createdAt="2025/11/14 02:44:17" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="アップデートありがとう！もっと聞けるのが待ちきれないね！" userName="Octoth0rpe" createdAt="2025/11/13 18:02:10" color="">}}




{{<matomeQuote body="俺は年寄りか、うんざりしてるか、頑固か、被害妄想かもしれないけど、企業が管理するコーディングエディターってなんか嫌だ。それにZoomとかSlackとか、全部エディターに入ってると、もっと嫌気がさすね。" userName="bitbasher" createdAt="2025/11/13 18:40:00" color="#785bff">}}




{{<matomeQuote body="”コラボレーションは今のところアルファ版で、しばらくは誰でも無料で使えるよ！”これだと安心できないな。" userName="fergie" createdAt="2025/11/14 08:18:39" color="">}}




{{<matomeQuote body="…他のエディターを自由に使えるんだよ？みんなZedが好きだし、IntelliJもVSCodeも好きだ。プロがメンテするIDE全部が嫌いなら、それは少数派だと思うけどね。" userName="aduffy" createdAt="2025/11/13 21:00:20" color="">}}




{{<matomeQuote body="問題はソーシャル機能で、Slackの代わりにこれを使わされるかもしれないってことだよ。仕事でVSCodeを使うよう強制された経験もあるしね。個人的には、相互運用性が十分じゃないのが心配だ。" userName="myaccountonhn" createdAt="2025/11/14 10:24:56" color="#ff5733">}}




{{<matomeQuote body="多数派が正しいとは限らないってことだね。" userName="bitbasher" createdAt="2025/11/13 21:08:37" color="">}}




{{<matomeQuote body="それ聞いて、ぴったりのフランスのことわざ思い出したわ。「みんなが間違ってても、それが正しいってことにはならない！」って意味のやつね。" userName="jiehong" createdAt="2025/11/14 08:03:26" color="">}}




{{<matomeQuote body="それは個人のツールだもん。あんたも間違ってないし、誰も間違ってないよ。" userName="ergocoder" createdAt="2025/11/14 09:50:01" color="">}}




{{<matomeQuote body="正しいとか間違ってるとかもないってことだよね。" userName="cipehr" createdAt="2025/11/13 21:23:00" color="">}}




{{<matomeQuote body="でもね、それはいつでもあんたを裏切る可能性がある、企業に管理されたプログラムだってことだよ！" userName="fallat" createdAt="2025/11/13 23:35:17" color="">}}




{{<matomeQuote body="企業じゃないオープンソースでも、同じこと起こりうるんじゃない？" userName="jabbywocker" createdAt="2025/11/14 01:59:40" color="">}}




{{<matomeQuote body="いや、違うだろ？変更は取り込んで再コンパイルしなきゃいけないんだし。" userName="fallat" createdAt="2025/11/14 12:36:01" color="">}}




{{<matomeQuote body="企業オープンソースでも同じことだよ。" userName="jabbywocker" createdAt="2025/11/18 17:19:24" color="">}}




{{<matomeQuote body="俺の知る限り全部オープンソースだし。もし彼らが変なことしたらフォークできるよ。" userName="adastra22" createdAt="2025/11/14 01:08:45" color="">}}




{{<matomeQuote body="こういう巨大プロジェクトでフォークは技術的には可能だけど、めちゃくちゃ工数かかるから簡単じゃないんだよな。使うなら「クソ化」していくのを我慢するか、いっそ別のツール使うしかないね。" userName="arbitrandomuser" createdAt="2025/11/14 10:14:43" color="#45d325">}}




{{<matomeQuote body="俺、Zed好きなんだよね。Proも買っちゃった。Agent機能も面白いけど、俺のチームみたいに少人数で色んな言語やOS使ってる身としては、もっとシンプルで速いツールが欲しいんだ。特に、アウトラインとディレクトリパネルを同時に見たいし、検索のアウトラインはファイル構造のアウトラインと分けて表示してほしい。ビューの切り替えに時間かけすぎなんだよな。" userName="travisgriggs" createdAt="2025/11/13 18:26:43" color="#785bff">}}




{{<matomeQuote body="それなら今できるよ！アウトラインとかのパネルを右ドックに移動させればいいんだ（切り替えボタンを右クリックしてみて）。" userName="olejorgenb" createdAt="2025/11/13 18:51:14" color="#785bff">}}




{{<matomeQuote body="それってさ、AI Agentとトグルすることになるんじゃない？Zedってさ、ワークベンチに２つしかツール置けないんだよね。俺はもっとたくさん置きたいんだよ。" userName="travisgriggs" createdAt="2025/11/13 19:24:19" color="">}}




{{<matomeQuote body="うん、そうだね。<br>ドックを縦に分割したい？<br>それとも、エディタースプリットの中にパネルを開きたい？<br>パネルを別ウィンドウとして切り離したい？（これなら https://github.com/zed-industries/zed/issues/17618 を見てみて）。" userName="olejorgenb" createdAt="2025/11/13 20:08:27" color="#38d3d3">}}




{{<matomeQuote body="質問の１番と３番、両方とも実現したら最高だね。" userName="travisgriggs" createdAt="2025/11/14 07:11:31" color="">}}




{{<matomeQuote body="Zedは素晴らしいし、成功してほしいんだけどさ。こんな大人数でのコラボ機能って、議事録とかならいいかもだけど、コーディングでこれやられると鳥肌立つわ。ライブ委員会でコード書くなんて嫌だよ。" userName="wateralien" createdAt="2025/11/13 16:24:50" color="">}}




{{<matomeQuote body="これ、ジュニアエンジニアの育成とかにすごく面白いアイデアだと思うんだ。悪い習慣をすぐ指摘できるのは便利だし、レビュー時間も節約できそう。生産性も上がるかもね。ADHDとか先延ばし癖がある人には、この仕組みが良い刺激になるって人もいるし。ベテランに強制しない限り、新しい開発の形になる可能性を秘めてると思うよ。" userName="meowface" createdAt="2025/11/13 16:57:08" color="#ff5733">}}




{{<matomeQuote body="ジュニア育成なら、Zoomのリモート画面制御を使えばいいんじゃない？IDEだけじゃなくてウェブページとかも見せたいから、画面全体を共有する方が良いことが多いよ。" userName="verdverm" createdAt="2025/11/13 19:03:32" color="">}}




{{<matomeQuote body="ペアプログラミングってさ、すごく良い時もあれば、最悪な時もあるよね。結局は人によるんだ。でもこれ、コードウォークにはいいんじゃない？画面共有で映像がちゃんと見えるか心配するより、みんな自分のエディタで快適にコードを追えるし。" userName="nixpulvis" createdAt="2025/11/13 17:42:12" color="#ff33a1">}}




{{<matomeQuote body="コードウォークでコラボ機能を使うのはやりすぎだと思うんだよな。誰かに説明されてる時は、相手が見せてるものだけに集中して、話を聞きたいんだ。コラボモードって自動追跡機能があるとはいえ、ただの読み取り専用ビデオストリームとは違って、邪魔になる要素が多すぎてメリットがないと感じるよ。" userName="davnicwil" createdAt="2025/11/13 17:54:08" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
