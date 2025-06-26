+++
date = '2025-06-19T00:00:00'
months = '2025/06'
draft = false
title = 'Zedのデバッガーが遂に登場！'
tags = ["Zed", "デバッガー", "開発ツール", "プログラミング", "エディタ"]
featureimage = 'thumbnails/color2.jpg'
+++

> Zedのデバッガーが遂に登場！

引用元：[https://news.ycombinator.com/item?id=44314977](https://news.ycombinator.com/item?id=44314977)




{{<matomeQuote body="デバッガーの開発が進んで嬉しいけど、現状だとウォッチウィンドウとかスタックトレースとかデータブレークポイントがないから、まだベータって感じだな。俺のデバッグの97％には足りないや。<br>複数セッションとかマルチスレッドのデバッグ計画についても、RemedyBGみたいなクールなUIの話とか、もっと聞きたかったなー。" userName="laserbeam" createdAt="2025/06/19 08:07:45" color="#ff33a1">}}




{{<matomeQuote body="ヘイ、Laserbeam。俺はデバッガー開発者の一人で、この記事書いた本人だよ。<br>基本的なスタックトレースビューはもうあるんだ。ただ、マルチバッファシステムでちゃんと見れるのが近いうちに出る予定。現状のはまだ俺たちが期待するクオリティじゃないから広告しなかったんだよ。<br>ウォッチ機能のPRももうすぐマージされる。機能自体はできてるんだけど、ローンチ直前で十分にテストできなかったんだ。<br>データブレークポイントは近いうちに対応するよ。いつとは言えないけど、優先事項だよ。<br>複数セッションもマルチスレッドデバッグも、もうサポートしてるよ！まだやることあるけど、機能としてはあるから安心して！" userName="anthony-eid" createdAt="2025/06/19 17:18:55" color="#ff5733">}}




{{<matomeQuote body="俺が言った機能は、開発中かもうすぐできるんだろうって確信してるから、心配はしてないんだ。ただ、「デバッガーが登場したぞ！」って発表を見て、まだToDoが多いことに気づいて「あー、まだ完成じゃないんだな、数週間後かな」って思っただけなんだよ。それも別にいいんだけどね ^.^<br>裏側の開発の話はマジですごいと思ったよ。これからも頑張ってね！" userName="laserbeam" createdAt="2025/06/20 08:21:45" color="">}}




{{<matomeQuote body="ポジティブなコメントありがとう！開発の裏話も気に入ってくれて嬉しいよ！" userName="anthony-eid" createdAt="2025/06/20 08:38:59" color="">}}




{{<matomeQuote body="ブログ記事にもadvanced viewsは開発中って書いてあるじゃん[1]。今回のリリースと発表は、彼らが作ってる基盤にフォーカスしてるんだよ。<br>＞ New views: While we support all the fundamental views, we’re planning on adding more advanced views such as a watch list, memory view, disassembly view, and a stack trace view<br>[1] https://zed.dev/blog/debugger#whats-next" userName="happy-dude" createdAt="2025/06/19 10:54:11" color="#45d325">}}




{{<matomeQuote body="俺のデバッグセッションは100％ブレークポイントとステップだけだから、俺にとってはもうこれで十分来たってことだよ！やったね！" userName="odie5533" createdAt="2025/06/19 10:31:27" color="">}}




{{<matomeQuote body="確かにそう思う！でもZedチームの開発スピードなら、そんなに遠くない未来に全部揃うでしょ！" userName="keyle" createdAt="2025/06/19 10:08:15" color="">}}




{{<matomeQuote body="ああ、もちろんね。ただ、デバッガーがもう完全に準備できたって宣言するには、まだちょっと早すぎるんじゃない？って言いたかっただけなんだ。" userName="laserbeam" createdAt="2025/06/19 10:55:05" color="">}}




{{<matomeQuote body="デバッガーはまだ試せてないんだけど、Git機能についても同じ気持ちなんだ。基本的な機能はあるけど、今のGitワークフローを全部置き換えるには、まだ完成じゃないんだよね。Git機能も引き続き力を入れてほしいな。" userName="aequitas" createdAt="2025/06/19 08:54:52" color="">}}




{{<matomeQuote body="MagitみたいなGit UIを超えるものにはまだ出会えてないんだ。ZedにMagitみたいなのが来たら俺の夢が叶うな。Magit以外はもうZedでEmacsを全部置き換えられたよ。<br>Zedでのタイピングは他のエディタより明らかに遅延が少ない感じがするね。TypeScript、Rust、Goプロジェクトで一番使いやすいと思う。<br>agentic coding、collaboration、debugging、edit prediction、task runners、version controlとか、モダンなエディタと競合するにはまだたくさんの機能開発が必要だね。とはいえ、友達とのペアプロにはZedは最高だよ（Linuxで画面共有できるようになってからね）。<br>でも、collaborationの開発が、Agentic Codingみたいな主要機能のために一旦「停止」してる感じだね。direnv連携、IMEサポート、色々なPythonツールの対応とか、細かいけど必須な機能もね。" userName="koito17" createdAt="2025/06/19 10:19:54" color="#ff33a1">}}




{{<matomeQuote body="Zedを見るとAtomが流行ってた頃を思い出すな〜。あれは良い時代だったけど、一部のパッケージ以外はほぼコミュニティ頼りだったから、人気が落ちたらどうなるか心配だったんだよね。Zedも人気が衰えたときにちゃんとメンテされるか不安になるよ。JetBrainsみたいに、エディタにお金を払えば、たとえ一番人気じゃなくなっても（今は結構人気だけど）ちゃんとしたアップデートとサポートが続くって分かってるのとは違うから。" userName="no_wizard" createdAt="2025/06/19 10:47:26" color="">}}




{{<matomeQuote body="コミュニティ頼りってことは、強力なPlugin APIを作ったってことで理想的じゃん。内製の小さなチームだけで全部開発しなきゃいけない貧弱なPlugin APIと違って、みんなが機能を作れるんだからさ。人気が落ちた時に辛いのは後者だよ。<br>Atomの場合は、VSCodeに負けたんだよね。VSCodeはAtomと似たWeb技術ベースだけど、パフォーマンスが良くてPlugin APIも同じくらい強力だった。Atomが終わったのは、みんながPluginを作れたせいじゃなくて、むしろ良いPlugin APIがなかったらもっと酷い状況だったと思うな。" userName="hombre_fatal" createdAt="2025/06/19 12:27:18" color="#38d3d3">}}




{{<matomeQuote body="それらはみんなモダンな機能対応が遅れてるか、遅れてたんだよね。SublimeでさえLSPの採用が遅かったし、今でもあれを正確に、ちゃんと動かすのはちょっと複雑だと思うよ。" userName="no_wizard" createdAt="2025/06/20 15:46:41" color="">}}




{{<matomeQuote body="Zedにもお金払えるよ。俺は払ってるし。" userName="drcongo" createdAt="2025/06/19 11:02:49" color="">}}




{{<matomeQuote body="Zedにお金を払うのと、拡張機能がしっかりメンテされるようににお金を払うのは同じじゃないんだよね。拡張機能全部がZedの中の人で作られてるわけじゃないからさ。" userName="no_wizard" createdAt="2025/06/19 11:58:50" color="">}}




{{<matomeQuote body="変数のウォッチとかデータブレークポイントの追跡Issueってある？それ見たいな〜。" userName="nixpulvis" createdAt="2025/06/19 16:59:50" color="">}}




{{<matomeQuote body="変数とか式のウォッチ用のPRはこれだよ：https://github.com/zed-industries/zed/pull/32743<br>データブレークポイントのIssueはまだ無いと思うけど、君が作ってくれてもいいよ！" userName="anthony-eid" createdAt="2025/06/19 17:21:03" color="#ff33a1">}}




{{<matomeQuote body="Zed最高！最近NeovimからZedに乗り換えてるんだけど、すごく良い経験だよ。全部サクサク動くし、Vimバインディングがうまく統合されてるのも気に入ってる。agentモードも良いね。<br>VSCodeと比べるとまだマイナーだけど、拡張機能のエコシステムも十分じゃない…。でも、俺が使う分には今のところ足りてるよ。デバッガーが一番欲しかった機能だから、今回できたのは本当に嬉しい！素晴らしい仕事だね。" userName="candrewlee" createdAt="2025/06/19 05:39:49" color="#38d3d3">}}




{{<matomeQuote body="ZedのRustコード補完ってどう？ WindsurfやCursorの完璧な「タブタブタブ」補完が最高でTypeScriptとかはすごいんだけどRustではIntelliJ/RustRoverでもダメだったんだ。ZedだとRustでも魔法のタブタブタブできる？<br>ZedはCursor/Windsurf、RustRoverと比べてどう？特にJetBrainsのRust AST理解と比較して知りたいな。" userName="echelon" createdAt="2025/06/19 06:14:06" color="#ff33a1">}}




{{<matomeQuote body="ZedはRust好きがRustで作ってるから、Rustのサポートはマジで最高だよ。" userName="WD-42" createdAt="2025/06/19 06:36:23" color="#45d325">}}




{{<matomeQuote body="＞ ZedのRustコード補完ってどう？<br>LSP使ってると思うから、neovimでもZedでも補完に差はないんじゃない？（100％じゃないけど、LSPの基本的な理解だとね。）" userName="csomar" createdAt="2025/06/19 09:55:39" color="">}}




{{<matomeQuote body="RustのLSPサポートはRustRover（JetBrainsのIDE）より遅れてる。RustRoverはASTの提案やリファクタリングサポートが一番良いけど、AIサポートがイマイチなんだ。<br>個人的にはAST理解よりAI補完の方がずっと便利だと思うよ。両方あったら最高なんだけどね。" userName="echelon" createdAt="2025/06/19 10:20:41" color="#ff33a1">}}




{{<matomeQuote body="彼らがこれに積極的に取り組んでるのは知ってるよ。AI拡張機能のアップデートでモジュール式になって、例えば自分のモデルを選べるようになったんだ。近いうちに自分のエージェントも接続できるようになるみたい。ただ、統一インターフェースがなくてちょっと遅れてるのかも。" userName="no_wizard" createdAt="2025/06/19 10:50:11" color="#785bff">}}




{{<matomeQuote body="Rustには最高だよ。俺のメインIDEでvoltlane.netもこれで書いたんだ。素晴らしいソフトだし、LLM連携も俺的には必要なものは全部揃ってる（良い意味で）。" userName="lionkor" createdAt="2025/06/19 06:19:11" color="#ff5733">}}




{{<matomeQuote body="vimバインディングがどれくらいvimっぽいか気になるな。vimエミュレーターを使うたびに、本物と微妙に違って指が間違った動きばっかりしてイライラするんだよね。" userName="timeinput" createdAt="2025/06/19 21:09:07" color="#45d325">}}




{{<matomeQuote body="俺にとっては本物のVimじゃない中で最高の”vim”だよ。vscodeのプラグインより断然いいね。2008年頃からVim、そのあとNeovimを使ってるけど、Zedは初めて本当に満足できたVimじゃないエディタだね。" userName="esamatti" createdAt="2025/06/19 21:43:50" color="#ff5c5c">}}




{{<matomeQuote body="Zedに興味あったんだけど、「AI」を統合し始めたと聞いて興味なくなったんだ。「AI」だらけなのもううんざりなんだよね。何か良いのが出るまではNeovimのままでいいや。" userName="mort96" createdAt="2025/06/19 08:23:46" color="">}}




{{<matomeQuote body="Zedは初めてAI機能を使ってみようって気にさせてくれたエディタだよ。全体的にしっかりしてるし、AIも他のエディタみたいに前に出すぎないで、ほとんど補完みたいに感じられるんだ。<br>Zedは「速くて良いエディタ作ってます、AIもありますよ」って感じだけど、競合は「エディタ付きのAIが欲しいんでしょ」って感じだよ。" userName="laserbeam" createdAt="2025/06/19 09:14:05" color="#38d3d3">}}




{{<matomeQuote body="君は超少数派だと思うよ。俺はもうAIが深く統合されてないコードエディタには近づかないね。" userName="atonse" createdAt="2025/06/19 11:50:33" color="">}}




{{<matomeQuote body="しばらくZed使ってないんだけど、AI機能ってそんなに邪魔？ 設定で無効にできないのかな？" userName="norman784" createdAt="2025/06/19 09:35:44" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="AIは邪魔じゃないけど、開発の焦点が完全にAIに移ったのが問題。Gitビューとか未完成なのに、AIチャットやAIエージェント、自社AIエディットに時間かけてる。このAIエディットは月20ドルで、軽いって言う割に無料ローカルモデルじゃないしCopilotより高い。‟すごいエディタ”じゃなくて‟AI買ってね”商品になってるよ。" userName="deliriumchn" createdAt="2025/06/19 09:45:52" color="#45d325">}}




{{<matomeQuote body="俺だけじゃないと思うんだけど、‟AI疲れ”を感じてる。どのソフトにも、別にいらない‟AI”機能がどんどん増えて、やりたいことの邪魔になるんだよね。" userName="mort96" createdAt="2025/06/19 11:51:45" color="">}}




{{<matomeQuote body="Neovimをチェックしに行ったら、今二つのAI製品がスポンサーになってた！ まあ、製品にAIを統合するのとは一段違うけど、それでもAIを完全に避けるのはどんどん難しくなってるね。" userName="oneeyedpigeon" createdAt="2025/06/19 08:35:32" color="">}}




{{<matomeQuote body="いや、AIに懐疑的なのは‟静かな多数派”だよ。HNとかではAI肯定派がエコーチェンバー作ってるだけ。<br>AIが本当に役立つのはhypeのほんの一部で、多くの人は手助けが必要。<br>シニアやマネージャーには価値薄いし、品質より量重視じゃないなら微妙。銀行とかではAI禁止されてるし。<br>個人的には、コードは仕事の一部だし、創造性を失いたくない。自分で実装する方が学ぶことも多いんだ。" userName="jajko" createdAt="2025/06/19 13:35:08" color="#785bff">}}




{{<matomeQuote body="え、気づかなかった。Neovimがスポンサーに引っ張られ始めたら、いつでもVimに戻れると考えればいいか。" userName="mort96" createdAt="2025/06/19 08:51:16" color="">}}




{{<matomeQuote body="じゃあ使わなきゃいいじゃん？ AIなしでも全く問題なく動くよ。" userName="arandomusername" createdAt="2025/06/19 12:24:14" color="">}}




{{<matomeQuote body="AIはいらないし、完全に消したい派。ZedはAIを強制してるからVSCodiumでいいや。" userName="reddalo" createdAt="2025/06/19 08:31:49" color="">}}




{{<matomeQuote body="ZedでAI機能を避けるのは結構簡単だよ。たまーに便利だけど、正直ほとんど使わないかな。" userName="aequitas" createdAt="2025/06/19 08:55:41" color="">}}




{{<matomeQuote body="会社の業種で全然違うよね。銀行みたいなとこじゃAIなんて禁止だし。<br>クライアントのコードを勝手にアメリカのスタートアップにアップロードなんて絶対にありえない。設定ミスでそうなるソフトも怖い。AI反対はセキュリティだけじゃないけど、結構大きい理由だよ。" userName="mort96" createdAt="2025/06/19 14:01:43" color="#45d325">}}




{{<matomeQuote body="意外な意見だね。AIでZedに興味なくなったって言ってたのに、「AIは完全にオプションだよ」って言われても考えが変わらないなんて。<br>AIが邪魔じゃなくて、AIがあること自体が嫌な感じなのかな？ まるでAIに触れただけでZedが汚染されたみたいに思ってる？" userName="karaterobot" createdAt="2025/06/19 17:42:58" color="#ff5733">}}




{{<matomeQuote body="ローカルのLLMも使えるじゃん。" userName="arcatech" createdAt="2025/06/19 14:54:23" color="">}}




{{<matomeQuote body="AI機能を避けなきゃいけないエディタなんていらないんだよ。AIがないのが欲しいの。<br>ターミナルも同じで、AIがない方がいいからiTerm2はもう使ってないんだ。" userName="mort96" createdAt="2025/06/19 09:01:23" color="">}}




{{<matomeQuote body="ZedでAIが強制されてるってマジ？<br>agent.enabled = falseにすれば消えるんじゃないの？" userName="nurumaik" createdAt="2025/06/19 08:46:21" color="#ff5c5c">}}




{{<matomeQuote body="そんなこと言ってたら、数年後には焚き火で飯食って洞穴に住んでそうだなw" userName="CuriouslyC" createdAt="2025/06/19 09:54:02" color="">}}




{{<matomeQuote body="AI無効にするのはちょー簡単だよ！<br>そんなことでこの最高なエディタを使わないなんて、もったいない！" userName="seabass" createdAt="2025/06/19 16:47:42" color="">}}




{{<matomeQuote body="iTermにAI機能があったなんて知らなかった！どこにあるの？" userName="calmoo" createdAt="2025/06/19 09:23:43" color="">}}




{{<matomeQuote body="APIキー必須だろうから勝手に繋がったりはしにくいんじゃない？<br>OpenSnitchっていうファイアウォール入れてるから安心だけど、指示なしに勝手に通信されるのは嫌だな。<br>Zedはその辺どうなってるの？" userName="mixmastamyk" createdAt="2025/06/19 16:26:21" color="">}}




{{<matomeQuote body="3ヶ月で２つも機能出すなんて開発速度がヤバすぎる。<br>大した機能じゃないんだから、もう少し落ち着いて洗練させてよ！" userName="WD-42" createdAt="2025/06/19 14:08:02" color="">}}




{{<matomeQuote body="いやいや、AIバブルなんて数年で弾けるでしょ。<br>そしたら、あちこちにAI機能つけるのも止まるって。" userName="mort96" createdAt="2025/06/19 10:04:13" color="">}}




{{<matomeQuote body="ZedのAI連携ってデフォルトでそうなの？<br>大体の人はClaudeとかCopilotと連携させてるみたいだね。<br>セキュリティの心配はローカルで動かせば関係ないのは当たり前だけどさ。" userName="mort96" createdAt="2025/06/19 15:07:02" color="">}}




{{<matomeQuote body="一つのことだけちゃんとやる単機能ツールの方が、上手くいく時もあるんだよ。<br>例えば、エディタに統合されたターミナルとかファイルマネージャーとか。<br>常に別に開いてるから、統合されたやつは全く使ったことないな。" userName="mixmastamyk" createdAt="2025/06/19 16:31:37" color="">}}




{{<matomeQuote body="また試してみたよ。<br>設定に”agent”: { ”enabled”: false }を足せばチャットボット連携は無効にできるみたい。<br>でも、ドキュメント([1] https://zed.dev/docs/configuring-zed#edit-predictions)見ても、オンラインAIサービスへのサインインを求める”AI”予測ボタンを無効にする方法が見当たらないんだ。<br>何か見落としてる？" userName="mort96" createdAt="2025/06/19 18:05:26" color="#ff5733">}}




{{<matomeQuote body="Zedは、Lapce、Helix、Neovimが時間をかけてもできなかったことをやったって感じだね。<br>Helixはバグとか連携不足がキツかったし、Neovimは安定させるのにプラグイン選びが大変すぎた。<br>LapceはVSCodeのクローンみたいで特別じゃなかったな。<br>Zedは短期間で超お気に入りになったよ。デバッガーも追加されて最高！" userName="ramon156" createdAt="2025/06/19 14:48:01" color="#785bff">}}




{{<matomeQuote body="This might be off-topic, but I really want to use Helix. I’ve been using Vim keybindings for a few years now but it’s so unintuitive, there’s still so many things I can’t do efficiently in Vim. Helix just makes so much more sense for my brain. But I don’t use Vim/Neovim by itself, I always use an integration with an editor like VSCode or Obsidian (Obsidian’s Vim emulation isn’t great, but it’s good enough). Helix just isn’t there yet with VSCode or Obsidian.<br>I wish more ”Vim successors” would focus more on integrating with existing IDEs, rather than becoming one themselves. I don’t want to have to set up an entirely new workflow when I change how I edit text.<br>That’s also why I haven’t tried using Neovim as a standalone IDE. It looks like I’d really like it, but I don’t want to be locked in to using Vim." userName="rbits" createdAt="2025/06/20 01:07:15" color="">}}




{{<matomeQuote body="FWIW Zed has the best Vim mode I’ve used outside of Vim. I do miss a few of my Vim plugins but the core is all there." userName="haiku2077" createdAt="2025/06/20 13:25:27" color="#45d325">}}




{{<matomeQuote body="＞ PHP support (I was working at an older company)<br>Not sure why PHP needs a qualifier like this." userName="user3939382" createdAt="2025/06/19 17:15:20" color="">}}




{{<matomeQuote body="People keep forgetting the UNIX tools they love sooo much predate PHP, follow the same worse is better mentally, and trace back to 1969, but for some strange time travel reason, they are considered modern." userName="pjmlp" createdAt="2025/06/20 07:35:52" color="">}}




{{<matomeQuote body="＞ ...like a VSCode clone that didn’t do anything special.<br>Interesting way to qualify the most popular editor of human history." userName="hu3" createdAt="2025/06/19 19:09:48" color="">}}




{{<matomeQuote body="They said that Lapce didn’t do anything special (over VSCode). Not that VSCode is nothing special, as you seem to have interpreted it." userName="quietbritishjim" createdAt="2025/06/19 19:31:14" color="">}}




{{<matomeQuote body="I’m thrilled to see Zed evolve into a featured, lightweight IDE.<br>IMHO Debug Adapter Protocol (DAP) and Language Server Protocol (LSP) are the best things happened to programming tooling in the last decade.<br>(I wrote this comment in another thread about the same link but didn’t hit the frontpage)" userName="AbuAssar" createdAt="2025/06/19 07:47:55" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Ever since Linux support came out (2 years ago?), I go to check if they, finally, support “non-retina” “LoDPi” (a.k.a: a regular screen) yet, and sadly no :/" userName="eddythompson80" createdAt="2025/06/19 06:24:59" color="">}}




{{<matomeQuote body="It’s so incredibly frustrating. Text rendering is the primary feature of a code editor, but no one on the Zed team seems to use a non-retina screen.<br>Github issue for context: https://github.com/zed-industries/zed/issues/7992" userName="sapiogram" createdAt="2025/06/19 09:13:14" color="#38d3d3">}}




{{<matomeQuote body="＞ Zedチームには非Retina使ってる人いないみたいだけど<br>まあ驚かないかな。一日中ピクセル眺めるなんて嫌だろ？" userName="jen20" createdAt="2025/06/19 14:50:43" color="">}}




{{<matomeQuote body="最近Hi-DPIディスプレイ触ってないなー。技術系の職場でもまだそんなに一般的じゃないし、普通の1440pとか4K (150 PPIくらい)で全然問題ないよ。<br>追記: Samsungのはそうかもだけど、普通のPCディスプレイの話ね。" userName="colonial" createdAt="2025/06/21 05:00:11" color="">}}




{{<matomeQuote body="もし良いモニターがタダならね。悲しいけどお金かかるんだ。オフィスで働いてた時も、Hi-DPIディスプレイなんてめったになかったよ。" userName="haiku2077" createdAt="2025/06/19 14:55:18" color="">}}




{{<matomeQuote body="全然問題ない1080pとか1440pのディスプレイのデバイスはどうすんの？捨てるの？僕のノートPCのは良いけど、デスクトップの1440pはぼやけるし、オフィスの外部ディスプレイもぼやけるんだよね。じゃあ、内蔵ディスプレイ使う時はZed、モニター変えたらエディタも変えるってこと？" userName="eddythompson80" createdAt="2025/06/19 22:26:48" color="#ff5733">}}




{{<matomeQuote body="ちょっと見た目は悪い回避策だけど、BetterDisplay (無料ツールだよ)をインストールして、LoDPIの画面をHiDPIに設定すれば、テキスト表示はマシになるよ。" userName="marton78" createdAt="2025/06/19 06:35:49" color="#ff5c5c">}}




{{<matomeQuote body="おお、それ試してみる！職場の1440pモニターでZed試した時ひどかったんだよ。他のところは結構気に入ってたから残念だったんだ。" userName="girvo" createdAt="2025/06/19 07:01:26" color="">}}




{{<matomeQuote body="どういう点が？僕は1440pで1年以上使ってるけど、普通に見えるよ。何か見落としてるのかな？" userName="dkersten" createdAt="2025/06/19 08:18:35" color="#ff5733">}}




{{<matomeQuote body="他のエディタやIDEと比べて、UIとかテキストとか全部がぼやけて見えるんだよ。" userName="girvo" createdAt="2025/06/21 01:24:28" color="#ff33a1">}}




{{<matomeQuote body="僕の環境 (Linux、スケーリングなしの4Kディスプレイだよ) だとフォントがひどいんだけど、フォントウェイトを太くしたらまあまあマシになったよ。" userName="GrayShade" createdAt="2025/06/19 08:20:54" color="#ff33a1">}}




{{<matomeQuote body="そうだよ。元々はMacだけだったんだけど、オープンソースになってコミュニティがLinuxやWindowsに対応させたんだ。でも、Mac以外にはあんまりお金かけてないっぽいね。" userName="LoganDark" createdAt="2025/06/19 08:12:55" color="">}}




{{<matomeQuote body="コアチームがLinux対応は作ったし、Windowsも作業を始めてるよ！" userName="anthony-eid" createdAt="2025/06/19 17:42:06" color="#ff5c5c">}}




{{<matomeQuote body="Linuxの通常画面で使ってるけど、全然問題なく動いてるよ。" userName="senko" createdAt="2025/06/19 08:08:53" color="">}}




{{<matomeQuote body="Windowsの非公式ビルドは良い感じだよ。ここから→https://github.com/deevus/zed-windows-builds<br>Scoopで’stable’ビルドを入れるのがうまくいく方法だよ。" userName="sien" createdAt="2025/06/19 07:13:27" color="#ff5733">}}




{{<matomeQuote body="Scoopならこうやって入れてね→<br>scoop bucket add extras<br>scoop install extras/zed<br>Windowsでめちゃくちゃ快適に動くし、拡張機能も全然大丈夫だよ。" userName="lsllc" createdAt="2025/06/19 20:16:07" color="#ff33a1">}}




{{<matomeQuote body="Linuxで毎日1920x1200のノートPC画面で使ってるけど、全く問題なく動いてるよ。" userName="senko" createdAt="2025/06/19 08:07:49" color="">}}




{{<matomeQuote body="Zedの開発者自身もフォントがぼやける問題は認めてるんだ [1]。だから、君が気づいてないだけか、小さい画面の1920x1200はHiDPIっぽいからぼやけが隠れてるか、どっちかだよ。<br>俺のデスクトップモニターは1920x1080だけど、VimもEmacsもVSCodeもフォントはクッキリしてるのに、Zedだけぼやけた感じなんだ。<br>[1]: https://github.com/zed-industries/zed/issues/7992" userName="gkbrk" createdAt="2025/06/19 09:19:07" color="#38d3d3">}}




{{<matomeQuote body="ダークモード使ってる？俺にとっては、ライトモードだと文字がマジでひどく見えるんだけど、ダークモードならまあ良い感じ。でも、他のエディターと比べるとやっぱり明らかに劣るけどね。" userName="sapiogram" createdAt="2025/06/19 09:12:08" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
