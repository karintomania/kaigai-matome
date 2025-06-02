+++
date = '2025-05-26T00:00:00'
months = '2025/05'
draft = false
title = 'あのHacker News、まさかのCommon Lispに移行！'
tags = ["Common Lisp", "プログラミング", "Web開発", "テクノロジー", "Hacker News"]
featureimage = 'thumbnails/cyan3.jpg'
+++

> あのHacker News、まさかのCommon Lispに移行！

引用元：[https://news.ycombinator.com/item?id=44099006](https://news.ycombinator.com/item?id=44099006)




{{<matomeQuote body="“worse is better”の話だけど、アクセシビリティに関しては絶対マシだよ。Hacker Newsは、コメント書くのも含めて昔ながらのLynxで操作できる数少ない有名サイトの一つだね。今のWeb開発者は気にしないだろうし、理由はあるんだろうけど。でも、SPAを選ばないサイトは良いね。俺みたいな（盲目の）人間にはすごく使いやすくなるんだ。サイトのメンテナーには本当にありがとうだよ、面白いことが起こるネットの最後の砦の一つで、まだアクセスできるんだ。" userName="lynx97" createdAt="2025/05/27 09:54:22" color="#ff5c5c">}}




{{<matomeQuote body="アクセシブルなUXは良いUXになるんだよ。モダンなブラウザ使ってるけど、Hacker Newsが安定して動くのに感謝してる。UXに関しては“less is more”の素晴らしい例だね。" userName="jmathai" createdAt="2025/05/27 13:59:23" color="#45d325">}}




{{<matomeQuote body="フォントサイズについては何とも言えないけど、適切なフォントスケーリングができれば、HNをもっとアクセスしやすくするのにすごく良いと思うな。現状、テキスト読むのに120%にズームしなきゃいけないんだ。WebKitがHNのためだけにフォントレンダリングロジックに特別なケースを作ったことを覚えてるよ。" userName="pona-a" createdAt="2025/05/27 17:17:58" color="#ff5733">}}




{{<matomeQuote body="フォントサイズについては何も言えないな。何か変えられるなら、テーブルデザインを普通の順序付きリスト（ol）にしたいね。セマンティックタグとしてそれが適切だし、モダンなブラウザとスクリーンリーダーだとテーブル読むのが無駄に冗長なんだ。何だか皮肉なことに、Lynxはテーブルをテーブルとしてレンダリングしないから、メインページはそれでまだちゃんと読めるんだよ。" userName="lynx97" createdAt="2025/05/28 04:55:38" color="#ff5c5c">}}




{{<matomeQuote body="ブラウザ拡張機能の”modern for hacker news”をおすすめするよ。デフォルトでもフォントサイズとか行間、テキスト幅とかとにかくUXがすごく良くなるんだ。もう一つの素晴らしいアクセシビリティ機能はAPIだよ。Quality Newsからのupvoterateリストをフロントページとして使ってる。Zen Browserの下でタブプレビューを開くと、俺の体験は超クールなSPAみたいに感じられるようになった、ハハ。" userName="adr1an" createdAt="2025/05/29 10:37:39" color="#ff33a1">}}




{{<matomeQuote body="Lynxでブラウズするなら、https://mataroa.blog/も好きかもね！" userName="sirodoht" createdAt="2025/05/30 13:51:23" color="">}}




{{<matomeQuote body="Hacker Newsは“Worse is better”の社会工学への完璧な応用例だよ。だって、Slashdotは1990年代後半にもっと機能があったのにさ。HNを成り立たせてるのは、焦点を絞ってるのと手厚いモデレーションなんだ。" userName="zoogeny" createdAt="2025/05/26 17:11:31" color="#ff5c5c">}}




{{<matomeQuote body="HNは機能少ないかもしれないけど、それが必要？だから“worse”になるとは思わないな。ミニマリストって呼んでもいいし、そっちの方がポジティブに聞こえるね。編集：もしくは、他の誰かがもっと上手に言ってたように、“less is more”だ。" userName="johnisgood" createdAt="2025/05/26 17:29:01" color="">}}




{{<matomeQuote body="君のコメントは機能が良いものだって仮定してるけど、“worse is better”はここには当てはまらないよ。“worse is better”っていうのは、Pythonのこれみたいな自分で自分の足を撃つような問題にみんなが我慢してること、だってPythonの仕事が見つけやすいって思われてるからなんだ。def fun(a = []):<br>HNはまさに“less is better”であって、“worse is better”じゃないんだ。" userName="throwawaymaths" createdAt="2025/05/26 17:35:34" color="#38d3d3">}}




{{<matomeQuote body="ついにLispシステムがworse-is-betterの栄冠を勝ち取ったか！" userName="dang" createdAt="2025/05/26 17:16:27" color="">}}




{{<matomeQuote body="Slashdotの”友達”とか”敵”システムは好きだったなー。敵は追放されるだけなのが便利だけどね。Slashdotのモデレーションも面白かった気がする。役に立ったか分かんないけど、＋5Funnyとかのアノテーション楽しかったんだよね。メタモデレーションも良かったかな？" userName="jrockway" createdAt="2025/05/26 19:31:10" color="">}}




{{<matomeQuote body="あと、金儲けする必要がないのもデカいよね。" userName="nickpeterson" createdAt="2025/05/26 17:19:09" color="">}}




{{<matomeQuote body="それが一番の理由だと思うよ。みんな広告嫌いじゃん、HNは目立たないテキスト広告使ってるし。モデレーションはそんなに強みじゃないと思うな。Slashdotの方がマシだった、たぶんモデレーションの悪用を防ぐ仕組みがあったからね。HNはただの上げ下げシステムで、敵を絶対BANしたい人のための”スーパーダウン”ボタンがあるだけ。まともなコメントもすぐ非表示になるから、俺はshowdeadオンで読んでるよ。Slashdotではこんなこと少なかったな、モデ権持ってる人が少なかったし、変な人はメタモデで排除されたから。<br>Common Lispに移植されたし、これからは機能追加もしやすくなるかもね。" userName="mike_hearn" createdAt="2025/05/26 19:12:07" color="#38d3d3">}}




{{<matomeQuote body="実際、Slashdotのモデレーションシステムは簡単にずるできたんだよね。Linuxをさりげなく褒めてWindowsをけなすだけで、評価が高くなるって保証されてたし。" userName="KerrAvon" createdAt="2025/05/26 20:33:55" color="">}}




{{<matomeQuote body="14年もPython書いてるけど、そんなコード見たことないな。確かに完璧な言語じゃないけど、これはよくある問題じゃないと思うよ。PythonはCS専攻じゃない人（エンジニアとか科学者とかね）にも簡単で、ライブラリのエコシステムがめちゃデカいからたくさんの人が書いてるんだよ。Lispみたいに概念的に純粋じゃないかもしれないけど、ほとんどの人はそんなこと気にしないんじゃないかな。" userName="7thaccount" createdAt="2025/05/26 19:03:11" color="#ff5733">}}




{{<matomeQuote body="それがグループシンクに繋がって、批判的な考え方ができなくなって、間違った決定をしちゃうからだよ。本当は正直な議論が必要なのにね。警告を無視したり、他の意見を却下したり、リスク評価をおろそかにしたりするんだ。過信すると見落としが増えて、取り返しのつかない失敗につながることもある。グループシンクで「あれは起こるべくして起こったんだ」って思ってたら、新しい情報に対応したり、失敗から学んだりなんてできないじゃん。そうなったらイノベーションも止まっちゃうよ。Slashdotのグループシンクで言うと、みんなWindowsなんて使わないしMicrosoftはもう終わりだって思ってたけど、コンピュータの販売台数とかLinuxのインストール数を外から見たら、実際はずっと違ったでしょ。サーバー側では逆のことが起こったけど、Nadellaはグループシンクの外を見れたからAzureを今の成功に導けたんだよ。" userName="fragmede" createdAt="2025/05/26 23:07:19" color="#38d3d3">}}




{{<matomeQuote body="”HN uses unobtrusive text ads”って書いてあるけど、HNに広告なんてあるの？2011年から見てるのに一度も見たことないんだけど..." userName="mousethatroared" createdAt="2025/05/26 20:37:55" color="">}}




{{<matomeQuote body="あの見た目のひどさがほとんどの人を遠ざける、っていうか、うっかり人を惹きつけることがないんだよね。" userName="smokel" createdAt="2025/05/26 17:50:23" color="">}}




{{<matomeQuote body="ダークモードとかユーザーフォロー機能は、他のツールで何年も使ってる機能だよ。" userName="ksec" createdAt="2025/05/26 21:15:52" color="">}}




{{<matomeQuote body="空の配列を引数のデフォルトにするのってよくあるけど、Pythonだと危ないんだよね。あんたが見たことないのは、周りが賢くてワークアラウンド使ってたから？でも問題なのは変わらないよ。" userName="tredre3" createdAt="2025/05/26 19:52:26" color="#ff33a1">}}




{{<matomeQuote body="Slashdotのモデレーションシステムはすごかった。限られたポイントを本当に価値ある投稿にしか使えなかったから。嫌いなもの全部にダウンボートするんじゃなくて、ポジティブなモデレーションを促してた。HNは手動が多いみたいだけど、Slashdotはユーザーに任せてたんだ。今の会話はもっと荒れてるよね。" userName="donnachangstein" createdAt="2025/05/26 18:56:01" color="#ff33a1">}}




{{<matomeQuote body="HNのモデレーションは”ヘビー”って感じじゃないな。基本はユーザー任せだよ。ダウンボートやフラグ付けがメイン。モデレーターは埋もれた記事を拾ったり、荒れたコメント欄を復活させたりもする。Slashdot時代はポイント欲しさに複数アカウント使う人もいたっけな。時代が違うね。" userName="Aurornis" createdAt="2025/05/26 18:01:59" color="#ff5c5c">}}




{{<matomeQuote body="ダウンボートって集団思考になりがちだよね。Redditよりここ（HN）はマシかな。ポイント貯めるとダウンボートできるけど、他の人はコメントの点数見えないからあまり意味ないし。でも、ダウンボートでコメントが薄くなるのはやっぱり集団思考を促すと思う。特に政治系の話で事実を言いにくい。" userName="firesteelrain" createdAt="2025/05/27 07:07:11" color="">}}




{{<matomeQuote body="言語のシンプルさと機能性はトレードオフ（Scheme vs Common Lisp）。<br>Pythonの評価モデルはシンプルで、defやクラス定義は順次実行。def foo(x = []): で[]が定義時に評価されるのはこのため。<br>このシンプルなモデルを変えるのは無理だし無価値。複雑なのがいいならC++やRubyを使えばいいよ。" userName="dannymi" createdAt="2025/05/26 20:22:15" color="#45d325">}}




{{<matomeQuote body="ダークモード欲しいな。Dark Readerはあるけど、スマホのブラウザじゃ使えないのも多いし。何年も言われてるのに実装されないの謎すぎ。背景とテキストの色ちょこっと変えるだけなのにね。" userName="jorvi" createdAt="2025/05/27 09:56:42" color="">}}




{{<matomeQuote body="ユーザーフォローはHNの考え方とは違うと思う。内容は誰が言ったかじゃなくて、書いてあることで評価されるべきだからね。でもダークモードは同意、欲しい。" userName="jedberg" createdAt="2025/05/26 22:35:07" color="">}}




{{<matomeQuote body="ヘビーモデレーションじゃないって話、同意だよ。手動と自動の組み合わせっぽいね。dangとかが作ってるカスタムツールすごい気になる。どんなロジックでやってるんだろ？自分でもHNクローン作って、モデレーションの仕組み試してみたいわ。Show HNに特化したやつとかね。" userName="90s_dev" createdAt="2025/05/26 18:06:31" color="#ff5c5c">}}




{{<matomeQuote body="Slashdotは「M$は悪だぜイェーイ！！」とか、子供じみたくだらないコメントだらけだったの覚えてるわ。<br>結局は結果が大事で、俺はスラドより断然HNの議論が好きだな。" userName="bawolff" createdAt="2025/05/26 20:04:28" color="">}}




{{<matomeQuote body="＞でも、コメントの点数は見えないから、投票する意味ないじゃん。<br>投票でコメントの表示順が変わるんだよ。特に親コメントへの返信がいっぱいつく時にそれが重要。<br>点数をみんなが見えるようにするより、こっちの方が影響デカいかもね。" userName="dragonwriter" createdAt="2025/05/27 07:23:07" color="">}}




{{<matomeQuote body="文脈として「worse is better」ってのは、Gabrielが言ってたことでね、シンプル実装でインターフェースが複雑な方が、複雑実装でエレガントインターフェースな製品より早く普及する傾向があるって話。<br>元々の例の一つに、Unixみたいなシステム（シンプル実装、インターフェースの正確性は保証されにくい）とLispベースのシステム（インターフェースはしっかり定義されてるけど、実装が複雑なのが代償）があったよ。" userName="kqr" createdAt="2025/05/26 20:12:23" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Pythonはデフォルト値を持つ選択をしたけど、Rubyはデフォルト式で、それぞれトレードオフがあるんだ。<br>Rubyみたいなデフォルト式がある言語だと、デフォルトパラメータで関数呼んだ時に副作用が起きる”footgun”（うっかりやっちゃうミス）がある。<br>Pythonでは、パラメータを関数内で変更するのは一般的じゃないから（obj.mutate()はやってもmutate(obj)はやらない）、こういう関数は大丈夫。だから変なコード書かない限り、これを引き起こすことはないよ。" userName="Spivak" createdAt="2025/05/26 19:52:09" color="#45d325">}}




{{<matomeQuote body="え、てかHacker NewsがCommon Lispに書き直されたんじゃなくて、Arc RuntimeがCommon Lispで再実装されたってことか。" userName="varbhat" createdAt="2025/05/26 16:53:40" color="#ff33a1">}}




{{<matomeQuote body="それこそLispが得意とするところだよね。" userName="quotemstr" createdAt="2025/05/26 17:09:56" color="">}}




{{<matomeQuote body="もうArc用のMarkdownライブラリとかあるんじゃない？<br>まあ、RedditはMarkdown内のjavascript: URLがXSSリスクだって結局気づいたけど。" userName="westurner" createdAt="2025/05/26 18:40:43" color="">}}




{{<matomeQuote body="Lisp最強時代到来！プログラミングに関するこれまでで一番過激だと思う文章思い出したわ。ここにあるやつね（URL）。主張は、Lispでコンピューターの構造を無意識に理解して、まるで自分の神経系の延長みたいに一体化できるってんだ。これがLisp Consciousnessだよ。プログラマーとコンピューターが一つになるんだ。EmacsやSLIMEっていう相棒と一緒に、創造性と天才性の流れに乗ってる限り、両者の区別なんてなくなる。Lisperはすでに機械知能を知ってる。それは美しいもんだぜ。他の言語でこんな考え方を生み出したのある？たぶんあるだろうけど、俺は知らないな。ForthとかHaskellとかPrologかな？似たような文章は見つけられなかった。知ってたら教えてほしいね。" userName="-__---____-ZXyw" createdAt="2025/05/27 12:50:32" color="#ff5733">}}




{{<matomeQuote body="同感だね。しかももっと良いことあるよ。Common Lispの低レベルMLサポートはPythonのライブラリには敵わないけど、今はLLMがアプリに組み込まれるよりHTTPリクエストでアクセスされることが多いから、あんまり関係ないんだよね。" userName="mark_l_watson" createdAt="2025/05/27 19:12:58" color="#45d325">}}




{{<matomeQuote body="68k assemblyもそんな感じだね。" userName="mannyv" createdAt="2025/05/27 19:59:00" color="">}}




{{<matomeQuote body="ArcはRacketの上で実装されたって？最初はMzSchemeで、その後PLT Schemeだったんだよ。Racketへの移植は偉大なkogirだったと記憶してる。" userName="dang" createdAt="2025/05/26 17:15:12" color="">}}




{{<matomeQuote body="MzSchemeはPLT Schemeのコア部分（非GUI）で、後にRacketに名前が変わったんだと思うよ。あと、pgはScheme48ベースでArcを作り始めたって、当時のメーリングリストで見た気がする。PLTに切り替えた理由、ずっと気になってたんだ！" userName="sctb" createdAt="2025/05/26 17:25:00" color="">}}




{{<matomeQuote body="RacketとScheme系の歴史の話だよ。PLT Schemeが進んでたから移った人が多かった。研究第一って考え方が商業普及の壁になったり、マルチコアが簡単じゃなかったりって弱点もあったね。RacketもCLも仕事で使ったけど、どっちも強い人がいて良いツールもあるんだ。" userName="neilv" createdAt="2025/05/26 20:26:58" color="#785bff">}}




{{<matomeQuote body="これ、Lispの実装全部たどってるの？なんかテセウスの船の変種みたいだね。" userName="agumonkey" createdAt="2025/05/26 18:34:58" color="#45d325">}}




{{<matomeQuote body="テセウスのLisp、なんか響きが良いね。" userName="pdpi" createdAt="2025/05/26 19:49:08" color="">}}




{{<matomeQuote body="次はゴール、Emacs Lispだ。" userName="oblio" createdAt="2025/05/26 19:21:07" color="">}}




{{<matomeQuote body="ああ、あと動的スコープだね。" userName="dang" createdAt="2025/05/26 20:39:24" color="">}}




{{<matomeQuote body="Elispって、今は静的スコープもネイティブコードコンパイルもできるようになったんだぜ。ただ、SBCLとベンチマークしたことないけど、SBCLのパフォーマンスに近づくかは正直驚くだろうな。" userName="kragen" createdAt="2025/05/27 13:47:49" color="#ff33a1">}}




{{<matomeQuote body="そうそう！ArcをEmacs Lispに移植するなら動的スコープ版がいいなって冗談言ってたんだけど、それには理由があるんだ。昔Emacs Lispでがっつりやった時、プログラマブルテキストエディタ向けのドメイン言語として最高だって思ったんだよ。全部が動的スコープってのが、この領域と密接に関係してたんだよな。汎用言語としては使いづらくなったけど、エディタ開発にはかえって役に立ったんじゃないか、って思うぜ。" userName="dang" createdAt="2025/05/27 19:25:00" color="#ff5733">}}




{{<matomeQuote body="それあり得るな。でも静的スコープ言語で、スコープを抜ける時に自動で元に戻る一時変数代入（動的スコープの実装みたいに）を使って、どこまでできるか気になるぜ。一時代入が欲しい他の例だと、浮動小数点演算（丸めモード一時設定）やグラフィックス（変換行列・色一時設定）とかがあるな。" userName="kragen" createdAt="2025/05/27 21:27:13" color="#ff5733">}}




{{<matomeQuote body="あー、それは楽しいことになりそうだね、たとえSBCLのコンパイル済みコードの方がたぶん桁違いに速いだろうけどさ" userName="agumonkey" createdAt="2025/05/27 19:08:12" color="">}}




{{<matomeQuote body="MzScheme、PLT Scheme、Racketって、全部同じものじゃないの？" userName="kragen" createdAt="2025/05/26 17:24:02" color="">}}




{{<matomeQuote body="そうだよ、でも俺にとってはその名前で呼ばれてた時のアレをそれぞれ指してるんだ。（まさかこの会話がオントロジーになっちゃうとはな！）" userName="dang" createdAt="2025/05/26 17:45:08" color="">}}




{{<matomeQuote body="みんなMzSchemeベースだった、そうだよ。でも最近のRacketは最速のschemeであるchez上で動くんだ。<br>HNは今SBCLで動いてて、こっちはすごく速くてマルチスレッドでもあるんだよ。" userName="rurban" createdAt="2025/05/26 17:45:39" color="#ff5c5c">}}




{{<matomeQuote body="覚えておいてね、Hacker News（元Startup News）は実質的にY Combinatorの広告塔で、Y Combinatorは今や世界で最も成功した投資会社の一つだからね。<br>そしてHNの創設者で原作者のPaul Grahamは（少なくとも書類上は）億万長者、かつての大富豪どころじゃないよ。<br>寄付を受け入れるとしても、自己資金で運営できるのは良いことだけどね。" userName="someperson" createdAt="2025/05/26 19:44:24" color="">}}




{{<matomeQuote body="これ見て。" userName="dang" createdAt="2025/05/26 21:45:02" color="">}}




{{<matomeQuote body="この記事や（最高の状態の）このコミュニティで説明されてる「ハッカー」の標準的な定義ってあるの？この言葉にはいつも強く惹かれるんだけど、一般的な言葉遣いだと犯罪者のイメージがあるから、使うのにちょっとためらっちゃうんだよね。" userName="bwilliams18" createdAt="2025/05/26 22:51:59" color="">}}




{{<matomeQuote body="心配いらないよ！その関心は正しいよ。「ハック」の最も古いdocumentedな使用例は1959年のMITのTech Model Railroad Clubの用語集だよ。「何か目的なくやること」とか「間違った自己アドバイスでやるプロジェクト」みたいな意味だった。悪意の示唆はなかったんだ。悪意のconnotationsは1960年代earlyのphone phreakingから。悪意の方が先っていう2003年の研究もあったけど、1959年の用法が見つかって撤回されてるよ。詳しいリンクもいくつか貼っとくね。" userName="dang" createdAt="2025/05/27 04:04:44" color="#785bff">}}




{{<matomeQuote body="Paul Graham自身もこの言葉の意味についてエッセイを書いてるよ。Eric S. Raymondの「How to become a hacker」もHNコミュニティでの言葉の理解に役立つかもね。さらに遡って50年代60年代のMIT labs、hacker ethicも見てみるといいよ。wiki pageも役立つよ、HNの連中は最初の種類のhackerについて話してるからね。資料のリンクも貼っておくね。" userName="cheshire_cat" createdAt="2025/05/27 01:10:08" color="#ff5733">}}




{{<matomeQuote body="Raymondのガイドみたいなものにはちょっと気をつけた方がいいよ、「Xになるには作者みたいになればいい」って書いてるような文書だからね。Raymondの古い「jargon file」の管理も同じ理由でかなり悪名高いからさ。" userName="tptacek" createdAt="2025/05/27 05:10:32" color="">}}




{{<matomeQuote body="hacker jargon fileを見てみ。" userName="SonOfLilit" createdAt="2025/05/27 00:57:34" color="">}}




{{<matomeQuote body="「Clarcはめちゃ速くて、HNをマルチコアでも動かせる」って話だけど、これ全部シングルコアだったの？？マジか！" userName="brundolf" createdAt="2025/05/26 17:11:50" color="">}}




{{<matomeQuote body="今のCPUはホント速い。4chanの例もあるけど、ちゃんと最適化すればCPUパワーちょっとで大量ユーザーいける。<br>ボトルネックはI/O（ディスクとかネットワーク）。HNはテキストだからそこも楽勝な方じゃない？" userName="haiku2077" createdAt="2025/05/26 17:57:48" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="4chanはちょっと特殊だよ。投稿があるたびにサーバー側でHTMLファイルを再生成してnginxで出してて、全部静的なんだ。動的なことしてないし、みんな同じページ見てるからスケールしやすいんだよ。" userName="bakugo" createdAt="2025/05/26 18:14:42" color="#45d325">}}




{{<matomeQuote body="今のCPUって正しく使えばバカみたいに速いんだよ。スケールアウト（サーバー増やす）する前に、スケールアップ（1台を強くする）で驚くほどイケる。たとえマルチコア使うみたいな地味なスケールアウトでもね。" userName="quotemstr" createdAt="2025/05/26 17:14:29" color="">}}




{{<matomeQuote body="全然特殊なんかじゃないって。20年前はこれが普通だったんだよ（くそ、HNだってログアウトユーザー向けに静的キャッシュしてるだろ）。<br>いや、何が変わったかって？誰も全体像を理解できない山盛りのフレームワークとかいうクソに業界が過度に頼るようになっただけさ。状況は良くなるどころか、悪くなってるんだ。" userName="donnachangstein" createdAt="2025/05/26 18:41:07" color="">}}




{{<matomeQuote body="ウェブアプリだと、NodeJSとかPythonアプリみたいにマルチスレッドじゃなくて、別プロセス並列で動かすのよくあるよなーって返信しようと思ったんだ。<br>でも、どうやらHNってマシン1台、1コアで1プロセスで動いてたらしいわ（https://news.ycombinator.com/item?id=5229548）。マジかよO_O！" userName="JW_00000" createdAt="2025/05/26 18:08:50" color="#ff5733">}}




{{<matomeQuote body="クラウド業者とかがフレームワーク使って”これじゃスケールしないよ”って煽るもんだから、みんなウェブで情報出すのに実際よりずっと多くのリソースがいるって信じ込まされちゃったんだよ。<br>PCの性能がめちゃ安くなってるのに、ほとんどの開発者がこれに騙されたなんて、マジで呆れるわ。" userName="pmdr" createdAt="2025/05/26 21:26:51" color="#ff5c5c">}}




{{<matomeQuote body="文脈的に、HNみたいな掲示板ってCPUだけだとキツい時があるって言いたいの？もしそうならなんで？俺の予想では、CPU自体はやること少なくて、I/Oが大変になると思うんだけどな。" userName="thatwasunusual" createdAt="2025/05/26 18:02:17" color="#785bff">}}




{{<matomeQuote body="それなのにGitHubときたら、同じページにコメントを十数個しか表示できないんだぜ。”もっと見る”をクリックして10個ずつ出させなきゃいけない。<br>HNは悲しい世界における正気の島だな。" userName="kevincox" createdAt="2025/05/27 01:13:50" color="#38d3d3">}}




{{<matomeQuote body="NodeJSアプリって、ずっと新しいプロセス立ち上げるんじゃなくて、JavaScriptのイベントループに頼るのが普通だと思うんだ。ユーザーごとに新しいプロセス立ち上げるのは可能だけど、スレッド切り替えよりスケールしないんじゃないかな。" userName="galaxyLogic" createdAt="2025/05/26 19:14:16" color="#38d3d3">}}




{{<matomeQuote body="Vercel信者がTwitterでバカ高い請求書を上げて、その値段でどうやって普通のサーバーで運用できるか説明してみろって挑発してるの、マジでウケたわ。一度乗っかってみて、5000ドルの請求書を分析してみたんだけど、確かRPi 4一台分くらいの計算量だったよ。”OK、でもサイトが大人気になったらどうすんの？”って聞かれたら、”知らん、残りの$4900でRPi買い足せば？”って感じ。" userName="sgarland" createdAt="2025/05/26 23:24:26" color="#785bff">}}




{{<matomeQuote body="その問題の回避策として、業界の常識がさらに遅いネットワークI/O依存性を追加することだってのが、どうしても理解できないんだよね。" userName="Tabular-Iceberg" createdAt="2025/05/27 08:09:08" color="#ff5733">}}




{{<matomeQuote body="公平に言って、HNって一度に20個くらいのコメントツリーしか表示しないよね。”more”をクリックしないと続きが見れないけど、票の入り方によってはさっき見てたコメントツリーと一緒のセットだったりするし。（今回のアップデートでこの制限なくなったと思ってるけど、確認してないや。）" userName="simoncion" createdAt="2025/05/27 12:20:48" color="">}}




{{<matomeQuote body="最低限でも、NICからの割り込みを処理して受信バッファからパケットを取り出す作業はあるよね、まあこれは通常、数コアに分離されるべきだけど。あと、I/O関連では、CPUは通常、そこでの割り込みも処理する必要があるし、アプリケーションがそのI/Oでやってること全般もそうだね。" userName="sgarland" createdAt="2025/05/26 23:19:47" color="#45d325">}}




{{<matomeQuote body="…ってことは、10年前のサーバーからどれだけパワーを引き出せるかってことの証明でもあるよね、”最新最高”の履歴書ドリブンな開発とかいうクソに踊らされてなきゃさ。New Reddit見てみろよ、あれ完全にイカれた GraphQLの化け物だよ。" userName="mschuster91" createdAt="2025/05/26 18:21:50" color="#ff5733">}}




{{<matomeQuote body="ヨー、兄弟、お前がシャードのキャッシュをさらにキャッシュしたいって聞いてるぜ。" userName="EasyMark" createdAt="2025/05/27 17:35:29" color="">}}




{{<matomeQuote body="開発者が現代のソフトウェアがいかに信じられないほど肥大化して遅いかに気づくたびに、天使が羽を得るんだ。" userName="sgarland" createdAt="2025/05/26 19:50:31" color="#38d3d3">}}




{{<matomeQuote body="それを特別なケースとは呼ばないかな、ただ適材適所で良いツールを使ってるだけだよ。" userName="bawolff" createdAt="2025/05/26 20:07:56" color="#785bff">}}




{{<matomeQuote body="ほとんどのアプリは計算能力で困ってるんじゃなくて、I/Oで苦しんでるんだよ。" userName="whalesalad" createdAt="2025/05/27 01:13:58" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
