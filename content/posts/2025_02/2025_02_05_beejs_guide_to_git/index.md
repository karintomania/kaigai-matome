+++
date = '2025-02-05T00:00:00'
months = '2025/02'
draft = false
title = 'Gitの迷いを解消！Beejさんによる超わかりやすいGit入門ガイド'
tags = ["Git", "バージョン管理", "入門", "Beej", "プログラミング"]
featureimage = 'thumbnails/orange4.jpg'
+++

> Gitの迷いを解消！Beejさんによる超わかりやすいGit入門ガイド

引用元：[https://news.ycombinator.com/item?id=42941283](https://news.ycombinator.com/item?id=42941283)

{{<matomeQuote body="みんなー、もし間違いを見つけたら、遠慮なく教えてね。直すから！よろしく、Beej" userName="beej71" createdAt="2025-02-05T02:03:10" color="#45d325">}}

{{<matomeQuote body="間違いじゃないんだけど、gitの話でvimが出てくるなら、commitとかoperationを中断させるために、:cqっていうステータスを返す方法も付け加える価値あるかも。" userName="aidos" createdAt="2025-02-05T09:31:24" color="#45d325">}}

{{<matomeQuote body="マジか！vimって30年以上使ってても新しい発見があるんだね。Vimのappendixに追加しとくよ！" userName="beej71" createdAt="2025-02-05T16:11:44" color="#ff33a1">}}

{{<matomeQuote body="それ、Gitも同じだよね" userName="dexzod" createdAt="2025-02-05T17:56:22" color="">}}

{{<matomeQuote body="もし君がGitを30年以上使ってるなら、タイムマシンに連れてってくれ。Gitは今年で20周年だよ。" userName="agent281" createdAt="2025-02-05T21:32:19" color="">}}

{{<matomeQuote body="それは素晴らしい情報だ！今までcommitメッセージの行をコメントアウトして保存してたんだよね。まるで原始人だ…" userName="usrme" createdAt="2025-02-05T12:41:51" color="#785bff">}}

{{<matomeQuote body="有罪" userName="celticninja" createdAt="2025-02-05T21:20:55" color="">}}

{{<matomeQuote body="有罪…　変わってない*" userName="malvim" createdAt="2025-02-06T12:12:06" color="">}}

{{<matomeQuote body=":q! をよく使うんだけど、同じことできるみたい。" userName="ericholscher" createdAt="2025-02-05T14:11:21" color="">}}

{{<matomeQuote body="ちょっとした違いだけど、:q! は保存せずに終了してexit codeはゼロを返すけど、:cq はnonzero exit codeで終了するんだ。Gitはnonzero exit codeを“編集失敗”と解釈する。Unixの慣例でゼロは成功って意味だからね。<br>もし作業中にcommitメッセージを保存しなかったら、:q! は空のテンプレートをGitに返すけど、Gitは賢いからcommitしない。<br>でも誤って作業の途中で保存しちゃったら、:q! は破棄したかったメッセージをcommitしちゃうよ。" userName="alexjm" createdAt="2025-02-05T17:41:28" color="#785bff">}}

{{<matomeQuote body="それってedit bufferが空かコメントアウトされた行しかない時にしか使えないんだよね。例えば`git commit --amend`で前のcommit messageをbufferに読み込んだ時とかは、:q!じゃcommit cancelできないけど、:cqならできるよ。" userName="sangnoir" createdAt="2025-02-06T20:31:04" color="#38d3d3">}}

{{<matomeQuote body=":cqはshell loopでディレクトリtreeを比較して、違うファイルの中身をvimで確認したい時に便利だよ。よく使うんだよね。<br><br>Typing ^C to vimじゃどうにもならない時もあるし、もしloopがミスって1000個もファイルを返すような事態になったら:cqがないとマジで困る。:cqはbreakをtriggerしてloopを抜け出せるんだ。" userName="rstuart4133" createdAt="2025-02-12T04:11:15" color="#ff5733">}}

{{<matomeQuote body="こういうちょっとしたtipsマジで助かる。VIMは26年、gitは15年使ってるけど、cをつけるなんて知らなかった。:q!は:wしてない時はnon-zero status codeでexitしてほしいってずっと思ってたんだ。" userName="dotancohen" createdAt="2025-02-05T14:09:59" color="#785bff">}}

{{<matomeQuote body="へー、いつもmessageがないせいでfailureするようにbufferの中身全部消して:wqしてたわ。" userName="iN7h33nD" createdAt="2025-02-05T18:07:17" color="">}}

{{<matomeQuote body="覚えやすいようにmnemonic: cancel quit" userName="olalonde" createdAt="2025-02-05T20:30:25" color="">}}

{{<matomeQuote body="まず、素晴らしいworkだって言わせて。こんなにcomprehensiveなresourceを作ってくれてありがとう。全部読んだわけじゃないんだけど、一つ気になったことがあったんだ。<br>Section 5.1(https://beej.us/guide/bggit/html/split/branches-and-fast-for...)で<br>＞The default branch is called main.”<br>＞The default branch used to be called master, and still is called that in some older repos.”って書いてあるけど、これって違うんじゃない？gitはまだ`master`がdefaultだけど、`git config --global init.defaultBranch <name>`でdefaultを変えられるよ。" userName="raju" createdAt="2025-02-06T11:56:26" color="#ff33a1">}}

{{<matomeQuote body="Hrm。知らなかった。`init.defaultbranch`をunsetしたら`master`を使うようになって、hintsが表示された。<br>＞hint：’master’の代わりによく使われる名前は’main’、’trunk’、’development’です。作成されたbranchは次のコマンドでrenameできます。<br>これでfixを書くのがもっと”interesting”になるね。ありがとう！" userName="beej71" createdAt="2025-02-06T22:09:11" color="#ff33a1">}}

{{<matomeQuote body="ちょっとshout-outさせて; Lambda Schoolで先生に教えてもらった生徒の一人なんだけど、先生のinstructionはそこで過ごした時間の中でhighlightの一つだった。いつもありがとう!" userName="junebash" createdAt="2025-02-05T02:16:10" color="">}}

{{<matomeQuote body="どういたしまして! :)" userName="beej71" createdAt="2025-02-06T22:28:00" color="">}}

{{<matomeQuote body="teenの頃に先生のC programmingのguideを読んで、今日のfirmware devとしての自分があるのは先生のおかげです。本当に感謝しています。" userName="unstuck3958" createdAt="2025-02-05T08:38:48" color="#ff5733">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="それなー！" userName="pizzalife" createdAt="2025-02-05T16:23:51" color="">}}

{{<matomeQuote body="それもそうだけど、git worktreesはマジでワークフローに欠かせないってことに触れてほしいな。知ってる人少なすぎ！stashで頭抱えなくてもブランチがごっちゃにならないって最高じゃん？" userName="patchd" createdAt="2025-02-05T13:45:45" color="#ff5c5c">}}

{{<matomeQuote body="worktreesはマジ使えるけど、C言語のガイド書いた後に、もうあんな大作は書かないって誓ったんだよねー(笑)<br>だから基礎を教えたら、あとは他のリソース使ってって感じにしたいんだ。<br>でも、worktreesはマジ便利だよね。基本の使い方だけならすぐ終わるし、ブランチ理解してる人ならすぐ使えるようになると思う。知らない人が多いってことは、追加する価値あるかもね。<br>考えとく！" userName="beej71" createdAt="2025-02-05T16:28:43" color="">}}

{{<matomeQuote body="コンテンツを1ページで提供してくれてマジ感謝！<br>長年のガイド、本当に貴重だよ。" userName="alberth" createdAt="2025-02-05T03:48:39" color="#38d3d3">}}

{{<matomeQuote body="え、本物のBeej？ネットワーキングのガイド、めっちゃ好きで読みまくってたわ！コードで何ができるか、ネットの仕組みとか、マジで色々教えてもらった。子供の頃の最高の経験だった！ありがとう！" userName="VierScar" createdAt="2025-02-05T11:45:08" color="#ff5733">}}

{{<matomeQuote body="スクリプトしか書けない子供の頃にあなたのネットワーキングガイドに出会って、C言語を始めるきっかけになったんだ。マジ感謝！<br>今もこうして記事書いてるの、すごいね！" userName="1propionyl" createdAt="2025-02-05T02:12:13" color="#45d325">}}

{{<matomeQuote body="Beejはマジでレジェンド！みんな大好きだよ！<br>90年代の僕らの希望の光だった！" userName="jdmoreira" createdAt="2025-02-05T13:08:39" color="#ff5733">}}

{{<matomeQuote body="ガイドいつもありがとう！”15.7 Rebase時の複数コンフリクト”についてフィードバックさせて！<br>Rebase教える時、2つのワークフローを勧めてるんだ。<br>＞Rebaseはコミットを新しいベースに1つずつ”リプレイ”するので、リプレイごとにコンフリクトが発生する可能性がある。<br>＞だから、コンフリクトを1つずつ解決するのが役に立たない場合は、まずfork pointからsquash rebaseしてコミットを1つにまとめる。<br>＞git rebase -i `git merge-base main --fork-point`<br><br>Squashしてから:<br>＞git rebase -i main<br><br>あと、何度もrebaseしてると同じコンフリクトを何度も解決することになるよね？<br>”rerere”を使うとgitが”reuse recorded resolution”してくれるから、毎回手動で解決しなくて済むよ。<br>[alias]とか[rerere]の設定はこんな感じ。" userName="yrotslluf" createdAt="2025-02-05T18:58:33" color="#ff5733">}}

{{<matomeQuote body="ネットワークプログラミングガイド、大好きでした！" userName="fabiensanglard" createdAt="2025-02-05T02:04:58" color="#ff5c5c">}}

{{<matomeQuote body="関係ないけど、子供の頃あなたのソケットのチュートリアルでプログラミングを学んだんだ。すごく分かりやすくて、高校から大学、今の仕事まで使ってるよ。<br>あなたのチュートリアルがなかったら、今のキャリアを選んでなかったかも。愛と努力をありがとう！同じように影響を受けた人はたくさんいると思う。" userName="frogsRnice" createdAt="2025-02-06T04:48:00" color="#38d3d3">}}

{{<matomeQuote body="Beejさん、あなたのNetwork Programmingのガイドは、俺のUNIX駆け出し時代にめっちゃ役立ったんだよね。マジで多くの人に影響を与えて、大学のネットワークの授業で推薦図書になったくらいなんだから。今でも現役でガイド作ってんの、マジすごい！" userName="JetSetIlly" createdAt="2025-02-05T08:20:32" color="#ff5733">}}

{{<matomeQuote body="Beejさん、ありがとうございます！<br>他の多くの人と同じように、あなたのネットワークプログラミングガイドは、俺の教育とキャリアの初期の頃にめっちゃくちゃ役に立ちました。本当に感謝しかない！" userName="danw1979" createdAt="2025-02-05T09:42:24" color="#ff5733">}}

{{<matomeQuote body="Hey Beej、マジすごい！ Pro Gitも読んだけど、あんたのガイドはマジで良いね！<br>図5.4で、2つのコミットを新しいものにマージすると、なぜか両方のブランチが新しいコミットを指すって言ってるけど、Git初心者マジで混乱すると思うよ。<br>anotherBranchをsomeBranchにマージして、formerはそのままにしとくって書いた方が良くない？次のマージも同じ感じで。ただの提案ね。" userName="chr86" createdAt="2025-02-07T16:12:07" color="#785bff">}}

{{<matomeQuote body="5.7節でさ、＞But in this section we’re going to be talking about a specific kind of merge: the fast-forward. This occurs when the branch you’re merging from is a direct ancestor of the branch you’re merging into.”ってあるけど、”from”と”into”が逆じゃね？“main”が”into”で、“newbranch”が”from”で、“main”は“newbranch”の直接の祖先でしょ。" userName="defanor" createdAt="2025-02-05T21:06:44" color="#ff5733">}}

{{<matomeQuote body="え、マジで言ってんの？これ、マジで大きな間違いだと思うんだけど。<br>9.4で、reallinux/masterがマージ後にmasterと同じコミットを指すわけないじゃん。1コミット遅れた状態のままじゃん。" userName="chr86" createdAt="2025-02-07T22:16:32" color="">}}

{{<matomeQuote body="間違いじゃないけど、HEADに関する素晴らしい説明の中で俺が気づかなかったのは、@はHEADのエイリアスで、入力するのがめっちゃ楽ってこと。" userName="fphilipe" createdAt="2025-02-05T19:21:37" color="">}}

{{<matomeQuote body="それが俺のガイドで一番読まれてないやつだと思う。Beej’s Guide to Killing Dragonsは除くけど。:)<br>修正したし、すべての書籍のissueとPRをリストアップして見逃さないようにするスクリプトを書いたよ。" userName="beej71" createdAt="2025-02-09T20:28:59" color="">}}

{{<matomeQuote body="10代の頃に「Beej's Guide to Network Programming」とか「Beej's Guide to Unix IPC」を読んだの覚えてるわ。めっちゃ分かりやすくて、しかも深みもあって最高だった。マジ影響受けたプログラマーの一人だよ。[0] https://beej.us/guide/bgnet/ [1] https://beej.us/guide/bggit/" userName="pkage" createdAt="2025-02-05T00:42:28" color="#785bff">}}

{{<matomeQuote body="俺もだ！90年代半ばに10代だったんだけど、IRCdサーバーのコードとかボットにマジ感動したんだよね。Slackware Linux unleashed w/CD-ROMの中古本買って、C言語のネットワークコードのサンプルがあったんだ。Beej's Networking siteは、そのコードが分からなくて見つけたんだよな。そこからめっちゃハマって深みにハマったわ。本屋巡りまくってプログラミングの本探したし。Richard Stevensのすごい参考書買ってからは振り返らなかったな。Beej、長年の情熱をありがとう！" userName="soseng" createdAt="2025-02-05T03:13:52" color="#38d3d3">}}

{{<matomeQuote body="selectの使い方を学んでポートスキャナ（grabb' Iだったかな？）を速くするために、Beejのネットワークガイドをイタリア語に翻訳したのを覚えてるわ。楽しかったな。" userName="riffraff" createdAt="2025-02-05T06:08:09" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="同じ人か確かめに来たんだけど、あの懐かしいウェブデザインで確信したわー。昔は各ページに個性があって、オフラインで読むためにページを保存しないと親父に電話代で怒られたんだよね！<br>そしてコードが動いた時の喜び！人生の失敗と拒絶に対する最高の証明だった！コンピューター間でメッセージを送る喜びよ！<br>Beej、ありがとう。" userName="tathagatadg" createdAt="2025-02-05T10:20:12" color="#ff5733">}}

{{<matomeQuote body="マジそれ！俺もほぼ同じだわ！（IPCガイドは読んでないけど）" userName="1propionyl" createdAt="2025-02-05T02:14:24" color="">}}

{{<matomeQuote body="そうそう、何年も前にネットワークプログラミングを始めた頃、この素晴らしいガイドに助けられたんだ。" userName="randstring" createdAt="2025-02-05T09:06:24" color="#785bff">}}

{{<matomeQuote body="IPCのこと全然知らなかった！読まないと！" userName="matt3210" createdAt="2025-02-05T03:46:24" color="">}}

{{<matomeQuote body="＞The Old Command：git checkout<br>git switchなんて知らなかったし、git checkoutが古い代替手段だなんて思ってもみなかった。年を感じるわ。<br>10年弱前にgitを使い始めたんだけど、今gitを学ぶ人がgit checkoutを使う理由が分からないって思うなんて、マジで言葉にできない。<br>本題に戻って、このガイドは俺が学んでた時にあったら超便利だっただろうな。めっちゃ分かりやすくて、よくあるFAQを網羅してるし。<br>初めてmerge conflictに遭遇して、それを中断して、conflictを回避するために回避策を講じたことをよく覚えてるわ。" userName="Sxubas" createdAt="2025-02-05T03:17:46" color="#38d3d3">}}

{{<matomeQuote body="Git switchって結構新しい機能で、2019年に初めて登場したんだってさ。<br>2021年とごく最近の議論があるけど、後者では`git switch`がまだ実験的だってドキュメントに書いてあるらしいよ。<br>[https://news.ycombinator.com/item?id=28024972](https://news.ycombinator.com/item?id=28024972)<br>[https://news.ycombinator.com/item?id=42649858](https://news.ycombinator.com/item?id=42649858)" userName="Rendello" createdAt="2025-02-05T03:39:02" color="">}}

{{<matomeQuote body="＞git switchなんて知らなかったし、git checkoutが古い代替手段だなんて考えたこともなかったよ。年を感じる。<br>いやいや、`git checkout`が”古い代替手段”ってわけじゃないと思うよ。少なくともまだね。最後に確認したとき、`switch`はまだ実験段階だったし、15年前にGitを使い始めたときに覚えたワークフローやコマンドから離れることは考えたことすらないんだよね。やりたいことは全部今までと全く同じようにできるし(`git checkout`も以前と全く同じ動きをするし)、他のGitユーザーとも協力できるし、なんでワークフローを変える必要があるんだ？" userName="diggan" createdAt="2025-02-05T14:05:13" color="#ff5733">}}

{{<matomeQuote body="switch/restoreは実験的って言っても、完全に安定してないからスクリプトとかに使うのはやめとけって意味合いだね（たまにはちゃんと使って安定させようって思うんだけど、結局やらないんだよね）。" userName="juped" createdAt="2025-02-05T20:47:28" color="#785bff">}}

{{<matomeQuote body="UIを調整するために実験的になってたんだよね。必要なら後方互換性を壊せるように。でも、追加された後すぐにGitを離れたんだ。誰もこの作業を引き継いで完了させなかったみたいだね（実験的ステータスを削除するだけでもいいのに。何年も変わってないし、文句言う人もいないと思うし）。" userName="bicolao" createdAt="2025-02-06T16:37:01" color="">}}

{{<matomeQuote body="git switchはブランチの切り替えに特化してるけど、git checkoutはもっと広い範囲をカバーしてるんだよね。" userName="RohMin" createdAt="2025-02-05T15:20:05" color="">}}

{{<matomeQuote body="つまり、すでに`git checkout`を知ってて使ってる人は、特にswitchを使う必要はないってことだね（pun intended）。全部うまく動いてるし、近い将来deprecatedになることもないだろうし。" userName="diggan" createdAt="2025-02-05T16:33:12" color="">}}

{{<matomeQuote body="「この複雑さが理解できないから、存在すべきじゃない」ってことだね。" userName="zanellato19" createdAt="2025-02-05T22:25:10" color="">}}

{{<matomeQuote body="思うんだけど、みんなGitについて文句言う時間があるなら、その半分でも勉強すれば、30パート以上のガイドなんて誰も作らないと思うんだよね。manページに書いてあることばかりだし。<br>Commitsはツリーのスナップショット。先祖のリストを持ってて(普通は1つだけ)。Tagsは変わらないcommitへの名前付きポインタ。Branchesは変わるcommitへの名前付きポインタ。Indexはまだ作成途中のcommitのプロトタイプ。<br>これで全部。もっと知りたければ、ガイドを読むな。「ツリーに影響を与えずに特定のGit commitに切り替えるには？」「変更したファイルの一部だけをcommitするには？」「別の場所から現在のツリーにcommitをコピーするには？」をググれ。<br>基本はシンプルで簡単。やりたいことは複雑。基本を学んで、やりたいことをググれ。ガイドを読むな。" userName="ajross" createdAt="2025-02-05T02:18:58" color="#38d3d3">}}

{{<matomeQuote body="branchの作り方を知らないとか、gitの超基本的なことじゃん。作り方知らない(git checkout -bね)ってことは、git使ってないか、masterにpushしてるソロプロジェクト勢ってバレるだけだよ。<br>branchの切り替えは’git checkout’でもできるし、変更は’git stash’すればいいじゃん。<br>’git reset’でファイルをresetするのもいいけど、repoを”clean”にしたいだけならstashでしょ。<br>Stagedファイルをresetするのも’git reset’でしょ。<br>適当なcommitをcheckoutしてcommitしたい理由が分からんけど、’git reset --hard HEAD~x’で戻れるよ。’x’は戻りたいcommitの数ね。Hardはoptionalだけど、コメントからするとそうしたいんでしょ。<br>変更箇所によるよ。違う行を変更したらconflictしないよ。<br>これ全部、複数人で開発するなら知っておくべき基本だよ。" userName="nextlevelwizard" createdAt="2025-02-05T14:13:17" color="">}}

{{<matomeQuote body="質問全部ググれば一発で出てくるじゃん(笑)昔は<LMGTFY>リンクで馬鹿にされてたよ。めんどくさいって言いたいだけでしょ。<br>全部コマンドを暗記しようとするから苦労するんだよ。そんな必要ないのに文句ばっか。<br>＞別に反対するわけじゃないけど、マジでgitクソって言いたいだけかも。<br>まさにそれ。" userName="ajross" createdAt="2025-02-05T11:43:43" color="">}}

{{<matomeQuote body="＞質問全部ググれば一発で出てくるじゃん(笑)昔は<LMGTFY>リンクで馬鹿にされてたよ。<br>＞めんどくさいって言いたいだけでしょ。<br>それおかしいって思うんだよね。だって、そもそも必要ないならやりたくないじゃん！<br>staging(index)ってcommitみたいなもんでしょ？変更のスナップショットって意味では。でもcommitみたいには使えなくて、特別なコマンドが必要じゃん。その特別なコマンドって、commitと比べてそんなに違うことしてる？そんなことないよね。<br>stashもcommitっぽいけど、reflogに出てくるのにcommitじゃない。checkoutとかrebaseとか直接操作できないじゃん。また特別なコマンドが必要になるけど、ただの匿名commitでしょ？<br>branchはcommitへのpointerってみんな知ってるけど、branchとcommitをcheckoutするのって何が違うの？片方は普通で、もう片方は警告が出てデータが消えそうに見えるの？reflogを知らないと損した気分になるじゃん。branchがpointerなら、自由に移動させてもよくない？pushはできるけど、別のcommitに移動させるのめっちゃ面倒じゃん。<br>tagはbranchみたいだけど、動かない。動くか動かないかって、そんなに重要な違いなの？Gitはbranchと2種類のtagが必要なの？" userName="MrJohz" createdAt="2025-02-05T12:52:29" color="#38d3d3">}}

{{<matomeQuote body="＞Stashes are more like commits — they even appear in the reflog! But they also aren't real commits either, in the sense that you can't check them out, or rebase them, or manipulate them directly.<br>＞Stashはcommitみたいなもんで、reflogにも出てくる！でもcommitじゃなくて、checkoutとかrebaseとか直接操作できないんだよね。”<br>いやいや、commitだよ。checkoutできるし(`stash{N}`って書けば)。でも、stashを使うためのコマンドが多すぎるって点を強調してるんだと思う。<br>これって、Gitの<CLI>の問題だと思う。commit treeの考え方はすごく良いと思うけど、それを使うためのコマンドがクソなときがある。" userName="MatthiasPortzel" createdAt="2025-02-05T19:42:16" color="">}}

{{<matomeQuote body="そもそも開発者が本番環境のcredentialsにアクセスできるのがおかしい。それが問題。" userName="rblatz" createdAt="2025-02-05T03:12:36" color="#45d325">}}

{{<matomeQuote body="pre-commit hookが必要なんじゃない？チェックするために。" userName="rswail" createdAt="2025-02-05T06:29:52" color="">}}

{{<matomeQuote body="Pre commit hookは強制できないんだよね。みんながopt inする必要があるし、opt inする人はcommitする前にパスワードをチェックする人たちだよ。" userName="maccard" createdAt="2025-02-05T08:42:40" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Gitの説明で一番欠けてる部分は、DAGが1つじゃなくて複数あるってことだと思う。distributed version control systemってそういうこと。<br>みんなcentralisedな考え方でGitを使い始めるから、repoとDAGが1つしかないと思っちゃうんだよね。自分のmaster branchが”the” master branchと同じだと思ってる。それじゃGitは上手くならないよ。" userName="globular-toast" createdAt="2025-02-05T11:10:51" color="#ff33a1">}}

{{<matomeQuote body="またgitのスレかよ。結局、gitのデータ構造を理解すれば、gitの素晴らしさに気づけるって話でしょ。gitのUIがひどいのは明白じゃん。擁護する人たちは頭が良いんだろうけど、gitが簡単だって言うのは無理があるって。gitに苦労してる人はたくさんいるんだから。" userName="billdueber" createdAt="2025-02-05T03:55:32" color="">}}

{{<matomeQuote body="その人はデータ構造じゃなくて、commit、branch、tagっていう基本的なインターフェースの話をしてるんだよ。それってgitに限らず、どんなバージョン管理でも学ぶ必要がある101レベルの内容じゃん。それを無視するのは、ハサミを刃の方で持ってるようなもんじゃない？" userName="Izkata" createdAt="2025-02-05T04:14:25" color="#ff33a1">}}

{{<matomeQuote body="まあ、そういうことだよね。とりあえずやってみればいいじゃん。commitする内容より難しくないって、マジで。比喩でごまかすのは意味ないよ。" userName="ajross" createdAt="2025-02-05T04:44:58" color="">}}

{{<matomeQuote body="gitを知らない人が多いのも驚きだけど、何年も、下手したら何十年も学ぼうとしない人がいるのはもっと驚きだわ。俺はそんなに頭良くないけど、インターン中にgitの問題を解決できたし。もう11年前の話だけどね。今じゃgitのことはよく分かってるし。もし何十年も経ってgitを学んでなかったら恥ずかしいと思うよ。<br>バージョン管理は難しい問題だし、エキスパート向けのツールは理解するのに時間がかかるのは当然じゃん。俺らってソフトウェアのエキスパートでしょ？gitを学べない人に、もっと難しいことを任せられないよ。<br>でも、最近は簡単にしろって言う人が多すぎる。ソフトウェアが酷いのも当然だよね。" userName="gitgood" createdAt="2025-02-05T05:04:36" color="">}}

{{<matomeQuote body="gitを学べない人に難しいことは任せられないって言うけど、それはプレッシャーの中で崩れる考え方だよ。集中力は有限だし、ルーチンワークが増えれば、本業に使える時間は減る。そんなことより、DelphiとかVBの時代には、CVSとかSVNを使えない人たちが、実際のアプリを作ってたんだよ。なぜなら簡単だったから。今はgitとかCSSとかframework-of-the-monthとかの知識を持ってるけど、db連携のメッセージボックスを作るのに一日かかるような人が多い。<br>＞もしgitに問題がない人が欲しいなら、採用の幅を狭めて、高い給料を払う覚悟が必要だよ。採用プロセスを見直して、予算を確保するべき。<br>ソフトウェアが酷いのは当然だよね。" userName="wruza" createdAt="2025-02-05T06:32:07" color="">}}

{{<matomeQuote body="＞今はgitとかCSSとかframework-of-the-monthとかの知識を持ってるけど、db連携のメッセージボックスを作るのに一日かかるような人が多い。<br>俺の経験とは真逆だな。gitは実用的なツールで、実用的なことをしたい人に人気がある。机上の空論を語る人は嫌う傾向にある。gitを使える人は、Rustの細かい仕様を暗記してる人よりも、開発者として成功する可能性が高いと思う。gitが好きな人は、物事を成し遂げるのが好きな人だ。" userName="ajross" createdAt="2025-02-05T13:43:57" color="#ff33a1">}}

{{<matomeQuote body="まあ、半分同意で半分違うかな。gitのporcelainの部分は、95%のユーザーには十分だよ。`rebase -i`にはコマンドの説明があるし、`git log`の出力形式をカスタマイズする方法も調べれば出てくる。git plumbingは、ちょっと分かりにくいけど、porcelainコマンドではできないことができる。でも、それは一般的な使い方から外れてる場合が多い。<br>結局、gitは巨大だけど、ほとんどのdevにとっては、必要ない機能が多いってこと。" userName="verandaguy" createdAt="2025-02-05T02:10:10" color="">}}

{{<matomeQuote body="俺の経験では、必ず何かのエッジケースでgitの深いところにハマっちゃうんだよね。高度な機能を使わなくても、いつか変な状況に陥って、何かする必要が出てくるんだよ。gitに代わるものがないから、仕方なく使ってるけどね。" userName="ujkiolp" createdAt="2025-02-05T02:43:47" color="">}}

{{<matomeQuote body="最近は変な状況に陥った記憶がないな。init、clone、fetch、checkout、branch、commit、rebase、remote、log、stash、cherry-pick、blame、configっていう基本的なコマンドしか使ってないし。<br>commitの構造を理解するのに1年くらいかかったし、footgun（push --force-with-leaseとか）を避けるのに数年かかったかな。複雑すぎるから、もっと良いのがあれば乗り換えたいけど、SVNに戻るのは絶対嫌だ。" userName="sampullman" createdAt="2025-02-05T05:11:26" color="">}}

{{<matomeQuote body="Gitを自動化せずに、rsyncの代わりに使ってるってことだよね？履歴を編集しないし、リモートリポジトリも複数扱わないし、モジュール化されたプロジェクトも扱わないし、自動化もしないって感じでしょ？たぶん、多くの人がそうやって使ってると思うよ。でも、自動化とかモジュール化されたリポジトリとか、履歴の書き換えが必要になった時に困るんだよね。中小企業だと、専門のインフラ担当がいないから、そういう問題が起きやすいんだよね。" userName="crabbone" createdAt="2025-02-05T07:00:40" color="">}}

{{<matomeQuote body="「自動化されてない」ってどういう意味？詳しく教えてほしいな。小さいチームのリポジトリを管理することが多いんだけど、複数のリモートリポジトリを扱うことも多いけど、問題ないよ。submoduleは使わないようにしてる。履歴の編集は避けるようにしてるよ。当然だけどね。rsyncの代わりってわけじゃないよ。" userName="sampullman" createdAt="2025-02-05T08:40:55" color="#38d3d3">}}

{{<matomeQuote body="＞非自動化<br>例えば、CIのためにスクリプトでリポジトリを作成・管理することがあるんだけど、スクリプトでcheckout、commit、rebaseなどを自動化する必要があるんだよね。例えば、”git-rebase -i”を自動化するスクリプトを書いたことがあるよ（エディタをシミュレートして、gitが生成するファイルを解析してrebaseを設定したり）。<br>別の例としては、リポジトリの統計情報を自動で生成したり。これはbuild serverの状況を分析するために使ってたんだ。必要な数とか、負荷分散の方法とかね。<br>＞rsync<br>多くのプログラマーはGitをappend-onlyなデータベースとして使ってるってこと。履歴の状態を気にしないし、履歴を活用することもない。ソースコードにアクセスできればそれでいいんだよね。でも、それだと自動化とかインフラ担当者が困るんだよ。履歴に特定の性質を持たせたいのに、無視されちゃうんだ。" userName="crabbone" createdAt="2025-02-05T14:55:36" color="#38d3d3">}}

{{<matomeQuote body="テキストのバージョンを保存するツールとしてgitを標準化しちゃったのが問題なんだよね。gitの良さが失われてる。" userName="ujkiolp" createdAt="2025-02-05T05:23:46" color="">}}

{{<matomeQuote body="君は若いのかもしれないけど、Gitは昔のツールよりずっと優れてるよ。Gitよりシンプルなものを作ろうとしたら、SVNやCVSみたいになっちゃうよ。あれらは複数人で同じファイルを編集するのが苦手だったし。もっとcontent awareなものを作ろうとしたら、Gitの名前の由来がわかると思うよ。" userName="kortilla" createdAt="2025-02-05T07:30:50" color="">}}

{{<matomeQuote body="Mercurialの方がGitよりシンプルだよ。ただ、遅すぎるんだよね。" userName="nextaccountic" createdAt="2025-02-05T08:09:37" color="">}}

{{<matomeQuote body="人によるんじゃない？Subversionしか使えなかった頃、GitとMercurialを試してみたら、Mercurialは混乱したけどGitはすぐに理解できたんだよね。理由は忘れちゃったけど、branchの扱い方が関係してたと思う。" userName="Izkata" createdAt="2025-02-05T12:44:00" color="">}}

{{<matomeQuote body="Gitの苦痛の99%はCLIで使うせいだよ。TortoiseGitとかGUIツールを使えば、全部わかりやすいし、簡単になるよ。CLIでGitを学ぶのは時間の無駄だよ。" userName="20k" createdAt="2025-02-05T03:33:45" color="">}}

{{<matomeQuote body="TortoiseGitユーザーがリポジトリを壊して、問題を理解できずにpushして、みんなの迷惑になるのを見たことがあるよ。Gitの言葉はめちゃくちゃだから、右クリックGUIじゃ直せないんだ。だって、意味のわからないラテン語みたいな象形文字をクリックしてるだけなんだもん。" userName="wruza" createdAt="2025-02-05T05:41:53" color="">}}

{{<matomeQuote body="TortoiseGitみたいなツールでリポジトリが”壊れる”なんてありえないと思うよ。それはGitを理解してないってことじゃない？ 間違った操作をしてしまう可能性はあるけど、pushできて他の人の問題になるなら、それは彼らのせいじゃないよ。Gitを使わされてるんだから、Gitを理解してる人がいるはずだよ。" userName="globular-toast" createdAt="2025-02-05T07:54:05" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
