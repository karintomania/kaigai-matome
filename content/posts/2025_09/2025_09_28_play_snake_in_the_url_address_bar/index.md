+++
date = '2025-09-28T00:00:00'
months = '2025/09'
draft = false
title = 'URLアドレスバーでスネーク！まさかの場所で遊べる超ミニマルゲーム！'
tags = ["ゲーム", "Web開発", "JavaScript", "ブラウザ", "ミニマルゲーム"]
featureimage = 'thumbnails/red1.jpg'
+++

> URLアドレスバーでスネーク！まさかの場所で遊べる超ミニマルゲーム！

引用元：[https://news.ycombinator.com/item?id=45408021](https://news.ycombinator.com/item?id=45408021)




{{<matomeQuote body="俺も昔ファビコンで似たようなやつ作ったんだぜ。これ見て！https://franciscouzo.github.io/favisnake/" userName="Franciscouzo" createdAt="2025/09/28 22:55:50" color="#ff33a1">}}




{{<matomeQuote body="俺もだよ！ファビコンで2048を何年も前に作ったんだ。これ見てくれよな！https://aquova.net/games/2048/" userName="aquova" createdAt="2025/09/29 00:12:18" color="#ff5c5c">}}




{{<matomeQuote body="みんな、君らはレジェンドだよ。スネークゲームにとって、これ以上小さい場所って多分ないよね。" userName="larodi" createdAt="2025/09/29 20:20:50" color="">}}




{{<matomeQuote body="これ、意外と遊べるんだよな！俺1500点まで行ったぜ。" userName="shreddit" createdAt="2025/09/29 08:36:23" color="#ff5733">}}




{{<matomeQuote body="これ大好き！2144点取ったよ。色のリファレンスがあるといいかもね、でも必須じゃないよ。" userName="thehyperflux" createdAt="2025/09/29 10:49:25" color="#ff5c5c">}}




{{<matomeQuote body="Safariだとファビコンが更新されないみたい、悲しい！" userName="BeFlatXIII" createdAt="2025/09/29 17:57:45" color="">}}




{{<matomeQuote body="うわー、これ素敵だね。Retinaだとプレイしづらくなるな:D<br>追記: ゲームオーバーエフェクトがすごい！" userName="epidemian" createdAt="2025/09/29 00:16:25" color="#38d3d3">}}




{{<matomeQuote body="すごいアイデアだね。でも食べ物が見えないんだけど。" userName="darajava" createdAt="2025/09/29 08:34:12" color="">}}




{{<matomeQuote body="君が食べ物を見つけられなくても許されるよ。だって、たった一つのちっちゃな食用ピクセルなんだからね。" userName="jihadjihad" createdAt="2025/09/29 15:36:45" color="">}}




{{<matomeQuote body="このゲームマジ最高！でもホワイトスペースがブラウザで表示崩れるのが気になるな。全部の点字パターン使って、背景を⣿にして蛇とか餌をネガティブスペースにすれば、文字間隔も均一になるし、読みやすいんじゃね？<br>このアイデアどうよ？" userName="MontyCarloHall" createdAt="2025/09/28 22:32:20" color="#45d325">}}




{{<matomeQuote body="あー、その点字のアイデアは俺も考えたんだよね。序盤はいいけど、後半で蛇がデカくなると、変なホワイトスペース代替文字が増えまくって動きがガタガタになるんだよな。<br>集中して高スコア狙ってる時にカクカクするのは最悪じゃん？「？」ボタン押してURLをページに表示するのが今はベストかも。<br>Redditのこれみたいなのは嫌だけどな: https://old.reddit.com/r/webdev/comments/1n9z77e/snake_in_th..." userName="epidemian" createdAt="2025/09/29 00:34:19" color="#45d325">}}




{{<matomeQuote body="あと、途中で色を反転させるのもアリかもな。" userName="worldsayshi" createdAt="2025/09/29 07:01:49" color="">}}




{{<matomeQuote body="これ、マジでレスポンス良くてビビったわ！「戻る」押したらすぐにHNに戻れるし、履歴が汚れないの最高じゃん！<br>天才的なアイデアだよ、これ！" userName="iamjackg" createdAt="2025/09/28 21:30:44" color="#45d325">}}




{{<matomeQuote body="`history.pushState`と`history.replaceState`の違いだな。" userName="mjmas" createdAt="2025/09/28 22:43:31" color="">}}




{{<matomeQuote body="この2つのAPI、セッション履歴は操作するけど、履歴タブに出るグローバル履歴とは別物なんだよな。<br>ほとんどのブラウザはどっち使ってもグローバル履歴に記録するんだって。HTML Specにもグローバル履歴の挙動は書いてない。<br>Vercel Domainsみたいにキー入力で履歴が埋まるのはマジ勘弁！デバウンスして履歴を散らかさないでほしいぜ。<br>HTML Spec: https://html.spec.whatwg.org/#navigation-and-session-history<br>Vercel Domains: https://vercel.com/domains" userName="zaidhaan" createdAt="2025/09/29 00:48:38" color="#785bff">}}




{{<matomeQuote body="フィードバックありがとうな！Vercel domainで使ってるnuqsの作者だけど（俺が作った！）、履歴が埋まるのが良くないってのは俺も同意だぜ。<br>履歴エントリ作らずにURLを更新する方法とか、最新のエントリを前のやつにまとめるようにブラウザに頼む方法ってないのかな？<br>nuqs: https://nuqs.dev" userName="franky47" createdAt="2025/09/29 13:24:06" color="#ff5733">}}




{{<matomeQuote body="あー、どのブラウザでも使える方法はないみたいだな。13年前からBugzillaで報告されてるけど、まだ解決してないんだよ。<br>グローバル履歴の仕様がないし、今後もできそうにないから、結局デバウンスするのが一番現実的な解決策だぜ。Googleマップもそうしてるらしいぞ！<br>Bugzilla: https://bugzilla.mozilla.org/show_bug.cgi?id=753264" userName="zaidhaan" createdAt="2025/09/29 16:01:37" color="#ff5733">}}




{{<matomeQuote body="ソースコード見ると、URL更新にレート制限かけるブラウザだと、バックボタンが使えなくなる別のやり方を使わざるを得ないらしいぞ。" userName="dhsysusbsjsi" createdAt="2025/09/28 21:46:15" color="#38d3d3">}}




{{<matomeQuote body="これが`drawWorld`関数だぜ。<br>URLハッシュ作って、ホワイトスペース文字を置換して、`history.replaceState`を使ってる。<br>もし`history.replaceState`がスロットリングされたら、`location.hash`にフォールバックするけど、そうするとバックボタンを乗っ取っちゃうんだよな。" userName="senfiaj" createdAt="2025/09/28 23:05:51" color="#ff5733">}}




{{<matomeQuote body="警告だ！もしブラウザの履歴を普段使ってるなら、このゲームはシークレットモードとかで遊んだ方がいいぞ。" userName="dasefx" createdAt="2025/09/29 02:10:49" color="#38d3d3">}}




{{<matomeQuote body="教えてくれてありがとう！ちょうど過去1時間分の履歴を消したよ、それもアリだね（でもシークレットモードの方が絶対いいけど）。" userName="rob74" createdAt="2025/09/29 08:55:23" color="#785bff">}}




{{<matomeQuote body="なんて気の利いたアイデアなんだ、笑。URLを点字パターンで更新してるってわけね。最高だ！<br>https://github.com/epidemian/snake/blob/master/snake.js" userName="kwar13" createdAt="2025/09/28 22:06:02" color="#38d3d3">}}




{{<matomeQuote body="ハハ、これ僕らが作ってるブラウザに組み込むべきだね！<br>https://github.com/browseros-ai/BrowserOS" userName="felarof" createdAt="2025/10/04 19:54:25" color="#ff33a1">}}




{{<matomeQuote body="めっちゃクール！昔Tandy Pocket Computerで似たようなSnakeゲームを作ったことあるんだ。Zorkの20部屋分のサブセットも作ったっけ。必死にゲームを圧縮してた、めっちゃ原始的な時代だったよ。<br>https://en.wikipedia.org/wiki/Tandy_Pocket_Computer" userName="Nevermark" createdAt="2025/09/29 01:22:38" color="#ff5c5c">}}




{{<matomeQuote body="これ作った人、信じられないくらい独創的だね。目疲れはするけど、この発想にはマジ感動！最高だ。ところでちょっと提案なんだけど、ヘビが画面外に出てもループバックするようにしたら、もっと遊びやすくなるかも。応答性の問題も補えるし、自分を食べちゃったらゲームオーバーでいいんじゃないかな。" userName="Uptrenda" createdAt="2025/09/29 02:00:42" color="#45d325">}}




{{<matomeQuote body="お前のブラウザの履歴ログに合掌！" userName="usaphp" createdAt="2025/09/29 02:07:02" color="">}}




{{<matomeQuote body="Firefoxなら「履歴」→「Snakeゲーム」→「このサイトを削除」ってやれば大丈夫だよ。" userName="fouronnes3" createdAt="2025/09/29 10:50:06" color="#785bff">}}




{{<matomeQuote body="待って、これってどのウェブサイトでも俺のブラウザ履歴をめちゃくちゃにできるってこと？（AdTechにとってはチャンスを逃した感じか？）" userName="amelius" createdAt="2025/09/29 10:30:30" color="#45d325">}}




{{<matomeQuote body="そうだよ。「ruin my search history」とかで検索してみてごらん。怪しい検索履歴で埋め尽くされるから。" userName="zparky" createdAt="2025/09/29 12:30:11" color="#ff5c5c">}}




{{<matomeQuote body="広告がブラウザの履歴を悪用してたって話、昔からあったよね。" userName="chneu" createdAt="2025/09/29 22:05:52" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="普通の人には何でもないかもだけど、これはマジでヤバい！どうやったらこんなの思いつくんだろ…？" userName="system2" createdAt="2025/09/29 00:37:38" color="#785bff">}}




{{<matomeQuote body="これぞ人間が作り出した知恵だね。" userName="Dban1" createdAt="2025/09/29 02:08:49" color="">}}




{{<matomeQuote body="だから俺、Hacker News見てんだよな。マジで良い一日になった！" userName="akarki15" createdAt="2025/09/28 21:39:33" color="">}}




{{<matomeQuote body="23点取ったけど、途中で気が散っちゃった！" userName="cutemonster" createdAt="2025/09/29 14:49:38" color="">}}




{{<matomeQuote body="最初どうやるか分からなかった人へ。左上の水色の「？」マークにやり方が書いてあるよ。<br>＞URL上でヘビを矢印キーかWASDで操作して。URLが見えない、変なスラッシュでぐちゃぐちゃならここをクリック。<br>あと、アドレスバーが十分長いブラウザウィンドウが必要だよ。コンセプト最高、ちゃんと動くね！" userName="foresterre" createdAt="2025/09/28 21:34:55" color="#ff5733">}}




{{<matomeQuote body="demian.ferrei.ro/snake#|%E2%96%91%E2%96%91%E2%96%91%E2%96%91%E2%A0%88%E2%96%91%E2%96%91%E2%A0%A4%E2%A0%A4%E2%96%91%E2%96%91%E2%96%91%E2%96%91%E2%96%91%E2%96%91%E2%96%91%E2%96%91%E2%96%91%E2%96%91%E2%96%91|[score:0]<br>Firefoxだとプレイしにくいな、混乱するよ。" userName="charcircuit" createdAt="2025/09/28 22:13:31" color="#45d325">}}




{{<matomeQuote body="バージョン143ならちゃんと動いたよ。" userName="BoppreH" createdAt="2025/09/28 22:15:02" color="">}}




{{<matomeQuote body="Androidだと（同じバージョンでも）ダメだったな。" userName="bmicraft" createdAt="2025/09/28 22:46:14" color="">}}




{{<matomeQuote body="あぁ、ごめんね。元々はモバイルブラウザでも結構動いてたんだ。もしモバイル端末で挑戦するなら、「？」をクリックするとページから離れずに現在のURLが見れるよ。操作はぎこちないけど、ハイスコアを友達と共有できる報酬があるよ！:P" userName="epidemian" createdAt="2025/09/29 01:10:28" color="#ff33a1">}}




{{<matomeQuote body="めちゃくちゃユニークで革新的なアイデアだね。うまい！" userName="pards" createdAt="2025/09/28 21:33:31" color="#ff5c5c">}}




{{<matomeQuote body="なんてこった、これ最高じゃん！うまいこと言ったつもり（Pun intended）。" userName="Danilka" createdAt="2025/09/29 02:22:52" color="#45d325">}}




{{<matomeQuote body="予想より難しいね。ヘビの周りの余分な空白の点がちょっと邪魔。あれがないとどうなるんだろ？" userName="arguflow" createdAt="2025/09/28 21:35:11" color="">}}




{{<matomeQuote body="昔はこんな感じだったんだよ、ブラウザがセキュリティとか言って俺たちの楽しみを奪う前はね。URL: https://raw.githubusercontent.com/epidemian/snake/refs/heads..." userName="epidemian" createdAt="2025/09/29 00:38:56" color="#785bff">}}




{{<matomeQuote body="最高だね。こんな変わった方法でインタラクティブなものを作るクリエイティブな人たち、大好き。まさにHacker Spiritだ。よくやった！" userName="CobrastanJorji" createdAt="2025/09/29 03:46:38" color="#38d3d3">}}




{{<matomeQuote body="めちゃくちゃ面白いね。何がきっかけでこれを作ったの？その話、聞かせてほしいな。" userName="liqilin1567" createdAt="2025/09/29 04:31:39" color="">}}




{{<matomeQuote body="「何がきっかけでこれを作ったの？」<br>実は覚えてないんだ！ごめん、もうずいぶん前だから（10年前か…）。多分、Brailleシステムについて考えてたのがきっかけだと思う。Brailleが2x4グリッドで256値を表現できて、Unicodeがそれをエンコードしてるって分かって、これで何ができるか考えたんだ。Snakeゲームはぴったりだったね。URLでレンダリングするアイデアはどこから来たか、マジで覚えてない。多分誰かのアイデアをパクったのかも？Lifeゲームも作ったけど、Snakeほど面白くなかったな。URLife: https://github.com/epidemian/URLife <br>Life-like cellular automaton: https://en.wikipedia.org/wiki/Life-like_cellular_automaton" userName="epidemian" createdAt="2025/09/29 06:06:22" color="#38d3d3">}}




{{<matomeQuote body="あまりにもバカバカしくて、思わず笑っちゃったよ。これ、めちゃくちゃクールだね。" userName="terribleperson" createdAt="2025/09/29 03:00:52" color="#785bff">}}




{{<matomeQuote body="音声コマンドで遊べるSnakeゲームを探してるんだ。" userName="amelius" createdAt="2025/09/29 11:01:41" color="">}}




{{<matomeQuote body="俺も昔、これでFlappy Birdを作ろうとしたんだけど、Androidの遅延のせいで無理だったんだ。素早いフィードバックが必要だからね。だから、キャラが床を走って障害物を飛び越えるだけのサイドスクロールゲームにしたら、もっと遊べるようになったよ！" userName="pnt12" createdAt="2025/09/29 11:35:44" color="">}}




{{<matomeQuote body="DuolingoとSnakeがコラボしたらどうなるの？" userName="fouronnes3" createdAt="2025/09/29 11:31:33" color="#785bff">}}




{{<matomeQuote body="次はDOOMを頼むよ :)" userName="mr_tox" createdAt="2025/09/28 21:49:25" color="#ff5c5c">}}




{{<matomeQuote body="実はファビコンにDOOMをレンダリングするって考えたことあるんだ。できない理由はないと思うな。たぶん@Franciscouzoがその挑戦に取り組めるんじゃないかな！<br>URL: https://news.ycombinator.com/item?id=45408825" userName="epidemian" createdAt="2025/09/29 00:43:39" color="#45d325">}}




{{<matomeQuote body="これ、もう存在してるはずだよ。<br>URL: https://vidferris.github.io/FaviconDoom/favicondoom.html" userName="tombert" createdAt="2025/09/29 06:09:50" color="#ff5733">}}




{{<matomeQuote body="ffmpeg" userName="amelius" createdAt="2025/09/29 11:04:55" color="">}}




{{<matomeQuote body="ChatGPTにはこれを発明できないだろうね :-) 。この創造性には本当に感動するよ。" userName="pbd" createdAt="2025/09/29 07:09:29" color="#45d325">}}




{{<matomeQuote body="最高の日になったよ。こんなことが可能だなんて知らなかったな。" userName="pratikstemkar" createdAt="2025/09/29 01:46:30" color="#ff5c5c">}}




{{<matomeQuote body="気を付けてね、モバイルブラウザだとこれ、うまく動かないみたいだよ。まあ、予想通りかもしれないけどね。" userName="boguscoder" createdAt="2025/09/29 01:41:38" color="">}}




{{<matomeQuote body="適切なブラウザやOSの組み合わせがない人向けのデモってどこかにある？<br>追記：URL: https://raw.githubusercontent.com/epidemian/snake/refs/heads..." userName="MangoToupe" createdAt="2025/09/29 03:33:51" color="#45d325">}}




{{<matomeQuote body="モバイルじゃダメだよ。" userName="dankle" createdAt="2025/09/29 06:37:18" color="">}}




{{<matomeQuote body="これ、めっちゃクリエイティブだね！よくできてるわ。しかも驚くほど速いし。" userName="roggenbuck" createdAt="2025/09/28 22:21:24" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="アドレスしか見えないんだけど？iOSのSafariで見てるよ。" userName="alistairSH" createdAt="2025/09/28 22:42:50" color="">}}




{{<matomeQuote body="よく見てごらん、アドレスバーにSnakeがいるはずだよ。矢印キーを使うと動くから。" userName="ashu1461" createdAt="2025/09/28 22:45:47" color="#38d3d3">}}




{{<matomeQuote body="iOSのSafariでは、やっぱり何も見えないね。MacOSのSafariだとゲームは見えるんだけど、どうやって遊ぶか全然わからないんだ。何をしても、左からSnakeが出てきて0点にリセットされちゃうみたいなんだけど？" userName="alistairSH" createdAt="2025/09/29 14:19:02" color="#ff5733">}}




{{<matomeQuote body="めっちゃ賢いし、ちゃんと遊べるね！ありがとう。" userName="drbig" createdAt="2025/09/28 23:12:35" color="#ff5c5c">}}




{{<matomeQuote body="HAHAHA まじかよ、これAwesome！" userName="masteruvpuppetz" createdAt="2025/09/29 05:05:21" color="">}}




{{<matomeQuote body="これ楽しいね！" userName="jspann" createdAt="2025/09/29 00:51:08" color="">}}




{{<matomeQuote body="10点満点！" userName="tbolt" createdAt="2025/09/29 01:42:22" color="">}}




{{<matomeQuote body="すごくクールだね、ソースコードが見てみたいな。ちなみに、どんなAIもこれを再現できなかったらしいよ。" userName="650" createdAt="2025/09/28 22:09:30" color="#785bff">}}




{{<matomeQuote body="ソースコードはミニファイとかされてないから、Ctrl+Uで簡単に見れるよ。AIの主張については、どうかな。このゲームは10年くらい前からあるから、AIの学習データに入ってる可能性は高いね。ボットは再現できるかもしれないけど、楽しむことはできないだろうね！（少なくとも今のところは）" userName="epidemian" createdAt="2025/09/29 01:05:45" color="#ff5733">}}




{{<matomeQuote body="ページのいちばん下に”コード”へのリンクがあるよ。" userName="dorfsmay" createdAt="2025/09/28 22:54:58" color="">}}




{{<matomeQuote body="うわー、次はDoomを作って！" userName="throwmeaway222" createdAt="2025/09/29 08:55:29" color="">}}




{{<matomeQuote body="Doomじゃないけど、3Dの世界を歩けるよ。ここのサイトを見てみて！<br>https://matthew.rayfield.world/articles/games-and-graphics-i..." userName="jslakro" createdAt="2025/09/29 10:17:42" color="#785bff">}}




{{<matomeQuote body="これまでに見た中で一番ヤバいものだよ。" userName="zikero" createdAt="2025/09/28 21:57:38" color="">}}




{{<matomeQuote body="ありがとう、今まで読んだ中で最高の褒め言葉だよ :D" userName="epidemian" createdAt="2025/09/29 02:03:17" color="">}}




{{<matomeQuote body="これ、すごいね！" userName="Velocifyer" createdAt="2025/09/28 21:32:24" color="">}}




{{<matomeQuote body="次はマルチプレイヤーにして！" userName="nenenejej" createdAt="2025/09/29 02:05:22" color="">}}




{{<matomeQuote body="あと、ブロックチェーンもね！" userName="Dban1" createdAt="2025/09/29 02:06:55" color="">}}




{{<matomeQuote body="それから、AIスネークも！" userName="jumperabg" createdAt="2025/09/29 12:11:06" color="">}}




{{<matomeQuote body="これめちゃくちゃクールだよ！レンダリングや動きの仕組みを理解するのに少し時間かかったけど、それからは楽しかったよ。" userName="cwsx" createdAt="2025/09/29 05:17:16" color="#38d3d3">}}




{{<matomeQuote body="いいね、楽しんだよ。" userName="ai_viewz" createdAt="2025/09/28 22:19:55" color="">}}




{{<matomeQuote body="遊び方理解するのに時間かかったけど、マジで凄いねこれ！ナイス！" userName="samixg" createdAt="2025/09/28 22:33:16" color="#ff5c5c">}}




{{<matomeQuote body="兄貴、このゲームは超激しいぜ！" userName="rabbitlord" createdAt="2025/09/29 00:10:00" color="">}}




{{<matomeQuote body="…DOOMを移植する時が来たか？" userName="nicman23" createdAt="2025/09/29 05:03:55" color="#38d3d3">}}




{{<matomeQuote body="わお！僕の古いプロジェクトがHNのトップページに載ってるなんて驚きだよ！<br>もしプレイ中に問題があるなら、たぶん10年前のブラウザで遊ぶように作ったからだよ。昔のゲームプレイはここを見てね：https://github.com/epidemian/snake/blob/master/gameplay.gif?...<br>その後、ブラウザの”セキュリティ”改善でアドレスバーゲームの機能がかなり制限されたんだ。Chromeの`history.replaceState()`のレート制限とか、空白文字のエスケープとかね。Firefoxもそう。だから色々ひどいハックを使って空白の点字文字を別の文字で置き換えたりしたよ。Safariでは多分ちゃんと動かなかったと思う。こんなハックの山が完全にダメになった時のために、本来のURLをページコンテンツに表示する方法も加えたんだ。ブログ記事を書くべきかな。プレイしてくれてありがとう！" userName="epidemian" createdAt="2025/09/29 00:14:52" color="#38d3d3">}}




{{<matomeQuote body="https://github.com/epidemian/snake/blob/master/gameplay.gif?...こっちの方がずっと良い見た目だね。アドレスバーが白黒のピクセル化されたブロック文字（U+2591 light shade）で埋め尽くされてる。でも、それでもまだ動くんだね。" userName="em-bee" createdAt="2025/09/29 00:27:44" color="#785bff">}}




{{<matomeQuote body="これ、めちゃくちゃクールだね。今まで見た中で二番目にひどいブラウザの悪用だよ ;) 脱帽だ！" userName="antisol" createdAt="2025/09/29 06:55:01" color="#38d3d3">}}




{{<matomeQuote body="このゲームを作ることで、作った人にとっての学習経験は役立つ。スキルを磨くことも役立つ。休憩も役立つ。作り方を見て学ぶことも役立つ。世界飢餓は解決しないけど、一部の人には確かに役立つことなんだよ。" userName="joemi" createdAt="2025/09/29 20:21:33" color="#ff5c5c">}}




{{<matomeQuote body="君がここで取り組んでるのは、すごく役立つことだね。" userName="detaro" createdAt="2025/09/29 17:48:23" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
